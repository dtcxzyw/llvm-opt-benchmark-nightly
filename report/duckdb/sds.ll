inline.NumInlined: 91
inline.NumDeleted: 9
begin_hunk_0_@_ZN10duckdb_hll9sdscatfmtEPcPKcz:bb.a
  %i.kd = load i32, ptr %i.ka, align 1, !tbaa !14
  %i.ke = sub i32 %i.kc, %i.kd
  %i.kf = zext i32 %i.ke to i64
  br label %_ZN10duckdb_hllL8sdsavailEPc.exit88

bb.bv:                                            ; preds = %_ZN10duckdb_hll10sdsull2strEPcy.exit
  %i.kg = getelementptr inbounds i8, ptr %.1, i64 -18
  %i.kh = getelementptr inbounds i8, ptr %.1, i64 -10
  %i.ki = load i64, ptr %i.kh, align 1, !tbaa !20
  %i.kj = load i64, ptr %i.kg, align 1, !tbaa !17
  %i.kk = sub i64 %i.ki, %i.kj
  br label %_ZN10duckdb_hllL8sdsavailEPc.exit88

_ZN10duckdb_hllL8sdsavailEPc.exit88:              ; preds = %_ZN10duckdb_hll10sdsull2strEPcy.exit, %bb.bs, %bb.bt, %bb.bu, %bb.bv
  %.0.i87 = phi i64 [ %i.kf, %bb.bu ], [ %i.kk, %bb.bv ], [ %i.js, %bb.bs ], [ %i.jz, %bb.bt ], [ 0, %_ZN10duckdb_hll10sdsull2strEPcy.exit ]
  %i.kl = icmp ult i64 %.0.i87, %i.ji
  br i1 %i.kl, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %_ZN10duckdb_hllL8sdsavailEPc.exit88
  %i.km = call noundef ptr @_ZN10duckdb_hll14sdsMakeRoomForEPcm(ptr noundef nonnull %.1, i64 noundef %i.ji)
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %_ZN10duckdb_hllL8sdsavailEPc.exit88
  %.4 = phi ptr [ %i.km, %bb.bw ], [ %.1, %_ZN10duckdb_hllL8sdsavailEPc.exit88 ] ; 7 uses
  %i.kn = getelementptr inbounds i8, ptr %.4, i64 %.06796
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kn, ptr nonnull align 16 %i.b, i64 %i.ji, i1 false)
  %i.ko = getelementptr inbounds i8, ptr %.4, i64 -1 ; 2 uses
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !21  ; 2 uses
  %i.kq = and i8 %i.kp, 7
  switch i8 %i.kq, label %_ZN10duckdb_hllL9sdsinclenEPcm.exit89 [
    i8 0, label %bb.by
    i8 1, label %bb.bz
    i8 2, label %bb.ca
    i8 3, label %bb.cb
    i8 4, label %bb.cc
  ]

bb.by:                                            ; preds = %bb.bx
  %i.kr = trunc i64 %i.jg to i8
  %i.ks = shl i8 %i.kr, 3
  %i.kt = add i8 %i.kp, %i.ks
  %i.ku = and i8 %i.kt, -8
  store i8 %i.ku, ptr %i.ko, align 1, !tbaa !21
  br label %_ZN10duckdb_hllL9sdsinclenEPcm.exit89

bb.bz:                                            ; preds = %bb.bx
  %i.kv = getelementptr inbounds i8, ptr %.4, i64 -4 ; 2 uses
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !7
  %i.kx = trunc i64 %i.jg to i8
  %i.ky = add i8 %i.kw, %i.kx
  store i8 %i.ky, ptr %i.kv, align 1, !tbaa !7
  br label %_ZN10duckdb_hllL9sdsinclenEPcm.exit89

bb.ca:                                            ; preds = %bb.bx
  %i.kz = getelementptr inbounds i8, ptr %.4, i64 -6 ; 2 uses
  %i.la = load i16, ptr %i.kz, align 1, !tbaa !10
  %i.lb = trunc i64 %i.jg to i16
  %i.lc = add i16 %i.la, %i.lb
  store i16 %i.lc, ptr %i.kz, align 1, !tbaa !10
  br label %_ZN10duckdb_hllL9sdsinclenEPcm.exit89

