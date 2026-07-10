inline.NumInlined: 482
inline.NumDeleted: 180
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN4Mesh20print_partition_typeEv:bb.a
  br i1 %i.e, label %switch.lookup, label %bb.c

switch.lookup:                                    ; preds = %bb.b
  %i.f = zext nneg i32 %i.d to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4Mesh20print_partition_typeEv, i64 %i.f
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.g = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %switch.load) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %switch.lookup
  %i.h = load i32, ptr @cycle_reorder, align 4, !tbaa !4 ; 2 uses
  %i.i = icmp ult i32 %i.h, 4
  br i1 %i.i, label %switch.lookup3, label %bb.d

switch.lookup3:                                   ; preds = %bb.c
  %i.j = zext nneg i32 %i.h to i64
  %switch.gep4 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4Mesh20print_partition_typeEv.2, i64 %i.j
  %switch.load5 = load ptr, ptr %switch.gep4, align 8
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %switch.load5) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %switch.lookup3
  %i.l = load i8, ptr @localStencil, align 1, !tbaa !76, !range !77, !noundef !78
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Mesh15partition_cellsEiRSt6vectorIiSaIiEE16partition_method(ptr noundef nonnull align 8 dereferenceable(2288) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector", align 8       ; 10 uses
  %5 = alloca %struct.timeval, align 8            ; 12 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  invoke void @cpu_timer_start(ptr noundef nonnull %5)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1160 ; 10 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 0, ptr %i.a, align 4, !tbaa !4
  %.not663 = icmp eq i64 %i.c, 0
  br i1 %.not663, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr null, i64 noundef %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit unwind label %bb.e

_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit:            ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 628 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !79
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.f, label %bb.k

bb.d:                                             ; preds = %bb.g, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit248.thread

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit248.thread

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 3 uses
  %i.i = load i64, ptr %i.b, align 8, !tbaa !8    ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !80   ; 2 uses
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !81   ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 2                   ; 3 uses
  %i.q = icmp ugt i64 %i.i, %i.p
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = sub nuw i64 %i.i, %i.p
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.r)
          to label %_ZNSt6vectorIiSaIiEE6resizeEm.exit unwind label %bb.d

bb.h:                                             ; preds = %bb.f
  %i.s = icmp ult i64 %i.i, %i.p
  br i1 %i.s, label %bb.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.i ; 2 uses
  %.not.i.i175 = icmp eq ptr %i.k, %i.t
  br i1 %.not.i.i175, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i176

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i176:     ; preds = %bb.i
  store ptr %i.t, ptr %i.j, align 8, !tbaa !80
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i176, %bb.i, %bb.h, %bb.g
  %i.u = icmp sgt i32 %1, 0
  br i1 %i.u, label %.lr.ph20.i, label %_ZN4Mesh17calc_distributionEi.exit

.lr.ph20.i:                                       ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !80
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !81   ; 3 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 2                  ; 2 uses
  %i.ab = zext nneg i32 %1 to i64
  %i.ac = udiv i64 %i.aa, %i.ab
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = trunc i64 %i.aa to i32
  %i.af = srem i32 %i.ae, %1
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge.i, %.lr.ph20.i
  %.01318.i = phi i32 [ 0, %.lr.ph20.i ], [ %i.ao, %._crit_edge.i ] ; 4 uses
  %.01417.i = phi i32 [ 0, %.lr.ph20.i ], [ %spec.select.i, %._crit_edge.i ]
  %i.ag = add i32 %.01417.i, %i.ad
  %i.ah = icmp slt i32 %.01318.i, %i.af
  %i.ai = zext i1 %i.ah to i32
  %spec.select.i = add i32 %i.ag, %i.ai           ; 4 uses
  %i.aj = icmp sgt i32 %spec.select.i, 0
  br i1 %i.aj, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.j
  %i.ak = zext nneg i32 %spec.select.i to i64     ; 3 uses
  %min.iters.check = icmp ult i32 %spec.select.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.ak, 2147483640              ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.01318.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.al, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat, ptr %i.am, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !82

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ak
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %bb.j
  %i.ao = add nuw nsw i32 %.01318.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ao, %1
  br i1 %exitcond.not.i, label %_ZN4Mesh17calc_distributionEi.exit, label %bb.j, !llvm.loop !85

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i
  store i32 %.01318.i, ptr %i.ap, align 4, !tbaa !4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.aq = icmp samesign ult i64 %indvars.iv.next.i, %i.ak
  br i1 %i.aq, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !86

_ZN4Mesh17calc_distributionEi.exit:               ; preds = %._crit_edge.i, %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 636
  store i32 0, ptr %i.ar, align 4, !tbaa !87
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit, %_ZN4Mesh17calc_distributionEi.exit
  switch i32 %3, label %_ZNSt6vectorIiSaIiEED2Ev.exit [
    i32 0, label %.preheader
    i32 1, label %bb.l
    i32 3, label %bb.ao
  ]

.preheader:                                       ; preds = %bb.k
  %i.as = load i64, ptr %i.b, align 8, !tbaa !8   ; 6 uses
  %.not543 = icmp eq i64 %i.as, 0
  br i1 %.not543, label %._crit_edge538, label %.lr.ph537

.lr.ph537:                                        ; preds = %.preheader
  %i.at = load ptr, ptr %2, align 8, !tbaa !81    ; 2 uses
  %min.iters.check1076 = icmp ult i64 %i.as, 16
  br i1 %min.iters.check1076, label %scalar.ph1075.preheader, label %vector.scevcheck1074

vector.scevcheck1074:                             ; preds = %.lr.ph537
  %i.au = add i64 %i.as, -1                       ; 2 uses
  %i.av = and i64 %i.au, 4294967295
  %i.aw = icmp eq i64 %i.av, 4294967295
  %i.ax = icmp ugt i64 %i.au, 4294967295
  %i.ay = or i1 %i.aw, %i.ax
  br i1 %i.ay, label %scalar.ph1075.preheader, label %vector.ph1077

vector.ph1077:                                    ; preds = %vector.scevcheck1074
  %n.vec1079 = and i64 %i.as, 8589934584          ; 3 uses
  br label %vector.body1080

vector.body1080:                                  ; preds = %vector.body1080, %vector.ph1077
  %index1081 = phi i64 [ 0, %vector.ph1077 ], [ %index.next1082, %vector.body1080 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph1077 ], [ %vec.ind.next, %vector.body1080 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %index1081 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store <4 x i32> %vec.ind, ptr %i.az, align 4, !tbaa !4
  store <4 x i32> %step.add, ptr %i.ba, align 4, !tbaa !4
  %index.next1082 = add nuw i64 %index1081, 8     ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.bb = icmp eq i64 %index.next1082, %n.vec1079
  br i1 %i.bb, label %middle.block1083, label %vector.body1080, !llvm.loop !88

middle.block1083:                                 ; preds = %vector.body1080
  %cmp.n1084 = icmp eq i64 %i.as, %n.vec1079
  br i1 %cmp.n1084, label %._crit_edge538, label %scalar.ph1075.preheader

scalar.ph1075.preheader:                          ; preds = %vector.scevcheck1074, %.lr.ph537, %middle.block1083
  %.ph = phi i64 [ 0, %vector.scevcheck1074 ], [ 0, %.lr.ph537 ], [ %n.vec1079, %middle.block1083 ]
  br label %scalar.ph1075

._crit_edge538:                                   ; preds = %scalar.ph1075, %middle.block1083, %.preheader
  %.sroa.088.0.copyload = load i64, ptr %5, align 8, !tbaa !89
  %.sroa.289.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.289.0.copyload = load i64, ptr %.sroa.289.0..sroa_idx, align 8, !tbaa !89
  %i.bc = invoke double @cpu_timer_stop(i64 %.sroa.088.0.copyload, i64 %.sroa.289.0.copyload)
          to label %_ZNSt6vectorIiSaIiEED2Ev.exit242.thread unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit204.thread820

scalar.ph1075:                                    ; preds = %scalar.ph1075.preheader, %scalar.ph1075
  %i.bd = phi i64 [ %indvars.iv.next652, %scalar.ph1075 ], [ %.ph, %scalar.ph1075.preheader ] ; 3 uses
  %6 = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.bd
  %7 = trunc nuw i64 %i.bd to i32
  store i32 %7, ptr %6, align 4, !tbaa !4
  %indvars.iv.next652 = add i64 %i.bd, 1          ; 2 uses
  %8 = and i64 %indvars.iv.next652, 4294967295
  %i.be = icmp ugt i64 %i.as, %8
  br i1 %i.be, label %scalar.ph1075, label %._crit_edge538, !llvm.loop !90

_ZNSt6vectorIiSaIiEED2Ev.exit242.thread:          ; preds = %._crit_edge538
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !64
  %i.bh = fadd double %i.bc, %i.bg
  store double %i.bh, ptr %i.bf, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit244

bb.l:                                             ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1416 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1424 ; 4 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !91
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !92
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = ashr exact i64 %i.bo, 3
  %i.bq = load i64, ptr %i.b, align 8, !tbaa !8
  %i.br = icmp ult i64 %i.bp, %i.bq               ; 2 uses
  br i1 %i.br, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN4Mesh24calc_spatial_coordinatesEi(ptr noundef nonnull align 8 dereferenceable(2288) %0, i32 noundef 0)
          to label %bb.n unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit204.thread820

bb.n:                                             ; preds = %bb.m, %bb.l
  invoke void @_ZN4Mesh17calc_centerminmaxEv(ptr noundef nonnull align 8 dereferenceable(2288) %0)
          to label %bb.o unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit204.thread820

bb.o:                                             ; preds = %bb.n
  %i.bs = load i64, ptr %i.b, align 8, !tbaa !8   ; 13 uses
  %.not463 = icmp eq i64 %i.bs, 0                 ; 2 uses
  br i1 %.not463, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit183, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = icmp ugt i64 %i.bs, 1152921504606846975
  br i1 %i.bt, label %.invoke, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i

.invoke:                                          ; preds = %bb.ap, %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #19
          to label %.cont unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit204.thread820

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.p
  %i.bu = shl nuw nsw i64 %i.bs, 3                ; 2 uses
  %i.bv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #17
          to label %.noexc258 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit204.thread820 ; 5 uses

.noexc258:                                        ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i
  store double 0.000000e+00, ptr %i.bv, align 8, !tbaa !64
  %i.bw = add nsw i64 %i.bs, -1                   ; 3 uses
  %i.bx = icmp eq i64 %i.bw, 0                    ; 2 uses
  br i1 %i.bx, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i265, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc258
  %i.by = getelementptr i8, ptr %i.bv, i64 8
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.bw, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.by, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !64
  br label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i265

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i265: ; preds = %.noexc258, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bs ; 2 uses
  %i.ca = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #17
          to label %.noexc274 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit204.thread820 ; 4 uses

.noexc274:                                        ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i265
  store double 0.000000e+00, ptr %i.ca, align 8, !tbaa !64
  br i1 %i.bx, label %.noexc182, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i267

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i267: ; preds = %.noexc274
  %i.cb = getelementptr i8, ptr %i.ca, i64 8
  %.idx.i.i.i.i.i31.i268 = shl nuw nsw i64 %i.bw, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cb, i8 0, i64 %.idx.i.i.i.i.i31.i268, i1 false), !tbaa !64
  br label %.noexc182

