inline.NumInlined: 231
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN15btNullPairCache26processAllOverlappingPairsEP17btOverlapCallbackP12btDispatcher:bb.a
; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN15btNullPairCache8findPairEP17btBroadphaseProxyS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN15btNullPairCache18hasDeferredRemovalEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN15btNullPairCache28setInternalGhostPairCallbackEP25btOverlappingPairCallback(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN15btNullPairCache20sortOverlappingPairsEP12btDispatcher(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN20btAxisSweep3InternalIjED0Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN20btAxisSweep3InternalIjED2Ev(ptr noundef nonnull align 8 dereferenceable(176) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
          to label %_ZN20btAxisSweep3InternalIjEdlEPv.exit unwind label %bb.d

_ZN20btAxisSweep3InternalIjEdlEPv.exit:           ; preds = %bb.c
  resume { ptr, i32 } %i.a

bb.d:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #11
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef zeroext i16 @_ZN20btAxisSweep3InternalItE9addHandleERK9btVector3S3_PvssP12btDispatcherS4_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef %3, i16 noundef signext %4, i16 noundef signext %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load float, ptr %1, align 4, !tbaa !38
  %i.c = load float, ptr %i.a, align 4, !tbaa !38 ; 2 uses
  %i.d = fsub float %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load float, ptr %i.e, align 4, !tbaa !38
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load float, ptr %i.g, align 8, !tbaa !38 ; 2 uses
  %i.i = fsub float %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load float, ptr %i.j, align 4, !tbaa !38
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.m = load float, ptr %i.l, align 4, !tbaa !38 ; 2 uses
  %i.n = fsub float %i.k, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.p = load float, ptr %i.o, align 4, !tbaa !38 ; 2 uses
  %i.q = fmul float %i.d, %i.p                    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load float, ptr %i.r, align 8, !tbaa !38 ; 2 uses
  %i.t = fmul float %i.i, %i.s                    ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.v = load float, ptr %i.u, align 4, !tbaa !38 ; 2 uses
  %i.w = fmul float %i.n, %i.v                    ; 3 uses
  %i.x = fcmp ugt float %i.q, 0.000000e+00
  br i1 %i.x, label %.sink.split, label %bb.b

.sink.split:                                      ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.z = load i16, ptr %i.y, align 2, !tbaa !21   ; 2 uses
  %i.aa = uitofp i16 %i.z to float
  %i.ab = fcmp ult float %i.q, %i.aa
  %i.ac = fptoui float %i.q to i16
  %.sink89 = select i1 %i.ab, i16 %i.ac, i16 %i.z
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load i16, ptr %i.ad, align 8, !tbaa !10
  %i.af = and i16 %i.ae, %.sink89
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  %i.ag = phi i16 [ 0, %bb.a ], [ %i.af, %.sink.split ]
  %i.ah = fcmp ugt float %i.t, 0.000000e+00
  br i1 %i.ah, label %.sink.split91, label %bb.c

.sink.split91:                                    ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !21 ; 2 uses
  %i.ak = uitofp i16 %i.aj to float
  %i.al = fcmp ult float %i.t, %i.ak
  %i.am = fptoui float %i.t to i16
  %.sink92 = select i1 %i.al, i16 %i.am, i16 %i.aj
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load i16, ptr %i.an, align 8, !tbaa !10
  %i.ap = and i16 %i.ao, %.sink92
  br label %bb.c

bb.c:                                             ; preds = %.sink.split91, %bb.b
  %i.aq = phi i16 [ 0, %bb.b ], [ %i.ap, %.sink.split91 ]
  %i.ar = fcmp ugt float %i.w, 0.000000e+00
  br i1 %i.ar, label %_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit.sink.split, label %_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit

_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit.sink.split: ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.at = load i16, ptr %i.as, align 2, !tbaa !21 ; 2 uses
  %i.au = uitofp i16 %i.at to float
  %i.av = fcmp ult float %i.w, %i.au
  %i.aw = fptoui float %i.w to i16
  %.sink94 = select i1 %i.av, i16 %i.aw, i16 %i.at
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = load i16, ptr %i.ax, align 8, !tbaa !10
  %i.az = and i16 %i.ay, %.sink94
  br label %_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit

_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit: ; preds = %_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit.sink.split, %bb.c
  %i.ba = phi i16 [ 0, %bb.c ], [ %i.az, %_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit.sink.split ]
  %i.bb = load float, ptr %2, align 4, !tbaa !38
  %i.bc = fsub float %i.bb, %i.c
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.be = load float, ptr %i.bd, align 4, !tbaa !38
  %i.bf = fsub float %i.be, %i.h
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !38
  %i.bi = fsub float %i.bh, %i.m
  %i.bj = fmul float %i.p, %i.bc                  ; 3 uses
  %i.bk = fmul float %i.s, %i.bf                  ; 3 uses
  %i.bl = fmul float %i.v, %i.bi                  ; 3 uses
  %i.bm = fcmp ugt float %i.bj, 0.000000e+00
  br i1 %i.bm, label %.sink.split96, label %bb.d

.sink.split96:                                    ; preds = %_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !21 ; 2 uses
  %i.bp = uitofp i16 %i.bo to float
  %i.bq = fcmp ult float %i.bj, %i.bp
  %i.br = fptoui float %i.bj to i16
  %.sink98 = select i1 %i.bq, i16 %i.br, i16 %i.bo
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bt = load i16, ptr %i.bs, align 8, !tbaa !10
  %i.bu = and i16 %i.bt, %.sink98
  %i.bv = or i16 %i.bu, 1
  br label %bb.d

bb.d:                                             ; preds = %.sink.split96, %_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit
  %i.bw = phi i16 [ 1, %_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit ], [ %i.bv, %.sink.split96 ]
  %i.bx = fcmp ugt float %i.bk, 0.000000e+00
  br i1 %i.bx, label %.sink.split99, label %bb.e

.sink.split99:                                    ; preds = %bb.d
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !21 ; 2 uses
  %i.ca = uitofp i16 %i.bz to float
  %i.cb = fcmp ult float %i.bk, %i.ca
  %i.cc = fptoui float %i.bk to i16
  %.sink101 = select i1 %i.cb, i16 %i.cc, i16 %i.bz
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ce = load i16, ptr %i.cd, align 8, !tbaa !10
  %i.cf = and i16 %i.ce, %.sink101
  %i.cg = or i16 %i.cf, 1
  br label %bb.e

bb.e:                                             ; preds = %.sink.split99, %bb.d
  %i.ch = phi i16 [ 1, %bb.d ], [ %i.cg, %.sink.split99 ]
  %i.ci = fcmp ugt float %i.bl, 0.000000e+00
  br i1 %i.ci, label %_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit51.sink.split, label %_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit51

_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit51.sink.split: ; preds = %bb.e
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !21 ; 2 uses
  %i.cl = uitofp i16 %i.ck to float
  %i.cm = fcmp ult float %i.bl, %i.cl
  %i.cn = fptoui float %i.bl to i16
  %.sink103 = select i1 %i.cm, i16 %i.cn, i16 %i.ck
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cp = load i16, ptr %i.co, align 8, !tbaa !10
  %i.cq = and i16 %i.cp, %.sink103
  %i.cr = or i16 %i.cq, 1
  br label %_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit51

_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit51: ; preds = %_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit51.sink.split, %bb.e
  %i.cs = phi i16 [ 1, %bb.e ], [ %i.cr, %_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit51.sink.split ]
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cu = load i16, ptr %i.ct, align 8, !tbaa !42 ; 9 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 13 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !39 ; 2 uses
  %i.cx = zext i16 %i.cu to i64
  %i.cy = getelementptr inbounds nuw [80 x i8], ptr %i.cw, i64 %i.cx ; 15 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 60 ; 3 uses
  %i.da = load i16, ptr %i.cz, align 4, !tbaa !46
  store i16 %i.da, ptr %i.ct, align 8, !tbaa !42
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.dc = load i16, ptr %i.db, align 4, !tbaa !41
  %i.dd = add i16 %i.dc, 1                        ; 2 uses
  store i16 %i.dd, ptr %i.db, align 4, !tbaa !41
  %i.de = zext i16 %i.cu to i32
  %i.df = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  store i32 %i.de, ptr %i.df, align 8, !tbaa !77
  store ptr %3, ptr %i.cy, align 8, !tbaa !43
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i16 %4, ptr %i.dg, align 8, !tbaa !95
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cy, i64 10
  store i16 %5, ptr %i.dh, align 2, !tbaa !96
  %i.di = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store ptr %7, ptr %i.di, align 8, !tbaa !45
  %i.dj = shl i16 %i.dd, 1                        ; 5 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.dl = zext i16 %i.dj to i32
  %i.dm = add nsw i32 %i.dl, -1                   ; 2 uses
  %i.dn = sext i32 %i.dm to i64                   ; 6 uses
  %i.do = zext i16 %i.dj to i64                   ; 6 uses
  %i.dp = trunc i32 %i.dm to i16                  ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cy, i64 66 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cw, i64 66 ; 2 uses
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !46
  %i.dt = add i16 %i.ds, 2
  store i16 %i.dt, ptr %i.dr, align 2, !tbaa !46
  %i.du = load ptr, ptr %i.dk, align 8, !tbaa !50 ; 2 uses
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.dn
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.do
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.dy = load i32, ptr %i.dv, align 2
  store i32 %i.dy, ptr %i.dx, align 2
  %i.dz = load ptr, ptr %i.dk, align 8, !tbaa !50 ; 2 uses
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.dn ; 2 uses
  store i16 %i.ag, ptr %i.ea, align 2, !tbaa !78
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 2
  store i16 %i.cu, ptr %i.eb, align 2, !tbaa !80
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.do ; 2 uses
  store i16 %i.bw, ptr %i.ec, align 2, !tbaa !78
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 2
  store i16 %i.cu, ptr %i.ed, align 2, !tbaa !80
  store i16 %i.dp, ptr %i.cz, align 4, !tbaa !46
  store i16 %i.dj, ptr %i.dq, align 2, !tbaa !46
  %i.ee = load ptr, ptr %i.cv, align 8, !tbaa !39
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 68 ; 2 uses
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !46
  %i.eh = add i16 %i.eg, 2
  store i16 %i.eh, ptr %i.ef, align 2, !tbaa !46
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !50 ; 2 uses
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.dn
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %i.do
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  %i.en = load i32, ptr %i.ek, align 2
  store i32 %i.en, ptr %i.em, align 2
  %i.eo = load ptr, ptr %i.ei, align 8, !tbaa !50 ; 2 uses
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %i.dn ; 2 uses
  store i16 %i.aq, ptr %i.ep, align 2, !tbaa !78
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 2
  store i16 %i.cu, ptr %i.eq, align 2, !tbaa !80
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.do ; 2 uses
  store i16 %i.ch, ptr %i.er, align 2, !tbaa !78
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 2
  store i16 %i.cu, ptr %i.es, align 2, !tbaa !80
  %i.et = getelementptr inbounds nuw i8, ptr %i.cy, i64 62
  store i16 %i.dp, ptr %i.et, align 2, !tbaa !46
  %i.eu = getelementptr inbounds nuw i8, ptr %i.cy, i64 68
  store i16 %i.dj, ptr %i.eu, align 4, !tbaa !46
  %i.ev = load ptr, ptr %i.cv, align 8, !tbaa !39
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 70 ; 2 uses
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !46
  %i.ey = add i16 %i.ex, 2
  store i16 %i.ey, ptr %i.ew, align 2, !tbaa !46
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !50 ; 2 uses
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.fa, i64 %i.dn
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.do
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.fe = load i32, ptr %i.fb, align 2
  store i32 %i.fe, ptr %i.fd, align 2
  %i.ff = load ptr, ptr %i.ez, align 8, !tbaa !50 ; 2 uses
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.dn ; 2 uses
  store i16 %i.ba, ptr %i.fg, align 2, !tbaa !78
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 2
  store i16 %i.cu, ptr %i.fh, align 2, !tbaa !80
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.do ; 2 uses
  store i16 %i.cs, ptr %i.fi, align 2, !tbaa !78
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 2
  store i16 %i.cu, ptr %i.fj, align 2, !tbaa !80
  %i.fk = getelementptr inbounds nuw i8, ptr %i.cy, i64 64
  store i16 %i.dp, ptr %i.fk, align 8, !tbaa !46
  %i.fl = getelementptr inbounds nuw i8, ptr %i.cy, i64 70
  store i16 %i.dj, ptr %i.fl, align 2, !tbaa !46
  %i.fm = load i16, ptr %i.cz, align 4, !tbaa !46
  %i.fn = load ptr, ptr %i.dk, align 8, !tbaa !50 ; 2 uses
  %i.fo = zext i16 %i.fm to i64
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.fo ; 4 uses
  %.03136.i = getelementptr inbounds i8, ptr %i.fp, i64 -4 ; 2 uses
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !78
  %i.fr = load i16, ptr %.03136.i, align 2, !tbaa !78 ; 2 uses
  %i.fs = icmp ult i16 %i.fq, %i.fr
  br i1 %i.fs, label %.lr.ph.i, label %_ZN20btAxisSweep3InternalItE11sortMinDownEitP12btDispatcherb.exit

.lr.ph.i:                                         ; preds = %_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit51
  %i.ft = load ptr, ptr %i.cv, align 8, !tbaa !39
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fp, i64 2
  %i.fv = load i16, ptr %i.fu, align 2, !tbaa !80
  %i.fw = zext i16 %i.fv to i64
  %i.fx = getelementptr inbounds nuw [80 x i8], ptr %i.ft, i64 %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 60 ; 2 uses
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i, %.lr.ph.i
  %i.fz = phi i16 [ %i.gp, %.lr.ph.split.i ], [ %i.fr, %.lr.ph.i ]
  %.03139.i = phi ptr [ %.031.i, %.lr.ph.split.i ], [ %.03136.i, %.lr.ph.i ] ; 3 uses
  %.038.i = phi ptr [ %i.gn, %.lr.ph.split.i ], [ %i.fp, %.lr.ph.i ] ; 4 uses
  %i.ga = getelementptr inbounds i8, ptr %.038.i, i64 -2
  %i.gb = load i16, ptr %i.ga, align 2, !tbaa !80
  %i.gc = load ptr, ptr %i.cv, align 8, !tbaa !39
  %i.gd = zext i16 %i.gb to i64
  %i.ge = getelementptr inbounds nuw [80 x i8], ptr %i.gc, i64 %i.gd
  %i.gf = and i16 %i.fz, 1
  %.not.i = icmp eq i16 %i.gf, 0
  %..i = select i1 %.not.i, i64 60, i64 66
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 %..i ; 2 uses
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !46
  %i.gi = add i16 %i.gh, 1
  store i16 %i.gi, ptr %i.gg, align 2, !tbaa !46
  %i.gj = load i16, ptr %i.fy, align 2, !tbaa !46
  %i.gk = add i16 %i.gj, -1
  store i16 %i.gk, ptr %i.fy, align 2, !tbaa !46
  %i.gl = load i32, ptr %.038.i, align 2
  %i.gm = load i32, ptr %.03139.i, align 2
  store i32 %i.gm, ptr %.038.i, align 2
  store i32 %i.gl, ptr %.03139.i, align 2
  %i.gn = getelementptr inbounds i8, ptr %.038.i, i64 -4 ; 2 uses
  %.031.i = getelementptr inbounds i8, ptr %.03139.i, i64 -4 ; 2 uses
  %i.go = load i16, ptr %i.gn, align 2, !tbaa !78
  %i.gp = load i16, ptr %.031.i, align 2, !tbaa !78 ; 2 uses
  %i.gq = icmp ult i16 %i.go, %i.gp
  br i1 %i.gq, label %.lr.ph.split.i, label %_ZN20btAxisSweep3InternalItE11sortMinDownEitP12btDispatcherb.exit.loopexit

_ZN20btAxisSweep3InternalItE11sortMinDownEitP12btDispatcherb.exit.loopexit: ; preds = %.lr.ph.split.i
  %.pre = load ptr, ptr %i.dk, align 8, !tbaa !50
  br label %_ZN20btAxisSweep3InternalItE11sortMinDownEitP12btDispatcherb.exit

_ZN20btAxisSweep3InternalItE11sortMinDownEitP12btDispatcherb.exit: ; preds = %_ZN20btAxisSweep3InternalItE11sortMinDownEitP12btDispatcherb.exit.loopexit, %_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit51
  %i.gr = phi ptr [ %.pre, %_ZN20btAxisSweep3InternalItE11sortMinDownEitP12btDispatcherb.exit.loopexit ], [ %i.fn, %_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit51 ]
  %i.gs = load i16, ptr %i.dq, align 2, !tbaa !46
  %i.gt = zext i16 %i.gs to i64
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.gt ; 4 uses
  %.03540.i = getelementptr inbounds i8, ptr %i.gu, i64 -4 ; 2 uses
  %i.gv = load i16, ptr %i.gu, align 2, !tbaa !78
  %i.gw = load i16, ptr %.03540.i, align 2, !tbaa !78 ; 2 uses
  %i.gx = icmp ult i16 %i.gv, %i.gw
  br i1 %i.gx, label %.lr.ph.i52, label %_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb.exit

.lr.ph.i52:                                       ; preds = %_ZN20btAxisSweep3InternalItE11sortMinDownEitP12btDispatcherb.exit
  %i.gy = load ptr, ptr %i.cv, align 8, !tbaa !39
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gu, i64 2
  %i.ha = load i16, ptr %i.gz, align 2, !tbaa !80
  %i.hb = zext i16 %i.ha to i64
  %i.hc = getelementptr inbounds nuw [80 x i8], ptr %i.gy, i64 %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 66 ; 2 uses
  br label %.lr.ph.split.i53

.lr.ph.split.i53:                                 ; preds = %.lr.ph.split.i53, %.lr.ph.i52
  %i.he = phi i16 [ %i.hu, %.lr.ph.split.i53 ], [ %i.gw, %.lr.ph.i52 ]
  %.03543.i = phi ptr [ %.035.i, %.lr.ph.split.i53 ], [ %.03540.i, %.lr.ph.i52 ] ; 3 uses
  %.042.i = phi ptr [ %i.hs, %.lr.ph.split.i53 ], [ %i.gu, %.lr.ph.i52 ] ; 4 uses
  %i.hf = getelementptr inbounds i8, ptr %.042.i, i64 -2
  %i.hg = load i16, ptr %i.hf, align 2, !tbaa !80
  %i.hh = load ptr, ptr %i.cv, align 8, !tbaa !39
  %i.hi = zext i16 %i.hg to i64
  %i.hj = getelementptr inbounds nuw [80 x i8], ptr %i.hh, i64 %i.hi
  %i.hk = and i16 %i.he, 1
  %.not.i54 = icmp eq i16 %i.hk, 0
  %..i55 = select i1 %.not.i54, i64 60, i64 66
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 %..i55 ; 2 uses
  %i.hm = load i16, ptr %i.hl, align 2, !tbaa !46
  %i.hn = add i16 %i.hm, 1
  store i16 %i.hn, ptr %i.hl, align 2, !tbaa !46
  %i.ho = load i16, ptr %i.hd, align 2, !tbaa !46
  %i.hp = add i16 %i.ho, -1
  store i16 %i.hp, ptr %i.hd, align 2, !tbaa !46
  %i.hq = load i32, ptr %.042.i, align 2
  %i.hr = load i32, ptr %.03543.i, align 2
  store i32 %i.hr, ptr %.042.i, align 2
  store i32 %i.hq, ptr %.03543.i, align 2
  %i.hs = getelementptr inbounds i8, ptr %.042.i, i64 -4 ; 2 uses
  %.035.i = getelementptr inbounds i8, ptr %.03543.i, i64 -4 ; 2 uses
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !78
  %i.hu = load i16, ptr %.035.i, align 2, !tbaa !78 ; 2 uses
  %i.hv = icmp ult i16 %i.ht, %i.hu
  br i1 %i.hv, label %.lr.ph.split.i53, label %_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb.exit

_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb.exit: ; preds = %.lr.ph.split.i53, %_ZN20btAxisSweep3InternalItE11sortMinDownEitP12btDispatcherb.exit
  %i.hw = getelementptr inbounds nuw i8, ptr %i.cy, i64 62
  %i.hx = load i16, ptr %i.hw, align 2, !tbaa !46
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !50 ; 2 uses
  %i.ia = zext i16 %i.hx to i64
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.ia ; 4 uses
  %.03136.i56 = getelementptr inbounds i8, ptr %i.ib, i64 -4 ; 2 uses
  %i.ic = load i16, ptr %i.ib, align 2, !tbaa !78
  %i.id = load i16, ptr %.03136.i56, align 2, !tbaa !78 ; 2 uses
  %i.ie = icmp ult i16 %i.ic, %i.id
  br i1 %i.ie, label %.lr.ph.i57, label %_ZN20btAxisSweep3InternalItE11sortMinDownEitP12btDispatcherb.exit64

.lr.ph.i57:                                       ; preds = %_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb.exit
  %i.if = load ptr, ptr %i.cv, align 8, !tbaa !39
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ib, i64 2
  %i.ih = load i16, ptr %i.ig, align 2, !tbaa !80
  %i.ii = zext i16 %i.ih to i64
  %i.ij = getelementptr inbounds nuw [80 x i8], ptr %i.if, i64 %i.ii
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 62 ; 2 uses
  br label %.lr.ph.split.i58

.lr.ph.split.i58:                                 ; preds = %.lr.ph.split.i58, %.lr.ph.i57
  %i.il = phi i16 [ %i.jc, %.lr.ph.split.i58 ], [ %i.id, %.lr.ph.i57 ]
  %.03139.i59 = phi ptr [ %.031.i63, %.lr.ph.split.i58 ], [ %.03136.i56, %.lr.ph.i57 ] ; 3 uses
  %.038.i60 = phi ptr [ %i.ja, %.lr.ph.split.i58 ], [ %i.ib, %.lr.ph.i57 ] ; 4 uses
  %i.im = getelementptr inbounds i8, ptr %.038.i60, i64 -2
  %i.in = load i16, ptr %i.im, align 2, !tbaa !80
  %i.io = load ptr, ptr %i.cv, align 8, !tbaa !39
  %i.ip = zext i16 %i.in to i64
  %i.iq = getelementptr inbounds nuw [80 x i8], ptr %i.io, i64 %i.ip
  %i.ir = and i16 %i.il, 1
  %.not.i61 = icmp eq i16 %i.ir, 0
  %i.is = select i1 %.not.i61, i64 62, i64 68
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.is ; 2 uses
  %i.iu = load i16, ptr %i.it, align 2, !tbaa !46
  %i.iv = add i16 %i.iu, 1
  store i16 %i.iv, ptr %i.it, align 2, !tbaa !46
  %i.iw = load i16, ptr %i.ik, align 2, !tbaa !46
  %i.ix = add i16 %i.iw, -1
  store i16 %i.ix, ptr %i.ik, align 2, !tbaa !46
  %i.iy = load i32, ptr %.038.i60, align 2
  %i.iz = load i32, ptr %.03139.i59, align 2
  store i32 %i.iz, ptr %.038.i60, align 2
  store i32 %i.iy, ptr %.03139.i59, align 2
  %i.ja = getelementptr inbounds i8, ptr %.038.i60, i64 -4 ; 2 uses
  %.031.i63 = getelementptr inbounds i8, ptr %.03139.i59, i64 -4 ; 2 uses
  %i.jb = load i16, ptr %i.ja, align 2, !tbaa !78
  %i.jc = load i16, ptr %.031.i63, align 2, !tbaa !78 ; 2 uses
  %i.jd = icmp ult i16 %i.jb, %i.jc
  br i1 %i.jd, label %.lr.ph.split.i58, label %_ZN20btAxisSweep3InternalItE11sortMinDownEitP12btDispatcherb.exit64.loopexit

_ZN20btAxisSweep3InternalItE11sortMinDownEitP12btDispatcherb.exit64.loopexit: ; preds = %.lr.ph.split.i58
  %.pre79 = load ptr, ptr %i.hy, align 8, !tbaa !50
  br label %_ZN20btAxisSweep3InternalItE11sortMinDownEitP12btDispatcherb.exit64

_ZN20btAxisSweep3InternalItE11sortMinDownEitP12btDispatcherb.exit64: ; preds = %_ZN20btAxisSweep3InternalItE11sortMinDownEitP12btDispatcherb.exit64.loopexit, %_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb.exit
  %i.je = phi ptr [ %.pre79, %_ZN20btAxisSweep3InternalItE11sortMinDownEitP12btDispatcherb.exit64.loopexit ], [ %i.hz, %_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb.exit ]
  %i.jf = getelementptr inbounds nuw i8, ptr %i.cy, i64 68
  %i.jg = load i16, ptr %i.jf, align 4, !tbaa !46
  %i.jh = zext i16 %i.jg to i64
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %i.jh ; 4 uses
  %.03540.i65 = getelementptr inbounds i8, ptr %i.ji, i64 -4 ; 2 uses
  %i.jj = load i16, ptr %i.ji, align 2, !tbaa !78
  %i.jk = load i16, ptr %.03540.i65, align 2, !tbaa !78 ; 2 uses
  %i.jl = icmp ult i16 %i.jj, %i.jk
  br i1 %i.jl, label %.lr.ph.i66, label %_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb.exit73

.lr.ph.i66:                                       ; preds = %_ZN20btAxisSweep3InternalItE11sortMinDownEitP12btDispatcherb.exit64
  %i.jm = load ptr, ptr %i.cv, align 8, !tbaa !39
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ji, i64 2
  %i.jo = load i16, ptr %i.jn, align 2, !tbaa !80
  %i.jp = zext i16 %i.jo to i64
  %i.jq = getelementptr inbounds nuw [80 x i8], ptr %i.jm, i64 %i.jp
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 68 ; 2 uses
  br label %.lr.ph.split.i67

.lr.ph.split.i67:                                 ; preds = %.lr.ph.split.i67, %.lr.ph.i66
  %i.js = phi i16 [ %i.kj, %.lr.ph.split.i67 ], [ %i.jk, %.lr.ph.i66 ]
  %.03543.i68 = phi ptr [ %.035.i72, %.lr.ph.split.i67 ], [ %.03540.i65, %.lr.ph.i66 ] ; 3 uses
  %.042.i69 = phi ptr [ %i.kh, %.lr.ph.split.i67 ], [ %i.ji, %.lr.ph.i66 ] ; 4 uses
  %i.jt = getelementptr inbounds i8, ptr %.042.i69, i64 -2
  %i.ju = load i16, ptr %i.jt, align 2, !tbaa !80
  %i.jv = load ptr, ptr %i.cv, align 8, !tbaa !39
  %i.jw = zext i16 %i.ju to i64
  %i.jx = getelementptr inbounds nuw [80 x i8], ptr %i.jv, i64 %i.jw
  %i.jy = and i16 %i.js, 1
  %.not.i70 = icmp eq i16 %i.jy, 0
  %i.jz = select i1 %.not.i70, i64 62, i64 68
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jx, i64 %i.jz ; 2 uses
  %i.kb = load i16, ptr %i.ka, align 2, !tbaa !46
  %i.kc = add i16 %i.kb, 1
  store i16 %i.kc, ptr %i.ka, align 2, !tbaa !46
  %i.kd = load i16, ptr %i.jr, align 2, !tbaa !46
  %i.ke = add i16 %i.kd, -1
  store i16 %i.ke, ptr %i.jr, align 2, !tbaa !46
  %i.kf = load i32, ptr %.042.i69, align 2
  %i.kg = load i32, ptr %.03543.i68, align 2
  store i32 %i.kg, ptr %.042.i69, align 2
  store i32 %i.kf, ptr %.03543.i68, align 2
  %i.kh = getelementptr inbounds i8, ptr %.042.i69, i64 -4 ; 2 uses
  %.035.i72 = getelementptr inbounds i8, ptr %.03543.i68, i64 -4 ; 2 uses
  %i.ki = load i16, ptr %i.kh, align 2, !tbaa !78
  %i.kj = load i16, ptr %.035.i72, align 2, !tbaa !78 ; 2 uses
  %i.kk = icmp ult i16 %i.ki, %i.kj
  br i1 %i.kk, label %.lr.ph.split.i67, label %_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb.exit73

_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb.exit73: ; preds = %.lr.ph.split.i67, %_ZN20btAxisSweep3InternalItE11sortMinDownEitP12btDispatcherb.exit64
  %8 = getelementptr inbounds nuw i8, ptr %i.cy, i64 64
  %9 = load i16, ptr %8, align 8, !tbaa !46
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  %12 = zext i16 %9 to i64
  %13 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %12 ; 4 uses
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 2
  %15 = load i16, ptr %14, align 2, !tbaa !80
  %16 = load ptr, ptr %i.cv, align 8, !tbaa !39
  %17 = zext i16 %15 to i64
  %18 = getelementptr inbounds nuw [80 x i8], ptr %16, i64 %17 ; 7 uses
  %.03136.i74 = getelementptr inbounds i8, ptr %13, i64 -4 ; 2 uses
  %19 = load i16, ptr %13, align 2, !tbaa !78
  %20 = load i16, ptr %.03136.i74, align 2, !tbaa !78 ; 2 uses
  %21 = icmp ult i16 %19, %20
  br i1 %21, label %.lr.ph.i75, label %_ZN20btAxisSweep3InternalItE11sortMinDownEitP12btDispatcherb.exit76

.lr.ph.i75:                                       ; preds = %_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb.exit73
  %22 = getelementptr inbounds nuw i8, ptr %18, i64 66
  %23 = getelementptr inbounds nuw i8, ptr %18, i64 60
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 68
  %25 = getelementptr inbounds nuw i8, ptr %18, i64 62
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %28 = getelementptr inbounds nuw i8, ptr %18, i64 64 ; 2 uses
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb.exit73.a, %.lr.ph.i75
  %29 = phi i16 [ %i.ko, %_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb.exit73.a ], [ %20, %.lr.ph.i75 ]
  %.03139.us.i = phi ptr [ %i.kn, %_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb.exit73.a ], [ %.03136.i74, %.lr.ph.i75 ] ; 3 uses
  %.038.us.i = phi ptr [ %72, %_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb.exit73.a ], [ %13, %.lr.ph.i75 ] ; 4 uses
  %30 = getelementptr inbounds i8, ptr %.038.us.i, i64 -2
  %31 = load i16, ptr %30, align 2, !tbaa !80
  %32 = load ptr, ptr %i.cv, align 8, !tbaa !39
  %33 = zext i16 %31 to i64
  %34 = getelementptr inbounds nuw [80 x i8], ptr %32, i64 %33 ; 7 uses
  %35 = and i16 %29, 1
  %.not.us.i = icmp eq i16 %35, 0
  br i1 %.not.us.i, label %_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb.exit73.a, label %36

36:                                               ; preds = %.lr.ph.split.us.i
  %37 = load i16, ptr %22, align 2, !tbaa !46
  %38 = getelementptr inbounds nuw i8, ptr %34, i64 60
  %39 = load i16, ptr %38, align 2, !tbaa !46
  %40 = icmp ult i16 %37, %39
  br i1 %40, label %_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb.exit73.a, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds nuw i8, ptr %34, i64 66
  %43 = load i16, ptr %42, align 2, !tbaa !46
  %44 = load i16, ptr %23, align 2, !tbaa !46
  %45 = icmp ult i16 %43, %44
  br i1 %45, label %_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb.exit73.a, label %46

46:                                               ; preds = %41
  %47 = load i16, ptr %24, align 2, !tbaa !46
  %48 = getelementptr inbounds nuw i8, ptr %34, i64 62
  %49 = load i16, ptr %48, align 2, !tbaa !46
  %50 = icmp ult i16 %47, %49
  br i1 %50, label %_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb.exit73.a, label %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us.i

_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us.i: ; preds = %46
  %51 = getelementptr inbounds nuw i8, ptr %34, i64 68
  %52 = load i16, ptr %51, align 2, !tbaa !46
  %53 = load i16, ptr %25, align 2, !tbaa !46
  %.not35.us.i = icmp ult i16 %52, %53
  br i1 %.not35.us.i, label %_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb.exit73.a, label %54

54:                                               ; preds = %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us.i
  %55 = load ptr, ptr %26, align 8, !tbaa !22     ; 2 uses
  %56 = load ptr, ptr %55, align 8, !tbaa !8
  %57 = getelementptr inbounds nuw i8, ptr %56, i64 16
  %58 = load ptr, ptr %57, align 8
  %59 = tail call noundef ptr %58(ptr noundef nonnull align 8 dereferenceable(8) %55, ptr noundef nonnull %18, ptr noundef nonnull %34), !inline_history !97 ; 0 uses
  %60 = load ptr, ptr %27, align 8, !tbaa !23     ; 3 uses
  %.not33.us.i = icmp eq ptr %60, null
  br i1 %.not33.us.i, label %_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb.exit73.a, label %61

61:                                               ; preds = %54
  %62 = load ptr, ptr %60, align 8, !tbaa !8
  %63 = getelementptr inbounds nuw i8, ptr %62, i64 16
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef nonnull %18, ptr noundef nonnull %34), !inline_history !97 ; 0 uses
  br label %_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb.exit73.a

_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb.exit73.a: ; preds = %61, %54, %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us.i, %46, %41, %36, %.lr.ph.split.us.i
  %.sink.i = phi i64 [ 66, %36 ], [ 66, %61 ], [ 66, %54 ], [ 66, %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us.i ], [ 66, %46 ], [ 66, %41 ], [ 60, %.lr.ph.split.us.i ]
  %66 = getelementptr inbounds nuw i8, ptr %34, i64 %.sink.i
  %i.kl = getelementptr inbounds nuw i8, ptr %66, i64 4 ; 2 uses
  %67 = load i16, ptr %i.kl, align 2, !tbaa !46
  %68 = add i16 %67, 1
  store i16 %68, ptr %i.kl, align 2, !tbaa !46
  %i.km = load i16, ptr %28, align 2, !tbaa !46
  %69 = add i16 %i.km, -1
  store i16 %69, ptr %28, align 2, !tbaa !46
  %70 = load i32, ptr %.038.us.i, align 2
  %71 = load i32, ptr %.03139.us.i, align 2
  store i32 %71, ptr %.038.us.i, align 2
  store i32 %70, ptr %.03139.us.i, align 2
  %72 = getelementptr inbounds i8, ptr %.038.us.i, i64 -4 ; 2 uses
  %i.kn = getelementptr inbounds i8, ptr %.03139.us.i, i64 -4 ; 2 uses
  %73 = load i16, ptr %72, align 2, !tbaa !78
  %i.ko = load i16, ptr %i.kn, align 2, !tbaa !78 ; 2 uses
  %74 = icmp ult i16 %73, %i.ko
  br i1 %74, label %.lr.ph.split.us.i, label %_ZN20btAxisSweep3InternalItE11sortMinDownEitP12btDispatcherb.exit76

_ZN20btAxisSweep3InternalItE11sortMinDownEitP12btDispatcherb.exit76: ; preds = %_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb.exit73.a, %_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb.exit73
  %75 = getelementptr inbounds nuw i8, ptr %i.cy, i64 70
  %76 = load i16, ptr %75, align 2, !tbaa !46
  tail call void @_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef 2, i16 noundef zeroext %76, ptr noundef %6, i1 noundef zeroext true)
  ret i16 %i.cu
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN20btAxisSweep3InternalItE11sortMinDownEitP12btDispatcherb(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef %1, i16 noundef zeroext %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = sext i32 %1 to i64                       ; 4 uses
  %i.c = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.e = zext i16 %2 to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.e ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.h = load i16, ptr %i.g, align 2, !tbaa !80
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !39
  %i.k = zext i16 %i.h to i64
  %i.l = getelementptr inbounds nuw [80 x i8], ptr %i.j, i64 %i.k ; 4 uses
  %.03136 = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 3 uses
  %i.m = load i16, ptr %i.f, align 2, !tbaa !78
  %i.n = load i16, ptr %.03136, align 2, !tbaa !78 ; 3 uses
  %i.o = icmp ult i16 %i.m, %i.n
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.p = shl nuw i32 1, %1
  %i.q = and i32 %i.p, 3                          ; 2 uses
  %i.r = shl nuw nsw i32 1, %i.q
  %i.s = and i32 %i.r, 3
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 66 ; 2 uses
  %i.u = zext nneg i32 %i.q to i64                ; 4 uses
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 60 ; 3 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.u
  %i.y = zext nneg i32 %i.s to i64                ; 4 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.y
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.y
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ad = getelementptr inbounds [2 x i8], ptr %i.w, i64 %i.b ; 4 uses
  br i1 %4, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us
  %i.ae = phi i16 [ %i.bw, %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us ], [ %i.n, %.lr.ph ]
  %.03139.us = phi ptr [ %.031.us, %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us ], [ %.03136, %.lr.ph ] ; 3 uses
  %.038.us = phi ptr [ %i.bu, %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us ], [ %i.f, %.lr.ph ] ; 4 uses
  %i.af = getelementptr inbounds i8, ptr %.038.us, i64 -2
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !80
  %i.ah = load ptr, ptr %i.i, align 8, !tbaa !39
  %i.ai = zext i16 %i.ag to i64
  %i.aj = getelementptr inbounds nuw [80 x i8], ptr %i.ah, i64 %i.ai ; 5 uses
  %i.ak = and i16 %i.ae, 1
  %.not.us = icmp eq i16 %i.ak, 0
  br i1 %.not.us, label %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.al = load i16, ptr %i.v, align 2, !tbaa !46
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 60 ; 2 uses
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.u
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !46
  %i.ap = icmp ult i16 %i.al, %i.ao
  br i1 %i.ap, label %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 66 ; 2 uses
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %i.u
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !46
  %i.at = load i16, ptr %i.x, align 2, !tbaa !46
  %i.au = icmp ult i16 %i.as, %i.at
  br i1 %i.au, label %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.av = load i16, ptr %i.z, align 2, !tbaa !46
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.y
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !46
  %i.ay = icmp ult i16 %i.av, %i.ax
  br i1 %i.ay, label %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us

_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us: ; preds = %bb.d
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %i.y
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !46
  %i.bb = load i16, ptr %i.aa, align 2, !tbaa !46
  %.not35.us = icmp ult i16 %i.ba, %i.bb
  br i1 %.not35.us, label %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %bb.e

bb.e:                                             ; preds = %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us
  %i.bc = load ptr, ptr %i.ab, align 8, !tbaa !22 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = tail call noundef ptr %i.bf(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull %i.l, ptr noundef nonnull %i.aj) ; 0 uses
  %i.bh = load ptr, ptr %i.ac, align 8, !tbaa !23 ; 3 uses
  %.not33.us = icmp eq ptr %i.bh, null
  br i1 %.not33.us, label %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = tail call noundef ptr %i.bk(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull %i.l, ptr noundef nonnull %i.aj) ; 0 uses
  br label %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us

_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us: ; preds = %.lr.ph.split.us, %bb.b, %bb.c, %bb.d, %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us, %bb.e, %bb.f
  %.sink = phi i64 [ 66, %bb.b ], [ 66, %bb.f ], [ 66, %bb.e ], [ 66, %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us ], [ 66, %bb.d ], [ 66, %bb.c ], [ 60, %.lr.ph.split.us ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.sink
  %i.bn = getelementptr inbounds [2 x i8], ptr %i.bm, i64 %i.b ; 2 uses
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !46
  %i.bp = add i16 %i.bo, 1
  store i16 %i.bp, ptr %i.bn, align 2, !tbaa !46
  %i.bq = load i16, ptr %i.ad, align 2, !tbaa !46
  %i.br = add i16 %i.bq, -1
  store i16 %i.br, ptr %i.ad, align 2, !tbaa !46
  %i.bs = load i32, ptr %.038.us, align 2
  %i.bt = load i32, ptr %.03139.us, align 2
  store i32 %i.bt, ptr %.038.us, align 2
  store i32 %i.bs, ptr %.03139.us, align 2
  %i.bu = getelementptr inbounds i8, ptr %.038.us, i64 -4 ; 2 uses
  %.031.us = getelementptr inbounds i8, ptr %.03139.us, i64 -4 ; 2 uses
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !78
  %i.bw = load i16, ptr %.031.us, align 2, !tbaa !78 ; 2 uses
  %i.bx = icmp ult i16 %i.bv, %i.bw
  br i1 %i.bx, label %.lr.ph.split.us, label %._crit_edge

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %i.by = phi i16 [ %i.cp, %.lr.ph.split ], [ %i.n, %.lr.ph ]
  %.03139 = phi ptr [ %.031, %.lr.ph.split ], [ %.03136, %.lr.ph ] ; 3 uses
  %.038 = phi ptr [ %i.cn, %.lr.ph.split ], [ %i.f, %.lr.ph ] ; 4 uses
  %i.bz = getelementptr inbounds i8, ptr %.038, i64 -2
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !80
  %i.cb = load ptr, ptr %i.i, align 8, !tbaa !39
  %i.cc = zext i16 %i.ca to i64
  %i.cd = getelementptr inbounds nuw [80 x i8], ptr %i.cb, i64 %i.cc
  %i.ce = and i16 %i.by, 1
  %.not = icmp eq i16 %i.ce, 0
  %. = select i1 %.not, i64 60, i64 66
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.
  %i.cg = getelementptr inbounds [2 x i8], ptr %i.cf, i64 %i.b ; 2 uses
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !46
  %i.ci = add i16 %i.ch, 1
  store i16 %i.ci, ptr %i.cg, align 2, !tbaa !46
  %i.cj = load i16, ptr %i.ad, align 2, !tbaa !46
  %i.ck = add i16 %i.cj, -1
  store i16 %i.ck, ptr %i.ad, align 2, !tbaa !46
  %i.cl = load i32, ptr %.038, align 2
  %i.cm = load i32, ptr %.03139, align 2
  store i32 %i.cm, ptr %.038, align 2
  store i32 %i.cl, ptr %.03139, align 2
  %i.cn = getelementptr inbounds i8, ptr %.038, i64 -4 ; 2 uses
  %.031 = getelementptr inbounds i8, ptr %.03139, i64 -4 ; 2 uses
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !78
  %i.cp = load i16, ptr %.031, align 2, !tbaa !78 ; 2 uses
  %i.cq = icmp ult i16 %i.co, %i.cp
  br i1 %i.cq, label %.lr.ph.split, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split, %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, %bb.a
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef %1, i16 noundef zeroext %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = sext i32 %1 to i64                       ; 4 uses
  %i.c = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.e = zext i16 %2 to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.e ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %.03540 = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 3 uses
  %i.h = load i16, ptr %i.f, align 2, !tbaa !78
  %i.i = load i16, ptr %.03540, align 2, !tbaa !78 ; 3 uses
  %i.j = icmp ult i16 %i.h, %i.i
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.m = load i16, ptr %i.l, align 2, !tbaa !80
  %i.n = zext i16 %i.m to i64
  %i.o = getelementptr inbounds nuw [80 x i8], ptr %i.k, i64 %i.n
  %i.p = shl nuw i32 1, %1
  %i.q = and i32 %i.p, 3                          ; 2 uses
  %i.r = shl nuw nsw i32 1, %i.q
  %i.s = and i32 %i.r, 3
  %i.t = zext nneg i32 %i.q to i64                ; 4 uses
  %i.u = zext nneg i32 %i.s to i64                ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 66
  %i.y = getelementptr inbounds [2 x i8], ptr %i.x, i64 %i.b ; 4 uses
  br i1 %4, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us
  %i.z = phi i16 [ %i.cb, %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us ], [ %i.i, %.lr.ph ]
  %.03543.us = phi ptr [ %.035.us, %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us ], [ %.03540, %.lr.ph ] ; 3 uses
  %.042.us = phi ptr [ %i.bz, %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us ], [ %i.f, %.lr.ph ] ; 5 uses
  %i.aa = getelementptr inbounds i8, ptr %.042.us, i64 -2
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !80
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !39  ; 2 uses
  %i.ad = zext i16 %i.ab to i64
end_hunk_0
begin_hunk_1_@_ZN20btAxisSweep3InternalItE12updateHandleEtRK9btVector3S3_P12btDispatcher:bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ci = load i16, ptr %i.ch, align 8, !tbaa !10
  %i.cj = and i16 %i.ci, %.sink60
  %i.ck = or i16 %i.cj, 1
  br label %bb.e

bb.e:                                             ; preds = %.sink.split58, %bb.d
  %i.cl = phi i16 [ 1, %bb.d ], [ %i.ck, %.sink.split58 ] ; 2 uses
  %i.cm = fcmp ugt float %i.bp, 0.000000e+00
  br i1 %i.cm, label %_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit37.sink.split, label %_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit37

_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit37.sink.split: ; preds = %bb.e
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !21 ; 2 uses
  %i.cp = uitofp i16 %i.co to float
  %i.cq = fcmp ult float %i.bp, %i.cp
  %i.cr = fptoui float %i.bp to i16
  %.sink62 = select i1 %i.cq, i16 %i.cr, i16 %i.co
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ct = load i16, ptr %i.cs, align 8, !tbaa !10
  %i.cu = and i16 %i.ct, %.sink62
  %i.cv = or i16 %i.cu, 1
  br label %_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit37

_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit37: ; preds = %_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit37.sink.split, %bb.e
  %i.cw = phi i16 [ 1, %bb.e ], [ %i.cv, %_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit37.sink.split ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.cy = getelementptr inbounds nuw i8, ptr %i.d, i64 66
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.da = load i16, ptr %i.cx, align 2, !tbaa !46 ; 3 uses
  %i.db = load i16, ptr %i.cy, align 2, !tbaa !46 ; 3 uses
  %i.dc = zext i16 %i.ak to i32
  %i.dd = load ptr, ptr %i.cz, align 8, !tbaa !50 ; 2 uses
  %i.de = zext i16 %i.da to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.de ; 2 uses
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !78
  %i.dh = zext i16 %i.dg to i32
  %i.di = sub nsw i32 %i.dc, %i.dh                ; 2 uses
  %i.dj = zext i16 %i.ca to i32
  %i.dk = zext i16 %i.db to i64
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.dk ; 2 uses
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !78
  %i.dn = zext i16 %i.dm to i32
  %i.do = sub nsw i32 %i.dj, %i.dn                ; 2 uses
  store i16 %i.ak, ptr %i.df, align 2, !tbaa !78
  store i16 %i.ca, ptr %i.dl, align 2, !tbaa !78
  %i.dp = icmp slt i32 %i.di, 0
  br i1 %i.dp, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit37
  tail call void @_ZN20btAxisSweep3InternalItE11sortMinDownEitP12btDispatcherb(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef 0, i16 noundef zeroext %i.da, ptr noundef %4, i1 noundef zeroext true)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit37
  %i.dq = icmp sgt i32 %i.do, 0
  br i1 %i.dq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef 0, i16 noundef zeroext %i.db, ptr noundef %4, i1 noundef zeroext true)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.dr = icmp sgt i32 %i.di, 0
  br i1 %i.dr, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN20btAxisSweep3InternalItE9sortMinUpEitP12btDispatcherb(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef 0, i16 noundef zeroext %i.da, ptr noundef %4, i1 noundef zeroext true)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ds = icmp slt i32 %i.do, 0
  br i1 %i.ds, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef 0, i16 noundef zeroext %i.db, ptr noundef %4, i1 noundef zeroext true)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.dt = getelementptr inbounds nuw i8, ptr %i.d, i64 62
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !46 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !46 ; 3 uses
  %i.dx = zext i16 %i.au to i32
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !50 ; 2 uses
  %i.ea = zext i16 %i.du to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.ea ; 2 uses
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !78
  %i.ed = zext i16 %i.ec to i32
  %i.ee = sub nsw i32 %i.dx, %i.ed                ; 2 uses
  %i.ef = zext i16 %i.cl to i32
  %i.eg = zext i16 %i.dw to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.eg ; 2 uses
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !78
  %i.ej = zext i16 %i.ei to i32
  %i.ek = sub nsw i32 %i.ef, %i.ej                ; 2 uses
  store i16 %i.au, ptr %i.eb, align 2, !tbaa !78
  store i16 %i.cl, ptr %i.eh, align 2, !tbaa !78
  %i.el = icmp slt i32 %i.ee, 0
  br i1 %i.el, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN20btAxisSweep3InternalItE11sortMinDownEitP12btDispatcherb(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef 1, i16 noundef zeroext %i.du, ptr noundef %4, i1 noundef zeroext true)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.em = icmp sgt i32 %i.ek, 0
  br i1 %i.em, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef 1, i16 noundef zeroext %i.dw, ptr noundef %4, i1 noundef zeroext true)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.en = icmp sgt i32 %i.ee, 0
  br i1 %i.en, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN20btAxisSweep3InternalItE9sortMinUpEitP12btDispatcherb(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef 1, i16 noundef zeroext %i.du, ptr noundef %4, i1 noundef zeroext true)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.eo = icmp slt i32 %i.ek, 0
  br i1 %i.eo, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef 1, i16 noundef zeroext %i.dw, ptr noundef %4, i1 noundef zeroext true)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ep = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !46 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.d, i64 70
  %i.es = load i16, ptr %i.er, align 2, !tbaa !46 ; 3 uses
  %i.et = zext i16 %i.be to i32
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !50 ; 2 uses
  %i.ew = zext i16 %i.eq to i64
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.ew ; 2 uses
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !78
  %i.ez = zext i16 %i.ey to i32
  %i.fa = sub nsw i32 %i.et, %i.ez                ; 2 uses
  %i.fb = zext i16 %i.cw to i32
  %i.fc = zext i16 %i.es to i64
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.fc ; 2 uses
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !78
  %i.ff = zext i16 %i.fe to i32
  %i.fg = sub nsw i32 %i.fb, %i.ff                ; 2 uses
  store i16 %i.be, ptr %i.ex, align 2, !tbaa !78
  store i16 %i.cw, ptr %i.fd, align 2, !tbaa !78
  %i.fh = icmp slt i32 %i.fa, 0
  br i1 %i.fh, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void @_ZN20btAxisSweep3InternalItE11sortMinDownEitP12btDispatcherb(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef 2, i16 noundef zeroext %i.eq, ptr noundef %4, i1 noundef zeroext true)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.fi = icmp sgt i32 %i.fg, 0
  br i1 %i.fi, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void @_ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef 2, i16 noundef zeroext %i.es, ptr noundef %4, i1 noundef zeroext true)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.fj = icmp sgt i32 %i.fa, 0
  br i1 %i.fj, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  tail call void @_ZN20btAxisSweep3InternalItE9sortMinUpEitP12btDispatcherb(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef 2, i16 noundef zeroext %i.eq, ptr noundef %4, i1 noundef zeroext true)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.fk = icmp slt i32 %i.fg, 0
  br i1 %i.fk, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef 2, i16 noundef zeroext %i.es, ptr noundef %4, i1 noundef zeroext true)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN20btAlignedObjectArrayI16btBroadphasePairE17quickSortInternalI29btBroadphasePairSortPredicateEEvT_ii(ptr noundef nonnull align 8 dereferenceable(25) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.ab, %bb.a
  %.tr43 = phi i32 [ %1, %bb.a ], [ %.226, %bb.ab ] ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.c = add nsw i32 %.tr43, %2
  %i.d = sdiv i32 %i.c, 2
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [32 x i8], ptr %i.b, i64 %i.e ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !88   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !98   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !84   ; 2 uses
  %.not22.i = icmp eq ptr %i.g, null              ; 2 uses
  %.not24.i = icmp eq ptr %i.i, null              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.y, %tailrecurse
  %.024 = phi i32 [ %.tr43, %tailrecurse ], [ %.226, %bb.y ]
  %.0 = phi i32 [ %2, %tailrecurse ], [ %.2, %bb.y ]
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !82   ; 2 uses
  %i.o = sext i32 %.024 to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZN29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit.thread, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit.thread ], [ %i.o, %bb.b ] ; 4 uses
  %i.p = getelementptr inbounds [32 x i8], ptr %i.n, i64 %indvars.iv ; 5 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !88   ; 4 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !77
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = phi i32 [ %i.s, %bb.d ], [ -1, %bb.c ]
  br i1 %.not22.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load i32, ptr %i.l, align 8, !tbaa !77
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = phi i32 [ %i.u, %bb.f ], [ -1, %bb.e ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !98   ; 4 uses
  %.not23.i = icmp eq ptr %i.x, null
  br i1 %.not23.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !77
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aa = phi i32 [ %i.z, %bb.h ], [ -1, %bb.g ]
  br i1 %.not24.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = load i32, ptr %i.m, align 8, !tbaa !77
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ac = phi i32 [ %i.ab, %bb.j ], [ -1, %bb.i ]
  %i.ad = icmp sgt i32 %i.t, %i.v
  br i1 %i.ad, label %_ZN29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = icmp eq ptr %i.q, %i.g                  ; 2 uses
  %i.af = icmp sgt i32 %i.aa, %i.ac               ; 2 uses
  %.not25.i = xor i1 %i.ae, true
  %brmerge.i = select i1 %.not25.i, i1 true, i1 %i.af
  br i1 %brmerge.i, label %_ZN29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = icmp eq ptr %i.x, %i.i
  br i1 %i.ag, label %.split, label %.critedge.preheader

.critedge.preheader:                              ; preds = %_ZN29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit, %.split, %bb.m
  %i.ah = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.ai = sext i32 %.0 to i64
  br label %.critedge

.split:                                           ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !84
  %i.al = icmp ugt ptr %i.ak, %i.k
  br i1 %i.al, label %_ZN29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit.thread, label %.critedge.preheader

_ZN29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit: ; preds = %bb.l
  %or.cond.i = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %or.cond.i, label %_ZN29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit.thread, label %.critedge.preheader

_ZN29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit.thread: ; preds = %bb.k, %.split, %_ZN29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %bb.c

.critedge:                                        ; preds = %.critedge.preheader, %_ZN29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit37.thread
  %indvars.iv55 = phi i64 [ %i.ai, %.critedge.preheader ], [ %indvars.iv.next56, %_ZN29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit37.thread ] ; 5 uses
  %i.am = getelementptr inbounds [32 x i8], ptr %i.n, i64 %indvars.iv55 ; 4 uses
  br i1 %.not22.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.critedge
  %i.an = load i32, ptr %i.l, align 8, !tbaa !77
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.critedge
  %i.ao = phi i32 [ %i.an, %bb.n ], [ -1, %.critedge ]
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !88 ; 3 uses
  %.not22.i31 = icmp eq ptr %i.ap, null
  br i1 %.not22.i31, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !77
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.as = phi i32 [ %i.ar, %bb.p ], [ -1, %bb.o ]
  br i1 %.not24.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.at = load i32, ptr %i.m, align 8, !tbaa !77
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.au = phi i32 [ %i.at, %bb.r ], [ -1, %bb.q ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !98 ; 3 uses
  %.not24.i33 = icmp eq ptr %i.aw, null
  br i1 %.not24.i33, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !77
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.az = phi i32 [ %i.ay, %bb.t ], [ -1, %bb.s ]
  %i.ba = icmp sgt i32 %i.ao, %i.as
  br i1 %i.ba, label %_ZN29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit37.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bb = icmp eq ptr %i.g, %i.ap                 ; 2 uses
  %i.bc = icmp sgt i32 %i.au, %i.az               ; 2 uses
  %.not25.i35 = xor i1 %i.bb, true
  %brmerge.i36 = select i1 %.not25.i35, i1 true, i1 %i.bc
  br i1 %brmerge.i36, label %_ZN29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit37, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bd = icmp eq ptr %i.i, %i.aw
  br i1 %i.bd, label %.split42, label %_ZN29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit37.thread41

.split42:                                         ; preds = %bb.w
  %i.be = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !84
  %i.bg = icmp ugt ptr %i.k, %i.bf
  br i1 %i.bg, label %_ZN29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit37.thread, label %_ZN29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit37.thread41

_ZN29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit37: ; preds = %bb.v
  %or.cond.i34 = select i1 %i.bb, i1 %i.bc, i1 false
  br i1 %or.cond.i34, label %_ZN29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit37.thread, label %_ZN29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit37.thread41

_ZN29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit37.thread: ; preds = %bb.u, %.split42, %_ZN29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit37
  %indvars.iv.next56 = add nsw i64 %indvars.iv55, -1
  br label %.critedge

_ZN29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit37.thread41: ; preds = %bb.w, %.split42, %_ZN29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit37
  %i.bh = trunc nsw i64 %indvars.iv55 to i32      ; 2 uses
  %.not = icmp sgt i64 %indvars.iv, %indvars.iv55
  br i1 %.not, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit37.thread41
  %i.bi = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.bj = load <2 x ptr>, ptr %i.bi, align 8, !tbaa !37
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.am, i64 32, i1 false), !tbaa.struct !99
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.bl = getelementptr inbounds [32 x i8], ptr %i.bk, i64 %indvars.iv55 ; 3 uses
  store ptr %i.q, ptr %i.bl, align 8, !tbaa !83
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.x, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !83
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store <2 x ptr> %i.bj, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !37
  %i.bm = add nsw i32 %i.ah, 1
  %i.bn = add nsw i32 %i.bh, -1
  br label %bb.y

bb.y:                                             ; preds = %_ZN29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit37.thread41, %bb.x
  %.226 = phi i32 [ %i.bm, %bb.x ], [ %i.ah, %_ZN29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit37.thread41 ] ; 4 uses
  %.2 = phi i32 [ %i.bn, %bb.x ], [ %i.bh, %_ZN29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit37.thread41 ] ; 4 uses
  %.not29 = icmp sgt i32 %.226, %.2
  br i1 %.not29, label %bb.z, label %bb.b

bb.z:                                             ; preds = %bb.y
  %i.bo = icmp slt i32 %.tr43, %.2
  br i1 %i.bo, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZN20btAlignedObjectArrayI16btBroadphasePairE17quickSortInternalI29btBroadphasePairSortPredicateEEvT_ii(ptr noundef nonnull align 8 dereferenceable(25) %0, i32 noundef %.tr43, i32 noundef %.2)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bp = icmp slt i32 %.226, %2
  br i1 %i.bp, label %tailrecurse, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef i32 @_ZN20btAxisSweep3InternalIjE9addHandleERK9btVector3S3_PvssP12btDispatcherS4_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef %3, i16 noundef signext %4, i16 noundef signext %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load float, ptr %1, align 4, !tbaa !38
  %i.c = load float, ptr %i.a, align 8, !tbaa !38 ; 2 uses
  %i.d = fsub float %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load float, ptr %i.e, align 4, !tbaa !38
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load float, ptr %i.g, align 4, !tbaa !38 ; 2 uses
  %i.i = fsub float %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load float, ptr %i.j, align 4, !tbaa !38
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load float, ptr %i.l, align 8, !tbaa !38 ; 2 uses
  %i.n = fsub float %i.k, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load float, ptr %i.o, align 8, !tbaa !38 ; 2 uses
  %i.q = fmul float %i.d, %i.p                    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.s = load float, ptr %i.r, align 4, !tbaa !38 ; 2 uses
  %i.t = fmul float %i.i, %i.s                    ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load float, ptr %i.u, align 8, !tbaa !38 ; 2 uses
  %i.w = fmul float %i.n, %i.v                    ; 3 uses
  %i.x = fcmp ugt float %i.q, 0.000000e+00
  br i1 %i.x, label %.sink.split.i, label %bb.b

.sink.split.i:                                    ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !55   ; 2 uses
  %i.aa = uitofp i32 %i.z to float
  %i.ab = fcmp ult float %i.q, %i.aa
  %i.ac = fptoui float %i.q to i32
  %.sink34.i = select i1 %i.ab, i32 %i.ac, i32 %i.z
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !52
  %i.af = and i32 %.sink34.i, %i.ae
  br label %bb.b

bb.b:                                             ; preds = %.sink.split.i, %bb.a
  %i.ag = phi i32 [ 0, %bb.a ], [ %i.af, %.sink.split.i ]
  %i.ah = fcmp ugt float %i.t, 0.000000e+00
  br i1 %i.ah, label %.sink.split35.i, label %bb.c

.sink.split35.i:                                  ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !55 ; 2 uses
  %i.ak = uitofp i32 %i.aj to float
  %i.al = fcmp ult float %i.t, %i.ak
  %i.am = fptoui float %i.t to i32
  %.sink37.i = select i1 %i.al, i32 %i.am, i32 %i.aj
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !52
  %i.ap = and i32 %.sink37.i, %i.ao
  br label %bb.c

bb.c:                                             ; preds = %.sink.split35.i, %bb.b
  %i.aq = phi i32 [ 0, %bb.b ], [ %i.ap, %.sink.split35.i ]
  %i.ar = fcmp ugt float %i.w, 0.000000e+00
  br i1 %i.ar, label %.sink.split38.i, label %_ZNK20btAxisSweep3InternalIjE8quantizeEPjRK9btVector3i.exit

.sink.split38.i:                                  ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.at = load i32, ptr %i.as, align 4, !tbaa !55 ; 2 uses
  %i.au = uitofp i32 %i.at to float
  %i.av = fcmp ult float %i.w, %i.au
  %i.aw = fptoui float %i.w to i32
  %.sink40.i = select i1 %i.av, i32 %i.aw, i32 %i.at
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !52
  %i.az = and i32 %.sink40.i, %i.ay
  br label %_ZNK20btAxisSweep3InternalIjE8quantizeEPjRK9btVector3i.exit

_ZNK20btAxisSweep3InternalIjE8quantizeEPjRK9btVector3i.exit: ; preds = %bb.c, %.sink.split38.i
  %i.ba = phi i32 [ 0, %bb.c ], [ %i.az, %.sink.split38.i ]
  %i.bb = load float, ptr %2, align 4, !tbaa !38
  %i.bc = fsub float %i.bb, %i.c
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.be = load float, ptr %i.bd, align 4, !tbaa !38
  %i.bf = fsub float %i.be, %i.h
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !38
  %i.bi = fsub float %i.bh, %i.m
  %i.bj = fmul float %i.p, %i.bc                  ; 3 uses
  %i.bk = fmul float %i.s, %i.bf                  ; 3 uses
  %i.bl = fmul float %i.v, %i.bi                  ; 3 uses
  %i.bm = fcmp ugt float %i.bj, 0.000000e+00
  br i1 %i.bm, label %.sink.split.i55, label %bb.d

.sink.split.i55:                                  ; preds = %_ZNK20btAxisSweep3InternalIjE8quantizeEPjRK9btVector3i.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !55 ; 2 uses
  %i.bp = uitofp i32 %i.bo to float
  %i.bq = fcmp ult float %i.bj, %i.bp
  %i.br = fptoui float %i.bj to i32
  %.sink34.i56 = select i1 %i.bq, i32 %i.br, i32 %i.bo
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !52
  %i.bu = and i32 %.sink34.i56, %i.bt
  %i.bv = or i32 %i.bu, 1
  br label %bb.d

bb.d:                                             ; preds = %.sink.split.i55, %_ZNK20btAxisSweep3InternalIjE8quantizeEPjRK9btVector3i.exit
  %i.bw = phi i32 [ 1, %_ZNK20btAxisSweep3InternalIjE8quantizeEPjRK9btVector3i.exit ], [ %i.bv, %.sink.split.i55 ]
  %i.bx = fcmp ugt float %i.bk, 0.000000e+00
  br i1 %i.bx, label %.sink.split35.i53, label %bb.e

.sink.split35.i53:                                ; preds = %bb.d
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !55 ; 2 uses
  %i.ca = uitofp i32 %i.bz to float
  %i.cb = fcmp ult float %i.bk, %i.ca
  %i.cc = fptoui float %i.bk to i32
  %.sink37.i54 = select i1 %i.cb, i32 %i.cc, i32 %i.bz
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !52
  %i.cf = and i32 %.sink37.i54, %i.ce
  %i.cg = or i32 %i.cf, 1
  br label %bb.e

bb.e:                                             ; preds = %.sink.split35.i53, %bb.d
  %i.ch = phi i32 [ 1, %bb.d ], [ %i.cg, %.sink.split35.i53 ]
  %i.ci = fcmp ugt float %i.bl, 0.000000e+00
  br i1 %i.ci, label %.sink.split38.i51, label %_ZNK20btAxisSweep3InternalIjE8quantizeEPjRK9btVector3i.exit57

.sink.split38.i51:                                ; preds = %bb.e
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !55 ; 2 uses
  %i.cl = uitofp i32 %i.ck to float
  %i.cm = fcmp ult float %i.bl, %i.cl
  %i.cn = fptoui float %i.bl to i32
  %.sink40.i52 = select i1 %i.cm, i32 %i.cn, i32 %i.ck
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !52
  %i.cq = and i32 %.sink40.i52, %i.cp
  %i.cr = or i32 %i.cq, 1
  br label %_ZNK20btAxisSweep3InternalIjE8quantizeEPjRK9btVector3i.exit57

_ZNK20btAxisSweep3InternalIjE8quantizeEPjRK9btVector3i.exit57: ; preds = %bb.e, %.sink.split38.i51
  %i.cs = phi i32 [ 1, %bb.e ], [ %i.cr, %.sink.split38.i51 ]
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !65 ; 9 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 13 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !62 ; 2 uses
  %i.cx = zext i32 %i.cu to i64
  %i.cy = getelementptr inbounds nuw [96 x i8], ptr %i.cw, i64 %i.cx ; 15 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 60 ; 3 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !4
  store i32 %i.da, ptr %i.ct, align 8, !tbaa !65
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !64
  %i.dd = add i32 %i.dc, 1                        ; 2 uses
  store i32 %i.dd, ptr %i.db, align 8, !tbaa !64
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  store i32 %i.cu, ptr %i.de, align 8, !tbaa !77
  store ptr %3, ptr %i.cy, align 8, !tbaa !43
  %i.df = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i16 %4, ptr %i.df, align 8, !tbaa !95
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cy, i64 10
  store i16 %5, ptr %i.dg, align 2, !tbaa !96
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store ptr %7, ptr %i.dh, align 8, !tbaa !45
  %i.di = shl i32 %i.dd, 1                        ; 6 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.dk = add i32 %i.di, -1                       ; 4 uses
end_hunk_1
begin_hunk_2_@_ZN20btAxisSweep3InternalIjE9addHandleERK9btVector3S3_PvssP12btDispatcherS4_:bb.a
  %..i61 = select i1 %.not.i60, i64 60, i64 72
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 %..i61 ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !4
  %i.hj = add i32 %i.hi, 1
  store i32 %i.hj, ptr %i.hh, align 4, !tbaa !4
  %i.hk = load i32, ptr %i.gz, align 4, !tbaa !4
  %i.hl = add i32 %i.hk, -1
  store i32 %i.hl, ptr %i.gz, align 4, !tbaa !4
  %i.hm = load i64, ptr %.042.i, align 4
  %i.hn = load i64, ptr %.03543.i, align 4
  store i64 %i.hn, ptr %.042.i, align 4
  store i64 %i.hm, ptr %.03543.i, align 4
  %i.ho = getelementptr inbounds i8, ptr %.042.i, i64 -8 ; 2 uses
  %.035.i = getelementptr inbounds i8, ptr %.03543.i, i64 -8 ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !69
  %i.hq = load i32, ptr %.035.i, align 4, !tbaa !69 ; 2 uses
  %i.hr = icmp ult i32 %i.hp, %i.hq
  br i1 %i.hr, label %.lr.ph.split.i59, label %_ZN20btAxisSweep3InternalIjE11sortMaxDownEijP12btDispatcherb.exit

_ZN20btAxisSweep3InternalIjE11sortMaxDownEijP12btDispatcherb.exit: ; preds = %.lr.ph.split.i59, %_ZN20btAxisSweep3InternalIjE11sortMinDownEijP12btDispatcherb.exit
  %i.hs = getelementptr inbounds nuw i8, ptr %i.cy, i64 64
  %i.ht = load i32, ptr %i.hs, align 8, !tbaa !4
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !67 ; 2 uses
  %i.hw = zext i32 %i.ht to i64
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %i.hw ; 4 uses
  %.03136.i62 = getelementptr inbounds i8, ptr %i.hx, i64 -8 ; 2 uses
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !69
  %i.hz = load i32, ptr %.03136.i62, align 4, !tbaa !69 ; 2 uses
  %i.ia = icmp ult i32 %i.hy, %i.hz
  br i1 %i.ia, label %.lr.ph.i63, label %_ZN20btAxisSweep3InternalIjE11sortMinDownEijP12btDispatcherb.exit70

.lr.ph.i63:                                       ; preds = %_ZN20btAxisSweep3InternalIjE11sortMaxDownEijP12btDispatcherb.exit
  %i.ib = load ptr, ptr %i.cv, align 8, !tbaa !62
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !71
  %i.ie = zext i32 %i.id to i64
  %i.if = getelementptr inbounds nuw [96 x i8], ptr %i.ib, i64 %i.ie
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 64 ; 2 uses
  br label %.lr.ph.split.i64

.lr.ph.split.i64:                                 ; preds = %.lr.ph.split.i64, %.lr.ph.i63
  %i.ih = phi i32 [ %i.iy, %.lr.ph.split.i64 ], [ %i.hz, %.lr.ph.i63 ]
  %.03139.i65 = phi ptr [ %.031.i69, %.lr.ph.split.i64 ], [ %.03136.i62, %.lr.ph.i63 ] ; 3 uses
  %.038.i66 = phi ptr [ %i.iw, %.lr.ph.split.i64 ], [ %i.hx, %.lr.ph.i63 ] ; 4 uses
  %i.ii = getelementptr inbounds i8, ptr %.038.i66, i64 -4
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !71
  %i.ik = load ptr, ptr %i.cv, align 8, !tbaa !62
  %i.il = zext i32 %i.ij to i64
  %i.im = getelementptr inbounds nuw [96 x i8], ptr %i.ik, i64 %i.il
  %i.in = and i32 %i.ih, 1
  %.not.i67 = icmp eq i32 %i.in, 0
  %i.io = select i1 %.not.i67, i64 64, i64 76
  %i.ip = getelementptr inbounds nuw i8, ptr %i.im, i64 %i.io ; 2 uses
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !4
  %i.ir = add i32 %i.iq, 1
  store i32 %i.ir, ptr %i.ip, align 4, !tbaa !4
  %i.is = load i32, ptr %i.ig, align 4, !tbaa !4
  %i.it = add i32 %i.is, -1
  store i32 %i.it, ptr %i.ig, align 4, !tbaa !4
  %i.iu = load i64, ptr %.038.i66, align 4
  %i.iv = load i64, ptr %.03139.i65, align 4
  store i64 %i.iv, ptr %.038.i66, align 4
  store i64 %i.iu, ptr %.03139.i65, align 4
  %i.iw = getelementptr inbounds i8, ptr %.038.i66, i64 -8 ; 2 uses
  %.031.i69 = getelementptr inbounds i8, ptr %.03139.i65, i64 -8 ; 2 uses
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !69
  %i.iy = load i32, ptr %.031.i69, align 4, !tbaa !69 ; 2 uses
  %i.iz = icmp ult i32 %i.ix, %i.iy
  br i1 %i.iz, label %.lr.ph.split.i64, label %_ZN20btAxisSweep3InternalIjE11sortMinDownEijP12btDispatcherb.exit70.loopexit

_ZN20btAxisSweep3InternalIjE11sortMinDownEijP12btDispatcherb.exit70.loopexit: ; preds = %.lr.ph.split.i64
  %.pre88 = load ptr, ptr %i.hu, align 8, !tbaa !67
  br label %_ZN20btAxisSweep3InternalIjE11sortMinDownEijP12btDispatcherb.exit70

_ZN20btAxisSweep3InternalIjE11sortMinDownEijP12btDispatcherb.exit70: ; preds = %_ZN20btAxisSweep3InternalIjE11sortMinDownEijP12btDispatcherb.exit70.loopexit, %_ZN20btAxisSweep3InternalIjE11sortMaxDownEijP12btDispatcherb.exit
  %i.ja = phi ptr [ %.pre88, %_ZN20btAxisSweep3InternalIjE11sortMinDownEijP12btDispatcherb.exit70.loopexit ], [ %i.hv, %_ZN20btAxisSweep3InternalIjE11sortMaxDownEijP12btDispatcherb.exit ]
  %i.jb = getelementptr inbounds nuw i8, ptr %i.cy, i64 76
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !4
  %i.jd = zext i32 %i.jc to i64
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %i.jd ; 4 uses
  %.03540.i71 = getelementptr inbounds i8, ptr %i.je, i64 -8 ; 2 uses
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !69
  %i.jg = load i32, ptr %.03540.i71, align 4, !tbaa !69 ; 2 uses
  %i.jh = icmp ult i32 %i.jf, %i.jg
  br i1 %i.jh, label %.lr.ph.i72, label %_ZN20btAxisSweep3InternalIjE11sortMaxDownEijP12btDispatcherb.exit79

.lr.ph.i72:                                       ; preds = %_ZN20btAxisSweep3InternalIjE11sortMinDownEijP12btDispatcherb.exit70
  %i.ji = load ptr, ptr %i.cv, align 8, !tbaa !62
  %i.jj = getelementptr inbounds nuw i8, ptr %i.je, i64 4
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !71
  %i.jl = zext i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw [96 x i8], ptr %i.ji, i64 %i.jl
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 76 ; 2 uses
  br label %.lr.ph.split.i73

.lr.ph.split.i73:                                 ; preds = %.lr.ph.split.i73, %.lr.ph.i72
  %i.jo = phi i32 [ %i.kf, %.lr.ph.split.i73 ], [ %i.jg, %.lr.ph.i72 ]
  %.03543.i74 = phi ptr [ %.035.i78, %.lr.ph.split.i73 ], [ %.03540.i71, %.lr.ph.i72 ] ; 3 uses
  %.042.i75 = phi ptr [ %i.kd, %.lr.ph.split.i73 ], [ %i.je, %.lr.ph.i72 ] ; 4 uses
  %i.jp = getelementptr inbounds i8, ptr %.042.i75, i64 -4
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !71
  %i.jr = load ptr, ptr %i.cv, align 8, !tbaa !62
  %i.js = zext i32 %i.jq to i64
  %i.jt = getelementptr inbounds nuw [96 x i8], ptr %i.jr, i64 %i.js
  %i.ju = and i32 %i.jo, 1
  %.not.i76 = icmp eq i32 %i.ju, 0
  %i.jv = select i1 %.not.i76, i64 64, i64 76
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jt, i64 %i.jv ; 2 uses
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !4
  %i.jy = add i32 %i.jx, 1
  store i32 %i.jy, ptr %i.jw, align 4, !tbaa !4
  %i.jz = load i32, ptr %i.jn, align 4, !tbaa !4
  %i.ka = add i32 %i.jz, -1
  store i32 %i.ka, ptr %i.jn, align 4, !tbaa !4
  %i.kb = load i64, ptr %.042.i75, align 4
  %i.kc = load i64, ptr %.03543.i74, align 4
  store i64 %i.kc, ptr %.042.i75, align 4
  store i64 %i.kb, ptr %.03543.i74, align 4
  %i.kd = getelementptr inbounds i8, ptr %.042.i75, i64 -8 ; 2 uses
  %.035.i78 = getelementptr inbounds i8, ptr %.03543.i74, i64 -8 ; 2 uses
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !69
  %i.kf = load i32, ptr %.035.i78, align 4, !tbaa !69 ; 2 uses
  %i.kg = icmp ult i32 %i.ke, %i.kf
  br i1 %i.kg, label %.lr.ph.split.i73, label %_ZN20btAxisSweep3InternalIjE11sortMaxDownEijP12btDispatcherb.exit79

_ZN20btAxisSweep3InternalIjE11sortMaxDownEijP12btDispatcherb.exit79: ; preds = %.lr.ph.split.i73, %_ZN20btAxisSweep3InternalIjE11sortMinDownEijP12btDispatcherb.exit70
  %i.kh = getelementptr inbounds nuw i8, ptr %i.cy, i64 68
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !4
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !67
  %i.kl = zext i32 %i.ki to i64
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %i.kl ; 4 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 4
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !71
  %i.kp = load ptr, ptr %i.cv, align 8, !tbaa !62
  %i.kq = zext i32 %i.ko to i64
  %i.kr = getelementptr inbounds nuw [96 x i8], ptr %i.kp, i64 %i.kq ; 7 uses
  %.03136.i80 = getelementptr inbounds i8, ptr %i.km, i64 -8 ; 2 uses
  %i.ks = load i32, ptr %i.km, align 4, !tbaa !69
  %i.kt = load i32, ptr %.03136.i80, align 4, !tbaa !69 ; 2 uses
  %i.ku = icmp ult i32 %i.ks, %i.kt
  br i1 %i.ku, label %.lr.ph.i81, label %_ZN20btAxisSweep3InternalIjE11sortMinDownEijP12btDispatcherb.exit82

.lr.ph.i81:                                       ; preds = %_ZN20btAxisSweep3InternalIjE11sortMaxDownEijP12btDispatcherb.exit79
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kr, i64 72
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kr, i64 60
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kr, i64 76
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kr, i64 64
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kr, i64 68 ; 2 uses
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us.i, %.lr.ph.i81
  %i.lc = phi i32 [ %i.ms, %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us.i ], [ %i.kt, %.lr.ph.i81 ]
  %.03139.us.i = phi ptr [ %.031.us.i, %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us.i ], [ %.03136.i80, %.lr.ph.i81 ] ; 3 uses
  %.038.us.i = phi ptr [ %i.mq, %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us.i ], [ %i.km, %.lr.ph.i81 ] ; 4 uses
  %i.ld = getelementptr inbounds i8, ptr %.038.us.i, i64 -4
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !71
  %i.lf = load ptr, ptr %i.cv, align 8, !tbaa !62
  %i.lg = zext i32 %i.le to i64
  %i.lh = getelementptr inbounds nuw [96 x i8], ptr %i.lf, i64 %i.lg ; 7 uses
  %i.li = and i32 %i.lc, 1
  %.not.us.i = icmp eq i32 %i.li, 0
  br i1 %.not.us.i, label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.us.i
  %i.lj = load i32, ptr %i.kv, align 4, !tbaa !4
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lh, i64 60
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !4
  %i.lm = icmp ult i32 %i.lj, %i.ll
  br i1 %i.lm, label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lh, i64 72
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !4
  %i.lp = load i32, ptr %i.kw, align 4, !tbaa !4
  %i.lq = icmp ult i32 %i.lo, %i.lp
  br i1 %i.lq, label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.lr = load i32, ptr %i.kx, align 4, !tbaa !4
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lh, i64 64
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !4
  %i.lu = icmp ult i32 %i.lr, %i.lt
  br i1 %i.lu, label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us.i, label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us.i

_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us.i: ; preds = %bb.h
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lh, i64 76
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !4
  %i.lx = load i32, ptr %i.ky, align 4, !tbaa !4
  %.not35.us.i = icmp ult i32 %i.lw, %i.lx
  br i1 %.not35.us.i, label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us.i, label %bb.i

bb.i:                                             ; preds = %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us.i
  %i.ly = load ptr, ptr %i.kz, align 8, !tbaa !56 ; 2 uses
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !8
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 16
  %i.mb = load ptr, ptr %i.ma, align 8
  %i.mc = tail call noundef ptr %i.mb(ptr noundef nonnull align 8 dereferenceable(8) %i.ly, ptr noundef nonnull %i.kr, ptr noundef nonnull %i.lh), !inline_history !101 ; 0 uses
  %i.md = load ptr, ptr %i.la, align 8, !tbaa !57 ; 3 uses
  %.not33.us.i = icmp eq ptr %i.md, null
  br i1 %.not33.us.i, label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !8
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  %i.mg = load ptr, ptr %i.mf, align 8
  %i.mh = tail call noundef ptr %i.mg(ptr noundef nonnull align 8 dereferenceable(8) %i.md, ptr noundef nonnull %i.kr, ptr noundef nonnull %i.lh), !inline_history !101 ; 0 uses
  br label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us.i

_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us.i: ; preds = %bb.j, %bb.i, %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us.i, %bb.h, %bb.g, %bb.f, %.lr.ph.split.us.i
  %.sink.i = phi i64 [ 72, %bb.f ], [ 72, %bb.j ], [ 72, %bb.i ], [ 72, %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us.i ], [ 72, %bb.h ], [ 72, %bb.g ], [ 60, %.lr.ph.split.us.i ]
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lh, i64 %.sink.i
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 8 ; 2 uses
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !4
  %i.ml = add i32 %i.mk, 1
  store i32 %i.ml, ptr %i.mj, align 4, !tbaa !4
  %i.mm = load i32, ptr %i.lb, align 4, !tbaa !4
  %i.mn = add i32 %i.mm, -1
  store i32 %i.mn, ptr %i.lb, align 4, !tbaa !4
  %i.mo = load i64, ptr %.038.us.i, align 4
  %i.mp = load i64, ptr %.03139.us.i, align 4
  store i64 %i.mp, ptr %.038.us.i, align 4
  store i64 %i.mo, ptr %.03139.us.i, align 4
  %i.mq = getelementptr inbounds i8, ptr %.038.us.i, i64 -8 ; 2 uses
  %.031.us.i = getelementptr inbounds i8, ptr %.03139.us.i, i64 -8 ; 2 uses
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !69
  %i.ms = load i32, ptr %.031.us.i, align 4, !tbaa !69 ; 2 uses
  %i.mt = icmp ult i32 %i.mr, %i.ms
  br i1 %i.mt, label %.lr.ph.split.us.i, label %_ZN20btAxisSweep3InternalIjE11sortMinDownEijP12btDispatcherb.exit82

_ZN20btAxisSweep3InternalIjE11sortMinDownEijP12btDispatcherb.exit82: ; preds = %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us.i, %_ZN20btAxisSweep3InternalIjE11sortMaxDownEijP12btDispatcherb.exit79
  %i.mu = getelementptr inbounds nuw i8, ptr %i.cy, i64 80
  %i.mv = load i32, ptr %i.mu, align 8, !tbaa !4
  tail call void @_ZN20btAxisSweep3InternalIjE11sortMaxDownEijP12btDispatcherb(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef 2, i32 noundef %i.mv, ptr noundef %6, i1 noundef zeroext true)
  ret i32 %i.cu
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN20btAxisSweep3InternalIjE11sortMinDownEijP12btDispatcherb(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = sext i32 %1 to i64                       ; 4 uses
  %i.c = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67
  %i.e = zext i32 %2 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.e ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !71
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !62
  %i.k = zext i32 %i.h to i64
  %i.l = getelementptr inbounds nuw [96 x i8], ptr %i.j, i64 %i.k ; 4 uses
  %.03136 = getelementptr inbounds i8, ptr %i.f, i64 -8 ; 3 uses
  %i.m = load i32, ptr %i.f, align 4, !tbaa !69
  %i.n = load i32, ptr %.03136, align 4, !tbaa !69 ; 3 uses
  %i.o = icmp ult i32 %i.m, %i.n
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.p = shl nuw i32 1, %1
  %i.q = and i32 %i.p, 3                          ; 2 uses
  %i.r = shl nuw nsw i32 1, %i.q
  %i.s = and i32 %i.r, 3
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 72 ; 2 uses
  %i.u = zext nneg i32 %i.q to i64                ; 4 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 60 ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.u
  %i.y = zext nneg i32 %i.s to i64                ; 4 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.y
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.y
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.b ; 4 uses
  br i1 %4, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us
  %i.ae = phi i32 [ %i.bw, %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us ], [ %i.n, %.lr.ph ]
  %.03139.us = phi ptr [ %.031.us, %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us ], [ %.03136, %.lr.ph ] ; 3 uses
  %.038.us = phi ptr [ %i.bu, %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us ], [ %i.f, %.lr.ph ] ; 4 uses
  %i.af = getelementptr inbounds i8, ptr %.038.us, i64 -4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !71
  %i.ah = load ptr, ptr %i.i, align 8, !tbaa !62
  %i.ai = zext i32 %i.ag to i64
  %i.aj = getelementptr inbounds nuw [96 x i8], ptr %i.ah, i64 %i.ai ; 5 uses
  %i.ak = and i32 %i.ae, 1
  %.not.us = icmp eq i32 %i.ak, 0
  br i1 %.not.us, label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.al = load i32, ptr %i.v, align 4, !tbaa !4
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 60 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.u
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %i.ap = icmp ult i32 %i.al, %i.ao
  br i1 %i.ap, label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 72 ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.u
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !4
  %i.at = load i32, ptr %i.x, align 4, !tbaa !4
  %i.au = icmp ult i32 %i.as, %i.at
  br i1 %i.au, label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.av = load i32, ptr %i.z, align 4, !tbaa !4
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.y
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !4
  %i.ay = icmp ult i32 %i.av, %i.ax
  br i1 %i.ay, label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us

_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us: ; preds = %bb.d
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.y
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !4
  %i.bb = load i32, ptr %i.aa, align 4, !tbaa !4
  %.not35.us = icmp ult i32 %i.ba, %i.bb
  br i1 %.not35.us, label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %bb.e

bb.e:                                             ; preds = %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us
  %i.bc = load ptr, ptr %i.ab, align 8, !tbaa !56 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = tail call noundef ptr %i.bf(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull %i.l, ptr noundef nonnull %i.aj) ; 0 uses
  %i.bh = load ptr, ptr %i.ac, align 8, !tbaa !57 ; 3 uses
  %.not33.us = icmp eq ptr %i.bh, null
  br i1 %.not33.us, label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = tail call noundef ptr %i.bk(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull %i.l, ptr noundef nonnull %i.aj) ; 0 uses
  br label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us

_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us: ; preds = %.lr.ph.split.us, %bb.b, %bb.c, %bb.d, %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us, %bb.e, %bb.f
  %.sink = phi i64 [ 72, %bb.b ], [ 72, %bb.f ], [ 72, %bb.e ], [ 72, %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us ], [ 72, %bb.d ], [ 72, %bb.c ], [ 60, %.lr.ph.split.us ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.sink
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.b ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !4
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !4
  %i.bq = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.br = add i32 %i.bq, -1
  store i32 %i.br, ptr %i.ad, align 4, !tbaa !4
  %i.bs = load i64, ptr %.038.us, align 4
  %i.bt = load i64, ptr %.03139.us, align 4
  store i64 %i.bt, ptr %.038.us, align 4
  store i64 %i.bs, ptr %.03139.us, align 4
  %i.bu = getelementptr inbounds i8, ptr %.038.us, i64 -8 ; 2 uses
  %.031.us = getelementptr inbounds i8, ptr %.03139.us, i64 -8 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !69
  %i.bw = load i32, ptr %.031.us, align 4, !tbaa !69 ; 2 uses
  %i.bx = icmp ult i32 %i.bv, %i.bw
  br i1 %i.bx, label %.lr.ph.split.us, label %._crit_edge

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %i.by = phi i32 [ %i.cp, %.lr.ph.split ], [ %i.n, %.lr.ph ]
  %.03139 = phi ptr [ %.031, %.lr.ph.split ], [ %.03136, %.lr.ph ] ; 3 uses
  %.038 = phi ptr [ %i.cn, %.lr.ph.split ], [ %i.f, %.lr.ph ] ; 4 uses
  %i.bz = getelementptr inbounds i8, ptr %.038, i64 -4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !71
  %i.cb = load ptr, ptr %i.i, align 8, !tbaa !62
  %i.cc = zext i32 %i.ca to i64
  %i.cd = getelementptr inbounds nuw [96 x i8], ptr %i.cb, i64 %i.cc
  %i.ce = and i32 %i.by, 1
  %.not = icmp eq i32 %i.ce, 0
  %. = select i1 %.not, i64 60, i64 72
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.b ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !4
  %i.ci = add i32 %i.ch, 1
  store i32 %i.ci, ptr %i.cg, align 4, !tbaa !4
  %i.cj = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.ck = add i32 %i.cj, -1
  store i32 %i.ck, ptr %i.ad, align 4, !tbaa !4
  %i.cl = load i64, ptr %.038, align 4
  %i.cm = load i64, ptr %.03139, align 4
  store i64 %i.cm, ptr %.038, align 4
  store i64 %i.cl, ptr %.03139, align 4
  %i.cn = getelementptr inbounds i8, ptr %.038, i64 -8 ; 2 uses
  %.031 = getelementptr inbounds i8, ptr %.03139, i64 -8 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !69
  %i.cp = load i32, ptr %.031, align 4, !tbaa !69 ; 2 uses
  %i.cq = icmp ult i32 %i.co, %i.cp
  br i1 %i.cq, label %.lr.ph.split, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split, %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, %bb.a
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN20btAxisSweep3InternalIjE11sortMaxDownEijP12btDispatcherb(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = sext i32 %1 to i64                       ; 4 uses
  %i.c = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67
  %i.e = zext i32 %2 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.e ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %.03540 = getelementptr inbounds i8, ptr %i.f, i64 -8 ; 3 uses
  %i.h = load i32, ptr %i.f, align 4, !tbaa !69
  %i.i = load i32, ptr %.03540, align 4, !tbaa !69 ; 3 uses
  %i.j = icmp ult i32 %i.h, %i.i
  br i1 %i.j, label %.lr.ph, label %._crit_edge
end_hunk_2
begin_hunk_3_@_ZN20btAxisSweep3InternalIjE12updateHandleEjRK9btVector3S3_P12btDispatcher:bb.a

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN20btAxisSweep3InternalIjE11sortMinDownEijP12btDispatcherb(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef 1, i32 noundef %i.dq, ptr noundef %4, i1 noundef zeroext true)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ee = icmp sgt i32 %i.ec, 0
  br i1 %i.ee, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef 1, i32 noundef %i.ds, ptr noundef %4, i1 noundef zeroext true)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ef = icmp sgt i32 %i.dy, 0
  br i1 %i.ef, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN20btAxisSweep3InternalIjE9sortMinUpEijP12btDispatcherb(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef 1, i32 noundef %i.dq, ptr noundef %4, i1 noundef zeroext true)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.eg = icmp slt i32 %i.ec, 0
  br i1 %i.eg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @_ZN20btAxisSweep3InternalIjE11sortMaxDownEijP12btDispatcherb(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef 1, i32 noundef %i.ds, ptr noundef %4, i1 noundef zeroext true)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.eh = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !4  ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !4  ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !67 ; 2 uses
  %i.en = zext i32 %i.ei to i64
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.en ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !69
  %i.eq = sub nsw i32 %i.be, %i.ep                ; 2 uses
  %i.er = zext i32 %i.ek to i64
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.er ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !69
  %i.eu = sub nsw i32 %i.cw, %i.et                ; 2 uses
  store i32 %i.be, ptr %i.eo, align 4, !tbaa !69
  store i32 %i.cw, ptr %i.es, align 4, !tbaa !69
  %i.ev = icmp slt i32 %i.eq, 0
  br i1 %i.ev, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void @_ZN20btAxisSweep3InternalIjE11sortMinDownEijP12btDispatcherb(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef 2, i32 noundef %i.ei, ptr noundef %4, i1 noundef zeroext true)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ew = icmp sgt i32 %i.eu, 0
  br i1 %i.ew, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void @_ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef 2, i32 noundef %i.ek, ptr noundef %4, i1 noundef zeroext true)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ex = icmp sgt i32 %i.eq, 0
  br i1 %i.ex, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  tail call void @_ZN20btAxisSweep3InternalIjE9sortMinUpEijP12btDispatcherb(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef 2, i32 noundef %i.ei, ptr noundef %4, i1 noundef zeroext true)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ey = icmp slt i32 %i.eu, 0
  br i1 %i.ey, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZN20btAxisSweep3InternalIjE11sortMaxDownEijP12btDispatcherb(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef 2, i32 noundef %i.ek, ptr noundef %4, i1 noundef zeroext true)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind }
attributes #13 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !13, i64 8}
!11 = !{!"_ZTS20btAxisSweep3InternalItE", !12, i64 0, !13, i64 8, !13, i64 10, !14, i64 12, !14, i64 28, !14, i64 44, !13, i64 60, !13, i64 62, !15, i64 64, !13, i64 72, !6, i64 80, !6, i64 104, !17, i64 128, !18, i64 136, !19, i64 144, !5, i64 148, !20, i64 152, !17, i64 160}
!12 = !{!"_ZTS21btBroadphaseInterface"}
!13 = !{!"short", !6, i64 0}
!14 = !{!"_ZTS9btVector3", !6, i64 0}
!15 = !{!"p1 _ZTSN20btAxisSweep3InternalItE6HandleE", !16, i64 0}
!16 = !{!"any pointer", !6, i64 0}
!17 = !{!"p1 _ZTS22btOverlappingPairCache", !16, i64 0}
!18 = !{!"p1 _ZTS25btOverlappingPairCallback", !16, i64 0}
!19 = !{!"bool", !6, i64 0}
!20 = !{!"p1 _ZTS16btDbvtBroadphase", !16, i64 0}
!21 = !{!11, !13, i64 10}
!22 = !{!11, !17, i64 128}
!23 = !{!11, !18, i64 136}
!24 = !{!11, !19, i64 144}
!25 = !{!11, !5, i64 148}
!26 = !{!11, !20, i64 152}
!27 = !{!28, !19, i64 24}
!28 = !{!"_ZTS20btAlignedObjectArrayI16btBroadphasePairE", !29, i64 0, !5, i64 4, !5, i64 8, !30, i64 16, !19, i64 24}
!29 = !{!"_ZTS18btAlignedAllocatorI16btBroadphasePairLj16EE"}
!30 = !{!"p1 _ZTS16btBroadphasePair", !16, i64 0}
!31 = !{!28, !5, i64 4}
!32 = !{!11, !17, i64 160}
!33 = !{!34, !19, i64 221}
!34 = !{!"_ZTS16btDbvtBroadphase", !12, i64 0, !6, i64 8, !6, i64 136, !17, i64 160, !35, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !5, i64 184, !5, i64 188, !5, i64 192, !5, i64 196, !5, i64 200, !35, i64 204, !5, i64 208, !5, i64 212, !5, i64 216, !19, i64 220, !19, i64 221, !19, i64 222}
!35 = !{!"float", !6, i64 0}
!36 = !{i64 0, i64 16, !37}
!37 = !{!6, !6, i64 0}
!38 = !{!35, !35, i64 0}
!39 = !{!11, !15, i64 64}
!40 = !{!11, !13, i64 62}
!41 = !{!11, !13, i64 60}
!42 = !{!11, !13, i64 72}
!43 = !{!44, !16, i64 0}
!44 = !{!"_ZTS17btBroadphaseProxy", !16, i64 0, !13, i64 8, !13, i64 10, !16, i64 16, !5, i64 24, !14, i64 28, !14, i64 44}
!45 = !{!44, !16, i64 16}
!46 = !{!13, !13, i64 0}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.unroll.disable"}
!49 = !{!16, !16, i64 0}
!50 = !{!51, !51, i64 0}
!51 = !{!"p1 _ZTSN20btAxisSweep3InternalItE4EdgeE", !16, i64 0}
!52 = !{!53, !5, i64 8}
!53 = !{!"_ZTS20btAxisSweep3InternalIjE", !12, i64 0, !5, i64 8, !5, i64 12, !14, i64 16, !14, i64 32, !14, i64 48, !5, i64 64, !5, i64 68, !54, i64 72, !5, i64 80, !6, i64 88, !6, i64 112, !17, i64 136, !18, i64 144, !19, i64 152, !5, i64 156, !20, i64 160, !17, i64 168}
!54 = !{!"p1 _ZTSN20btAxisSweep3InternalIjE6HandleE", !16, i64 0}
!55 = !{!53, !5, i64 12}
!56 = !{!53, !17, i64 136}
!57 = !{!53, !18, i64 144}
!58 = !{!53, !19, i64 152}
!59 = !{!53, !5, i64 156}
!60 = !{!53, !20, i64 160}
!61 = !{!53, !17, i64 168}
!62 = !{!53, !54, i64 72}
!63 = !{!53, !5, i64 68}
!64 = !{!53, !5, i64 64}
!65 = !{!53, !5, i64 80}
!66 = distinct !{!66, !48}
!67 = !{!68, !68, i64 0}
!68 = !{!"p1 _ZTSN20btAxisSweep3InternalIjE4EdgeE", !16, i64 0}
!69 = !{!70, !5, i64 0}
!70 = !{!"_ZTSN20btAxisSweep3InternalIjE4EdgeE", !5, i64 0, !5, i64 4}
!71 = !{!70, !5, i64 4}
!72 = !{i8 0, i8 2}
!73 = !{}
!74 = !{!75, !76, i64 72}
!75 = !{!"_ZTSN20btAxisSweep3InternalItE6HandleE", !44, i64 0, !6, i64 60, !6, i64 66, !76, i64 72}
!76 = !{!"p1 _ZTS17btBroadphaseProxy", !16, i64 0}
!77 = !{!44, !5, i64 24}
!78 = !{!79, !13, i64 0}
!79 = !{!"_ZTSN20btAxisSweep3InternalItE4EdgeE", !13, i64 0, !13, i64 2}
!80 = !{!79, !13, i64 2}
!81 = !{!28, !5, i64 8}
!82 = !{!28, !30, i64 16}
!83 = !{!76, !76, i64 0}
!84 = !{!85, !86, i64 16}
!85 = !{!"_ZTS16btBroadphasePair", !76, i64 0, !76, i64 8, !86, i64 16, !6, i64 24}
!86 = !{!"p1 _ZTS20btCollisionAlgorithm", !16, i64 0}
!87 = distinct !{!87, !48}
!88 = !{!85, !76, i64 0}
!89 = distinct !{!89, !48}
!90 = !{!91, !76, i64 88}
!91 = !{!"_ZTSN20btAxisSweep3InternalIjE6HandleE", !44, i64 0, !6, i64 60, !6, i64 72, !76, i64 88}
!92 = distinct !{!92, !48}
!93 = distinct !{!93, !48}
!94 = !{ptr @_ZN15btNullPairCacheD2Ev}
!95 = !{!44, !13, i64 8}
!96 = !{!44, !13, i64 10}
!97 = !{ptr @_ZN20btAxisSweep3InternalItE11sortMinDownEitP12btDispatcherb}
!98 = !{!85, !76, i64 8}
!99 = !{i64 0, i64 8, !83, i64 8, i64 8, !83, i64 16, i64 8, !100, i64 24, i64 8, !37}
!100 = !{!86, !86, i64 0}
!101 = !{ptr @_ZN20btAxisSweep3InternalIjE11sortMinDownEijP12btDispatcherb}
end_hunk_3
