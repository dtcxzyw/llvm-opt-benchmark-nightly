Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/dungeongen?download=true
inline.NumInlined: 312
inline.NumDeleted: 66
begin_hunk_0_@_ZN10DungeonGen8makeRoomEN4core8vector3dIsEES2_:bb.a
bb.n:                                             ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit224.us
  %i.fr = sext i16 %i.fo to i32
  %i.fs = sub nsw i32 %i.dq, %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fe, i64 20
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !67
  %i.fw = mul nsw i32 %i.fs, %i.fv
  %i.fx = load i32, ptr %i.ft, align 4, !tbaa !68
  %i.fy = sext i16 %i.fk to i32
  %i.fz = sub nsw i32 %i.dn, %i.fy
  %i.ga = add i32 %i.fz, %i.fw
  %i.gb = mul i32 %i.ga, %i.fx
  %i.gc = sext i16 %i.fg to i32
  %i.gd = sub nsw i32 %i.er, %i.gc
  %i.ge = add nsw i32 %i.gd, %i.gb
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fe, i64 40
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !122
  %i.gh = zext i32 %i.ge to i64                   ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.gh
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !45
  %i.gk = and i8 %i.gj, 6
  %.not112.us = icmp eq i8 %i.gk, 0
  br i1 %.not112.us, label %bb.o, label %.thread363.us

bb.o:                                             ; preds = %bb.n
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fe, i64 32
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !72
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %i.gh
  store i32 %.sroa.0268.0.insert.ext, ptr %i.gn, align 4
  br label %.thread363.us

.thread363.us:                                    ; preds = %bb.o, %bb.n, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit224.us, %bb.m, %bb.l, %bb.k, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit202.us, %bb.j, %bb.i
  %indvars.iv.next429 = add nuw nsw i32 %indvars.iv428, 1 ; 2 uses
  %exitcond432.not = icmp eq i32 %indvars.iv.next429, %wide.trip.count431
  br i1 %exitcond432.not, label %._crit_edge401.us, label %bb.i, !llvm.loop !145

._crit_edge401.us:                                ; preds = %.thread363.us
  %i.go = add i16 %.0109402.us, 1                 ; 2 uses
  %i.gp = sext i16 %i.go to i32
  %i.gq = icmp slt i32 %i.gp, %i.d
  br i1 %i.gq, label %.preheader387.us, label %.preheader386, !llvm.loop !146

._crit_edge:                                      ; preds = %.thread360
  %indvars.iv.next424 = add nuw nsw i32 %indvars.iv423, 1 ; 2 uses
  %exitcond427.not = icmp eq i32 %indvars.iv.next424, %wide.trip.count426
  br i1 %exitcond427.not, label %.preheader388, label %.preheader389, !llvm.loop !147

bb.p:                                             ; preds = %.preheader389, %.thread360
  %indvars.iv418 = phi i32 [ 0, %.preheader389 ], [ %indvars.iv.next419, %.thread360 ] ; 2 uses
  %i.gr = trunc nuw nsw i32 %indvars.iv418 to i16
  %i.gs = add i16 %i.gr, %.sroa.8.0.extract.trunc ; 5 uses
  %i.gt = load ptr, ptr %0, align 8, !tbaa !57    ; 10 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gv = load i16, ptr %i.gu, align 4, !tbaa !70 ; 2 uses
  %.not.i150 = icmp sgt i16 %i.gv, %i.df
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 14
  %i.gx = load i16, ptr %i.gw, align 2
  %.not6.i151 = icmp slt i16 %i.gx, %i.df
  %or.cond.i152 = select i1 %.not.i150, i1 true, i1 %.not6.i151
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gt, i64 10
  %i.gz = load i16, ptr %i.gy, align 2            ; 2 uses
  %.not7.i153 = icmp sgt i16 %i.gz, %i.gs
  %or.cond12.i154 = select i1 %or.cond.i152, i1 true, i1 %.not7.i153
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.hb = load i16, ptr %i.ha, align 4
  %.not8.i155 = icmp slt i16 %i.hb, %i.gs
  %or.cond14.i156 = select i1 %or.cond12.i154, i1 true, i1 %.not8.i155
  br i1 %or.cond14.i156, label %.thread360, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gt, i64 12
  %i.hd = load i16, ptr %i.hc, align 4, !tbaa !64
  %i.he = sext i16 %i.hd to i32                   ; 2 uses
  %.not9.i157 = icmp slt i32 %i.da, %i.he
  br i1 %.not9.i157, label %.thread360, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit158

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit158: ; preds = %bb.q
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gt, i64 18
  %i.hg = load i16, ptr %i.hf, align 2, !tbaa !142
  %i.hh = sext i16 %i.hg to i32
  %.not368 = icmp sgt i32 %i.da, %i.hh
  br i1 %.not368, label %.thread360, label %bb.r

bb.r:                                             ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit158
  %i.hi = sub nsw i32 %i.da, %i.he
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gt, i64 20
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gt, i64 24
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !67
  %i.hm = mul nsw i32 %i.hi, %i.hl
  %i.hn = load i32, ptr %i.hj, align 4, !tbaa !68
  %i.ho = sext i16 %i.gs to i32                   ; 2 uses
  %i.hp = sext i16 %i.gz to i32
  %i.hq = sub nsw i32 %i.ho, %i.hp
  %i.hr = add i32 %i.hq, %i.hm
  %i.hs = mul i32 %i.hr, %i.hn
  %i.ht = sext i16 %i.gv to i32
  %i.hu = sub nsw i32 %i.dg, %i.ht
  %i.hv = add nsw i32 %i.hu, %i.hs
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gt, i64 40
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !122
  %i.hy = zext i32 %i.hv to i64                   ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.hy
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !45
  %i.ib = and i8 %i.ia, 6
  %.not113 = icmp eq i8 %i.ib, 0
  br i1 %.not113, label %bb.s, label %.thread360

bb.s:                                             ; preds = %bb.r
  %i.ic = getelementptr inbounds nuw i8, ptr %i.gt, i64 32
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !72
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %i.hy
  store i32 %.sroa.0268.0.insert.ext274477, ptr %i.ie, align 4
  %i.if = load ptr, ptr %0, align 8, !tbaa !57    ; 10 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ih = load i16, ptr %i.ig, align 4, !tbaa !70 ; 2 uses
  %.not.i172 = icmp sgt i16 %i.ih, %i.df
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 14
  %i.ij = load i16, ptr %i.ii, align 2
  %.not6.i173 = icmp slt i16 %i.ij, %i.df
  %or.cond.i174 = select i1 %.not.i172, i1 true, i1 %.not6.i173
  %i.ik = getelementptr inbounds nuw i8, ptr %i.if, i64 10
  %i.il = load i16, ptr %i.ik, align 2            ; 2 uses
  %.not7.i175 = icmp sgt i16 %i.il, %i.gs
  %or.cond12.i176 = select i1 %or.cond.i174, i1 true, i1 %.not7.i175
  %i.im = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %i.in = load i16, ptr %i.im, align 4
  %.not8.i177 = icmp slt i16 %i.in, %i.gs
  %or.cond14.i178 = select i1 %or.cond12.i176, i1 true, i1 %.not8.i177
  br i1 %or.cond14.i178, label %.thread360, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.io = getelementptr inbounds nuw i8, ptr %i.if, i64 12
  %i.ip = load i16, ptr %i.io, align 4, !tbaa !64 ; 2 uses
  %.not9.i179 = icmp slt i16 %.reass478, %i.ip
  br i1 %.not9.i179, label %.thread360, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit180

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit180: ; preds = %bb.t
  %i.iq = getelementptr inbounds nuw i8, ptr %i.if, i64 18
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !142
  %.not369 = icmp sgt i16 %.reass478, %i.ir
  br i1 %.not369, label %.thread360, label %bb.u