bb.cb:                                            ; preds = %bb.bx
  %i.ld = getelementptr inbounds i8, ptr %.4, i64 -10 ; 2 uses
  %i.le = load i32, ptr %i.ld, align 1, !tbaa !14
  %i.lf = add i32 %i.le, %i.jh
  store i32 %i.lf, ptr %i.ld, align 1, !tbaa !14
  br label %_ZN10duckdb_hllL9sdsinclenEPcm.exit89

bb.cc:                                            ; preds = %bb.bx
  %i.lg = getelementptr inbounds i8, ptr %.4, i64 -18 ; 2 uses
  %i.lh = load i64, ptr %i.lg, align 1, !tbaa !17
  %i.li = add i64 %i.lh, %i.ji
  store i64 %i.li, ptr %i.lg, align 1, !tbaa !17
  br label %_ZN10duckdb_hllL9sdsinclenEPcm.exit89

_ZN10duckdb_hllL9sdsinclenEPcm.exit89:            ; preds = %bb.bx, %bb.by, %bb.bz, %bb.ca, %bb.cb, %bb.cc
  %i.lj = add i64 %i.ji, %.06796
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  br label %_ZN10duckdb_hllL9sdsinclenEPcm.exit90

bb.cd:                                            ; preds = %bb.m
  %i.lk = add nsw i64 %.06796, 1                  ; 6 uses
  %i.ll = getelementptr inbounds i8, ptr %.1, i64 %.06796
  store i8 %i.bf, ptr %i.ll, align 1, !tbaa !21
  %i.lm = getelementptr inbounds i8, ptr %.1, i64 -1 ; 2 uses
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !21  ; 2 uses
  %i.lo = and i8 %i.ln, 7
  switch i8 %i.lo, label %_ZN10duckdb_hllL9sdsinclenEPcm.exit90 [
    i8 0, label %bb.ce
    i8 1, label %bb.cf
    i8 2, label %bb.cg
    i8 3, label %bb.ch
    i8 4, label %bb.ci
  ]

bb.ce:                                            ; preds = %bb.cd
  %i.lp = and i8 %i.ln, -8
  %i.lq = add i8 %i.lp, 8
  store i8 %i.lq, ptr %i.lm, align 1, !tbaa !21
  br label %_ZN10duckdb_hllL9sdsinclenEPcm.exit90

bb.cf:                                            ; preds = %bb.cd
  %i.lr = getelementptr inbounds i8, ptr %.1, i64 -4 ; 2 uses
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !7
  %i.lt = add i8 %i.ls, 1
  store i8 %i.lt, ptr %i.lr, align 1, !tbaa !7
  br label %_ZN10duckdb_hllL9sdsinclenEPcm.exit90

bb.cg:                                            ; preds = %bb.cd
  %i.lu = getelementptr inbounds i8, ptr %.1, i64 -6 ; 2 uses
  %i.lv = load i16, ptr %i.lu, align 1, !tbaa !10
  %i.lw = add i16 %i.lv, 1
  store i16 %i.lw, ptr %i.lu, align 1, !tbaa !10
  br label %_ZN10duckdb_hllL9sdsinclenEPcm.exit90

bb.ch:                                            ; preds = %bb.cd
  %i.lx = getelementptr inbounds i8, ptr %.1, i64 -10 ; 2 uses
  %i.ly = load i32, ptr %i.lx, align 1, !tbaa !14
  %i.lz = add i32 %i.ly, 1
  store i32 %i.lz, ptr %i.lx, align 1, !tbaa !14
  br label %_ZN10duckdb_hllL9sdsinclenEPcm.exit90

