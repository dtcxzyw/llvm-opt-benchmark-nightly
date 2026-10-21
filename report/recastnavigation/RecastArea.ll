Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/RecastArea?download=true
inline.NumInlined: 85
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_Z26rcMedianFilterWalkableAreaP9rcContextR20rcCompactHeightfield:bb.a
  %.sroa.46.7 = phi i8 [ %i.ax, %bb.z ], [ %spec.select286, %bb.aa ], [ %spec.select286, %bb.ab ] ; 4 uses
  %.sroa.69.5 = phi i8 [ %i.ax, %bb.z ], [ %i.ax, %bb.aa ], [ %spec.select287, %bb.ab ] ; 6 uses
  %i.du = lshr i32 %i.bb, 12
  %i.dv = and i32 %i.du, 63                       ; 2 uses
  %i.dw = icmp eq i32 %i.dv, 63
  br i1 %i.dw, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dx = load ptr, ptr %i.r, align 8, !tbaa !70  ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.v
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.at
  %i.ea = load i32, ptr %i.dz, align 4
  %i.eb = and i32 %i.ea, 16777215
  %i.ec = add nuw nsw i32 %i.eb, %i.dv
  %i.ed = zext nneg i32 %i.ec to i64              ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !72  ; 2 uses
  %.not92.2 = icmp eq i8 %i.ef, 0
  %spec.select288 = select i1 %.not92.2, i8 %i.ax, i8 %i.ef ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.ed
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  %i.ei = load i32, ptr %i.eh, align 4
  %i.ej = lshr i32 %i.ei, 18
  %i.ek = and i32 %i.ej, 63                       ; 2 uses
  %.not93.2 = icmp eq i32 %i.ek, 63
  br i1 %.not93.2, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.el = getelementptr [4 x i8], ptr %i.dx, i64 %i.at
  %i.em = getelementptr [4 x i8], ptr %i.el, i64 %i.ab
  %i.en = load i32, ptr %i.em, align 4
  %i.eo = and i32 %i.en, 16777215
  %i.ep = add nuw nsw i32 %i.eo, %i.ek
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !72  ; 2 uses
  %.not94.2 = icmp eq i8 %i.es, 0
  %spec.select289 = select i1 %.not94.2, i8 %i.ax, i8 %i.es
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %.sroa.89.6 = phi i8 [ %i.ax, %bb.ac ], [ %spec.select288, %bb.ad ], [ %spec.select288, %bb.ae ] ; 8 uses
  %.sroa.107.3 = phi i8 [ %i.ax, %bb.ac ], [ %i.ax, %bb.ad ], [ %spec.select289, %bb.ae ] ; 9 uses
  %i.et = lshr i32 %i.bb, 18
  %i.eu = and i32 %i.et, 63                       ; 2 uses
  %i.ev = icmp eq i32 %i.eu, 63
  br i1 %i.ev, label %.critedge.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ew = load ptr, ptr %i.r, align 8, !tbaa !70  ; 2 uses
  %i.ex = getelementptr [4 x i8], ptr %i.ew, i64 %i.ad
  %i.ey = getelementptr [4 x i8], ptr %i.ex, i64 %indvars.iv144
  %i.ez = load i32, ptr %i.ey, align 4
  %i.fa = and i32 %i.ez, 16777215
  %i.fb = add nuw nsw i32 %i.fa, %i.eu
  %i.fc = zext nneg i32 %i.fb to i64              ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !72  ; 2 uses
  %.not92.3 = icmp eq i8 %i.fe, 0
  %spec.select290 = select i1 %.not92.3, i8 %i.ax, i8 %i.fe ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.fc
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  %i.fh = load i32, ptr %i.fg, align 4
  %i.fi = and i32 %i.fh, 63                       ; 2 uses
  %.not93.3 = icmp eq i32 %i.fi, 63
  br i1 %.not93.3, label %.critedge.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fj = getelementptr [4 x i8], ptr %i.ew, i64 %indvars.iv144
  %i.fk = getelementptr i8, ptr %i.fj, i64 -4
  %i.fl = getelementptr [4 x i8], ptr %i.fk, i64 %i.ad
  %i.fm = load i32, ptr %i.fl, align 4
  %i.fn = and i32 %i.fm, 16777215
  %i.fo = add nuw nsw i32 %i.fn, %i.fi
  %i.fp = zext nneg i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.fp
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !72  ; 2 uses
  %.not94.3 = icmp eq i8 %i.fr, 0
  %spec.select291 = select i1 %.not94.3, i8 %i.ax, i8 %i.fr
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.ah, %bb.ag, %bb.af
  %.sroa.121.3 = phi i8 [ %i.ax, %bb.af ], [ %spec.select290, %bb.ag ], [ %spec.select290, %bb.ah ] ; 9 uses
  %.sroa.132.1 = phi i8 [ %i.ax, %bb.af ], [ %i.ax, %bb.ag ], [ %spec.select291, %bb.ah ] ; 9 uses
  %.sroa.0.0 = tail call i8 @llvm.umin.i8(i8 %.sroa.0.8, i8 %.sroa.20.7) ; 3 uses
  %.sroa.20.0 = tail call i8 @llvm.umax.i8(i8 %.sroa.0.8, i8 %.sroa.20.7) ; 3 uses
  %i.fs = icmp ugt i8 %.sroa.20.0, %.sroa.46.7    ; 2 uses
  %spec.select = tail call i8 @llvm.umin.i8(i8 %.sroa.0.0, i8 %.sroa.46.7)
  %spec.select271 = tail call i8 @llvm.umax.i8(i8 %.sroa.0.0, i8 %.sroa.46.7)
  %.sroa.0.1 = select i1 %i.fs, i8 %spec.select, i8 %.sroa.0.0 ; 4 uses
  %.sroa.20.1 = select i1 %i.fs, i8 %spec.select271, i8 %.sroa.20.0 ; 4 uses
  %.sroa.46.0 = tail call i8 @llvm.umax.i8(i8 %.sroa.20.0, i8 %.sroa.46.7) ; 4 uses
  %i.ft = icmp ugt i8 %.sroa.46.0, %.sroa.69.5
  br i1 %i.ft, label %bb.f, label %.critedge.2.i