bb.u:                                             ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit180
  %i.is = sext i16 %i.ip to i32
  %i.it = sub nsw i32 %i.db, %i.is
  %i.iu = getelementptr inbounds nuw i8, ptr %i.if, i64 20
  %i.iv = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !67
  %i.ix = mul nsw i32 %i.it, %i.iw
  %i.iy = load i32, ptr %i.iu, align 4, !tbaa !68
  %i.iz = sext i16 %i.il to i32
  %i.ja = sub nsw i32 %i.ho, %i.iz
  %i.jb = add i32 %i.ja, %i.ix
  %i.jc = mul i32 %i.jb, %i.iy
  %i.jd = sext i16 %i.ih to i32
  %i.je = sub nsw i32 %i.dg, %i.jd
  %i.jf = add nsw i32 %i.je, %i.jc
  %i.jg = getelementptr inbounds nuw i8, ptr %i.if, i64 40
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !122
  %i.ji = zext i32 %i.jf to i64                   ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 %i.ji
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !45
  %i.jl = and i8 %i.jk, 6
  %.not114 = icmp eq i8 %i.jl, 0
  br i1 %.not114, label %bb.v, label %.thread360

bb.v:                                             ; preds = %bb.u
  %i.jm = getelementptr inbounds nuw i8, ptr %i.if, i64 32
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !72
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %i.ji
  store i32 %.sroa.0268.0.insert.ext274477, ptr %i.jo, align 4
  br label %.thread360

.thread360:                                       ; preds = %bb.s, %bb.t, %bb.p, %bb.q, %bb.r, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit158, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit180, %bb.u, %bb.v
  %indvars.iv.next419 = add nuw nsw i32 %indvars.iv418, 1 ; 2 uses
  %exitcond422.not = icmp eq i32 %indvars.iv.next419, %wide.trip.count421
  br i1 %exitcond422.not, label %._crit_edge, label %bb.p, !llvm.loop !148

.preheader386:                                    ; preds = %._crit_edge401.us, %.preheader388.thread, %.preheader388.thread.thread469
  %i.jp = phi i32 [ %i.di, %.preheader388.thread ], [ %i.cr, %.preheader388.thread.thread469 ], [ %i.dj, %._crit_edge401.us ]
  %i.jq = add nsw i32 %i.d, -1
  %i.jr = icmp sgt i32 %i.d, 2
  br i1 %i.jr, label %.preheader385.lr.ph, label %._crit_edge408

.preheader385.lr.ph:                              ; preds = %.preheader386
  %i.js = sext i16 %.sroa.5.0.extract.trunc to i32
  %i.jt = add nsw i32 %i.js, -1
  %i.ju = icmp sgt i16 %.sroa.5.0.extract.trunc, 2
  %i.jv = add nsw i32 %i.jp, -1
  %i.jw = icmp sgt i16 %.sroa.091.0.extract.trunc, 2
  %or.cond = and i1 %i.ju, %i.jw
  br i1 %or.cond, label %.preheader385.us.us, label %._crit_edge408

.preheader385.us.us:                              ; preds = %.preheader385.lr.ph, %._crit_edge406.split.us.us.us
  %.0105407.us.us = phi i16 [ %i.ls, %._crit_edge406.split.us.us.us ], [ 1, %.preheader385.lr.ph ] ; 2 uses
  %i.jx = add i16 %.0105407.us.us, %.sroa.15.0.extract.trunc ; 3 uses
  %i.jy = sext i16 %i.jx to i32
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge404.us.us.us, %.preheader385.us.us
  %.0104405.us.us.us = phi i16 [ 1, %.preheader385.us.us ], [ %3, %._crit_edge404.us.us.us ] ; 2 uses
  %i.jz = add i16 %.0104405.us.us.us, %.sroa.8.0.extract.trunc ; 3 uses
  %i.ka = sext i16 %i.jz to i32
  br label %bb.w

bb.w:                                             ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.us.us.us, %.preheader.us.us.us
  %.0103403.us.us.us = phi i16 [ 1, %.preheader.us.us.us ], [ %i.lo, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.us.us.us ] ; 2 uses
  %i.kb = add i16 %.0103403.us.us.us, %.sroa.0339.0.extract.trunc ; 3 uses
  %i.kc = load ptr, ptr %0, align 8, !tbaa !57    ; 9 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %i.ke = load i16, ptr %i.kd, align 4, !tbaa !70 ; 2 uses
  %.not.i238.us.us.us = icmp sgt i16 %i.ke, %i.kb
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kc, i64 14
  %i.kg = load i16, ptr %i.kf, align 2
  %.not6.i239.us.us.us = icmp slt i16 %i.kg, %i.kb
  %or.cond.i240.us.us.us = select i1 %.not.i238.us.us.us, i1 true, i1 %.not6.i239.us.us.us
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kc, i64 10
  %i.ki = load i16, ptr %i.kh, align 2            ; 2 uses
  %.not7.i241.us.us.us = icmp sgt i16 %i.ki, %i.jz
  %or.cond12.i242.us.us.us = select i1 %or.cond.i240.us.us.us, i1 true, i1 %.not7.i241.us.us.us
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %i.kk = load i16, ptr %i.kj, align 4
  %.not8.i243.us.us.us = icmp slt i16 %i.kk, %i.jz
  %or.cond14.i244.us.us.us = select i1 %or.cond12.i242.us.us.us, i1 true, i1 %.not8.i243.us.us.us
  br i1 %or.cond14.i244.us.us.us, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.us.us.us, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kc, i64 12
  %i.km = load i16, ptr %i.kl, align 4, !tbaa !64 ; 2 uses
  %.not9.i245.us.us.us = icmp slt i16 %i.jx, %i.km
  br i1 %.not9.i245.us.us.us, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.us.us.us, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.us.us.us

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.us.us.us: ; preds = %bb.x
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kc, i64 18
  %i.ko = load i16, ptr %i.kn, align 2, !tbaa !142
  %.not365.us.us.us = icmp sgt i16 %i.jx, %i.ko
  br i1 %.not365.us.us.us, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.us.us.us, label %bb.y

bb.y:                                             ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.us.us.us
  %i.kp = sext i16 %i.km to i32
  %i.kq = sub nsw i32 %i.jy, %i.kp
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kc, i64 20
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kc, i64 24
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !67
  %i.ku = mul nsw i32 %i.kq, %i.kt
  %i.kv = load i32, ptr %i.kr, align 4, !tbaa !68
  %i.kw = sext i16 %i.ki to i32
  %i.kx = sub nsw i32 %i.ka, %i.kw
  %i.ky = add i32 %i.kx, %i.ku
  %i.kz = mul i32 %i.ky, %i.kv
  %i.la = sext i16 %i.kb to i32
  %i.lb = sext i16 %i.ke to i32
  %i.lc = sub nsw i32 %i.la, %i.lb
  %i.ld = add nsw i32 %i.lc, %i.kz
  %i.le = getelementptr inbounds nuw i8, ptr %i.kc, i64 40
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !122
  %i.lg = zext i32 %i.ld to i64                   ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.lg ; 2 uses
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !45
  %i.lj = or i8 %i.li, 6
  store i8 %i.lj, ptr %i.lh, align 1, !tbaa !45
  %i.lk = load ptr, ptr %0, align 8, !tbaa !57
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 32
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !72
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %i.lg
  store i32 126, ptr %i.ln, align 4
  br label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.us.us.us

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.us.us.us: ; preds = %bb.y, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.us.us.us, %bb.x, %bb.w
  %i.lo = add i16 %.0103403.us.us.us, 1           ; 2 uses
  %i.lp = sext i16 %i.lo to i32
  %i.lq = icmp sgt i32 %i.jv, %i.lp
  br i1 %i.lq, label %bb.w, label %._crit_edge404.us.us.us, !llvm.loop !149