bb.ci:                                            ; preds = %bb.cd
  %i.ma = getelementptr inbounds i8, ptr %.1, i64 -18 ; 2 uses
  %i.mb = load i64, ptr %i.ma, align 1, !tbaa !17
  %i.mc = add i64 %i.mb, 1
  store i64 %i.mc, ptr %i.ma, align 1, !tbaa !17
  br label %_ZN10duckdb_hllL9sdsinclenEPcm.exit90

bb.cj:                                            ; preds = %bb.l
  %i.md = add nsw i64 %.06796, 1                  ; 6 uses
  %i.me = getelementptr inbounds i8, ptr %.1, i64 %.06796
  store i8 %i.bd, ptr %i.me, align 1, !tbaa !21
  %i.mf = getelementptr inbounds i8, ptr %.1, i64 -1 ; 2 uses
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !21  ; 2 uses
  %i.mh = and i8 %i.mg, 7
  switch i8 %i.mh, label %_ZN10duckdb_hllL9sdsinclenEPcm.exit90 [
    i8 0, label %bb.ck
    i8 1, label %bb.cl
    i8 2, label %bb.cm
    i8 3, label %bb.cn
    i8 4, label %bb.co
  ]

bb.ck:                                            ; preds = %bb.cj
  %i.mi = and i8 %i.mg, -8
  %i.mj = add i8 %i.mi, 8
  store i8 %i.mj, ptr %i.mf, align 1, !tbaa !21
  br label %_ZN10duckdb_hllL9sdsinclenEPcm.exit90

bb.cl:                                            ; preds = %bb.cj
  %i.mk = getelementptr inbounds i8, ptr %.1, i64 -4 ; 2 uses
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !7
  %i.mm = add i8 %i.ml, 1
  store i8 %i.mm, ptr %i.mk, align 1, !tbaa !7
  br label %_ZN10duckdb_hllL9sdsinclenEPcm.exit90

bb.cm:                                            ; preds = %bb.cj
  %i.mn = getelementptr inbounds i8, ptr %.1, i64 -6 ; 2 uses
  %i.mo = load i16, ptr %i.mn, align 1, !tbaa !10
  %i.mp = add i16 %i.mo, 1
  store i16 %i.mp, ptr %i.mn, align 1, !tbaa !10
  br label %_ZN10duckdb_hllL9sdsinclenEPcm.exit90

bb.cn:                                            ; preds = %bb.cj
  %i.mq = getelementptr inbounds i8, ptr %.1, i64 -10 ; 2 uses
  %i.mr = load i32, ptr %i.mq, align 1, !tbaa !14
  %i.ms = add i32 %i.mr, 1
  store i32 %i.ms, ptr %i.mq, align 1, !tbaa !14
  br label %_ZN10duckdb_hllL9sdsinclenEPcm.exit90

bb.co:                                            ; preds = %bb.cj
  %i.mt = getelementptr inbounds i8, ptr %.1, i64 -18 ; 2 uses
  %i.mu = load i64, ptr %i.mt, align 1, !tbaa !17
  %i.mv = add i64 %i.mu, 1
  store i64 %i.mv, ptr %i.mt, align 1, !tbaa !17
  br label %_ZN10duckdb_hllL9sdsinclenEPcm.exit90

