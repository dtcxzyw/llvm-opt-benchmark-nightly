Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86?download=true
inline.NumInlined: 399
inline.NumDeleted: 92
loop-unroll.NumCompletelyUnrolled: 114
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 220
begin_hunk_0_@_ZN4ncnn15Convolution_x8621create_pipeline_bf16sERKNS_6OptionE:bb.a

.preheader475.lr.ph.i:                            ; preds = %.preheader478.i
  br i1 %i.aar, label %.preheader475.us.i, label %._crit_edge636.split.i

.preheader475.us.i:                               ; preds = %.preheader475.lr.ph.i, %._crit_edge619.us.i
  %.1623.us.i = phi i32 [ %i.akl, %._crit_edge619.us.i ], [ %.0342.lcssa.i, %.preheader475.lr.ph.i ]
  %.3622.us.i = phi ptr [ %.lcssa276, %._crit_edge619.us.i ], [ %.0343.lcssa.i, %.preheader475.lr.ph.i ] ; 3 uses
  %.1347621.us.i = phi ptr [ %i.akk, %._crit_edge619.us.i ], [ %.0346.lcssa.i, %.preheader475.lr.ph.i ] ; 3 uses
  br i1 %min.iters.check317, label %scalar.ph316.preheader, label %vector.ph318

vector.ph318:                                     ; preds = %.preheader475.us.i
  %i.ajt = getelementptr i8, ptr %.3622.us.i, i64 %i.abb ; 2 uses
  br label %vector.body320

vector.body320:                                   ; preds = %vector.body320, %vector.ph318
  %index321 = phi i64 [ 0, %vector.ph318 ], [ %index.next326, %vector.body320 ] ; 3 uses
  %i.aju = shl i64 %index321, 2
  %next.gep322 = getelementptr i8, ptr %.3622.us.i, i64 %i.aju
  %i.ajv = getelementptr inbounds nuw [4 x i8], ptr %.1347621.us.i, i64 %index321 ; 2 uses
  %wide.load323 = load <4 x i32>, ptr %i.ajv, align 4, !tbaa !53
  %i.ajw = getelementptr inbounds nuw [4 x i8], ptr %i.ajv, i64 %i.aas
  %wide.load324 = load <4 x i32>, ptr %i.ajw, align 4, !tbaa !53
  %i.ajx = shufflevector <4 x i32> %wide.load323, <4 x i32> %wide.load324, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.ajy = lshr <8 x i32> %i.ajx, splat (i32 16)
  %interleaved.vec325 = trunc nuw <8 x i32> %i.ajy to <8 x i16>
  store <8 x i16> %interleaved.vec325, ptr %next.gep322, align 2, !tbaa !110
  %index.next326 = add nuw i64 %index321, 4       ; 2 uses
  %i.ajz = icmp eq i64 %index.next326, %n.vec319
  br i1 %i.ajz, label %middle.block327, label %vector.body320, !llvm.loop !433

middle.block327:                                  ; preds = %vector.body320
  br i1 %cmp.n328, label %._crit_edge619.us.i, label %scalar.ph316.preheader

scalar.ph316.preheader:                           ; preds = %.preheader475.us.i, %middle.block327
  %indvars.iv782.i.ph = phi i64 [ 0, %.preheader475.us.i ], [ %n.vec319, %middle.block327 ]
  %.4617.us.i.ph = phi ptr [ %.3622.us.i, %.preheader475.us.i ], [ %i.ajt, %middle.block327 ]
  br label %scalar.ph316

scalar.ph316:                                     ; preds = %scalar.ph316.preheader, %scalar.ph316
  %indvars.iv782.i = phi i64 [ %indvars.iv.next783.i, %scalar.ph316 ], [ %indvars.iv782.i.ph, %scalar.ph316.preheader ] ; 2 uses
  %.4617.us.i = phi ptr [ %i.akj, %scalar.ph316 ], [ %.4617.us.i.ph, %scalar.ph316.preheader ] ; 3 uses
  %i.aka = getelementptr inbounds nuw [4 x i8], ptr %.1347621.us.i, i64 %indvars.iv782.i ; 2 uses
  %i.akb = load i32, ptr %i.aka, align 4, !tbaa !53
  %i.akc = lshr i32 %i.akb, 16
  %i.akd = trunc nuw i32 %i.akc to i16
  store i16 %i.akd, ptr %.4617.us.i, align 2, !tbaa !110
  %i.ake = getelementptr inbounds nuw [4 x i8], ptr %i.aka, i64 %i.aas
  %i.akf = getelementptr inbounds nuw i8, ptr %.4617.us.i, i64 2
  %i.akg = load i32, ptr %i.ake, align 4, !tbaa !53
  %i.akh = lshr i32 %i.akg, 16
  %i.aki = trunc nuw i32 %i.akh to i16
  store i16 %i.aki, ptr %i.akf, align 2, !tbaa !110
  %i.akj = getelementptr inbounds nuw i8, ptr %.4617.us.i, i64 4 ; 2 uses
  %indvars.iv.next783.i = add nuw nsw i64 %indvars.iv782.i, 1 ; 2 uses
  %exitcond786.not.i = icmp eq i64 %indvars.iv.next783.i, %wide.trip.count779.i
  br i1 %exitcond786.not.i, label %._crit_edge619.us.i, label %scalar.ph316, !llvm.loop !434

._crit_edge619.us.i:                              ; preds = %scalar.ph316, %middle.block327
  %.lcssa276 = phi ptr [ %i.ajt, %middle.block327 ], [ %i.akj, %scalar.ph316 ] ; 2 uses
  %i.akk = getelementptr inbounds nuw [4 x i8], ptr %.1347621.us.i, i64 %i.aaw ; 2 uses
  %i.akl = add nuw nsw i32 %.1623.us.i, 2         ; 3 uses
  %i.akm = or disjoint i32 %i.akl, 1
  %i.akn = icmp slt i32 %i.akm, %i.p
  br i1 %i.akn, label %.preheader475.us.i, label %.preheader477.i, !llvm.loop !435

.preheader477.i:                                  ; preds = %._crit_edge619.us.i, %.preheader478.i
  %.1347.lcssa.i = phi ptr [ %.0346.lcssa.i, %.preheader478.i ], [ %i.akk, %._crit_edge619.us.i ] ; 2 uses
  %.3.lcssa.i = phi ptr [ %.0343.lcssa.i, %.preheader478.i ], [ %.lcssa276, %._crit_edge619.us.i ]
  %.1.lcssa.i = phi i32 [ %.0342.lcssa.i, %.preheader478.i ], [ %i.akl, %._crit_edge619.us.i ] ; 2 uses
  %i.ako = icmp sge i32 %.1.lcssa.i, %i.p
  %brmerge647.i = or i1 %i.aax, %i.ako
  br i1 %brmerge647.i, label %._crit_edge636.split.i, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader477.i, %._crit_edge632.i
  %.2635.i = phi i32 [ %i.akz, %._crit_edge632.i ], [ %.1.lcssa.i, %.preheader477.i ]
  %.6634.i = phi ptr [ %.lcssa279, %._crit_edge632.i ], [ %.3.lcssa.i, %.preheader477.i ] ; 3 uses
  br i1 %min.iters.check303, label %scalar.ph302.preheader, label %vector.ph304

vector.ph304:                                     ; preds = %.preheader.i
  %i.akp = getelementptr i8, ptr %.6634.i, i64 %i.abc ; 2 uses
  br label %vector.body306

vector.body306:                                   ; preds = %vector.body306, %vector.ph304
  %index307 = phi i64 [ 0, %vector.ph304 ], [ %index.next311, %vector.body306 ] ; 3 uses
  %i.akq = shl i64 %index307, 1
  %next.gep308 = getelementptr i8, ptr %.6634.i, i64 %i.akq ; 2 uses
  %i.akr = getelementptr inbounds nuw [4 x i8], ptr %.1347.lcssa.i, i64 %index307 ; 2 uses
  %i.aks = getelementptr inbounds nuw i8, ptr %i.akr, i64 16
  %wide.load309 = load <4 x i32>, ptr %i.akr, align 4, !tbaa !53
  %wide.load310 = load <4 x i32>, ptr %i.aks, align 4, !tbaa !53
  %i.akt = lshr <4 x i32> %wide.load309, splat (i32 16)
  %i.aku = lshr <4 x i32> %wide.load310, splat (i32 16)
  %i.akv = trunc nuw <4 x i32> %i.akt to <4 x i16>
  %i.akw = trunc nuw <4 x i32> %i.aku to <4 x i16>
  %i.akx = getelementptr i8, ptr %next.gep308, i64 8
  store <4 x i16> %i.akv, ptr %next.gep308, align 2, !tbaa !110
  store <4 x i16> %i.akw, ptr %i.akx, align 2, !tbaa !110
  %index.next311 = add nuw i64 %index307, 8       ; 2 uses
  %i.aky = icmp eq i64 %index.next311, %n.vec305
  br i1 %i.aky, label %middle.block312, label %vector.body306, !llvm.loop !436

middle.block312:                                  ; preds = %vector.body306
  br i1 %cmp.n313, label %._crit_edge632.i, label %scalar.ph302.preheader

scalar.ph302.preheader:                           ; preds = %.preheader.i, %middle.block312
  %indvars.iv787.i.ph = phi i64 [ 0, %.preheader.i ], [ %n.vec305, %middle.block312 ]
  %.7630.i.ph = phi ptr [ %.6634.i, %.preheader.i ], [ %i.akp, %middle.block312 ]
  br label %scalar.ph302

._crit_edge632.i:                                 ; preds = %scalar.ph302, %middle.block312
  %.lcssa279 = phi ptr [ %i.akp, %middle.block312 ], [ %i.ale, %scalar.ph302 ]
  %i.akz = add nuw nsw i32 %.2635.i, 1            ; 2 uses
  %exitcond792.not.i = icmp eq i32 %i.akz, %i.p
  br i1 %exitcond792.not.i, label %._crit_edge636.split.i, label %.preheader.i, !llvm.loop !437

scalar.ph302:                                     ; preds = %scalar.ph302.preheader, %scalar.ph302
  %indvars.iv787.i = phi i64 [ %indvars.iv.next788.i, %scalar.ph302 ], [ %indvars.iv787.i.ph, %scalar.ph302.preheader ] ; 2 uses
  %.7630.i = phi ptr [ %i.ale, %scalar.ph302 ], [ %.7630.i.ph, %scalar.ph302.preheader ] ; 2 uses
  %i.ala = getelementptr inbounds nuw [4 x i8], ptr %.1347.lcssa.i, i64 %indvars.iv787.i
  %i.alb = load i32, ptr %i.ala, align 4, !tbaa !53
  %i.alc = lshr i32 %i.alb, 16
  %i.ald = trunc nuw i32 %i.alc to i16
  store i16 %i.ald, ptr %.7630.i, align 2, !tbaa !110
  %i.ale = getelementptr inbounds nuw i8, ptr %.7630.i, i64 2 ; 2 uses
  %indvars.iv.next788.i = add nuw nsw i64 %indvars.iv787.i, 1 ; 2 uses
  %exitcond791.not.i = icmp eq i64 %indvars.iv.next788.i, %wide.trip.count779.i
  br i1 %exitcond791.not.i, label %._crit_edge632.i, label %scalar.ph302, !llvm.loop !438

._crit_edge636.split.i:                           ; preds = %._crit_edge632.i, %.preheader477.i, %.preheader475.lr.ph.i, %.preheader476.lr.ph.i
  %indvars.iv.next794.i = add nuw nsw i64 %indvars.iv793.i, 1 ; 2 uses
  %exitcond797.not.i = icmp eq i64 %indvars.iv.next794.i, %wide.trip.count796.i
  br i1 %exitcond797.not.i, label %_ZN4ncnnL41convolution_transform_kernel_packed_bf16sERKNS_3MatERS0_iiii.exit, label %_ZN4ncnn3MatD2Ev.exit.i104, !llvm.loop !439

_ZN4ncnnL41convolution_transform_kernel_packed_bf16sERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge636.split.i, %.preheader479.i
  %i.alf = load i8, ptr %1, align 8, !tbaa !80, !range !61, !noundef !62
  %i.alg = trunc nuw i8 %i.alf to i1
  br i1 %i.alg, label %bb.dx, label %bb.ed

bb.dx:                                            ; preds = %_ZN4ncnnL41convolution_transform_kernel_packed_bf16sERKNS_3MatERS0_iiii.exit
  %i.alh = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ali = load ptr, ptr %i.alh, align 8, !tbaa !32 ; 2 uses
  %.not.i = icmp eq ptr %i.ali, null
  br i1 %.not.i, label %.sink.split, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.alj = atomicrmw add ptr %i.ali, i32 -1 acq_rel, align 4
  %i.alk = icmp eq i32 %i.alj, 1
  br i1 %i.alk, label %bb.dz, label %.sink.split

