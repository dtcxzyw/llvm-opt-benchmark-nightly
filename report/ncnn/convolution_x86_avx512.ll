Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avx512?download=true
inline.NumInlined: 389
inline.NumDeleted: 86
loop-unroll.NumCompletelyUnrolled: 154
loop-unroll.NumRuntimeUnrolled: 219
loop-unroll.NumUnrolled: 373
begin_hunk_0_@_ZN4ncnn22Convolution_x86_avx51221create_pipeline_bf16sERKNS_6OptionE:bb.a
  %.71981.us.i = phi ptr [ %i.cwl, %vec.epilog.scalar.ph611 ], [ %.71981.us.i.ph, %vec.epilog.scalar.ph611.preheader ] ; 3 uses
  %i.cwc = getelementptr inbounds nuw [4 x i8], ptr %.311201985.us.i, i64 %indvars.iv2386.i ; 2 uses
  %i.cwd = load i32, ptr %i.cwc, align 4, !tbaa !41
  %i.cwe = lshr i32 %i.cwd, 16
  %i.cwf = trunc nuw i32 %i.cwe to i16
  store i16 %i.cwf, ptr %.71981.us.i, align 2, !tbaa !102
  %i.cwg = getelementptr inbounds nuw [4 x i8], ptr %i.cwc, i64 %i.cdl
  %i.cwh = getelementptr inbounds nuw i8, ptr %.71981.us.i, i64 2
  %i.cwi = load i32, ptr %i.cwg, align 4, !tbaa !41
  %i.cwj = lshr i32 %i.cwi, 16
  %i.cwk = trunc nuw i32 %i.cwj to i16
  store i16 %i.cwk, ptr %i.cwh, align 2, !tbaa !102
  %i.cwl = getelementptr inbounds nuw i8, ptr %.71981.us.i, i64 4 ; 2 uses
  %indvars.iv.next2387.i = add nuw nsw i64 %indvars.iv2386.i, 1 ; 2 uses
  %exitcond2390.not.i = icmp eq i64 %indvars.iv.next2387.i, %wide.trip.count2371.i
  br i1 %exitcond2390.not.i, label %._crit_edge1983.us.i, label %vec.epilog.scalar.ph611, !llvm.loop !619

._crit_edge1983.us.i:                             ; preds = %vec.epilog.scalar.ph611, %vec.epilog.middle.block623, %middle.block607
  %.lcssa444 = phi ptr [ %i.cvv, %vec.epilog.middle.block623 ], [ %i.cvj, %middle.block607 ], [ %i.cwl, %vec.epilog.scalar.ph611 ] ; 2 uses
  %i.cwm = getelementptr inbounds nuw [4 x i8], ptr %.311201985.us.i, i64 %i.cdn ; 2 uses
  %i.cwn = add nuw nsw i32 %.311101987.us.i, 2    ; 3 uses
  %i.cwo = or disjoint i32 %i.cwn, 1
  %i.cwp = icmp slt i32 %i.cwo, %i.t
  br i1 %i.cwp, label %iter.check609, label %.preheader1558.i, !llvm.loop !620

.preheader1558.i:                                 ; preds = %._crit_edge1983.us.i, %.preheader1559.i
  %.31120.lcssa.i = phi ptr [ %.21119.lcssa.i, %.preheader1559.i ], [ %i.cwm, %._crit_edge1983.us.i ] ; 3 uses
  %.6.lcssa.i = phi ptr [ %.41116.lcssa.i, %.preheader1559.i ], [ %.lcssa444, %._crit_edge1983.us.i ]
  %.31110.lcssa.i = phi i32 [ %.21109.lcssa.i, %.preheader1559.i ], [ %i.cwn, %._crit_edge1983.us.i ] ; 2 uses
  %i.cwq = icmp sge i32 %.31110.lcssa.i, %i.t
  %brmerge2015.i = or i1 %i.cdo, %i.cwq
  br i1 %brmerge2015.i, label %._crit_edge2000.split.i, label %iter.check575

iter.check575:                                    ; preds = %.preheader1558.i, %._crit_edge1996.i
  %.411111999.i = phi i32 [ %i.cxp, %._crit_edge1996.i ], [ %.31110.lcssa.i, %.preheader1558.i ]
  %.91998.i = phi ptr [ %.lcssa447, %._crit_edge1996.i ], [ %.6.lcssa.i, %.preheader1558.i ] ; 5 uses
  br i1 %min.iters.check560, label %vec.epilog.scalar.ph577.preheader, label %vector.main.loop.iter.check561

vector.main.loop.iter.check561:                   ; preds = %iter.check575
  br i1 %min.iters.check562, label %vec.epilog.ph579, label %vector.ph563

vector.ph563:                                     ; preds = %vector.main.loop.iter.check561
  %i.cwr = getelementptr i8, ptr %.91998.i, i64 %i.cej ; 2 uses
  br label %vector.body565

vector.body565:                                   ; preds = %vector.ph563, %vector.body565
  %index566 = phi i64 [ 0, %vector.ph563 ], [ %index.next572, %vector.body565 ] ; 3 uses
  %i.cws = shl i64 %index566, 1
  %next.gep567 = getelementptr i8, ptr %.91998.i, i64 %i.cws ; 4 uses
  %i.cwt = getelementptr inbounds nuw [4 x i8], ptr %.31120.lcssa.i, i64 %index566 ; 4 uses
  %i.cwu = getelementptr inbounds nuw i8, ptr %i.cwt, i64 64
  %i.cwv = getelementptr inbounds nuw i8, ptr %i.cwt, i64 128
  %i.cww = getelementptr inbounds nuw i8, ptr %i.cwt, i64 192
  %wide.load568 = load <16 x i32>, ptr %i.cwt, align 4, !tbaa !41
  %wide.load569 = load <16 x i32>, ptr %i.cwu, align 4, !tbaa !41
  %wide.load570 = load <16 x i32>, ptr %i.cwv, align 4, !tbaa !41
  %wide.load571 = load <16 x i32>, ptr %i.cww, align 4, !tbaa !41
  %i.cwx = lshr <16 x i32> %wide.load568, splat (i32 16)
  %i.cwy = lshr <16 x i32> %wide.load569, splat (i32 16)
  %i.cwz = lshr <16 x i32> %wide.load570, splat (i32 16)
  %i.cxa = lshr <16 x i32> %wide.load571, splat (i32 16)
  %i.cxb = trunc nuw <16 x i32> %i.cwx to <16 x i16>
  %i.cxc = trunc nuw <16 x i32> %i.cwy to <16 x i16>
  %i.cxd = trunc nuw <16 x i32> %i.cwz to <16 x i16>
  %i.cxe = trunc nuw <16 x i32> %i.cxa to <16 x i16>
  %i.cxf = getelementptr i8, ptr %next.gep567, i64 32
  %i.cxg = getelementptr i8, ptr %next.gep567, i64 64
  %i.cxh = getelementptr i8, ptr %next.gep567, i64 96
  store <16 x i16> %i.cxb, ptr %next.gep567, align 2, !tbaa !102
  store <16 x i16> %i.cxc, ptr %i.cxf, align 2, !tbaa !102
  store <16 x i16> %i.cxd, ptr %i.cxg, align 2, !tbaa !102
  store <16 x i16> %i.cxe, ptr %i.cxh, align 2, !tbaa !102
  %index.next572 = add nuw i64 %index566, 64      ; 2 uses
  %i.cxi = icmp eq i64 %index.next572, %n.vec564
  br i1 %i.cxi, label %middle.block573, label %vector.body565, !llvm.loop !621

middle.block573:                                  ; preds = %vector.body565
  br i1 %cmp.n574, label %._crit_edge1996.i, label %vec.epilog.iter.check576

vec.epilog.iter.check576:                         ; preds = %middle.block573
  br i1 %min.epilog.iters.check578, label %vec.epilog.scalar.ph577.preheader, label %vec.epilog.ph579, !prof !88

vec.epilog.ph579:                                 ; preds = %vector.main.loop.iter.check561, %vec.epilog.iter.check576
  %vec.epilog.resume.val580 = phi i64 [ %n.vec564, %vec.epilog.iter.check576 ], [ 0, %vector.main.loop.iter.check561 ]
  %i.cxj = getelementptr i8, ptr %.91998.i, i64 %i.cek ; 2 uses
  br label %vec.epilog.vector.body582

vec.epilog.vector.body582:                        ; preds = %vec.epilog.vector.body582, %vec.epilog.ph579
  %index583 = phi i64 [ %vec.epilog.resume.val580, %vec.epilog.ph579 ], [ %index.next586, %vec.epilog.vector.body582 ] ; 3 uses
  %i.cxk = shl i64 %index583, 1
  %next.gep584 = getelementptr i8, ptr %.91998.i, i64 %i.cxk
  %i.cxl = getelementptr inbounds nuw [4 x i8], ptr %.31120.lcssa.i, i64 %index583
  %wide.load585 = load <8 x i32>, ptr %i.cxl, align 4, !tbaa !41
  %i.cxm = lshr <8 x i32> %wide.load585, splat (i32 16)
  %i.cxn = trunc nuw <8 x i32> %i.cxm to <8 x i16>
  store <8 x i16> %i.cxn, ptr %next.gep584, align 2, !tbaa !102
  %index.next586 = add nuw i64 %index583, 8       ; 2 uses
  %i.cxo = icmp eq i64 %index.next586, %n.vec581
  br i1 %i.cxo, label %vec.epilog.middle.block587, label %vec.epilog.vector.body582, !llvm.loop !622

vec.epilog.middle.block587:                       ; preds = %vec.epilog.vector.body582
  br i1 %cmp.n588, label %._crit_edge1996.i, label %vec.epilog.scalar.ph577.preheader

vec.epilog.scalar.ph577.preheader:                ; preds = %iter.check575, %vec.epilog.iter.check576, %vec.epilog.middle.block587
  %indvars.iv2391.i.ph = phi i64 [ 0, %iter.check575 ], [ %n.vec564, %vec.epilog.iter.check576 ], [ %n.vec581, %vec.epilog.middle.block587 ]
  %.101994.i.ph = phi ptr [ %.91998.i, %iter.check575 ], [ %i.cwr, %vec.epilog.iter.check576 ], [ %i.cxj, %vec.epilog.middle.block587 ]
  br label %vec.epilog.scalar.ph577

._crit_edge1996.i:                                ; preds = %vec.epilog.scalar.ph577, %vec.epilog.middle.block587, %middle.block573
  %.lcssa447 = phi ptr [ %i.cxj, %vec.epilog.middle.block587 ], [ %i.cwr, %middle.block573 ], [ %i.cxu, %vec.epilog.scalar.ph577 ]
  %i.cxp = add nuw nsw i32 %.411111999.i, 1       ; 2 uses
  %exitcond2396.not.i = icmp eq i32 %i.cxp, %i.t
  br i1 %exitcond2396.not.i, label %._crit_edge2000.split.i, label %iter.check575, !llvm.loop !623

vec.epilog.scalar.ph577:                          ; preds = %vec.epilog.scalar.ph577.preheader, %vec.epilog.scalar.ph577
  %indvars.iv2391.i = phi i64 [ %indvars.iv.next2392.i, %vec.epilog.scalar.ph577 ], [ %indvars.iv2391.i.ph, %vec.epilog.scalar.ph577.preheader ] ; 2 uses
  %.101994.i = phi ptr [ %i.cxu, %vec.epilog.scalar.ph577 ], [ %.101994.i.ph, %vec.epilog.scalar.ph577.preheader ] ; 2 uses
  %i.cxq = getelementptr inbounds nuw [4 x i8], ptr %.31120.lcssa.i, i64 %indvars.iv2391.i
  %i.cxr = load i32, ptr %i.cxq, align 4, !tbaa !41
  %i.cxs = lshr i32 %i.cxr, 16
  %i.cxt = trunc nuw i32 %i.cxs to i16
  store i16 %i.cxt, ptr %.101994.i, align 2, !tbaa !102
  %i.cxu = getelementptr inbounds nuw i8, ptr %.101994.i, i64 2 ; 2 uses
  %indvars.iv.next2392.i = add nuw nsw i64 %indvars.iv2391.i, 1 ; 2 uses
  %exitcond2395.not.i = icmp eq i64 %indvars.iv.next2392.i, %wide.trip.count2371.i
  br i1 %exitcond2395.not.i, label %._crit_edge1996.i, label %vec.epilog.scalar.ph577, !llvm.loop !624

._crit_edge2000.split.i:                          ; preds = %._crit_edge1996.i, %.preheader1558.i, %.preheader1554.lr.ph.i, %.preheader1555.lr.ph.i
  %indvars.iv.next2398.i = add nuw nsw i64 %indvars.iv2397.i, 1 ; 2 uses
  %indvars.iv.next2366.i = add i32 %indvars.iv2365.i, %i.ccr
  %exitcond2401.not.i = icmp eq i64 %indvars.iv.next2398.i, %wide.trip.count2400.i
  br i1 %exitcond2401.not.i, label %_ZN4ncnnL41convolution_transform_kernel_packed_bf16sERKNS_3MatERS0_iiii.exit, label %_ZN4ncnn3MatD2Ev.exit.i105, !llvm.loop !625

_ZN4ncnnL41convolution_transform_kernel_packed_bf16sERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge2000.split.i, %bb.dk, %.preheader1562.i
  %i.cxv = load i8, ptr %1, align 8, !tbaa !68, !range !49, !noundef !50
  %i.cxw = trunc nuw i8 %i.cxv to i1
  br i1 %i.cxw, label %bb.fv, label %bb.gb

bb.fv:                                            ; preds = %_ZN4ncnnL41convolution_transform_kernel_packed_bf16sERKNS_3MatERS0_iiii.exit
  %i.cxx = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.cxy = load ptr, ptr %i.cxx, align 8, !tbaa !20 ; 2 uses
  %.not.i = icmp eq ptr %i.cxy, null
  br i1 %.not.i, label %.sink.split, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.cxz = atomicrmw add ptr %i.cxy, i32 -1 acq_rel, align 4
  %i.cya = icmp eq i32 %i.cxz, 1
  br i1 %i.cya, label %bb.fx, label %.sink.split

bb.fx:                                            ; preds = %bb.fw
  %i.cyb = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.cyc = load ptr, ptr %i.cyb, align 8, !tbaa !21 ; 3 uses
  %.not3.i = icmp eq ptr %i.cyc, null
  %i.cyd = load ptr, ptr %i.pv, align 8, !tbaa !22 ; 3 uses
  br i1 %.not3.i, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.cye = load ptr, ptr %i.cyc, align 8, !tbaa !14
  %i.cyf = getelementptr inbounds nuw i8, ptr %i.cye, i64 24
  %i.cyg = load ptr, ptr %i.cyf, align 8
  tail call void %i.cyg(ptr noundef nonnull align 8 dereferenceable(8) %i.cyc, ptr noundef %i.cyd), !inline_history !0
  br label %.sink.split

bb.fz:                                            ; preds = %bb.fx
  %.not.i101 = icmp eq ptr %i.cyd, null
  br i1 %.not.i101, label %.sink.split, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  tail call void @free(ptr noundef nonnull %i.cyd) #12
  br label %.sink.split

.sink.split:                                      ; preds = %bb.fy, %bb.fw, %bb.fv, %bb.fz, %bb.ga, %bb.dg, %bb.de, %bb.dd, %bb.dh, %bb.di, %bb.al, %bb.aj, %bb.ai, %bb.am, %bb.an
  %.sink434 = phi ptr [ %i.dy, %bb.al ], [ %i.ez, %bb.dg ], [ %i.dy, %bb.an ], [ %i.dy, %bb.am ], [ %i.dy, %bb.ai ], [ %i.dy, %bb.aj ], [ %i.ez, %bb.di ], [ %i.ez, %bb.dh ], [ %i.ez, %bb.dd ], [ %i.ez, %bb.de ], [ %i.pv, %bb.ga ], [ %i.pv, %bb.fz ], [ %i.pv, %bb.fv ], [ %i.pv, %bb.fw ], [ %i.pv, %bb.fy ]
  %i.cyh = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.cyi = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i64 0, ptr %i.cyi, align 8, !tbaa !23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sink434, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.cyh, i8 0, i64 20, i1 false)
  br label %bb.gb