_ZN10duckdb_hllL9sdsinclenEPcm.exit90:            ; preds = %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %_ZN10duckdb_hllL9sdsinclenEPcm.exit, %_ZN10duckdb_hllL9sdsinclenEPcm.exit84, %_ZN10duckdb_hllL9sdsinclenEPcm.exit89
  %.168 = phi i64 [ %i.lk, %bb.ci ], [ %i.el, %_ZN10duckdb_hllL9sdsinclenEPcm.exit ], [ %i.hy, %_ZN10duckdb_hllL9sdsinclenEPcm.exit84 ], [ %i.lj, %_ZN10duckdb_hllL9sdsinclenEPcm.exit89 ], [ %i.lk, %bb.cd ], [ %i.lk, %bb.ce ], [ %i.lk, %bb.cf ], [ %i.lk, %bb.cg ], [ %i.lk, %bb.ch ], [ %i.md, %bb.cj ], [ %i.md, %bb.ck ], [ %i.md, %bb.cl ], [ %i.md, %bb.cm ], [ %i.md, %bb.cn ], [ %i.md, %bb.co ] ; 2 uses
  %.166 = phi ptr [ %i.be, %bb.ci ], [ %i.be, %_ZN10duckdb_hllL9sdsinclenEPcm.exit ], [ %i.be, %_ZN10duckdb_hllL9sdsinclenEPcm.exit84 ], [ %i.be, %_ZN10duckdb_hllL9sdsinclenEPcm.exit89 ], [ %i.be, %bb.cd ], [ %i.be, %bb.ce ], [ %i.be, %bb.cf ], [ %i.be, %bb.cg ], [ %i.be, %bb.ch ], [ %.06597, %bb.cj ], [ %.06597, %bb.ck ], [ %.06597, %bb.cl ], [ %.06597, %bb.cm ], [ %.06597, %bb.cn ], [ %.06597, %bb.co ]
  %.5 = phi ptr [ %.1, %bb.ci ], [ %.2, %_ZN10duckdb_hllL9sdsinclenEPcm.exit ], [ %.3, %_ZN10duckdb_hllL9sdsinclenEPcm.exit84 ], [ %.4, %_ZN10duckdb_hllL9sdsinclenEPcm.exit89 ], [ %.1, %bb.cd ], [ %.1, %bb.ce ], [ %.1, %bb.cf ], [ %.1, %bb.cg ], [ %.1, %bb.ch ], [ %.1, %bb.cj ], [ %.1, %bb.ck ], [ %.1, %bb.cl ], [ %.1, %bb.cm ], [ %.1, %bb.cn ], [ %.1, %bb.co ] ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %.166, i64 1 ; 2 uses
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !21  ; 2 uses
  %.not = icmp eq i8 %i.mx, 0
  br i1 %.not, label %._crit_edge, label %bb.g, !llvm.loop !33

._crit_edge:                                      ; preds = %_ZN10duckdb_hllL9sdsinclenEPcm.exit90, %_ZN10duckdb_hllL6sdslenEPc.exit
  %.067.lcssa = phi i64 [ %.0.i, %_ZN10duckdb_hllL6sdslenEPc.exit ], [ %.168, %_ZN10duckdb_hllL9sdsinclenEPcm.exit90 ]
  %.064.lcssa = phi ptr [ %0, %_ZN10duckdb_hllL6sdslenEPc.exit ], [ %.5, %_ZN10duckdb_hllL9sdsinclenEPcm.exit90 ] ; 2 uses
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.my = getelementptr inbounds i8, ptr %.064.lcssa, i64 %.067.lcssa
  store i8 0, ptr %i.my, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret ptr %.064.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef ptr @_ZN10duckdb_hll7sdstrimEPcPKc(ptr noundef returned %0, ptr nofree noundef readonly %1) local_unnamed_addr #12 {
bb.a:
  %2 = ptrtoint ptr %0 to i64                     ; 3 uses
  %i.a = getelementptr inbounds i8, ptr %0, i64 -1 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !21    ; 2 uses
  %i.c = zext i8 %i.b to i32                      ; 2 uses
  %i.d = and i32 %i.c, 7
  switch i32 %i.d, label %_ZN10duckdb_hllL6sdslenEPc.exit.thread [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
  ]

_ZN10duckdb_hllL6sdslenEPc.exit.thread:           ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 -1
  br label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i32 %i.c, 3
  %i.g = zext nneg i32 %i.f to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %0, i64 -4
  %i.i = load i8, ptr %i.h, align 1, !tbaa !7
  %i.j = zext i8 %i.i to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %0, i64 -6
  %i.l = load i16, ptr %i.k, align 1, !tbaa !10
  %i.m = zext i16 %i.l to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds i8, ptr %0, i64 -10
  %i.o = load i32, ptr %i.n, align 1, !tbaa !14
  %i.p = zext i32 %i.o to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit

bb.f:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds i8, ptr %0, i64 -18
  %i.r = load i64, ptr %i.q, align 1, !tbaa !17
  br label %_ZN10duckdb_hllL6sdslenEPc.exit