_ZL10insertSortPhi.exit:                          ; preds = %bb.w, %.critedge.6.i, %.lr.ph
  %.sroa.89.4.sink = phi i8 [ 0, %.lr.ph ], [ %spec.select292, %bb.w ], [ %.sroa.89.3, %.critedge.6.i ]
  %i.fu = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  store i8 %.sroa.89.4.sink, ptr %i.fu, align 1, !tbaa !72
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fv = icmp samesign ult i64 %indvars.iv.next, %i.ar
  br i1 %i.fv, label %.lr.ph, label %._crit_edge

bb.ai:                                            ; preds = %._crit_edge139.split, %bb.c
  %i.fw = load i8, ptr %i.d, align 1, !tbaa !27, !range !28, !noundef !29
  %i.fx = trunc nuw i8 %i.fw to i1
  br i1 %i.fx, label %bb.aj, label %_ZN13rcScopedTimerD2Ev.exit

bb.aj:                                            ; preds = %bb.ai
  %i.fy = load ptr, ptr %0, align 8, !tbaa !31
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 48
  %i.ga = load ptr, ptr %i.fz, align 8
  tail call void %i.ga(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 9) #5, !call_target !74, !inline_history !3
  br label %_ZN13rcScopedTimerD2Ev.exit

_ZN13rcScopedTimerD2Ev.exit:                      ; preds = %bb.ai, %bb.aj
  ret i1 %.not
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define void @_Z13rcMarkBoxAreaP9rcContextPKfS2_hR20rcCompactHeightfield(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i8 noundef zeroext %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %4) local_unnamed_addr #0 {
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
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
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
  %5 = load ptr, ptr %i.az, align 8, !tbaa !70
  %i.bi = getelementptr [4 x i8], ptr %5, i64 %indvars.iv99
  %i.bj = getelementptr [4 x i8], ptr %i.bi, i64 %i.bh
  %i.bk = load i32, ptr %i.bj, align 4            ; 3 uses
  %i.bl = lshr i32 %i.bk, 24                      ; 2 uses
  %.not97 = icmp eq i32 %i.bl, 0
  br i1 %.not97, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.bm = and i32 %i.bk, 16777215
  %i.bn = add nuw nsw i32 %i.bm, %i.bl
  %i.bo = and i32 %i.bk, 16777215
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = zext nneg i32 %i.bn to i64
  %.pre107.a = load ptr, ptr %i.ba, align 8, !tbaa !73
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.g, %bb.d
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next100, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge94, label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %i.br = phi ptr [ %.pre107.a, %.lr.ph.preheader ], [ %i.cb, %bb.g ] ; 3 uses
  %indvars.iv = phi i64 [ %i.bp, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv
  %i.bt = load i16, ptr %i.bs, align 4, !tbaa !77
  %i.bu = zext i16 %i.bt to i32                   ; 2 uses
  %i.bv = icmp slt i32 %i.bu, %i.ae
  %i.bw = icmp sgt i32 %i.bu, %i.ai
  %or.cond = select i1 %i.bv, i1 true, i1 %i.bw
  br i1 %or.cond, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.bx = load ptr, ptr %i.bb, align 8, !tbaa !71
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %indvars.iv ; 2 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !72
  %i.ca = icmp eq i8 %i.bz, 0
  br i1 %i.ca, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 %3, ptr %i.by, align 1, !tbaa !72
  %.pre.a = load ptr, ptr %i.ba, align 8, !tbaa !73
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %.lr.ph, %bb.f
  %i.cb = phi ptr [ %i.br, %bb.e ], [ %i.br, %.lr.ph ], [ %.pre.a, %bb.f ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cc = icmp samesign ult i64 %indvars.iv.next, %i.bq
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
  %.sroa.10.0.lcssa = phi float [ %i.l, %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit ], [ %i.bd, %.lr.ph ]
  %.sroa.0100.0.lcssa = phi float [ %i.j, %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit ], [ %i.bb, %.lr.ph ]
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
  %.sroa.0100.0123 = phi float [ %i.j, %.lr.ph.preheader ], [ %i.bb, %.lr.ph ] ; 2 uses
  %.sroa.10.0121 = phi float [ %i.l, %.lr.ph.preheader ], [ %i.bd, %.lr.ph ] ; 2 uses
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
  %i.bb = select i1 %i.ba, float %.sroa.0100.0123, float %i.at ; 2 uses
  %i.bc = fcmp ogt float %.sroa.10.0121, %i.ax
  %i.bd = select i1 %i.bc, float %.sroa.10.0121, float %i.ax ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %._crit_edge
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.ab, i32 0) ; 2 uses
  %i.be = add nsw i32 %i.g, -1
  %i.bf = extractelement <2 x i32> %i.ao, i64 1
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.bf, i32 %i.be) ; 2 uses
  %spec.store.select1 = tail call i32 @llvm.smax.i32(i32 %i.af, i32 0) ; 2 uses
  %i.bg = add nsw i32 %i.i, -1
  %i.bh = extractelement <2 x i32> %i.ao, i64 0
  %.080 = tail call i32 @llvm.smin.i32(i32 %i.bh, i32 %i.bg) ; 2 uses
  %.not94136 = icmp sgt i32 %spec.store.select1, %.080
  br i1 %.not94136, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.c
  %.not95132 = icmp sle i32 %spec.store.select, %spec.select
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.bl = add nsw i32 %2, -1
  %wide.trip.count.i = zext nneg i32 %2 to i64
  %i.bm = icmp sgt i32 %2, 0
  %or.cond = and i1 %.not95132, %i.bm
  br i1 %or.cond, label %.preheader.us.preheader, label %.loopexit

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.bn = zext nneg i32 %spec.store.select to i64
  %i.bo = add nuw nsw i32 %spec.select, 1
  %i.bp = zext nneg i32 %spec.store.select1 to i64
  %i.bq = sext i32 %i.g to i64
  %i.br = add nuw nsw i32 %.080, 1
  %wide.trip.count161 = zext nneg i32 %i.br to i64
  %wide.trip.count156 = zext nneg i32 %i.bo to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge135.split.us.us
  %indvars.iv158 = phi i64 [ %i.bp, %.preheader.us.preheader ], [ %indvars.iv.next159, %._crit_edge135.split.us.us ] ; 3 uses
  %i.bs = mul nsw i64 %indvars.iv158, %i.bq
  %i.bt = trunc nuw nsw i64 %indvars.iv158 to i32
  %i.bu = uitofp nneg i32 %i.bt to float
  %i.bv = fadd float %i.bu, 5.000000e-01
  %i.bw = insertelement <2 x float> poison, float %i.bv, i64 1
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge131.split.us.us.us, %.preheader.us
  %indvars.iv153 = phi i64 [ %indvars.iv.next154, %._crit_edge131.split.us.us.us ], [ %i.bn, %.preheader.us ] ; 3 uses
  %i.bx = load ptr, ptr %i.bi, align 8, !tbaa !70
  %i.by = getelementptr [4 x i8], ptr %i.bx, i64 %indvars.iv153
  %i.bz = getelementptr [4 x i8], ptr %i.by, i64 %i.bs
  %i.ca = load i32, ptr %i.bz, align 4            ; 3 uses
  %i.cb = lshr i32 %i.ca, 24                      ; 2 uses
  %.not141 = icmp eq i32 %i.cb, 0
  br i1 %.not141, label %._crit_edge131.split.us.us.us, label %.lr.ph130.us.us