bb.dz:                                            ; preds = %bb.dy
  %i.all = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.alm = load ptr, ptr %i.all, align 8, !tbaa !33 ; 3 uses
  %.not3.i = icmp eq ptr %i.alm, null
  %i.aln = load ptr, ptr %i.nr, align 8, !tbaa !34 ; 3 uses
  br i1 %.not3.i, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.alo = load ptr, ptr %i.alm, align 8, !tbaa !26
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alo, i64 24
  %i.alq = load ptr, ptr %i.alp, align 8
  tail call void %i.alq(ptr noundef nonnull align 8 dereferenceable(8) %i.alm, ptr noundef %i.aln), !inline_history !0
  br label %.sink.split

bb.eb:                                            ; preds = %bb.dz
  %.not.i101 = icmp eq ptr %i.aln, null
  br i1 %.not.i101, label %.sink.split, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  tail call void @free(ptr noundef nonnull %i.aln) #12
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ea, %bb.dy, %bb.dx, %bb.eb, %bb.ec, %bb.da, %bb.cy, %bb.cx, %bb.db, %bb.dc, %bb.al, %bb.aj, %bb.ai, %bb.am, %bb.an
  %.sink272 = phi ptr [ %i.du, %bb.al ], [ %i.fh, %bb.da ], [ %i.du, %bb.an ], [ %i.du, %bb.am ], [ %i.du, %bb.ai ], [ %i.du, %bb.aj ], [ %i.fh, %bb.dc ], [ %i.fh, %bb.db ], [ %i.fh, %bb.cx ], [ %i.fh, %bb.cy ], [ %i.nr, %bb.ec ], [ %i.nr, %bb.eb ], [ %i.nr, %bb.dx ], [ %i.nr, %bb.dy ], [ %i.nr, %bb.ea ]
  %i.alr = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.als = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i64 0, ptr %i.als, align 8, !tbaa !35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sink272, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.alr, i8 0, i64 20, i1 false)
  br label %bb.ed

bb.ed:                                            ; preds = %.sink.split, %_ZN4ncnnL46convolution_im2col_gemm_transform_kernel_bf16sERKNS_3MatERS0_iiiiRKNS_6OptionE.exit, %_ZN4ncnnL41convolution_transform_kernel_packed_bf16sERKNS_3MatERS0_iiii.exit, %bb.ah
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
define internal fastcc void @_ZN4ncnnL37conv3x3s1_winograd63_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %4) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
_ZN4ncnnL20get_optimal_tile_mnkEiiiRiS0_S0_i.exit:
  %5 = alloca i32, align 4                        ; 2 uses
  %6 = alloca i32, align 4                        ; 5 uses
  %7 = alloca i32, align 4                        ; 5 uses
  %8 = alloca i32, align 4                        ; 6 uses
  %9 = alloca i32, align 4                        ; 4 uses
  %10 = alloca i32, align 4                       ; 6 uses
  %11 = alloca i32, align 4                       ; 5 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %13 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 %2, ptr %5, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  store i32 %3, ptr %6, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  store i32 %2, ptr %7, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %15 = load i32, ptr %14, align 4, !tbaa !58
  call fastcc void @_ZN4ncnnL20get_optimal_tile_mnkEiiiRiS0_S0_i(i32 noundef %3, i32 noundef 0, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull align 4 dereferenceable(4) %10, i32 noundef %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %16 = load i32, ptr %8, align 4, !tbaa !78      ; 6 uses
  %i.a = add i32 %3, -1
  %i.b = add i32 %i.a, %16
  %i.c = sdiv i32 %i.b, %16
  store i32 %i.c, ptr %11, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.d = shl nsw i32 %16, 6
  %17 = load i32, ptr %10, align 4, !tbaa !78     ; 4 uses
  %i.e = mul nsw i32 %i.d, %17
  %i.f = load i32, ptr %14, align 4, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %12, i64 64
  store i64 0, ptr %i.i, align 8, !tbaa !35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %12, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.h, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %12, i32 noundef %i.e, i32 noundef 1, i32 noundef %i.f, i64 noundef 4, ptr noundef null)
  %i.j = mul nsw i32 %16, %17
  %18 = add i32 %17, -1
  %19 = add i32 %18, %2
  %20 = sdiv i32 %19, %17
  %i.k = add i32 %16, -1
  %i.l = add i32 %i.k, %3
  %i.m = sdiv i32 %i.l, %16
  invoke void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.j, i32 noundef 64, i32 noundef %20, i32 noundef %i.m, i64 noundef 4, ptr noundef null)
          to label %bb.a unwind label %bb.h

bb.a:                                             ; preds = %_ZN4ncnnL20get_optimal_tile_mnkEiiiRiS0_S0_i.exit
  %i.n = load i32, ptr %14, align 4, !tbaa !58
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %13, i32 %i.n)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL37conv3x3s1_winograd63_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined, ptr nonnull %11, ptr nonnull %8, ptr nonnull %12, ptr nonnull %7, ptr nonnull %10, ptr nonnull %6, ptr nonnull %0, ptr nonnull %5, ptr nonnull %1)
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !32   ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = atomicrmw add ptr %i.o, i32 -1 acq_rel, align 4
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %bb.c, label %_ZN4ncnn3MatD2Ev.exit8

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !33   ; 3 uses
  %.not3.i = icmp eq ptr %i.r, null
  %i.s = load ptr, ptr %12, align 8, !tbaa !34    ; 3 uses
  br i1 %.not3.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !26
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  invoke void %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef %i.s)
          to label %_ZN4ncnn3MatD2Ev.exit8 unwind label %bb.g, !inline_history !0

bb.e:                                             ; preds = %bb.c
  %.not.i14 = icmp eq ptr %i.s, null
  br i1 %.not.i14, label %_ZN4ncnn3MatD2Ev.exit8, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef nonnull %i.s) #12
  br label %_ZN4ncnn3MatD2Ev.exit8

bb.g:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit8:                           ; preds = %bb.b, %bb.a, %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  ret void

bb.h:                                             ; preds = %_ZN4ncnnL20get_optimal_tile_mnkEiiiRiS0_S0_i.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !32   ; 2 uses
  %.not.i9 = icmp eq ptr %i.z, null
  br i1 %.not.i9, label %_ZN4ncnn3MatD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = atomicrmw add ptr %i.z, i32 -1 acq_rel, align 4
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %bb.j, label %_ZN4ncnn3MatD2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !33  ; 3 uses
  %.not3.i10 = icmp eq ptr %i.ac, null
  %i.ad = load ptr, ptr %12, align 8, !tbaa !34   ; 3 uses
  br i1 %.not3.i10, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !26
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef %i.ad)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.n, !inline_history !0

bb.l:                                             ; preds = %bb.j
  %.not.i13 = icmp eq ptr %i.ad, null
  br i1 %.not.i13, label %_ZN4ncnn3MatD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef nonnull %i.ad) #12
  br label %_ZN4ncnn3MatD2Ev.exit

bb.n:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.i, %bb.h, %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL37conv3x3s1_winograd43_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %4) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
_ZN4ncnnL20get_optimal_tile_mnkEiiiRiS0_S0_i.exit:
  %5 = alloca i32, align 4                        ; 2 uses
  %6 = alloca i32, align 4                        ; 5 uses
  %7 = alloca i32, align 4                        ; 5 uses
  %8 = alloca i32, align 4                        ; 6 uses
  %9 = alloca i32, align 4                        ; 4 uses
  %10 = alloca i32, align 4                       ; 6 uses
  %11 = alloca i32, align 4                       ; 5 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %13 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 %2, ptr %5, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  store i32 %3, ptr %6, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  store i32 %2, ptr %7, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %15 = load i32, ptr %14, align 4, !tbaa !58
  call fastcc void @_ZN4ncnnL20get_optimal_tile_mnkEiiiRiS0_S0_i(i32 noundef %3, i32 noundef 0, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull align 4 dereferenceable(4) %10, i32 noundef %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %16 = load i32, ptr %8, align 4, !tbaa !78      ; 6 uses
  %i.a = add i32 %3, -1
  %i.b = add i32 %i.a, %16
  %i.c = sdiv i32 %i.b, %16
  store i32 %i.c, ptr %11, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.d = mul nsw i32 %16, 36
  %17 = load i32, ptr %10, align 4, !tbaa !78     ; 4 uses
  %i.e = mul nsw i32 %i.d, %17
  %i.f = load i32, ptr %14, align 4, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %12, i64 64
  store i64 0, ptr %i.i, align 8, !tbaa !35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %12, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.h, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %12, i32 noundef %i.e, i32 noundef 1, i32 noundef %i.f, i64 noundef 4, ptr noundef null)
  %i.j = mul nsw i32 %16, %17
  %18 = add i32 %17, -1
  %19 = add i32 %18, %2
  %20 = sdiv i32 %19, %17
  %i.k = add i32 %16, -1
  %i.l = add i32 %i.k, %3
  %i.m = sdiv i32 %i.l, %16
  invoke void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.j, i32 noundef 36, i32 noundef %20, i32 noundef %i.m, i64 noundef 4, ptr noundef null)
          to label %bb.a unwind label %bb.h

bb.a:                                             ; preds = %_ZN4ncnnL20get_optimal_tile_mnkEiiiRiS0_S0_i.exit
  %i.n = load i32, ptr %14, align 4, !tbaa !58
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %13, i32 %i.n)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL37conv3x3s1_winograd43_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined, ptr nonnull %11, ptr nonnull %8, ptr nonnull %12, ptr nonnull %7, ptr nonnull %10, ptr nonnull %6, ptr nonnull %0, ptr nonnull %5, ptr nonnull %1)
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !32   ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = atomicrmw add ptr %i.o, i32 -1 acq_rel, align 4
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %bb.c, label %_ZN4ncnn3MatD2Ev.exit8

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !33   ; 3 uses
  %.not3.i = icmp eq ptr %i.r, null
  %i.s = load ptr, ptr %12, align 8, !tbaa !34    ; 3 uses
  br i1 %.not3.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !26
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  invoke void %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef %i.s)
          to label %_ZN4ncnn3MatD2Ev.exit8 unwind label %bb.g, !inline_history !0

bb.e:                                             ; preds = %bb.c
  %.not.i14 = icmp eq ptr %i.s, null
  br i1 %.not.i14, label %_ZN4ncnn3MatD2Ev.exit8, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef nonnull %i.s) #12
  br label %_ZN4ncnn3MatD2Ev.exit8

bb.g:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit8:                           ; preds = %bb.b, %bb.a, %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  ret void

bb.h:                                             ; preds = %_ZN4ncnnL20get_optimal_tile_mnkEiiiRiS0_S0_i.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !32   ; 2 uses
  %.not.i9 = icmp eq ptr %i.z, null
  br i1 %.not.i9, label %_ZN4ncnn3MatD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = atomicrmw add ptr %i.z, i32 -1 acq_rel, align 4
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %bb.j, label %_ZN4ncnn3MatD2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !33  ; 3 uses
  %.not3.i10 = icmp eq ptr %i.ac, null
  %i.ad = load ptr, ptr %12, align 8, !tbaa !34   ; 3 uses
  br i1 %.not3.i10, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !26
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef %i.ad)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.n, !inline_history !0

bb.l:                                             ; preds = %bb.j
  %.not.i13 = icmp eq ptr %i.ad, null
  br i1 %.not.i13, label %_ZN4ncnn3MatD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef nonnull %i.ad) #12
  br label %_ZN4ncnn3MatD2Ev.exit

bb.n:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.i, %bb.h, %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL37conv3x3s1_winograd23_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %4) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
_ZN4ncnnL20get_optimal_tile_mnkEiiiRiS0_S0_i.exit:
  %5 = alloca i32, align 4                        ; 2 uses
  %6 = alloca i32, align 4                        ; 5 uses
  %7 = alloca i32, align 4                        ; 5 uses
  %8 = alloca i32, align 4                        ; 6 uses
  %9 = alloca i32, align 4                        ; 4 uses
  %10 = alloca i32, align 4                       ; 6 uses
  %11 = alloca i32, align 4                       ; 5 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %13 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 %2, ptr %5, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  store i32 %3, ptr %6, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  store i32 %2, ptr %7, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %15 = load i32, ptr %14, align 4, !tbaa !58
  call fastcc void @_ZN4ncnnL20get_optimal_tile_mnkEiiiRiS0_S0_i(i32 noundef %3, i32 noundef 0, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull align 4 dereferenceable(4) %10, i32 noundef %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %16 = load i32, ptr %8, align 4, !tbaa !78      ; 6 uses
  %i.a = add i32 %3, -1
  %i.b = add i32 %i.a, %16
  %i.c = sdiv i32 %i.b, %16
  store i32 %i.c, ptr %11, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.d = shl nsw i32 %16, 4
  %17 = load i32, ptr %10, align 4, !tbaa !78     ; 4 uses
  %i.e = mul nsw i32 %i.d, %17
  %i.f = load i32, ptr %14, align 4, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %12, i64 64
  store i64 0, ptr %i.i, align 8, !tbaa !35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %12, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.h, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %12, i32 noundef %i.e, i32 noundef 1, i32 noundef %i.f, i64 noundef 4, ptr noundef null)
  %i.j = mul nsw i32 %16, %17
  %18 = add i32 %17, -1
  %19 = add i32 %18, %2
  %20 = sdiv i32 %19, %17
  %i.k = add i32 %16, -1
  %i.l = add i32 %i.k, %3
  %i.m = sdiv i32 %i.l, %16
  invoke void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.j, i32 noundef 16, i32 noundef %20, i32 noundef %i.m, i64 noundef 4, ptr noundef null)
          to label %bb.a unwind label %bb.h