_ZN10duckdb_hllL6sdslenEPc.exit:                  ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.r, %bb.f ], [ %i.g, %bb.b ], [ %i.j, %bb.c ], [ %i.m, %bb.d ], [ %i.p, %bb.e ] ; 2 uses
  %i.s = getelementptr i8, ptr %0, i64 %.0.i
  %i.t = getelementptr i8, ptr %i.s, i64 -1       ; 3 uses
  %.not33 = icmp slt i64 %.0.i, 1
  br i1 %.not33, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN10duckdb_hllL6sdslenEPc.exit, %bb.g
  %.034 = phi ptr [ %i.x, %bb.g ], [ %0, %_ZN10duckdb_hllL6sdslenEPc.exit ] ; 3 uses
  %i.u = load i8, ptr %.034, align 1, !tbaa !21
  %i.v = sext i8 %i.u to i32
  %i.w = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef %i.v) #28
  %.not30 = icmp eq ptr %i.w, null
  br i1 %.not30, label %.critedge.loopexit, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.x = getelementptr inbounds nuw i8, ptr %.034, i64 1 ; 3 uses
  %.not = icmp ugt ptr %i.x, %i.t
  br i1 %.not, label %.critedge.loopexit, label %.lr.ph, !llvm.loop !34

.critedge.loopexit:                               ; preds = %bb.g, %.lr.ph
  %.0.lcssa.ph = phi ptr [ %.034, %.lr.ph ], [ %i.x, %bb.g ] ; 2 uses
  %.pre = ptrtoint ptr %.0.lcssa.ph to i64
  br label %.critedge

.critedge:                                        ; preds = %_ZN10duckdb_hllL6sdslenEPc.exit.thread, %.critedge.loopexit, %_ZN10duckdb_hllL6sdslenEPc.exit
  %3 = phi ptr [ %i.t, %.critedge.loopexit ], [ %i.t, %_ZN10duckdb_hllL6sdslenEPc.exit ], [ %i.e, %_ZN10duckdb_hllL6sdslenEPc.exit.thread ] ; 3 uses
  %.0.lcssa42.pre-phi = phi i64 [ %.pre, %.critedge.loopexit ], [ %2, %_ZN10duckdb_hllL6sdslenEPc.exit ], [ %2, %_ZN10duckdb_hllL6sdslenEPc.exit.thread ] ; 2 uses
  %.0.lcssa = phi ptr [ %.0.lcssa.ph, %.critedge.loopexit ], [ %0, %_ZN10duckdb_hllL6sdslenEPc.exit ], [ %0, %_ZN10duckdb_hllL6sdslenEPc.exit.thread ] ; 5 uses
  %i.y = icmp ugt ptr %3, %.0.lcssa
  br i1 %i.y, label %.lr.ph38.preheader, label %.critedge2

.lr.ph38.preheader:                               ; preds = %.critedge
  %i.z = sub i64 %.0.lcssa42.pre-phi, %2
  %scevgep = getelementptr i8, ptr %0, i64 %i.z
  br label %.lr.ph38

.lr.ph38:                                         ; preds = %.lr.ph38.preheader, %bb.h
  %.02837 = phi ptr [ %i.ad, %bb.h ], [ %3, %.lr.ph38.preheader ] ; 3 uses
  %i.aa = load i8, ptr %.02837, align 1, !tbaa !21
  %i.ab = sext i8 %i.aa to i32
  %i.ac = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef %i.ab) #28
  %.not31 = icmp eq ptr %i.ac, null
  br i1 %.not31, label %.critedge2, label %bb.h

bb.h:                                             ; preds = %.lr.ph38
  %i.ad = getelementptr inbounds i8, ptr %.02837, i64 -1 ; 2 uses
  %i.ae = icmp ugt ptr %i.ad, %.0.lcssa
  br i1 %i.ae, label %.lr.ph38, label %.critedge2, !llvm.loop !35