bb.gb:                                            ; preds = %.sink.split, %_ZN4ncnnL46convolution_im2col_gemm_transform_kernel_bf16sERKNS_3MatERS0_iiiiRKNS_6OptionE.exit, %_ZN4ncnnL41convolution_transform_kernel_packed_bf16sERKNS_3MatERS0_iiii.exit, %bb.ah
  ret i32 0
}

declare noundef ptr @_ZN4ncnn16create_layer_cpuEi(i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn9ParamDictC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare void @_ZN4ncnn9ParamDict3setEii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN4ncnn20ModelBinFromMatArrayC1EPKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN4ncnn20ModelBinFromMatArrayD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #9

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL37conv3x3s1_winograd63_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %4) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
  %6 = alloca i32, align 4                        ; 2 uses
  %7 = alloca i32, align 4                        ; 5 uses
  %8 = alloca i32, align 4                        ; 5 uses
  %9 = alloca i32, align 4                        ; 5 uses
  %10 = alloca i32, align 4                       ; 5 uses
  %11 = alloca i32, align 4                       ; 5 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %13 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 %2, ptr %6, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  store i32 %3, ptr %7, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  store i32 %2, ptr %8, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %15 = load i32, ptr %14, align 4, !tbaa !46     ; 2 uses
  %16 = tail call noundef i32 @_ZN4ncnn25get_cpu_level2_cache_sizeEv()
  %17 = sext i32 %16 to i64
  %18 = icmp eq i32 %15, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = tail call noundef i32 @_ZN4ncnn26get_physical_big_cpu_countEv()
  br label %21

21:                                               ; preds = %19, %5
  %.0.i = phi i32 [ %20, %19 ], [ %15, %5 ]       ; 3 uses
  %22 = uitofp fast i64 %17 to float              ; 2 uses
  %23 = fmul fast float %22, 2.500000e-01
  %24 = fmul fast float %22, f0x3DAAAAAB
  %25 = tail call fast noundef nofpclass(nan inf) float @llvm.sqrt.f32(float nofpclass(nan inf) %24)
  %26 = fptosi float %25 to i32
  %27 = and i32 %26, 2147483632
  %.sroa.speculated86.i = tail call i32 @llvm.umax.i32(i32 %27, i32 16)
  %28 = tail call noundef i32 @_ZN4ncnn22get_physical_cpu_countEv()
  %.sroa.speculated82.i = tail call i32 @llvm.smin.i32(i32 %28, i32 %.0.i)
  %29 = mul nsw i32 %.sroa.speculated86.i, %.sroa.speculated82.i ; 3 uses
  %30 = add i32 %3, -1                            ; 2 uses
  %31 = add i32 %29, %30
  %32 = sdiv i32 %31, %29                         ; 2 uses
  %33 = add i32 %32, %30
  %34 = sdiv i32 %33, %32
  %35 = add nsw i32 %34, 15
  %36 = sdiv i32 %35, 16
  %37 = shl nsw i32 %36, 4
  %.sroa.speculated78.i = tail call i32 @llvm.smin.i32(i32 %37, i32 %29) ; 3 uses
  %38 = icmp sgt i32 %.0.i, 1
  br i1 %38, label %39, label %_ZN4ncnnL20get_optimal_tile_mnkEiiiRiS0_S0_i.exit

39:                                               ; preds = %21
  %40 = sdiv i32 %.sroa.speculated78.i, %.0.i
  %.sroa.speculated68.i = tail call i32 @llvm.smax.i32(i32 %40, i32 1)
  %41 = add nuw nsw i32 %.sroa.speculated68.i, 15
  %42 = and i32 %41, 2147483632
  %.sroa.speculated74.i = tail call i32 @llvm.smin.i32(i32 %42, i32 %.sroa.speculated78.i)
  br label %_ZN4ncnnL20get_optimal_tile_mnkEiiiRiS0_S0_i.exit

_ZN4ncnnL20get_optimal_tile_mnkEiiiRiS0_S0_i.exit: ; preds = %21, %39
  %storemerge.i = phi i32 [ %.sroa.speculated74.i, %39 ], [ %.sroa.speculated78.i, %21 ] ; 6 uses
  store i32 %storemerge.i, ptr %9, align 4, !tbaa !66
  %43 = tail call fast noundef nofpclass(nan inf) float @llvm.sqrt.f32(float nofpclass(nan inf) %23)
  %44 = sitofp fast i32 %storemerge.i to float
  %45 = fsub fast float %43, %44
  %46 = fptosi float %45 to i32
  %47 = sdiv i32 %46, 16
  %48 = shl nsw i32 %47, 4
  %.sroa.speculated62.i = tail call i32 @llvm.smax.i32(i32 %48, i32 16) ; 3 uses
  %49 = add i32 %2, -1                            ; 2 uses
  %50 = add i32 %.sroa.speculated62.i, %49
  %51 = sdiv i32 %50, %.sroa.speculated62.i       ; 2 uses
  %52 = add i32 %51, %49
  %53 = sdiv i32 %52, %51
  %54 = add nsw i32 %53, 15
  %55 = sdiv i32 %54, 16
  %56 = shl nsw i32 %55, 4
  %.sroa.speculated58.i = tail call i32 @llvm.smin.i32(i32 %56, i32 %.sroa.speculated62.i) ; 5 uses
  store i32 %.sroa.speculated58.i, ptr %10, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %i.a = add i32 %storemerge.i, -1
  %i.b = add i32 %i.a, %3
  %i.c = sdiv i32 %i.b, %storemerge.i             ; 2 uses
  store i32 %i.c, ptr %11, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.d = shl nsw i32 %storemerge.i, 6
  %i.e = mul nsw i32 %i.d, %.sroa.speculated58.i
  %i.f = load i32, ptr %14, align 4, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %12, i64 64
  store i64 0, ptr %i.i, align 8, !tbaa !23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %12, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.h, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %12, i32 noundef %i.e, i32 noundef 1, i32 noundef %i.f, i64 noundef 4, ptr noundef null)
  %i.j = mul nsw i32 %storemerge.i, %.sroa.speculated58.i
  %57 = add nsw i32 %.sroa.speculated58.i, -1
  %58 = add i32 %57, %2
  %59 = sdiv i32 %58, %.sroa.speculated58.i
  invoke void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.j, i32 noundef 64, i32 noundef %59, i32 noundef %i.c, i64 noundef 4, ptr noundef null)
          to label %bb.a unwind label %bb.h

bb.a:                                             ; preds = %_ZN4ncnnL20get_optimal_tile_mnkEiiiRiS0_S0_i.exit
  %i.k = load i32, ptr %14, align 4, !tbaa !46
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %13, i32 %i.k)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL37conv3x3s1_winograd63_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined, ptr nonnull %11, ptr nonnull %9, ptr nonnull %12, ptr nonnull %8, ptr nonnull %10, ptr nonnull %7, ptr nonnull %0, ptr nonnull %6, ptr nonnull %1)
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !20   ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = atomicrmw add ptr %i.l, i32 -1 acq_rel, align 4
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.c, label %_ZN4ncnn3MatD2Ev.exit8

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !21   ; 3 uses
  %.not3.i = icmp eq ptr %i.o, null
  %i.p = load ptr, ptr %12, align 8, !tbaa !22    ; 3 uses
  br i1 %.not3.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef %i.p)
          to label %_ZN4ncnn3MatD2Ev.exit8 unwind label %bb.g, !inline_history !0

bb.e:                                             ; preds = %bb.c
  %.not.i14 = icmp eq ptr %i.p, null
  br i1 %.not.i14, label %_ZN4ncnn3MatD2Ev.exit8, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef nonnull %i.p) #12
  br label %_ZN4ncnn3MatD2Ev.exit8

bb.g:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #36
  unreachable

_ZN4ncnn3MatD2Ev.exit8:                           ; preds = %bb.b, %bb.a, %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  ret void

bb.h:                                             ; preds = %_ZN4ncnnL20get_optimal_tile_mnkEiiiRiS0_S0_i.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !20   ; 2 uses
  %.not.i9 = icmp eq ptr %i.w, null
  br i1 %.not.i9, label %_ZN4ncnn3MatD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = atomicrmw add ptr %i.w, i32 -1 acq_rel, align 4
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.j, label %_ZN4ncnn3MatD2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !21   ; 3 uses
  %.not3.i10 = icmp eq ptr %i.z, null
  %i.aa = load ptr, ptr %12, align 8, !tbaa !22   ; 3 uses
  br i1 %.not3.i10, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  invoke void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef %i.aa)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.n, !inline_history !0

bb.l:                                             ; preds = %bb.j
  %.not.i13 = icmp eq ptr %i.aa, null
  br i1 %.not.i13, label %_ZN4ncnn3MatD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef nonnull %i.aa) #12
  br label %_ZN4ncnn3MatD2Ev.exit

bb.n:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #36
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.i, %bb.h, %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  resume { ptr, i32 } %i.v
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL37conv3x3s1_winograd43_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %4) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
  %6 = alloca i32, align 4                        ; 2 uses
  %7 = alloca i32, align 4                        ; 5 uses
  %8 = alloca i32, align 4                        ; 5 uses
  %9 = alloca i32, align 4                        ; 5 uses
  %10 = alloca i32, align 4                       ; 5 uses
  %11 = alloca i32, align 4                       ; 5 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %13 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 %2, ptr %6, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  store i32 %3, ptr %7, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  store i32 %2, ptr %8, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %15 = load i32, ptr %14, align 4, !tbaa !46     ; 2 uses
  %16 = tail call noundef i32 @_ZN4ncnn25get_cpu_level2_cache_sizeEv()
  %17 = sext i32 %16 to i64
  %18 = icmp eq i32 %15, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = tail call noundef i32 @_ZN4ncnn26get_physical_big_cpu_countEv()
  br label %21

21:                                               ; preds = %19, %5
  %.0.i = phi i32 [ %20, %19 ], [ %15, %5 ]       ; 3 uses
  %22 = uitofp fast i64 %17 to float              ; 2 uses
  %23 = fmul fast float %22, 2.500000e-01
  %24 = fmul fast float %22, f0x3DAAAAAB
  %25 = tail call fast noundef nofpclass(nan inf) float @llvm.sqrt.f32(float nofpclass(nan inf) %24)
  %26 = fptosi float %25 to i32
  %27 = and i32 %26, 2147483632
  %.sroa.speculated86.i = tail call i32 @llvm.umax.i32(i32 %27, i32 16)
  %28 = tail call noundef i32 @_ZN4ncnn22get_physical_cpu_countEv()
  %.sroa.speculated82.i = tail call i32 @llvm.smin.i32(i32 %28, i32 %.0.i)
  %29 = mul nsw i32 %.sroa.speculated86.i, %.sroa.speculated82.i ; 3 uses
  %30 = add i32 %3, -1                            ; 2 uses
  %31 = add i32 %29, %30
  %32 = sdiv i32 %31, %29                         ; 2 uses
  %33 = add i32 %32, %30
  %34 = sdiv i32 %33, %32
  %35 = add nsw i32 %34, 15
  %36 = sdiv i32 %35, 16
  %37 = shl nsw i32 %36, 4
  %.sroa.speculated78.i = tail call i32 @llvm.smin.i32(i32 %37, i32 %29) ; 3 uses
  %38 = icmp sgt i32 %.0.i, 1
  br i1 %38, label %39, label %_ZN4ncnnL20get_optimal_tile_mnkEiiiRiS0_S0_i.exit

39:                                               ; preds = %21
  %40 = sdiv i32 %.sroa.speculated78.i, %.0.i
  %.sroa.speculated68.i = tail call i32 @llvm.smax.i32(i32 %40, i32 1)
  %41 = add nuw nsw i32 %.sroa.speculated68.i, 15
  %42 = and i32 %41, 2147483632
  %.sroa.speculated74.i = tail call i32 @llvm.smin.i32(i32 %42, i32 %.sroa.speculated78.i)
  br label %_ZN4ncnnL20get_optimal_tile_mnkEiiiRiS0_S0_i.exit

_ZN4ncnnL20get_optimal_tile_mnkEiiiRiS0_S0_i.exit: ; preds = %21, %39
  %storemerge.i = phi i32 [ %.sroa.speculated74.i, %39 ], [ %.sroa.speculated78.i, %21 ] ; 6 uses
  store i32 %storemerge.i, ptr %9, align 4, !tbaa !66
  %43 = tail call fast noundef nofpclass(nan inf) float @llvm.sqrt.f32(float nofpclass(nan inf) %23)
  %44 = sitofp fast i32 %storemerge.i to float
  %45 = fsub fast float %43, %44
  %46 = fptosi float %45 to i32
  %47 = sdiv i32 %46, 16
  %48 = shl nsw i32 %47, 4
  %.sroa.speculated62.i = tail call i32 @llvm.smax.i32(i32 %48, i32 16) ; 3 uses
  %49 = add i32 %2, -1                            ; 2 uses
  %50 = add i32 %.sroa.speculated62.i, %49
  %51 = sdiv i32 %50, %.sroa.speculated62.i       ; 2 uses
  %52 = add i32 %51, %49
  %53 = sdiv i32 %52, %51
  %54 = add nsw i32 %53, 15
  %55 = sdiv i32 %54, 16
  %56 = shl nsw i32 %55, 4
  %.sroa.speculated58.i = tail call i32 @llvm.smin.i32(i32 %56, i32 %.sroa.speculated62.i) ; 5 uses
  store i32 %.sroa.speculated58.i, ptr %10, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %i.a = add i32 %storemerge.i, -1
  %i.b = add i32 %i.a, %3
  %i.c = sdiv i32 %i.b, %storemerge.i             ; 2 uses
  store i32 %i.c, ptr %11, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.d = mul nsw i32 %storemerge.i, 36
  %i.e = mul nsw i32 %i.d, %.sroa.speculated58.i
  %i.f = load i32, ptr %14, align 4, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %12, i64 64
  store i64 0, ptr %i.i, align 8, !tbaa !23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %12, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.h, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %12, i32 noundef %i.e, i32 noundef 1, i32 noundef %i.f, i64 noundef 4, ptr noundef null)
  %i.j = mul nsw i32 %storemerge.i, %.sroa.speculated58.i
  %57 = add nsw i32 %.sroa.speculated58.i, -1
  %58 = add i32 %57, %2
  %59 = sdiv i32 %58, %.sroa.speculated58.i
  invoke void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.j, i32 noundef 36, i32 noundef %59, i32 noundef %i.c, i64 noundef 4, ptr noundef null)
          to label %bb.a unwind label %bb.h

bb.a:                                             ; preds = %_ZN4ncnnL20get_optimal_tile_mnkEiiiRiS0_S0_i.exit
  %i.k = load i32, ptr %14, align 4, !tbaa !46
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %13, i32 %i.k)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL37conv3x3s1_winograd43_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined, ptr nonnull %11, ptr nonnull %9, ptr nonnull %12, ptr nonnull %8, ptr nonnull %10, ptr nonnull %7, ptr nonnull %0, ptr nonnull %6, ptr nonnull %1)
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !20   ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = atomicrmw add ptr %i.l, i32 -1 acq_rel, align 4
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.c, label %_ZN4ncnn3MatD2Ev.exit8

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !21   ; 3 uses
  %.not3.i = icmp eq ptr %i.o, null
  %i.p = load ptr, ptr %12, align 8, !tbaa !22    ; 3 uses
  br i1 %.not3.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef %i.p)
          to label %_ZN4ncnn3MatD2Ev.exit8 unwind label %bb.g, !inline_history !0

