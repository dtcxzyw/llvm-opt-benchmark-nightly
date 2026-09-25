Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/RecastArea?download=true
inline.NumInlined: 85
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_Z13rcMarkBoxAreaP9rcContextPKfS2_hR20rcCompactHeightfield:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !27, !range !28, !noundef !29
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 14) #5, !call_target !37, !inline_history !2
  br label %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit

_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit: ; preds = %bb.a, %bb.b
  %i.g = load i32, ptr %4, align 8, !tbaa !23     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !24   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load float, ptr %i.l, align 4, !tbaa !75
  %i.n = load float, ptr %2, align 4, !tbaa !75
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.p = load float, ptr %i.o, align 4, !tbaa !75
  %i.q = load <2 x float>, ptr %1, align 4, !tbaa !75
  %i.r = load <2 x float>, ptr %i.k, align 4, !tbaa !75 ; 2 uses
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.t = load <3 x float>, ptr %i.j, align 4, !tbaa !75 ; 2 uses
  %i.u = shufflevector <3 x float> %i.t, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.v = insertelement <4 x float> poison, float %i.m, i64 2
  %i.w = insertelement <4 x float> %i.v, float %i.p, i64 3
  %i.x = shufflevector <2 x float> %i.q, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.y = shufflevector <4 x float> %i.x, <4 x float> %i.w, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.z = fsub <4 x float> %i.y, %i.u
  %i.aa = fdiv <4 x float> %i.z, %i.s             ; 4 uses
  %i.ab = extractelement <4 x float> %i.aa, i64 0
  %i.ac = fptosi float %i.ab to i32               ; 2 uses
  %i.ad = extractelement <4 x float> %i.aa, i64 1
  %i.ae = fptosi float %i.ad to i32
  %i.af = extractelement <4 x float> %i.aa, i64 2
  %i.ag = fptosi float %i.af to i32               ; 2 uses
  %i.ah = extractelement <4 x float> %i.aa, i64 3
  %i.ai = fptosi float %i.ah to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !75
  %.not = icmp sgt i32 %i.g, %i.ac
  %i.al = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.am = insertelement <2 x float> %i.al, float %i.n, i64 1
  %i.an = shufflevector <3 x float> %i.t, <3 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.ao = fsub <2 x float> %i.am, %i.an
  %i.ap = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = fdiv <2 x float> %i.ao, %i.ap
  %i.ar = fptosi <2 x float> %i.aq to <2 x i32>   ; 3 uses
  %i.as = icmp sgt <2 x i32> %i.ar, splat (i32 -1) ; 2 uses
  %i.at = extractelement <2 x i1> %i.as, i64 1
  %or.cond81.not85.not89 = select i1 %i.at, i1 %.not, i1 false
  %i.au = extractelement <2 x i1> %i.as, i64 0
  %or.cond82.not87 = select i1 %or.cond81.not85.not89, i1 %i.au, i1 false
  %.not76 = icmp sgt i32 %i.i, %i.ag
  %or.cond83 = select i1 %or.cond82.not87, i1 %.not76, i1 false
  br i1 %or.cond83, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 0) ; 2 uses
  %i.av = add nsw i32 %i.g, -1
  %i.aw = extractelement <2 x i32> %i.ar, i64 1
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.aw, i32 %i.av) ; 2 uses
  %spec.store.select1 = tail call i32 @llvm.smax.i32(i32 %i.ag, i32 0) ; 2 uses
  %i.ax = add nsw i32 %i.i, -1
  %i.ay = extractelement <2 x i32> %i.ar, i64 0
  %.067 = tail call i32 @llvm.smin.i32(i32 %i.ay, i32 %i.ax) ; 2 uses
  %.not7995 = icmp sgt i32 %spec.store.select1, %.067
  br i1 %.not7995, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.c
  %.not8091 = icmp sgt i32 %spec.store.select, %spec.select
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 88
  br i1 %.not8091, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.bc = zext nneg i32 %spec.store.select to i64
  %i.bd = add nuw nsw i32 %spec.select, 1
  %i.be = zext nneg i32 %spec.store.select1 to i64
  %i.bf = sext i32 %i.g to i64
  %i.bg = add nuw nsw i32 %.067, 1
  %wide.trip.count105 = zext nneg i32 %i.bg to i64
  %wide.trip.count = zext nneg i32 %i.bd to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge94
  %indvars.iv102 = phi i64 [ %i.be, %.preheader.preheader ], [ %indvars.iv.next103, %._crit_edge94 ] ; 2 uses
  %i.bh = mul nsw i64 %indvars.iv102, %i.bf
  br label %bb.d