.noexc182:                                        ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i267, %.noexc274
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.bs
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit183

_ZNSt6vectorIdSaIdEE6resizeEm.exit183:            ; preds = %bb.o, %.noexc182
  %.sroa.16351.4381 = phi ptr [ %i.bz, %.noexc182 ], [ null, %bb.o ] ; 4 uses
  %.sroa.0343.4378 = phi ptr [ %i.bv, %.noexc182 ], [ null, %bb.o ] ; 8 uses
  %.sroa.0333.4 = phi ptr [ %i.ca, %.noexc182 ], [ null, %bb.o ] ; 8 uses
  %.sroa.16340.4 = phi ptr [ %i.cc, %.noexc182 ], [ null, %bb.o ] ; 4 uses
  %.sroa.0333.4954 = ptrtoaddr ptr %.sroa.0333.4 to i64 ; 5 uses
  %.sroa.0343.4378955 = ptrtoaddr ptr %.sroa.0343.4378 to i64 ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.ce = load <4 x double>, ptr %i.cd, align 8, !tbaa !64 ; 6 uses
  %i.cf = shufflevector <4 x double> %i.ce, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.cg = shufflevector <4 x double> %i.ce, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %i.ch = fsub <2 x double> %i.cf, %i.cg
  %i.ci = fdiv <2 x double> splat (double 1.000000e+00), %i.ch ; 4 uses
  br i1 %.not463, label %._crit_edge513, label %.lr.ph512

.lr.ph512:                                        ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit183
  %i.cj = load ptr, ptr %i.bi, align 8, !tbaa !92 ; 3 uses
  %i.ck = ptrtoaddr ptr %i.cj to i64              ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1440
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !92 ; 3 uses
  %i.cn = ptrtoaddr ptr %i.cm to i64              ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !92 ; 3 uses
  %i.cq = ptrtoaddr ptr %i.cp to i64              ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 1488
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !92 ; 3 uses
  %i.ct = ptrtoaddr ptr %i.cs to i64              ; 2 uses
  %min.iters.check974 = icmp ult i64 %i.bs, 16
  br i1 %min.iters.check974, label %scalar.ph973.preheader, label %vector.scevcheck952

vector.scevcheck952:                              ; preds = %.lr.ph512
  %i.cu = add i64 %i.bs, -1                       ; 2 uses
  %i.cv = and i64 %i.cu, 4294967295
  %i.cw = icmp eq i64 %i.cv, 4294967295
  %i.cx = icmp ugt i64 %i.cu, 4294967295
  %i.cy = or i1 %i.cw, %i.cx
  br i1 %i.cy, label %scalar.ph973.preheader, label %vector.memcheck953

vector.memcheck953:                               ; preds = %vector.scevcheck952
  %i.cz = sub i64 %.sroa.0343.4378955, %.sroa.0333.4954
  %diff.check956.a = icmp ugt i64 %i.cz, -16
  %i.da = sub i64 %i.ck, %.sroa.0343.4378955
  %diff.check957 = icmp ugt i64 %i.da, -16
  %conflict.rdx958 = or i1 %diff.check956.a, %diff.check957
  %i.db = sub i64 %i.cn, %.sroa.0343.4378955
  %diff.check959 = icmp ugt i64 %i.db, -16
  %conflict.rdx960 = or i1 %conflict.rdx958, %diff.check959
  %i.dc = sub i64 %.sroa.0343.4378955, %i.cq
  %diff.check961 = icmp ugt i64 %i.dc, -16
  %conflict.rdx962 = or i1 %conflict.rdx960, %diff.check961
  %i.dd = sub i64 %.sroa.0343.4378955, %i.ct
  %diff.check963 = icmp ugt i64 %i.dd, -16
  %conflict.rdx964 = or i1 %conflict.rdx962, %diff.check963
  %i.de = sub i64 %i.ck, %.sroa.0333.4954
  %diff.check965 = icmp ugt i64 %i.de, -16
  %conflict.rdx966 = or i1 %conflict.rdx964, %diff.check965
  %i.df = sub i64 %i.cn, %.sroa.0333.4954
  %diff.check967 = icmp ugt i64 %i.df, -16
  %conflict.rdx968 = or i1 %conflict.rdx966, %diff.check967
  %i.dg = sub i64 %i.cq, %.sroa.0333.4954
  %diff.check969 = icmp ugt i64 %i.dg, -16
  %conflict.rdx970 = or i1 %conflict.rdx968, %diff.check969
  %i.dh = sub i64 %i.ct, %.sroa.0333.4954
  %diff.check971.a = icmp ugt i64 %i.dh, -16
  %conflict.rdx972 = or i1 %conflict.rdx970, %diff.check971.a
  br i1 %conflict.rdx972, label %scalar.ph973.preheader, label %vector.ph975

vector.ph975:                                     ; preds = %vector.memcheck953
  %n.vec977 = and i64 %i.bs, 8589934590           ; 3 uses
  %broadcast.splat979 = shufflevector <4 x double> %i.ce, <4 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat981 = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat983 = shufflevector <4 x double> %i.ce, <4 x double> poison, <2 x i32> <i32 2, i32 2>
  %broadcast.splat985 = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  br label %vector.body986

vector.body986:                                   ; preds = %vector.body986, %vector.ph975
  %index987 = phi i64 [ 0, %vector.ph975 ], [ %index.next992, %vector.body986 ] ; 7 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %index987
  %wide.load988 = load <2 x double>, ptr %i.di, align 8, !tbaa !64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %index987
  %wide.load989 = load <2 x double>, ptr %i.dj, align 8, !tbaa !64
  %i.dk = fmul <2 x double> %wide.load989, splat (double 5.000000e-01)
  %i.dl = fadd <2 x double> %wide.load988, %i.dk
  %i.dm = fsub <2 x double> %i.dl, %broadcast.splat979
  %i.dn = fmul <2 x double> %broadcast.splat981, %i.dm
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0343.4378, i64 %index987
  store <2 x double> %i.dn, ptr %i.do, align 8, !tbaa !64
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %index987
  %wide.load990 = load <2 x double>, ptr %i.dp, align 8, !tbaa !64
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %index987
  %wide.load991 = load <2 x double>, ptr %i.dq, align 8, !tbaa !64
  %i.dr = fmul <2 x double> %wide.load991, splat (double 5.000000e-01)
  %i.ds = fadd <2 x double> %wide.load990, %i.dr
  %i.dt = fsub <2 x double> %i.ds, %broadcast.splat983
  %i.du = fmul <2 x double> %broadcast.splat985, %i.dt
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0333.4, i64 %index987
  store <2 x double> %i.du, ptr %i.dv, align 8, !tbaa !64
  %index.next992 = add nuw i64 %index987, 2       ; 2 uses
  %i.dw = icmp eq i64 %index.next992, %n.vec977
  br i1 %i.dw, label %middle.block993, label %vector.body986, !llvm.loop !93

middle.block993:                                  ; preds = %vector.body986
  %cmp.n994 = icmp eq i64 %i.bs, %n.vec977
  br i1 %cmp.n994, label %._crit_edge513, label %scalar.ph973.preheader