bb.e:                                             ; preds = %bb.c
  %.not.i14 = icmp eq ptr %i.p, null
  br i1 %.not.i14, label %_ZN4ncnn3MatD2Ev.exit8, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef nonnull %i.p) #12
  br label %_ZN4ncnn3MatD2Ev.exit8

bb.g:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #36
  unreachable

_ZN4ncnn3MatD2Ev.exit8:                           ; preds = %bb.b, %bb.a, %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  ret void

bb.h:                                             ; preds = %_ZN4ncnnL20get_optimal_tile_mnkEiiiRiS0_S0_i.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !20   ; 2 uses
  %.not.i9 = icmp eq ptr %i.w, null
  br i1 %.not.i9, label %_ZN4ncnn3MatD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = atomicrmw add ptr %i.w, i32 -1 acq_rel, align 4
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.j, label %_ZN4ncnn3MatD2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !21   ; 3 uses
  %.not3.i10 = icmp eq ptr %i.z, null
  %i.aa = load ptr, ptr %12, align 8, !tbaa !22   ; 3 uses
  br i1 %.not3.i10, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  invoke void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef %i.aa)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.n, !inline_history !0

bb.l:                                             ; preds = %bb.j
  %.not.i13 = icmp eq ptr %i.aa, null
  br i1 %.not.i13, label %_ZN4ncnn3MatD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef nonnull %i.aa) #12
  br label %_ZN4ncnn3MatD2Ev.exit

bb.n:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #36
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.i, %bb.h, %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  resume { ptr, i32 } %i.v
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL37conv3x3s1_winograd23_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %4) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
  %6 = alloca i32, align 4                        ; 2 uses
  %7 = alloca i32, align 4                        ; 5 uses
  %8 = alloca i32, align 4                        ; 5 uses
  %9 = alloca i32, align 4                        ; 5 uses
  %10 = alloca i32, align 4                       ; 5 uses
  %11 = alloca i32, align 4                       ; 5 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %13 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 %2, ptr %6, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  store i32 %3, ptr %7, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  store i32 %2, ptr %8, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %15 = load i32, ptr %14, align 4, !tbaa !46     ; 2 uses
  %16 = tail call noundef i32 @_ZN4ncnn25get_cpu_level2_cache_sizeEv()
  %17 = sext i32 %16 to i64
  %18 = icmp eq i32 %15, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = tail call noundef i32 @_ZN4ncnn26get_physical_big_cpu_countEv()
  br label %21

21:                                               ; preds = %19, %5
  %.0.i = phi i32 [ %20, %19 ], [ %15, %5 ]       ; 3 uses
  %22 = uitofp fast i64 %17 to float              ; 2 uses
  %23 = fmul fast float %22, 2.500000e-01
  %24 = fmul fast float %22, f0x3DAAAAAB
  %25 = tail call fast noundef nofpclass(nan inf) float @llvm.sqrt.f32(float nofpclass(nan inf) %24)
  %26 = fptosi float %25 to i32
  %27 = and i32 %26, 2147483632
  %.sroa.speculated86.i = tail call i32 @llvm.umax.i32(i32 %27, i32 16)
  %28 = tail call noundef i32 @_ZN4ncnn22get_physical_cpu_countEv()
  %.sroa.speculated82.i = tail call i32 @llvm.smin.i32(i32 %28, i32 %.0.i)
  %29 = mul nsw i32 %.sroa.speculated86.i, %.sroa.speculated82.i ; 3 uses
  %30 = add i32 %3, -1                            ; 2 uses
  %31 = add i32 %29, %30
  %32 = sdiv i32 %31, %29                         ; 2 uses
  %33 = add i32 %32, %30
  %34 = sdiv i32 %33, %32
  %35 = add nsw i32 %34, 15
  %36 = sdiv i32 %35, 16
  %37 = shl nsw i32 %36, 4
  %.sroa.speculated78.i = tail call i32 @llvm.smin.i32(i32 %37, i32 %29) ; 3 uses
  %38 = icmp sgt i32 %.0.i, 1
  br i1 %38, label %39, label %_ZN4ncnnL20get_optimal_tile_mnkEiiiRiS0_S0_i.exit

39:                                               ; preds = %21
  %40 = sdiv i32 %.sroa.speculated78.i, %.0.i
  %.sroa.speculated68.i = tail call i32 @llvm.smax.i32(i32 %40, i32 1)
  %41 = add nuw nsw i32 %.sroa.speculated68.i, 15
  %42 = and i32 %41, 2147483632
  %.sroa.speculated74.i = tail call i32 @llvm.smin.i32(i32 %42, i32 %.sroa.speculated78.i)
  br label %_ZN4ncnnL20get_optimal_tile_mnkEiiiRiS0_S0_i.exit

_ZN4ncnnL20get_optimal_tile_mnkEiiiRiS0_S0_i.exit: ; preds = %21, %39
  %storemerge.i = phi i32 [ %.sroa.speculated74.i, %39 ], [ %.sroa.speculated78.i, %21 ] ; 6 uses
  store i32 %storemerge.i, ptr %9, align 4, !tbaa !66
  %43 = tail call fast noundef nofpclass(nan inf) float @llvm.sqrt.f32(float nofpclass(nan inf) %23)
  %44 = sitofp fast i32 %storemerge.i to float
  %45 = fsub fast float %43, %44
  %46 = fptosi float %45 to i32
  %47 = sdiv i32 %46, 16
  %48 = shl nsw i32 %47, 4
  %.sroa.speculated62.i = tail call i32 @llvm.smax.i32(i32 %48, i32 16) ; 3 uses
  %49 = add i32 %2, -1                            ; 2 uses
  %50 = add i32 %.sroa.speculated62.i, %49
  %51 = sdiv i32 %50, %.sroa.speculated62.i       ; 2 uses
  %52 = add i32 %51, %49
  %53 = sdiv i32 %52, %51
  %54 = add nsw i32 %53, 15
  %55 = sdiv i32 %54, 16
  %56 = shl nsw i32 %55, 4
  %.sroa.speculated58.i = tail call i32 @llvm.smin.i32(i32 %56, i32 %.sroa.speculated62.i) ; 5 uses
  store i32 %.sroa.speculated58.i, ptr %10, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %i.a = add i32 %storemerge.i, -1
  %i.b = add i32 %i.a, %3
  %i.c = sdiv i32 %i.b, %storemerge.i             ; 2 uses
  store i32 %i.c, ptr %11, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.d = shl nsw i32 %storemerge.i, 4
  %i.e = mul nsw i32 %i.d, %.sroa.speculated58.i
  %i.f = load i32, ptr %14, align 4, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %12, i64 64
  store i64 0, ptr %i.i, align 8, !tbaa !23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %12, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.h, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %12, i32 noundef %i.e, i32 noundef 1, i32 noundef %i.f, i64 noundef 4, ptr noundef null)
  %i.j = mul nsw i32 %storemerge.i, %.sroa.speculated58.i
  %57 = add nsw i32 %.sroa.speculated58.i, -1
  %58 = add i32 %57, %2
  %59 = sdiv i32 %58, %.sroa.speculated58.i
  invoke void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.j, i32 noundef 16, i32 noundef %59, i32 noundef %i.c, i64 noundef 4, ptr noundef null)
          to label %bb.a unwind label %bb.h

bb.a:                                             ; preds = %_ZN4ncnnL20get_optimal_tile_mnkEiiiRiS0_S0_i.exit
  %i.k = load i32, ptr %14, align 4, !tbaa !46
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %13, i32 %i.k)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL37conv3x3s1_winograd23_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined, ptr nonnull %11, ptr nonnull %9, ptr nonnull %12, ptr nonnull %8, ptr nonnull %10, ptr nonnull %7, ptr nonnull %0, ptr nonnull %6, ptr nonnull %1)
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !20   ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = atomicrmw add ptr %i.l, i32 -1 acq_rel, align 4
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.c, label %_ZN4ncnn3MatD2Ev.exit8

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !21   ; 3 uses
  %.not3.i = icmp eq ptr %i.o, null
  %i.p = load ptr, ptr %12, align 8, !tbaa !22    ; 3 uses
  br i1 %.not3.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef %i.p)
          to label %_ZN4ncnn3MatD2Ev.exit8 unwind label %bb.g, !inline_history !0

bb.e:                                             ; preds = %bb.c
  %.not.i14 = icmp eq ptr %i.p, null
  br i1 %.not.i14, label %_ZN4ncnn3MatD2Ev.exit8, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef nonnull %i.p) #12
  br label %_ZN4ncnn3MatD2Ev.exit8

bb.g:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #36
  unreachable

_ZN4ncnn3MatD2Ev.exit8:                           ; preds = %bb.b, %bb.a, %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  ret void

bb.h:                                             ; preds = %_ZN4ncnnL20get_optimal_tile_mnkEiiiRiS0_S0_i.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !20   ; 2 uses
  %.not.i9 = icmp eq ptr %i.w, null
  br i1 %.not.i9, label %_ZN4ncnn3MatD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = atomicrmw add ptr %i.w, i32 -1 acq_rel, align 4
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.j, label %_ZN4ncnn3MatD2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !21   ; 3 uses
  %.not3.i10 = icmp eq ptr %i.z, null
  %i.aa = load ptr, ptr %12, align 8, !tbaa !22   ; 3 uses
  br i1 %.not3.i10, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  invoke void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef %i.aa)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.n, !inline_history !0

bb.l:                                             ; preds = %bb.j
  %.not.i13 = icmp eq ptr %i.aa, null
  br i1 %.not.i13, label %_ZN4ncnn3MatD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef nonnull %i.aa) #12
  br label %_ZN4ncnn3MatD2Ev.exit

bb.n:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #36
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.i, %bb.h, %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  resume { ptr, i32 } %i.v
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4ncnnL22test_prefer_winograd63Eiiii(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #10 {
bb.a:
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %3, i32 %2) ; 19 uses
  %i.a = icmp sgt i32 %0, 63
  br i1 %i.a, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %0, 31
  br i1 %i.b, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.c = icmp sgt i32 %1, 63
  br i1 %i.c, label %bb.w, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = icmp sgt i32 %1, 31
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = insertelement <4 x i32> poison, i32 %.sroa.speculated, i64 0
  %i.f = shufflevector <4 x i32> %i.e, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.g = add <4 x i32> %i.f, <i32 -11, i32 -19, i32 -23, i32 -47>
  %i.h = icmp ult <4 x i32> %i.g, <i32 4, i32 2, i32 22, i32 10>
  %i.i = add i32 %.sroa.speculated, -63
  %i.j = icmp ult i32 %i.i, 68
  %i.k = bitcast <4 x i1> %i.h to i4
  %i.l = icmp ne i4 %i.k, 0
  %op.rdx = or i1 %i.l, %i.j
  br label %bb.w

bb.f:                                             ; preds = %bb.d
  %i.m = icmp sgt i32 %1, 15
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = insertelement <4 x i32> poison, i32 %.sroa.speculated, i64 0
  %i.o = shufflevector <4 x i32> %i.n, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.p = add <4 x i32> %i.o, <i32 -13, i32 -19, i32 -23, i32 -43>
  %i.q = icmp ult <4 x i32> %i.p, <i32 2, i32 2, i32 16, i32 2>
  %i.r = add i32 %.sroa.speculated, -47
  %i.s = icmp ult i32 %i.r, 94
  %i.t = bitcast <4 x i1> %i.q to i4
  %i.u = icmp ne i4 %i.t, 0
  %op.rdx191 = or i1 %i.u, %i.s
  br label %bb.w

bb.h:                                             ; preds = %bb.f
  %i.v = icmp sgt i32 %1, 7
  br i1 %i.v, label %bb.i, label %bb.w

bb.i:                                             ; preds = %bb.h
  %i.w = insertelement <4 x i32> poison, i32 %.sroa.speculated, i64 0
  %i.x = shufflevector <4 x i32> %i.w, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.y = add <4 x i32> %i.x, <i32 -11, i32 -19, i32 -31, i32 -43>
  %i.z = icmp ult <4 x i32> %i.y, <i32 4, i32 2, i32 8, i32 2>
  %i.aa = add i32 %.sroa.speculated, -55
  %i.ab = icmp ult i32 %i.aa, 108
  %i.ac = bitcast <4 x i1> %i.z to i4
  %i.ad = icmp ne i4 %i.ac, 0
  %op.rdx192 = or i1 %i.ad, %i.ab
  br label %bb.w

bb.j:                                             ; preds = %bb.b
  %i.ae = icmp sgt i32 %0, 15
  br i1 %i.ae, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.af = icmp sgt i32 %1, 63
  br i1 %i.af, label %bb.w, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = icmp sgt i32 %1, 31
  br i1 %i.ag, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ah = insertelement <4 x i32> poison, i32 %.sroa.speculated, i64 0
  %i.ai = shufflevector <4 x i32> %i.ah, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aj = add <4 x i32> %i.ai, <i32 -11, i32 -19, i32 -23, i32 -47>
  %i.ak = icmp ult <4 x i32> %i.aj, <i32 4, i32 2, i32 22, i32 46>
  %i.al = add i32 %.sroa.speculated, -95
  %i.am = icmp ult i32 %i.al, 94
  %i.an = bitcast <4 x i1> %i.ak to i4
  %i.ao = icmp ne i4 %i.an, 0
  %op.rdx193 = or i1 %i.ao, %i.am
  br label %bb.w

bb.n:                                             ; preds = %bb.l
  %i.ap = icmp sgt i32 %1, 15
  br i1 %i.ap, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aq = insertelement <4 x i32> poison, i32 %.sroa.speculated, i64 0
  %i.ar = shufflevector <4 x i32> %i.aq, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.as = add <4 x i32> %i.ar, <i32 -11, i32 -27, i32 -43, i32 -47>
  %i.at = icmp ult <4 x i32> %i.as, <i32 4, i32 12, i32 2, i32 28>
  %i.au = add i32 %.sroa.speculated, -81
  %or.cond41 = icmp ult i32 %i.au, 30
  %i.av = add i32 %.sroa.speculated, -117
  %or.cond43 = icmp ult i32 %i.av, 54
  %i.aw = add i32 %.sroa.speculated, -177
  %i.ax = icmp ult i32 %i.aw, 6
  %i.ay = bitcast <4 x i1> %i.at to i4
  %i.az = icmp ne i4 %i.ay, 0
  %op.rdx194 = or i1 %i.az, %or.cond41
  %op.rdx195 = or i1 %or.cond43, %i.ax
  %op.rdx196 = or i1 %op.rdx194, %op.rdx195
  br label %bb.w

bb.p:                                             ; preds = %bb.n
  %i.ba = icmp sgt i32 %1, 7
  br i1 %i.ba, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.bb = insertelement <4 x i32> poison, i32 %.sroa.speculated, i64 0
  %i.bc = shufflevector <4 x i32> %i.bb, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bd = add <4 x i32> %i.bc, <i32 -19, i32 -33, i32 -43, i32 -47>
  %i.be = icmp ult <4 x i32> %i.bd, <i32 2, i32 6, i32 2, i32 82>
  %i.bf = add i32 %.sroa.speculated, -155
  %i.bg = icmp ult i32 %i.bf, 56
  %i.bh = bitcast <4 x i1> %i.be to i4
  %i.bi = icmp ne i4 %i.bh, 0
  %op.rdx197 = or i1 %i.bi, %i.bg
  br label %bb.w