.critedge2:                                       ; preds = %.lr.ph38, %bb.h, %.critedge
  %.028.lcssa = phi ptr [ %3, %.critedge ], [ %scevgep, %bb.h ], [ %.02837, %.lr.ph38 ] ; 2 uses
  %i.af = icmp ugt ptr %.0.lcssa, %.028.lcssa
  %i.ag = ptrtoint ptr %.028.lcssa to i64
  %reass.sub = sub i64 %i.ag, %.0.lcssa42.pre-phi
  %i.ah = add i64 %reass.sub, 1
  %i.ai = select i1 %i.af, i64 0, i64 %i.ah       ; 7 uses
  %.not32 = icmp eq ptr %0, %.0.lcssa
  br i1 %.not32, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.critedge2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %0, ptr align 1 %.0.lcssa, i64 %i.ai, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.critedge2
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ai
  store i8 0, ptr %i.aj, align 1, !tbaa !21
  %i.ak = and i8 %i.b, 7
  switch i8 %i.ak, label %_ZN10duckdb_hllL9sdssetlenEPcm.exit [
    i8 0, label %bb.k
    i8 1, label %bb.l
    i8 2, label %bb.m
    i8 3, label %bb.n
    i8 4, label %bb.o
  ]

bb.k:                                             ; preds = %bb.j
  %.tr.i = trunc i64 %i.ai to i8
  %i.al = shl i8 %.tr.i, 3
  store i8 %i.al, ptr %i.a, align 1, !tbaa !21
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit

bb.l:                                             ; preds = %bb.j
  %i.am = trunc i64 %i.ai to i8
  %i.an = getelementptr inbounds i8, ptr %0, i64 -4
  store i8 %i.am, ptr %i.an, align 1, !tbaa !7
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit

bb.m:                                             ; preds = %bb.j
  %i.ao = trunc i64 %i.ai to i16
  %i.ap = getelementptr inbounds i8, ptr %0, i64 -6
  store i16 %i.ao, ptr %i.ap, align 1, !tbaa !10
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit

bb.n:                                             ; preds = %bb.j
  %i.aq = trunc i64 %i.ai to i32
  %i.ar = getelementptr inbounds i8, ptr %0, i64 -10
  store i32 %i.aq, ptr %i.ar, align 1, !tbaa !14
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit

bb.o:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds i8, ptr %0, i64 -18
  store i64 %i.ai, ptr %i.as, align 1, !tbaa !17
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit

_ZN10duckdb_hllL9sdssetlenEPcm.exit:              ; preds = %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN10duckdb_hll8sdsrangeEPcll(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -1 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !21    ; 2 uses
  %i.c = zext i8 %i.b to i32                      ; 2 uses
  %i.d = and i32 %i.c, 7
  switch i32 %i.d, label %_ZN10duckdb_hllL9sdssetlenEPcm.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i32 %i.c, 3
  %i.f = zext nneg i32 %i.e to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %0, i64 -4
  %i.h = load i8, ptr %i.g, align 1, !tbaa !7
  %i.i = zext i8 %i.h to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds i8, ptr %0, i64 -6
  %i.k = load i16, ptr %i.j, align 1, !tbaa !10
  %i.l = zext i16 %i.k to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds i8, ptr %0, i64 -10
  %i.n = load i32, ptr %i.m, align 1, !tbaa !14
  %i.o = zext i32 %i.n to i64
  br label %_ZN10duckdb_hllL6sdslenEPc.exit

bb.f:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds i8, ptr %0, i64 -18
  %i.q = load i64, ptr %i.p, align 1, !tbaa !17
  br label %_ZN10duckdb_hllL6sdslenEPc.exit

_ZN10duckdb_hllL6sdslenEPc.exit:                  ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.q, %bb.f ], [ %i.f, %bb.b ], [ %i.i, %bb.c ], [ %i.l, %bb.d ], [ %i.o, %bb.e ] ; 6 uses
  %i.r = icmp eq i64 %.0.i, 0
  br i1 %i.r, label %_ZN10duckdb_hllL9sdssetlenEPcm.exit, label %bb.g