bb.a:                                             ; preds = %_ZN4ncnnL20get_optimal_tile_mnkEiiiRiS0_S0_i.exit
  %i.n = load i32, ptr %14, align 4, !tbaa !58
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %13, i32 %i.n)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL37conv3x3s1_winograd23_transform_kernelERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined, ptr nonnull %11, ptr nonnull %8, ptr nonnull %12, ptr nonnull %7, ptr nonnull %10, ptr nonnull %6, ptr nonnull %0, ptr nonnull %5, ptr nonnull %1)
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !32   ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = atomicrmw add ptr %i.o, i32 -1 acq_rel, align 4
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %bb.c, label %_ZN4ncnn3MatD2Ev.exit8

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !33   ; 3 uses
  %.not3.i = icmp eq ptr %i.r, null
  %i.s = load ptr, ptr %12, align 8, !tbaa !34    ; 3 uses
  br i1 %.not3.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !26
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  invoke void %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef %i.s)
          to label %_ZN4ncnn3MatD2Ev.exit8 unwind label %bb.g, !inline_history !0

bb.e:                                             ; preds = %bb.c
  %.not.i14 = icmp eq ptr %i.s, null
  br i1 %.not.i14, label %_ZN4ncnn3MatD2Ev.exit8, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef nonnull %i.s) #12
  br label %_ZN4ncnn3MatD2Ev.exit8

bb.g:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit8:                           ; preds = %bb.b, %bb.a, %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  ret void

bb.h:                                             ; preds = %_ZN4ncnnL20get_optimal_tile_mnkEiiiRiS0_S0_i.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !32   ; 2 uses
  %.not.i9 = icmp eq ptr %i.z, null
  br i1 %.not.i9, label %_ZN4ncnn3MatD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = atomicrmw add ptr %i.z, i32 -1 acq_rel, align 4
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %bb.j, label %_ZN4ncnn3MatD2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !33  ; 3 uses
  %.not3.i10 = icmp eq ptr %i.ac, null
  %i.ad = load ptr, ptr %12, align 8, !tbaa !34   ; 3 uses
  br i1 %.not3.i10, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !26
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef %i.ad)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.n, !inline_history !0

bb.l:                                             ; preds = %bb.j
  %.not.i13 = icmp eq ptr %i.ad, null
  br i1 %.not.i13, label %_ZN4ncnn3MatD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef nonnull %i.ad) #12
  br label %_ZN4ncnn3MatD2Ev.exit

bb.n:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.i, %bb.h, %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  resume { ptr, i32 } %i.y
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
  %invariant.gep107 = getelementptr [4 x i8], ptr %i.ar, i64 %indvars.iv129 ; 4 uses
  %gep = getelementptr i8, ptr %invariant.gep107, i64 %.reass106 ; 4 uses
  %gep102 = getelementptr i8, ptr %gep, i64 %.reass
  %i.bm = load float, ptr %gep102, align 4, !tbaa !53
  store float %i.bm, ptr %.1110, align 4, !tbaa !53
  %i.bn = getelementptr inbounds nuw i8, ptr %.1110, i64 4 ; 2 uses
  br i1 %exitcond.not, label %bb.j, label %_ZN4ncnn3MatD2Ev.exit59.1

._crit_edge:                                      ; preds = %bb.i
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, %i.r ; 2 uses
  %i.bo = add nuw nsw i64 %indvars.iv.next135, %i.s
  %i.bp = icmp samesign ult i64 %i.bo, %i.t
  br i1 %i.bp, label %.preheader99, label %._crit_edge114, !llvm.loop !446

bb.i:                                             ; preds = %.preheader.3, %_ZN4ncnn3MatD2Ev.exit59.1.3, %_ZN4ncnn3MatD2Ev.exit59.2.3, %_ZN4ncnn3MatD2Ev.exit59.3.3, %bb.l, %bb.k, %bb.j
  %.lcssa.lcssa = phi ptr [ %.lcssa, %bb.j ], [ %.lcssa.1, %bb.k ], [ %.lcssa.2, %bb.l ], [ %i.ch, %.preheader.3 ], [ %i.cj, %_ZN4ncnn3MatD2Ev.exit59.1.3 ], [ %i.cl, %_ZN4ncnn3MatD2Ev.exit59.2.3 ], [ %i.cn, %_ZN4ncnn3MatD2Ev.exit59.3.3 ] ; 2 uses
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1 ; 2 uses
  %exitcond133.not = icmp eq i64 %indvars.iv.next130, %wide.trip.count132
  br i1 %exitcond133.not, label %._crit_edge, label %.preheader98, !llvm.loop !447

bb.j:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit59.3, %_ZN4ncnn3MatD2Ev.exit59.2, %_ZN4ncnn3MatD2Ev.exit59.1, %.preheader98
  %.lcssa = phi ptr [ %i.bn, %.preheader98 ], [ %i.cp, %_ZN4ncnn3MatD2Ev.exit59.1 ], [ %i.cr, %_ZN4ncnn3MatD2Ev.exit59.2 ], [ %i.ct, %_ZN4ncnn3MatD2Ev.exit59.3 ] ; 6 uses
  br i1 %exitcond128.not, label %bb.i, label %.preheader.1

.preheader.1:                                     ; preds = %bb.j
  %gep.1 = getelementptr i8, ptr %invariant.gep107, i64 %.reass106.1 ; 4 uses
  %gep102.1153 = getelementptr i8, ptr %gep.1, i64 %.reass.1152
  %i.bq = load float, ptr %gep102.1153, align 4, !tbaa !53
  store float %i.bq, ptr %.lcssa, align 4, !tbaa !53
  %i.br = getelementptr inbounds nuw i8, ptr %.lcssa, i64 4 ; 2 uses
  br i1 %exitcond.not.1154, label %bb.k, label %_ZN4ncnn3MatD2Ev.exit59.1.1

_ZN4ncnn3MatD2Ev.exit59.1.1:                      ; preds = %.preheader.1
  %gep102.1.1 = getelementptr i8, ptr %gep.1, i64 %.reass.1.1
  %i.bs = load float, ptr %gep102.1.1, align 4, !tbaa !53
  store float %i.bs, ptr %i.br, align 4, !tbaa !53
  %i.bt = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8 ; 2 uses
  br i1 %exitcond.not.1.1, label %bb.k, label %_ZN4ncnn3MatD2Ev.exit59.2.1

_ZN4ncnn3MatD2Ev.exit59.2.1:                      ; preds = %_ZN4ncnn3MatD2Ev.exit59.1.1
  %gep102.2.1 = getelementptr i8, ptr %gep.1, i64 %.reass.2.1
  %i.bu = load float, ptr %gep102.2.1, align 4, !tbaa !53
  store float %i.bu, ptr %i.bt, align 4, !tbaa !53
  %i.bv = getelementptr inbounds nuw i8, ptr %.lcssa, i64 12 ; 2 uses
  br i1 %exitcond.not.2.1, label %bb.k, label %_ZN4ncnn3MatD2Ev.exit59.3.1

_ZN4ncnn3MatD2Ev.exit59.3.1:                      ; preds = %_ZN4ncnn3MatD2Ev.exit59.2.1
  %gep102.3.1 = getelementptr i8, ptr %gep.1, i64 %.reass.3.1
  %i.bw = load float, ptr %gep102.3.1, align 4, !tbaa !53
  store float %i.bw, ptr %i.bv, align 4, !tbaa !53
  %i.bx = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  br label %bb.k

bb.k:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit59.3.1, %_ZN4ncnn3MatD2Ev.exit59.2.1, %_ZN4ncnn3MatD2Ev.exit59.1.1, %.preheader.1
  %.lcssa.1 = phi ptr [ %i.br, %.preheader.1 ], [ %i.bt, %_ZN4ncnn3MatD2Ev.exit59.1.1 ], [ %i.bv, %_ZN4ncnn3MatD2Ev.exit59.2.1 ], [ %i.bx, %_ZN4ncnn3MatD2Ev.exit59.3.1 ] ; 6 uses
  br i1 %exitcond128.not.1, label %bb.i, label %.preheader.2

.preheader.2:                                     ; preds = %bb.k
  %gep.2 = getelementptr i8, ptr %invariant.gep107, i64 %.reass106.2 ; 4 uses
  %gep102.2157 = getelementptr i8, ptr %gep.2, i64 %.reass.2156
  %i.by = load float, ptr %gep102.2157, align 4, !tbaa !53
  store float %i.by, ptr %.lcssa.1, align 4, !tbaa !53
  %i.bz = getelementptr inbounds nuw i8, ptr %.lcssa.1, i64 4 ; 2 uses
  br i1 %exitcond.not.2158, label %bb.l, label %_ZN4ncnn3MatD2Ev.exit59.1.2

_ZN4ncnn3MatD2Ev.exit59.1.2:                      ; preds = %.preheader.2
  %gep102.1.2 = getelementptr i8, ptr %gep.2, i64 %.reass.1.2
  %i.ca = load float, ptr %gep102.1.2, align 4, !tbaa !53
  store float %i.ca, ptr %i.bz, align 4, !tbaa !53
  %i.cb = getelementptr inbounds nuw i8, ptr %.lcssa.1, i64 8 ; 2 uses
  br i1 %exitcond.not.1.2, label %bb.l, label %_ZN4ncnn3MatD2Ev.exit59.2.2

_ZN4ncnn3MatD2Ev.exit59.2.2:                      ; preds = %_ZN4ncnn3MatD2Ev.exit59.1.2
  %gep102.2.2 = getelementptr i8, ptr %gep.2, i64 %.reass.2.2
  %i.cc = load float, ptr %gep102.2.2, align 4, !tbaa !53
  store float %i.cc, ptr %i.cb, align 4, !tbaa !53
  %i.cd = getelementptr inbounds nuw i8, ptr %.lcssa.1, i64 12 ; 2 uses
  br i1 %exitcond.not.2.2, label %bb.l, label %_ZN4ncnn3MatD2Ev.exit59.3.2

_ZN4ncnn3MatD2Ev.exit59.3.2:                      ; preds = %_ZN4ncnn3MatD2Ev.exit59.2.2
  %gep102.3.2 = getelementptr i8, ptr %gep.2, i64 %.reass.3.2
  %i.ce = load float, ptr %gep102.3.2, align 4, !tbaa !53
  store float %i.ce, ptr %i.cd, align 4, !tbaa !53
  %i.cf = getelementptr inbounds nuw i8, ptr %.lcssa.1, i64 16
  br label %bb.l

bb.l:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit59.3.2, %_ZN4ncnn3MatD2Ev.exit59.2.2, %_ZN4ncnn3MatD2Ev.exit59.1.2, %.preheader.2
  %.lcssa.2 = phi ptr [ %i.bz, %.preheader.2 ], [ %i.cb, %_ZN4ncnn3MatD2Ev.exit59.1.2 ], [ %i.cd, %_ZN4ncnn3MatD2Ev.exit59.2.2 ], [ %i.cf, %_ZN4ncnn3MatD2Ev.exit59.3.2 ] ; 6 uses
  br i1 %exitcond128.not.2, label %bb.i, label %.preheader.3

.preheader.3:                                     ; preds = %bb.l
  %gep.3 = getelementptr i8, ptr %invariant.gep107, i64 %.reass106.3 ; 4 uses
  %gep102.3161 = getelementptr i8, ptr %gep.3, i64 %.reass.3160
  %i.cg = load float, ptr %gep102.3161, align 4, !tbaa !53
  store float %i.cg, ptr %.lcssa.2, align 4, !tbaa !53
  %i.ch = getelementptr inbounds nuw i8, ptr %.lcssa.2, i64 4 ; 2 uses
  br i1 %exitcond.not.3, label %bb.i, label %_ZN4ncnn3MatD2Ev.exit59.1.3

_ZN4ncnn3MatD2Ev.exit59.1.3:                      ; preds = %.preheader.3
  %gep102.1.3 = getelementptr i8, ptr %gep.3, i64 %.reass.1.3
  %i.ci = load float, ptr %gep102.1.3, align 4, !tbaa !53
  store float %i.ci, ptr %i.ch, align 4, !tbaa !53
  %i.cj = getelementptr inbounds nuw i8, ptr %.lcssa.2, i64 8 ; 2 uses
  br i1 %exitcond.not.1.3, label %bb.i, label %_ZN4ncnn3MatD2Ev.exit59.2.3

_ZN4ncnn3MatD2Ev.exit59.2.3:                      ; preds = %_ZN4ncnn3MatD2Ev.exit59.1.3
  %gep102.2.3 = getelementptr i8, ptr %gep.3, i64 %.reass.2.3
  %i.ck = load float, ptr %gep102.2.3, align 4, !tbaa !53
  store float %i.ck, ptr %i.cj, align 4, !tbaa !53
  %i.cl = getelementptr inbounds nuw i8, ptr %.lcssa.2, i64 12 ; 2 uses
  br i1 %exitcond.not.2.3, label %bb.i, label %_ZN4ncnn3MatD2Ev.exit59.3.3