bb.r:                                             ; preds = %bb.j
  %i.bj = icmp slt i32 %0, 8
  %i.bk = icmp sgt i32 %1, 63
  %or.cond185 = or i1 %i.bj, %i.bk
  br i1 %or.cond185, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bl = icmp sgt i32 %1, 31
  br i1 %i.bl, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bm = insertelement <4 x i32> poison, i32 %.sroa.speculated, i64 0
  %i.bn = shufflevector <4 x i32> %i.bm, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bo = add <4 x i32> %i.bn, <i32 -7, i32 -17, i32 -23, i32 -31>
  %i.bp = icmp ult <4 x i32> %i.bo, <i32 8, i32 4, i32 4, i32 8>
  %i.bq = add i32 %.sroa.speculated, -43
  %i.br = icmp ult i32 %i.bq, 120
  %i.bs = bitcast <4 x i1> %i.bp to i4
  %i.bt = icmp ne i4 %i.bs, 0
  %op.rdx198 = or i1 %i.bt, %i.br
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bu = icmp sgt i32 %1, 15
  br i1 %i.bu, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bv = add i32 %.sroa.speculated, -31
  %or.cond61 = icmp ult i32 %i.bv, 2
  %i.bw = add i32 %.sroa.speculated, -39
  %or.cond63 = icmp ult i32 %i.bw, 6
  %or.cond184 = or i1 %or.cond61, %or.cond63
  %i.bx = add i32 %.sroa.speculated, -47
  %i.by = icmp ult i32 %i.bx, 166
  %i.bz = or i1 %i.by, %or.cond184
  br label %bb.w

bb.w:                                             ; preds = %bb.r, %bb.u, %bb.p, %bb.k, %bb.h, %bb.c, %bb.a, %bb.v, %bb.t, %bb.q, %bb.o, %bb.m, %bb.i, %bb.g, %bb.e
  %.0 = phi i1 [ false, %bb.u ], [ false, %bb.a ], [ %op.rdx, %bb.e ], [ %op.rdx191, %bb.g ], [ %op.rdx192, %bb.i ], [ false, %bb.c ], [ false, %bb.h ], [ %op.rdx193, %bb.m ], [ %op.rdx196, %bb.o ], [ %op.rdx197, %bb.q ], [ false, %bb.k ], [ false, %bb.p ], [ %op.rdx198, %bb.t ], [ %i.bz, %bb.v ], [ false, %bb.r ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4ncnnL22test_prefer_winograd23Eiiii(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #10 {
bb.a:
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %3, i32 %2) ; 63 uses
  %i.a = icmp sgt i32 %0, 511
  br i1 %i.a, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 511
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = add i32 %.sroa.speculated, -3
  %i.d = icmp ult i32 %i.c, 12
  br label %bb.cu

bb.d:                                             ; preds = %bb.b
  %i.e = icmp sgt i32 %1, 255
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = add i32 %.sroa.speculated, -3
  %i.g = icmp ult i32 %i.f, 12
  br label %bb.cu

bb.f:                                             ; preds = %bb.d
  %i.h = icmp sgt i32 %1, 127
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
end_hunk_0
begin_hunk_1_@_ZN4ncnnL39convolution_transform_kernel_packed_sseERKNS_3MatERS0_iiiiii:bb.a
  call void @free(ptr noundef nonnull %i.ae) #12
  br label %_ZN4ncnn3MatD2Ev.exit58

bb.g:                                             ; preds = %bb.d
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #36
  unreachable

_ZN4ncnn3MatD2Ev.exit58:                          ; preds = %bb.b, %._crit_edge116.split, %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  ret void

bb.h:                                             ; preds = %bb.a
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !20 ; 2 uses
  %.not.i69 = icmp eq ptr %i.am, null
  br i1 %.not.i69, label %_ZN4ncnn3MatD2Ev.exit, label %bb.j

_ZN4ncnn3MatD2Ev.exit60:                          ; preds = %_ZN4ncnn3MatD2Ev.exit60.preheader, %._crit_edge114
  %indvars.iv137 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit60.preheader ], [ %indvars.iv.next138, %._crit_edge114 ] ; 7 uses
  %i.an = trunc nuw nsw i64 %indvars.iv137 to i32
  %i.ao = udiv i32 %i.an, %7
  %i.ap = zext nneg i32 %i.ao to i64
  %.reass118 = mul i64 %factor.op.mul117, %i.ap
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 %.reass118
  %i.ar = load i32, ptr %i.n, align 4
  %i.as = load ptr, ptr %8, align 8
  %i.at = load i64, ptr %i.o, align 8
  %i.au = load i64, ptr %i.p, align 8             ; 2 uses
  %factor.op.mul = mul i64 %i.at, %i.au           ; 5 uses
  %i.av = sext i32 %i.ar to i64
  %factor.op.mul105 = mul i64 %i.au, %i.av
  br label %.preheader99

.preheader99:                                     ; preds = %_ZN4ncnn3MatD2Ev.exit60, %._crit_edge
  %indvars.iv134 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit60 ], [ %indvars.iv.next135, %._crit_edge ] ; 2 uses
  %.050112 = phi ptr [ %i.aq, %_ZN4ncnn3MatD2Ev.exit60 ], [ %.lcssa, %._crit_edge ]
  br label %.preheader98

._crit_edge114:                                   ; preds = %._crit_edge
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, %i.u ; 2 uses
  %i.aw = add nuw nsw i64 %indvars.iv.next138, %i.v
  %i.ax = icmp samesign ult i64 %i.aw, %i.w
  br i1 %i.ax, label %_ZN4ncnn3MatD2Ev.exit60, label %._crit_edge116.split, !llvm.loop !635

.preheader98:                                     ; preds = %.preheader99, %bb.i
  %indvars.iv129 = phi i64 [ 0, %.preheader99 ], [ %indvars.iv.next130, %bb.i ] ; 2 uses
  %.1110 = phi ptr [ %.050112, %.preheader99 ], [ %.lcssa, %bb.i ]
  %invariant.gep107 = getelementptr [4 x i8], ptr %i.as, i64 %indvars.iv129
  br label %.preheader

._crit_edge:                                      ; preds = %bb.i
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, %i.r ; 2 uses
  %i.ay = add nuw nsw i64 %indvars.iv.next135, %i.s
  %i.az = icmp samesign ult i64 %i.ay, %i.t
  br i1 %i.az, label %.preheader99, label %._crit_edge114, !llvm.loop !636

.preheader:                                       ; preds = %.preheader98, %.epilog-lcssa
  %indvars.iv124 = phi i64 [ 0, %.preheader98 ], [ %indvars.iv.next125, %.epilog-lcssa ] ; 2 uses
  %.2108 = phi ptr [ %.1110, %.preheader98 ], [ %.lcssa, %.epilog-lcssa ] ; 2 uses
  %i.ba = add nuw nsw i64 %indvars.iv124, %indvars.iv134
  %.reass106 = mul i64 %factor.op.mul105, %i.ba
  %gep = getelementptr i8, ptr %invariant.gep107, i64 %.reass106 ; 5 uses
  br i1 %i.x, label %_ZN4ncnn3MatD2Ev.exit59.epil.preheader, label %_ZN4ncnn3MatD2Ev.exit59

bb.i:                                             ; preds = %.epilog-lcssa
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1 ; 2 uses
  %exitcond133.not = icmp eq i64 %indvars.iv.next130, %wide.trip.count132
  br i1 %exitcond133.not, label %._crit_edge, label %.preheader98, !llvm.loop !637

.unr-lcssa:                                       ; preds = %_ZN4ncnn3MatD2Ev.exit59
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %_ZN4ncnn3MatD2Ev.exit59.epil.preheader

_ZN4ncnn3MatD2Ev.exit59.epil.preheader:           ; preds = %.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.3, %.unr-lcssa ]
  %.3103.epil.init = phi ptr [ %.2108, %.preheader ], [ %i.bp, %.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod157)
  br label %_ZN4ncnn3MatD2Ev.exit59.epil

_ZN4ncnn3MatD2Ev.exit59.epil:                     ; preds = %_ZN4ncnn3MatD2Ev.exit59.epil, %_ZN4ncnn3MatD2Ev.exit59.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %_ZN4ncnn3MatD2Ev.exit59.epil.preheader ], [ %indvars.iv.next.epil, %_ZN4ncnn3MatD2Ev.exit59.epil ] ; 2 uses
  %.3103.epil = phi ptr [ %.3103.epil.init, %_ZN4ncnn3MatD2Ev.exit59.epil.preheader ], [ %i.bd, %_ZN4ncnn3MatD2Ev.exit59.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit59.epil.preheader ], [ %epil.iter.next, %_ZN4ncnn3MatD2Ev.exit59.epil ]
  %i.bb = add nuw nsw i64 %indvars.iv.epil, %indvars.iv137
  %.reass.epil = mul i64 %factor.op.mul, %i.bb
  %gep102.epil = getelementptr i8, ptr %gep, i64 %.reass.epil
  %i.bc = load float, ptr %gep102.epil, align 4, !tbaa !41
  store float %i.bc, ptr %.3103.epil, align 4, !tbaa !41
  %i.bd = getelementptr inbounds nuw i8, ptr %.3103.epil, i64 4 ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %_ZN4ncnn3MatD2Ev.exit59.epil, !llvm.loop !638

.epilog-lcssa:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit59.epil, %.unr-lcssa
  %.lcssa = phi ptr [ %i.bp, %.unr-lcssa ], [ %i.bd, %_ZN4ncnn3MatD2Ev.exit59.epil ] ; 3 uses
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %exitcond128.not = icmp eq i64 %indvars.iv.next125, %i.r
  br i1 %exitcond128.not, label %bb.i, label %.preheader, !llvm.loop !639

_ZN4ncnn3MatD2Ev.exit59:                          ; preds = %.preheader, %_ZN4ncnn3MatD2Ev.exit59
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %_ZN4ncnn3MatD2Ev.exit59 ], [ 0, %.preheader ] ; 5 uses
  %.3103 = phi ptr [ %i.bp, %_ZN4ncnn3MatD2Ev.exit59 ], [ %.2108, %.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %_ZN4ncnn3MatD2Ev.exit59 ], [ 0, %.preheader ]
  %i.be = add nuw nsw i64 %indvars.iv, %indvars.iv137
  %.reass = mul i64 %factor.op.mul, %i.be
  %gep102 = getelementptr i8, ptr %gep, i64 %.reass
  %i.bf = load float, ptr %gep102, align 4, !tbaa !41
  store float %i.bf, ptr %.3103, align 4, !tbaa !41
  %i.bg = getelementptr inbounds nuw i8, ptr %.3103, i64 4
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %i.bh = add nuw nsw i64 %indvars.iv.next, %indvars.iv137
  %.reass.1 = mul i64 %factor.op.mul, %i.bh
  %gep102.1 = getelementptr i8, ptr %gep, i64 %.reass.1
  %i.bi = load float, ptr %gep102.1, align 4, !tbaa !41
  store float %i.bi, ptr %i.bg, align 4, !tbaa !41
  %i.bj = getelementptr inbounds nuw i8, ptr %.3103, i64 8
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2
  %i.bk = add nuw nsw i64 %indvars.iv.next.1, %indvars.iv137
  %.reass.2 = mul i64 %factor.op.mul, %i.bk
  %gep102.2 = getelementptr i8, ptr %gep, i64 %.reass.2
  %i.bl = load float, ptr %gep102.2, align 4, !tbaa !41
  store float %i.bl, ptr %i.bj, align 4, !tbaa !41
  %i.bm = getelementptr inbounds nuw i8, ptr %.3103, i64 12
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3
  %i.bn = add nuw nsw i64 %indvars.iv.next.2, %indvars.iv137
  %.reass.3 = mul i64 %factor.op.mul, %i.bn
  %gep102.3 = getelementptr i8, ptr %gep, i64 %.reass.3
  %i.bo = load float, ptr %gep102.3, align 4, !tbaa !41
  store float %i.bo, ptr %i.bm, align 4, !tbaa !41
  %i.bp = getelementptr inbounds nuw i8, ptr %.3103, i64 16 ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %_ZN4ncnn3MatD2Ev.exit59, !llvm.loop !640

bb.j:                                             ; preds = %bb.h
  %i.bq = atomicrmw add ptr %i.am, i32 -1 acq_rel, align 4
  %i.br = icmp eq i32 %i.bq, 1
  br i1 %i.br, label %bb.k, label %_ZN4ncnn3MatD2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !21 ; 3 uses
  %.not3.i70 = icmp eq ptr %i.bt, null
  %i.bu = load ptr, ptr %8, align 8, !tbaa !22    ; 3 uses
  br i1 %.not3.i70, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bv = load ptr, ptr %i.bt, align 8, !tbaa !14
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8
  invoke void %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %i.bt, ptr noundef %i.bu)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.o, !inline_history !0

bb.m:                                             ; preds = %bb.k
  %.not.i73 = icmp eq ptr %i.bu, null
  br i1 %.not.i73, label %_ZN4ncnn3MatD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @free(ptr noundef nonnull %i.bu) #12
  br label %_ZN4ncnn3MatD2Ev.exit

bb.o:                                             ; preds = %bb.l
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #36
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.j, %bb.h, %bb.l, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  resume { ptr, i32 } %i.ak
}

declare void @_ZN4ncnn9ParamDict3setEif(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, float noundef nofpclass(nan inf)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL20get_optimal_tile_mnkEiiiRiS0_S0_i(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %5, i32 noundef %6) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn25get_cpu_level2_cache_sizeEv()
  %i.b = sext i32 %i.a to i64
  %i.c = icmp eq i32 %6, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZN4ncnn26get_physical_big_cpu_countEv()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.d, %bb.b ], [ %6, %bb.a ]    ; 3 uses
  %i.e = uitofp fast i64 %i.b to float            ; 2 uses
  %i.f = fmul fast float %i.e, 2.500000e-01       ; 2 uses
  %i.g = fmul fast float %i.e, f0x3DAAAAAB
  %i.h = tail call fast noundef nofpclass(nan inf) float @llvm.sqrt.f32(float nofpclass(nan inf) %i.g)
  %i.i = fptosi float %i.h to i32
  %7 = and i32 %i.i, 2147483632
  %.sroa.speculated86 = tail call i32 @llvm.umax.i32(i32 %7, i32 16)
  store i32 %.sroa.speculated86, ptr %3, align 4, !tbaa !66
  %i.j = tail call noundef i32 @_ZN4ncnn22get_physical_cpu_countEv()
  %.sroa.speculated82 = tail call i32 @llvm.smin.i32(i32 %i.j, i32 %.0)
  %i.k = load i32, ptr %3, align 4, !tbaa !66
  %i.l = mul nsw i32 %i.k, %.sroa.speculated82    ; 3 uses
  %i.m = add i32 %0, -1                           ; 2 uses
  %i.n = add i32 %i.m, %i.l
  %i.o = sdiv i32 %i.n, %i.l                      ; 2 uses
  %i.p = add i32 %i.m, %i.o
  %i.q = sdiv i32 %i.p, %i.o
  %i.r = add nsw i32 %i.q, 15
  %i.s = sdiv i32 %i.r, 16
  %i.t = shl nsw i32 %i.s, 4
  %.sroa.speculated78 = tail call i32 @llvm.smin.i32(i32 %i.t, i32 %i.l) ; 3 uses
  %i.u = icmp sgt i32 %.0, 1
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = sdiv i32 %.sroa.speculated78, %.0
  %.sroa.speculated68 = tail call i32 @llvm.smax.i32(i32 %i.v, i32 1)
  %i.w = add nuw nsw i32 %.sroa.speculated68, 15
  %i.x = and i32 %i.w, 2147483632
  %.sroa.speculated74 = tail call i32 @llvm.smin.i32(i32 %i.x, i32 %.sroa.speculated78)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge = phi i32 [ %.sroa.speculated74, %bb.d ], [ %.sroa.speculated78, %bb.c ] ; 2 uses
  store i32 %storemerge, ptr %3, align 4, !tbaa !66
  %i.y = tail call fast noundef nofpclass(nan inf) float @llvm.sqrt.f32(float nofpclass(nan inf) %i.f)
  %i.z = sitofp fast i32 %storemerge to float
  %i.aa = fsub fast float %i.y, %i.z
  %i.ab = fptosi float %i.aa to i32
  %i.ac = sdiv i32 %i.ab, 16
  %i.ad = shl nsw i32 %i.ac, 4
  %.sroa.speculated62 = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 16) ; 3 uses
  %i.ae = add i32 %2, -1                          ; 2 uses
  %i.af = add i32 %i.ae, %.sroa.speculated62
  %i.ag = sdiv i32 %i.af, %.sroa.speculated62     ; 2 uses
  %i.ah = add i32 %i.ae, %i.ag
  %i.ai = sdiv i32 %i.ah, %i.ag
  %i.aj = add nsw i32 %i.ai, 15
  %i.ak = sdiv i32 %i.aj, 16
  %i.al = shl nsw i32 %i.ak, 4
  %.sroa.speculated58 = tail call i32 @llvm.smin.i32(i32 %i.al, i32 %.sroa.speculated62) ; 3 uses
  store i32 %.sroa.speculated58, ptr %5, align 4, !tbaa !66
  %i.am = icmp sgt i32 %1, 0
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = load i32, ptr %3, align 4, !tbaa !66    ; 2 uses
  %i.ao = mul nsw i32 %i.an, %.sroa.speculated58
  %i.ap = sitofp fast i32 %i.ao to float
  %i.aq = fsub fast float %i.f, %i.ap
  %i.ar = add nsw i32 %i.an, %.sroa.speculated58
  %i.as = sitofp fast i32 %i.ar to float
  %i.at = fdiv fast float %i.aq, %i.as
  %i.au = fptosi float %i.at to i32
  %i.av = sdiv i32 %i.au, 16
  %i.aw = shl nsw i32 %i.av, 4
  %.sroa.speculated52 = tail call i32 @llvm.smax.i32(i32 %i.aw, i32 16) ; 3 uses
  %i.ax = add nsw i32 %1, -1                      ; 2 uses
  %i.ay = add nuw i32 %i.ax, %.sroa.speculated52
  %i.az = udiv i32 %i.ay, %.sroa.speculated52     ; 2 uses
  %i.ba = add nuw i32 %i.ax, %i.az
  %i.bb = udiv i32 %i.ba, %i.az
  %i.bc = add nuw nsw i32 %i.bb, 15
  %i.bd = and i32 %i.bc, -16
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.bd, i32 %.sroa.speculated52)
  store i32 %.sroa.speculated, ptr %4, align 4, !tbaa !66
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