.lr.ph130.us.us:                                  ; preds = %bb.d
  %i.cc = and i32 %i.ca, 16777215
  %i.cd = add nuw nsw i32 %i.cc, %i.cb
  %i.ce = trunc nuw nsw i64 %indvars.iv153 to i32
  %i.cf = uitofp nneg i32 %i.ce to float
  %i.cg = fadd float %i.cf, 5.000000e-01
  %i.ch = and i32 %i.ca, 16777215
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = zext nneg i32 %i.cd to i64
  %i.ck = insertelement <2 x float> %i.bw, float %i.cg, i64 0
  br label %bb.e

bb.e:                                             ; preds = %_ZL11pointInPolyiPKfS0_.exit.thread.us.us.us, %.lr.ph130.us.us
  %indvars.iv150 = phi i64 [ %indvars.iv.next151, %_ZL11pointInPolyiPKfS0_.exit.thread.us.us.us ], [ %i.ci, %.lr.ph130.us.us ] ; 3 uses
  %i.cl = load ptr, ptr %i.bj, align 8, !tbaa !71
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %indvars.iv150 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !72
  %i.co = icmp eq i8 %i.cn, 0
  br i1 %i.co, label %_ZL11pointInPolyiPKfS0_.exit.thread.us.us.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cp = load ptr, ptr %i.bk, align 8, !tbaa !73
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv150
  %i.cr = load i16, ptr %i.cq, align 4, !tbaa !77
  %i.cs = zext i16 %i.cr to i32                   ; 2 uses
  %i.ct = icmp slt i32 %i.cs, %i.ad
  %i.cu = icmp sgt i32 %i.cs, %i.ah
  %or.cond.us.us.us = select i1 %i.ct, i1 true, i1 %i.cu
  br i1 %or.cond.us.us.us, label %_ZL11pointInPolyiPKfS0_.exit.thread.us.us.us, label %.lr.ph.preheader.i.us.us.us

.lr.ph.preheader.i.us.us.us:                      ; preds = %bb.f
  %i.cv = load <2 x float>, ptr %i.n, align 4
  %i.cw = load <1 x float>, ptr %i.o, align 4
  %i.cx = load float, ptr %i.p, align 4, !tbaa !75
  %i.cy = shufflevector <1 x float> %i.cw, <1 x float> poison, <2 x i32> zeroinitializer
  %i.cz = insertelement <2 x float> %i.cv, float %i.cx, i64 1