._crit_edge404.us.us.us:                          ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.us.us.us
  %3 = add i16 %.0104405.us.us.us, 1              ; 2 uses
  %4 = sext i16 %3 to i32
  %i.lr = icmp sgt i32 %i.jt, %4
  br i1 %i.lr, label %.preheader.us.us.us, label %._crit_edge406.split.us.us.us, !llvm.loop !150

._crit_edge406.split.us.us.us:                    ; preds = %._crit_edge404.us.us.us
  %i.ls = add i16 %.0105407.us.us, 1              ; 2 uses
  %i.lt = sext i16 %i.ls to i32
  %i.lu = icmp sgt i32 %i.jq, %i.lt
  br i1 %i.lu, label %.preheader385.us.us, label %._crit_edge408, !llvm.loop !151

._crit_edge408:                                   ; preds = %._crit_edge406.split.us.us.us, %.preheader389.lr.ph.thread473, %.preheader390.thread, %.preheader388, %.preheader385.lr.ph, %.preheader386
  ret void
}

declare noundef zeroext i1 @_ZN16GenerateNotifier8addEventE13GenNotifyTypeN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(104), i32 noundef, i48) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN10DungeonGen16findPlaceForDoorERN4core8vector3dIsEES3_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(152) %0, ptr nofree noundef nonnull writeonly align 2 captures(none) dereferenceable(6) %1, ptr nofree noundef nonnull writeonly align 2 captures(none) dereferenceable(6) %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 146 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 142 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 150
  %i.g = load ptr, ptr %0, align 8, !tbaa !57     ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 14
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 10
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 18
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 20 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.s = load i16, ptr %i.r, align 4              ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 9 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 134 ; 2 uses
  %.pre = load i16, ptr %i.a, align 4, !tbaa !18
  %.pre462 = load i16, ptr %i.b, align 2, !tbaa !18
  %.pre463 = load i16, ptr %i.c, align 2, !tbaa !20
  %.pre464 = load i16, ptr %i.d, align 4, !tbaa !20
  %.pre465 = load i16, ptr %i.e, align 8, !tbaa !21
  %.pre466 = load i16, ptr %i.f, align 2, !tbaa !21
  %i.v = load i8, ptr %i.u, align 2, !range !60   ; 2 uses
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = trunc nuw i8 %i.v to i1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.ad
  %i.y = phi i16 [ %.pre466, %bb.a ], [ %i.nk, %bb.ad ] ; 2 uses
  %i.z = phi i16 [ %.pre465, %bb.a ], [ %i.nl, %bb.ad ] ; 3 uses
  %i.aa = phi i16 [ %.pre464, %bb.a ], [ %i.nm, %bb.ad ] ; 2 uses
  %i.ab = phi i16 [ %.pre463, %bb.a ], [ %i.nn, %bb.ad ] ; 3 uses
  %i.ac = phi i16 [ %.pre462, %bb.a ], [ %i.no, %bb.ad ] ; 2 uses
  %i.ad = phi i16 [ %.pre, %bb.a ], [ %i.np, %bb.ad ] ; 3 uses
  %.017446 = phi i32 [ 0, %bb.a ], [ %i.nq, %bb.ad ] ; 2 uses
  %i.ae = add i16 %i.ac, %i.ad                    ; 12 uses
  %i.af = add i16 %i.aa, %i.ab                    ; 13 uses
  %i.ag = add i16 %i.y, %i.z                      ; 12 uses
  %i.ah = add i16 %i.af, 1                        ; 5 uses
  %i.ai = load i16, ptr %i.h, align 4, !tbaa !70  ; 8 uses
  %.not.i = icmp sgt i16 %i.ai, %i.ae
  %i.aj = load i16, ptr %i.i, align 2
  %.not6.i = icmp slt i16 %i.aj, %i.ae
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not6.i
  %i.ak = load i16, ptr %i.j, align 2             ; 15 uses
  %.not7.i = icmp sgt i16 %i.ak, %i.af
  %or.cond12.i = select i1 %or.cond.i, i1 true, i1 %.not7.i
  %i.al = load i16, ptr %i.k, align 4             ; 8 uses
  %.not8.i = icmp slt i16 %i.al, %i.af
  %or.cond14.i = select i1 %or.cond12.i, i1 true, i1 %.not8.i
  br i1 %or.cond14.i, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.am = load i16, ptr %i.l, align 4, !tbaa !64  ; 8 uses
  %.not9.i = icmp slt i16 %i.ag, %i.am
  br i1 %.not9.i, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit: ; preds = %bb.c
  %i.an = load i16, ptr %i.m, align 2, !tbaa !142
  %.not411 = icmp sgt i16 %i.ag, %i.an
  br i1 %.not411, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit
  %.not7.i36 = icmp sgt i16 %i.ak, %i.ah
  %.not8.i38 = icmp slt i16 %i.al, %i.ah
  %or.cond14.i39 = select i1 %.not7.i36, i1 true, i1 %.not8.i38
  %i.ao = and i32 %.017446, 3
  %i.ap = icmp eq i32 %i.ao, 0
  %or.cond = or i1 %or.cond14.i39, %i.ap
  br i1 %or.cond, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread, label %bb.g

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread: ; preds = %bb.d, %bb.b, %bb.c, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit
  %.pre.i.i = load i32, ptr %i.t, align 4, !tbaa !59 ; 2 uses
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread
  %i.aq = mul i32 %.pre.i.i, 1103515245
  %i.ar = add i32 %i.aq, 12345                    ; 3 uses
  %i.as = sdiv i32 %i.ar, 65536
  %i.at = and i32 %i.as, 3
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %.preheader.i.i, label %bb.f

.preheader.i.i:                                   ; preds = %bb.e, %.preheader.i.i
  %i.av = phi i32 [ %i.ba, %.preheader.i.i ], [ %i.ar, %bb.e ]
  %.0.i.i = phi i32 [ %i.aw, %.preheader.i.i ], [ 0, %bb.e ] ; 2 uses
  %i.aw = add nuw nsw i32 %.0.i.i, 1
  %i.ax = mul i32 %i.av, 1103515245
  %i.ay = add i32 %i.ax, 12345                    ; 2 uses
  %i.az = mul i32 %i.ay, 1103515245
  %i.ba = add i32 %i.az, 12345                    ; 3 uses
  %i.bb = insertelement <2 x i32> poison, i32 %i.ay, i64 0
  %i.bc = insertelement <2 x i32> %i.bb, i32 %i.ba, i64 1
  %i.bd = sdiv <2 x i32> %i.bc, splat (i32 65536)
  %i.be = trunc nsw <2 x i32> %i.bd to <2 x i16>
  %i.bf = and <2 x i16> %i.be, splat (i16 32767)
  %i.bg = urem <2 x i16> %i.bf, splat (i16 3)
  %i.bh = add nsw <2 x i16> %i.bg, splat (i16 -1) ; 2 uses
  %i.bi = icmp eq <2 x i16> %i.bh, zeroinitializer ; 2 uses
  %i.bj = extractelement <2 x i1> %i.bi, i64 0
  %i.bk = extractelement <2 x i1> %i.bi, i64 1
  %or.cond.i.i = select i1 %i.bk, i1 true, i1 %i.bj
  %i.bl = icmp samesign ult i32 %.0.i.i, 9
  %or.cond5.i.i = select i1 %or.cond.i.i, i1 %i.bl, i1 false
  br i1 %or.cond5.i.i, label %.preheader.i.i, label %.critedge.loopexit.i.i, !llvm.loop !152