scalar.ph973.preheader:                           ; preds = %vector.memcheck953, %vector.scevcheck952, %.lr.ph512, %middle.block993
  %.ph1103 = phi i64 [ 0, %vector.memcheck953 ], [ 0, %vector.scevcheck952 ], [ 0, %.lr.ph512 ], [ %n.vec977, %middle.block993 ]
  %i.dx = extractelement <4 x double> %i.ce, i64 0
  %i.dy = extractelement <2 x double> %i.ci, i64 0
  %i.dz = extractelement <4 x double> %i.ce, i64 2
  %i.ea = extractelement <2 x double> %i.ci, i64 1
  br label %scalar.ph973

._crit_edge513:                                   ; preds = %scalar.ph973, %middle.block993, %_ZNSt6vectorIdSaIdEE6resizeEm.exit183
  br i1 %i.br, label %bb.q, label %_ZNSt6vectorIdSaIdEE5clearEv.exit194

scalar.ph973:                                     ; preds = %scalar.ph973.preheader, %scalar.ph973
  %i.eb = phi i64 [ %indvars.iv.next596, %scalar.ph973 ], [ %.ph1103, %scalar.ph973.preheader ] ; 7 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.eb
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.eb
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !64
  %i.eg = fmul double %i.ef, 5.000000e-01
  %i.eh = fadd double %i.ed, %i.eg
  %i.ei = fsub double %i.eh, %i.dx
  %i.ej = fmul double %i.dy, %i.ei
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0343.4378, i64 %i.eb
  store double %i.ej, ptr %i.ek, align 8, !tbaa !64
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.eb
  %i.em = load double, ptr %i.el, align 8, !tbaa !64
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.eb
  %i.eo = load double, ptr %i.en, align 8, !tbaa !64
  %i.ep = fmul double %i.eo, 5.000000e-01
  %i.eq = fadd double %i.em, %i.ep
  %i.er = fsub double %i.eq, %i.dz
  %i.es = fmul double %i.ea, %i.er
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0333.4, i64 %i.eb
  store double %i.es, ptr %i.et, align 8, !tbaa !64
  %indvars.iv.next596 = add i64 %i.eb, 1          ; 2 uses
  %9 = and i64 %indvars.iv.next596, 4294967295
  %i.eu = icmp samesign ugt i64 %i.bs, %9
  br i1 %i.eu, label %scalar.ph973, label %._crit_edge513, !llvm.loop !94

bb.q:                                             ; preds = %._crit_edge513
  %i.ev = load ptr, ptr %i.bi, align 8, !tbaa !92 ; 2 uses
  %i.ew = load ptr, ptr %i.bj, align 8, !tbaa !91
  %.not.i.i184 = icmp eq ptr %i.ew, %i.ev
  br i1 %.not.i.i184, label %_ZNSt6vectorIdSaIdEE5clearEv.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i185

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i185:     ; preds = %bb.q
  store ptr %i.ev, ptr %i.bj, align 8, !tbaa !91
  br label %_ZNSt6vectorIdSaIdEE5clearEv.exit

_ZNSt6vectorIdSaIdEE5clearEv.exit:                ; preds = %bb.q, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i185
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 1440
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !92 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 1448 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !91
  %.not.i.i186 = icmp eq ptr %i.fa, %i.ey
  br i1 %.not.i.i186, label %_ZNSt6vectorIdSaIdEE5clearEv.exit188, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i187

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i187:     ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit
  store ptr %i.ey, ptr %i.ez, align 8, !tbaa !91
  br label %_ZNSt6vectorIdSaIdEE5clearEv.exit188

_ZNSt6vectorIdSaIdEE5clearEv.exit188:             ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i187
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !92 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 1472 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !91
  %.not.i.i189 = icmp eq ptr %i.fe, %i.fc
  br i1 %.not.i.i189, label %_ZNSt6vectorIdSaIdEE5clearEv.exit191, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i190

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i190:     ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit188
  store ptr %i.fc, ptr %i.fd, align 8, !tbaa !91
  br label %_ZNSt6vectorIdSaIdEE5clearEv.exit191

_ZNSt6vectorIdSaIdEE5clearEv.exit191:             ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit188, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i190
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 1488
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !92 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 1496 ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !91
  %.not.i.i192 = icmp eq ptr %i.fi, %i.fg
  br i1 %.not.i.i192, label %_ZNSt6vectorIdSaIdEE5clearEv.exit194, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i193

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i193:     ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit191
  store ptr %i.fg, ptr %i.fh, align 8, !tbaa !91
  br label %_ZNSt6vectorIdSaIdEE5clearEv.exit194

_ZNSt6vectorIdSaIdEE5clearEv.exit194:             ; preds = %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i193, %_ZNSt6vectorIdSaIdEE5clearEv.exit191, %._crit_edge513
  %i.fj = load i32, ptr %i.d, align 4, !tbaa !79
  %.not167 = icmp eq i32 %i.fj, 0
  br i1 %.not167, label %bb.r, label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.r:                                             ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit194
  %i.fk = mul nuw nsw i64 %i.bs, 12
  %i.fl = call noalias ptr @malloc(i64 noundef %i.fk) #20 ; 6 uses
  %i.fm = ptrtoaddr ptr %i.fl to i64
  %i.fn = trunc nuw i64 %i.bs to i32
  invoke void @hsfc2sort(i32 noundef %i.fn, ptr noundef nonnull %.sroa.0343.4378, ptr noundef nonnull %.sroa.0333.4, i32 noundef 0, ptr noundef %i.fl, i32 noundef 1)
          to label %.preheader472 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit204.thread831

_ZNSt6vectorIiSaIiEED2Ev.exit204.thread831:       ; preds = %bb.r
  %lpad.thr_comm.split-lp840 = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.preheader472:                                    ; preds = %bb.r
  %i.fo = load i64, ptr %i.b, align 8, !tbaa !8   ; 9 uses
  %.not542 = icmp eq i64 %i.fo, 0
  br i1 %.not542, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread, label %.lr.ph516

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread: ; preds = %.preheader472
  call void @free(ptr noundef %i.fl) #16
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

.lr.ph516:                                        ; preds = %.preheader472
  %i.fp = load ptr, ptr %2, align 8, !tbaa !81    ; 3 uses
  %min.iters.check1001 = icmp ult i64 %i.fo, 16
  br i1 %min.iters.check1001, label %scalar.ph1000.preheader, label %vector.scevcheck997

vector.scevcheck997:                              ; preds = %.lr.ph516
  %i.fq = ptrtoaddr ptr %i.fp to i64
  %i.fr = add i64 %i.fo, -1                       ; 2 uses
  %i.fs = and i64 %i.fr, 4294967295
  %i.ft = icmp eq i64 %i.fs, 4294967295
  %i.fu = icmp ugt i64 %i.fr, 4294967295
  %i.fv = or i1 %i.ft, %i.fu
  %i.fw = sub i64 %i.fm, %i.fq
  %diff.check999 = icmp ugt i64 %i.fw, -32
  %or.cond = select i1 %i.fv, i1 true, i1 %diff.check999
  br i1 %or.cond, label %scalar.ph1000.preheader, label %vector.ph1002

vector.ph1002:                                    ; preds = %vector.scevcheck997
  %n.vec1004 = and i64 %i.fo, 8589934584          ; 3 uses
  br label %vector.body1005

vector.body1005:                                  ; preds = %vector.body1005, %vector.ph1002
  %index1006 = phi i64 [ 0, %vector.ph1002 ], [ %index.next1009, %vector.body1005 ] ; 3 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %index1006 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %wide.load1007 = load <4 x i32>, ptr %i.fx, align 4, !tbaa !4
  %wide.load1008 = load <4 x i32>, ptr %i.fy, align 4, !tbaa !4
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %index1006 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  store <4 x i32> %wide.load1007, ptr %i.fz, align 4, !tbaa !4
  store <4 x i32> %wide.load1008, ptr %i.ga, align 4, !tbaa !4
  %index.next1009 = add nuw i64 %index1006, 8     ; 2 uses
  %i.gb = icmp eq i64 %index.next1009, %n.vec1004
  br i1 %i.gb, label %middle.block1010, label %vector.body1005, !llvm.loop !95

middle.block1010:                                 ; preds = %vector.body1005
  %cmp.n1011 = icmp eq i64 %i.fo, %n.vec1004
  br i1 %cmp.n1011, label %.loopexit, label %scalar.ph1000.preheader

scalar.ph1000.preheader:                          ; preds = %vector.scevcheck997, %.lr.ph516, %middle.block1010
  %.ph1102 = phi i64 [ 0, %vector.scevcheck997 ], [ 0, %.lr.ph516 ], [ %n.vec1004, %middle.block1010 ]
  br label %scalar.ph1000

.loopexit:                                        ; preds = %scalar.ph1000, %middle.block1010
  call void @free(ptr noundef nonnull %i.fl) #16
  %i.gc = shl nuw nsw i64 %i.fo, 2
  %i.gd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gc) #17
          to label %.noexc196 unwind label %bb.ab ; 5 uses