_ZN4ncnn3MatD2Ev.exit59.3.3:                      ; preds = %_ZN4ncnn3MatD2Ev.exit59.2.3
  %gep102.3.3 = getelementptr i8, ptr %gep.3, i64 %.reass.3.3
  %i.cm = load float, ptr %gep102.3.3, align 4, !tbaa !53
  store float %i.cm, ptr %i.cl, align 4, !tbaa !53
  %i.cn = getelementptr inbounds nuw i8, ptr %.lcssa.2, i64 16
  br label %bb.i

_ZN4ncnn3MatD2Ev.exit59.1:                        ; preds = %.preheader98
  %gep102.1 = getelementptr i8, ptr %gep, i64 %.reass.1
  %i.co = load float, ptr %gep102.1, align 4, !tbaa !53
  store float %i.co, ptr %i.bn, align 4, !tbaa !53
  %i.cp = getelementptr inbounds nuw i8, ptr %.1110, i64 8 ; 2 uses
  br i1 %exitcond.not.1, label %bb.j, label %_ZN4ncnn3MatD2Ev.exit59.2

_ZN4ncnn3MatD2Ev.exit59.2:                        ; preds = %_ZN4ncnn3MatD2Ev.exit59.1
  %gep102.2 = getelementptr i8, ptr %gep, i64 %.reass.2
  %i.cq = load float, ptr %gep102.2, align 4, !tbaa !53
  store float %i.cq, ptr %i.cp, align 4, !tbaa !53
  %i.cr = getelementptr inbounds nuw i8, ptr %.1110, i64 12 ; 2 uses
  br i1 %exitcond.not.2, label %bb.j, label %_ZN4ncnn3MatD2Ev.exit59.3

_ZN4ncnn3MatD2Ev.exit59.3:                        ; preds = %_ZN4ncnn3MatD2Ev.exit59.2
  %gep102.3 = getelementptr i8, ptr %gep, i64 %.reass.3
  %i.cs = load float, ptr %gep102.3, align 4, !tbaa !53
  store float %i.cs, ptr %i.cr, align 4, !tbaa !53
  %i.ct = getelementptr inbounds nuw i8, ptr %.1110, i64 16
  br label %bb.j

bb.m:                                             ; preds = %bb.h
  %i.cu = atomicrmw add ptr %i.al, i32 -1 acq_rel, align 4
  %i.cv = icmp eq i32 %i.cu, 1
  br i1 %i.cv, label %bb.n, label %_ZN4ncnn3MatD2Ev.exit

bb.n:                                             ; preds = %bb.m
  %i.cw = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !33 ; 3 uses
  %.not3.i70 = icmp eq ptr %i.cx, null
  %i.cy = load ptr, ptr %8, align 8, !tbaa !34    ; 3 uses
  br i1 %.not3.i70, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cz = load ptr, ptr %i.cx, align 8, !tbaa !26
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.db = load ptr, ptr %i.da, align 8
  invoke void %i.db(ptr noundef nonnull align 8 dereferenceable(8) %i.cx, ptr noundef %i.cy)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.r, !inline_history !0

bb.p:                                             ; preds = %bb.n
  %.not.i73 = icmp eq ptr %i.cy, null
  br i1 %.not.i73, label %_ZN4ncnn3MatD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @free(ptr noundef nonnull %i.cy) #12
  br label %_ZN4ncnn3MatD2Ev.exit

bb.r:                                             ; preds = %bb.o
  %i.dc = landingpad { ptr, i32 }
          catch ptr null
  %i.dd = extractvalue { ptr, i32 } %i.dc, 0
  call void @__clang_call_terminate(ptr %i.dd) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.m, %bb.h, %bb.o, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  resume { ptr, i32 } %i.aj
}

declare void @_ZN4ncnn9ParamDict3setEif(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, float noundef nofpclass(nan inf)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL20get_optimal_tile_mnkEiiiRiS0_S0_i(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %5, i32 noundef %6) unnamed_addr #2 {
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
  %7 = sdiv i32 %i.i, 4
  %8 = shl nsw i32 %7, 2
  %.sroa.speculated86 = tail call i32 @llvm.smax.i32(i32 %8, i32 4)
  store i32 %.sroa.speculated86, ptr %3, align 4, !tbaa !78
  %i.j = tail call noundef i32 @_ZN4ncnn22get_physical_cpu_countEv()
  %.sroa.speculated82 = tail call i32 @llvm.smin.i32(i32 %i.j, i32 %.0)
  %i.k = load i32, ptr %3, align 4, !tbaa !78
  %i.l = mul nsw i32 %i.k, %.sroa.speculated82    ; 3 uses
  %i.m = add i32 %0, -1                           ; 2 uses
  %i.n = add i32 %i.m, %i.l
  %i.o = sdiv i32 %i.n, %i.l                      ; 2 uses
  %i.p = add i32 %i.m, %i.o
  %i.q = sdiv i32 %i.p, %i.o
  %i.r = add nsw i32 %i.q, 3
  %i.s = sdiv i32 %i.r, 4
  %i.t = shl nsw i32 %i.s, 2
  %.sroa.speculated78 = tail call i32 @llvm.smin.i32(i32 %i.t, i32 %i.l) ; 3 uses
  %i.u = icmp sgt i32 %.0, 1
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = sdiv i32 %.sroa.speculated78, %.0
  %.sroa.speculated68 = tail call i32 @llvm.smax.i32(i32 %i.v, i32 1)
  %i.w = add nuw nsw i32 %.sroa.speculated68, 3
  %i.x = and i32 %i.w, 2147483644
  %.sroa.speculated74 = tail call i32 @llvm.smin.i32(i32 %i.x, i32 %.sroa.speculated78)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge = phi i32 [ %.sroa.speculated74, %bb.d ], [ %.sroa.speculated78, %bb.c ] ; 2 uses
  store i32 %storemerge, ptr %3, align 4, !tbaa !78
  %i.y = tail call fast noundef nofpclass(nan inf) float @llvm.sqrt.f32(float nofpclass(nan inf) %i.f)
  %i.z = sitofp fast i32 %storemerge to float
  %i.aa = fsub fast float %i.y, %i.z
  %i.ab = fptosi float %i.aa to i32
  %i.ac = sdiv i32 %i.ab, 4
  %i.ad = shl nsw i32 %i.ac, 2
  %.sroa.speculated62 = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 4) ; 3 uses
  %i.ae = add i32 %2, -1                          ; 2 uses
  %i.af = add i32 %i.ae, %.sroa.speculated62
  %i.ag = sdiv i32 %i.af, %.sroa.speculated62     ; 2 uses
  %i.ah = add i32 %i.ae, %i.ag
  %i.ai = sdiv i32 %i.ah, %i.ag
  %i.aj = add nsw i32 %i.ai, 3
  %i.ak = sdiv i32 %i.aj, 4
  %i.al = shl nsw i32 %i.ak, 2
  %.sroa.speculated58 = tail call i32 @llvm.smin.i32(i32 %i.al, i32 %.sroa.speculated62) ; 3 uses
  store i32 %.sroa.speculated58, ptr %5, align 4, !tbaa !78
  %i.am = icmp sgt i32 %1, 0
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = load i32, ptr %3, align 4, !tbaa !78    ; 2 uses
  %i.ao = mul nsw i32 %i.an, %.sroa.speculated58
  %i.ap = sitofp fast i32 %i.ao to float
  %i.aq = fsub fast float %i.f, %i.ap
  %i.ar = add nsw i32 %i.an, %.sroa.speculated58
  %i.as = sitofp fast i32 %i.ar to float
  %i.at = fdiv fast float %i.aq, %i.as
  %i.au = fptosi float %i.at to i32
  %i.av = sdiv i32 %i.au, 4
  %i.aw = shl nsw i32 %i.av, 2
  %.sroa.speculated52 = tail call i32 @llvm.smax.i32(i32 %i.aw, i32 4) ; 3 uses
  %i.ax = add nsw i32 %1, -1                      ; 2 uses
  %i.ay = add nuw i32 %i.ax, %.sroa.speculated52
  %i.az = udiv i32 %i.ay, %.sroa.speculated52     ; 2 uses
  %i.ba = add nuw i32 %i.ax, %i.az
  %i.bb = udiv i32 %i.ba, %i.az
  %i.bc = add nuw nsw i32 %i.bb, 3
  %i.bd = and i32 %i.bc, -4
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.bd, i32 %.sroa.speculated52)
  store i32 %.sroa.speculated, ptr %4, align 4, !tbaa !78
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
  %i.e = load i32, ptr %2, align 4, !tbaa !78     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !78
  %i.h = load i32, ptr %0, align 4, !tbaa !78     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !78
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !78
  %i.k = load i32, ptr %i.a, align 4, !tbaa !78   ; 2 uses
  %.not124 = icmp sgt i32 %i.k, %i.j
  br i1 %.not124, label %._crit_edge, label %.lr.ph126

.lr.ph126:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph126, %_ZN4ncnn3MatD2Ev.exit
  %.033125 = phi i32 [ %i.k, %.lr.ph126 ], [ %i.bk, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.r = load i32, ptr %3, align 4, !tbaa !78
  %i.s = mul i32 %i.r, %.033125                   ; 3 uses
  %i.t = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %_ZN4ncnn3Mat7channelEi.exit49 unwind label %bb.h

_ZN4ncnn3Mat7channelEi.exit49:                    ; preds = %bb.c
  %i.u = load ptr, ptr %4, align 8, !tbaa !34, !noalias !467 ; 2 uses
  %i.v = load i64, ptr %i.l, align 8, !tbaa !35, !noalias !467
  %i.w = sext i32 %i.t to i64
  %i.x = mul i64 %i.v, %i.w
  %i.y = load i64, ptr %i.m, align 8, !tbaa !76, !noalias !467
  %i.z = mul i64 %i.x, %i.y                       ; 2 uses
  %i.aa = getelementptr i8, ptr %i.u, i64 %i.z    ; 4 uses
  %i.ab = load i32, ptr %5, align 4, !tbaa !78    ; 6 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph:                                           ; preds = %_ZN4ncnn3Mat7channelEi.exit49
  %i.ad = load i32, ptr %7, align 4, !tbaa !78
  %i.ae = sub i32 %i.ad, %i.s
  %i.af = load i32, ptr %3, align 4, !tbaa !78    ; 2 uses
  %.sroa.speculated82 = call i32 @llvm.smin.i32(i32 %i.af, i32 %i.ae) ; 9 uses
  %i.ag = load i32, ptr %6, align 4, !tbaa !78    ; 8 uses
  %i.ah = icmp sgt i32 %.sroa.speculated82, 0
  %wide.trip.count28.i = zext nneg i32 %.sroa.speculated82 to i64
  %i.ai = sdiv i32 %i.s, %i.af
  %i.aj = load i32, ptr %i.n, align 4, !tbaa !86, !noalias !468
  %i.ak = load i32, ptr %i.o, align 8, !tbaa !87, !noalias !468
  %i.al = load ptr, ptr %10, align 8, !tbaa !34, !noalias !468
  %i.am = load i64, ptr %i.p, align 8, !tbaa !35, !noalias !468
  %i.an = sext i32 %i.ai to i64
  %i.ao = mul i64 %i.am, %i.an
  %i.ap = load i64, ptr %i.q, align 8, !tbaa !76, !noalias !468 ; 2 uses
  %i.aq = mul i64 %i.ao, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aq
  %i.as = sext i32 %i.aj to i64
  %i.at = sext i32 %i.ak to i64
  %i.au = mul i64 %i.ap, %i.as                    ; 2 uses
  %i.av = mul i64 %i.au, %i.at
  %i.aw = icmp sgt i32 %.sroa.speculated82, 3
  %i.ax = and i32 %.sroa.speculated82, -4         ; 3 uses
  %i.ay = sext i32 %.sroa.speculated82 to i64     ; 4 uses
  %i.az = add i32 %.sroa.speculated82, -2
  %i.ba = or disjoint i32 %i.ax, 1
  %i.bb = icmp slt i32 %i.ba, %.sroa.speculated82
  %invariant.op.i = add nsw i64 %i.ay, -3
  %invariant.op70.i = add nsw i64 %i.ay, -1
  %i.bc = sext i32 %i.ag to i64                   ; 2 uses
  %i.bd = zext nneg i32 %i.ab to i64
  %i.be = sub i32 0, %i.ag                        ; 2 uses
  %i.bf = shl nsw i64 %i.ay, 2
  %i.bg = add nsw i64 %i.bf, -4
  %i.bh = mul nsw i64 %i.bc, 36
  %i.bi = getelementptr i8, ptr %i.u, i64 %i.z
  %i.bj = getelementptr i8, ptr %i.bi, i64 4
  br label %bb.d

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnn3MatD2Ev.exit34, %_ZN4ncnn3Mat7channelEi.exit49
  %i.bk = add i32 %.033125, 1
  %i.bl = load i32, ptr %i.b, align 4, !tbaa !78
  %.not.not = icmp slt i32 %.033125, %i.bl
  br i1 %.not.not, label %bb.c, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit34
  %indvar167 = phi i64 [ 0, %.lr.ph ], [ %indvar.next168, %_ZN4ncnn3MatD2Ev.exit34 ] ; 4 uses
  %indvar = phi i32 [ 0, %.lr.ph ], [ %indvar.next, %_ZN4ncnn3MatD2Ev.exit34 ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit34 ] ; 8 uses
  %i.bm = trunc i64 %indvar167 to i32
  %i.bn = mul i32 %i.ag, %i.bm
  %i.bo = sub i32 %i.ab, %i.bn
  %smin198 = call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.bo)
  %i.bp = add i32 %smin198, -1                    ; 2 uses
  %i.bq = mul i64 %i.bh, %indvar167               ; 2 uses
  %i.br = trunc i64 %indvar167 to i32
  %i.bs = mul i32 %i.br, %i.be
  %i.bt = add i32 %i.bs, %i.ab
  %smin169 = call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.bt)
  %i.bu = zext i32 %smin169 to i64                ; 2 uses
  %i.bv = mul nuw nsw i64 %i.bu, 36
  %i.bw = shl nuw nsw i64 %i.bu, 8
  %i.bx = mul i32 %indvar, %i.be
  %i.by = add i32 %i.ab, %i.bx