bb.f:                                             ; preds = %bb.e, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread
  %i.bm = phi i32 [ %i.ar, %bb.e ], [ %.pre.i.i, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread ]
  %i.bn = mul i32 %i.bm, 1103515245
  %i.bo = add i32 %i.bn, 12345                    ; 2 uses
  %i.bp = mul i32 %i.bo, 1103515245
  %i.bq = add i32 %i.bp, 12345                    ; 2 uses
  store i32 %i.bq, ptr %i.t, align 4, !tbaa !59
  %i.br = insertelement <2 x i32> poison, i32 %i.bq, i64 0
  %i.bs = insertelement <2 x i32> %i.br, i32 %i.bo, i64 1
  %i.bt = sdiv <2 x i32> %i.bs, splat (i32 65536)
  %i.bu = and <2 x i32> %i.bt, splat (i32 1)
  %i.bv = icmp eq <2 x i32> %i.bu, zeroinitializer ; 2 uses
  %i.bw = extractelement <2 x i1> %i.bv, i64 0
  %spec.select.i.i = select i1 %i.bw, i16 1, i16 -1 ; 2 uses
  %i.bx = extractelement <2 x i1> %i.bv, i64 1    ; 2 uses
  %.spec.select.i.i = select i1 %i.bx, i16 0, i16 %spec.select.i.i
  %spec.select..i.i = select i1 %i.bx, i16 %spec.select.i.i, i16 0
  %i.by = insertelement <2 x i16> poison, i16 %.spec.select.i.i, i64 0
  %i.bz = insertelement <2 x i16> %i.by, i16 %spec.select..i.i, i64 1
  br label %_ZN10DungeonGen12randomizeDirEv.exit

.critedge.loopexit.i.i:                           ; preds = %.preheader.i.i
  store i32 %i.ba, ptr %i.t, align 4, !tbaa !59
  br label %_ZN10DungeonGen12randomizeDirEv.exit

_ZN10DungeonGen12randomizeDirEv.exit:             ; preds = %bb.f, %.critedge.loopexit.i.i
  %i.ca = phi <2 x i16> [ %i.bh, %.critedge.loopexit.i.i ], [ %i.bz, %bb.f ] ; 2 uses
  %i.cb = extractelement <2 x i16> %i.ca, i64 0   ; 2 uses
  %.sroa.13.0.insert.ext.i.i = zext i16 %i.cb to i48
  %.sroa.13.0.insert.shift.i.i = shl nuw i48 %.sroa.13.0.insert.ext.i.i, 32
  %i.cc = extractelement <2 x i16> %i.ca, i64 1   ; 2 uses
  %.sroa.0.0.insert.ext.i.i = zext i16 %i.cc to i48
  %.sroa.0.0.insert.insert.i.i = or disjoint i48 %.sroa.13.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  store i48 %.sroa.0.0.insert.insert.i.i, ptr %i.b, align 2
  br label %bb.ad

bb.g:                                             ; preds = %bb.d
  %i.cd = sext i16 %i.ag to i32
  %i.ce = sext i16 %i.am to i32
  %i.cf = sub nsw i32 %i.cd, %i.ce
  %i.cg = load i32, ptr %i.o, align 4, !tbaa !67
  %i.ch = mul nsw i32 %i.cg, %i.cf
  %i.ci = load i32, ptr %i.n, align 4, !tbaa !68
  %i.cj = sext i16 %i.af to i32
  %i.ck = sext i16 %i.ak to i32
  %i.cl = sub nsw i32 %i.cj, %i.ck
  %i.cm = add i32 %i.cl, %i.ch
  %i.cn = mul i32 %i.cm, %i.ci
  %i.co = sext i16 %i.ae to i32
  %i.cp = sext i16 %i.ai to i32
  %i.cq = sub nsw i32 %i.co, %i.cp
  %i.cr = add nsw i32 %i.cq, %i.cn
  %i.cs = load ptr, ptr %i.p, align 8, !tbaa !122
  %i.ct = sext i32 %i.cr to i64                   ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %i.cs, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !45
  %i.cw = and i8 %i.cv, 1
  %.not.i44 = icmp eq i8 %i.cw, 0
  br i1 %.not.i44, label %bb.h, label %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit

bb.h:                                             ; preds = %bb.g
  %i.cx = load ptr, ptr %i.q, align 8, !tbaa !72
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.ct
  %i.cz = load i32, ptr %i.cy, align 4
  %i.da = trunc i32 %i.cz to i16
  br label %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit

_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit: ; preds = %bb.g, %bb.h
  %.sroa.6.0.i = phi i16 [ %i.da, %bb.h ], [ 127, %bb.g ]
  %i.db = icmp eq i16 %.sroa.6.0.i, %i.s
  br i1 %i.db, label %bb.i, label %.critedge
end_hunk_0
begin_hunk_1_@_ZN10DungeonGen12makeCorridorEN4core8vector3dIsEES2_RS2_S3_:bb.a

bb.r:                                             ; preds = %bb.p
  %i.go = sub i16 0, %.sroa.18.0362
  br label %_Z11random_turnR12PseudoRandomRN4core8vector3dIsEE.exit

_Z11random_turnR12PseudoRandomRN4core8vector3dIsEE.exit: ; preds = %bb.q, %bb.r, %bb.p
  %.sroa.0287.2 = phi i16 [ %.sroa.0287.0359, %bb.p ], [ %i.go, %bb.r ], [ %.sroa.18.0362, %bb.q ] ; 2 uses
  %.sroa.18.2 = phi i16 [ %.sroa.18.0362, %bb.p ], [ %.sroa.0287.0359, %bb.r ], [ %.sroa.0287.0.neg, %bb.q ] ; 2 uses
  %i.gp = tail call noundef i32 @_ZN12PseudoRandom5rangeEii(ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef 1, i32 noundef %i.i) ; 3 uses
  %i.gq = load i32, ptr %i.b, align 4, !tbaa !59
  %i.gr = mul i32 %i.gq, 1103515245
  %i.gs = add i32 %i.gr, 12345                    ; 3 uses
  store i32 %i.gs, ptr %i.b, align 4, !tbaa !59
  %i.gt = sdiv i32 %i.gs, 65536
  %i.gu = and i32 %i.gt, 1
  %i.gv = icmp eq i32 %i.gu, 0
  %i.gw = icmp ugt i32 %i.gp, 2
  %or.cond9 = and i1 %i.gw, %i.gv
  br i1 %or.cond9, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_Z11random_turnR12PseudoRandomRN4core8vector3dIsEE.exit
  %i.gx = mul i32 %i.gs, 1103515245
  %i.gy = add i32 %i.gx, 12345                    ; 2 uses
  store i32 %i.gy, ptr %i.b, align 4, !tbaa !59
  %i.gz = sdiv i32 %i.gy, 65536
  %i.ha = and i32 %i.gz, 1
  %.not100 = icmp eq i32 %i.ha, 0
  %i.hb = select i1 %.not100, i16 -1, i16 1
  br label %bb.t