.noexc196:                                        ; preds = %.loopexit
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %i.fo ; 2 uses
  store i32 0, ptr %i.gd, align 4, !tbaa !4
  %i.gf = add nsw i64 %i.fo, -1                   ; 2 uses
  %i.gg = icmp eq i64 %i.gf, 0
  br i1 %i.gg, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc196
  %i.gh = getelementptr i8, ptr %i.gd, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.gf, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.gh, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !4
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

scalar.ph1000:                                    ; preds = %scalar.ph1000.preheader, %scalar.ph1000
  %i.gi = phi i64 [ %indvars.iv.next600, %scalar.ph1000 ], [ %.ph1102, %scalar.ph1000.preheader ] ; 3 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %i.gi
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !4
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %i.gi
  store i32 %i.gk, ptr %i.gl, align 4, !tbaa !4
  %indvars.iv.next600 = add i64 %i.gi, 1          ; 2 uses
  %10 = and i64 %indvars.iv.next600, 4294967295
  %i.gm = icmp ugt i64 %i.fo, %10
  br i1 %i.gm, label %scalar.ph1000, label %.loopexit, !llvm.loop !96

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc196
  %.sroa.0328.0 = phi ptr [ %i.gd, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.gd, %.noexc196 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread ] ; 5 uses
  %.sroa.9331.0 = phi ptr [ %i.ge, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ge, %.noexc196 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread ] ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !46
  invoke void @_ZN10MallocPlus20set_memory_attributeEPvi(ptr noundef nonnull align 8 dereferenceable(96) %i.gn, ptr noundef %i.gp, i32 noundef 256)
          to label %bb.s unwind label %bb.ac

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !49
  invoke void @_ZN10MallocPlus20set_memory_attributeEPvi(ptr noundef nonnull align 8 dereferenceable(96) %i.gn, ptr noundef %i.gr, i32 noundef 256)
          to label %bb.t unwind label %bb.ac

bb.t:                                             ; preds = %bb.s
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !50
  invoke void @_ZN10MallocPlus20set_memory_attributeEPvi(ptr noundef nonnull align 8 dereferenceable(96) %i.gn, ptr noundef %i.gt, i32 noundef 256)
          to label %bb.u unwind label %bb.ac

bb.u:                                             ; preds = %bb.t
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !48
  invoke void @_ZN10MallocPlus20set_memory_attributeEPvi(ptr noundef nonnull align 8 dereferenceable(96) %i.gn, ptr noundef %i.gv, i32 noundef 256)
          to label %bb.v unwind label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.gw = load ptr, ptr %2, align 8, !tbaa !81
  invoke void @_ZN10MallocPlus18memory_reorder_allEPi(ptr noundef nonnull align 8 dereferenceable(96) %i.gn, ptr noundef nonnull %i.gw)
          to label %bb.w unwind label %bb.ac

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN4Mesh17memory_reset_ptrsEv(ptr noundef nonnull align 8 dereferenceable(2288) %0)
          to label %bb.x unwind label %bb.ac

bb.x:                                             ; preds = %bb.w
  %i.gx = load ptr, ptr %i.bj, align 8, !tbaa !91
  %i.gy = load ptr, ptr %i.bi, align 8, !tbaa !92 ; 12 uses
  %i.gz = ptrtoint ptr %i.gx to i64
  %i.ha = ptrtoint ptr %i.gy to i64               ; 2 uses
  %i.hb = sub i64 %i.gz, %i.ha
  %i.hc = ashr exact i64 %i.hb, 3
  %i.hd = load i64, ptr %i.b, align 8, !tbaa !8   ; 27 uses
  %.not168 = icmp ult i64 %i.hc, %i.hd
  br i1 %.not168, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.he = icmp ugt i64 %i.hd, 1152921504606846975
  br i1 %i.he, label %bb.z, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #19
          to label %.noexc200 unwind label %bb.ad

.noexc200:                                        ; preds = %bb.z
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.y
  %.not.i.i.i.i197 = icmp eq i64 %i.hd, 0
  br i1 %.not.i.i.i.i197, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.hf = shl nuw nsw i64 %i.hd, 3
  %i.hg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hf) #17
          to label %.noexc201 unwind label %bb.ad ; 48 uses

.noexc201:                                        ; preds = %bb.aa
  %i.hh = ptrtoaddr ptr %i.hg to i64              ; 4 uses
  store double 0.000000e+00, ptr %i.hg, align 8, !tbaa !64
  %i.hi = add nsw i64 %i.hd, -1                   ; 2 uses
  %i.hj = icmp eq i64 %i.hi, 0
  br i1 %i.hj, label %.lr.ph519.preheader, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit

_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit:               ; preds = %.noexc201
  %i.hk = getelementptr i8, ptr %i.hg, i64 8
  %.idx.i.i.i.i.i.i.i198 = shl nuw nsw i64 %i.hi, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.hk, i8 0, i64 %.idx.i.i.i.i.i.i.i198, i1 false), !tbaa !64
  %i.hl = trunc i64 %i.hd to i32
  %i.hm = icmp sgt i32 %i.hl, 0
  br i1 %i.hm, label %.lr.ph519.preheader, label %.preheader471.thread

.lr.ph519.preheader:                              ; preds = %.noexc201, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
  %wide.trip.count583 = and i64 %i.hd, 2147483647 ; 14 uses
  %min.iters.check1017 = icmp samesign ult i64 %wide.trip.count583, 8
  %i.hn = sub i64 %i.ha, %i.hh
  %diff.check1015 = icmp ugt i64 %i.hn, -32
  %or.cond1087 = or i1 %min.iters.check1017, %diff.check1015
  br i1 %or.cond1087, label %.lr.ph519.preheader1101, label %vector.ph1018

vector.ph1018:                                    ; preds = %.lr.ph519.preheader
  %n.vec1020 = and i64 %i.hd, 2147483644          ; 3 uses
  br label %vector.body1021

vector.body1021:                                  ; preds = %vector.body1021, %vector.ph1018
  %index1022 = phi i64 [ 0, %vector.ph1018 ], [ %index.next1025, %vector.body1021 ] ; 3 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %index1022 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %wide.load1023 = load <2 x double>, ptr %i.ho, align 8, !tbaa !64
  %wide.load1024 = load <2 x double>, ptr %i.hp, align 8, !tbaa !64
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %index1022 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  store <2 x double> %wide.load1023, ptr %i.hq, align 8, !tbaa !64
  store <2 x double> %wide.load1024, ptr %i.hr, align 8, !tbaa !64
  %index.next1025 = add nuw i64 %index1022, 4     ; 2 uses
  %i.hs = icmp eq i64 %index.next1025, %n.vec1020
  br i1 %i.hs, label %middle.block1026, label %vector.body1021, !llvm.loop !97

middle.block1026:                                 ; preds = %vector.body1021
  %cmp.n1027 = icmp eq i64 %wide.trip.count583, %n.vec1020
  br i1 %cmp.n1027, label %.lr.ph522, label %.lr.ph519.preheader1101

.lr.ph519.preheader1101:                          ; preds = %.lr.ph519.preheader, %middle.block1026
  %indvars.iv580.ph = phi i64 [ 0, %.lr.ph519.preheader ], [ %n.vec1020, %middle.block1026 ] ; 3 uses
  %xtraiter1145.a = and i64 %i.hd, 3              ; 2 uses
  %lcmp.mod1146.not = icmp eq i64 %xtraiter1145.a, 0
  br i1 %lcmp.mod1146.not, label %.lr.ph519.prol.loopexit, label %.lr.ph519.prol

.lr.ph519.prol:                                   ; preds = %.lr.ph519.preheader1101, %.lr.ph519.prol
  %indvars.iv580.prol = phi i64 [ %indvars.iv.next581.prol, %.lr.ph519.prol ], [ %indvars.iv580.ph, %.lr.ph519.preheader1101 ] ; 3 uses
  %prol.iter1147 = phi i64 [ %prol.iter1147.next, %.lr.ph519.prol ], [ 0, %.lr.ph519.preheader1101 ]
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv580.prol
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !64
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %indvars.iv580.prol
  store double %i.hu, ptr %i.hv, align 8, !tbaa !64
  %indvars.iv.next581.prol = add nuw nsw i64 %indvars.iv580.prol, 1 ; 2 uses
  %prol.iter1147.next = add i64 %prol.iter1147, 1 ; 2 uses
  %prol.iter1147.cmp.not = icmp eq i64 %prol.iter1147.next, %xtraiter1145.a
  br i1 %prol.iter1147.cmp.not, label %.lr.ph519.prol.loopexit, label %.lr.ph519.prol, !llvm.loop !98

.lr.ph519.prol.loopexit:                          ; preds = %.lr.ph519.prol, %.lr.ph519.preheader1101
  %indvars.iv580.unr = phi i64 [ %indvars.iv580.ph, %.lr.ph519.preheader1101 ], [ %indvars.iv.next581.prol, %.lr.ph519.prol ]
  %i.hw = sub nsw i64 %indvars.iv580.ph, %wide.trip.count583
  %i.hx = icmp ugt i64 %i.hw, -4
  br i1 %i.hx, label %.lr.ph522, label %.lr.ph519