declare void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL37conv3x3s1_winograd63_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !66     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !66
  %i.h = load i32, ptr %0, align 4, !tbaa !66     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !66
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !66
  %i.k = load i32, ptr %i.a, align 4, !tbaa !66   ; 2 uses
  %.not99 = icmp sgt i32 %i.k, %i.j
  br i1 %.not99, label %._crit_edge, label %.lr.ph101

.lr.ph101:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph101, %_ZN4ncnn3MatD2Ev.exit
  %.033100 = phi i32 [ %i.k, %.lr.ph101 ], [ %i.am, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.aa = load i32, ptr %3, align 4, !tbaa !66
  %i.ab = mul nsw i32 %i.aa, %.033100             ; 3 uses
  %i.ac = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %_ZN4ncnn3Mat7channelEi.exit49 unwind label %bb.e

_ZN4ncnn3Mat7channelEi.exit49:                    ; preds = %bb.c
  %i.ad = load ptr, ptr %4, align 8, !tbaa !22, !noalias !656
  %i.ae = load i64, ptr %i.l, align 8, !tbaa !23, !noalias !656
  %i.af = sext i32 %i.ac to i64
  %i.ag = mul i64 %i.ae, %i.af
  %i.ah = load i64, ptr %i.m, align 8, !tbaa !64, !noalias !656
  %i.ai = mul i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %5, align 4, !tbaa !66    ; 2 uses
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph.preheader, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph.preheader:                                 ; preds = %_ZN4ncnn3Mat7channelEi.exit49
  %.pre = load i32, ptr %6, align 4, !tbaa !66
  br label %.lr.ph

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnnL42conv3x3s1_winograd63_transform_kernel_tileERKNS_3MatERS0_iiiii.exit, %_ZN4ncnn3Mat7channelEi.exit49
  %i.am = add nsw i32 %.033100, 1
  %i.an = load i32, ptr %i.b, align 4, !tbaa !66
  %.not.not = icmp slt i32 %.033100, %i.an
  br i1 %.not.not, label %bb.c, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4ncnnL42conv3x3s1_winograd63_transform_kernel_tileERKNS_3MatERS0_iiiii.exit
  %i.ao = phi i32 [ %i.aeb, %_ZN4ncnnL42conv3x3s1_winograd63_transform_kernel_tileERKNS_3MatERS0_iiiii.exit ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %i.ap = phi i32 [ %i.aed, %_ZN4ncnnL42conv3x3s1_winograd63_transform_kernel_tileERKNS_3MatERS0_iiiii.exit ], [ %i.ak, %.lr.ph.preheader ]
  %.098 = phi i32 [ %i.aec, %_ZN4ncnnL42conv3x3s1_winograd63_transform_kernel_tileERKNS_3MatERS0_iiiii.exit ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.aq = load i32, ptr %7, align 4, !tbaa !66
  %i.ar = sub nsw i32 %i.aq, %i.ab
  %i.as = load i32, ptr %3, align 4, !tbaa !66    ; 2 uses
  %.sroa.speculated66 = call i32 @llvm.smin.i32(i32 %i.as, i32 %i.ar) ; 3 uses
  %i.at = sub i32 %i.ap, %.098
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ao, i32 %i.at) ; 5 uses
  %.val = load ptr, ptr %8, align 8               ; 3 uses
  %i.au = icmp sgt i32 %.sroa.speculated66, 0
  br i1 %i.au, label %.preheader12.lr.ph.i, label %_ZN4ncnnL42conv3x3s1_winograd63_transform_kernel_tileERKNS_3MatERS0_iiiii.exit

.preheader12.lr.ph.i:                             ; preds = %.lr.ph
  %i.av = load i32, ptr %9, align 4, !tbaa !66
  %i.aw = icmp sgt i32 %.sroa.speculated, 0
  %i.ax = mul i32 %i.av, 9
  br i1 %i.aw, label %.preheader12.preheader.i, label %_ZN4ncnnL42conv3x3s1_winograd63_transform_kernel_tileERKNS_3MatERS0_iiiii.exit

.preheader12.preheader.i:                         ; preds = %.preheader12.lr.ph.i
  %i.ay = sext i32 %.098 to i64                   ; 5 uses
  %wide.trip.count28.i = zext nneg i32 %.sroa.speculated66 to i64
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated to i64 ; 8 uses
  %i.az = mul nsw i64 %i.ay, 36
  %i.ba = add nsw i64 %i.ay, %wide.trip.count.i
  %i.bb = mul nsw i64 %i.ba, 36
  %scevgep = getelementptr i8, ptr %.val, i64 %i.bb
  %scevgep110 = getelementptr i8, ptr %.val, i64 %i.az
  %i.bc = shl nuw nsw i64 %wide.trip.count.i, 8
  %min.iters.check = icmp ult i32 %.sroa.speculated, 4
  %min.iters.check111 = icmp ult i32 %.sroa.speculated, 16
  %i.bd = and i64 %wide.trip.count.i, 12
  %n.vec = and i64 %wide.trip.count.i, 2147483632 ; 5 uses
  %i.be = shl nuw nsw i64 %n.vec, 8
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %i.ay, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %min.epilog.iters.check = icmp eq i64 %i.bd, 0
  %n.vec191 = and i64 %wide.trip.count.i, 2147483644 ; 4 uses
  %i.bf = shl nuw nsw i64 %n.vec191, 8
  %broadcast.splatinsert192 = insertelement <4 x i64> poison, i64 %i.ay, i64 0
  %broadcast.splat193 = shufflevector <4 x i64> %broadcast.splatinsert192, <4 x i64> poison, <4 x i32> zeroinitializer
  %cmp.n284 = icmp eq i64 %n.vec191, %wide.trip.count.i
  br label %iter.check
end_hunk_1
begin_hunk_2_@_ZN4ncnnL18convolution_packedERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.atq = load float, ptr %i.atp, align 4, !tbaa !41
  %i.atr = insertelement <16 x float> poison, float %i.atq, i64 0
  %i.ats = shufflevector <16 x float> %i.atr, <16 x float> poison, <16 x i32> zeroinitializer
  %i.att = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aom, <16 x float> nofpclass(nan inf) %i.ato, <16 x float> nofpclass(nan inf) %i.ats)
  %i.atu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.att, <16 x float> zeroinitializer, i32 4)
  %i.atv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.atu, <16 x float> splat (float 1.000000e+00), i32 4)
  %i.atw = fmul fast <16 x float> %i.atv, %i.aom
  br label %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit

_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit:  ; preds = %bb.t, %.noexc842, %.noexc841, %bb.s, %.noexc840, %bb.r, %._crit_edge1170
  %.0.i = phi nsz <16 x float> [ %i.atw, %bb.t ], [ %i.aoo, %bb.r ], [ %i.aov, %.noexc840 ], [ %i.apf, %bb.s ], [ %i.aqf, %.noexc841 ], [ %i.atk, %.noexc842 ], [ %i.aom, %._crit_edge1170 ] ; 23 uses
  br i1 %i.aq, label %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit.split, label %.thread963

_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit.split: ; preds = %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit
  switch i32 %i.ar, label %.thread963 [
    i32 4, label %.thread
    i32 3, label %bb.u
    i32 2, label %bb.v
    i32 0, label %bb.w
  ]

.thread:                                          ; preds = %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit.split
  store <16 x float> %.0.i, ptr %.11180, align 64, !tbaa !85
  %i.atx = getelementptr inbounds nuw i8, ptr %.11180, i64 64
  br label %.thread963

bb.u:                                             ; preds = %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit.split
  %i.aty = shufflevector <16 x float> %.0.i, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x float> %i.aty, ptr %.11180, align 32, !tbaa !85
  %i.atz = load i64, ptr %14, align 8, !tbaa !96
  %i.aua = getelementptr inbounds nuw [4 x i8], ptr %.11180, i64 %i.atz
  %i.aub = shufflevector <16 x float> %.0.i, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.aub, ptr %i.aua, align 32, !tbaa !85
  %i.auc = getelementptr inbounds nuw i8, ptr %.11180, i64 32
  br label %.thread963

bb.v:                                             ; preds = %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit.split
  %i.aud = shufflevector <16 x float> %.0.i, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.aud, ptr %.11180, align 16, !tbaa !85
  %i.aue = load i64, ptr %14, align 8, !tbaa !96
  %i.auf = getelementptr inbounds nuw [4 x i8], ptr %.11180, i64 %i.aue
  %i.aug = shufflevector <16 x float> %.0.i, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x float> %i.aug, ptr %i.auf, align 16, !tbaa !85
  %i.auh = load i64, ptr %14, align 8, !tbaa !96
  %.idx = shl i64 %i.auh, 3
  %i.aui = getelementptr inbounds nuw i8, ptr %.11180, i64 %.idx
  %i.auj = shufflevector <16 x float> %.0.i, <16 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  store <4 x float> %i.auj, ptr %i.aui, align 16, !tbaa !85
  %i.auk = load i64, ptr %14, align 8, !tbaa !96
  %.idx747 = mul i64 %i.auk, 12
  %i.aul = getelementptr inbounds nuw i8, ptr %.11180, i64 %.idx747
  %i.aum = shufflevector <16 x float> %.0.i, <16 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x float> %i.aum, ptr %i.aul, align 16, !tbaa !85
  %i.aun = getelementptr inbounds nuw i8, ptr %.11180, i64 16
  br label %.thread963

bb.w:                                             ; preds = %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit.split
  %.sroa.0.0.vec.extract = extractelement <16 x float> %.0.i, i64 0
  store float %.sroa.0.0.vec.extract, ptr %.11180, align 4, !tbaa !41
  %.sroa.0.4.vec.extract = extractelement <16 x float> %.0.i, i64 1
  %i.auo = load i64, ptr %14, align 8, !tbaa !96  ; 15 uses
  %i.aup = getelementptr inbounds nuw [4 x i8], ptr %.11180, i64 %i.auo
  store float %.sroa.0.4.vec.extract, ptr %i.aup, align 4, !tbaa !41
  %.sroa.0.8.vec.extract = extractelement <16 x float> %.0.i, i64 2
  %.idx748 = shl i64 %i.auo, 3
  %i.auq = getelementptr inbounds nuw i8, ptr %.11180, i64 %.idx748
  store float %.sroa.0.8.vec.extract, ptr %i.auq, align 4, !tbaa !41
  %.sroa.0.12.vec.extract = extractelement <16 x float> %.0.i, i64 3
  %.idx749 = mul i64 %i.auo, 12
  %i.aur = getelementptr inbounds nuw i8, ptr %.11180, i64 %.idx749
  store float %.sroa.0.12.vec.extract, ptr %i.aur, align 4, !tbaa !41
  %.sroa.0.16.vec.extract = extractelement <16 x float> %.0.i, i64 4
  %.idx750 = shl i64 %i.auo, 4
  %i.aus = getelementptr inbounds nuw i8, ptr %.11180, i64 %.idx750
  store float %.sroa.0.16.vec.extract, ptr %i.aus, align 4, !tbaa !41
  %.sroa.0.20.vec.extract = extractelement <16 x float> %.0.i, i64 5
  %.idx751 = mul i64 %i.auo, 20
  %i.aut = getelementptr inbounds nuw i8, ptr %.11180, i64 %.idx751
  store float %.sroa.0.20.vec.extract, ptr %i.aut, align 4, !tbaa !41
  %.sroa.0.24.vec.extract = extractelement <16 x float> %.0.i, i64 6
  %.idx752 = mul i64 %i.auo, 24
  %i.auu = getelementptr inbounds nuw i8, ptr %.11180, i64 %.idx752
  store float %.sroa.0.24.vec.extract, ptr %i.auu, align 4, !tbaa !41
  %.sroa.0.28.vec.extract = extractelement <16 x float> %.0.i, i64 7
  %.idx753 = mul i64 %i.auo, 28
  %i.auv = getelementptr inbounds nuw i8, ptr %.11180, i64 %.idx753
  store float %.sroa.0.28.vec.extract, ptr %i.auv, align 4, !tbaa !41
  %.sroa.0.32.vec.extract = extractelement <16 x float> %.0.i, i64 8
  %.idx754 = shl i64 %i.auo, 5
  %i.auw = getelementptr inbounds nuw i8, ptr %.11180, i64 %.idx754
  store float %.sroa.0.32.vec.extract, ptr %i.auw, align 4, !tbaa !41
  %.sroa.0.36.vec.extract = extractelement <16 x float> %.0.i, i64 9
  %.idx755 = mul i64 %i.auo, 36
  %i.aux = getelementptr inbounds nuw i8, ptr %.11180, i64 %.idx755
  store float %.sroa.0.36.vec.extract, ptr %i.aux, align 4, !tbaa !41
  %.sroa.0.40.vec.extract = extractelement <16 x float> %.0.i, i64 10
  %.idx756 = mul i64 %i.auo, 40
  %i.auy = getelementptr inbounds nuw i8, ptr %.11180, i64 %.idx756
  store float %.sroa.0.40.vec.extract, ptr %i.auy, align 4, !tbaa !41
  %.sroa.0.44.vec.extract = extractelement <16 x float> %.0.i, i64 11
  %.idx757 = mul i64 %i.auo, 44
  %i.auz = getelementptr inbounds nuw i8, ptr %.11180, i64 %.idx757
  store float %.sroa.0.44.vec.extract, ptr %i.auz, align 4, !tbaa !41
  %.sroa.0.48.vec.extract = extractelement <16 x float> %.0.i, i64 12
  %.idx758 = mul i64 %i.auo, 48
  %i.ava = getelementptr inbounds nuw i8, ptr %.11180, i64 %.idx758
  store float %.sroa.0.48.vec.extract, ptr %i.ava, align 4, !tbaa !41
  %.sroa.0.52.vec.extract = extractelement <16 x float> %.0.i, i64 13
  %.idx759 = mul i64 %i.auo, 52
  %i.avb = getelementptr inbounds nuw i8, ptr %.11180, i64 %.idx759
  store float %.sroa.0.52.vec.extract, ptr %i.avb, align 4, !tbaa !41
  %.sroa.0.56.vec.extract = extractelement <16 x float> %.0.i, i64 14
  %.idx760 = mul i64 %i.auo, 56
  %i.avc = getelementptr inbounds nuw i8, ptr %.11180, i64 %.idx760
  store float %.sroa.0.56.vec.extract, ptr %i.avc, align 4, !tbaa !41
  %.sroa.0.60.vec.extract = extractelement <16 x float> %.0.i, i64 15
  %.idx761 = mul i64 %i.auo, 60
  %i.avd = getelementptr inbounds nuw i8, ptr %.11180, i64 %.idx761
  store float %.sroa.0.60.vec.extract, ptr %i.avd, align 4, !tbaa !41
  %i.ave = getelementptr inbounds nuw i8, ptr %.11180, i64 4
  br label %.thread963