bb.t:                                             ; preds = %.loopexit, %bb.s, %_Z11random_turnR12PseudoRandomRN4core8vector3dIsEE.exit, %.critedge
  %.sroa.0287.1 = phi i16 [ %.sroa.0287.0359, %.loopexit ], [ %.sroa.0287.2, %bb.s ], [ %.sroa.0287.2, %_Z11random_turnR12PseudoRandomRN4core8vector3dIsEE.exit ], [ %.sroa.0287.0.extract.trunc, %.critedge ] ; 2 uses
  %.sroa.18.1 = phi i16 [ %.sroa.18.0362, %.loopexit ], [ %.sroa.18.2, %bb.s ], [ %.sroa.18.2, %_Z11random_turnR12PseudoRandomRN4core8vector3dIsEE.exit ], [ %.sroa.7.0.i, %.critedge ] ; 2 uses
  %.sroa.0335.1 = phi i16 [ %i.af, %.loopexit ], [ %i.af, %bb.s ], [ %i.af, %_Z11random_turnR12PseudoRandomRN4core8vector3dIsEE.exit ], [ %.sroa.0335.0365, %.critedge ] ; 2 uses
  %.sroa.6336.1 = phi i16 [ %spec.select, %.loopexit ], [ %spec.select, %bb.s ], [ %spec.select, %_Z11random_turnR12PseudoRandomRN4core8vector3dIsEE.exit ], [ %.sroa.6336.0366, %.critedge ] ; 2 uses
  %.sroa.8337.1 = phi i16 [ %i.ah, %.loopexit ], [ %i.ah, %bb.s ], [ %i.ah, %_Z11random_turnR12PseudoRandomRN4core8vector3dIsEE.exit ], [ %.sroa.8337.0367, %.critedge ] ; 2 uses
  %.3 = phi i16 [ %.186371, %.loopexit ], [ %i.hb, %bb.s ], [ 0, %_Z11random_turnR12PseudoRandomRN4core8vector3dIsEE.exit ], [ %i.gg, %.critedge ]
  %.284 = phi i32 [ %i.fy, %.loopexit ], [ 0, %bb.s ], [ 0, %_Z11random_turnR12PseudoRandomRN4core8vector3dIsEE.exit ], [ 0, %.critedge ]
  %.2 = phi i32 [ %.0373, %.loopexit ], [ %i.gp, %bb.s ], [ %i.gp, %_Z11random_turnR12PseudoRandomRN4core8vector3dIsEE.exit ], [ %i.gh, %.critedge ]
  %i.hc = add nuw i32 %.088368, 1                 ; 2 uses
  %exitcond383.not = icmp eq i32 %i.hc, %i.i
  br i1 %exitcond383.not, label %._crit_edge, label %bb.d, !llvm.loop !155
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN10DungeonGen20findPlaceForRoomDoorEN4core8vector3dIsEERS2_S3_S3_(ptr noundef nonnull align 8 dereferenceable(152) %0, i48 %1, ptr nofree noundef nonnull writeonly align 2 captures(none) dereferenceable(6) %2, ptr nofree noundef nonnull writeonly align 2 captures(none) dereferenceable(6) %3, ptr nofree noundef nonnull writeonly align 2 captures(none) dereferenceable(6) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.core::vector3d", align 2    ; 12 uses
  %6 = alloca %"class.core::vector3d", align 2    ; 9 uses
  %.sroa.029.0.extract.trunc = trunc i48 %1 to i16 ; 3 uses
  %.sroa.5.0.extract.shift = lshr i48 %1, 16
  %.sroa.5.0.extract.trunc = trunc i48 %.sroa.5.0.extract.shift to i16 ; 2 uses
  %.sroa.6.0.extract.shift = lshr i48 %1, 32
  %.sroa.6.0.extract.trunc = trunc nuw i48 %.sroa.6.0.extract.shift to i16 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 2 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 2 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.f = sext i16 %.sroa.029.0.extract.trunc to i32 ; 2 uses
  %i.g = sub nsw i32 2, %i.f                      ; 2 uses
  %i.h = sext i16 %.sroa.6.0.extract.trunc to i32 ; 2 uses
  %i.i = sub nsw i32 2, %i.h                      ; 2 uses
  %i.j = add nsw i32 %i.h, -1
  %i.k = icmp slt i16 %.sroa.6.0.extract.trunc, 3
  %i.l = sext i16 %.sroa.5.0.extract.trunc to i32
  %i.m = add nsw i32 %i.l, -1
  %i.n = icmp slt i16 %.sroa.5.0.extract.trunc, 3
  %i.o = add nsw i32 %i.f, -1
  %i.p = icmp slt i16 %.sroa.029.0.extract.trunc, 3
  %invariant.op = sub i16 1, %.sroa.6.0.extract.trunc
  %invariant.op246 = sub i16 1, %.sroa.029.0.extract.trunc
  %brmerge = select i1 %i.k, i1 true, i1 %i.n
  %brmerge244 = select i1 %brmerge, i1 true, i1 %i.p
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.m
  %.037220 = phi i16 [ 0, %bb.a ], [ %i.cy, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store i16 0, ptr %5, align 2, !tbaa !18
  store i16 0, ptr %i.a, align 2, !tbaa !20
  store i16 0, ptr %i.b, align 2, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store i16 0, ptr %6, align 2, !tbaa !18
  store i16 0, ptr %i.c, align 2, !tbaa !20
  store i16 0, ptr %i.d, align 2, !tbaa !21
  %i.q = call noundef zeroext i1 @_ZN10DungeonGen16findPlaceForDoorERN4core8vector3dIsEES3_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 2 dereferenceable(6) %5, ptr noundef nonnull align 2 dereferenceable(6) %6)
  br i1 %i.q, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.r = load i16, ptr %6, align 2, !tbaa !18
  switch i16 %i.r, label %_ZNK4core8vector3dIsEeqERKS1_.exit66.thread [
    i16 1, label %bb.d
    i16 -1, label %bb.f
    i16 0, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c
  %i.s = load i16, ptr %i.c, align 2, !tbaa !20
  %i.t = icmp eq i16 %i.s, 0
  %i.u = load i16, ptr %i.d, align 2
  %i.v = icmp eq i16 %i.u, 0
  %or.cond = select i1 %i.t, i1 %i.v, i1 false
  br i1 %or.cond, label %bb.e, label %_ZNK4core8vector3dIsEeqERKS1_.exit66.thread

bb.e:                                             ; preds = %bb.d
  %i.w = tail call noundef i32 @_ZN12PseudoRandom5rangeEii(ptr noundef nonnull align 4 dereferenceable(4) %i.e, i32 noundef %i.i, i32 noundef -2)
  %i.x = trunc i32 %i.w to i16
  %i.y = load i16, ptr %5, align 2, !tbaa !18
  %i.z = load i16, ptr %i.a, align 2, !tbaa !20
  %i.aa = add i16 %i.z, -1
  %i.ab = load i16, ptr %i.b, align 2, !tbaa !21
  %i.ac = add i16 %i.ab, %i.x
  br label %_ZNK4core8vector3dIsEeqERKS1_.exit66.thread

bb.f:                                             ; preds = %bb.c
  %i.ad = load i16, ptr %i.c, align 2, !tbaa !20
  %i.ae = icmp eq i16 %i.ad, 0
  %i.af = load i16, ptr %i.d, align 2
  %i.ag = icmp eq i16 %i.af, 0
  %or.cond195 = select i1 %i.ae, i1 %i.ag, i1 false
  br i1 %or.cond195, label %bb.g, label %_ZNK4core8vector3dIsEeqERKS1_.exit66.thread

bb.g:                                             ; preds = %bb.f
  %i.ah = tail call noundef i32 @_ZN12PseudoRandom5rangeEii(ptr noundef nonnull align 4 dereferenceable(4) %i.e, i32 noundef %i.i, i32 noundef -2)
  %i.ai = trunc i32 %i.ah to i16
  %i.aj = load i16, ptr %5, align 2, !tbaa !18
  %.reass241.reass = add i16 %i.aj, %invariant.op246
  %i.ak = load i16, ptr %i.a, align 2, !tbaa !20
  %i.al = add i16 %i.ak, -1
  %i.am = load i16, ptr %i.b, align 2, !tbaa !21
  %i.an = add i16 %i.am, %i.ai
  br label %_ZNK4core8vector3dIsEeqERKS1_.exit66.thread

bb.h:                                             ; preds = %bb.c
  %i.ao = load i16, ptr %i.c, align 2, !tbaa !20
  %i.ap = icmp eq i16 %i.ao, 0
  br i1 %i.ap, label %_ZNK4core8vector3dIsEeqERKS1_.exit58, label %_ZNK4core8vector3dIsEeqERKS1_.exit66.thread

_ZNK4core8vector3dIsEeqERKS1_.exit58:             ; preds = %bb.h
  %i.aq = load i16, ptr %i.d, align 2, !tbaa !21
  switch i16 %i.aq, label %_ZNK4core8vector3dIsEeqERKS1_.exit66.thread [
    i16 1, label %_ZNK4core8vector3dIsEeqERKS1_.exit66.thread236
    i16 -1, label %bb.i
  ]

_ZNK4core8vector3dIsEeqERKS1_.exit66.thread236:   ; preds = %_ZNK4core8vector3dIsEeqERKS1_.exit58
  %i.ar = tail call noundef i32 @_ZN12PseudoRandom5rangeEii(ptr noundef nonnull align 4 dereferenceable(4) %i.e, i32 noundef %i.g, i32 noundef -2)
  %i.as = load i16, ptr %i.b, align 2, !tbaa !21
  %i.at = load i16, ptr %i.a, align 2, !tbaa !20
  %i.au = add i16 %i.at, -1
  %i.av = load i16, ptr %5, align 2, !tbaa !18
  %i.aw = trunc i32 %i.ar to i16
  %i.ax = add i16 %i.av, %i.aw
  br label %_ZNK4core8vector3dIsEeqERKS1_.exit66.thread

bb.i:                                             ; preds = %_ZNK4core8vector3dIsEeqERKS1_.exit58
  %i.ay = tail call noundef i32 @_ZN12PseudoRandom5rangeEii(ptr noundef nonnull align 4 dereferenceable(4) %i.e, i32 noundef %i.g, i32 noundef -2)
  %i.az = trunc i32 %i.ay to i16
  %i.ba = load i16, ptr %5, align 2, !tbaa !18
  %i.bb = add i16 %i.ba, %i.az
  %i.bc = load i16, ptr %i.a, align 2, !tbaa !20
  %i.bd = add i16 %i.bc, -1
  %i.be = load i16, ptr %i.b, align 2, !tbaa !21
  %.reass.reass = add i16 %i.be, %invariant.op
  br label %_ZNK4core8vector3dIsEeqERKS1_.exit66.thread

_ZNK4core8vector3dIsEeqERKS1_.exit66.thread:      ; preds = %_ZNK4core8vector3dIsEeqERKS1_.exit58, %_ZNK4core8vector3dIsEeqERKS1_.exit66.thread236, %bb.c, %bb.h, %bb.e, %bb.d, %bb.f, %bb.g, %bb.i
  %.sroa.0106.3 = phi i16 [ %i.bb, %bb.i ], [ 0, %_ZNK4core8vector3dIsEeqERKS1_.exit58 ], [ 0, %bb.c ], [ %.reass241.reass, %bb.g ], [ 0, %bb.h ], [ %i.y, %bb.e ], [ 0, %bb.d ], [ 0, %bb.f ], [ %i.ax, %_ZNK4core8vector3dIsEeqERKS1_.exit66.thread236 ] ; 2 uses
  %.sroa.9.3 = phi i16 [ %i.bd, %bb.i ], [ 0, %_ZNK4core8vector3dIsEeqERKS1_.exit58 ], [ 0, %bb.c ], [ %i.al, %bb.g ], [ 0, %bb.h ], [ %i.aa, %bb.e ], [ 0, %bb.d ], [ 0, %bb.f ], [ %i.au, %_ZNK4core8vector3dIsEeqERKS1_.exit66.thread236 ] ; 2 uses
  %.sroa.11.3 = phi i16 [ %.reass.reass, %bb.i ], [ 0, %_ZNK4core8vector3dIsEeqERKS1_.exit58 ], [ 0, %bb.c ], [ %i.an, %bb.g ], [ 0, %bb.h ], [ %i.ac, %bb.e ], [ 0, %bb.d ], [ 0, %bb.f ], [ %i.as, %_ZNK4core8vector3dIsEeqERKS1_.exit66.thread236 ] ; 2 uses
  br i1 %brmerge244, label %.critedge, label %.preheader199.lr.ph.split.us.split.us

.preheader199.lr.ph.split.us.split.us:            ; preds = %_ZNK4core8vector3dIsEeqERKS1_.exit66.thread
  %i.bf = load ptr, ptr %0, align 8, !tbaa !57    ; 9 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i16, ptr %i.bg, align 4, !tbaa !70 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 14
  %i.bj = load i16, ptr %i.bi, align 2
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 10
  %i.bl = load i16, ptr %i.bk, align 2            ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bn = load i16, ptr %i.bm, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bf, i64 18
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.br = getelementptr inbounds nuw i8, ptr %i.bf, i64 20
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bt = sext i16 %i.bl to i32
  %i.bu = sext i16 %i.bh to i32
  br label %.preheader199.us.us

.preheader199.us.us:                              ; preds = %._crit_edge.split.us.us.us, %.preheader199.lr.ph.split.us.split.us
  %.044212.us.us = phi i16 [ 1, %.preheader199.lr.ph.split.us.split.us ], [ %i.cv, %._crit_edge.split.us.us.us ] ; 2 uses
  %.045211.us.us = phi i1 [ true, %.preheader199.lr.ph.split.us.split.us ], [ %.449.us.us.us, %._crit_edge.split.us.us.us ]
  %i.bv = add i16 %.044212.us.us, %.sroa.11.3     ; 3 uses
  %i.bw = sext i16 %i.bv to i32
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %.thread177.us.us.us, %.preheader199.us.us
  %.043210.us.us.us = phi i16 [ 1, %.preheader199.us.us ], [ %9, %.thread177.us.us.us ] ; 2 uses
  %.146209.us.us.us = phi i1 [ %.045211.us.us, %.preheader199.us.us ], [ %.449.us.us.us, %.thread177.us.us.us ]
  %i.bx = add i16 %.043210.us.us.us, %.sroa.9.3   ; 3 uses
  %.not7.i.us.us.us = icmp sgt i16 %i.bl, %i.bx
  %.not8.i.us.us.us = icmp slt i16 %i.bn, %i.bx
  %i.by = sext i16 %i.bx to i32
  %i.bz = sub nsw i32 %i.by, %i.bt
  %.not8.i.fr.us.us.us = freeze i1 %.not8.i.us.us.us
  %.not7.i.fr.us.us.us = freeze i1 %.not7.i.us.us.us
  %i.ca = or i1 %.not8.i.fr.us.us.us, %.not7.i.fr.us.us.us
  br i1 %i.ca, label %.thread177.us.us.us, label %.lr.ph.split.us.us.us

bb.j:                                             ; preds = %bb.l
  %7 = add i16 %.042201.us.us.us, 1               ; 2 uses
  %8 = sext i16 %7 to i32
  %i.cb = icmp sgt i32 %i.o, %8
  br i1 %i.cb, label %.lr.ph.split.us.us.us, label %.thread177.us.us.us, !llvm.loop !156

.lr.ph.split.us.us.us:                            ; preds = %.preheader.us.us.us, %bb.j
  %.042201.us.us.us = phi i16 [ %7, %bb.j ], [ 1, %.preheader.us.us.us ] ; 2 uses
  %i.cc = add i16 %.042201.us.us.us, %.sroa.0106.3 ; 3 uses
  %.not.i.us.us.us = icmp sgt i16 %i.bh, %i.cc
  %.not6.i.us.us.us = icmp slt i16 %i.bj, %i.cc
  %or.cond.i.us.us.us = select i1 %.not.i.us.us.us, i1 true, i1 %.not6.i.us.us.us
  br i1 %or.cond.i.us.us.us, label %.thread177.us.us.us, label %bb.k

bb.k:                                             ; preds = %.lr.ph.split.us.us.us
  %i.cd = load i16, ptr %i.bo, align 4, !tbaa !64 ; 2 uses
  %.not9.i.us.us.us = icmp slt i16 %i.bv, %i.cd
  br i1 %.not9.i.us.us.us, label %.thread177.us.us.us, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.us.us.us

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.us.us.us: ; preds = %bb.k
  %i.ce = load i16, ptr %i.bp, align 2, !tbaa !142
  %.not197.us.us.us = icmp sgt i16 %i.bv, %i.ce
  br i1 %.not197.us.us.us, label %.thread177.us.us.us, label %bb.l

bb.l:                                             ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.us.us.us
  %i.cf = load ptr, ptr %i.bq, align 8, !tbaa !122
  %i.cg = sext i16 %i.cd to i32
  %i.ch = sub nsw i32 %i.bw, %i.cg
  %i.ci = load i32, ptr %i.bs, align 8, !tbaa !67
  %i.cj = mul nsw i32 %i.ch, %i.ci
  %i.ck = load i32, ptr %i.br, align 4, !tbaa !68
  %i.cl = add i32 %i.bz, %i.cj
  %i.cm = mul i32 %i.cl, %i.ck
  %i.cn = sext i16 %i.cc to i32
  %i.co = sub nsw i32 %i.cn, %i.bu
  %i.cp = add nsw i32 %i.co, %i.cm
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds i8, ptr %i.cf, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !45
  %i.ct = and i8 %i.cs, 2
  %.not.us.us.us = icmp eq i8 %i.ct, 0
  br i1 %.not.us.us.us, label %bb.j, label %.thread177.us.us.us

.thread177.us.us.us:                              ; preds = %.lr.ph.split.us.us.us, %bb.l, %bb.j, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.us.us.us, %bb.k, %.preheader.us.us.us
  %.449.us.us.us = phi i1 [ false, %.preheader.us.us.us ], [ %.146209.us.us.us, %bb.j ], [ false, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.us.us.us ], [ false, %bb.k ], [ false, %bb.l ], [ false, %.lr.ph.split.us.us.us ] ; 3 uses
  %9 = add i16 %.043210.us.us.us, 1               ; 2 uses
  %10 = sext i16 %9 to i32
  %i.cu = icmp sgt i32 %i.m, %10
  br i1 %i.cu, label %.preheader.us.us.us, label %._crit_edge.split.us.us.us, !llvm.loop !157

._crit_edge.split.us.us.us:                       ; preds = %.thread177.us.us.us
  %i.cv = add i16 %.044212.us.us, 1               ; 2 uses
  %i.cw = sext i16 %i.cv to i32
  %i.cx = icmp sgt i32 %i.j, %i.cw
  br i1 %i.cx, label %.preheader199.us.us, label %._crit_edge213, !llvm.loop !158

._crit_edge213:                                   ; preds = %._crit_edge.split.us.us.us
  br i1 %.449.us.us.us, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.b, %._crit_edge213
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.cy = add nuw nsw i16 %.037220, 1             ; 2 uses
  %exitcond.not = icmp eq i16 %i.cy, 30
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !159

.critedge:                                        ; preds = %_ZNK4core8vector3dIsEeqERKS1_.exit66.thread, %._crit_edge213
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %2, ptr noundef nonnull align 2 dereferenceable(6) %5, i64 6, i1 false), !tbaa.struct !141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %3, ptr noundef nonnull align 2 dereferenceable(6) %6, i64 6, i1 false), !tbaa.struct !141
  store i16 %.sroa.0106.3, ptr %4, align 2, !tbaa !35
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %.sroa.9.3, ptr %.sroa.9.0..sroa_idx, align 2, !tbaa !35
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i16 %.sroa.11.3, ptr %.sroa.11.0..sroa_idx, align 2, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %.critedge
  %i.cz = phi i1 [ true, %.critedge ], [ false, %bb.m ]
  ret i1 %i.cz
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN10DungeonGen8makeFillEN4core8vector3dIsEES2_h7MapNodeh(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0, i48 %1, i48 %2, i8 noundef zeroext %3, i32 %4, i8 noundef zeroext %5) local_unnamed_addr #4 align 2 {
bb.a:
  %.sroa.024.0.extract.trunc = trunc i48 %1 to i16
  %.sroa.2.0.extract.shift25 = lshr i48 %1, 16
  %.sroa.2.0.extract.trunc26 = trunc i48 %.sroa.2.0.extract.shift25 to i16
  %.sroa.3.0.extract.shift = lshr i48 %1, 32
  %.sroa.3.0.extract.trunc = trunc nuw i48 %.sroa.3.0.extract.shift to i16
  %.sroa.020.0.extract.trunc = trunc i48 %2 to i16
  %.sroa.2.0.extract.shift = lshr i48 %2, 16      ; 2 uses
  %i.a = ashr i48 %2, 32
  %i.b = trunc nsw i48 %i.a to i32                ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  %.sroa.2.0.extract.trunc = trunc i48 %.sroa.2.0.extract.shift to i16
  %i.d = icmp sgt i16 %.sroa.2.0.extract.trunc, 0
  %or.cond = and i1 %i.c, %i.d
  %i.e = icmp sgt i16 %.sroa.020.0.extract.trunc, 0
  %or.cond48 = and i1 %or.cond, %i.e
  br i1 %or.cond48, label %.preheader29.us.us.preheader, label %._crit_edge34