bb.g:                                             ; preds = %_ZN10duckdb_hllL6sdslenEPc.exit
  %i.s = icmp slt i64 %1, 0
  %i.t = add i64 %.0.i, %1
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %i.t, i64 0)
  %.0 = select i1 %i.s, i64 %spec.store.select, i64 %1 ; 6 uses
  %i.u = icmp slt i64 %2, 0
  %i.v = add i64 %.0.i, %2
  %spec.store.select1 = tail call i64 @llvm.smax.i64(i64 %i.v, i64 0)
  %.036 = select i1 %i.u, i64 %spec.store.select1, i64 %2 ; 3 uses
  %i.w = icmp samesign ugt i64 %.0, %.036
  %reass.sub = sub nsw i64 %.036, %.0
  %i.x = add i64 %reass.sub, 1
  %i.y = select i1 %i.w, i64 0, i64 %i.x          ; 2 uses
  %.not = icmp ne i64 %i.y, 0
  %.not44 = icmp slt i64 %.0, %.0.i
  %or.cond51 = and i1 %.not44, %.not
  br i1 %or.cond51, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %.not45 = icmp samesign ult i64 %.036, %.0.i
  %i.z = sub nsw i64 %.0.i, %.0
  %.035 = select i1 %.not45, i64 %i.y, i64 %i.z   ; 4 uses
  %i.aa = icmp ne i64 %.0, 0
  %i.ab = icmp ne i64 %.035, 0
  %or.cond = select i1 %i.aa, i1 %i.ab, i1 false
  br i1 %or.cond, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %.0
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 1 %i.ac, i64 %.035, i1 false)
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.i, %bb.h
  %.03550 = phi i64 [ %.035, %bb.h ], [ %.035, %bb.i ], [ 0, %bb.g ] ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.03550
  store i8 0, ptr %i.ad, align 1, !tbaa !21
  %i.ae = and i8 %i.b, 7
  switch i8 %i.ae, label %_ZN10duckdb_hllL9sdssetlenEPcm.exit [
    i8 0, label %bb.j
    i8 1, label %bb.k
    i8 2, label %bb.l
    i8 3, label %bb.m
    i8 4, label %bb.n
  ]

bb.j:                                             ; preds = %.thread
  %.tr.i = trunc i64 %.03550 to i8
  %i.af = shl i8 %.tr.i, 3
  store i8 %i.af, ptr %i.a, align 1, !tbaa !21
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit

bb.k:                                             ; preds = %.thread
  %i.ag = trunc i64 %.03550 to i8
  %i.ah = getelementptr inbounds i8, ptr %0, i64 -4
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !7
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit

bb.l:                                             ; preds = %.thread
  %i.ai = trunc i64 %.03550 to i16
  %i.aj = getelementptr inbounds i8, ptr %0, i64 -6
  store i16 %i.ai, ptr %i.aj, align 1, !tbaa !10
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit

bb.m:                                             ; preds = %.thread
  %i.ak = trunc i64 %.03550 to i32
  %i.al = getelementptr inbounds i8, ptr %0, i64 -10
  store i32 %i.ak, ptr %i.al, align 1, !tbaa !14
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit

bb.n:                                             ; preds = %.thread
  %i.am = getelementptr inbounds i8, ptr %0, i64 -18
  store i64 %.03550, ptr %i.am, align 1, !tbaa !17
  br label %_ZN10duckdb_hllL9sdssetlenEPcm.exit

_ZN10duckdb_hllL9sdssetlenEPcm.exit:              ; preds = %bb.a, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %.thread, %_ZN10duckdb_hllL6sdslenEPc.exit
  ret void
}

; Function Attrs: mustprogress nofree nounwind memory(read, argmem: readwrite) uwtable
define void @_ZN10duckdb_hll10sdstolowerEPc(ptr nofree noundef captures(none) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !21
  %i.c = zext i8 %i.b to i32                      ; 2 uses
  %i.d = and i32 %i.c, 7
  switch i32 %i.d, label %._crit_edge [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
  ]
end_hunk_0