._crit_edge94:                                    ; preds = %._crit_edge
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %exitcond106.not = icmp eq i64 %indvars.iv.next103, %wide.trip.count105
  br i1 %exitcond106.not, label %.loopexit, label %.preheader

bb.d:                                             ; preds = %.preheader, %._crit_edge
  %indvars.iv99 = phi i64 [ %i.bc, %.preheader ], [ %indvars.iv.next100, %._crit_edge ] ; 2 uses
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !70
  %i.bj = getelementptr [4 x i8], ptr %i.bi, i64 %indvars.iv99
  %i.bk = getelementptr [4 x i8], ptr %i.bj, i64 %i.bh
  %i.bl = load i32, ptr %i.bk, align 4            ; 3 uses
  %i.bm = lshr i32 %i.bl, 24                      ; 2 uses
  %.not97 = icmp eq i32 %i.bm, 0
  br i1 %.not97, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.bn = and i32 %i.bl, 16777215
  %i.bo = add nuw nsw i32 %i.bn, %i.bm
  %i.bp = and i32 %i.bl, 16777215
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = zext nneg i32 %i.bo to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.g, %bb.d
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next100, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge94, label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ %i.bq, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.bs = load ptr, ptr %i.ba, align 8, !tbaa !73
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv
  %i.bu = load i16, ptr %i.bt, align 4, !tbaa !77
  %i.bv = zext i16 %i.bu to i32                   ; 2 uses
  %i.bw = icmp slt i32 %i.bv, %i.ae
  %i.bx = icmp sgt i32 %i.bv, %i.ai
  %or.cond = select i1 %i.bw, i1 true, i1 %i.bx
  br i1 %or.cond, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.by = load ptr, ptr %i.bb, align 8, !tbaa !71
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %indvars.iv ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !72
  %i.cb = icmp eq i8 %i.ca, 0
  br i1 %i.cb, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 %3, ptr %i.bz, align 1, !tbaa !72
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %.lr.ph, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cc = icmp samesign ult i64 %indvars.iv.next, %i.br
  br i1 %i.cc, label %.lr.ph, label %._crit_edge

.loopexit:                                        ; preds = %._crit_edge94, %bb.c, %.preheader.lr.ph, %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit
  %i.cd = load i8, ptr %i.a, align 1, !tbaa !27, !range !28, !noundef !29
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.h, label %_ZN13rcScopedTimerD2Ev.exit

bb.h:                                             ; preds = %.loopexit
  %i.cf = load ptr, ptr %0, align 8, !tbaa !31
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8
  tail call void %i.ch(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 14) #5, !call_target !74, !inline_history !3
  br label %_ZN13rcScopedTimerD2Ev.exit

_ZN13rcScopedTimerD2Ev.exit:                      ; preds = %.loopexit, %bb.h
  ret void
}

; Function Attrs: nounwind uwtable
define void @_Z20rcMarkConvexPolyAreaP9rcContextPKfiffhR20rcCompactHeightfield(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, float noundef %3, float noundef %4, i8 noundef zeroext %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !27, !range !28, !noundef !29
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 16) #5, !call_target !37, !inline_history !2
  br label %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit

_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit: ; preds = %bb.a, %bb.b
  %i.g = load i32, ptr %6, align 8, !tbaa !23     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !24   ; 2 uses
  %i.j = load float, ptr %1, align 4, !tbaa !75   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load float, ptr %i.k, align 4, !tbaa !75 ; 4 uses
  %i.m = icmp sgt i32 %2, 1
  br i1 %i.m, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit
  %.sroa.11.0.lcssa = phi float [ %i.l, %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit ], [ %i.az, %.lr.ph ]
  %.sroa.0103.0.lcssa = phi float [ %i.j, %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit ], [ %i.av, %.lr.ph ]
  %.sroa.10.0.lcssa = phi float [ %i.l, %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit ], [ %i.bb, %.lr.ph ]
  %.sroa.0100.0.lcssa = phi float [ %i.j, %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit ], [ %8, %.lr.ph ]
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 28 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 52 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 36
  %i.q = load <2 x float>, ptr %i.o, align 4, !tbaa !75 ; 2 uses
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.s = load <3 x float>, ptr %i.n, align 4, !tbaa !75 ; 2 uses
  %i.t = shufflevector <3 x float> %i.s, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.u = insertelement <4 x float> poison, float %.sroa.0103.0.lcssa, i64 0
  %i.v = insertelement <4 x float> %i.u, float %3, i64 1
  %i.w = insertelement <4 x float> %i.v, float %.sroa.11.0.lcssa, i64 2
  %i.x = insertelement <4 x float> %i.w, float %4, i64 3
  %i.y = fsub <4 x float> %i.x, %i.t
  %i.z = fdiv <4 x float> %i.y, %i.r              ; 4 uses
  %i.aa = extractelement <4 x float> %i.z, i64 0
  %i.ab = fptosi float %i.aa to i32               ; 2 uses
  %i.ac = extractelement <4 x float> %i.z, i64 1
  %i.ad = fptosi float %i.ac to i32
  %i.ae = extractelement <4 x float> %i.z, i64 2
  %i.af = fptosi float %i.ae to i32               ; 2 uses
  %i.ag = extractelement <4 x float> %i.z, i64 3
  %i.ah = fptosi float %i.ag to i32
  %.not = icmp sgt i32 %i.g, %i.ab
  %i.ai = insertelement <2 x float> poison, float %.sroa.10.0.lcssa, i64 0
  %i.aj = insertelement <2 x float> %i.ai, float %.sroa.0100.0.lcssa, i64 1
  %i.ak = shufflevector <3 x float> %i.s, <3 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.al = fsub <2 x float> %i.aj, %i.ak
  %i.am = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = fdiv <2 x float> %i.al, %i.am
  %i.ao = fptosi <2 x float> %i.an to <2 x i32>   ; 3 uses
  %i.ap = icmp sgt <2 x i32> %i.ao, splat (i32 -1) ; 2 uses
  %i.aq = extractelement <2 x i1> %i.ap, i64 1
  %or.cond96.not113.not117 = select i1 %i.aq, i1 %.not, i1 false
  %i.ar = extractelement <2 x i1> %i.ap, i64 0
  %or.cond97.not115 = select i1 %or.cond96.not113.not117, i1 %i.ar, i1 false
  %.not91 = icmp sgt i32 %i.i, %i.af
  %or.cond98 = select i1 %or.cond97.not115, i1 %.not91, i1 false
  br i1 %or.cond98, label %bb.c, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.sroa.0100.0123 = phi float [ %i.j, %.lr.ph.preheader ], [ %8, %.lr.ph ] ; 2 uses
  %.sroa.10.0121 = phi float [ %i.l, %.lr.ph.preheader ], [ %i.bb, %.lr.ph ] ; 2 uses
  %.sroa.0103.0120 = phi float [ %i.j, %.lr.ph.preheader ], [ %i.av, %.lr.ph ] ; 2 uses
  %.sroa.11.0118 = phi float [ %i.l, %.lr.ph.preheader ], [ %i.az, %.lr.ph ] ; 2 uses
  %.idx = mul nuw nsw i64 %indvars.iv, 12
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 2 uses
  %i.at = load float, ptr %i.as, align 4, !tbaa !75 ; 4 uses
  %i.au = fcmp olt float %.sroa.0103.0120, %i.at
  %i.av = select i1 %i.au, float %.sroa.0103.0120, float %i.at ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !75 ; 4 uses
  %i.ay = fcmp olt float %.sroa.11.0118, %i.ax
  %i.az = select i1 %i.ay, float %.sroa.11.0118, float %i.ax ; 2 uses
  %i.ba = fcmp ogt float %.sroa.0100.0123, %i.at
  %7 = fcmp ogt float %.sroa.10.0121, %i.ax
  %8 = select i1 %i.ba, float %.sroa.0100.0123, float %i.at ; 2 uses
  %i.bb = select i1 %7, float %.sroa.10.0121, float %i.ax ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %._crit_edge
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.ab, i32 0) ; 2 uses
  %i.bc = add nsw i32 %i.g, -1
  %i.bd = extractelement <2 x i32> %i.ao, i64 1
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.bd, i32 %i.bc) ; 2 uses
  %spec.store.select1 = tail call i32 @llvm.smax.i32(i32 %i.af, i32 0) ; 2 uses
  %i.be = add nsw i32 %i.i, -1
  %i.bf = extractelement <2 x i32> %i.ao, i64 0
  %.080 = tail call i32 @llvm.smin.i32(i32 %i.bf, i32 %i.be) ; 2 uses
  %.not94136 = icmp sgt i32 %spec.store.select1, %.080
  br i1 %.not94136, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.c
  %.not95132 = icmp sle i32 %spec.store.select, %spec.select
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.bj = add nsw i32 %2, -1
  %wide.trip.count.i = zext nneg i32 %2 to i64
  %i.bk = icmp sgt i32 %2, 0
  %or.cond = and i1 %.not95132, %i.bk
  br i1 %or.cond, label %.preheader.us.preheader, label %.loopexit

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.bl = zext nneg i32 %spec.store.select to i64
  %i.bm = add nuw nsw i32 %spec.select, 1
  %i.bn = zext nneg i32 %spec.store.select1 to i64
  %i.bo = sext i32 %i.g to i64
  %i.bp = add nuw nsw i32 %.080, 1
  %wide.trip.count161 = zext nneg i32 %i.bp to i64
  %wide.trip.count156 = zext nneg i32 %i.bm to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge135.split.us.us
  %indvars.iv158 = phi i64 [ %i.bn, %.preheader.us.preheader ], [ %indvars.iv.next159, %._crit_edge135.split.us.us ] ; 3 uses
  %i.bq = mul nsw i64 %indvars.iv158, %i.bo
  %i.br = trunc nuw nsw i64 %indvars.iv158 to i32
  %i.bs = uitofp nneg i32 %i.br to float
  %i.bt = fadd float %i.bs, 5.000000e-01
  %i.bu = insertelement <2 x float> poison, float %i.bt, i64 1
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge131.split.us.us.us, %.preheader.us
  %indvars.iv153 = phi i64 [ %indvars.iv.next154, %._crit_edge131.split.us.us.us ], [ %i.bl, %.preheader.us ] ; 3 uses
  %i.bv = load ptr, ptr %i.bg, align 8, !tbaa !70
  %i.bw = getelementptr [4 x i8], ptr %i.bv, i64 %indvars.iv153
  %i.bx = getelementptr [4 x i8], ptr %i.bw, i64 %i.bq
  %i.by = load i32, ptr %i.bx, align 4            ; 3 uses
  %i.bz = lshr i32 %i.by, 24                      ; 2 uses
  %.not141 = icmp eq i32 %i.bz, 0
  br i1 %.not141, label %._crit_edge131.split.us.us.us, label %.lr.ph130.us.us