.lr.ph522:                                        ; preds = %.lr.ph519.prol.loopexit, %.lr.ph519, %middle.block1026
  %i.hy = load ptr, ptr %2, align 8, !tbaa !81    ; 5 uses
  %i.hz = add nsw i64 %wide.trip.count583, -1     ; 4 uses
  %xtraiter1149 = and i64 %i.hd, 3                ; 3 uses
  %i.ia = icmp ult i64 %i.hz, 3
  br i1 %i.ia, label %.epil.preheader1148, label %.lr.ph522.new

.lr.ph522.new:                                    ; preds = %.lr.ph522
  %unroll_iter1153 = and i64 %i.hd, 2147483644
  br label %bb.af

bb.ab:                                            ; preds = %.loopexit
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.ac:                                            ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ad:                                            ; preds = %bb.aa, %bb.z
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.lr.ph519:                                        ; preds = %.lr.ph519.prol.loopexit, %.lr.ph519
  %indvars.iv580 = phi i64 [ %indvars.iv.next581.3, %.lr.ph519 ], [ %indvars.iv580.unr, %.lr.ph519.prol.loopexit ] ; 6 uses
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv580
  %i.if = load double, ptr %i.ie, align 8, !tbaa !64
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %indvars.iv580
  store double %i.if, ptr %i.ig, align 8, !tbaa !64
  %indvars.iv.next581 = add nuw nsw i64 %indvars.iv580, 1 ; 2 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv.next581
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !64
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %indvars.iv.next581
  store double %i.ii, ptr %i.ij, align 8, !tbaa !64
  %indvars.iv.next581.1 = add nuw nsw i64 %indvars.iv580, 2 ; 2 uses
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv.next581.1
  %i.il = load double, ptr %i.ik, align 8, !tbaa !64
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %indvars.iv.next581.1
  store double %i.il, ptr %i.im, align 8, !tbaa !64
  %indvars.iv.next581.2 = add nuw nsw i64 %indvars.iv580, 3 ; 2 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv.next581.2
  %i.io = load double, ptr %i.in, align 8, !tbaa !64
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %indvars.iv.next581.2
  store double %i.io, ptr %i.ip, align 8, !tbaa !64
  %indvars.iv.next581.3 = add nuw nsw i64 %indvars.iv580, 4 ; 2 uses
  %exitcond584.not.3 = icmp eq i64 %indvars.iv.next581.3, %wide.trip.count583
  br i1 %exitcond584.not.3, label %.lr.ph522, label %.lr.ph519, !llvm.loop !100

.lr.ph524.unr-lcssa:                              ; preds = %bb.af
  %lcmp.mod1151.not = icmp eq i64 %xtraiter1149, 0
  br i1 %lcmp.mod1151.not, label %.lr.ph524, label %.epil.preheader1148

.epil.preheader1148:                              ; preds = %.lr.ph524.unr-lcssa, %.lr.ph522
  %indvars.iv585.epil.init = phi i64 [ 0, %.lr.ph522 ], [ %indvars.iv.next586.3, %.lr.ph524.unr-lcssa ]
  %lcmp.mod1152 = icmp ne i64 %xtraiter1149, 0
  call void @llvm.assume(i1 %lcmp.mod1152)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.epil.preheader1148
end_hunk_0
begin_hunk_1_@_ZN4Mesh15partition_cellsEiRSt6vectorIiSaIiEE16partition_method:bb.a
  %i.oi = sext i32 %i.oh to i64
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %i.oi
  %i.ok = load double, ptr %i.oj, align 8, !tbaa !64
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %indvars.iv.next606
  store double %i.ok, ptr %i.ol, align 8, !tbaa !64
  %indvars.iv.next606.1 = or disjoint i64 %indvars.iv605, 2 ; 2 uses
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %indvars.iv.next606.1
  %i.on = load i32, ptr %i.om, align 4, !tbaa !4
  %i.oo = sext i32 %i.on to i64
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %i.oo
  %i.oq = load double, ptr %i.op, align 8, !tbaa !64
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %indvars.iv.next606.1
  store double %i.oq, ptr %i.or, align 8, !tbaa !64
  %indvars.iv.next606.2 = or disjoint i64 %indvars.iv605, 3 ; 2 uses
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %indvars.iv.next606.2
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !4
  %i.ou = sext i32 %i.ot to i64
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %i.ou
  %i.ow = load double, ptr %i.ov, align 8, !tbaa !64
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %indvars.iv.next606.2
  store double %i.ow, ptr %i.ox, align 8, !tbaa !64
  %indvars.iv.next606.3 = add nuw nsw i64 %indvars.iv605, 4 ; 2 uses
  %niter1174.next.3 = add i64 %niter1174, 4       ; 2 uses
  %niter1174.ncmp.3 = icmp eq i64 %niter1174.next.3, %unroll_iter1173
  br i1 %niter1174.ncmp.3, label %.lr.ph532.unr-lcssa, label %bb.aj, !llvm.loop !114

.lr.ph534:                                        ; preds = %scalar.ph1061.prol.loopexit, %scalar.ph1061, %middle.block1071
  %i.oy = load ptr, ptr %2, align 8, !tbaa !81    ; 5 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 1488
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !92 ; 5 uses
  %xtraiter1179 = and i64 %i.hd, 3                ; 3 uses
  %i.pb = icmp ult i64 %i.hz, 3
  br i1 %i.pb, label %.epil.preheader1178, label %.lr.ph534.new

.lr.ph534.new:                                    ; preds = %.lr.ph534
  %unroll_iter1183 = and i64 %i.hd, 2147483644
  br label %bb.al

scalar.ph1061:                                    ; preds = %scalar.ph1061.prol.loopexit, %scalar.ph1061
  %indvars.iv610 = phi i64 [ %indvars.iv.next611.3, %scalar.ph1061 ], [ %indvars.iv610.unr, %scalar.ph1061.prol.loopexit ] ; 6 uses
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %i.nn, i64 %indvars.iv610
  %i.pd = load double, ptr %i.pc, align 8, !tbaa !64
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %indvars.iv610
  store double %i.pd, ptr %i.pe, align 8, !tbaa !64
  %indvars.iv.next611 = add nuw nsw i64 %indvars.iv610, 1 ; 2 uses
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %i.nn, i64 %indvars.iv.next611
  %i.pg = load double, ptr %i.pf, align 8, !tbaa !64
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %indvars.iv.next611
  store double %i.pg, ptr %i.ph, align 8, !tbaa !64
  %indvars.iv.next611.1 = add nuw nsw i64 %indvars.iv610, 2 ; 2 uses
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %i.nn, i64 %indvars.iv.next611.1
  %i.pj = load double, ptr %i.pi, align 8, !tbaa !64
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %indvars.iv.next611.1
  store double %i.pj, ptr %i.pk, align 8, !tbaa !64
  %indvars.iv.next611.2 = add nuw nsw i64 %indvars.iv610, 3 ; 2 uses
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %i.nn, i64 %indvars.iv.next611.2
  %i.pm = load double, ptr %i.pl, align 8, !tbaa !64
  %i.pn = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %indvars.iv.next611.2
  store double %i.pm, ptr %i.pn, align 8, !tbaa !64
  %indvars.iv.next611.3 = add nuw nsw i64 %indvars.iv610, 4 ; 2 uses
  %exitcond614.not.3 = icmp eq i64 %indvars.iv.next611.3, %wide.trip.count613
  br i1 %exitcond614.not.3, label %.lr.ph534, label %scalar.ph1061, !llvm.loop !115

.preheader471.thread.loopexit.unr-lcssa:          ; preds = %bb.al
  %lcmp.mod1181.not = icmp eq i64 %xtraiter1179, 0
  br i1 %lcmp.mod1181.not, label %.preheader471.thread, label %.epil.preheader1178

.epil.preheader1178:                              ; preds = %.preheader471.thread.loopexit.unr-lcssa, %.lr.ph534
  %indvars.iv615.epil.init = phi i64 [ 0, %.lr.ph534 ], [ %indvars.iv.next616.3, %.preheader471.thread.loopexit.unr-lcssa ]
  %lcmp.mod1182 = icmp ne i64 %xtraiter1179, 0
  call void @llvm.assume(i1 %lcmp.mod1182)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.epil.preheader1178
  %indvars.iv615.epil = phi i64 [ %indvars.iv615.epil.init, %.epil.preheader1178 ], [ %indvars.iv.next616.epil, %bb.ak ] ; 3 uses
  %epil.iter1180 = phi i64 [ 0, %.epil.preheader1178 ], [ %epil.iter1180.next, %bb.ak ]
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %indvars.iv615.epil
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !4
  %i.pq = sext i32 %i.pp to i64
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %i.pq
  %i.ps = load double, ptr %i.pr, align 8, !tbaa !64
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %i.pa, i64 %indvars.iv615.epil
  store double %i.ps, ptr %i.pt, align 8, !tbaa !64
  %indvars.iv.next616.epil = add nuw nsw i64 %indvars.iv615.epil, 1
  %epil.iter1180.next = add i64 %epil.iter1180, 1 ; 2 uses
  %epil.iter1180.cmp.not = icmp eq i64 %epil.iter1180.next, %xtraiter1179
  br i1 %epil.iter1180.cmp.not, label %.preheader471.thread, label %bb.ak, !llvm.loop !116