end_hunk_1
begin_hunk_2_@_ZN4ncnnL18convolution_packedERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.nm = select <4 x i1> %i.nl, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.nn = fsub fast <4 x float> %i.nk, %i.nm      ; 2 uses
  %i.no = fmul fast <4 x float> %i.nn, splat (float f0x3F317218)
  %i.np = fsub fast <4 x float> %i.ng, %i.no      ; 8 uses
  %i.nq = fmul fast <4 x float> %i.np, %i.np
  %i.nr = fmul fast <4 x float> %i.np, splat (float f0x39506967)
  %i.ns = fadd fast <4 x float> %i.nr, splat (float f0x3AB743CE)
  %i.nt = fmul fast <4 x float> %i.ns, %i.np
  %i.nu = fadd fast <4 x float> %i.nt, splat (float f0x3C088908)
  %i.nv = fmul fast <4 x float> %i.nu, %i.np
  %i.nw = fadd fast <4 x float> %i.nv, splat (float f0x3D2AA9C1)
  %i.nx = fmul fast <4 x float> %i.nw, %i.np
  %i.ny = fadd fast <4 x float> %i.nx, splat (float f0x3E2AAAAA)
  %i.nz = fmul fast <4 x float> %i.ny, %i.np
  %i.oa = fadd fast <4 x float> %i.nz, splat (float 5.000000e-01)
  %i.ob = fmul fast <4 x float> %i.nq, %i.oa
  %i.oc = fadd fast <4 x float> %i.np, splat (float 1.000000e+00)
  %i.od = fadd fast <4 x float> %i.oc, %i.ob
  %i.oe = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.nn)
  %i.of = shl <4 x i32> %i.oe, splat (i32 23)
  %i.og = add <4 x i32> %i.of, splat (i32 1065353216)
  %i.oh = bitcast <4 x i32> %i.og to <4 x float>
  %i.oi = fmul fast <4 x float> %i.od, %i.oh
  %i.oj = fadd fast <4 x float> %i.oi, splat (float 1.000000e+00) ; 2 uses
  %i.ok = fcmp fast ole <4 x float> %i.oj, zeroinitializer
  %i.ol = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.oj, <4 x float> splat (float f0x00800000))
  %i.om = bitcast <4 x float> %i.ol to <4 x i32>  ; 2 uses
  %i.on = lshr <4 x i32> %i.om, splat (i32 23)
  %i.oo = and <4 x i32> %i.om, splat (i32 -2139095041)
  %i.op = or disjoint <4 x i32> %i.oo, splat (i32 1056964608)
  %i.oq = bitcast <4 x i32> %i.op to <4 x float>  ; 3 uses
  %i.or = add nsw <4 x i32> %i.on, splat (i32 -127)
  %i.os = sitofp fast <4 x i32> %i.or to <4 x float> ; 2 uses
  %i.ot = fadd fast <4 x float> %i.os, splat (float 1.000000e+00)
  %i.ou = fcmp fast olt <4 x float> %i.oq, splat (float f0x3F3504F3) ; 2 uses
  %i.ov = select <4 x i1> %i.ou, <4 x float> %i.oq, <4 x float> zeroinitializer
  %i.ow = fadd fast <4 x float> %i.oq, splat (float -1.000000e+00)
  %i.ox = select fast <4 x i1> %i.ou, <4 x float> %i.os, <4 x float> %i.ot
  %i.oy = fadd fast <4 x float> %i.ow, %i.ov      ; 12 uses
  %i.oz = fmul fast <4 x float> %i.oy, %i.oy
  %i.pa = fmul fast <4 x float> %i.oy, splat (float f0x3D9021BB)
  %i.pb = fadd fast <4 x float> %i.pa, splat (float f0xBDEBD1B8)
  %i.pc = fmul fast <4 x float> %i.pb, %i.oy
  %i.pd = fadd fast <4 x float> %i.pc, splat (float f0x3DEF251A)
  %i.pe = fmul fast <4 x float> %i.pd, %i.oy
  %i.pf = fadd fast <4 x float> %i.pe, splat (float f0xBDFE5D4F)
  %i.pg = fmul fast <4 x float> %i.pf, %i.oy
  %i.ph = fadd fast <4 x float> %i.pg, splat (float f0x3E11E9BF)
  %i.pi = fmul fast <4 x float> %i.ph, %i.oy
  %i.pj = fadd fast <4 x float> %i.pi, splat (float f0xBE2AAE50)
  %i.pk = fmul fast <4 x float> %i.pj, %i.oy
  %i.pl = fadd fast <4 x float> %i.pk, splat (float f0x3E4CCEAC)
  %i.pm = fmul fast <4 x float> %i.pl, %i.oy
  %i.pn = fadd fast <4 x float> %i.pm, splat (float f0xBE7FFFFC)
  %i.po = fmul fast <4 x float> %i.pn, %i.oy
  %i.pp = fadd fast <4 x float> %i.po, splat (float f0x3EAAAAAA)
  %i.pq = fmul fast <4 x float> %i.pp, %i.oy
  %reass.mul = fmul fast <4 x float> %i.ox, splat (float f0x3F317218)
  %reass.add422 = fadd fast <4 x float> %i.pq, splat (float -5.000000e-01)
  %reass.mul423 = fmul fast <4 x float> %i.oz, %reass.add422
  %i.pr = fadd fast <4 x float> %reass.mul, %i.oy
  %i.ps = fadd fast <4 x float> %i.pr, %reass.mul423
  %.neg = fmul fast <4 x float> %i.ps, splat (float -2.000000e+00)
  %i.pt = select fast <4 x i1> %i.ok, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.pu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.pt, <4 x float> splat (float f0x42B0C0A5))
  %i.pv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.pu, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.pw = fmul fast <4 x float> %i.pv, splat (float f0x3FB8AA3B)
  %i.px = fadd fast <4 x float> %i.pw, splat (float 5.000000e-01) ; 2 uses
  %i.py = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.px)
  %i.pz = sitofp fast <4 x i32> %i.py to <4 x float> ; 2 uses
  %i.qa = fcmp fast olt <4 x float> %i.px, %i.pz
  %i.qb = select <4 x i1> %i.qa, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.qc = fsub fast <4 x float> %i.pz, %i.qb      ; 2 uses
  %i.qd = fmul fast <4 x float> %i.qc, splat (float f0x3F317218)
  %i.qe = fsub fast <4 x float> %i.pv, %i.qd      ; 8 uses
  %i.qf = fmul fast <4 x float> %i.qe, %i.qe
  %i.qg = fmul fast <4 x float> %i.qe, splat (float f0x39506967)
  %i.qh = fadd fast <4 x float> %i.qg, splat (float f0x3AB743CE)
  %i.qi = fmul fast <4 x float> %i.qh, %i.qe
  %i.qj = fadd fast <4 x float> %i.qi, splat (float f0x3C088908)
  %i.qk = fmul fast <4 x float> %i.qj, %i.qe
  %i.ql = fadd fast <4 x float> %i.qk, splat (float f0x3D2AA9C1)
  %i.qm = fmul fast <4 x float> %i.ql, %i.qe
  %i.qn = fadd fast <4 x float> %i.qm, splat (float f0x3E2AAAAA)
  %i.qo = fmul fast <4 x float> %i.qn, %i.qe
  %i.qp = fadd fast <4 x float> %i.qo, splat (float 5.000000e-01)
  %i.qq = fmul fast <4 x float> %i.qf, %i.qp
  %i.qr = fadd fast <4 x float> %i.qe, splat (float 1.000000e+00)
  %i.qs = fadd fast <4 x float> %i.qr, %i.qq
  %i.qt = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.qc)
  %i.qu = shl <4 x i32> %i.qt, splat (i32 23)
  %i.qv = add <4 x i32> %i.qu, splat (i32 1065353216)
  %i.qw = bitcast <4 x i32> %i.qv to <4 x float>
  %i.qx = fmul fast <4 x float> %i.qs, %i.qw
  %i.qy = fadd fast <4 x float> %i.qx, splat (float 1.000000e+00)
  %i.qz = fdiv fast <4 x float> splat (float 2.000000e+00), %i.qy
  %i.ra = fadd fast <4 x float> %i.qz, splat (float -1.000000e+00)
  %i.rb = fmul fast <4 x float> %i.ra, %i.ld
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.i:                                             ; preds = %._crit_edge498
  %i.rc = load ptr, ptr %14, align 8, !tbaa !34   ; 2 uses
  %i.rd = load float, ptr %i.rc, align 4, !tbaa !53
  %i.re = insertelement <4 x float> poison, float %i.rd, i64 0
  %i.rf = shufflevector <4 x float> %i.re, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rc, i64 4
  %i.rh = load float, ptr %i.rg, align 4, !tbaa !53
  %i.ri = insertelement <4 x float> poison, float %i.rh, i64 0
  %i.rj = shufflevector <4 x float> %i.ri, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rk = fmul fast <4 x float> %i.rf, %i.ld
  %i.rl = fadd fast <4 x float> %i.rk, %i.rj
  %i.rm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.rl, <4 x float> zeroinitializer)
  %i.rn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.rm, <4 x float> splat (float 1.000000e+00))
  %i.ro = fmul fast <4 x float> %i.rn, %i.ld
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %bb.i, %.noexc179, %.noexc178, %bb.h, %.noexc177, %bb.g, %._crit_edge498
  %.0.i = phi nsz <4 x float> [ %i.ro, %bb.i ], [ %i.lf, %bb.g ], [ %i.ln, %.noexc177 ], [ %i.lx, %bb.h ], [ %i.ne, %.noexc178 ], [ %i.rb, %.noexc179 ], [ %i.ld, %._crit_edge498 ] ; 5 uses
  switch i32 %i.af, label %bb.k [
    i32 4, label %.thread
    i32 1, label %bb.j
  ]

.thread:                                          ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  store <4 x float> %.0.i, ptr %.1132507, align 1, !tbaa !108
  %i.rp = getelementptr inbounds nuw i8, ptr %.1132507, i64 16
  br label %bb.k

bb.j:                                             ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %.sroa.0.0.vec.extract = extractelement <4 x float> %.0.i, i64 0
  store float %.sroa.0.0.vec.extract, ptr %.1132507, align 4, !tbaa !53
  %.sroa.0.4.vec.extract = extractelement <4 x float> %.0.i, i64 1
  %i.rq = load i64, ptr %15, align 8, !tbaa !104  ; 3 uses
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %.1132507, i64 %i.rq
  store float %.sroa.0.4.vec.extract, ptr %i.rr, align 4, !tbaa !53
  %.sroa.0.8.vec.extract = extractelement <4 x float> %.0.i, i64 2
  %.idx = shl i64 %i.rq, 3
  %i.rs = getelementptr inbounds nuw i8, ptr %.1132507, i64 %.idx
  store float %.sroa.0.8.vec.extract, ptr %i.rs, align 4, !tbaa !53
  %.sroa.0.12.vec.extract = extractelement <4 x float> %.0.i, i64 3
  %.idx138 = mul i64 %i.rq, 12
  %i.rt = getelementptr inbounds nuw i8, ptr %.1132507, i64 %.idx138
  store float %.sroa.0.12.vec.extract, ptr %i.rt, align 4, !tbaa !53
  %i.ru = getelementptr inbounds nuw i8, ptr %.1132507, i64 4
  br label %bb.k

bb.k:                                             ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit, %.thread, %bb.j
  %.3134 = phi ptr [ %i.ru, %bb.j ], [ %.1132507, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ %i.rp, %.thread ] ; 2 uses
  %i.rv = add nuw nsw i32 %.0129508, 1            ; 2 uses
  %exitcond566.not = icmp eq i32 %i.rv, %i.ae
  br i1 %exitcond566.not, label %._crit_edge, label %bb.c, !llvm.loop !1173

._crit_edge516:                                   ; preds = %._crit_edge513.split, %_ZN4ncnn3MatD2Ev.exit150.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge516, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #18

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #19

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.tanh.f32(float) #22