.lr.ph130.us.us:                                  ; preds = %bb.d
  %i.ca = and i32 %i.by, 16777215
  %i.cb = add nuw nsw i32 %i.ca, %i.bz
  %i.cc = trunc nuw nsw i64 %indvars.iv153 to i32
  %i.cd = uitofp nneg i32 %i.cc to float
  %i.ce = fadd float %i.cd, 5.000000e-01
  %i.cf = and i32 %i.by, 16777215
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = zext nneg i32 %i.cb to i64
  %i.ci = insertelement <2 x float> %i.bu, float %i.ce, i64 0
  br label %bb.e

bb.e:                                             ; preds = %_ZL11pointInPolyiPKfS0_.exit.thread.us.us.us, %.lr.ph130.us.us
  %indvars.iv150 = phi i64 [ %indvars.iv.next151, %_ZL11pointInPolyiPKfS0_.exit.thread.us.us.us ], [ %i.cg, %.lr.ph130.us.us ] ; 3 uses
  %i.cj = load ptr, ptr %i.bh, align 8, !tbaa !71
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %indvars.iv150 ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !72
  %i.cm = icmp eq i8 %i.cl, 0
  br i1 %i.cm, label %_ZL11pointInPolyiPKfS0_.exit.thread.us.us.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cn = load ptr, ptr %i.bi, align 8, !tbaa !73
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv150
  %i.cp = load i16, ptr %i.co, align 4, !tbaa !77
  %i.cq = zext i16 %i.cp to i32                   ; 2 uses
  %i.cr = icmp slt i32 %i.cq, %i.ad
  %i.cs = icmp sgt i32 %i.cq, %i.ah
  %or.cond.us.us.us = select i1 %i.cr, i1 true, i1 %i.cs
  br i1 %or.cond.us.us.us, label %_ZL11pointInPolyiPKfS0_.exit.thread.us.us.us, label %.lr.ph.preheader.i.us.us.us