.preheader471.thread:                             ; preds = %.preheader471.thread.loopexit.unr-lcssa, %bb.ak, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
  %.idx845 = shl nuw nsw i64 %i.hd, 3
  call void @_ZdlPvm(ptr noundef nonnull %i.hg, i64 noundef %.idx845) #18
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.al:                                            ; preds = %bb.al, %.lr.ph534.new
  %indvars.iv615 = phi i64 [ 0, %.lr.ph534.new ], [ %indvars.iv.next616.3, %bb.al ] ; 6 uses
  %niter1184 = phi i64 [ 0, %.lr.ph534.new ], [ %niter1184.next.3, %bb.al ]
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %indvars.iv615
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !4
  %i.pw = sext i32 %i.pv to i64
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %i.pw
  %i.py = load double, ptr %i.px, align 8, !tbaa !64
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %i.pa, i64 %indvars.iv615
  store double %i.py, ptr %i.pz, align 8, !tbaa !64
  %indvars.iv.next616 = or disjoint i64 %indvars.iv615, 1 ; 2 uses
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %indvars.iv.next616
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !4
  %i.qc = sext i32 %i.qb to i64
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %i.qc
  %i.qe = load double, ptr %i.qd, align 8, !tbaa !64
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.pa, i64 %indvars.iv.next616
  store double %i.qe, ptr %i.qf, align 8, !tbaa !64
  %indvars.iv.next616.1 = or disjoint i64 %indvars.iv615, 2 ; 2 uses
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %indvars.iv.next616.1
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !4
  %i.qi = sext i32 %i.qh to i64
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %i.qi
  %i.qk = load double, ptr %i.qj, align 8, !tbaa !64
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %i.pa, i64 %indvars.iv.next616.1
  store double %i.qk, ptr %i.ql, align 8, !tbaa !64
  %indvars.iv.next616.2 = or disjoint i64 %indvars.iv615, 3 ; 2 uses
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %indvars.iv.next616.2
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !4
  %i.qo = sext i32 %i.qn to i64
  %i.qp = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %i.qo
  %i.qq = load double, ptr %i.qp, align 8, !tbaa !64
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %i.pa, i64 %indvars.iv.next616.2
  store double %i.qq, ptr %i.qr, align 8, !tbaa !64
  %indvars.iv.next616.3 = add nuw nsw i64 %indvars.iv615, 4 ; 2 uses
  %niter1184.next.3 = add i64 %niter1184, 4       ; 2 uses
  %niter1184.ncmp.3 = icmp eq i64 %niter1184.next.3, %unroll_iter1183
  br i1 %niter1184.ncmp.3, label %.preheader471.thread.loopexit.unr-lcssa, label %bb.al, !llvm.loop !117

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i, %.preheader471.thread, %bb.x
  %.not.i.i.i202 = icmp eq ptr %.sroa.0328.0, null
  br i1 %.not.i.i.i202, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %_ZNSt6vectorIiSaIiEED2Ev.exit.sink.split

bb.am:                                            ; preds = %bb.ad, %bb.ac
  %.pn169 = phi { ptr, i32 } [ %i.id, %bb.ad ], [ %i.ic, %bb.ac ] ; 2 uses
  %.not.i.i.i203 = icmp eq ptr %.sroa.0328.0, null
  br i1 %.not.i.i.i203, label %.sink.split, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.qs = ptrtoint ptr %.sroa.9331.0 to i64
  %i.qt = ptrtoint ptr %.sroa.0328.0 to i64
  %i.qu = sub i64 %i.qs, %i.qt
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0328.0, i64 noundef %i.qu) #18
  br label %.sink.split

bb.ao:                                            ; preds = %bb.k
  %i.qv = load i32, ptr %i.d, align 4, !tbaa !79
  %.not163 = icmp eq i32 %i.qv, 0
  br i1 %.not163, label %bb.ap, label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.ap:                                            ; preds = %bb.ao
  %i.qw = load i64, ptr %i.b, align 8, !tbaa !8   ; 17 uses
  %.not461 = icmp ne i64 %i.qw, 0
  call void @llvm.assume(i1 %.not461)
  %i.qx = icmp ugt i64 %i.qw, 2305843009213693951
  br i1 %i.qx, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.ap
  %i.qy = shl nuw nsw i64 %i.qw, 2                ; 2 uses
  %i.qz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qy) #17
          to label %.noexc284 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit204.thread820 ; 14 uses

.noexc284:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %i.ra = ptrtoaddr ptr %i.qz to i64              ; 3 uses
  store i32 0, ptr %i.qz, align 4, !tbaa !4
  %i.rb = add nsw i64 %i.qw, -1                   ; 3 uses
  %i.rc = icmp eq i64 %i.rb, 0                    ; 2 uses
  br i1 %i.rc, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i291, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc284
  %i.rd = getelementptr i8, ptr %i.qz, i64 4
  %.idx.i.i.i.i.i31.i281 = shl nuw nsw i64 %i.rb, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.rd, i8 0, i64 %.idx.i.i.i.i.i31.i281, i1 false), !tbaa !4
  br label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i291

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i291: ; preds = %.noexc284, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.qz, i64 %i.qw ; 7 uses
  %i.rf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qy) #17
          to label %.noexc300 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit204.thread820 ; 13 uses

.noexc300:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i291
  %i.rg = ptrtoaddr ptr %i.rf to i64              ; 3 uses
  store i32 0, ptr %i.rf, align 4, !tbaa !4
  br i1 %i.rc, label %.lr.ph, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i293

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i293: ; preds = %.noexc300
  %i.rh = getelementptr i8, ptr %i.rf, i64 4
  %.idx.i.i.i.i.i31.i294 = shl nuw nsw i64 %i.rb, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.rh, i8 0, i64 %.idx.i.i.i.i.i31.i294, i1 false), !tbaa !4
  br label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i293, %.noexc300
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.rf, i64 %i.qw ; 6 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !118 ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !119 ; 2 uses
  %min.iters.check847 = icmp ult i64 %i.qw, 8
  br i1 %min.iters.check847, label %scalar.ph846.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.rn = add nsw i64 %i.qw, -1                   ; 2 uses
  %i.ro = and i64 %i.rn, 4294967295
  %i.rp = icmp eq i64 %i.ro, 4294967295
  %i.rq = icmp ugt i64 %i.rn, 4294967295
  %i.rr = or i1 %i.rp, %i.rq
  br i1 %i.rr, label %scalar.ph846.preheader, label %vector.ph848

vector.ph848:                                     ; preds = %vector.scevcheck
  %n.vec850 = and i64 %i.qw, 8589934584           ; 3 uses
  br label %vector.body851

vector.body851:                                   ; preds = %vector.body851, %vector.ph848
  %index852 = phi i64 [ 0, %vector.ph848 ], [ %index.next859, %vector.body851 ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph848 ], [ %i.ru, %vector.body851 ]
  %vec.phi853 = phi <4 x i32> [ zeroinitializer, %vector.ph848 ], [ %i.rv, %vector.body851 ]
  %vec.phi854 = phi <4 x i32> [ zeroinitializer, %vector.ph848 ], [ %i.ry, %vector.body851 ]
  %vec.phi855 = phi <4 x i32> [ zeroinitializer, %vector.ph848 ], [ %i.rz, %vector.body851 ]
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %index852 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 16
  %wide.load = load <4 x i32>, ptr %i.rs, align 4, !tbaa !4
  %wide.load856 = load <4 x i32>, ptr %i.rt, align 4, !tbaa !4
  %i.ru = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi) ; 2 uses
  %i.rv = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load856, <4 x i32> %vec.phi853) ; 2 uses
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.rm, i64 %index852 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 16
  %wide.load857 = load <4 x i32>, ptr %i.rw, align 4, !tbaa !4
  %wide.load858 = load <4 x i32>, ptr %i.rx, align 4, !tbaa !4
  %i.ry = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load857, <4 x i32> %vec.phi854) ; 2 uses
  %i.rz = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load858, <4 x i32> %vec.phi855) ; 2 uses
  %index.next859 = add nuw i64 %index852, 8       ; 2 uses
  %i.sa = icmp eq i64 %index.next859, %n.vec850
  br i1 %i.sa, label %middle.block860, label %vector.body851, !llvm.loop !120

middle.block860:                                  ; preds = %vector.body851
  %rdx.minmax = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ru, <4 x i32> %i.rv)
  %i.sb = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %rdx.minmax861 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ry, <4 x i32> %i.rz)
  %i.sc = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax861) ; 2 uses
  %cmp.n862 = icmp eq i64 %i.qw, %n.vec850
  br i1 %cmp.n862, label %.lr.ph491, label %scalar.ph846.preheader

scalar.ph846.preheader:                           ; preds = %vector.scevcheck, %.lr.ph, %middle.block860
  %.ph1106 = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %n.vec850, %middle.block860 ]
  %.0142485.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %i.sb, %middle.block860 ]
  %.0143484.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %i.sc, %middle.block860 ]
  br label %scalar.ph846