end_hunk_0
begin_hunk_1_@_Z12rcOffsetPolyPKfifPfi:bb.a
  br i1 %.not101123, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a
  %i.a = add nsw i32 %1, -1
  %i.b = zext nneg i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %.094124 = phi i32 [ 0, %.lr.ph ], [ %.296, %bb.i ] ; 5 uses
  %i.c = trunc nuw nsw i64 %indvars.iv to i32
  %i.d = add i32 %i.a, %i.c
  %i.e = srem i32 %i.d, %1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %.not136 = icmp eq i64 %indvars.iv.next, %i.b   ; 2 uses
  %i.f = mul nsw i32 %i.e, 3
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %0, i64 %i.g ; 2 uses
  %.idx = mul nuw nsw i64 %indvars.iv, 12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 7 uses
  %i.j = mul i64 %indvars.iv.next, 3
  %i.k = and i64 %i.j, 4294967295
  %i.l = select i1 %.not136, i64 0, i64 %i.k
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l ; 2 uses
  %i.n = load float, ptr %i.i, align 4, !tbaa !75 ; 2 uses
  %i.o = load float, ptr %i.h, align 4, !tbaa !75
  %i.p = fsub float %i.n, %i.o                    ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 5 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !75 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.u = load float, ptr %i.t, align 4, !tbaa !75
  %i.v = fsub float %i.s, %i.u                    ; 4 uses
  %i.w = fmul float %i.p, %i.p
  %i.x = fadd float %i.w, 0.000000e+00
  %i.y = fmul float %i.v, %i.v
  %i.z = fadd float %i.x, %i.y                    ; 2 uses
  %i.aa = fcmp ogt float %i.z, f0x358637BD
  br i1 %i.aa, label %bb.c, label %_ZL16rcVsafeNormalizePf.exit

bb.c:                                             ; preds = %bb.b
  %i.ab = tail call noundef float @_Z6rcSqrtf(float noundef %i.z) #5
  %i.ac = fdiv float 1.000000e+00, %i.ab          ; 2 uses
  %i.ad = fmul float %i.p, %i.ac
  %i.ae = fmul float %i.v, %i.ac
  %.pre = load float, ptr %i.i, align 4, !tbaa !75
  %.pre131 = load float, ptr %i.r, align 4, !tbaa !75
  br label %_ZL16rcVsafeNormalizePf.exit

_ZL16rcVsafeNormalizePf.exit:                     ; preds = %bb.b, %bb.c
  %i.af = phi float [ %.pre131, %bb.c ], [ %i.s, %bb.b ]
  %i.ag = phi float [ %.pre, %bb.c ], [ %i.n, %bb.b ]
  %.sroa.13.0 = phi float [ %i.ae, %bb.c ], [ %i.v, %bb.b ] ; 5 uses
  %.sroa.0112.0 = phi float [ %i.ad, %bb.c ], [ %i.p, %bb.b ] ; 5 uses
  %i.ah = load float, ptr %i.m, align 4, !tbaa !75
  %i.ai = fsub float %i.ah, %i.ag                 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !75
  %i.al = fsub float %i.ak, %i.af                 ; 4 uses
  %i.am = fmul float %i.ai, %i.ai
  %i.an = fadd float %i.am, 0.000000e+00
  %i.ao = fmul float %i.al, %i.al
  %i.ap = fadd float %i.an, %i.ao                 ; 2 uses
  %i.aq = fcmp ogt float %i.ap, f0x358637BD
  br i1 %i.aq, label %bb.d, label %_ZL16rcVsafeNormalizePf.exit102

bb.d:                                             ; preds = %_ZL16rcVsafeNormalizePf.exit
  %i.ar = tail call noundef float @_Z6rcSqrtf(float noundef %i.ap) #5
  %i.as = fdiv float 1.000000e+00, %i.ar          ; 2 uses
  %i.at = fmul float %i.ai, %i.as
  %i.au = fmul float %i.al, %i.as
  br label %_ZL16rcVsafeNormalizePf.exit102