.preheader29.us.us.preheader:                     ; preds = %bb.a
  %i.f = trunc nuw i48 %.sroa.2.0.extract.shift to i32
  %wide.trip.count41 = and i32 %i.f, 32767
  %i.g = trunc i48 %2 to i32
  %wide.trip.count = and i32 %i.g, 32767
  br label %.preheader29.us.us

.preheader29.us.us:                               ; preds = %.preheader29.us.us.preheader, %._crit_edge32.us.us
  %.033.us.us = phi i16 [ %i.bb, %._crit_edge32.us.us ], [ 0, %.preheader29.us.us.preheader ] ; 2 uses
  %i.h = add i16 %.033.us.us, %.sroa.3.0.extract.trunc ; 3 uses
  %i.i = sext i16 %i.h to i32
  br label %.preheader.us.us

bb.b:                                             ; preds = %.preheader.us.us, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread.us.us
  %indvars.iv = phi i32 [ 0, %.preheader.us.us ], [ %indvars.iv.next, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread.us.us ] ; 2 uses
  %i.j = trunc nuw nsw i32 %indvars.iv to i16
  %i.k = add i16 %i.j, %.sroa.024.0.extract.trunc ; 3 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !57     ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i16, ptr %i.m, align 4, !tbaa !70   ; 2 uses
  %.not.i.us.us = icmp sgt i16 %i.n, %i.k
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 14
  %i.p = load i16, ptr %i.o, align 2
  %.not6.i.us.us = icmp slt i16 %i.p, %i.k
  %or.cond.i.us.us = select i1 %.not.i.us.us, i1 true, i1 %.not6.i.us.us
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 10
  %i.r = load i16, ptr %i.q, align 2              ; 2 uses
  %.not7.i.us.us = icmp sgt i16 %i.r, %i.az
  %or.cond12.i.us.us = select i1 %or.cond.i.us.us, i1 true, i1 %.not7.i.us.us
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.t = load i16, ptr %i.s, align 4
  %.not8.i.us.us = icmp slt i16 %i.t, %i.az
  %or.cond14.i.us.us = select i1 %or.cond12.i.us.us, i1 true, i1 %.not8.i.us.us
  br i1 %or.cond14.i.us.us, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread.us.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.v = load i16, ptr %i.u, align 4, !tbaa !64   ; 2 uses
  %.not9.i.us.us = icmp slt i16 %i.h, %i.v
  br i1 %.not9.i.us.us, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread.us.us, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.us.us

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.us.us: ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 18
  %i.x = load i16, ptr %i.w, align 2, !tbaa !142
  %.not27.us.us = icmp sgt i16 %i.h, %i.x
  br i1 %.not27.us.us, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread.us.us, label %bb.d