.lr.ph491:                                        ; preds = %scalar.ph846, %middle.block860
  %spec.select.lcssa = phi i32 [ %i.sb, %middle.block860 ], [ %spec.select, %scalar.ph846 ]
  %.1144.lcssa = phi i32 [ %i.sc, %middle.block860 ], [ %.1144, %scalar.ph846 ]
  %i.sd = uitofp nneg i32 %spec.select.lcssa to double
  %i.se = uitofp nneg i32 %.1144.lcssa to double
  %i.sf = insertelement <2 x double> poison, double %i.sd, i64 0
  %i.sg = insertelement <2 x double> %i.sf, double %i.se, i64 1
  %i.sh = fdiv nnan <2 x double> splat (double 1.600000e+01), %i.sg ; 4 uses
  %i.si = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !118 ; 3 uses
  %i.sk = ptrtoaddr ptr %i.sj to i64              ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !119 ; 3 uses
  %i.sn = ptrtoaddr ptr %i.sm to i64              ; 2 uses
  %min.iters.check875 = icmp ult i64 %i.qw, 12
  br i1 %min.iters.check875, label %scalar.ph874.preheader, label %vector.scevcheck866

vector.scevcheck866:                              ; preds = %.lr.ph491
  %i.so = add nsw i64 %i.qw, -1                   ; 2 uses
  %i.sp = and i64 %i.so, 4294967295
  %i.sq = icmp eq i64 %i.sp, 4294967295
  %i.sr = icmp ugt i64 %i.so, 4294967295
  %i.ss = or i1 %i.sq, %i.sr
  br i1 %i.ss, label %scalar.ph874.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck866
  %i.st = sub i64 %i.ra, %i.rg
  %diff.check = icmp ugt i64 %i.st, -16
  %i.su = sub i64 %i.sk, %i.ra
  %diff.check867 = icmp ugt i64 %i.su, -16
  %conflict.rdx = or i1 %diff.check, %diff.check867
  %i.sv = sub i64 %i.ra, %i.sn
  %diff.check868 = icmp ugt i64 %i.sv, -16
  %conflict.rdx869 = or i1 %conflict.rdx, %diff.check868
  %i.sw = sub i64 %i.sk, %i.rg
  %diff.check870 = icmp ugt i64 %i.sw, -16
  %conflict.rdx871 = or i1 %conflict.rdx869, %diff.check870
  %i.sx = sub i64 %i.sn, %i.rg
  %diff.check872 = icmp ugt i64 %i.sx, -16
  %conflict.rdx873 = or i1 %conflict.rdx871, %diff.check872
  br i1 %conflict.rdx873, label %scalar.ph874.preheader, label %vector.ph876

vector.ph876:                                     ; preds = %vector.memcheck
  %n.vec878 = and i64 %i.qw, 8589934588           ; 3 uses
  %broadcast.splat880 = shufflevector <2 x double> %i.sh, <2 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splat882 = shufflevector <2 x double> %i.sh, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vector.body883

vector.body883:                                   ; preds = %vector.body883, %vector.ph876
  %index884 = phi i64 [ 0, %vector.ph876 ], [ %index.next887, %vector.body883 ] ; 5 uses
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %index884
  %wide.load885 = load <4 x i32>, ptr %i.sy, align 4, !tbaa !4
  %i.sz = sitofp <4 x i32> %wide.load885 to <4 x double>
  %i.ta = fmul <4 x double> %broadcast.splat880, %i.sz
  %i.tb = fptosi <4 x double> %i.ta to <4 x i32>
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.qz, i64 %index884
  store <4 x i32> %i.tb, ptr %i.tc, align 4, !tbaa !4
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %i.sm, i64 %index884
  %wide.load886 = load <4 x i32>, ptr %i.td, align 4, !tbaa !4
  %i.te = sitofp <4 x i32> %wide.load886 to <4 x double>
  %i.tf = fmul <4 x double> %broadcast.splat882, %i.te
  %i.tg = fptosi <4 x double> %i.tf to <4 x i32>
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %i.rf, i64 %index884
  store <4 x i32> %i.tg, ptr %i.th, align 4, !tbaa !4
  %index.next887 = add nuw i64 %index884, 4       ; 2 uses
  %i.ti = icmp eq i64 %index.next887, %n.vec878
  br i1 %i.ti, label %middle.block888, label %vector.body883, !llvm.loop !121

middle.block888:                                  ; preds = %vector.body883
  %cmp.n889 = icmp eq i64 %i.qw, %n.vec878
  br i1 %cmp.n889, label %._crit_edge492, label %scalar.ph874.preheader

scalar.ph874.preheader:                           ; preds = %vector.memcheck, %vector.scevcheck866, %.lr.ph491, %middle.block888
  %.ph1105 = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck866 ], [ 0, %.lr.ph491 ], [ %n.vec878, %middle.block888 ]
  %i.tj = extractelement <2 x double> %i.sh, i64 0
  %i.tk = extractelement <2 x double> %i.sh, i64 1
  br label %scalar.ph874

scalar.ph846:                                     ; preds = %scalar.ph846.preheader, %scalar.ph846
  %i.tl = phi i64 [ %indvars.iv.next, %scalar.ph846 ], [ %.ph1106, %scalar.ph846.preheader ] ; 3 uses
  %.0142485 = phi i32 [ %spec.select, %scalar.ph846 ], [ %.0142485.ph, %scalar.ph846.preheader ]
  %.0143484 = phi i32 [ %.1144, %scalar.ph846 ], [ %.0143484.ph, %scalar.ph846.preheader ]
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %i.tl
  %i.tn = load i32, ptr %i.tm, align 4, !tbaa !4
  %spec.select = call i32 @llvm.smax.i32(i32 %i.tn, i32 %.0142485) ; 2 uses
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %i.rm, i64 %i.tl
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !4
  %.1144 = call i32 @llvm.smax.i32(i32 %i.tp, i32 %.0143484) ; 2 uses
  %indvars.iv.next = add i64 %i.tl, 1             ; 2 uses
  %11 = and i64 %indvars.iv.next, 4294967295
  %i.tq = icmp samesign ugt i64 %i.qw, %11
  br i1 %i.tq, label %scalar.ph846, label %.lr.ph491, !llvm.loop !122

._crit_edge492:                                   ; preds = %scalar.ph874, %middle.block888
  %i.tr = trunc nuw i64 %i.qw to i32
  %i.ts = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !47
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.tv = load i32, ptr %i.tu, align 8, !tbaa !123
  %i.tw = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.tx = load i32, ptr %i.tw, align 8, !tbaa !124
  %i.ty = load ptr, ptr %4, align 8, !tbaa !81
  %i.tz = load ptr, ptr %2, align 8, !tbaa !81
  invoke void @calc_zorder(i32 noundef %i.tr, ptr noundef nonnull %i.qz, ptr noundef nonnull %i.rf, ptr noundef %i.tt, i32 noundef %i.tv, i32 noundef %i.tx, ptr noundef nonnull %i.ty, ptr noundef nonnull %i.tz)
          to label %bb.aq unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit204.thread820

scalar.ph874:                                     ; preds = %scalar.ph874.preheader, %scalar.ph874
  %i.ua = phi i64 [ %indvars.iv.next546, %scalar.ph874 ], [ %.ph1105, %scalar.ph874.preheader ] ; 5 uses
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %i.ua
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !4
  %i.ud = sitofp i32 %i.uc to double
  %i.ue = fmul double %i.tj, %i.ud
  %i.uf = fptosi double %i.ue to i32
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %i.qz, i64 %i.ua
  store i32 %i.uf, ptr %i.ug, align 4, !tbaa !4
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.sm, i64 %i.ua
  %i.ui = load i32, ptr %i.uh, align 4, !tbaa !4
  %i.uj = sitofp i32 %i.ui to double
  %i.uk = fmul double %i.tk, %i.uj
  %i.ul = fptosi double %i.uk to i32
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %i.rf, i64 %i.ua
  store i32 %i.ul, ptr %i.um, align 4, !tbaa !4
  %indvars.iv.next546 = add i64 %i.ua, 1          ; 2 uses
  %12 = and i64 %indvars.iv.next546, 4294967295
  %i.un = icmp samesign ugt i64 %i.qw, %12
  br i1 %i.un, label %scalar.ph874, label %._crit_edge492, !llvm.loop !125

bb.aq:                                            ; preds = %._crit_edge492
  %i.uo = load i64, ptr %i.b, align 8, !tbaa !8   ; 5 uses
  %i.up = icmp ugt i64 %i.uo, 2305843009213693951
  br i1 %i.up, label %bb.ar, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i213

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #19
          to label %.noexc219 unwind label %bb.bc

.noexc219:                                        ; preds = %bb.ar
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i213: ; preds = %bb.aq
  %.not.i.i.i.i214 = icmp eq i64 %i.uo, 0
  br i1 %.not.i.i.i.i214, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit221, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i213
  %i.uq = shl nuw nsw i64 %i.uo, 2
  %i.ur = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.uq) #17
          to label %.noexc220 unwind label %bb.bc ; 5 uses