_ZL16rcVsafeNormalizePf.exit102:                  ; preds = %_ZL16rcVsafeNormalizePf.exit, %bb.d
  %.sroa.14.0 = phi float [ %i.au, %bb.d ], [ %i.al, %_ZL16rcVsafeNormalizePf.exit ] ; 3 uses
  %.sroa.0.0 = phi float [ %i.at, %bb.d ], [ %i.ai, %_ZL16rcVsafeNormalizePf.exit ] ; 4 uses
  %i.av = fneg float %.sroa.14.0                  ; 3 uses
  %i.aw = fmul float %.sroa.0112.0, %i.av
  %i.ax = tail call float @llvm.fmuladd.f32(float %.sroa.0.0, float %.sroa.13.0, float %i.aw)
  %i.ay = fsub float %i.av, %.sroa.13.0
  %i.az = fmul float %i.ay, 5.000000e-01          ; 4 uses
  %i.ba = fadd float %.sroa.0112.0, %.sroa.0.0
  %i.bb = fmul float %i.ba, 5.000000e-01          ; 4 uses
  %i.bc = fmul float %i.az, %i.az
  %i.bd = fmul float %i.bb, %i.bb
  %i.be = fadd float %i.bc, %i.bd                 ; 3 uses
  %i.bf = fmul float %i.be, 1.200000e+00
  %i.bg = fmul float %i.bf, 1.200000e+00
  %i.bh = fcmp olt float %i.bg, 1.000000e+00
  %i.bi = fcmp ogt float %i.be, f0x358637BD       ; 2 uses
  %i.bj = fdiv float 1.000000e+00, %i.be          ; 2 uses
  %i.bk = fmul float %i.az, %i.bj
  %i.bl = fmul float %i.bb, %i.bj
  %.090 = select i1 %i.bi, float %i.bk, float %i.az
  %.089 = select i1 %i.bi, float %i.bl, float %i.bb
  %i.bm = fcmp olt float %i.ax, 0.000000e+00
  %or.cond = and i1 %i.bm, %i.bh
  br i1 %or.cond, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZL16rcVsafeNormalizePf.exit102
  %i.bn = add nsw i32 %.094124, 2                 ; 2 uses
  %i.bo = icmp sgt i32 %i.bn, %4
  br i1 %i.bo, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bp = fmul float %.sroa.13.0, %.sroa.14.0
  %i.bq = tail call float @llvm.fmuladd.f32(float %.sroa.0112.0, float %.sroa.0.0, float %i.bp)
  %i.br = fsub float 1.000000e+00, %i.bq
  %i.bs = fmul float %i.br, 5.000000e-01          ; 4 uses
  %i.bt = load float, ptr %i.i, align 4, !tbaa !75
  %i.bu = tail call float @llvm.fmuladd.f32(float %.sroa.0112.0, float %i.bs, float %.sroa.13.0)
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.bu, float %2, float %i.bt)
  %i.bw = mul nsw i32 %.094124, 3                 ; 2 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bx ; 3 uses
  store float %i.bv, ptr %i.by, align 4, !tbaa !75
  %i.bz = load float, ptr %i.q, align 4, !tbaa !75
  %i.ca = getelementptr i8, ptr %i.by, i64 4
  store float %i.bz, ptr %i.ca, align 4, !tbaa !75
  %i.cb = load float, ptr %i.r, align 4, !tbaa !75
  %i.cc = fneg float %.sroa.0112.0
  %i.cd = tail call float @llvm.fmuladd.f32(float %.sroa.13.0, float %i.bs, float %i.cc)
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.cd, float %2, float %i.cb)
  %i.cf = getelementptr i8, ptr %i.by, i64 8
  store float %i.ce, ptr %i.cf, align 4, !tbaa !75
  %i.cg = load float, ptr %i.i, align 4, !tbaa !75
  %i.ch = fneg float %.sroa.0.0                   ; 2 uses
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.ch, float %i.bs, float %.sroa.14.0)
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.ci, float %2, float %i.cg)
  %i.ck = add i32 %i.bw, 3
  %i.cl = sext i32 %i.ck to i64                   ; 2 uses
  %i.cm = getelementptr inbounds [4 x i8], ptr %3, i64 %i.cl ; 2 uses
  store float %i.cj, ptr %i.cm, align 4, !tbaa !75
  %i.cn = load float, ptr %i.q, align 4, !tbaa !75
  %i.co = getelementptr i8, ptr %i.cm, i64 4
  store float %i.cn, ptr %i.co, align 4, !tbaa !75
  %i.cp = load float, ptr %i.r, align 4, !tbaa !75
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.av, float %i.bs, float %i.ch)
  %i.cr = tail call float @llvm.fmuladd.f32(float %i.cq, float %2, float %i.cp)
  br label %bb.i

bb.g:                                             ; preds = %_ZL16rcVsafeNormalizePf.exit102
  %.not = icmp slt i32 %.094124, %4
  br i1 %.not, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.cs = add nsw i32 %.094124, 1
  %i.ct = load float, ptr %i.i, align 4, !tbaa !75
  %i.cu = fneg float %.090
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.cu, float %2, float %i.ct)
  %i.cw = mul nsw i32 %.094124, 3
  %i.cx = sext i32 %i.cw to i64                   ; 2 uses
  %i.cy = getelementptr inbounds [4 x i8], ptr %3, i64 %i.cx ; 2 uses
  store float %i.cv, ptr %i.cy, align 4, !tbaa !75
  %i.cz = load float, ptr %i.q, align 4, !tbaa !75
  %i.da = getelementptr i8, ptr %i.cy, i64 4
  store float %i.cz, ptr %i.da, align 4, !tbaa !75
  %i.db = load float, ptr %i.r, align 4, !tbaa !75
  %i.dc = fneg float %.089
  %i.dd = tail call float @llvm.fmuladd.f32(float %i.dc, float %2, float %i.db)
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h
  %i.de = phi i64 [ %i.cl, %bb.f ], [ %i.cx, %bb.h ]
  %.sink = phi float [ %i.cr, %bb.f ], [ %i.dd, %bb.h ]
  %.296 = phi i32 [ %i.bn, %bb.f ], [ %i.cs, %bb.h ] ; 2 uses
  %i.df = getelementptr inbounds [4 x i8], ptr %3, i64 %i.de
  %i.dg = getelementptr i8, ptr %i.df, i64 8
  store float %.sink, ptr %i.dg, align 4, !tbaa !75
  br i1 %.not136, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.i, %bb.e, %bb.g, %bb.a
  %spec.select = phi i32 [ 0, %bb.a ], [ 0, %bb.g ], [ 0, %bb.e ], [ %.296, %bb.i ]
  ret i32 %spec.select
}

; Function Attrs: nounwind uwtable
define void @_Z18rcMarkCylinderAreaP9rcContextPKfffhR20rcCompactHeightfield(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, float noundef %2, float noundef %3, i8 noundef zeroext %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !27, !range !28, !noundef !29
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 15) #5, !call_target !37, !inline_history !2
  br label %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit

_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit: ; preds = %bb.a, %bb.b
  %i.g = load i32, ptr %5, align 8, !tbaa !23     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !24   ; 2 uses
  %i.j = load float, ptr %1, align 4, !tbaa !75   ; 2 uses
  %i.k = fsub float %i.j, %2
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load float, ptr %i.l, align 4, !tbaa !75 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = load float, ptr %i.n, align 4, !tbaa !75 ; 2 uses
  %i.p = fsub float %i.o, %2
  %i.q = fadd float %3, %i.m
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 28 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 52 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.u = load <2 x float>, ptr %i.s, align 4, !tbaa !75 ; 2 uses
  %i.v = shufflevector <2 x float> %i.u, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.w = load <3 x float>, ptr %i.r, align 4, !tbaa !75 ; 2 uses
  %i.x = shufflevector <3 x float> %i.w, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.y = insertelement <4 x float> poison, float %i.k, i64 0
  %i.z = insertelement <4 x float> %i.y, float %i.m, i64 1
  %i.aa = insertelement <4 x float> %i.z, float %i.p, i64 2
  %i.ab = insertelement <4 x float> %i.aa, float %i.q, i64 3
  %i.ac = fsub <4 x float> %i.ab, %i.x
  %i.ad = fdiv <4 x float> %i.ac, %i.v            ; 4 uses
  %i.ae = extractelement <4 x float> %i.ad, i64 0
  %i.af = fptosi float %i.ae to i32               ; 2 uses
  %i.ag = extractelement <4 x float> %i.ad, i64 1
  %i.ah = fptosi float %i.ag to i32
  %i.ai = extractelement <4 x float> %i.ad, i64 2
  %i.aj = fptosi float %i.ai to i32               ; 2 uses
  %i.ak = extractelement <4 x float> %i.ad, i64 3
  %i.al = fptosi float %i.ak to i32
  %.not = icmp sgt i32 %i.g, %i.af
  %i.am = insertelement <2 x float> poison, float %2, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = insertelement <2 x float> poison, float %i.o, i64 0
  %i.ap = insertelement <2 x float> %i.ao, float %i.j, i64 1
  %i.aq = fadd <2 x float> %i.an, %i.ap
  %i.ar = shufflevector <3 x float> %i.w, <3 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.as = fsub <2 x float> %i.aq, %i.ar
  %i.at = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = fdiv <2 x float> %i.as, %i.at
  %i.av = fptosi <2 x float> %i.au to <2 x i32>   ; 3 uses
  %i.aw = icmp sgt <2 x i32> %i.av, splat (i32 -1) ; 2 uses
  %i.ax = extractelement <2 x i1> %i.aw, i64 1
  %or.cond106.not110.not114 = select i1 %i.ax, i1 %.not, i1 false
  %i.ay = extractelement <2 x i1> %i.aw, i64 0
  %or.cond107.not112 = select i1 %or.cond106.not110.not114, i1 %i.ay, i1 false
  %.not99 = icmp sgt i32 %i.i, %i.aj
  %or.cond108 = select i1 %or.cond107.not112, i1 %.not99, i1 false
  br i1 %or.cond108, label %bb.c, label %.loopexit116

bb.c:                                             ; preds = %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.af, i32 0) ; 2 uses
  %i.az = add nsw i32 %i.g, -1
  %i.ba = extractelement <2 x i32> %i.av, i64 1
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.ba, i32 %i.az) ; 2 uses
  %spec.store.select1 = tail call i32 @llvm.smax.i32(i32 %i.aj, i32 0) ; 2 uses
  %i.bb = add nsw i32 %i.i, -1
  %i.bc = extractelement <2 x i32> %i.av, i64 0
  %.090 = tail call i32 @llvm.smin.i32(i32 %i.bc, i32 %i.bb) ; 2 uses
  %i.bd = fmul float %2, %2
  %.not102121 = icmp sgt i32 %spec.store.select1, %.090
  br i1 %.not102121, label %.loopexit116, label %.preheader115.lr.ph

.preheader115.lr.ph:                              ; preds = %bb.c
  %.not103118 = icmp sgt i32 %spec.store.select, %spec.select
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 72
  br i1 %.not103118, label %.loopexit116, label %.preheader115.preheader

.preheader115.preheader:                          ; preds = %.preheader115.lr.ph
  %i.bh = zext nneg i32 %spec.store.select to i64
  %i.bi = add nuw nsw i32 %spec.select, 1
  %i.bj = zext nneg i32 %spec.store.select1 to i64
  %i.bk = sext i32 %i.g to i64
  %i.bl = add nuw nsw i32 %.090, 1
  %wide.trip.count131 = zext nneg i32 %i.bl to i64
  %wide.trip.count = zext nneg i32 %i.bi to i64
  br label %.preheader115

.preheader115:                                    ; preds = %.preheader115.preheader, %._crit_edge
  %indvars.iv128 = phi i64 [ %i.bj, %.preheader115.preheader ], [ %indvars.iv.next129, %._crit_edge ] ; 3 uses
  %i.bm = mul nsw i64 %indvars.iv128, %i.bk
  %i.bn = trunc nuw nsw i64 %indvars.iv128 to i32
  %i.bo = uitofp nneg i32 %i.bn to float
  %i.bp = fadd float %i.bo, 5.000000e-01
  %i.bq = insertelement <2 x float> poison, float %i.bp, i64 1
  br label %bb.d

._crit_edge:                                      ; preds = %.loopexit
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %exitcond132.not = icmp eq i64 %indvars.iv.next129, %wide.trip.count131
  br i1 %exitcond132.not, label %.loopexit116, label %.preheader115