.lr.ph.preheader.i.us.us.us:                      ; preds = %bb.f
  %i.ct = load float, ptr %i.n, align 4, !tbaa !75
  %i.cu = load float, ptr %i.o, align 4, !tbaa !78
  %i.cv = load float, ptr %i.p, align 4, !tbaa !75
  %i.cw = insertelement <2 x float> poison, float %i.cu, i64 0
  %i.cx = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cy = insertelement <2 x float> poison, float %i.ct, i64 0
  %i.cz = insertelement <2 x float> %i.cy, float %i.cv, i64 1
  %i.da = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ci, <2 x float> %i.cx, <2 x float> %i.cz) ; 2 uses
  %i.db = extractelement <2 x float> %i.da, i64 1 ; 3 uses
  %i.dc = extractelement <2 x float> %i.da, i64 0
  br label %.lr.ph.i.us.us.us

.lr.ph.i.us.us.us:                                ; preds = %bb.h, %.lr.ph.preheader.i.us.us.us
  %indvars.iv.i.us.us.us = phi i64 [ 0, %.lr.ph.preheader.i.us.us.us ], [ %indvars.iv.next.i.us.us.us, %bb.h ] ; 3 uses
  %.03.i.us.us.us = phi i32 [ %i.bj, %.lr.ph.preheader.i.us.us.us ], [ %i.dx, %bb.h ]
  %.0221.i.us.us.us = phi i1 [ false, %.lr.ph.preheader.i.us.us.us ], [ %.1.i.us.us.us, %bb.h ] ; 2 uses
  %.idx.i.us.us.us = mul nuw nsw i64 %indvars.iv.i.us.us.us, 12
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i.us.us.us ; 2 uses
  %i.de = mul nsw i32 %.03.i.us.us.us, 3
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds [4 x i8], ptr %1, i64 %i.df ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.di = load float, ptr %i.dh, align 4, !tbaa !75 ; 3 uses
  %i.dj = fcmp ogt float %i.di, %i.db
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !75 ; 2 uses
  %i.dm = fcmp ule float %i.dl, %i.db
  %i.dn = xor i1 %i.dj, %i.dm
  br i1 %i.dn, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.us.us.us
  %i.do = load float, ptr %i.dg, align 4, !tbaa !75
  %i.dp = load float, ptr %i.dd, align 4, !tbaa !75 ; 2 uses
  %i.dq = fsub float %i.do, %i.dp
  %i.dr = fsub float %i.db, %i.di
  %i.ds = fmul float %i.dr, %i.dq
  %i.dt = fsub float %i.dl, %i.di
  %i.du = fdiv float %i.ds, %i.dt
  %i.dv = fadd float %i.dp, %i.du
  %i.dw = fcmp ult float %i.dc, %i.dv
  %spec.select.i.us.us.us = xor i1 %.0221.i.us.us.us, %i.dw
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.us.us.us
  %.1.i.us.us.us = phi i1 [ %spec.select.i.us.us.us, %bb.g ], [ %.0221.i.us.us.us, %.lr.ph.i.us.us.us ] ; 2 uses
  %indvars.iv.next.i.us.us.us = add nuw nsw i64 %indvars.iv.i.us.us.us, 1 ; 2 uses
  %i.dx = trunc nuw nsw i64 %indvars.iv.i.us.us.us to i32
  %exitcond.not.i.us.us.us = icmp eq i64 %indvars.iv.next.i.us.us.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.us, label %_ZL11pointInPolyiPKfS0_.exit.us.us.us, label %.lr.ph.i.us.us.us

