; ModuleID = '/root/FPGA/data_compression/L1/tests/lz4_compress/hls/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<ap_uint<8>, 0>" = type { %"struct.ap_uint<8>" }
%"struct.ap_uint<8>" = type { %"struct.ap_int_base<8, false>" }
%"struct.ap_int_base<8, false>" = type { %"class.std::ios_base::Init" }
%"class.std::ios_base::Init" = type { i8 }
%"class.hls::stream<bool, 0>" = type { i1 }
%"class.hls::stream<unsigned int, 0>" = type { i32 }

; Function Attrs: inaccessiblememonly nounwind willreturn
declare void @llvm.sideeffect() #0

; Function Attrs: inaccessiblemem_or_argmemonly noinline willreturn
define void @apatb_lz4CompressEngineRun_ir(%"class.hls::stream<ap_uint<8>, 0>"* noalias nocapture nonnull dereferenceable(1) %inStream, %"class.hls::stream<ap_uint<8>, 0>"* noalias nocapture nonnull dereferenceable(1) %lz4Out, %"class.hls::stream<bool, 0>"* noalias nocapture nonnull dereferenceable(1) %lz4Out_eos, %"class.hls::stream<unsigned int, 0>"* noalias nocapture nonnull dereferenceable(4) %lz4OutSize, i32* noalias nocapture nonnull "fpga.decayed.dim.hint"="1" %max_lit_limit, i32 %input_size, i32 %core_idx) local_unnamed_addr #1 {
entry:
  %inStream_copy = alloca i8, align 512
  call void @llvm.sideeffect() #9 [ "stream_interface"(i8* %inStream_copy, i32 0) ]
  %lz4Out_copy = alloca i8, align 512
  call void @llvm.sideeffect() #9 [ "stream_interface"(i8* %lz4Out_copy, i32 0) ]
  %lz4Out_eos_copy = alloca i1, align 512
  call void @llvm.sideeffect() #9 [ "stream_interface"(i1* %lz4Out_eos_copy, i32 0) ]
  %lz4OutSize_copy = alloca i32, align 512
  call void @llvm.sideeffect() #10 [ "stream_interface"(i32* %lz4OutSize_copy, i32 0) ]
  %0 = bitcast i32* %max_lit_limit to [1 x i32]*
  %max_lit_limit_copy = alloca [1 x i32], align 512
  call fastcc void @copy_in(%"class.hls::stream<ap_uint<8>, 0>"* nonnull %inStream, i8* nonnull align 512 %inStream_copy, %"class.hls::stream<ap_uint<8>, 0>"* nonnull %lz4Out, i8* nonnull align 512 %lz4Out_copy, %"class.hls::stream<bool, 0>"* nonnull %lz4Out_eos, i1* nonnull align 512 %lz4Out_eos_copy, %"class.hls::stream<unsigned int, 0>"* nonnull %lz4OutSize, i32* nonnull align 512 %lz4OutSize_copy, [1 x i32]* nonnull %0, [1 x i32]* nonnull align 512 %max_lit_limit_copy)
  call void @apatb_lz4CompressEngineRun_hw(i8* %inStream_copy, i8* %lz4Out_copy, i1* %lz4Out_eos_copy, i32* %lz4OutSize_copy, [1 x i32]* %max_lit_limit_copy, i32 %input_size, i32 %core_idx)
  call void @copy_back(%"class.hls::stream<ap_uint<8>, 0>"* %inStream, i8* %inStream_copy, %"class.hls::stream<ap_uint<8>, 0>"* %lz4Out, i8* %lz4Out_copy, %"class.hls::stream<bool, 0>"* %lz4Out_eos, i1* %lz4Out_eos_copy, %"class.hls::stream<unsigned int, 0>"* %lz4OutSize, i32* %lz4OutSize_copy, [1 x i32]* %0, [1 x i32]* %max_lit_limit_copy)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_in(%"class.hls::stream<ap_uint<8>, 0>"* noalias "unpacked"="0", i8* noalias nocapture align 512 "unpacked"="1.0", %"class.hls::stream<ap_uint<8>, 0>"* noalias "unpacked"="2", i8* noalias nocapture align 512 "unpacked"="3.0", %"class.hls::stream<bool, 0>"* noalias "unpacked"="4", i1* noalias nocapture align 512 "unpacked"="5.0", %"class.hls::stream<unsigned int, 0>"* noalias "unpacked"="6", i32* noalias nocapture align 512 "unpacked"="7.0", [1 x i32]* noalias readonly "unpacked"="8", [1 x i32]* noalias align 512 "unpacked"="9") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<8>, 0>.53"(i8* align 512 %1, %"class.hls::stream<ap_uint<8>, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<8>, 0>.53"(i8* align 512 %3, %"class.hls::stream<ap_uint<8>, 0>"* %2)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<bool, 0>.30"(i1* align 512 %5, %"class.hls::stream<bool, 0>"* %4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<unsigned int, 0>"(i32* align 512 %7, %"class.hls::stream<unsigned int, 0>"* %6)
  call fastcc void @onebyonecpy_hls.p0a1i32([1 x i32]* align 512 %9, [1 x i32]* %8)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<bool, 0>"(%"class.hls::stream<bool, 0>"* noalias "unpacked"="0" %dst, i1* noalias nocapture align 512 "unpacked"="1.0" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<bool, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<bool, 0>"(%"class.hls::stream<bool, 0>"* nonnull %dst, i1* align 512 %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<bool, 0>"(%"class.hls::stream<bool, 0>"* noalias nocapture "unpacked"="0", i1* noalias nocapture align 512 "unpacked"="1.0") unnamed_addr #4 {
entry:
  %2 = alloca i1
  %3 = alloca %"class.hls::stream<bool, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i1* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_1(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i1* %2 to i8*
  %7 = bitcast i1* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %6, i8* %7)
  %8 = bitcast i1* %2 to i8*
  %9 = load i8, i8* %8
  %10 = trunc i8 %9 to i1
  %.ivi = insertvalue %"class.hls::stream<bool, 0>" undef, i1 %10, 0
  store %"class.hls::stream<bool, 0>" %.ivi, %"class.hls::stream<bool, 0>"* %3
  %11 = bitcast %"class.hls::stream<bool, 0>"* %3 to i8*
  %12 = bitcast %"class.hls::stream<bool, 0>"* %0 to i8*
  call void @fpga_fifo_push_1(i8* %11, i8* %12)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<unsigned int, 0>"(i32* noalias nocapture align 512 "unpacked"="0.0" %dst, %"class.hls::stream<unsigned int, 0>"* noalias "unpacked"="1" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<unsigned int, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<unsigned int, 0>"(i32* align 512 %dst, %"class.hls::stream<unsigned int, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<unsigned int, 0>"(i32* noalias nocapture align 512 "unpacked"="0.0", %"class.hls::stream<unsigned int, 0>"* noalias nocapture "unpacked"="1") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<unsigned int, 0>"
  %3 = alloca i32
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<unsigned int, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_4(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<unsigned int, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<unsigned int, 0>"* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<unsigned int, 0>", %"class.hls::stream<unsigned int, 0>"* %2
  %.evi = extractvalue %"class.hls::stream<unsigned int, 0>" %8, 0
  store i32 %.evi, i32* %3
  %9 = bitcast i32* %3 to i8*
  %10 = bitcast i32* %0 to i8*
  call void @fpga_fifo_push_4(i8* %9, i8* %10)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a1i32([1 x i32]* noalias align 512 %dst, [1 x i32]* noalias readonly %src) unnamed_addr #5 {
entry:
  %0 = icmp eq [1 x i32]* %dst, null
  %1 = icmp eq [1 x i32]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a1i32([1 x i32]* nonnull %dst, [1 x i32]* nonnull %src, i64 1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a1i32([1 x i32]* %dst, [1 x i32]* readonly %src, i64 %num) local_unnamed_addr #6 {
entry:
  %0 = icmp eq [1 x i32]* %src, null
  %1 = icmp eq [1 x i32]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [1 x i32], [1 x i32]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [1 x i32], [1 x i32]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i32, i32* %src.addr, align 4
  store i32 %3, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_out(%"class.hls::stream<ap_uint<8>, 0>"* noalias "unpacked"="0", i8* noalias nocapture align 512 "unpacked"="1.0", %"class.hls::stream<ap_uint<8>, 0>"* noalias "unpacked"="2", i8* noalias nocapture align 512 "unpacked"="3.0", %"class.hls::stream<bool, 0>"* noalias "unpacked"="4", i1* noalias nocapture align 512 "unpacked"="5.0", %"class.hls::stream<unsigned int, 0>"* noalias "unpacked"="6", i32* noalias nocapture align 512 "unpacked"="7.0", [1 x i32]* noalias "unpacked"="8", [1 x i32]* noalias readonly align 512 "unpacked"="9") unnamed_addr #7 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<8>, 0>"(%"class.hls::stream<ap_uint<8>, 0>"* %0, i8* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<8>, 0>"(%"class.hls::stream<ap_uint<8>, 0>"* %2, i8* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<bool, 0>"(%"class.hls::stream<bool, 0>"* %4, i1* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<unsigned int, 0>.17"(%"class.hls::stream<unsigned int, 0>"* %6, i32* align 512 %7)
  call fastcc void @onebyonecpy_hls.p0a1i32([1 x i32]* %8, [1 x i32]* align 512 %9)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<unsigned int, 0>.17"(%"class.hls::stream<unsigned int, 0>"* noalias "unpacked"="0" %dst, i32* noalias nocapture align 512 "unpacked"="1.0" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<unsigned int, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<unsigned int, 0>.20"(%"class.hls::stream<unsigned int, 0>"* nonnull %dst, i32* align 512 %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<unsigned int, 0>.20"(%"class.hls::stream<unsigned int, 0>"* noalias nocapture "unpacked"="0", i32* noalias nocapture align 512 "unpacked"="1.0") unnamed_addr #4 {
entry:
  %2 = alloca i32
  %3 = alloca %"class.hls::stream<unsigned int, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i32* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_4(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i32* %2 to i8*
  %7 = bitcast i32* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %6, i8* %7)
  %8 = load volatile i32, i32* %2
  %.ivi = insertvalue %"class.hls::stream<unsigned int, 0>" undef, i32 %8, 0
  store %"class.hls::stream<unsigned int, 0>" %.ivi, %"class.hls::stream<unsigned int, 0>"* %3
  %9 = bitcast %"class.hls::stream<unsigned int, 0>"* %3 to i8*
  %10 = bitcast %"class.hls::stream<unsigned int, 0>"* %0 to i8*
  call void @fpga_fifo_push_4(i8* %9, i8* %10)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<bool, 0>.30"(i1* noalias nocapture align 512 "unpacked"="0.0" %dst, %"class.hls::stream<bool, 0>"* noalias "unpacked"="1" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<bool, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<bool, 0>.33"(i1* align 512 %dst, %"class.hls::stream<bool, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<bool, 0>.33"(i1* noalias nocapture align 512 "unpacked"="0.0", %"class.hls::stream<bool, 0>"* noalias nocapture "unpacked"="1") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<bool, 0>"
  %3 = alloca i1
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<bool, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_1(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<bool, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<bool, 0>"* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<bool, 0>", %"class.hls::stream<bool, 0>"* %2
  %.evi = extractvalue %"class.hls::stream<bool, 0>" %8, 0
  store i1 %.evi, i1* %3
  %9 = bitcast i1* %3 to i8*
  %10 = bitcast i1* %0 to i8*
  call void @fpga_fifo_push_1(i8* %9, i8* %10)
  br label %empty, !llvm.loop !9

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<8>, 0>"(%"class.hls::stream<ap_uint<8>, 0>"* noalias "unpacked"="0" %dst, i8* noalias nocapture align 512 "unpacked"="1.0" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<ap_uint<8>, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<8>, 0>.46"(%"class.hls::stream<ap_uint<8>, 0>"* nonnull %dst, i8* align 512 %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<8>, 0>.46"(%"class.hls::stream<ap_uint<8>, 0>"* noalias nocapture "unpacked"="0", i8* noalias nocapture align 512 "unpacked"="1.0") unnamed_addr #4 {
entry:
  %2 = alloca i8
  %3 = alloca %"class.hls::stream<ap_uint<8>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %1)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  call void @fpga_fifo_pop_1(i8* %2, i8* %1)
  %5 = load volatile i8, i8* %2
  %.ivi = insertvalue %"class.hls::stream<ap_uint<8>, 0>" undef, i8 %5, 0, 0, 0, 0
  store %"class.hls::stream<ap_uint<8>, 0>" %.ivi, %"class.hls::stream<ap_uint<8>, 0>"* %3
  %6 = bitcast %"class.hls::stream<ap_uint<8>, 0>"* %3 to i8*
  %7 = bitcast %"class.hls::stream<ap_uint<8>, 0>"* %0 to i8*
  call void @fpga_fifo_push_1(i8* %6, i8* %7)
  br label %empty, !llvm.loop !10

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<8>, 0>.53"(i8* noalias nocapture align 512 "unpacked"="0.0" %dst, %"class.hls::stream<ap_uint<8>, 0>"* noalias "unpacked"="1" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<ap_uint<8>, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<8>, 0>.56"(i8* align 512 %dst, %"class.hls::stream<ap_uint<8>, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<8>, 0>.56"(i8* noalias nocapture align 512 "unpacked"="0.0", %"class.hls::stream<ap_uint<8>, 0>"* noalias nocapture "unpacked"="1") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<ap_uint<8>, 0>"
  %3 = alloca i8
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<ap_uint<8>, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_1(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<ap_uint<8>, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<ap_uint<8>, 0>"* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<ap_uint<8>, 0>", %"class.hls::stream<ap_uint<8>, 0>"* %2
  %.evi = extractvalue %"class.hls::stream<ap_uint<8>, 0>" %8, 0, 0, 0, 0
  store i8 %.evi, i8* %3
  call void @fpga_fifo_push_1(i8* %3, i8* %0)
  br label %empty, !llvm.loop !11

ret:                                              ; preds = %empty
  ret void
}

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @apatb_lz4CompressEngineRun_hw(i8*, i8*, i1*, i32*, [1 x i32]*, i32, i32)

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_back(%"class.hls::stream<ap_uint<8>, 0>"* noalias "unpacked"="0", i8* noalias nocapture align 512 "unpacked"="1.0", %"class.hls::stream<ap_uint<8>, 0>"* noalias "unpacked"="2", i8* noalias nocapture align 512 "unpacked"="3.0", %"class.hls::stream<bool, 0>"* noalias "unpacked"="4", i1* noalias nocapture align 512 "unpacked"="5.0", %"class.hls::stream<unsigned int, 0>"* noalias "unpacked"="6", i32* noalias nocapture align 512 "unpacked"="7.0", [1 x i32]* noalias "unpacked"="8", [1 x i32]* noalias readonly align 512 "unpacked"="9") unnamed_addr #7 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<8>, 0>"(%"class.hls::stream<ap_uint<8>, 0>"* %0, i8* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<8>, 0>"(%"class.hls::stream<ap_uint<8>, 0>"* %2, i8* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<bool, 0>"(%"class.hls::stream<bool, 0>"* %4, i1* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<unsigned int, 0>.17"(%"class.hls::stream<unsigned int, 0>"* %6, i32* align 512 %7)
  call fastcc void @onebyonecpy_hls.p0a1i32([1 x i32]* %8, [1 x i32]* align 512 %9)
  ret void
}

declare void @lz4CompressEngineRun_hw_stub(%"class.hls::stream<ap_uint<8>, 0>"* noalias nocapture nonnull, %"class.hls::stream<ap_uint<8>, 0>"* noalias nocapture nonnull, %"class.hls::stream<bool, 0>"* noalias nocapture nonnull, %"class.hls::stream<unsigned int, 0>"* noalias nocapture nonnull, i32* noalias nocapture nonnull, i32, i32)

define void @lz4CompressEngineRun_hw_stub_wrapper(i8*, i8*, i1*, i32*, [1 x i32]*, i32, i32) #8 {
entry:
  %7 = call i8* @malloc(i64 1)
  %8 = bitcast i8* %7 to %"class.hls::stream<ap_uint<8>, 0>"*
  %9 = call i8* @malloc(i64 1)
  %10 = bitcast i8* %9 to %"class.hls::stream<ap_uint<8>, 0>"*
  %11 = call i8* @malloc(i64 1)
  %12 = bitcast i8* %11 to %"class.hls::stream<bool, 0>"*
  %13 = call i8* @malloc(i64 4)
  %14 = bitcast i8* %13 to %"class.hls::stream<unsigned int, 0>"*
  call void @copy_out(%"class.hls::stream<ap_uint<8>, 0>"* %8, i8* %0, %"class.hls::stream<ap_uint<8>, 0>"* %10, i8* %1, %"class.hls::stream<bool, 0>"* %12, i1* %2, %"class.hls::stream<unsigned int, 0>"* %14, i32* %3, [1 x i32]* null, [1 x i32]* %4)
  %15 = bitcast [1 x i32]* %4 to i32*
  call void @lz4CompressEngineRun_hw_stub(%"class.hls::stream<ap_uint<8>, 0>"* %8, %"class.hls::stream<ap_uint<8>, 0>"* %10, %"class.hls::stream<bool, 0>"* %12, %"class.hls::stream<unsigned int, 0>"* %14, i32* %15, i32 %5, i32 %6)
  call void @copy_in(%"class.hls::stream<ap_uint<8>, 0>"* %8, i8* %0, %"class.hls::stream<ap_uint<8>, 0>"* %10, i8* %1, %"class.hls::stream<bool, 0>"* %12, i1* %2, %"class.hls::stream<unsigned int, 0>"* %14, i32* %3, [1 x i32]* null, [1 x i32]* %4)
  call void @free(i8* %7)
  call void @free(i8* %9)
  call void @free(i8* %11)
  call void @free(i8* %13)
  ret void
}

declare i1 @fpga_fifo_not_empty_1(i8*)

declare i1 @fpga_fifo_not_empty_4(i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

attributes #0 = { inaccessiblememonly nounwind willreturn }
attributes #1 = { inaccessiblemem_or_argmemonly noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyin" }
attributes #3 = { argmemonly noinline willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline willreturn "fpga.wrapper.func"="streamcpy_hls" }
attributes #5 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #6 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #7 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyout" }
attributes #8 = { "fpga.wrapper.func"="stub" }
attributes #9 = { inaccessiblememonly nounwind willreturn "xlx.port.bitwidth"="8" "xlx.source"="user" }
attributes #10 = { inaccessiblememonly nounwind willreturn "xlx.port.bitwidth"="32" "xlx.source"="user" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