bb.d:                                             ; preds = %.preheader115, %.loopexit
  %indvars.iv125 = phi i64 [ %i.bh, %.preheader115 ], [ %indvars.iv.next126, %.loopexit ] ; 3 uses
  %i.br = load ptr, ptr %i.be, align 8, !tbaa !70
  %i.bs = getelementptr [4 x i8], ptr %i.br, i64 %indvars.iv125
  %i.bt = getelementptr [4 x i8], ptr %i.bs, i64 %i.bm
  %i.bu = load i32, ptr %i.bt, align 4            ; 3 uses
  %i.bv = lshr i32 %i.bu, 24                      ; 2 uses
  %i.bw = load <2 x float>, ptr %i.r, align 4
  %i.bx = trunc nuw nsw i64 %indvars.iv125 to i32
  %i.by = uitofp nneg i32 %i.bx to float
  %i.bz = fadd float %i.by, 5.000000e-01
  %i.ca = load <1 x float>, ptr %i.s, align 4
  %i.cb = load float, ptr %i.t, align 4, !tbaa !75
  %i.cc = load float, ptr %1, align 4, !tbaa !75
  %6 = load float, ptr %i.n, align 4, !tbaa !75
  %i.cd = insertelement <2 x float> %i.bq, float %i.bz, i64 0
  %i.ce = shufflevector <1 x float> %i.ca, <1 x float> poison, <2 x i32> zeroinitializer
  %i.cf = insertelement <2 x float> %i.bw, float %i.cb, i64 1
  %i.cg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> %i.ce, <2 x float> %i.cf)
  %i.ch = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.ci = insertelement <2 x float> %i.ch, float %6, i64 1
  %i.cj = fsub <2 x float> %i.cg, %i.ci           ; 2 uses
  %i.ck = fmul <2 x float> %i.cj, %i.cj
  %i.cl = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ck)
  %i.cm = fcmp ult float %i.cl, %i.bd
  %i.cn = icmp ne i32 %i.bv, 0
  %or.cond123 = select i1 %i.cm, i1 %i.cn, i1 false
  br i1 %or.cond123, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.co = and i32 %i.bu, 16777215
  %i.cp = add nuw nsw i32 %i.co, %i.bv
  %i.cq = and i32 %i.bu, 16777215
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = zext nneg i32 %i.cp to i64
  %.pre133.a = load ptr, ptr %i.bf, align 8, !tbaa !71
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %i.ct = phi ptr [ %.pre133.a, %.lr.ph.preheader ], [ %i.db, %bb.g ] ; 3 uses
  %indvars.iv = phi i64 [ %i.cr, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %indvars.iv ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !72
  %i.cw = icmp eq i8 %i.cv, 0
  br i1 %i.cw, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.cx = load ptr, ptr %i.bg, align 8, !tbaa !73
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv
  %i.cz = load i16, ptr %i.cy, align 4, !tbaa !77
  %i.da = zext i16 %i.cz to i32                   ; 2 uses
  %.not104 = icmp slt i32 %i.da, %i.ah
  %.not105 = icmp sgt i32 %i.da, %i.al
  %or.cond = select i1 %.not104, i1 true, i1 %.not105
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 %4, ptr %i.cu, align 1, !tbaa !72
  %.pre.a = load ptr, ptr %i.bf, align 8, !tbaa !71
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %.lr.ph
  %i.db = phi ptr [ %i.ct, %bb.e ], [ %.pre.a, %bb.f ], [ %i.ct, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dc = icmp samesign ult i64 %indvars.iv.next, %i.cs
  br i1 %i.dc, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.d
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next126, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d

.loopexit116:                                     ; preds = %._crit_edge, %bb.c, %.preheader115.lr.ph, %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit
  %i.dd = load i8, ptr %i.a, align 1, !tbaa !27, !range !28, !noundef !29
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %bb.h, label %_ZN13rcScopedTimerD2Ev.exit

bb.h:                                             ; preds = %.loopexit116
  %i.df = load ptr, ptr %0, align 8, !tbaa !31
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 48
  %i.dh = load ptr, ptr %i.dg, align 8
  tail call void %i.dh(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 15) #5, !call_target !74, !inline_history !3
  br label %_ZN13rcScopedTimerD2Ev.exit

_ZN13rcScopedTimerD2Ev.exit:                      ; preds = %.loopexit116, %bb.h
  ret void
}

declare noundef float @_Z6rcSqrtf(float noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.uadd.sat.i8(i8, i8) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!4, !5, !6, !7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "rcTimerLabel", file: !32, line: 39, baseType: !38, size: 32, elements: !68, identifier: "_ZTS12rcTimerLabel")
!1 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "rcContext", file: !32, line: 114, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS9rcContext")
!2 = distinct !{null, null}
!3 = distinct !{null, null}
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"short", !11, i64 0}
!16 = !{!"float", !11, i64 0}
!17 = !{!"any pointer", !11, i64 0}
!18 = !{!"p1 _ZTS13rcCompactCell", !17, i64 0}
!19 = !{!"p1 _ZTS13rcCompactSpan", !17, i64 0}
!20 = !{!"p1 short", !17, i64 0}
!21 = !{!"p1 omnipotent char", !17, i64 0}
!22 = !{!"_ZTS20rcCompactHeightfield", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !15, i64 24, !15, i64 26, !11, i64 28, !11, i64 40, !16, i64 52, !16, i64 56, !18, i64 64, !19, i64 72, !20, i64 80, !21, i64 88}
!23 = !{!22, !12, i64 0}
!24 = !{!22, !12, i64 4}
!25 = !{!"bool", !11, i64 0}
!26 = !{!"_ZTS9rcContext", !25, i64 8, !25, i64 9}
!27 = !{!26, !25, i64 9}
!28 = !{i8 0, i8 2}
!29 = !{}
!30 = !{!"vtable pointer", !10, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !DIFile(filename: "Recast/Include/Recast.h", directory: "/opt-bench/work/recastnavigation/recastnavigation", checksumkind: CSK_MD5, checksum: "a4a30d1b276324b9005ba15d2d361d90")
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !0)
!35 = !{null, !33, !34}
!36 = !DISubroutineType(types: !35)
!37 = !DISubprogram(name: "doStartTimer", linkageName: "_ZN9rcContext12doStartTimerE12rcTimerLabel", scope: !1, file: !32, line: 176, type: !36, scopeLine: 176, containingType: !1, virtualIndex: 5, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!38 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!39 = !DIEnumerator(name: "RC_TIMER_TOTAL", value: 0, isUnsigned: true)
!40 = !DIEnumerator(name: "RC_TIMER_TEMP", value: 1, isUnsigned: true)
!41 = !DIEnumerator(name: "RC_TIMER_RASTERIZE_TRIANGLES", value: 2, isUnsigned: true)
!42 = !DIEnumerator(name: "RC_TIMER_BUILD_COMPACTHEIGHTFIELD", value: 3, isUnsigned: true)
!43 = !DIEnumerator(name: "RC_TIMER_BUILD_CONTOURS", value: 4, isUnsigned: true)
!44 = !DIEnumerator(name: "RC_TIMER_BUILD_CONTOURS_TRACE", value: 5, isUnsigned: true)
!45 = !DIEnumerator(name: "RC_TIMER_BUILD_CONTOURS_SIMPLIFY", value: 6, isUnsigned: true)
!46 = !DIEnumerator(name: "RC_TIMER_FILTER_BORDER", value: 7, isUnsigned: true)
!47 = !DIEnumerator(name: "RC_TIMER_FILTER_WALKABLE", value: 8, isUnsigned: true)
!48 = !DIEnumerator(name: "RC_TIMER_MEDIAN_AREA", value: 9, isUnsigned: true)
!49 = !DIEnumerator(name: "RC_TIMER_FILTER_LOW_OBSTACLES", value: 10, isUnsigned: true)
!50 = !DIEnumerator(name: "RC_TIMER_BUILD_POLYMESH", value: 11, isUnsigned: true)
!51 = !DIEnumerator(name: "RC_TIMER_MERGE_POLYMESH", value: 12, isUnsigned: true)
!52 = !DIEnumerator(name: "RC_TIMER_ERODE_AREA", value: 13, isUnsigned: true)
!53 = !DIEnumerator(name: "RC_TIMER_MARK_BOX_AREA", value: 14, isUnsigned: true)
!54 = !DIEnumerator(name: "RC_TIMER_MARK_CYLINDER_AREA", value: 15, isUnsigned: true)
!55 = !DIEnumerator(name: "RC_TIMER_MARK_CONVEXPOLY_AREA", value: 16, isUnsigned: true)
!56 = !DIEnumerator(name: "RC_TIMER_BUILD_DISTANCEFIELD", value: 17, isUnsigned: true)
!57 = !DIEnumerator(name: "RC_TIMER_BUILD_DISTANCEFIELD_DIST", value: 18, isUnsigned: true)
!58 = !DIEnumerator(name: "RC_TIMER_BUILD_DISTANCEFIELD_BLUR", value: 19, isUnsigned: true)
!59 = !DIEnumerator(name: "RC_TIMER_BUILD_REGIONS", value: 20, isUnsigned: true)
!60 = !DIEnumerator(name: "RC_TIMER_BUILD_REGIONS_WATERSHED", value: 21, isUnsigned: true)
!61 = !DIEnumerator(name: "RC_TIMER_BUILD_REGIONS_EXPAND", value: 22, isUnsigned: true)
!62 = !DIEnumerator(name: "RC_TIMER_BUILD_REGIONS_FLOOD", value: 23, isUnsigned: true)
!63 = !DIEnumerator(name: "RC_TIMER_BUILD_REGIONS_FILTER", value: 24, isUnsigned: true)
!64 = !DIEnumerator(name: "RC_TIMER_BUILD_LAYERS", value: 25, isUnsigned: true)
!65 = !DIEnumerator(name: "RC_TIMER_BUILD_POLYMESHDETAIL", value: 26, isUnsigned: true)
!66 = !DIEnumerator(name: "RC_TIMER_MERGE_POLYMESHDETAIL", value: 27, isUnsigned: true)
!67 = !DIEnumerator(name: "RC_MAX_TIMERS", value: 28, isUnsigned: true)
!68 = !{!39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67}
!69 = !{!22, !12, i64 8}
!70 = !{!22, !18, i64 64}
!71 = !{!22, !21, i64 88}
!72 = !{!11, !11, i64 0}
!73 = !{!22, !19, i64 72}
!74 = !DISubprogram(name: "doStopTimer", linkageName: "_ZN9rcContext11doStopTimerE12rcTimerLabel", scope: !1, file: !32, line: 180, type: !36, scopeLine: 180, containingType: !1, virtualIndex: 6, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!75 = !{!16, !16, i64 0}
!76 = !{!"_ZTS13rcCompactSpan", !15, i64 0, !15, i64 2, !12, i64 4, !12, i64 7}
!77 = !{!76, !15, i64 0}
end_hunk_1