.thread963:                                       ; preds = %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit, %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit.split, %bb.u, %.thread, %bb.v, %bb.w
  %.5 = phi ptr [ %i.ave, %bb.w ], [ %.11180, %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit.split ], [ %i.aun, %bb.v ], [ %i.atx, %.thread ], [ %i.auc, %bb.u ], [ %.11180, %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit ] ; 2 uses
  %i.avf = add nuw nsw i32 %.06351179, 1          ; 2 uses
  %exitcond1324.not = icmp eq i32 %i.avf, %i.af
  br i1 %exitcond1324.not, label %._crit_edge, label %bb.c, !llvm.loop !1606

._crit_edge1188:                                  ; preds = %._crit_edge1185.split, %_ZN4ncnn3MatD2Ev.exit801.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge1188, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #24

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #25

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float>, <16 x float>, i32 immarg) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float>, <16 x float>, i32 immarg) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float>, i32 immarg, <16 x float>, i16, i32 immarg) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float>, <16 x i32>, i16, i32 immarg) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.max.ps.256(<8 x float>, <8 x float>) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.min.ps.256(<8 x float>, <8 x float>) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.round.ps.256(<8 x float>, i32 immarg) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float>) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.tanh.f32(float) #27

declare void @_ZN4ncnn7flattenERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare void @_ZN4ncnn9ParamDict3setEiRKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %4) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
  %6 = alloca i32, align 4                        ; 2 uses
  %7 = alloca i32, align 4                        ; 5 uses
  %8 = alloca i32, align 4                        ; 5 uses
  %9 = alloca i32, align 4                        ; 5 uses
  %10 = alloca i32, align 4                       ; 5 uses
  %11 = alloca i32, align 4                       ; 5 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %13 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 %2, ptr %6, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  store i32 %3, ptr %7, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  store i32 %2, ptr %8, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %15 = load i32, ptr %14, align 4, !tbaa !46     ; 2 uses
  %16 = tail call noundef i32 @_ZN4ncnn25get_cpu_level2_cache_sizeEv()
  %17 = ashr i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = icmp eq i32 %15, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = tail call noundef i32 @_ZN4ncnn26get_physical_big_cpu_countEv()
  br label %22

22:                                               ; preds = %20, %5
  %.0.i = phi i32 [ %21, %20 ], [ %15, %5 ]       ; 3 uses
  %23 = uitofp fast i64 %18 to float              ; 2 uses
  %24 = fmul fast float %23, f0x3EAAAAAB
  %25 = tail call fast noundef nofpclass(nan inf) float @llvm.sqrt.f32(float nofpclass(nan inf) %24)
  %26 = fptosi float %25 to i32
  %27 = and i32 %26, 2147483632
  %.sroa.speculated86.i = tail call i32 @llvm.umax.i32(i32 %27, i32 16)
  %28 = tail call noundef i32 @_ZN4ncnn22get_physical_cpu_countEv()
  %.sroa.speculated82.i = tail call i32 @llvm.smin.i32(i32 %28, i32 %.0.i)
  %29 = mul nsw i32 %.sroa.speculated86.i, %.sroa.speculated82.i ; 3 uses
  %30 = add i32 %3, -1                            ; 2 uses
  %31 = add i32 %29, %30
  %32 = sdiv i32 %31, %29                         ; 2 uses
  %33 = add i32 %32, %30
  %34 = sdiv i32 %33, %32
  %35 = add nsw i32 %34, 15
  %36 = sdiv i32 %35, 16
  %37 = shl nsw i32 %36, 4
  %.sroa.speculated78.i = tail call i32 @llvm.smin.i32(i32 %37, i32 %29) ; 3 uses
  %38 = icmp sgt i32 %.0.i, 1
  br i1 %38, label %39, label %_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiRiS0_S0_i.exit

39:                                               ; preds = %22
  %40 = sdiv i32 %.sroa.speculated78.i, %.0.i
  %.sroa.speculated68.i = tail call i32 @llvm.smax.i32(i32 %40, i32 1)
  %41 = add nuw nsw i32 %.sroa.speculated68.i, 15
  %42 = and i32 %41, 2147483632
  %.sroa.speculated74.i = tail call i32 @llvm.smin.i32(i32 %42, i32 %.sroa.speculated78.i)
  br label %_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiRiS0_S0_i.exit

_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiRiS0_S0_i.exit: ; preds = %22, %39
  %storemerge.i = phi i32 [ %.sroa.speculated74.i, %39 ], [ %.sroa.speculated78.i, %22 ] ; 6 uses
  store i32 %storemerge.i, ptr %9, align 4, !tbaa !66
  %43 = tail call fast noundef nofpclass(nan inf) float @llvm.sqrt.f32(float nofpclass(nan inf) %23)
  %44 = sitofp fast i32 %storemerge.i to float
  %45 = fsub fast float %43, %44
  %46 = fptosi float %45 to i32
  %47 = sdiv i32 %46, 16
  %48 = shl nsw i32 %47, 4
  %.sroa.speculated62.i = tail call i32 @llvm.smax.i32(i32 %48, i32 16) ; 3 uses
  %49 = add i32 %2, -1                            ; 2 uses
  %50 = add i32 %.sroa.speculated62.i, %49
  %51 = sdiv i32 %50, %.sroa.speculated62.i       ; 2 uses
  %52 = add i32 %51, %49
  %53 = sdiv i32 %52, %51
  %54 = add nsw i32 %53, 15
  %55 = sdiv i32 %54, 16
  %56 = shl nsw i32 %55, 4
  %.sroa.speculated58.i = tail call i32 @llvm.smin.i32(i32 %56, i32 %.sroa.speculated62.i) ; 5 uses
  store i32 %.sroa.speculated58.i, ptr %10, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %i.a = add i32 %storemerge.i, -1
  %i.b = add i32 %i.a, %3
  %i.c = sdiv i32 %i.b, %storemerge.i             ; 2 uses
  store i32 %i.c, ptr %11, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.d = mul nsw i32 %storemerge.i, 36
  %i.e = mul nsw i32 %i.d, %.sroa.speculated58.i
  %i.f = load i32, ptr %14, align 4, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %12, i64 64
  store i64 0, ptr %i.i, align 8, !tbaa !23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %12, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.h, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %12, i32 noundef %i.e, i32 noundef 1, i32 noundef %i.f, i64 noundef 4, ptr noundef null)
  %i.j = mul nsw i32 %storemerge.i, %.sroa.speculated58.i
  %57 = add nsw i32 %.sroa.speculated58.i, -1
  %58 = add i32 %57, %2
  %59 = sdiv i32 %58, %.sroa.speculated58.i
  invoke void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.j, i32 noundef 36, i32 noundef %59, i32 noundef %i.c, i64 noundef 4, ptr noundef null)
          to label %bb.a unwind label %bb.h

bb.a:                                             ; preds = %_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiRiS0_S0_i.exit
  %i.k = load i32, ptr %14, align 4, !tbaa !46
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %13, i32 %i.k)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined, ptr nonnull %11, ptr nonnull %9, ptr nonnull %12, ptr nonnull %8, ptr nonnull %10, ptr nonnull %7, ptr nonnull %0, ptr nonnull %6, ptr nonnull %1)
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !20   ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = atomicrmw add ptr %i.l, i32 -1 acq_rel, align 4
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.c, label %_ZN4ncnn3MatD2Ev.exit8

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !21   ; 3 uses
  %.not3.i = icmp eq ptr %i.o, null
  %i.p = load ptr, ptr %12, align 8, !tbaa !22    ; 3 uses
  br i1 %.not3.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef %i.p)
          to label %_ZN4ncnn3MatD2Ev.exit8 unwind label %bb.g, !inline_history !0

bb.e:                                             ; preds = %bb.c
  %.not.i14 = icmp eq ptr %i.p, null
  br i1 %.not.i14, label %_ZN4ncnn3MatD2Ev.exit8, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef nonnull %i.p) #12
  br label %_ZN4ncnn3MatD2Ev.exit8

bb.g:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #36
  unreachable

_ZN4ncnn3MatD2Ev.exit8:                           ; preds = %bb.b, %bb.a, %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  ret void

bb.h:                                             ; preds = %_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiRiS0_S0_i.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !20   ; 2 uses
  %.not.i9 = icmp eq ptr %i.w, null
  br i1 %.not.i9, label %_ZN4ncnn3MatD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = atomicrmw add ptr %i.w, i32 -1 acq_rel, align 4
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.j, label %_ZN4ncnn3MatD2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !21   ; 3 uses
  %.not3.i10 = icmp eq ptr %i.z, null
  %i.aa = load ptr, ptr %12, align 8, !tbaa !22   ; 3 uses
  br i1 %.not3.i10, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  invoke void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef %i.aa)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.n, !inline_history !0

bb.l:                                             ; preds = %bb.j
  %.not.i13 = icmp eq ptr %i.aa, null
  br i1 %.not.i13, label %_ZN4ncnn3MatD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef nonnull %i.aa) #12
  br label %_ZN4ncnn3MatD2Ev.exit

bb.n:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #36
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.i, %bb.h, %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  resume { ptr, i32 } %i.v
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL42conv3x3s1_winograd23_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %4) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
  %6 = alloca i32, align 4                        ; 2 uses
  %7 = alloca i32, align 4                        ; 5 uses
  %8 = alloca i32, align 4                        ; 5 uses
  %9 = alloca i32, align 4                        ; 5 uses
  %10 = alloca i32, align 4                       ; 5 uses
  %11 = alloca i32, align 4                       ; 5 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %13 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 %2, ptr %6, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  store i32 %3, ptr %7, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  store i32 %2, ptr %8, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %15 = load i32, ptr %14, align 4, !tbaa !46     ; 2 uses
  %16 = tail call noundef i32 @_ZN4ncnn25get_cpu_level2_cache_sizeEv()
  %17 = ashr i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = icmp eq i32 %15, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = tail call noundef i32 @_ZN4ncnn26get_physical_big_cpu_countEv()
  br label %22

22:                                               ; preds = %20, %5
  %.0.i = phi i32 [ %21, %20 ], [ %15, %5 ]       ; 3 uses
  %23 = uitofp fast i64 %18 to float              ; 2 uses
  %24 = fmul fast float %23, f0x3EAAAAAB
  %25 = tail call fast noundef nofpclass(nan inf) float @llvm.sqrt.f32(float nofpclass(nan inf) %24)
  %26 = fptosi float %25 to i32
  %27 = and i32 %26, 2147483632
  %.sroa.speculated86.i = tail call i32 @llvm.umax.i32(i32 %27, i32 16)
  %28 = tail call noundef i32 @_ZN4ncnn22get_physical_cpu_countEv()
  %.sroa.speculated82.i = tail call i32 @llvm.smin.i32(i32 %28, i32 %.0.i)
  %29 = mul nsw i32 %.sroa.speculated86.i, %.sroa.speculated82.i ; 3 uses
  %30 = add i32 %3, -1                            ; 2 uses
  %31 = add i32 %29, %30
  %32 = sdiv i32 %31, %29                         ; 2 uses
  %33 = add i32 %32, %30
  %34 = sdiv i32 %33, %32
  %35 = add nsw i32 %34, 15
  %36 = sdiv i32 %35, 16
  %37 = shl nsw i32 %36, 4
  %.sroa.speculated78.i = tail call i32 @llvm.smin.i32(i32 %37, i32 %29) ; 3 uses
  %38 = icmp sgt i32 %.0.i, 1
  br i1 %38, label %39, label %_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiRiS0_S0_i.exit

39:                                               ; preds = %22
  %40 = sdiv i32 %.sroa.speculated78.i, %.0.i
  %.sroa.speculated68.i = tail call i32 @llvm.smax.i32(i32 %40, i32 1)
  %41 = add nuw nsw i32 %.sroa.speculated68.i, 15
  %42 = and i32 %41, 2147483632
  %.sroa.speculated74.i = tail call i32 @llvm.smin.i32(i32 %42, i32 %.sroa.speculated78.i)
  br label %_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiRiS0_S0_i.exit

_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiRiS0_S0_i.exit: ; preds = %22, %39
  %storemerge.i = phi i32 [ %.sroa.speculated74.i, %39 ], [ %.sroa.speculated78.i, %22 ] ; 6 uses
  store i32 %storemerge.i, ptr %9, align 4, !tbaa !66
  %43 = tail call fast noundef nofpclass(nan inf) float @llvm.sqrt.f32(float nofpclass(nan inf) %23)
  %44 = sitofp fast i32 %storemerge.i to float
  %45 = fsub fast float %43, %44
  %46 = fptosi float %45 to i32
  %47 = sdiv i32 %46, 16
  %48 = shl nsw i32 %47, 4
  %.sroa.speculated62.i = tail call i32 @llvm.smax.i32(i32 %48, i32 16) ; 3 uses
  %49 = add i32 %2, -1                            ; 2 uses
  %50 = add i32 %.sroa.speculated62.i, %49
  %51 = sdiv i32 %50, %.sroa.speculated62.i       ; 2 uses
  %52 = add i32 %51, %49
  %53 = sdiv i32 %52, %51
  %54 = add nsw i32 %53, 15
  %55 = sdiv i32 %54, 16
  %56 = shl nsw i32 %55, 4
  %.sroa.speculated58.i = tail call i32 @llvm.smin.i32(i32 %56, i32 %.sroa.speculated62.i) ; 5 uses
  store i32 %.sroa.speculated58.i, ptr %10, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %i.a = add i32 %storemerge.i, -1
  %i.b = add i32 %i.a, %3
  %i.c = sdiv i32 %i.b, %storemerge.i             ; 2 uses
  store i32 %i.c, ptr %11, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.d = shl nsw i32 %storemerge.i, 4
  %i.e = mul nsw i32 %i.d, %.sroa.speculated58.i
  %i.f = load i32, ptr %14, align 4, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %12, i64 64
  store i64 0, ptr %i.i, align 8, !tbaa !23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %12, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.h, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %12, i32 noundef %i.e, i32 noundef 1, i32 noundef %i.f, i64 noundef 2, ptr noundef null)
  %i.j = mul nsw i32 %storemerge.i, %.sroa.speculated58.i
  %57 = add nsw i32 %.sroa.speculated58.i, -1
  %58 = add i32 %57, %2
  %59 = sdiv i32 %58, %.sroa.speculated58.i
  invoke void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.j, i32 noundef 16, i32 noundef %59, i32 noundef %i.c, i64 noundef 2, ptr noundef null)
          to label %bb.a unwind label %bb.h