declare void @_ZN4ncnn7flattenERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare void @_ZN4ncnn9ParamDict3setEiRKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %4) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiRiS0_S0_i.exit:
  %5 = alloca i32, align 4                        ; 2 uses
  %6 = alloca i32, align 4                        ; 5 uses
  %7 = alloca i32, align 4                        ; 5 uses
  %8 = alloca i32, align 4                        ; 6 uses
  %9 = alloca i32, align 4                        ; 4 uses
  %10 = alloca i32, align 4                       ; 6 uses
  %11 = alloca i32, align 4                       ; 5 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %13 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 %2, ptr %5, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  store i32 %3, ptr %6, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  store i32 %2, ptr %7, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %15 = load i32, ptr %14, align 4, !tbaa !58
  call fastcc void @_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiRiS0_S0_i(i32 noundef %3, i32 noundef 0, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull align 4 dereferenceable(4) %10, i32 noundef %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %16 = load i32, ptr %8, align 4, !tbaa !78      ; 6 uses
  %i.a = add i32 %3, -1
  %i.b = add i32 %i.a, %16
  %i.c = sdiv i32 %i.b, %16
  store i32 %i.c, ptr %11, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.d = mul nsw i32 %16, 36
  %17 = load i32, ptr %10, align 4, !tbaa !78     ; 4 uses
  %i.e = mul nsw i32 %i.d, %17
  %i.f = load i32, ptr %14, align 4, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %12, i64 64
  store i64 0, ptr %i.i, align 8, !tbaa !35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %12, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.h, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %12, i32 noundef %i.e, i32 noundef 1, i32 noundef %i.f, i64 noundef 4, ptr noundef null)
  %i.j = mul nsw i32 %16, %17
  %18 = add i32 %17, -1
  %19 = add i32 %18, %2
  %20 = sdiv i32 %19, %17
  %i.k = add i32 %16, -1
  %i.l = add i32 %i.k, %3
  %i.m = sdiv i32 %i.l, %16
  invoke void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.j, i32 noundef 36, i32 noundef %20, i32 noundef %i.m, i64 noundef 4, ptr noundef null)
          to label %bb.a unwind label %bb.h

bb.a:                                             ; preds = %_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiRiS0_S0_i.exit
  %i.n = load i32, ptr %14, align 4, !tbaa !58
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %13, i32 %i.n)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined, ptr nonnull %11, ptr nonnull %8, ptr nonnull %12, ptr nonnull %7, ptr nonnull %10, ptr nonnull %6, ptr nonnull %0, ptr nonnull %5, ptr nonnull %1)
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !32   ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = atomicrmw add ptr %i.o, i32 -1 acq_rel, align 4
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %bb.c, label %_ZN4ncnn3MatD2Ev.exit8

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !33   ; 3 uses
  %.not3.i = icmp eq ptr %i.r, null
  %i.s = load ptr, ptr %12, align 8, !tbaa !34    ; 3 uses
  br i1 %.not3.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !26
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  invoke void %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef %i.s)
          to label %_ZN4ncnn3MatD2Ev.exit8 unwind label %bb.g, !inline_history !0

bb.e:                                             ; preds = %bb.c
  %.not.i14 = icmp eq ptr %i.s, null
  br i1 %.not.i14, label %_ZN4ncnn3MatD2Ev.exit8, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef nonnull %i.s) #12
  br label %_ZN4ncnn3MatD2Ev.exit8

bb.g:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit8:                           ; preds = %bb.b, %bb.a, %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  ret void

bb.h:                                             ; preds = %_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiRiS0_S0_i.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !32   ; 2 uses
  %.not.i9 = icmp eq ptr %i.z, null
  br i1 %.not.i9, label %_ZN4ncnn3MatD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = atomicrmw add ptr %i.z, i32 -1 acq_rel, align 4
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %bb.j, label %_ZN4ncnn3MatD2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !33  ; 3 uses
  %.not3.i10 = icmp eq ptr %i.ac, null
  %i.ad = load ptr, ptr %12, align 8, !tbaa !34   ; 3 uses
  br i1 %.not3.i10, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !26
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef %i.ad)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.n, !inline_history !0

bb.l:                                             ; preds = %bb.j
  %.not.i13 = icmp eq ptr %i.ad, null
  br i1 %.not.i13, label %_ZN4ncnn3MatD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef nonnull %i.ad) #12
  br label %_ZN4ncnn3MatD2Ev.exit

bb.n:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.i, %bb.h, %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL42conv3x3s1_winograd23_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %4) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiRiS0_S0_i.exit:
  %5 = alloca i32, align 4                        ; 2 uses
  %6 = alloca i32, align 4                        ; 5 uses
  %7 = alloca i32, align 4                        ; 5 uses
  %8 = alloca i32, align 4                        ; 6 uses
  %9 = alloca i32, align 4                        ; 4 uses
  %10 = alloca i32, align 4                       ; 6 uses
  %11 = alloca i32, align 4                       ; 5 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %13 = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 %2, ptr %5, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  store i32 %3, ptr %6, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  store i32 %2, ptr %7, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %15 = load i32, ptr %14, align 4, !tbaa !58
  call fastcc void @_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiRiS0_S0_i(i32 noundef %3, i32 noundef 0, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull align 4 dereferenceable(4) %10, i32 noundef %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %16 = load i32, ptr %8, align 4, !tbaa !78      ; 6 uses
  %i.a = add i32 %3, -1
  %i.b = add i32 %i.a, %16
  %i.c = sdiv i32 %i.b, %16
  store i32 %i.c, ptr %11, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  %i.d = shl nsw i32 %16, 4
  %17 = load i32, ptr %10, align 4, !tbaa !78     ; 4 uses
  %i.e = mul nsw i32 %i.d, %17
  %i.f = load i32, ptr %14, align 4, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %12, i64 64
  store i64 0, ptr %i.i, align 8, !tbaa !35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %12, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.h, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %12, i32 noundef %i.e, i32 noundef 1, i32 noundef %i.f, i64 noundef 2, ptr noundef null)
  %i.j = mul nsw i32 %16, %17
  %18 = add i32 %17, -1
  %19 = add i32 %18, %2
  %20 = sdiv i32 %19, %17
  %i.k = add i32 %16, -1
  %i.l = add i32 %i.k, %3
  %i.m = sdiv i32 %i.l, %16
  invoke void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.j, i32 noundef 16, i32 noundef %20, i32 noundef %i.m, i64 noundef 2, ptr noundef null)
          to label %bb.a unwind label %bb.h

bb.a:                                             ; preds = %_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiRiS0_S0_i.exit
  %i.n = load i32, ptr %14, align 4, !tbaa !58
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %13, i32 %i.n)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL42conv3x3s1_winograd23_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined, ptr nonnull %11, ptr nonnull %8, ptr nonnull %12, ptr nonnull %7, ptr nonnull %10, ptr nonnull %6, ptr nonnull %0, ptr nonnull %5, ptr nonnull %1)
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !32   ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = atomicrmw add ptr %i.o, i32 -1 acq_rel, align 4
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %bb.c, label %_ZN4ncnn3MatD2Ev.exit8

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !33   ; 3 uses
  %.not3.i = icmp eq ptr %i.r, null
  %i.s = load ptr, ptr %12, align 8, !tbaa !34    ; 3 uses
  br i1 %.not3.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !26
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  invoke void %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef %i.s)
          to label %_ZN4ncnn3MatD2Ev.exit8 unwind label %bb.g, !inline_history !0

bb.e:                                             ; preds = %bb.c
  %.not.i14 = icmp eq ptr %i.s, null
  br i1 %.not.i14, label %_ZN4ncnn3MatD2Ev.exit8, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef nonnull %i.s) #12
  br label %_ZN4ncnn3MatD2Ev.exit8

bb.g:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit8:                           ; preds = %bb.b, %bb.a, %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  ret void

bb.h:                                             ; preds = %_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiRiS0_S0_i.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !32   ; 2 uses
  %.not.i9 = icmp eq ptr %i.z, null
  br i1 %.not.i9, label %_ZN4ncnn3MatD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = atomicrmw add ptr %i.z, i32 -1 acq_rel, align 4
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %bb.j, label %_ZN4ncnn3MatD2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !33  ; 3 uses
  %.not3.i10 = icmp eq ptr %i.ac, null
  %i.ad = load ptr, ptr %12, align 8, !tbaa !34   ; 3 uses
  br i1 %.not3.i10, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !26
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef %i.ad)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.n, !inline_history !0

bb.l:                                             ; preds = %bb.j
  %.not.i13 = icmp eq ptr %i.ad, null
  br i1 %.not.i13, label %_ZN4ncnn3MatD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef nonnull %i.ad) #12
  br label %_ZN4ncnn3MatD2Ev.exit

bb.n:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #27
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.i, %bb.h, %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiRiS0_S0_i(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %5, i32 noundef %6) unnamed_addr #2 {
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
  %7 = sdiv i32 %i.i, 4
  %8 = shl nsw i32 %7, 2
  %.sroa.speculated86 = tail call i32 @llvm.smax.i32(i32 %8, i32 4)
  store i32 %.sroa.speculated86, ptr %3, align 4, !tbaa !78
  %i.j = tail call noundef i32 @_ZN4ncnn22get_physical_cpu_countEv()
  %.sroa.speculated82 = tail call i32 @llvm.smin.i32(i32 %i.j, i32 %.0)
  %i.k = load i32, ptr %3, align 4, !tbaa !78
  %i.l = mul nsw i32 %i.k, %.sroa.speculated82    ; 3 uses
  %i.m = add i32 %0, -1                           ; 2 uses
  %i.n = add i32 %i.m, %i.l
  %i.o = sdiv i32 %i.n, %i.l                      ; 2 uses
  %i.p = add i32 %i.m, %i.o
  %i.q = sdiv i32 %i.p, %i.o
  %i.r = add nsw i32 %i.q, 3
  %i.s = sdiv i32 %i.r, 4
  %i.t = shl nsw i32 %i.s, 2
  %.sroa.speculated78 = tail call i32 @llvm.smin.i32(i32 %i.t, i32 %i.l) ; 3 uses
  %i.u = icmp sgt i32 %.0, 1
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = sdiv i32 %.sroa.speculated78, %.0
  %.sroa.speculated68 = tail call i32 @llvm.smax.i32(i32 %i.v, i32 1)
  %i.w = add nuw nsw i32 %.sroa.speculated68, 3
  %i.x = and i32 %i.w, 2147483644
  %.sroa.speculated74 = tail call i32 @llvm.smin.i32(i32 %i.x, i32 %.sroa.speculated78)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge = phi i32 [ %.sroa.speculated74, %bb.d ], [ %.sroa.speculated78, %bb.c ] ; 2 uses
  store i32 %storemerge, ptr %3, align 4, !tbaa !78
  %i.y = tail call fast noundef nofpclass(nan inf) float @llvm.sqrt.f32(float nofpclass(nan inf) %i.f)
  %i.z = sitofp fast i32 %storemerge to float
  %i.aa = fsub fast float %i.y, %i.z
  %i.ab = fptosi float %i.aa to i32
  %i.ac = sdiv i32 %i.ab, 4
  %i.ad = shl nsw i32 %i.ac, 2
  %.sroa.speculated62 = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 4) ; 3 uses
  %i.ae = add i32 %2, -1                          ; 2 uses
  %i.af = add i32 %i.ae, %.sroa.speculated62
  %i.ag = sdiv i32 %i.af, %.sroa.speculated62     ; 2 uses
  %i.ah = add i32 %i.ae, %i.ag
  %i.ai = sdiv i32 %i.ah, %i.ag
  %i.aj = add nsw i32 %i.ai, 3
  %i.ak = sdiv i32 %i.aj, 4
  %i.al = shl nsw i32 %i.ak, 2
  %.sroa.speculated58 = tail call i32 @llvm.smin.i32(i32 %i.al, i32 %.sroa.speculated62) ; 3 uses
  store i32 %.sroa.speculated58, ptr %5, align 4, !tbaa !78
  %i.am = icmp sgt i32 %1, 0
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = load i32, ptr %3, align 4, !tbaa !78    ; 2 uses
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
  store i32 %.sroa.speculated, ptr %4, align 4, !tbaa !78
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
  %i.e = load i32, ptr %2, align 4, !tbaa !78     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !78
  %i.h = load i32, ptr %0, align 4, !tbaa !78     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !78
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !78
  %i.k = load i32, ptr %i.a, align 4, !tbaa !78   ; 2 uses
  %.not138 = icmp sgt i32 %i.k, %i.j
  br i1 %.not138, label %._crit_edge, label %.lr.ph140