.noexc220:                                        ; preds = %bb.as
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %i.ur, i64 %i.uo ; 2 uses
  store i32 0, ptr %i.ur, align 4, !tbaa !4
  %i.ut = add nsw i64 %i.uo, -1                   ; 2 uses
  %i.uu = icmp eq i64 %i.ut, 0
  br i1 %i.uu, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit221, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i215

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i215: ; preds = %.noexc220
  %i.uv = getelementptr i8, ptr %i.ur, i64 4
  %.idx.i.i.i.i.i.i.i216 = shl nuw nsw i64 %i.ut, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.uv, i8 0, i64 %.idx.i.i.i.i.i.i.i216, i1 false), !tbaa !4
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit221

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit221:            ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i215, %.noexc220, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i213
  %.sroa.0312.0 = phi ptr [ %i.ur, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i215 ], [ %i.ur, %.noexc220 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i213 ] ; 5 uses
  %.sroa.9.0 = phi ptr [ %i.us, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i215 ], [ %i.us, %.noexc220 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i213 ] ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !46
  invoke void @_ZN10MallocPlus20set_memory_attributeEPvi(ptr noundef nonnull align 8 dereferenceable(96) %i.uw, ptr noundef %i.uy, i32 noundef 256)
          to label %bb.at unwind label %bb.bd

bb.at:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit221
  %i.uz = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !49
  invoke void @_ZN10MallocPlus20set_memory_attributeEPvi(ptr noundef nonnull align 8 dereferenceable(96) %i.uw, ptr noundef %i.va, i32 noundef 256)
          to label %bb.au unwind label %bb.bd

bb.au:                                            ; preds = %bb.at
  %i.vb = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !50
  invoke void @_ZN10MallocPlus20set_memory_attributeEPvi(ptr noundef nonnull align 8 dereferenceable(96) %i.uw, ptr noundef %i.vc, i32 noundef 256)
          to label %bb.av unwind label %bb.bd

bb.av:                                            ; preds = %bb.au
  %i.vd = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !48
  invoke void @_ZN10MallocPlus20set_memory_attributeEPvi(ptr noundef nonnull align 8 dereferenceable(96) %i.uw, ptr noundef %i.ve, i32 noundef 256)
          to label %bb.aw unwind label %bb.bd

bb.aw:                                            ; preds = %bb.av
  %i.vf = load ptr, ptr %2, align 8, !tbaa !81
  invoke void @_ZN10MallocPlus18memory_reorder_allEPi(ptr noundef nonnull align 8 dereferenceable(96) %i.uw, ptr noundef nonnull %i.vf)
          to label %bb.ax unwind label %bb.bd

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZN4Mesh17memory_reset_ptrsEv(ptr noundef nonnull align 8 dereferenceable(2288) %0)
          to label %bb.ay unwind label %bb.bd

bb.ay:                                            ; preds = %bb.ax
  %i.vg = getelementptr inbounds nuw i8, ptr %0, i64 1416
  %i.vh = getelementptr inbounds nuw i8, ptr %0, i64 1424
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !91
  %i.vj = load ptr, ptr %i.vg, align 8, !tbaa !92 ; 12 uses
  %i.vk = ptrtoint ptr %i.vi to i64
  %i.vl = ptrtoint ptr %i.vj to i64               ; 2 uses
  %i.vm = sub i64 %i.vk, %i.vl
  %i.vn = ashr exact i64 %i.vm, 3
  %i.vo = load i64, ptr %i.b, align 8, !tbaa !8   ; 27 uses
  %.not164 = icmp ult i64 %i.vn, %i.vo
  br i1 %.not164, label %_ZNSt6vectorIdSaIdEED2Ev.exit232, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.vp = icmp ugt i64 %i.vo, 1152921504606846975
  br i1 %i.vp, label %bb.ba, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i222

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #19
          to label %.noexc228 unwind label %bb.be

.noexc228:                                        ; preds = %bb.ba
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i222: ; preds = %bb.az
  %.not.i.i.i.i223 = icmp eq i64 %i.vo, 0
  br i1 %.not.i.i.i.i223, label %_ZNSt6vectorIdSaIdEED2Ev.exit232, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i222
  %i.vq = shl nuw nsw i64 %i.vo, 3
  %i.vr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vq) #17
          to label %.noexc229 unwind label %bb.be ; 48 uses

.noexc229:                                        ; preds = %bb.bb
  %i.vs = ptrtoaddr ptr %i.vr to i64              ; 4 uses
  store double 0.000000e+00, ptr %i.vr, align 8, !tbaa !64
  %i.vt = add nsw i64 %i.vo, -1                   ; 2 uses
  %i.vu = icmp eq i64 %i.vt, 0
  br i1 %i.vu, label %.lr.ph494.preheader, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit230

_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit230:            ; preds = %.noexc229
  %i.vv = getelementptr i8, ptr %i.vr, i64 8
  %.idx.i.i.i.i.i.i.i225 = shl nuw nsw i64 %i.vt, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.vv, i8 0, i64 %.idx.i.i.i.i.i.i.i225, i1 false), !tbaa !64
  %i.vw = trunc i64 %i.vo to i32
  %i.vx = icmp sgt i32 %i.vw, 0
  br i1 %i.vx, label %.lr.ph494.preheader, label %.preheader479.thread

.lr.ph494.preheader:                              ; preds = %.noexc229, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit230
  %wide.trip.count = and i64 %i.vo, 2147483647    ; 14 uses
  %min.iters.check895 = icmp samesign ult i64 %wide.trip.count, 8
  %i.vy = sub i64 %i.vl, %i.vs
  %diff.check893 = icmp ugt i64 %i.vy, -32
  %or.cond1094 = or i1 %min.iters.check895, %diff.check893
  br i1 %or.cond1094, label %.lr.ph494.preheader1104, label %vector.ph896

vector.ph896:                                     ; preds = %.lr.ph494.preheader
  %n.vec898 = and i64 %i.vo, 2147483644           ; 3 uses
  br label %vector.body899

vector.body899:                                   ; preds = %vector.body899, %vector.ph896
  %index900 = phi i64 [ 0, %vector.ph896 ], [ %index.next903, %vector.body899 ] ; 3 uses
  %i.vz = getelementptr inbounds nuw [8 x i8], ptr %i.vj, i64 %index900 ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 16
  %wide.load901 = load <2 x double>, ptr %i.vz, align 8, !tbaa !64
  %wide.load902 = load <2 x double>, ptr %i.wa, align 8, !tbaa !64
  %i.wb = getelementptr inbounds nuw [8 x i8], ptr %i.vr, i64 %index900 ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 16
  store <2 x double> %wide.load901, ptr %i.wb, align 8, !tbaa !64
  store <2 x double> %wide.load902, ptr %i.wc, align 8, !tbaa !64
  %index.next903 = add nuw i64 %index900, 4       ; 2 uses
  %i.wd = icmp eq i64 %index.next903, %n.vec898
  br i1 %i.wd, label %middle.block904, label %vector.body899, !llvm.loop !126

middle.block904:                                  ; preds = %vector.body899
  %cmp.n905 = icmp eq i64 %wide.trip.count, %n.vec898
  br i1 %cmp.n905, label %.lr.ph497, label %.lr.ph494.preheader1104

.lr.ph494.preheader1104:                          ; preds = %.lr.ph494.preheader, %middle.block904
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph494.preheader ], [ %n.vec898, %middle.block904 ] ; 3 uses
  %xtraiter = and i64 %i.vo, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph494.prol.loopexit, label %.lr.ph494.prol

.lr.ph494.prol:                                   ; preds = %.lr.ph494.preheader1104, %.lr.ph494.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph494.prol ], [ %indvars.iv.ph, %.lr.ph494.preheader1104 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph494.prol ], [ 0, %.lr.ph494.preheader1104 ]
  %i.we = getelementptr inbounds nuw [8 x i8], ptr %i.vj, i64 %indvars.iv.prol
  %i.wf = load double, ptr %i.we, align 8, !tbaa !64
  %i.wg = getelementptr inbounds nuw [8 x i8], ptr %i.vr, i64 %indvars.iv.prol
  store double %i.wf, ptr %i.wg, align 8, !tbaa !64
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph494.prol.loopexit, label %.lr.ph494.prol, !llvm.loop !127

.lr.ph494.prol.loopexit:                          ; preds = %.lr.ph494.prol, %.lr.ph494.preheader1104
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph494.preheader1104 ], [ %indvars.iv.next.prol, %.lr.ph494.prol ]
  %i.wh = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.wi = icmp ugt i64 %i.wh, -4
  br i1 %i.wi, label %.lr.ph497, label %.lr.ph494

.lr.ph497:                                        ; preds = %.lr.ph494.prol.loopexit, %.lr.ph494, %middle.block904
  %i.wj = load ptr, ptr %2, align 8, !tbaa !81    ; 5 uses
  %i.wk = add nsw i64 %wide.trip.count, -1        ; 4 uses
  %xtraiter1112 = and i64 %i.vo, 3                ; 3 uses
  %i.wl = icmp ult i64 %i.wk, 3
  br i1 %i.wl, label %.epil.preheader, label %.lr.ph497.new

.lr.ph497.new:                                    ; preds = %.lr.ph497
  %unroll_iter = and i64 %i.vo, 2147483644
  br label %bb.bg

bb.bc:                                            ; preds = %bb.as, %bb.ar
  %i.wm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit248.thread

bb.bd:                                            ; preds = %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit221
  %i.wn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.be:                                            ; preds = %bb.bb, %bb.ba
  %i.wo = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

end_hunk_1