bb.d:                                             ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.us.us
  %i.y = sext i16 %i.v to i32
  %i.z = sub nsw i32 %i.i, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !67
  %i.ad = mul nsw i32 %i.z, %i.ac
  %i.ae = load i32, ptr %i.aa, align 4, !tbaa !68
  %i.af = sext i16 %i.r to i32
  %i.ag = sub nsw i32 %i.ba, %i.af
  %i.ah = add i32 %i.ag, %i.ad
  %i.ai = mul i32 %i.ah, %i.ae
  %i.aj = sext i16 %i.k to i32
  %i.ak = sext i16 %i.n to i32
  %i.al = sub nsw i32 %i.aj, %i.ak
  %i.am = add nsw i32 %i.al, %i.ai
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !122
  %i.ap = zext i32 %i.am to i64                   ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ap ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !45  ; 2 uses
  %i.as = and i8 %i.ar, %3
  %.not.us.us = icmp eq i8 %i.as, 0
  br i1 %.not.us.us, label %bb.e, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread.us.us

bb.e:                                             ; preds = %bb.d
  %i.at = or i8 %i.ar, %5
  store i8 %i.at, ptr %i.aq, align 1, !tbaa !45
  %i.au = load ptr, ptr %0, align 8, !tbaa !57
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !72
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ap
  store i32 %4, ptr %i.ax, align 4
  br label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread.us.us

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread.us.us: ; preds = %bb.e, %bb.d, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.us.us, %bb.c, %bb.b
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us, label %bb.b, !llvm.loop !160