.lr.ph140:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph140, %_ZN4ncnn3MatD2Ev.exit
  %.033139 = phi i32 [ %i.k, %.lr.ph140 ], [ %i.be, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.r = load i32, ptr %3, align 4, !tbaa !78
  %i.s = mul i32 %i.r, %.033139                   ; 3 uses
  %i.t = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %_ZN4ncnn3Mat7channelEi.exit49 unwind label %bb.i

_ZN4ncnn3Mat7channelEi.exit49:                    ; preds = %bb.c
  %i.u = load ptr, ptr %4, align 8, !tbaa !34, !noalias !1194 ; 2 uses
  %i.v = load i64, ptr %i.l, align 8, !tbaa !35, !noalias !1194
  %i.w = sext i32 %i.t to i64
  %i.x = mul i64 %i.v, %i.w
  %i.y = load i64, ptr %i.m, align 8, !tbaa !76, !noalias !1194
  %i.z = mul i64 %i.x, %i.y                       ; 2 uses
  %i.aa = getelementptr i8, ptr %i.u, i64 %i.z    ; 4 uses
  %i.ab = load i32, ptr %5, align 4, !tbaa !78    ; 5 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph:                                           ; preds = %_ZN4ncnn3Mat7channelEi.exit49
  %i.ad = load i32, ptr %7, align 4, !tbaa !78
  %i.ae = sub i32 %i.ad, %i.s
  %i.af = load i32, ptr %3, align 4, !tbaa !78    ; 2 uses
  %.sroa.speculated83 = call i32 @llvm.smin.i32(i32 %i.af, i32 %i.ae) ; 6 uses
  %i.ag = load i32, ptr %6, align 4, !tbaa !78    ; 7 uses
  %i.ah = icmp sgt i32 %.sroa.speculated83, 0
  %wide.trip.count27.i = zext i32 %.sroa.speculated83 to i64 ; 3 uses
  %i.ai = sdiv i32 %i.s, %i.af
  %i.aj = load i32, ptr %i.n, align 4, !tbaa !86, !noalias !1195
  %i.ak = load i32, ptr %i.o, align 8, !tbaa !87, !noalias !1195
  %i.al = load ptr, ptr %10, align 8, !tbaa !34, !noalias !1195
  %i.am = load i64, ptr %i.p, align 8, !tbaa !35, !noalias !1195
  %i.an = sext i32 %i.ai to i64
  %i.ao = mul i64 %i.am, %i.an
  %i.ap = load i64, ptr %i.q, align 8, !tbaa !76, !noalias !1195 ; 2 uses
  %i.aq = mul i64 %i.ao, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aq
  %i.as = sext i32 %i.aj to i64
  %i.at = sext i32 %i.ak to i64
  %i.au = mul i64 %i.ap, %i.as                    ; 2 uses
  %i.av = mul i64 %i.au, %i.at
  %i.aw = icmp sgt i32 %.sroa.speculated83, 3
  %i.ax = sext i32 %.sroa.speculated83 to i64     ; 2 uses
  %invariant.op.i = add nsw i64 %i.ax, -3
  %invariant.op87.i = add nsw i64 %i.ax, -1
  %i.ay = sext i32 %i.ag to i64
  %i.az = zext nneg i32 %i.ab to i64
  %i.ba = shl nuw nsw i64 %wide.trip.count27.i, 1
  %i.bb = add nsw i64 %i.ba, -2
  %i.bc = getelementptr i8, ptr %i.u, i64 %i.z
  %i.bd = getelementptr i8, ptr %i.bc, i64 2
  br label %bb.d

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnn3MatD2Ev.exit34, %_ZN4ncnn3Mat7channelEi.exit49
  %i.be = add i32 %.033139, 1
  %i.bf = load i32, ptr %i.b, align 4, !tbaa !78
  %.not.not = icmp slt i32 %.033139, %i.bf
  br i1 %.not.not, label %bb.c, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit34
  %indvar = phi i32 [ 0, %.lr.ph ], [ %indvar.next, %_ZN4ncnn3MatD2Ev.exit34 ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit34 ] ; 4 uses
  %i.bg = mul i32 %i.ag, %indvar
  %i.bh = sub i32 %i.ab, %i.bg
  %smin186 = call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.bh) ; 3 uses
  %i.bi = add i32 %smin186, -2                    ; 2 uses
  %i.bj = lshr i32 %i.bi, 1                       ; 2 uses
  %i.bk = add nuw i32 %i.bj, 1                    ; 2 uses
  %i.bl = mul i32 %i.ag, %indvar
  %i.bm = sub i32 %i.ab, %i.bl
  %smin = call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.bm) ; 2 uses
  %i.bn = mul i32 %smin, 36                       ; 2 uses
  %i.bo = sext i32 %i.bn to i64                   ; 2 uses
  %i.bp = mul i64 %i.bb, %i.bo
  %i.bq = add i32 %smin, -1
  %i.br = zext i32 %i.bq to i64                   ; 2 uses
  %i.bs = mul nuw nsw i64 %i.br, 72
  %i.bt = shl nuw nsw i64 %i.br, 1
  %i.bu = trunc i64 %indvars.iv to i32
  %i.bv = sub i32 %i.ab, %i.bu
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.bv) ; 20 uses
  %.val = load ptr, ptr %8, align 8
  br i1 %i.ah, label %.preheader11.lr.ph.i, label %_ZN4ncnnL47conv3x3s1_winograd43_transform_kernel_tile_int8ERKNS_3MatERS0_iiiii.exit

.preheader11.lr.ph.i:                             ; preds = %bb.d
end_hunk_2
begin_hunk_3_@_ZN4ncnnL24convolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.nb = fmul fast <4 x float> %i.mw, %i.na
  %i.nc = fadd fast <4 x float> %i.nb, splat (float 1.000000e+00)
  %i.nd = fdiv fast <4 x float> splat (float 1.000000e+00), %i.nc
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

.noexc179:                                        ; preds = %._crit_edge510
  %i.ne = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.lc, <4 x float> splat (float f0x42B0C0A5))
  %i.nf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ne, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ng = fmul fast <4 x float> %i.nf, splat (float f0x3FB8AA3B)
  %i.nh = fadd fast <4 x float> %i.ng, splat (float 5.000000e-01) ; 2 uses
  %i.ni = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.nh)
  %i.nj = sitofp fast <4 x i32> %i.ni to <4 x float> ; 2 uses
  %i.nk = fcmp fast olt <4 x float> %i.nh, %i.nj
  %i.nl = select <4 x i1> %i.nk, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.nm = fsub fast <4 x float> %i.nj, %i.nl      ; 2 uses
  %i.nn = fmul fast <4 x float> %i.nm, splat (float f0x3F317218)
  %i.no = fsub fast <4 x float> %i.nf, %i.nn      ; 8 uses
  %i.np = fmul fast <4 x float> %i.no, %i.no
  %i.nq = fmul fast <4 x float> %i.no, splat (float f0x39506967)
  %i.nr = fadd fast <4 x float> %i.nq, splat (float f0x3AB743CE)
  %i.ns = fmul fast <4 x float> %i.nr, %i.no
  %i.nt = fadd fast <4 x float> %i.ns, splat (float f0x3C088908)
  %i.nu = fmul fast <4 x float> %i.nt, %i.no
  %i.nv = fadd fast <4 x float> %i.nu, splat (float f0x3D2AA9C1)
  %i.nw = fmul fast <4 x float> %i.nv, %i.no
  %i.nx = fadd fast <4 x float> %i.nw, splat (float f0x3E2AAAAA)
  %i.ny = fmul fast <4 x float> %i.nx, %i.no
  %i.nz = fadd fast <4 x float> %i.ny, splat (float 5.000000e-01)
  %i.oa = fmul fast <4 x float> %i.np, %i.nz
  %i.ob = fadd fast <4 x float> %i.no, splat (float 1.000000e+00)
  %i.oc = fadd fast <4 x float> %i.ob, %i.oa
  %i.od = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.nm)
  %i.oe = shl <4 x i32> %i.od, splat (i32 23)
  %i.of = add <4 x i32> %i.oe, splat (i32 1065353216)
  %i.og = bitcast <4 x i32> %i.of to <4 x float>
  %i.oh = fmul fast <4 x float> %i.oc, %i.og
  %i.oi = fadd fast <4 x float> %i.oh, splat (float 1.000000e+00) ; 2 uses
  %i.oj = fcmp fast ole <4 x float> %i.oi, zeroinitializer
  %i.ok = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.oi, <4 x float> splat (float f0x00800000))
  %i.ol = bitcast <4 x float> %i.ok to <4 x i32>  ; 2 uses
  %i.om = lshr <4 x i32> %i.ol, splat (i32 23)
  %i.on = and <4 x i32> %i.ol, splat (i32 -2139095041)
  %i.oo = or disjoint <4 x i32> %i.on, splat (i32 1056964608)
  %i.op = bitcast <4 x i32> %i.oo to <4 x float>  ; 3 uses
  %i.oq = add nsw <4 x i32> %i.om, splat (i32 -127)
  %i.or = sitofp fast <4 x i32> %i.oq to <4 x float> ; 2 uses
  %i.os = fadd fast <4 x float> %i.or, splat (float 1.000000e+00)
  %i.ot = fcmp fast olt <4 x float> %i.op, splat (float f0x3F3504F3) ; 2 uses
  %i.ou = select <4 x i1> %i.ot, <4 x float> %i.op, <4 x float> zeroinitializer
  %i.ov = fadd fast <4 x float> %i.op, splat (float -1.000000e+00)
  %i.ow = select fast <4 x i1> %i.ot, <4 x float> %i.or, <4 x float> %i.os
  %i.ox = fadd fast <4 x float> %i.ov, %i.ou      ; 12 uses
  %i.oy = fmul fast <4 x float> %i.ox, %i.ox
  %i.oz = fmul fast <4 x float> %i.ox, splat (float f0x3D9021BB)
  %i.pa = fadd fast <4 x float> %i.oz, splat (float f0xBDEBD1B8)
  %i.pb = fmul fast <4 x float> %i.pa, %i.ox
  %i.pc = fadd fast <4 x float> %i.pb, splat (float f0x3DEF251A)
  %i.pd = fmul fast <4 x float> %i.pc, %i.ox
  %i.pe = fadd fast <4 x float> %i.pd, splat (float f0xBDFE5D4F)
  %i.pf = fmul fast <4 x float> %i.pe, %i.ox
  %i.pg = fadd fast <4 x float> %i.pf, splat (float f0x3E11E9BF)
  %i.ph = fmul fast <4 x float> %i.pg, %i.ox
  %i.pi = fadd fast <4 x float> %i.ph, splat (float f0xBE2AAE50)
  %i.pj = fmul fast <4 x float> %i.pi, %i.ox
  %i.pk = fadd fast <4 x float> %i.pj, splat (float f0x3E4CCEAC)
  %i.pl = fmul fast <4 x float> %i.pk, %i.ox
  %i.pm = fadd fast <4 x float> %i.pl, splat (float f0xBE7FFFFC)
  %i.pn = fmul fast <4 x float> %i.pm, %i.ox
  %i.po = fadd fast <4 x float> %i.pn, splat (float f0x3EAAAAAA)
  %i.pp = fmul fast <4 x float> %i.po, %i.ox
  %reass.mul = fmul fast <4 x float> %i.ow, splat (float f0x3F317218)
  %reass.add434 = fadd fast <4 x float> %i.pp, splat (float -5.000000e-01)
  %reass.mul435 = fmul fast <4 x float> %i.oy, %reass.add434
  %i.pq = fadd fast <4 x float> %reass.mul, %i.ox
  %i.pr = fadd fast <4 x float> %i.pq, %reass.mul435
  %.neg = fmul fast <4 x float> %i.pr, splat (float -2.000000e+00)
  %i.ps = select fast <4 x i1> %i.oj, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.pt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ps, <4 x float> splat (float f0x42B0C0A5))
  %i.pu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.pt, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.pv = fmul fast <4 x float> %i.pu, splat (float f0x3FB8AA3B)
  %i.pw = fadd fast <4 x float> %i.pv, splat (float 5.000000e-01) ; 2 uses
  %i.px = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.pw)
  %i.py = sitofp fast <4 x i32> %i.px to <4 x float> ; 2 uses
  %i.pz = fcmp fast olt <4 x float> %i.pw, %i.py
  %i.qa = select <4 x i1> %i.pz, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.qb = fsub fast <4 x float> %i.py, %i.qa      ; 2 uses
  %i.qc = fmul fast <4 x float> %i.qb, splat (float f0x3F317218)
  %i.qd = fsub fast <4 x float> %i.pu, %i.qc      ; 8 uses
  %i.qe = fmul fast <4 x float> %i.qd, %i.qd
  %i.qf = fmul fast <4 x float> %i.qd, splat (float f0x39506967)
  %i.qg = fadd fast <4 x float> %i.qf, splat (float f0x3AB743CE)
  %i.qh = fmul fast <4 x float> %i.qg, %i.qd
  %i.qi = fadd fast <4 x float> %i.qh, splat (float f0x3C088908)
  %i.qj = fmul fast <4 x float> %i.qi, %i.qd
  %i.qk = fadd fast <4 x float> %i.qj, splat (float f0x3D2AA9C1)
  %i.ql = fmul fast <4 x float> %i.qk, %i.qd
  %i.qm = fadd fast <4 x float> %i.ql, splat (float f0x3E2AAAAA)
  %i.qn = fmul fast <4 x float> %i.qm, %i.qd
  %i.qo = fadd fast <4 x float> %i.qn, splat (float 5.000000e-01)
  %i.qp = fmul fast <4 x float> %i.qe, %i.qo
  %i.qq = fadd fast <4 x float> %i.qd, splat (float 1.000000e+00)
  %i.qr = fadd fast <4 x float> %i.qq, %i.qp
  %i.qs = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.qb)
  %i.qt = shl <4 x i32> %i.qs, splat (i32 23)
  %i.qu = add <4 x i32> %i.qt, splat (i32 1065353216)
  %i.qv = bitcast <4 x i32> %i.qu to <4 x float>
  %i.qw = fmul fast <4 x float> %i.qr, %i.qv
  %i.qx = fadd fast <4 x float> %i.qw, splat (float 1.000000e+00)
  %i.qy = fdiv fast <4 x float> splat (float 2.000000e+00), %i.qx
  %i.qz = fadd fast <4 x float> %i.qy, splat (float -1.000000e+00)
  %i.ra = fmul fast <4 x float> %i.qz, %i.lc
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