bb.a:                                             ; preds = %_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiRiS0_S0_i.exit
  %i.k = load i32, ptr %14, align 4, !tbaa !46
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %13, i32 %i.k)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL42conv3x3s1_winograd23_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined, ptr nonnull %11, ptr nonnull %9, ptr nonnull %12, ptr nonnull %8, ptr nonnull %10, ptr nonnull %7, ptr nonnull %0, ptr nonnull %6, ptr nonnull %1)
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !20   ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = atomicrmw add ptr %i.l, i32 -1 acq_rel, align 4
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.c, label %_ZN4ncnn3MatD2Ev.exit8

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !21   ; 3 uses
  %.not3.i = icmp eq ptr %i.o, null
  %i.p = load ptr, ptr %12, align 8, !tbaa !22    ; 3 uses
  br i1 %.not3.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef %i.p)
          to label %_ZN4ncnn3MatD2Ev.exit8 unwind label %bb.g, !inline_history !0

bb.e:                                             ; preds = %bb.c
  %.not.i14 = icmp eq ptr %i.p, null
  br i1 %.not.i14, label %_ZN4ncnn3MatD2Ev.exit8, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef nonnull %i.p) #12
  br label %_ZN4ncnn3MatD2Ev.exit8

bb.g:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #36
  unreachable

_ZN4ncnn3MatD2Ev.exit8:                           ; preds = %bb.b, %bb.a, %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  ret void

bb.h:                                             ; preds = %_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiRiS0_S0_i.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !20   ; 2 uses
  %.not.i9 = icmp eq ptr %i.w, null
  br i1 %.not.i9, label %_ZN4ncnn3MatD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = atomicrmw add ptr %i.w, i32 -1 acq_rel, align 4
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.j, label %_ZN4ncnn3MatD2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !21   ; 3 uses
  %.not3.i10 = icmp eq ptr %i.z, null
  %i.aa = load ptr, ptr %12, align 8, !tbaa !22   ; 3 uses
  br i1 %.not3.i10, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  invoke void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef %i.aa)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.n, !inline_history !0

bb.l:                                             ; preds = %bb.j
  %.not.i13 = icmp eq ptr %i.aa, null
  br i1 %.not.i13, label %_ZN4ncnn3MatD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef nonnull %i.aa) #12
  br label %_ZN4ncnn3MatD2Ev.exit

bb.n:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #36
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.i, %bb.h, %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  resume { ptr, i32 } %i.v
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiRiS0_S0_i(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %5, i32 noundef %6) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn25get_cpu_level2_cache_sizeEv()
  %i.b = ashr i32 %i.a, 1
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = icmp eq i32 %6, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @_ZN4ncnn26get_physical_big_cpu_countEv()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.e, %bb.b ], [ %6, %bb.a ]    ; 3 uses
  %i.f = uitofp fast i64 %i.c to float            ; 2 uses
  %i.g = fmul fast float %i.f, f0x3EAAAAAB
  %i.h = tail call fast noundef nofpclass(nan inf) float @llvm.sqrt.f32(float nofpclass(nan inf) %i.g)
  %i.i = fptosi float %i.h to i32
  %7 = and i32 %i.i, 2147483632
  %.sroa.speculated86 = tail call i32 @llvm.umax.i32(i32 %7, i32 16)
  store i32 %.sroa.speculated86, ptr %3, align 4, !tbaa !66
  %i.j = tail call noundef i32 @_ZN4ncnn22get_physical_cpu_countEv()
  %.sroa.speculated82 = tail call i32 @llvm.smin.i32(i32 %i.j, i32 %.0)
  %i.k = load i32, ptr %3, align 4, !tbaa !66
  %i.l = mul nsw i32 %i.k, %.sroa.speculated82    ; 3 uses
  %i.m = add i32 %0, -1                           ; 2 uses
  %i.n = add i32 %i.m, %i.l
  %i.o = sdiv i32 %i.n, %i.l                      ; 2 uses
  %i.p = add i32 %i.m, %i.o
  %i.q = sdiv i32 %i.p, %i.o
  %i.r = add nsw i32 %i.q, 15
  %i.s = sdiv i32 %i.r, 16
  %i.t = shl nsw i32 %i.s, 4
  %.sroa.speculated78 = tail call i32 @llvm.smin.i32(i32 %i.t, i32 %i.l) ; 3 uses
  %i.u = icmp sgt i32 %.0, 1
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = sdiv i32 %.sroa.speculated78, %.0
  %.sroa.speculated68 = tail call i32 @llvm.smax.i32(i32 %i.v, i32 1)
  %i.w = add nuw nsw i32 %.sroa.speculated68, 15
  %i.x = and i32 %i.w, 2147483632
  %.sroa.speculated74 = tail call i32 @llvm.smin.i32(i32 %i.x, i32 %.sroa.speculated78)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge = phi i32 [ %.sroa.speculated74, %bb.d ], [ %.sroa.speculated78, %bb.c ] ; 2 uses
  store i32 %storemerge, ptr %3, align 4, !tbaa !66
  %i.y = tail call fast noundef nofpclass(nan inf) float @llvm.sqrt.f32(float nofpclass(nan inf) %i.f)
  %i.z = sitofp fast i32 %storemerge to float
  %i.aa = fsub fast float %i.y, %i.z
  %i.ab = fptosi float %i.aa to i32
  %i.ac = sdiv i32 %i.ab, 16
  %i.ad = shl nsw i32 %i.ac, 4
  %.sroa.speculated62 = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 16) ; 3 uses
  %i.ae = add i32 %2, -1                          ; 2 uses
  %i.af = add i32 %i.ae, %.sroa.speculated62
  %i.ag = sdiv i32 %i.af, %.sroa.speculated62     ; 2 uses
  %i.ah = add i32 %i.ae, %i.ag
  %i.ai = sdiv i32 %i.ah, %i.ag
  %i.aj = add nsw i32 %i.ai, 15
  %i.ak = sdiv i32 %i.aj, 16
  %i.al = shl nsw i32 %i.ak, 4
  %.sroa.speculated58 = tail call i32 @llvm.smin.i32(i32 %i.al, i32 %.sroa.speculated62) ; 3 uses
  store i32 %.sroa.speculated58, ptr %5, align 4, !tbaa !66
  %i.am = icmp sgt i32 %1, 0
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = load i32, ptr %3, align 4, !tbaa !66    ; 2 uses
  %i.ao = mul nsw i32 %i.an, %.sroa.speculated58
  %i.ap = sext i32 %i.ao to i64
  %i.aq = sub nsw i64 %i.c, %i.ap
  %i.ar = shl nsw i32 %i.an, 1
  %i.as = add nsw i32 %i.ar, %.sroa.speculated58
  %i.at = sext i32 %i.as to i64
  %i.au = udiv i64 %i.aq, %i.at
  %i.av = trunc i64 %i.au to i32
  %i.aw = sdiv i32 %i.av, 4
  %i.ax = shl nsw i32 %i.aw, 2
  %.sroa.speculated52 = tail call i32 @llvm.smax.i32(i32 %i.ax, i32 4) ; 3 uses
  %i.ay = add nsw i32 %1, -1                      ; 2 uses
  %i.az = add nuw i32 %i.ay, %.sroa.speculated52
  %i.ba = udiv i32 %i.az, %.sroa.speculated52     ; 2 uses
  %i.bb = add nuw i32 %i.ay, %i.ba
  %i.bc = udiv i32 %i.bb, %i.ba
  %i.bd = add nuw nsw i32 %i.bc, 3
  %i.be = and i32 %i.bd, -4
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.be, i32 %.sroa.speculated52)
  store i32 %.sroa.speculated, ptr %4, align 4, !tbaa !66
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !66     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !66
  %i.h = load i32, ptr %0, align 4, !tbaa !66     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !66
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !66
  %i.k = load i32, ptr %i.a, align 4, !tbaa !66   ; 2 uses
  %.not108 = icmp sgt i32 %i.k, %i.j
  br i1 %.not108, label %._crit_edge, label %.lr.ph110

.lr.ph110:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph110, %_ZN4ncnn3MatD2Ev.exit
  %.033109 = phi i32 [ %i.k, %.lr.ph110 ], [ %i.am, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.aa = load i32, ptr %3, align 4, !tbaa !66
  %i.ab = mul nsw i32 %i.aa, %.033109             ; 3 uses
  %i.ac = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %_ZN4ncnn3Mat7channelEi.exit49 unwind label %bb.e

_ZN4ncnn3Mat7channelEi.exit49:                    ; preds = %bb.c
  %i.ad = load ptr, ptr %4, align 8, !tbaa !22, !noalias !1628
  %i.ae = load i64, ptr %i.l, align 8, !tbaa !23, !noalias !1628
  %i.af = sext i32 %i.ac to i64
  %i.ag = mul i64 %i.ae, %i.af
  %i.ah = load i64, ptr %i.m, align 8, !tbaa !64, !noalias !1628
  %i.ai = mul i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %5, align 4, !tbaa !66    ; 2 uses
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph.preheader, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph.preheader:                                 ; preds = %_ZN4ncnn3Mat7channelEi.exit49
  %.pre = load i32, ptr %6, align 4, !tbaa !66
  br label %.lr.ph

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnnL47conv3x3s1_winograd43_transform_kernel_tile_int8ERKNS_3MatERS0_iiiii.exit, %_ZN4ncnn3Mat7channelEi.exit49
  %i.am = add nsw i32 %.033109, 1
  %i.an = load i32, ptr %i.b, align 4, !tbaa !66
  %.not.not = icmp slt i32 %.033109, %i.an
  br i1 %.not.not, label %bb.c, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4ncnnL47conv3x3s1_winograd43_transform_kernel_tile_int8ERKNS_3MatERS0_iiiii.exit
  %i.ao = phi i32 [ %i.dmm, %_ZN4ncnnL47conv3x3s1_winograd43_transform_kernel_tile_int8ERKNS_3MatERS0_iiiii.exit ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %i.ap = phi i32 [ %i.dmo, %_ZN4ncnnL47conv3x3s1_winograd43_transform_kernel_tile_int8ERKNS_3MatERS0_iiiii.exit ], [ %i.ak, %.lr.ph.preheader ]
  %.0107 = phi i32 [ %i.dmn, %_ZN4ncnnL47conv3x3s1_winograd43_transform_kernel_tile_int8ERKNS_3MatERS0_iiiii.exit ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.aq = load i32, ptr %7, align 4, !tbaa !66
  %i.ar = sub nsw i32 %i.aq, %i.ab
  %i.as = load i32, ptr %3, align 4, !tbaa !66    ; 2 uses
  %.sroa.speculated66 = call i32 @llvm.smin.i32(i32 %i.as, i32 %i.ar) ; 3 uses
  %i.at = sub i32 %i.ap, %.0107
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ao, i32 %i.at) ; 5 uses
  %.val = load ptr, ptr %8, align 8               ; 3 uses
  %i.au = icmp sgt i32 %.sroa.speculated66, 0
  br i1 %i.au, label %.preheader11.lr.ph.i, label %_ZN4ncnnL47conv3x3s1_winograd43_transform_kernel_tile_int8ERKNS_3MatERS0_iiiii.exit

.preheader11.lr.ph.i:                             ; preds = %.lr.ph
  %i.av = load i32, ptr %9, align 4, !tbaa !66
  %i.aw = icmp sgt i32 %.sroa.speculated, 0
  %i.ax = mul i32 %i.av, 9
  br i1 %i.aw, label %.preheader11.preheader.i, label %_ZN4ncnnL47conv3x3s1_winograd43_transform_kernel_tile_int8ERKNS_3MatERS0_iiiii.exit

.preheader11.preheader.i:                         ; preds = %.preheader11.lr.ph.i
  %i.ay = sext i32 %.0107 to i64                  ; 5 uses
  %wide.trip.count27.i = zext nneg i32 %.sroa.speculated66 to i64
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated to i64 ; 8 uses
  %i.az = mul nsw i64 %i.ay, 9
  %i.ba = add nsw i64 %i.ay, %wide.trip.count.i
  %i.bb = mul nsw i64 %i.ba, 9
  %scevgep = getelementptr i8, ptr %.val, i64 %i.bb
  %scevgep119 = getelementptr i8, ptr %.val, i64 %i.az
  %i.bc = mul nuw nsw i64 %wide.trip.count.i, 72
  %min.iters.check = icmp ult i32 %.sroa.speculated, 8
  %min.iters.check120 = icmp ult i32 %.sroa.speculated, 16
  %i.bd = and i64 %wide.trip.count.i, 8
  %n.vec = and i64 %wide.trip.count.i, 2147483632 ; 5 uses
  %i.be = mul nuw nsw i64 %n.vec, 72
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %i.ay, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %min.epilog.iters.check.not.not = icmp eq i64 %i.bd, 0
  %n.vec136 = and i64 %wide.trip.count.i, 2147483640 ; 4 uses
  %i.bf = mul nuw nsw i64 %n.vec136, 72
  %broadcast.splatinsert137 = insertelement <8 x i64> poison, i64 %i.ay, i64 0
  %broadcast.splat138 = shufflevector <8 x i64> %broadcast.splatinsert137, <8 x i64> poison, <8 x i32> zeroinitializer
  %cmp.n153 = icmp eq i64 %n.vec136, %wide.trip.count.i
  br label %iter.check

end_hunk_2
begin_hunk_3_@_ZN4ncnnL24convolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.bvf = fmul fast <16 x float> %i.bve, %i.bpv
  br label %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit

_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit:  ; preds = %bb.u, %.noexc780, %.noexc779, %bb.t, %.noexc778, %bb.s, %._crit_edge1373
  %.0.i = phi nsz <16 x float> [ %i.bvf, %bb.u ], [ %i.bpx, %bb.s ], [ %i.bqe, %.noexc778 ], [ %i.bqo, %bb.t ], [ %i.bro, %.noexc779 ], [ %i.but, %.noexc780 ], [ %i.bpv, %._crit_edge1373 ] ; 8 uses
  br i1 %i.aq, label %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit.split, label %.thread1166

_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit.split: ; preds = %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit
  switch i32 %i.ar, label %.thread1166 [
    i32 4, label %.thread
    i32 3, label %bb.v
    i32 2, label %bb.w
    i32 0, label %bb.x
  ]

.thread:                                          ; preds = %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit.split
  %i.bvg = bitcast <16 x float> %.0.i to <16 x i32>
  %i.bvh = lshr <16 x i32> %i.bvg, splat (i32 16) ; 2 uses
  %i.bvi = shufflevector <16 x i32> %i.bvh, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bvj = shufflevector <16 x i32> %i.bvh, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bvk = call <16 x i16> @llvm.x86.avx2.packusdw(<8 x i32> %i.bvi, <8 x i32> %i.bvj)
  %i.bvl = bitcast <16 x i16> %i.bvk to <4 x i64>
  %i.bvm = shufflevector <4 x i64> %i.bvl, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.bvm, ptr %.11383, align 1, !tbaa !85
  %i.bvn = getelementptr inbounds nuw i8, ptr %.11383, i64 32
  br label %.thread1166

bb.v:                                             ; preds = %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit.split
  %i.bvo = bitcast <16 x float> %.0.i to <16 x i32>
  %i.bvp = shufflevector <16 x i32> %i.bvo, <16 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bvq = lshr <8 x i32> %i.bvp, splat (i32 16)  ; 2 uses
  %i.bvr = shufflevector <8 x i32> %i.bvq, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bvs = shufflevector <8 x i32> %i.bvq, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bvt = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bvr, <4 x i32> %i.bvs)
  store <8 x i16> %i.bvt, ptr %.11383, align 1, !tbaa !85
  %i.bvu = load i64, ptr %14, align 8, !tbaa !96
  %i.bvv = bitcast <16 x float> %.0.i to <16 x i32>
  %i.bvw = shufflevector <16 x i32> %i.bvv, <16 x i32> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bvx = lshr <8 x i32> %i.bvw, splat (i32 16)  ; 2 uses
  %i.bvy = shufflevector <8 x i32> %i.bvx, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bvz = shufflevector <8 x i32> %i.bvx, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bwa = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bvy, <4 x i32> %i.bvz)
  %i.bwb = getelementptr inbounds nuw [2 x i8], ptr %.11383, i64 %i.bvu
  store <8 x i16> %i.bwa, ptr %i.bwb, align 1, !tbaa !85
  %i.bwc = getelementptr inbounds nuw i8, ptr %.11383, i64 16
  br label %.thread1166