.preheader.us.us:                                 ; preds = %.preheader29.us.us, %._crit_edge.us.us
  %indvars.iv38 = phi i32 [ 0, %.preheader29.us.us ], [ %indvars.iv.next39, %._crit_edge.us.us ] ; 2 uses
  %i.ay = trunc nuw nsw i32 %indvars.iv38 to i16
  %i.az = add i16 %i.ay, %.sroa.2.0.extract.trunc26 ; 3 uses
  %i.ba = sext i16 %i.az to i32
  br label %bb.b

._crit_edge.us.us:                                ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread.us.us
  %indvars.iv.next39 = add nuw nsw i32 %indvars.iv38, 1 ; 2 uses
  %exitcond42.not = icmp eq i32 %indvars.iv.next39, %wide.trip.count41
  br i1 %exitcond42.not, label %._crit_edge32.us.us, label %.preheader.us.us, !llvm.loop !161

._crit_edge32.us.us:                              ; preds = %._crit_edge.us.us
  %i.bb = add i16 %.033.us.us, 1                  ; 2 uses
  %i.bc = sext i16 %i.bb to i32
  %i.bd = icmp slt i32 %i.bc, %i.b
  br i1 %i.bd, label %.preheader29.us.us, label %._crit_edge34, !llvm.loop !162

._crit_edge34:                                    ; preds = %._crit_edge32.us.us, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN10DungeonGen8makeHoleEN4core8vector3dIsEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0, i48 %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 124
  %.sroa.0.0.copyload = load i48, ptr %i.a, align 4
  tail call void @_ZN10DungeonGen8makeFillEN4core8vector3dIsEES2_h7MapNodeh(ptr noundef nonnull align 8 dereferenceable(152) %0, i48 %1, i48 %.sroa.0.0.copyload, i8 noundef zeroext 0, i32 126, i8 noundef zeroext 2)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 4) i32 @_Z14dir_to_facedirN4core8vector3dIsEE(i48 %0) local_unnamed_addr #6 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i48 %0 to i16  ; 2 uses
  %i.a = tail call i16 @llvm.abs.i16(i16 %.sroa.0.0.extract.trunc, i1 false)
  %i.b = zext i16 %i.a to i32
  %i.c = ashr i48 %0, 32
  %i.d = trunc nsw i48 %i.c to i32                ; 2 uses
  %i.e = tail call i32 @llvm.abs.i32(i32 %i.d, i1 true)
  %i.f = icmp samesign ult i32 %i.e, %i.b
  %i.g = icmp slt i16 %.sroa.0.0.extract.trunc, 0
  %i.h = select i1 %i.g, i32 3, i32 1
  %i.i = icmp slt i32 %i.d, 0
  %i.j = select i1 %i.i, i32 2, i32 0
  %.0 = select i1 %i.f, i32 %i.h, i32 %i.j
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i48 @_Z7turn_xzN4core8vector3dIsEEi(i48 %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i48 %0 to i16  ; 2 uses
  %.sroa.5.0.extract.shift = lshr i48 %0, 32      ; 2 uses
  %i.a = icmp eq i32 %1, 0                        ; 2 uses
  %i.b = sub i16 0, %.sroa.0.0.extract.trunc
  %.sroa.7.0 = select i1 %i.a, i16 %i.b, i16 %.sroa.0.0.extract.trunc
  %.sroa.7.0.insert.ext = zext i16 %.sroa.7.0 to i48
end_hunk_1