bb.k:                                             ; preds = %._crit_edge510
  %i.rb = load ptr, ptr %14, align 8, !tbaa !34   ; 2 uses
  %i.rc = load float, ptr %i.rb, align 4, !tbaa !53
  %i.rd = insertelement <4 x float> poison, float %i.rc, i64 0
  %i.re = shufflevector <4 x float> %i.rd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rf = getelementptr inbounds nuw i8, ptr %i.rb, i64 4
  %i.rg = load float, ptr %i.rf, align 4, !tbaa !53
  %i.rh = insertelement <4 x float> poison, float %i.rg, i64 0
  %i.ri = shufflevector <4 x float> %i.rh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rj = fmul fast <4 x float> %i.re, %i.lc
  %i.rk = fadd fast <4 x float> %i.rj, %i.ri
  %i.rl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.rk, <4 x float> zeroinitializer)
  %i.rm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.rl, <4 x float> splat (float 1.000000e+00))
  %i.rn = fmul fast <4 x float> %i.rm, %i.lc
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %bb.k, %.noexc179, %.noexc178, %bb.j, %.noexc177, %bb.i, %._crit_edge510
  %.0.i = phi nsz <4 x float> [ %i.rn, %bb.k ], [ %i.le, %bb.i ], [ %i.lm, %.noexc177 ], [ %i.lw, %bb.j ], [ %i.nd, %.noexc178 ], [ %i.ra, %.noexc179 ], [ %i.lc, %._crit_edge510 ] ; 2 uses
  switch i32 %i.af, label %bb.m [
    i32 4, label %.thread
    i32 1, label %bb.l
  ]

.thread:                                          ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %i.ro = bitcast <4 x float> %.0.i to <8 x i16>
  %i.rp = shufflevector <8 x i16> %i.ro, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.rq = bitcast <8 x i16> %i.rp to <4 x float>
  %i.rr = shufflevector <4 x float> %i.rq, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.rs = bitcast <4 x float> %i.rr to <2 x i64>
  %i.rt = extractelement <2 x i64> %i.rs, i64 0
  store i64 %i.rt, ptr %.1132519, align 1, !tbaa !108
  %i.ru = getelementptr inbounds nuw i8, ptr %.1132519, i64 8
  br label %bb.m

bb.l:                                             ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %i.rv = bitcast <4 x float> %.0.i to <8 x i16>  ; 4 uses
  %i.rw = extractelement <8 x i16> %i.rv, i64 1
  store i16 %i.rw, ptr %.1132519, align 2, !tbaa !110
  %i.rx = extractelement <8 x i16> %i.rv, i64 3
  %i.ry = load i64, ptr %15, align 8, !tbaa !104  ; 3 uses
  %i.rz = getelementptr inbounds nuw [2 x i8], ptr %.1132519, i64 %i.ry
  store i16 %i.rx, ptr %i.rz, align 2, !tbaa !110
  %i.sa = extractelement <8 x i16> %i.rv, i64 5
  %.idx = shl i64 %i.ry, 2
  %i.sb = getelementptr inbounds nuw i8, ptr %.1132519, i64 %.idx
  store i16 %i.sa, ptr %i.sb, align 2, !tbaa !110
  %i.sc = extractelement <8 x i16> %i.rv, i64 7
  %.idx138 = mul i64 %i.ry, 6
  %i.sd = getelementptr inbounds nuw i8, ptr %.1132519, i64 %.idx138
  store i16 %i.sc, ptr %i.sd, align 2, !tbaa !110
  %i.se = getelementptr inbounds nuw i8, ptr %.1132519, i64 2
  br label %bb.m

bb.m:                                             ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit, %.thread, %bb.l
  %.3134 = phi ptr [ %i.se, %bb.l ], [ %.1132519, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit ], [ %i.ru, %.thread ] ; 2 uses
  %i.sf = add nuw nsw i32 %.0129520, 1            ; 2 uses
  %exitcond578.not = icmp eq i32 %i.sf, %i.ae
  br i1 %exitcond578.not, label %._crit_edge, label %bb.c, !llvm.loop !1980

._crit_edge528:                                   ; preds = %._crit_edge525.split, %_ZN4ncnn3MatD2Ev.exit150.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge528, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smulh.v8i16(<8 x i16>, <8 x i16>) #13

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.exp.v2f32(<2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.log.v2f32(<2 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.tanh.v2f32(<2 x float>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.minnum.v4f32(<4 x float>, <4 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.exp.v4f32(<4 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.maxnum.v8f32(<8 x float>, <8 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.minnum.v8f32(<8 x float>, <8 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.exp.v8f32(<8 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.log.v8f32(<8 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.tanh.v8f32(<8 x float>) #22

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #24 = { nofree nounwind }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { noreturn nounwind }
attributes #28 = { builtin nounwind }
attributes #29 = { cold nounwind }
attributes #30 = { noreturn }
attributes #31 = { builtin allocsize(0) }

!llvm.module.flags = !{!16, !17, !18}
!llvm.ident = !{!19}
!llvm.errno.tbaa = !{!24}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = distinct !{!2, !93}
!3 = distinct !{!3, !93}
!4 = distinct !{!4, !93}
!5 = distinct !{!5, !93}
!6 = distinct !{!6, !93}
!7 = distinct !{!7, !93}
!8 = distinct !{!8, !93}
!9 = distinct !{!9, !93}
!10 = distinct !{!10, !93}
!11 = distinct !{!11, !93}
!12 = distinct !{!12, !93}
!13 = distinct !{!13, !93}
!14 = distinct !{!14, !93}
!15 = distinct !{!15, !93}
!16 = !{i32 7, !"openmp", i32 51}
!17 = !{i32 8, !"PIC Level", i32 2}
!18 = !{i32 7, !"uwtable", i32 2}
!19 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!20 = !{!"Simple C++ TBAA"}
!21 = !{!"omnipotent char", !20, i64 0}
!22 = !{!"int", !21, i64 0}
!23 = !{!"__libc_errno", !22, i64 0}
!24 = !{!23, !22, i64 0}
!25 = !{!"vtable pointer", !20, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"any pointer", !21, i64 0}
!28 = !{!"p1 int", !27, i64 0}
!29 = !{!"long", !21, i64 0}
!30 = !{!"p1 _ZTSN4ncnn9AllocatorE", !27, i64 0}
!31 = !{!"_ZTSN4ncnn3MatE", !27, i64 0, !28, i64 8, !29, i64 16, !22, i64 24, !30, i64 32, !22, i64 40, !22, i64 44, !22, i64 48, !22, i64 52, !22, i64 56, !29, i64 64}
!32 = !{!31, !28, i64 8}
!33 = !{!31, !30, i64 32}
!34 = !{!31, !27, i64 0}
!35 = !{!31, !29, i64 64}
!36 = !{!"bool", !21, i64 0}
!37 = !{!"p1 omnipotent char", !27, i64 0}
!38 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !37, i64 0}
!39 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !38, i64 0, !29, i64 8, !21, i64 16}
!40 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !28, i64 0, !28, i64 8, !28, i64 16}
!41 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !40, i64 0}
!42 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !41, i64 0}
!43 = !{!"_ZTSSt6vectorIiSaIiEE", !42, i64 0}
!44 = !{!"p1 _ZTSN4ncnn3MatE", !27, i64 0}
!45 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!46 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !45, i64 0}
!47 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !46, i64 0}
!48 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !47, i64 0}
!49 = !{!"_ZTSN4ncnn5LayerE", !36, i64 8, !36, i64 9, !36, i64 10, !36, i64 11, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15, !36, i64 16, !36, i64 17, !36, i64 18, !36, i64 19, !36, i64 20, !36, i64 21, !36, i64 22, !36, i64 23, !36, i64 24, !36, i64 25, !36, i64 26, !36, i64 27, !22, i64 28, !27, i64 32, !22, i64 40, !39, i64 48, !39, i64 80, !43, i64 112, !43, i64 136, !48, i64 160, !48, i64 184}
!50 = !{!"float", !21, i64 0}
!51 = !{!"_ZTSN4ncnn11ConvolutionE", !49, i64 0, !22, i64 208, !22, i64 212, !22, i64 216, !22, i64 220, !22, i64 224, !22, i64 228, !22, i64 232, !22, i64 236, !22, i64 240, !22, i64 244, !22, i64 248, !50, i64 252, !22, i64 256, !22, i64 260, !22, i64 264, !22, i64 268, !31, i64 272, !22, i64 344, !31, i64 352, !31, i64 424, !31, i64 496, !31, i64 568, !31, i64 640}
!52 = !{!51, !22, i64 268}
!53 = !{!50, !50, i64 0}
!54 = !{!"p1 _ZTSN4ncnn5LayerE", !27, i64 0}
!55 = !{!"_ZTSN4ncnn15Convolution_x86E", !51, i64 0, !54, i64 712, !22, i64 720, !31, i64 728, !31, i64 800, !31, i64 872, !31, i64 944, !31, i64 1016, !54, i64 1088, !31, i64 1096}
!56 = !{!55, !54, i64 712}
!57 = !{!"_ZTSN4ncnn6OptionE", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !22, i64 4, !30, i64 8, !30, i64 16, !22, i64 24, !36, i64 28, !36, i64 29, !36, i64 30, !36, i64 31, !36, i64 32, !36, i64 33, !36, i64 34, !36, i64 35, !36, i64 36, !36, i64 37, !36, i64 38, !36, i64 39, !22, i64 40, !36, i64 44, !36, i64 45, !36, i64 46, !36, i64 47, !21, i64 48, !36, i64 49, !36, i64 50, !36, i64 51, !36, i64 52, !36, i64 53, !36, i64 54, !36, i64 55, !36, i64 56, !36, i64 57, !36, i64 58, !36, i64 59, !36, i64 60, !36, i64 61, !36, i64 62, !36, i64 63}
!58 = !{!57, !22, i64 4}
!59 = !{!55, !22, i64 720}
!60 = !{!57, !36, i64 30}
!61 = !{i8 0, i8 2}
!62 = !{}
!63 = !{!57, !36, i64 32}
!64 = !{!51, !22, i64 212}
!65 = !{!51, !22, i64 216}
!66 = !{!51, !22, i64 260}
!67 = !{!51, !22, i64 208}
!68 = !{!57, !36, i64 39}
!69 = !{!51, !22, i64 220}
!70 = !{!51, !22, i64 224}
!71 = !{!51, !22, i64 228}
!72 = !{!51, !22, i64 232}
!73 = !{!55, !54, i64 1088}
!74 = !{!51, !22, i64 256}
!75 = !{!27, !27, i64 0}
!76 = !{!31, !29, i64 16}
!77 = !{!31, !22, i64 24}
!78 = !{!22, !22, i64 0}
!79 = !{!31, !22, i64 56}
!80 = !{!57, !36, i64 0}
!81 = !{!57, !36, i64 55}
!82 = !{!57, !36, i64 56}
!83 = !{!57, !36, i64 57}
!84 = !{!57, !36, i64 28}
!85 = !{!44, !44, i64 0}
!86 = !{!31, !22, i64 44}
!87 = !{!31, !22, i64 48}
!88 = !{!51, !22, i64 236}
!89 = !{!51, !22, i64 240}
!90 = !{!51, !22, i64 244}
!91 = !{!51, !22, i64 248}
!92 = !{!57, !36, i64 29}
!93 = !{!"llvm.loop.mustprogress"}
!94 = !{!"llvm.loop.unroll.disable"}
!95 = !{!"llvm.loop.isvectorized", i32 1}
!96 = !{!"llvm.loop.unroll.runtime.disable"}
!97 = !{!51, !22, i64 264}
!98 = !{!31, !22, i64 40}
!99 = !{!31, !22, i64 52}
!100 = !{!57, !30, i64 16}
!101 = !{!57, !30, i64 8}
!102 = !{!"p1 _ZTS8_IO_FILE", !27, i64 0}
!103 = !{!102, !102, i64 0}
!104 = !{!29, !29, i64 0}
!105 = !{!28, !28, i64 0}
!106 = !{!"p1 float", !27, i64 0}
!107 = !{!106, !106, i64 0}
!108 = !{!21, !21, i64 0}
!109 = !{!"short", !21, i64 0}
end_hunk_3