bb.w:                                             ; preds = %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit.split
  %i.bwd = bitcast <16 x float> %.0.i to <16 x i32>
  %i.bwe = shufflevector <16 x i32> %i.bwd, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bwf = lshr <4 x i32> %i.bwe, splat (i32 16)
  %i.bwg = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bwf, <4 x i32> poison)
  %i.bwh = bitcast <8 x i16> %i.bwg to <2 x i64>
  %i.bwi = extractelement <2 x i64> %i.bwh, i64 0
  store i64 %i.bwi, ptr %.11383, align 1, !tbaa !85
  %i.bwj = load i64, ptr %14, align 8, !tbaa !96
  %i.bwk = getelementptr inbounds nuw [2 x i8], ptr %.11383, i64 %i.bwj
  %i.bwl = bitcast <16 x float> %.0.i to <16 x i32>
  %i.bwm = shufflevector <16 x i32> %i.bwl, <16 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bwn = lshr <4 x i32> %i.bwm, splat (i32 16)
  %i.bwo = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bwn, <4 x i32> poison)
  %i.bwp = bitcast <8 x i16> %i.bwo to <2 x i64>
  %i.bwq = extractelement <2 x i64> %i.bwp, i64 0
  store i64 %i.bwq, ptr %i.bwk, align 1, !tbaa !85
  %i.bwr = load i64, ptr %14, align 8, !tbaa !96
  %.idx = shl i64 %i.bwr, 2
  %i.bws = getelementptr inbounds nuw i8, ptr %.11383, i64 %.idx
  %i.bwt = bitcast <16 x float> %.0.i to <16 x i32>
  %i.bwu = shufflevector <16 x i32> %i.bwt, <16 x i32> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %i.bwv = lshr <4 x i32> %i.bwu, splat (i32 16)
  %i.bww = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bwv, <4 x i32> poison)
  %i.bwx = bitcast <8 x i16> %i.bww to <2 x i64>
  %i.bwy = extractelement <2 x i64> %i.bwx, i64 0
  store i64 %i.bwy, ptr %i.bws, align 1, !tbaa !85
  %i.bwz = load i64, ptr %14, align 8, !tbaa !96
  %.idx685 = mul i64 %i.bwz, 6
  %i.bxa = getelementptr inbounds nuw i8, ptr %.11383, i64 %.idx685
  %i.bxb = bitcast <16 x float> %.0.i to <16 x i32>
  %i.bxc = shufflevector <16 x i32> %i.bxb, <16 x i32> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %i.bxd = lshr <4 x i32> %i.bxc, splat (i32 16)
  %i.bxe = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bxd, <4 x i32> poison)
  %i.bxf = bitcast <8 x i16> %i.bxe to <2 x i64>
  %i.bxg = extractelement <2 x i64> %i.bxf, i64 0
  store i64 %i.bxg, ptr %i.bxa, align 1, !tbaa !85
  %i.bxh = getelementptr inbounds nuw i8, ptr %.11383, i64 8
  br label %.thread1166

bb.x:                                             ; preds = %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit.split
  %i.bxi = bitcast <16 x float> %.0.i to <32 x i16> ; 16 uses
  %i.bxj = extractelement <32 x i16> %i.bxi, i64 1
  store i16 %i.bxj, ptr %.11383, align 2, !tbaa !102
  %i.bxk = extractelement <32 x i16> %i.bxi, i64 3
  %i.bxl = load i64, ptr %14, align 8, !tbaa !96  ; 15 uses
  %i.bxm = getelementptr inbounds nuw [2 x i8], ptr %.11383, i64 %i.bxl
  store i16 %i.bxk, ptr %i.bxm, align 2, !tbaa !102
  %i.bxn = extractelement <32 x i16> %i.bxi, i64 5
  %.idx686 = shl i64 %i.bxl, 2
  %i.bxo = getelementptr inbounds nuw i8, ptr %.11383, i64 %.idx686
  store i16 %i.bxn, ptr %i.bxo, align 2, !tbaa !102
  %i.bxp = extractelement <32 x i16> %i.bxi, i64 7
  %.idx687 = mul i64 %i.bxl, 6
  %i.bxq = getelementptr inbounds nuw i8, ptr %.11383, i64 %.idx687
  store i16 %i.bxp, ptr %i.bxq, align 2, !tbaa !102
  %i.bxr = extractelement <32 x i16> %i.bxi, i64 9
  %.idx688 = shl i64 %i.bxl, 3
  %i.bxs = getelementptr inbounds nuw i8, ptr %.11383, i64 %.idx688
  store i16 %i.bxr, ptr %i.bxs, align 2, !tbaa !102
  %i.bxt = extractelement <32 x i16> %i.bxi, i64 11
  %.idx689 = mul i64 %i.bxl, 10
  %i.bxu = getelementptr inbounds nuw i8, ptr %.11383, i64 %.idx689
  store i16 %i.bxt, ptr %i.bxu, align 2, !tbaa !102
  %i.bxv = extractelement <32 x i16> %i.bxi, i64 13
  %.idx690 = mul i64 %i.bxl, 12
  %i.bxw = getelementptr inbounds nuw i8, ptr %.11383, i64 %.idx690
  store i16 %i.bxv, ptr %i.bxw, align 2, !tbaa !102
  %i.bxx = extractelement <32 x i16> %i.bxi, i64 15
  %.idx691 = mul i64 %i.bxl, 14
  %i.bxy = getelementptr inbounds nuw i8, ptr %.11383, i64 %.idx691
  store i16 %i.bxx, ptr %i.bxy, align 2, !tbaa !102
  %i.bxz = extractelement <32 x i16> %i.bxi, i64 17
  %.idx692 = shl i64 %i.bxl, 4
  %i.bya = getelementptr inbounds nuw i8, ptr %.11383, i64 %.idx692
  store i16 %i.bxz, ptr %i.bya, align 2, !tbaa !102
  %i.byb = extractelement <32 x i16> %i.bxi, i64 19
  %.idx693 = mul i64 %i.bxl, 18
  %i.byc = getelementptr inbounds nuw i8, ptr %.11383, i64 %.idx693
  store i16 %i.byb, ptr %i.byc, align 2, !tbaa !102
  %i.byd = extractelement <32 x i16> %i.bxi, i64 21
  %.idx694 = mul i64 %i.bxl, 20
  %i.bye = getelementptr inbounds nuw i8, ptr %.11383, i64 %.idx694
  store i16 %i.byd, ptr %i.bye, align 2, !tbaa !102
  %i.byf = extractelement <32 x i16> %i.bxi, i64 23
  %.idx695 = mul i64 %i.bxl, 22
  %i.byg = getelementptr inbounds nuw i8, ptr %.11383, i64 %.idx695
  store i16 %i.byf, ptr %i.byg, align 2, !tbaa !102
  %i.byh = extractelement <32 x i16> %i.bxi, i64 25
  %.idx696 = mul i64 %i.bxl, 24
  %i.byi = getelementptr inbounds nuw i8, ptr %.11383, i64 %.idx696
  store i16 %i.byh, ptr %i.byi, align 2, !tbaa !102
  %i.byj = extractelement <32 x i16> %i.bxi, i64 27
  %.idx697 = mul i64 %i.bxl, 26
  %i.byk = getelementptr inbounds nuw i8, ptr %.11383, i64 %.idx697
  store i16 %i.byj, ptr %i.byk, align 2, !tbaa !102
  %i.byl = extractelement <32 x i16> %i.bxi, i64 29
  %.idx698 = mul i64 %i.bxl, 28
  %i.bym = getelementptr inbounds nuw i8, ptr %.11383, i64 %.idx698
  store i16 %i.byl, ptr %i.bym, align 2, !tbaa !102
  %i.byn = extractelement <32 x i16> %i.bxi, i64 31
  %.idx699 = mul i64 %i.bxl, 30
  %i.byo = getelementptr inbounds nuw i8, ptr %.11383, i64 %.idx699
  store i16 %i.byn, ptr %i.byo, align 2, !tbaa !102
  %i.byp = getelementptr inbounds nuw i8, ptr %.11383, i64 2
  br label %.thread1166

.thread1166:                                      ; preds = %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit, %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit.split, %bb.v, %.thread, %bb.w, %bb.x
  %.5 = phi ptr [ %i.byp, %bb.x ], [ %.11383, %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit.split ], [ %i.bxh, %bb.w ], [ %i.bvn, %.thread ], [ %i.bwc, %bb.v ], [ %.11383, %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit ] ; 2 uses
  %i.byq = add nuw nsw i32 %.05981382, 1          ; 2 uses
  %exitcond1527.not = icmp eq i32 %i.byq, %i.af
  br i1 %exitcond1527.not, label %._crit_edge, label %bb.c, !llvm.loop !3224

._crit_edge1391:                                  ; preds = %._crit_edge1388.split, %_ZN4ncnn3MatD2Ev.exit739.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge1391, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <16 x i8> @llvm.x86.sse3.ldu.dq(ptr) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smulh.v8i16(<8 x i16>, <8 x i16>) #14

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #31

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <16 x float> @llvm.masked.gather.v16f32.v16p0(<16 x ptr>, <16 x i1>, <16 x float>) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr>, <4 x i1>, <4 x float>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v16f32(float, <16 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.exp.v2f32(<2 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.log.v2f32(<2 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.tanh.v2f32(<2 x float>) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v16f32.v16p0(<16 x float>, <16 x ptr>, <16 x i1>) #34

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4f32.v4p0(<4 x float>, <4 x ptr>, <4 x i1>) #34

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x float> @llvm.masked.load.v4f32.p0(ptr captures(none), <4 x i1>, <4 x float>) #35

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #34

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <31 x float> @llvm.masked.load.v31f32.p0(ptr captures(none), <31 x i1>, <31 x float>) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <3 x i8> @llvm.masked.load.v3i8.p0(ptr captures(none), <3 x i1>, <3 x i8>) #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.minnum.v4f32(<4 x float>, <4 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.exp.v4f32(<4 x float>) #14

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #17 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #21 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #23 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #24 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #25 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #26 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { inlinehint mustprogress uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #29 = { inlinehint mustprogress norecurse uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #30 = { nofree nounwind }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #35 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #36 = { noreturn nounwind }
attributes #37 = { builtin nounwind }
attributes #38 = { cold nounwind }
attributes #39 = { noreturn }
attributes #40 = { builtin allocsize(0) }

!llvm.module.flags = !{!4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = distinct !{!2, !81}
!3 = distinct !{!3, !81}
!4 = !{i32 7, !"openmp", i32 51}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"vtable pointer", !8, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"any pointer", !9, i64 0}
!16 = !{!"p1 int", !15, i64 0}
!17 = !{!"long", !9, i64 0}
!18 = !{!"p1 _ZTSN4ncnn9AllocatorE", !15, i64 0}
!19 = !{!"_ZTSN4ncnn3MatE", !15, i64 0, !16, i64 8, !17, i64 16, !10, i64 24, !18, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !17, i64 64}
!20 = !{!19, !16, i64 8}
!21 = !{!19, !18, i64 32}
!22 = !{!19, !15, i64 0}
!23 = !{!19, !17, i64 64}
!24 = !{!"bool", !9, i64 0}
!25 = !{!"p1 omnipotent char", !15, i64 0}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !25, i64 0}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !26, i64 0, !17, i64 8, !9, i64 16}
!28 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !16, i64 0, !16, i64 8, !16, i64 16}
!29 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !28, i64 0}
!30 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !29, i64 0}
!31 = !{!"_ZTSSt6vectorIiSaIiEE", !30, i64 0}
!32 = !{!"p1 _ZTSN4ncnn3MatE", !15, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !32, i64 0, !32, i64 8, !32, i64 16}
!34 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !33, i64 0}
!35 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !34, i64 0}
!36 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !35, i64 0}
!37 = !{!"_ZTSN4ncnn5LayerE", !24, i64 8, !24, i64 9, !24, i64 10, !24, i64 11, !24, i64 12, !24, i64 13, !24, i64 14, !24, i64 15, !24, i64 16, !24, i64 17, !24, i64 18, !24, i64 19, !24, i64 20, !24, i64 21, !24, i64 22, !24, i64 23, !24, i64 24, !24, i64 25, !24, i64 26, !24, i64 27, !10, i64 28, !15, i64 32, !10, i64 40, !27, i64 48, !27, i64 80, !31, i64 112, !31, i64 136, !36, i64 160, !36, i64 184}
!38 = !{!"float", !9, i64 0}
!39 = !{!"_ZTSN4ncnn11ConvolutionE", !37, i64 0, !10, i64 208, !10, i64 212, !10, i64 216, !10, i64 220, !10, i64 224, !10, i64 228, !10, i64 232, !10, i64 236, !10, i64 240, !10, i64 244, !10, i64 248, !38, i64 252, !10, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !19, i64 272, !10, i64 344, !19, i64 352, !19, i64 424, !19, i64 496, !19, i64 568, !19, i64 640}
!40 = !{!39, !10, i64 268}
!41 = !{!38, !38, i64 0}
!42 = !{!"p1 _ZTSN4ncnn5LayerE", !15, i64 0}
!43 = !{!"_ZTSN4ncnn22Convolution_x86_avx512E", !39, i64 0, !42, i64 712, !10, i64 720, !19, i64 728, !19, i64 800, !19, i64 872, !19, i64 944, !19, i64 1016, !42, i64 1088, !19, i64 1096}
!44 = !{!43, !42, i64 712}
!45 = !{!"_ZTSN4ncnn6OptionE", !24, i64 0, !24, i64 1, !24, i64 2, !24, i64 3, !10, i64 4, !18, i64 8, !18, i64 16, !10, i64 24, !24, i64 28, !24, i64 29, !24, i64 30, !24, i64 31, !24, i64 32, !24, i64 33, !24, i64 34, !24, i64 35, !24, i64 36, !24, i64 37, !24, i64 38, !24, i64 39, !10, i64 40, !24, i64 44, !24, i64 45, !24, i64 46, !24, i64 47, !9, i64 48, !24, i64 49, !24, i64 50, !24, i64 51, !24, i64 52, !24, i64 53, !24, i64 54, !24, i64 55, !24, i64 56, !24, i64 57, !24, i64 58, !24, i64 59, !24, i64 60, !24, i64 61, !24, i64 62, !24, i64 63}
!46 = !{!45, !10, i64 4}
!47 = !{!43, !10, i64 720}
!48 = !{!45, !24, i64 30}
!49 = !{i8 0, i8 2}
!50 = !{}
!51 = !{!45, !24, i64 32}
!52 = !{!39, !10, i64 212}
!53 = !{!39, !10, i64 216}
!54 = !{!39, !10, i64 260}
!55 = !{!39, !10, i64 208}
!56 = !{!45, !24, i64 39}
!57 = !{!39, !10, i64 220}
!58 = !{!39, !10, i64 224}
!59 = !{!39, !10, i64 228}
!60 = !{!39, !10, i64 232}
!61 = !{!43, !42, i64 1088}
!62 = !{!39, !10, i64 256}
!63 = !{!15, !15, i64 0}
!64 = !{!19, !17, i64 16}
!65 = !{!19, !10, i64 24}
!66 = !{!10, !10, i64 0}
!67 = !{!19, !10, i64 56}
!68 = !{!45, !24, i64 0}
!69 = !{!45, !24, i64 55}
!70 = !{!45, !24, i64 56}
end_hunk_3