_ZL11pointInPolyiPKfS0_.exit.us.us.us:            ; preds = %bb.h
  br i1 %.1.i.us.us.us, label %bb.i, label %_ZL11pointInPolyiPKfS0_.exit.thread.us.us.us

bb.i:                                             ; preds = %_ZL11pointInPolyiPKfS0_.exit.us.us.us
  store i8 %5, ptr %i.ck, align 1, !tbaa !72
  br label %_ZL11pointInPolyiPKfS0_.exit.thread.us.us.us

_ZL11pointInPolyiPKfS0_.exit.thread.us.us.us:     ; preds = %bb.i, %_ZL11pointInPolyiPKfS0_.exit.us.us.us, %bb.f, %bb.e
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %i.dy = icmp samesign ult i64 %indvars.iv.next151, %i.ch
  br i1 %i.dy, label %bb.e, label %._crit_edge131.split.us.us.us

._crit_edge131.split.us.us.us:                    ; preds = %_ZL11pointInPolyiPKfS0_.exit.thread.us.us.us, %bb.d
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1 ; 2 uses
  %exitcond157.not = icmp eq i64 %indvars.iv.next154, %wide.trip.count156
  br i1 %exitcond157.not, label %._crit_edge135.split.us.us, label %bb.d

._crit_edge135.split.us.us:                       ; preds = %._crit_edge131.split.us.us.us
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1 ; 2 uses
  %exitcond162.not = icmp eq i64 %indvars.iv.next159, %wide.trip.count161
  br i1 %exitcond162.not, label %.loopexit, label %.preheader.us

.loopexit:                                        ; preds = %._crit_edge135.split.us.us, %bb.c, %.preheader.lr.ph, %._crit_edge
  %i.dz = load i8, ptr %i.a, align 1, !tbaa !27, !range !28, !noundef !29
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.j, label %_ZN13rcScopedTimerD2Ev.exit

bb.j:                                             ; preds = %.loopexit
  %i.eb = load ptr, ptr %0, align 8, !tbaa !31
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %i.ed = load ptr, ptr %i.ec, align 8
  tail call void %i.ed(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 16) #5, !call_target !74, !inline_history !3
  br label %_ZN13rcScopedTimerD2Ev.exit

_ZN13rcScopedTimerD2Ev.exit:                      ; preds = %.loopexit, %bb.j
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nounwind uwtable
define noundef range(i32 -2147483647, -2147483648) i32 @_Z12rcOffsetPolyPKfifPfi(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, float noundef %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %.not101123 = icmp sgt i32 %1, 0
  br i1 %.not101123, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a
  %i.a = add nsw i32 %1, -1
  %i.b = zext nneg i32 %1 to i64                  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %.094124 = phi i32 [ 0, %.lr.ph ], [ %.296, %bb.i ] ; 5 uses
  %i.c = trunc nuw nsw i64 %indvars.iv to i32
  %i.d = add i32 %i.a, %i.c
  %i.e = srem i32 %i.d, %1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.f = icmp eq i64 %indvars.iv.next, %i.b
  %i.g = mul nsw i32 %i.e, 3
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [4 x i8], ptr %0, i64 %i.h ; 2 uses
end_hunk_0
