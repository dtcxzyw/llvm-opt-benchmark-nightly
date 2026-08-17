inline.NumInlined: 241
inline.NumDeleted: 66
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN15btNullPairCache8findPairEP17btBroadphaseProxyS1_:bb.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN15btNullPairCache18hasDeferredRemovalEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN15btNullPairCache28setInternalGhostPairCallbackEP25btOverlappingPairCallback(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN15btNullPairCache20sortOverlappingPairsEP12btDispatcher(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #11 ; 0 uses
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20btAxisSweep3InternalIjED0Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN20btAxisSweep3InternalIjED2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %0) #11
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
          to label %_ZN20btAxisSweep3InternalIjEdlEPv.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #12
  unreachable

_ZN20btAxisSweep3InternalIjEdlEPv.exit:           ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i16 @_ZN20btAxisSweep3InternalItE9addHandleERK9btVector3S3_PviiP12btDispatcher(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load float, ptr %1, align 4, !tbaa !42
  %i.c = load float, ptr %i.a, align 4, !tbaa !42 ; 2 uses
  %i.d = fsub float %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load float, ptr %i.e, align 4, !tbaa !42
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load float, ptr %i.g, align 8, !tbaa !42 ; 2 uses
  %i.i = fsub float %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load float, ptr %i.j, align 4, !tbaa !42
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.m = load float, ptr %i.l, align 4, !tbaa !42 ; 2 uses
  %i.n = fsub float %i.k, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.p = load float, ptr %i.o, align 4, !tbaa !42 ; 2 uses
  %i.q = fmul float %i.d, %i.p                    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load float, ptr %i.r, align 8, !tbaa !42 ; 2 uses
  %i.t = fmul float %i.i, %i.s                    ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.v = load float, ptr %i.u, align 4, !tbaa !42 ; 2 uses
  %i.w = fmul float %i.n, %i.v                    ; 3 uses
  %i.x = fcmp ugt float %i.q, 0.000000e+00
  br i1 %i.x, label %.sink.split, label %bb.b

.sink.split:                                      ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.z = load i16, ptr %i.y, align 2, !tbaa !22   ; 2 uses
  %i.aa = uitofp i16 %i.z to float
  %i.ab = fcmp ult float %i.q, %i.aa
  %i.ac = fptoui float %i.q to i16
  %.sink87 = select i1 %i.ab, i16 %i.ac, i16 %i.z
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load i16, ptr %i.ad, align 8, !tbaa !11
  %i.af = and i16 %i.ae, %.sink87
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  %i.ag = phi i16 [ 0, %bb.a ], [ %i.af, %.sink.split ]
  %i.ah = fcmp ugt float %i.t, 0.000000e+00
  br i1 %i.ah, label %.sink.split89, label %bb.c

.sink.split89:                                    ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !22 ; 2 uses
  %i.ak = uitofp i16 %i.aj to float
  %i.al = fcmp ult float %i.t, %i.ak
  %i.am = fptoui float %i.t to i16
  %.sink90 = select i1 %i.al, i16 %i.am, i16 %i.aj
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load i16, ptr %i.an, align 8, !tbaa !11
  %i.ap = and i16 %i.ao, %.sink90
  br label %bb.c

bb.c:                                             ; preds = %.sink.split89, %bb.b
  %i.aq = phi i16 [ 0, %bb.b ], [ %i.ap, %.sink.split89 ]
  %i.ar = fcmp ugt float %i.w, 0.000000e+00
  br i1 %i.ar, label %_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit.sink.split, label %_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit

_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit.sink.split: ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.at = load i16, ptr %i.as, align 2, !tbaa !22 ; 2 uses
  %i.au = uitofp i16 %i.at to float
  %i.av = fcmp ult float %i.w, %i.au
  %i.aw = fptoui float %i.w to i16
  %.sink92 = select i1 %i.av, i16 %i.aw, i16 %i.at
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = load i16, ptr %i.ax, align 8, !tbaa !11
  %i.az = and i16 %i.ay, %.sink92
  br label %_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit

_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit: ; preds = %_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit.sink.split, %bb.c
  %i.ba = phi i16 [ 0, %bb.c ], [ %i.az, %_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit.sink.split ]
  %i.bb = load float, ptr %2, align 4, !tbaa !42
  %i.bc = fsub float %i.bb, %i.c
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.be = load float, ptr %i.bd, align 4, !tbaa !42
  %i.bf = fsub float %i.be, %i.h
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !42
  %i.bi = fsub float %i.bh, %i.m
  %i.bj = fmul float %i.p, %i.bc                  ; 3 uses
  %i.bk = fmul float %i.s, %i.bf                  ; 3 uses
  %i.bl = fmul float %i.v, %i.bi                  ; 3 uses
  %i.bm = fcmp ugt float %i.bj, 0.000000e+00
  br i1 %i.bm, label %.sink.split94, label %bb.d

.sink.split94:                                    ; preds = %_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !22 ; 2 uses
  %i.bp = uitofp i16 %i.bo to float
  %i.bq = fcmp ult float %i.bj, %i.bp
  %i.br = fptoui float %i.bj to i16
  %.sink96 = select i1 %i.bq, i16 %i.br, i16 %i.bo
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bt = load i16, ptr %i.bs, align 8, !tbaa !11
  %i.bu = and i16 %i.bt, %.sink96
  %i.bv = or i16 %i.bu, 1
  br label %bb.d

bb.d:                                             ; preds = %.sink.split94, %_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit
  %i.bw = phi i16 [ 1, %_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit ], [ %i.bv, %.sink.split94 ]
  %i.bx = fcmp ugt float %i.bk, 0.000000e+00
  br i1 %i.bx, label %.sink.split97, label %bb.e

.sink.split97:                                    ; preds = %bb.d
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !22 ; 2 uses
  %i.ca = uitofp i16 %i.bz to float
  %i.cb = fcmp ult float %i.bk, %i.ca
  %i.cc = fptoui float %i.bk to i16
  %.sink99 = select i1 %i.cb, i16 %i.cc, i16 %i.bz
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ce = load i16, ptr %i.cd, align 8, !tbaa !11
  %i.cf = and i16 %i.ce, %.sink99
  %i.cg = or i16 %i.cf, 1
  br label %bb.e

bb.e:                                             ; preds = %.sink.split97, %bb.d
  %i.ch = phi i16 [ 1, %bb.d ], [ %i.cg, %.sink.split97 ]
  %i.ci = fcmp ugt float %i.bl, 0.000000e+00
  br i1 %i.ci, label %_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit49.sink.split, label %_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit49

_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit49.sink.split: ; preds = %bb.e
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !22 ; 2 uses
  %i.cl = uitofp i16 %i.ck to float
  %i.cm = fcmp ult float %i.bl, %i.cl
  %i.cn = fptoui float %i.bl to i16
  %.sink101 = select i1 %i.cm, i16 %i.cn, i16 %i.ck
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cp = load i16, ptr %i.co, align 8, !tbaa !11
  %i.cq = and i16 %i.cp, %.sink101
  %i.cr = or i16 %i.cq, 1
  br label %_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit49

_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit49: ; preds = %_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit49.sink.split, %bb.e
  %i.cs = phi i16 [ 1, %bb.e ], [ %i.cr, %_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit49.sink.split ]
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cu = load i16, ptr %i.ct, align 8, !tbaa !46 ; 9 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 13 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !43 ; 2 uses
  %i.cx = zext i16 %i.cu to i64
  %i.cy = getelementptr inbounds nuw [72 x i8], ptr %i.cw, i64 %i.cx ; 14 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 52 ; 3 uses
  %i.da = load i16, ptr %i.cz, align 4, !tbaa !49
  store i16 %i.da, ptr %i.ct, align 8, !tbaa !46
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.dc = load i16, ptr %i.db, align 4, !tbaa !45
  %i.dd = add i16 %i.dc, 1                        ; 2 uses
  store i16 %i.dd, ptr %i.db, align 4, !tbaa !45
  %i.de = zext i16 %i.cu to i32
  %i.df = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store i32 %i.de, ptr %i.df, align 8, !tbaa !84
  store ptr %3, ptr %i.cy, align 8, !tbaa !47
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i32 %4, ptr %i.dg, align 8, !tbaa !113
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  store i32 %5, ptr %i.dh, align 4, !tbaa !114
  %i.di = shl i16 %i.dd, 1                        ; 5 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.dk = zext i16 %i.di to i32
  %i.dl = add nsw i32 %i.dk, -1                   ; 2 uses
  %i.dm = sext i32 %i.dl to i64                   ; 6 uses
  %i.dn = zext i16 %i.di to i64                   ; 6 uses
  %i.do = trunc i32 %i.dl to i16                  ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cy, i64 58 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cw, i64 58 ; 2 uses
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !49
  %i.ds = add i16 %i.dr, 2
  store i16 %i.ds, ptr %i.dq, align 2, !tbaa !49
  %i.dt = load ptr, ptr %i.dj, align 8, !tbaa !53 ; 2 uses
  %i.du = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.dm
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.dn
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %i.dx = load i32, ptr %i.du, align 2
  store i32 %i.dx, ptr %i.dw, align 2
  %i.dy = load ptr, ptr %i.dj, align 8, !tbaa !53 ; 2 uses
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.dm ; 2 uses
  store i16 %i.ag, ptr %i.dz, align 2, !tbaa !85
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 2
  store i16 %i.cu, ptr %i.ea, align 2, !tbaa !87
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.dn ; 2 uses
  store i16 %i.bw, ptr %i.eb, align 2, !tbaa !85
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 2
  store i16 %i.cu, ptr %i.ec, align 2, !tbaa !87
  store i16 %i.do, ptr %i.cz, align 4, !tbaa !49
  store i16 %i.di, ptr %i.dp, align 2, !tbaa !49
  %i.ed = load ptr, ptr %i.cv, align 8, !tbaa !43
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 60 ; 2 uses
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !49
  %i.eg = add i16 %i.ef, 2
  store i16 %i.eg, ptr %i.ee, align 2, !tbaa !49
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !53 ; 2 uses
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.dm
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.dn
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  %i.em = load i32, ptr %i.ej, align 2
  store i32 %i.em, ptr %i.el, align 2
  %i.en = load ptr, ptr %i.eh, align 8, !tbaa !53 ; 2 uses
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.en, i64 %i.dm ; 2 uses
  store i16 %i.aq, ptr %i.eo, align 2, !tbaa !85
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 2
  store i16 %i.cu, ptr %i.ep, align 2, !tbaa !87
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.dn ; 2 uses
  store i16 %i.ch, ptr %i.eq, align 2, !tbaa !85
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 2
  store i16 %i.cu, ptr %i.er, align 2, !tbaa !87
  %i.es = getelementptr inbounds nuw i8, ptr %i.cy, i64 54
  store i16 %i.do, ptr %i.es, align 2, !tbaa !49
  %i.et = getelementptr inbounds nuw i8, ptr %i.cy, i64 60
  store i16 %i.di, ptr %i.et, align 4, !tbaa !49
  %i.eu = load ptr, ptr %i.cv, align 8, !tbaa !43
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 62 ; 2 uses
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !49
  %i.ex = add i16 %i.ew, 2
  store i16 %i.ex, ptr %i.ev, align 2, !tbaa !49
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !53 ; 2 uses
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %i.dm
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %i.dn
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  %i.fd = load i32, ptr %i.fa, align 2
  store i32 %i.fd, ptr %i.fc, align 2
  %i.fe = load ptr, ptr %i.ey, align 8, !tbaa !53 ; 2 uses
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.fe, i64 %i.dm ; 2 uses
  store i16 %i.ba, ptr %i.ff, align 2, !tbaa !85
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 2
  store i16 %i.cu, ptr %i.fg, align 2, !tbaa !87
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.dn ; 2 uses
  store i16 %i.cs, ptr %i.fh, align 2, !tbaa !85
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 2
  store i16 %i.cu, ptr %i.fi, align 2, !tbaa !87
  %i.fj = getelementptr inbounds nuw i8, ptr %i.cy, i64 56
  store i16 %i.do, ptr %i.fj, align 8, !tbaa !49
  %i.fk = getelementptr inbounds nuw i8, ptr %i.cy, i64 62
  store i16 %i.di, ptr %i.fk, align 2, !tbaa !49
  %i.fl = load i16, ptr %i.cz, align 4, !tbaa !49
  %i.fm = load ptr, ptr %i.dj, align 8, !tbaa !53 ; 2 uses
  %i.fn = zext i16 %i.fl to i64
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.fn ; 4 uses
  %.03136.i = getelementptr inbounds i8, ptr %i.fo, i64 -4 ; 2 uses
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !85
  %i.fq = load i16, ptr %.03136.i, align 2, !tbaa !85 ; 2 uses
  %i.fr = icmp ult i16 %i.fp, %i.fq
  br i1 %i.fr, label %.lr.ph.i, label %_ZN20btAxisSweep3InternalItE11sortMinDownEitP12btDispatcherb.exit

.lr.ph.i:                                         ; preds = %_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit49
  %i.fs = load ptr, ptr %i.cv, align 8, !tbaa !43
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 2
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !87
  %i.fv = zext i16 %i.fu to i64
  %i.fw = getelementptr inbounds nuw [72 x i8], ptr %i.fs, i64 %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 52 ; 2 uses
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i, %.lr.ph.i
  %i.fy = phi i16 [ %i.go, %.lr.ph.split.i ], [ %i.fq, %.lr.ph.i ]
  %.03139.i = phi ptr [ %.031.i, %.lr.ph.split.i ], [ %.03136.i, %.lr.ph.i ] ; 3 uses
  %.038.i = phi ptr [ %i.gm, %.lr.ph.split.i ], [ %i.fo, %.lr.ph.i ] ; 4 uses
  %i.fz = getelementptr inbounds i8, ptr %.038.i, i64 -2
  %i.ga = load i16, ptr %i.fz, align 2, !tbaa !87
  %i.gb = load ptr, ptr %i.cv, align 8, !tbaa !43
  %i.gc = zext i16 %i.ga to i64
  %i.gd = getelementptr inbounds nuw [72 x i8], ptr %i.gb, i64 %i.gc
  %i.ge = and i16 %i.fy, 1
  %.not.i = icmp eq i16 %i.ge, 0
  %..i = select i1 %.not.i, i64 52, i64 58
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 %..i ; 2 uses
  %i.gg = load i16, ptr %i.gf, align 2, !tbaa !49
  %i.gh = add i16 %i.gg, 1
  store i16 %i.gh, ptr %i.gf, align 2, !tbaa !49
  %i.gi = load i16, ptr %i.fx, align 2, !tbaa !49
  %i.gj = add i16 %i.gi, -1
  store i16 %i.gj, ptr %i.fx, align 2, !tbaa !49
  %i.gk = load i32, ptr %.038.i, align 2
  %i.gl = load i32, ptr %.03139.i, align 2
  store i32 %i.gl, ptr %.038.i, align 2
  store i32 %i.gk, ptr %.03139.i, align 2
  %i.gm = getelementptr inbounds i8, ptr %.038.i, i64 -4 ; 2 uses
  %.031.i = getelementptr inbounds i8, ptr %.03139.i, i64 -4 ; 2 uses
  %i.gn = load i16, ptr %i.gm, align 2, !tbaa !85
  %i.go = load i16, ptr %.031.i, align 2, !tbaa !85 ; 2 uses
  %i.gp = icmp ult i16 %i.gn, %i.go
  br i1 %i.gp, label %.lr.ph.split.i, label %_ZN20btAxisSweep3InternalItE11sortMinDownEitP12btDispatcherb.exit.loopexit, !llvm.loop !115

_ZN20btAxisSweep3InternalItE11sortMinDownEitP12btDispatcherb.exit.loopexit: ; preds = %.lr.ph.split.i
  %.pre = load ptr, ptr %i.dj, align 8, !tbaa !53
  br label %_ZN20btAxisSweep3InternalItE11sortMinDownEitP12btDispatcherb.exit

_ZN20btAxisSweep3InternalItE11sortMinDownEitP12btDispatcherb.exit: ; preds = %_ZN20btAxisSweep3InternalItE11sortMinDownEitP12btDispatcherb.exit.loopexit, %_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit49
  %i.gq = phi ptr [ %.pre, %_ZN20btAxisSweep3InternalItE11sortMinDownEitP12btDispatcherb.exit.loopexit ], [ %i.fm, %_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit49 ]
  %i.gr = load i16, ptr %i.dp, align 2, !tbaa !49
  %i.gs = zext i16 %i.gr to i64
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.gs ; 4 uses
  %.03540.i = getelementptr inbounds i8, ptr %i.gt, i64 -4 ; 2 uses
  %i.gu = load i16, ptr %i.gt, align 2, !tbaa !85
  %i.gv = load i16, ptr %.03540.i, align 2, !tbaa !85 ; 2 uses
  %i.gw = icmp ult i16 %i.gu, %i.gv
  br i1 %i.gw, label %.lr.ph.i50, label %_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb.exit

.lr.ph.i50:                                       ; preds = %_ZN20btAxisSweep3InternalItE11sortMinDownEitP12btDispatcherb.exit
  %i.gx = load ptr, ptr %i.cv, align 8, !tbaa !43
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gt, i64 2
  %i.gz = load i16, ptr %i.gy, align 2, !tbaa !87
  %i.ha = zext i16 %i.gz to i64
  %i.hb = getelementptr inbounds nuw [72 x i8], ptr %i.gx, i64 %i.ha
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 58 ; 2 uses
  br label %.lr.ph.split.i51

.lr.ph.split.i51:                                 ; preds = %.lr.ph.split.i51, %.lr.ph.i50
  %i.hd = phi i16 [ %i.ht, %.lr.ph.split.i51 ], [ %i.gv, %.lr.ph.i50 ]
  %.03543.i = phi ptr [ %.035.i, %.lr.ph.split.i51 ], [ %.03540.i, %.lr.ph.i50 ] ; 3 uses
  %.042.i = phi ptr [ %i.hr, %.lr.ph.split.i51 ], [ %i.gt, %.lr.ph.i50 ] ; 4 uses
  %i.he = getelementptr inbounds i8, ptr %.042.i, i64 -2
  %i.hf = load i16, ptr %i.he, align 2, !tbaa !87
  %i.hg = load ptr, ptr %i.cv, align 8, !tbaa !43
  %i.hh = zext i16 %i.hf to i64
  %i.hi = getelementptr inbounds nuw [72 x i8], ptr %i.hg, i64 %i.hh
  %i.hj = and i16 %i.hd, 1
  %.not.i52 = icmp eq i16 %i.hj, 0
  %..i53 = select i1 %.not.i52, i64 52, i64 58
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 %..i53 ; 2 uses
  %i.hl = load i16, ptr %i.hk, align 2, !tbaa !49
  %i.hm = add i16 %i.hl, 1
  store i16 %i.hm, ptr %i.hk, align 2, !tbaa !49
  %i.hn = load i16, ptr %i.hc, align 2, !tbaa !49
  %i.ho = add i16 %i.hn, -1
  store i16 %i.ho, ptr %i.hc, align 2, !tbaa !49
  %i.hp = load i32, ptr %.042.i, align 2
  %i.hq = load i32, ptr %.03543.i, align 2
  store i32 %i.hq, ptr %.042.i, align 2
  store i32 %i.hp, ptr %.03543.i, align 2
  %i.hr = getelementptr inbounds i8, ptr %.042.i, i64 -4 ; 2 uses
  %.035.i = getelementptr inbounds i8, ptr %.03543.i, i64 -4 ; 2 uses
  %i.hs = load i16, ptr %i.hr, align 2, !tbaa !85
  %i.ht = load i16, ptr %.035.i, align 2, !tbaa !85 ; 2 uses
  %i.hu = icmp ult i16 %i.hs, %i.ht
  br i1 %i.hu, label %.lr.ph.split.i51, label %_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb.exit, !llvm.loop !116

_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb.exit: ; preds = %.lr.ph.split.i51, %_ZN20btAxisSweep3InternalItE11sortMinDownEitP12btDispatcherb.exit
  %i.hv = getelementptr inbounds nuw i8, ptr %i.cy, i64 54
  %i.hw = load i16, ptr %i.hv, align 2, !tbaa !49
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !53 ; 2 uses
  %i.hz = zext i16 %i.hw to i64
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %i.hz ; 4 uses
  %.03136.i54 = getelementptr inbounds i8, ptr %i.ia, i64 -4 ; 2 uses
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !85
  %i.ic = load i16, ptr %.03136.i54, align 2, !tbaa !85 ; 2 uses
  %i.id = icmp ult i16 %i.ib, %i.ic
  br i1 %i.id, label %.lr.ph.i55, label %_ZN20btAxisSweep3InternalItE11sortMinDownEitP12btDispatcherb.exit62

.lr.ph.i55:                                       ; preds = %_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb.exit
  %i.ie = load ptr, ptr %i.cv, align 8, !tbaa !43
  %i.if = getelementptr inbounds nuw i8, ptr %i.ia, i64 2
  %i.ig = load i16, ptr %i.if, align 2, !tbaa !87
  %i.ih = zext i16 %i.ig to i64
  %i.ii = getelementptr inbounds nuw [72 x i8], ptr %i.ie, i64 %i.ih
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 54 ; 2 uses
  br label %.lr.ph.split.i56

.lr.ph.split.i56:                                 ; preds = %.lr.ph.split.i56, %.lr.ph.i55
  %i.ik = phi i16 [ %i.jb, %.lr.ph.split.i56 ], [ %i.ic, %.lr.ph.i55 ]
  %.03139.i57 = phi ptr [ %.031.i61, %.lr.ph.split.i56 ], [ %.03136.i54, %.lr.ph.i55 ] ; 3 uses
  %.038.i58 = phi ptr [ %i.iz, %.lr.ph.split.i56 ], [ %i.ia, %.lr.ph.i55 ] ; 4 uses
  %i.il = getelementptr inbounds i8, ptr %.038.i58, i64 -2
  %i.im = load i16, ptr %i.il, align 2, !tbaa !87
  %i.in = load ptr, ptr %i.cv, align 8, !tbaa !43
  %i.io = zext i16 %i.im to i64
  %i.ip = getelementptr inbounds nuw [72 x i8], ptr %i.in, i64 %i.io
  %i.iq = and i16 %i.ik, 1
  %.not.i59 = icmp eq i16 %i.iq, 0
  %i.ir = select i1 %.not.i59, i64 54, i64 60
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.ir ; 2 uses
  %i.it = load i16, ptr %i.is, align 2, !tbaa !49
  %i.iu = add i16 %i.it, 1
  store i16 %i.iu, ptr %i.is, align 2, !tbaa !49
  %i.iv = load i16, ptr %i.ij, align 2, !tbaa !49
  %i.iw = add i16 %i.iv, -1
  store i16 %i.iw, ptr %i.ij, align 2, !tbaa !49
  %i.ix = load i32, ptr %.038.i58, align 2
  %i.iy = load i32, ptr %.03139.i57, align 2
  store i32 %i.iy, ptr %.038.i58, align 2
  store i32 %i.ix, ptr %.03139.i57, align 2
  %i.iz = getelementptr inbounds i8, ptr %.038.i58, i64 -4 ; 2 uses
  %.031.i61 = getelementptr inbounds i8, ptr %.03139.i57, i64 -4 ; 2 uses
  %i.ja = load i16, ptr %i.iz, align 2, !tbaa !85
  %i.jb = load i16, ptr %.031.i61, align 2, !tbaa !85 ; 2 uses
  %i.jc = icmp ult i16 %i.ja, %i.jb
  br i1 %i.jc, label %.lr.ph.split.i56, label %_ZN20btAxisSweep3InternalItE11sortMinDownEitP12btDispatcherb.exit62.loopexit, !llvm.loop !115

_ZN20btAxisSweep3InternalItE11sortMinDownEitP12btDispatcherb.exit62.loopexit: ; preds = %.lr.ph.split.i56
  %.pre77 = load ptr, ptr %i.hx, align 8, !tbaa !53
  br label %_ZN20btAxisSweep3InternalItE11sortMinDownEitP12btDispatcherb.exit62

_ZN20btAxisSweep3InternalItE11sortMinDownEitP12btDispatcherb.exit62: ; preds = %_ZN20btAxisSweep3InternalItE11sortMinDownEitP12btDispatcherb.exit62.loopexit, %_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb.exit
  %i.jd = phi ptr [ %.pre77, %_ZN20btAxisSweep3InternalItE11sortMinDownEitP12btDispatcherb.exit62.loopexit ], [ %i.hy, %_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb.exit ]
  %i.je = getelementptr inbounds nuw i8, ptr %i.cy, i64 60
  %i.jf = load i16, ptr %i.je, align 4, !tbaa !49
  %i.jg = zext i16 %i.jf to i64
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %i.jg ; 4 uses
  %.03540.i63 = getelementptr inbounds i8, ptr %i.jh, i64 -4 ; 2 uses
  %i.ji = load i16, ptr %i.jh, align 2, !tbaa !85
  %i.jj = load i16, ptr %.03540.i63, align 2, !tbaa !85 ; 2 uses
  %i.jk = icmp ult i16 %i.ji, %i.jj
  br i1 %i.jk, label %.lr.ph.i64, label %_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb.exit71

.lr.ph.i64:                                       ; preds = %_ZN20btAxisSweep3InternalItE11sortMinDownEitP12btDispatcherb.exit62
  %i.jl = load ptr, ptr %i.cv, align 8, !tbaa !43
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jh, i64 2
  %i.jn = load i16, ptr %i.jm, align 2, !tbaa !87
  %i.jo = zext i16 %i.jn to i64
  %i.jp = getelementptr inbounds nuw [72 x i8], ptr %i.jl, i64 %i.jo
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 60 ; 2 uses
  br label %.lr.ph.split.i65

.lr.ph.split.i65:                                 ; preds = %.lr.ph.split.i65, %.lr.ph.i64
  %i.jr = phi i16 [ %i.ki, %.lr.ph.split.i65 ], [ %i.jj, %.lr.ph.i64 ]
  %.03543.i66 = phi ptr [ %.035.i70, %.lr.ph.split.i65 ], [ %.03540.i63, %.lr.ph.i64 ] ; 3 uses
  %.042.i67 = phi ptr [ %i.kg, %.lr.ph.split.i65 ], [ %i.jh, %.lr.ph.i64 ] ; 4 uses
  %i.js = getelementptr inbounds i8, ptr %.042.i67, i64 -2
  %i.jt = load i16, ptr %i.js, align 2, !tbaa !87
  %i.ju = load ptr, ptr %i.cv, align 8, !tbaa !43
  %i.jv = zext i16 %i.jt to i64
  %i.jw = getelementptr inbounds nuw [72 x i8], ptr %i.ju, i64 %i.jv
  %i.jx = and i16 %i.jr, 1
  %.not.i68 = icmp eq i16 %i.jx, 0
  %i.jy = select i1 %.not.i68, i64 54, i64 60
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 %i.jy ; 2 uses
  %i.ka = load i16, ptr %i.jz, align 2, !tbaa !49
  %i.kb = add i16 %i.ka, 1
  store i16 %i.kb, ptr %i.jz, align 2, !tbaa !49
  %i.kc = load i16, ptr %i.jq, align 2, !tbaa !49
  %i.kd = add i16 %i.kc, -1
  store i16 %i.kd, ptr %i.jq, align 2, !tbaa !49
  %i.ke = load i32, ptr %.042.i67, align 2
  %i.kf = load i32, ptr %.03543.i66, align 2
  store i32 %i.kf, ptr %.042.i67, align 2
  store i32 %i.ke, ptr %.03543.i66, align 2
  %i.kg = getelementptr inbounds i8, ptr %.042.i67, i64 -4 ; 2 uses
  %.035.i70 = getelementptr inbounds i8, ptr %.03543.i66, i64 -4 ; 2 uses
  %i.kh = load i16, ptr %i.kg, align 2, !tbaa !85
  %i.ki = load i16, ptr %.035.i70, align 2, !tbaa !85 ; 2 uses
  %i.kj = icmp ult i16 %i.kh, %i.ki
  br i1 %i.kj, label %.lr.ph.split.i65, label %_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb.exit71, !llvm.loop !116

_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb.exit71: ; preds = %.lr.ph.split.i65, %_ZN20btAxisSweep3InternalItE11sortMinDownEitP12btDispatcherb.exit62
  %7 = getelementptr inbounds nuw i8, ptr %i.cy, i64 56
  %8 = load i16, ptr %7, align 8, !tbaa !49
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %10 = load ptr, ptr %9, align 8, !tbaa !53
  %11 = zext i16 %8 to i64
  %12 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %11 ; 4 uses
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 2
  %14 = load i16, ptr %13, align 2, !tbaa !87
  %15 = load ptr, ptr %i.cv, align 8, !tbaa !43
  %16 = zext i16 %14 to i64
  %17 = getelementptr inbounds nuw [72 x i8], ptr %15, i64 %16 ; 7 uses
  %.03136.i72 = getelementptr inbounds i8, ptr %12, i64 -4 ; 2 uses
  %18 = load i16, ptr %12, align 2, !tbaa !85
  %19 = load i16, ptr %.03136.i72, align 2, !tbaa !85 ; 2 uses
  %20 = icmp ult i16 %18, %19
  br i1 %20, label %.lr.ph.i73, label %_ZN20btAxisSweep3InternalItE11sortMinDownEitP12btDispatcherb.exit74

.lr.ph.i73:                                       ; preds = %_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb.exit71
  %21 = getelementptr inbounds nuw i8, ptr %17, i64 58
  %22 = getelementptr inbounds nuw i8, ptr %17, i64 52
  %23 = getelementptr inbounds nuw i8, ptr %17, i64 60
  %24 = getelementptr inbounds nuw i8, ptr %17, i64 54
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %27 = getelementptr inbounds nuw i8, ptr %17, i64 56 ; 2 uses
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb.exit71.a, %.lr.ph.i73
  %28 = phi i16 [ %i.kn, %_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb.exit71.a ], [ %19, %.lr.ph.i73 ]
  %.03139.us.i = phi ptr [ %i.km, %_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb.exit71.a ], [ %.03136.i72, %.lr.ph.i73 ] ; 3 uses
  %.038.us.i = phi ptr [ %71, %_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb.exit71.a ], [ %12, %.lr.ph.i73 ] ; 4 uses
  %29 = getelementptr inbounds i8, ptr %.038.us.i, i64 -2
  %30 = load i16, ptr %29, align 2, !tbaa !87
  %31 = load ptr, ptr %i.cv, align 8, !tbaa !43
  %32 = zext i16 %30 to i64
  %33 = getelementptr inbounds nuw [72 x i8], ptr %31, i64 %32 ; 7 uses
  %34 = and i16 %28, 1
  %.not.us.i = icmp eq i16 %34, 0
  br i1 %.not.us.i, label %_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb.exit71.a, label %35

35:                                               ; preds = %.lr.ph.split.us.i
  %36 = load i16, ptr %21, align 2, !tbaa !49
  %37 = getelementptr inbounds nuw i8, ptr %33, i64 52
  %38 = load i16, ptr %37, align 2, !tbaa !49
  %39 = icmp ult i16 %36, %38
  br i1 %39, label %_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb.exit71.a, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds nuw i8, ptr %33, i64 58
  %42 = load i16, ptr %41, align 2, !tbaa !49
  %43 = load i16, ptr %22, align 2, !tbaa !49
  %44 = icmp ult i16 %42, %43
  br i1 %44, label %_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb.exit71.a, label %45

45:                                               ; preds = %40
  %46 = load i16, ptr %23, align 2, !tbaa !49
  %47 = getelementptr inbounds nuw i8, ptr %33, i64 54
  %48 = load i16, ptr %47, align 2, !tbaa !49
  %49 = icmp ult i16 %46, %48
  br i1 %49, label %_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb.exit71.a, label %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us.i

_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us.i: ; preds = %45
  %50 = getelementptr inbounds nuw i8, ptr %33, i64 60
  %51 = load i16, ptr %50, align 2, !tbaa !49
  %52 = load i16, ptr %24, align 2, !tbaa !49
  %.not35.us.i = icmp ult i16 %51, %52
  br i1 %.not35.us.i, label %_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb.exit71.a, label %53

53:                                               ; preds = %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us.i
  %54 = load ptr, ptr %25, align 8, !tbaa !23     ; 2 uses
  %55 = load ptr, ptr %54, align 8, !tbaa !9
  %56 = getelementptr inbounds nuw i8, ptr %55, i64 16
  %57 = load ptr, ptr %56, align 8
  %58 = tail call noundef ptr %57(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef nonnull %17, ptr noundef nonnull %33), !inline_history !117 ; 0 uses
  %59 = load ptr, ptr %26, align 8, !tbaa !24     ; 3 uses
  %.not33.us.i = icmp eq ptr %59, null
  br i1 %.not33.us.i, label %_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb.exit71.a, label %60

60:                                               ; preds = %53
  %61 = load ptr, ptr %59, align 8, !tbaa !9
  %62 = getelementptr inbounds nuw i8, ptr %61, i64 16
  %63 = load ptr, ptr %62, align 8
  %64 = tail call noundef ptr %63(ptr noundef nonnull align 8 dereferenceable(8) %59, ptr noundef nonnull %17, ptr noundef nonnull %33), !inline_history !117 ; 0 uses
  br label %_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb.exit71.a

_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb.exit71.a: ; preds = %60, %53, %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us.i, %45, %40, %35, %.lr.ph.split.us.i
  %.sink.i = phi i64 [ 58, %35 ], [ 58, %60 ], [ 58, %53 ], [ 58, %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us.i ], [ 58, %45 ], [ 58, %40 ], [ 52, %.lr.ph.split.us.i ]
  %65 = getelementptr inbounds nuw i8, ptr %33, i64 %.sink.i
  %i.kk = getelementptr inbounds nuw i8, ptr %65, i64 4 ; 2 uses
  %66 = load i16, ptr %i.kk, align 2, !tbaa !49
  %67 = add i16 %66, 1
  store i16 %67, ptr %i.kk, align 2, !tbaa !49
  %i.kl = load i16, ptr %27, align 2, !tbaa !49
  %68 = add i16 %i.kl, -1
  store i16 %68, ptr %27, align 2, !tbaa !49
  %69 = load i32, ptr %.038.us.i, align 2
  %70 = load i32, ptr %.03139.us.i, align 2
  store i32 %70, ptr %.038.us.i, align 2
  store i32 %69, ptr %.03139.us.i, align 2
  %71 = getelementptr inbounds i8, ptr %.038.us.i, i64 -4 ; 2 uses
  %i.km = getelementptr inbounds i8, ptr %.03139.us.i, i64 -4 ; 2 uses
  %72 = load i16, ptr %71, align 2, !tbaa !85
  %i.kn = load i16, ptr %i.km, align 2, !tbaa !85 ; 2 uses
  %73 = icmp ult i16 %72, %i.kn
  br i1 %73, label %.lr.ph.split.us.i, label %_ZN20btAxisSweep3InternalItE11sortMinDownEitP12btDispatcherb.exit74, !llvm.loop !115

_ZN20btAxisSweep3InternalItE11sortMinDownEitP12btDispatcherb.exit74: ; preds = %_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb.exit71.a, %_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb.exit71
  %74 = getelementptr inbounds nuw i8, ptr %i.cy, i64 62
  %75 = load i16, ptr %74, align 2, !tbaa !49
  tail call void @_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef 2, i16 noundef zeroext %75, ptr noundef %6, i1 noundef zeroext true)
  ret i16 %i.cu
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN20btAxisSweep3InternalItE11sortMinDownEitP12btDispatcherb(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef %1, i16 noundef zeroext %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = sext i32 %1 to i64                       ; 4 uses
  %i.c = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.e = zext i16 %2 to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.e ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.h = load i16, ptr %i.g, align 2, !tbaa !87
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.k = zext i16 %i.h to i64
  %i.l = getelementptr inbounds nuw [72 x i8], ptr %i.j, i64 %i.k ; 4 uses
  %.03136 = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 3 uses
  %i.m = load i16, ptr %i.f, align 2, !tbaa !85
  %i.n = load i16, ptr %.03136, align 2, !tbaa !85 ; 3 uses
  %i.o = icmp ult i16 %i.m, %i.n
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.p = shl nuw i32 1, %1
  %i.q = and i32 %i.p, 3                          ; 2 uses
  %i.r = shl nuw nsw i32 1, %i.q
  %i.s = and i32 %i.r, 3
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 58 ; 2 uses
  %i.u = zext nneg i32 %i.q to i64                ; 4 uses
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 52 ; 3 uses
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
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !87
  %i.ah = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.ai = zext i16 %i.ag to i64
  %i.aj = getelementptr inbounds nuw [72 x i8], ptr %i.ah, i64 %i.ai ; 5 uses
  %i.ak = and i16 %i.ae, 1
  %.not.us = icmp eq i16 %i.ak, 0
  br i1 %.not.us, label %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.al = load i16, ptr %i.v, align 2, !tbaa !49
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 52 ; 2 uses
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.u
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !49
  %i.ap = icmp ult i16 %i.al, %i.ao
  br i1 %i.ap, label %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 58 ; 2 uses
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %i.u
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !49
  %i.at = load i16, ptr %i.x, align 2, !tbaa !49
  %i.au = icmp ult i16 %i.as, %i.at
  br i1 %i.au, label %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.av = load i16, ptr %i.z, align 2, !tbaa !49
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.y
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !49
  %i.ay = icmp ult i16 %i.av, %i.ax
  br i1 %i.ay, label %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us

_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us: ; preds = %bb.d
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %i.y
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !49
  %i.bb = load i16, ptr %i.aa, align 2, !tbaa !49
  %.not35.us = icmp ult i16 %i.ba, %i.bb
  br i1 %.not35.us, label %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %bb.e

bb.e:                                             ; preds = %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us
  %i.bc = load ptr, ptr %i.ab, align 8, !tbaa !23 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !9
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = tail call noundef ptr %i.bf(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull %i.l, ptr noundef nonnull %i.aj) ; 0 uses
  %i.bh = load ptr, ptr %i.ac, align 8, !tbaa !24 ; 3 uses
  %.not33.us = icmp eq ptr %i.bh, null
  br i1 %.not33.us, label %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !9
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = tail call noundef ptr %i.bk(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull %i.l, ptr noundef nonnull %i.aj) ; 0 uses
  br label %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us

_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us: ; preds = %.lr.ph.split.us, %bb.b, %bb.c, %bb.d, %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us, %bb.e, %bb.f
  %.sink = phi i64 [ 58, %bb.b ], [ 58, %bb.f ], [ 58, %bb.e ], [ 58, %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us ], [ 58, %bb.d ], [ 58, %bb.c ], [ 52, %.lr.ph.split.us ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.sink
  %i.bn = getelementptr inbounds [2 x i8], ptr %i.bm, i64 %i.b ; 2 uses
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !49
  %i.bp = add i16 %i.bo, 1
  store i16 %i.bp, ptr %i.bn, align 2, !tbaa !49
  %i.bq = load i16, ptr %i.ad, align 2, !tbaa !49
  %i.br = add i16 %i.bq, -1
  store i16 %i.br, ptr %i.ad, align 2, !tbaa !49
  %i.bs = load i32, ptr %.038.us, align 2
  %i.bt = load i32, ptr %.03139.us, align 2
  store i32 %i.bt, ptr %.038.us, align 2
  store i32 %i.bs, ptr %.03139.us, align 2
  %i.bu = getelementptr inbounds i8, ptr %.038.us, i64 -4 ; 2 uses
  %.031.us = getelementptr inbounds i8, ptr %.03139.us, i64 -4 ; 2 uses
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !85
  %i.bw = load i16, ptr %.031.us, align 2, !tbaa !85 ; 2 uses
  %i.bx = icmp ult i16 %i.bv, %i.bw
  br i1 %i.bx, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !115

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %i.by = phi i16 [ %i.cp, %.lr.ph.split ], [ %i.n, %.lr.ph ]
  %.03139 = phi ptr [ %.031, %.lr.ph.split ], [ %.03136, %.lr.ph ] ; 3 uses
  %.038 = phi ptr [ %i.cn, %.lr.ph.split ], [ %i.f, %.lr.ph ] ; 4 uses
  %i.bz = getelementptr inbounds i8, ptr %.038, i64 -2
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !87
  %i.cb = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.cc = zext i16 %i.ca to i64
  %i.cd = getelementptr inbounds nuw [72 x i8], ptr %i.cb, i64 %i.cc
  %i.ce = and i16 %i.by, 1
  %.not = icmp eq i16 %i.ce, 0
  %. = select i1 %.not, i64 52, i64 58
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.
  %i.cg = getelementptr inbounds [2 x i8], ptr %i.cf, i64 %i.b ; 2 uses
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !49
  %i.ci = add i16 %i.ch, 1
  store i16 %i.ci, ptr %i.cg, align 2, !tbaa !49
  %i.cj = load i16, ptr %i.ad, align 2, !tbaa !49
  %i.ck = add i16 %i.cj, -1
  store i16 %i.ck, ptr %i.ad, align 2, !tbaa !49
  %i.cl = load i32, ptr %.038, align 2
  %i.cm = load i32, ptr %.03139, align 2
  store i32 %i.cm, ptr %.038, align 2
  store i32 %i.cl, ptr %.03139, align 2
  %i.cn = getelementptr inbounds i8, ptr %.038, i64 -4 ; 2 uses
  %.031 = getelementptr inbounds i8, ptr %.03139, i64 -4 ; 2 uses
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !85
  %i.cp = load i16, ptr %.031, align 2, !tbaa !85 ; 2 uses
  %i.cq = icmp ult i16 %i.co, %i.cp
  br i1 %i.cq, label %.lr.ph.split, label %._crit_edge, !llvm.loop !115

._crit_edge:                                      ; preds = %.lr.ph.split, %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef %1, i16 noundef zeroext %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = sext i32 %1 to i64                       ; 4 uses
  %i.c = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.e = zext i16 %2 to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.e ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %.03540 = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 3 uses
  %i.h = load i16, ptr %i.f, align 2, !tbaa !85
  %i.i = load i16, ptr %.03540, align 2, !tbaa !85 ; 3 uses
  %i.j = icmp ult i16 %i.h, %i.i
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.m = load i16, ptr %i.l, align 2, !tbaa !87
  %i.n = zext i16 %i.m to i64
  %i.o = getelementptr inbounds nuw [72 x i8], ptr %i.k, i64 %i.n
  %i.p = shl nuw i32 1, %1
  %i.q = and i32 %i.p, 3                          ; 2 uses
  %i.r = shl nuw nsw i32 1, %i.q
  %i.s = and i32 %i.r, 3
  %i.t = zext nneg i32 %i.q to i64                ; 4 uses
  %i.u = zext nneg i32 %i.s to i64                ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 58
  %i.y = getelementptr inbounds [2 x i8], ptr %i.x, i64 %i.b ; 4 uses
  br i1 %4, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us
  %i.z = phi i16 [ %i.cb, %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us ], [ %i.i, %.lr.ph ]
  %.03543.us = phi ptr [ %.035.us, %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us ], [ %.03540, %.lr.ph ] ; 3 uses
  %.042.us = phi ptr [ %i.bz, %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us ], [ %i.f, %.lr.ph ] ; 5 uses
  %i.aa = getelementptr inbounds i8, ptr %.042.us, i64 -2
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !87
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !43  ; 2 uses
  %i.ad = zext i16 %i.ab to i64
end_hunk_0
begin_hunk_1_@_ZN20btAxisSweep3InternalItE11sortMaxDownEitP12btDispatcherb:bb.a
  %i.aj = zext i16 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [72 x i8], ptr %i.ac, i64 %i.aj ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 58 ; 2 uses
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %i.t
  %i.an = load i16, ptr %i.am, align 2, !tbaa !49
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 52 ; 8 uses
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %i.t
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !49
  %i.ar = icmp ult i16 %i.an, %i.aq
  br i1 %i.ar, label %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 58 ; 2 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.t
  %i.au = load i16, ptr %i.at, align 2, !tbaa !49
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 52 ; 2 uses
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %i.t
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !49
  %i.ay = icmp ult i16 %i.au, %i.ax
  br i1 %i.ay, label %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %i.u
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !49
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %i.u
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !49
  %i.bd = icmp ult i16 %i.ba, %i.bc
  br i1 %i.bd, label %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us

_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us: ; preds = %bb.e
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.u
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !49
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %i.u
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !49
  %.not39.us = icmp ult i16 %i.bf, %i.bh
  br i1 %.not39.us, label %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %bb.f

bb.f:                                             ; preds = %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us
  %i.bi = load ptr, ptr %i.v, align 8, !tbaa !23  ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !9
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = tail call noundef ptr %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.ae, ptr noundef %3) ; 0 uses
  %i.bn = load ptr, ptr %i.w, align 8, !tbaa !24  ; 3 uses
  %.not37.us = icmp eq ptr %i.bn, null
  br i1 %.not37.us, label %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !9
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = tail call noundef ptr %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.ae, ptr noundef %3) ; 0 uses
  br label %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us

_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us: ; preds = %bb.c, %bb.d, %bb.e, %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us, %bb.f, %bb.g, %bb.b
  %.sink51 = phi ptr [ %i.ag, %bb.b ], [ %i.ao, %bb.g ], [ %i.ao, %bb.f ], [ %i.ao, %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us ], [ %i.ao, %bb.e ], [ %i.ao, %bb.d ], [ %i.ao, %bb.c ]
  %i.bs = getelementptr inbounds [2 x i8], ptr %.sink51, i64 %i.b ; 2 uses
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !49
  %i.bu = add i16 %i.bt, 1
  store i16 %i.bu, ptr %i.bs, align 2, !tbaa !49
  %i.bv = load i16, ptr %i.y, align 2, !tbaa !49
  %i.bw = add i16 %i.bv, -1
  store i16 %i.bw, ptr %i.y, align 2, !tbaa !49
  %i.bx = load i32, ptr %.042.us, align 2
  %i.by = load i32, ptr %.03543.us, align 2
  store i32 %i.by, ptr %.042.us, align 2
  store i32 %i.bx, ptr %.03543.us, align 2
  %i.bz = getelementptr inbounds i8, ptr %.042.us, i64 -4 ; 2 uses
  %.035.us = getelementptr inbounds i8, ptr %.03543.us, i64 -4 ; 2 uses
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !85
  %i.cb = load i16, ptr %.035.us, align 2, !tbaa !85 ; 2 uses
  %i.cc = icmp ult i16 %i.ca, %i.cb
  br i1 %i.cc, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !116

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %i.cd = phi i16 [ %i.cu, %.lr.ph.split ], [ %i.i, %.lr.ph ]
  %.03543 = phi ptr [ %.035, %.lr.ph.split ], [ %.03540, %.lr.ph ] ; 3 uses
  %.042 = phi ptr [ %i.cs, %.lr.ph.split ], [ %i.f, %.lr.ph ] ; 4 uses
  %i.ce = getelementptr inbounds i8, ptr %.042, i64 -2
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !87
  %i.cg = load ptr, ptr %i.g, align 8, !tbaa !43
  %i.ch = zext i16 %i.cf to i64
  %i.ci = getelementptr inbounds nuw [72 x i8], ptr %i.cg, i64 %i.ch
  %i.cj = and i16 %i.cd, 1
  %.not = icmp eq i16 %i.cj, 0
  %. = select i1 %.not, i64 52, i64 58
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.
  %i.cl = getelementptr inbounds [2 x i8], ptr %i.ck, i64 %i.b ; 2 uses
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !49
  %i.cn = add i16 %i.cm, 1
  store i16 %i.cn, ptr %i.cl, align 2, !tbaa !49
  %i.co = load i16, ptr %i.y, align 2, !tbaa !49
  %i.cp = add i16 %i.co, -1
  store i16 %i.cp, ptr %i.y, align 2, !tbaa !49
  %i.cq = load i32, ptr %.042, align 2
  %i.cr = load i32, ptr %.03543, align 2
  store i32 %i.cr, ptr %.042, align 2
  store i32 %i.cq, ptr %.03543, align 2
  %i.cs = getelementptr inbounds i8, ptr %.042, i64 -4 ; 2 uses
  %.035 = getelementptr inbounds i8, ptr %.03543, i64 -4 ; 2 uses
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !85
  %i.cu = load i16, ptr %.035, align 2, !tbaa !85 ; 2 uses
  %i.cv = icmp ult i16 %i.ct, %i.cu
  br i1 %i.cv, label %.lr.ph.split, label %._crit_edge, !llvm.loop !116

._crit_edge:                                      ; preds = %.lr.ph.split, %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN20btAxisSweep3InternalItE12removeHandleEtP12btDispatcher(ptr noundef nonnull align 8 dereferenceable(168) %0, i16 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 14 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = zext i16 %1 to i64                       ; 2 uses
  %i.d = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %i.c ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23   ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  br i1 %i.j, label %.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !23   ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef %i.d, ptr noundef %2)
  br label %.preheader

.preheader:                                       ; preds = %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.p = load i16, ptr %i.o, align 4, !tbaa !45
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !43   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 58 ; 2 uses
  %i.s = load <2 x i16>, ptr %i.r, align 2, !tbaa !49
  %i.t = add <2 x i16> %i.s, splat (i16 -2)
  store <2 x i16> %i.t, ptr %i.r, align 2, !tbaa !49
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 62 ; 2 uses
  %i.v = load i16, ptr %i.u, align 2, !tbaa !49
  %i.w = add i16 %i.v, -2
  store i16 %i.w, ptr %i.u, align 2, !tbaa !49
  %i.x = zext i16 %i.p to i64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 58
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %.idx = shl nuw nsw i64 %i.x, 3                 ; 3 uses
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !53  ; 4 uses
  %i.ad = load i16, ptr %i.z, align 2, !tbaa !49
  %i.ae = load i16, ptr %i.aa, align 2, !tbaa !22 ; 3 uses
  %i.af = zext i16 %i.ad to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.af ; 4 uses
  store i16 %i.ae, ptr %i.ag, align 2, !tbaa !85
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 6
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !87 ; 2 uses
  %.not43.i = icmp eq i16 %i.ai, 0
  br i1 %.not43.i, label %_ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !87
  %i.al = zext i16 %i.ak to i64
  %i.am = getelementptr inbounds nuw [72 x i8], ptr %i.q, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 58 ; 2 uses
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %bb.c, %.lr.ph.i
  %i.ao = phi i16 [ %i.bd, %bb.c ], [ %i.ae, %.lr.ph.i ]
  %i.ap = phi i16 [ %i.bc, %bb.c ], [ %i.ai, %.lr.ph.i ]
  %.03445.i.pn = phi ptr [ %.03445.i, %bb.c ], [ %i.ag, %.lr.ph.i ] ; 4 uses
  %.03445.i = getelementptr i8, ptr %.03445.i.pn, i64 4 ; 4 uses
  %i.aq = load i16, ptr %.03445.i, align 2, !tbaa !85 ; 2 uses
  %.not37.i = icmp ult i16 %i.ao, %i.aq
  %.pre48.pre49.pre53.pre57.pre61.pre.pre68 = load ptr, ptr %i.a, align 8, !tbaa !43 ; 2 uses
  br i1 %.not37.i, label %_ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb.exit.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.i
  %i.ar = zext i16 %i.ap to i64
  %i.as = getelementptr inbounds nuw [72 x i8], ptr %.pre48.pre49.pre53.pre57.pre61.pre.pre68, i64 %i.ar
  %i.at = and i16 %i.aq, 1
  %.not38.i = icmp eq i16 %i.at, 0
  %..i = select i1 %.not38.i, i64 52, i64 58
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %..i ; 2 uses
  %i.av = load i16, ptr %i.au, align 2, !tbaa !49
  %i.aw = add i16 %i.av, -1
  store i16 %i.aw, ptr %i.au, align 2, !tbaa !49
  %i.ax = load i16, ptr %i.an, align 2, !tbaa !49
  %i.ay = add i16 %i.ax, 1
  store i16 %i.ay, ptr %i.an, align 2, !tbaa !49
  %i.az = load i32, ptr %.03445.i.pn, align 2     ; 2 uses
  %i.ba = load i32, ptr %.03445.i, align 2
  store i32 %i.ba, ptr %.03445.i.pn, align 2
  store i32 %i.az, ptr %.03445.i, align 2
  %i.bb = getelementptr inbounds nuw i8, ptr %.03445.i.pn, i64 10
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !87 ; 2 uses
  %.not.i = icmp eq i16 %i.bc, 0
  %i.bd = trunc i32 %i.az to i16
  br i1 %.not.i, label %._ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb.exit.loopexit_crit_edge, label %.lr.ph.split.i, !llvm.loop !118

._ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb.exit.loopexit_crit_edge: ; preds = %bb.c
  %.pre48.pre49.pre53.pre57.pre61.pre.pre = load ptr, ptr %i.a, align 8, !tbaa !43
  br label %_ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb.exit.loopexit, !llvm.loop !118

_ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb.exit.loopexit: ; preds = %.lr.ph.split.i, %._ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb.exit.loopexit_crit_edge
  %.pre48.pre49.pre53.pre57.pre61.pre = phi ptr [ %.pre48.pre49.pre53.pre57.pre61.pre.pre, %._ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb.exit.loopexit_crit_edge ], [ %.pre48.pre49.pre53.pre57.pre61.pre.pre68, %.lr.ph.split.i ]
  %.pre = load i16, ptr %i.aa, align 2, !tbaa !22
  %.pre36 = load ptr, ptr %i.y, align 8, !tbaa !53
  br label %_ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb.exit

_ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb.exit: ; preds = %_ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb.exit.loopexit, %.preheader
  %.pre48.pre49.pre53.pre57.pre61 = phi ptr [ %.pre48.pre49.pre53.pre57.pre61.pre, %_ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb.exit.loopexit ], [ %i.q, %.preheader ] ; 2 uses
  %i.be = phi ptr [ %.pre36, %_ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb.exit.loopexit ], [ %i.ac, %.preheader ]
  %i.bf = phi i16 [ %.pre, %_ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb.exit.loopexit ], [ %i.ae, %.preheader ] ; 2 uses
  %i.bg = load i16, ptr %i.ab, align 2, !tbaa !49
  %i.bh = zext i16 %i.bg to i64                   ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.bh
  store i16 %i.bf, ptr %i.bi, align 2, !tbaa !85
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bh ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 6
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !87 ; 2 uses
  %.not45.i = icmp eq i16 %i.bl, 0
  br i1 %.not45.i, label %_ZN20btAxisSweep3InternalItE9sortMinUpEitP12btDispatcherb.exit, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %_ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !87
  %i.bo = zext i16 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [72 x i8], ptr %.pre48.pre49.pre53.pre57.pre61, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 52 ; 2 uses
  %.pre37 = load i16, ptr %i.bj, align 2, !tbaa !85
  br label %.lr.ph.split.i29

.lr.ph.split.i29:                                 ; preds = %bb.d, %.lr.ph.i28
  %i.br = phi i16 [ %i.cg, %bb.d ], [ %.pre37, %.lr.ph.i28 ]
  %i.bs = phi i16 [ %i.cf, %bb.d ], [ %i.bl, %.lr.ph.i28 ]
  %.03647.i.pn = phi ptr [ %.03647.i, %bb.d ], [ %i.bj, %.lr.ph.i28 ] ; 4 uses
  %.03647.i = getelementptr i8, ptr %.03647.i.pn, i64 4 ; 4 uses
  %i.bt = load i16, ptr %.03647.i, align 2, !tbaa !85 ; 2 uses
  %.not39.i = icmp ult i16 %i.br, %i.bt
  %.pre48.pre49.pre53.pre57.pre.pre66 = load ptr, ptr %i.a, align 8, !tbaa !43 ; 2 uses
  br i1 %.not39.i, label %_ZN20btAxisSweep3InternalItE9sortMinUpEitP12btDispatcherb.exit.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.i29
  %i.bu = zext i16 %i.bs to i64
  %i.bv = getelementptr inbounds nuw [72 x i8], ptr %.pre48.pre49.pre53.pre57.pre.pre66, i64 %i.bu
  %i.bw = and i16 %i.bt, 1
  %.not40.i = icmp eq i16 %i.bw, 0
  %..i30 = select i1 %.not40.i, i64 52, i64 58
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 %..i30 ; 2 uses
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !49
  %i.bz = add i16 %i.by, -1
  store i16 %i.bz, ptr %i.bx, align 2, !tbaa !49
  %i.ca = load i16, ptr %i.bq, align 2, !tbaa !49
  %i.cb = add i16 %i.ca, 1
  store i16 %i.cb, ptr %i.bq, align 2, !tbaa !49
  %i.cc = load i32, ptr %.03647.i.pn, align 2     ; 2 uses
  %i.cd = load i32, ptr %.03647.i, align 2
  store i32 %i.cd, ptr %.03647.i.pn, align 2
  store i32 %i.cc, ptr %.03647.i, align 2
  %i.ce = getelementptr inbounds nuw i8, ptr %.03647.i.pn, i64 10
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !87 ; 2 uses
  %.not.i31 = icmp eq i16 %i.cf, 0
  %i.cg = trunc i32 %i.cc to i16
  br i1 %.not.i31, label %._ZN20btAxisSweep3InternalItE9sortMinUpEitP12btDispatcherb.exit.loopexit_crit_edge, label %.lr.ph.split.i29, !llvm.loop !119

._ZN20btAxisSweep3InternalItE9sortMinUpEitP12btDispatcherb.exit.loopexit_crit_edge: ; preds = %bb.d
  %.pre48.pre49.pre53.pre57.pre.pre = load ptr, ptr %i.a, align 8, !tbaa !43
  br label %_ZN20btAxisSweep3InternalItE9sortMinUpEitP12btDispatcherb.exit.loopexit, !llvm.loop !119

_ZN20btAxisSweep3InternalItE9sortMinUpEitP12btDispatcherb.exit.loopexit: ; preds = %.lr.ph.split.i29, %._ZN20btAxisSweep3InternalItE9sortMinUpEitP12btDispatcherb.exit.loopexit_crit_edge
  %.pre48.pre49.pre53.pre57.pre = phi ptr [ %.pre48.pre49.pre53.pre57.pre.pre, %._ZN20btAxisSweep3InternalItE9sortMinUpEitP12btDispatcherb.exit.loopexit_crit_edge ], [ %.pre48.pre49.pre53.pre57.pre.pre66, %.lr.ph.split.i29 ]
  %.pre38 = load i16, ptr %i.aa, align 2, !tbaa !22
  br label %_ZN20btAxisSweep3InternalItE9sortMinUpEitP12btDispatcherb.exit

_ZN20btAxisSweep3InternalItE9sortMinUpEitP12btDispatcherb.exit: ; preds = %_ZN20btAxisSweep3InternalItE9sortMinUpEitP12btDispatcherb.exit.loopexit, %_ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb.exit
  %.pre48.pre49.pre53.pre57 = phi ptr [ %.pre48.pre49.pre53.pre57.pre, %_ZN20btAxisSweep3InternalItE9sortMinUpEitP12btDispatcherb.exit.loopexit ], [ %.pre48.pre49.pre53.pre57.pre61, %_ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb.exit ] ; 2 uses
  %i.ch = phi i16 [ %.pre38, %_ZN20btAxisSweep3InternalItE9sortMinUpEitP12btDispatcherb.exit.loopexit ], [ %i.bf, %_ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb.exit ] ; 4 uses
  %i.ci = getelementptr i8, ptr %i.ac, i64 %.idx  ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 -4
  %i.ck = getelementptr i8, ptr %i.ci, i64 -2
  store i16 0, ptr %i.ck, align 2, !tbaa !87
  store i16 %i.ch, ptr %i.cj, align 2, !tbaa !85
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !53 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !49
  %i.cp = zext i16 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.cp ; 4 uses
  store i16 %i.ch, ptr %i.cq, align 2, !tbaa !85
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 6
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !87 ; 2 uses
  %.not43.i.1 = icmp eq i16 %i.cs, 0
  br i1 %.not43.i.1, label %_ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb.exit.1, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %_ZN20btAxisSweep3InternalItE9sortMinUpEitP12btDispatcherb.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 2
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !87
  %i.cv = zext i16 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [72 x i8], ptr %.pre48.pre49.pre53.pre57, i64 %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 60 ; 2 uses
  br label %.lr.ph.split.i.1

.lr.ph.split.i.1:                                 ; preds = %bb.e, %.lr.ph.i.1
  %i.cy = phi i16 [ %i.do, %bb.e ], [ %i.ch, %.lr.ph.i.1 ]
  %i.cz = phi i16 [ %i.dn, %bb.e ], [ %i.cs, %.lr.ph.i.1 ]
  %.03445.i.pn.1 = phi ptr [ %.03445.i.1, %bb.e ], [ %i.cq, %.lr.ph.i.1 ] ; 4 uses
  %.03445.i.1 = getelementptr i8, ptr %.03445.i.pn.1, i64 4 ; 4 uses
  %i.da = load i16, ptr %.03445.i.1, align 2, !tbaa !85 ; 2 uses
  %.not37.i.1 = icmp ult i16 %i.cy, %i.da
  %.pre48.pre49.pre53.pre.pre63 = load ptr, ptr %i.a, align 8, !tbaa !43 ; 2 uses
  br i1 %.not37.i.1, label %_ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb.exit.loopexit.1, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.i.1
  %i.db = zext i16 %i.cz to i64
  %i.dc = getelementptr inbounds nuw [72 x i8], ptr %.pre48.pre49.pre53.pre.pre63, i64 %i.db
  %i.dd = and i16 %i.da, 1
  %.not38.i.1 = icmp eq i16 %i.dd, 0
  %i.de = select i1 %.not38.i.1, i64 54, i64 60
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.de ; 2 uses
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !49
  %i.dh = add i16 %i.dg, -1
  store i16 %i.dh, ptr %i.df, align 2, !tbaa !49
  %i.di = load i16, ptr %i.cx, align 2, !tbaa !49
  %i.dj = add i16 %i.di, 1
  store i16 %i.dj, ptr %i.cx, align 2, !tbaa !49
  %i.dk = load i32, ptr %.03445.i.pn.1, align 2   ; 2 uses
  %i.dl = load i32, ptr %.03445.i.1, align 2
  store i32 %i.dl, ptr %.03445.i.pn.1, align 2
  store i32 %i.dk, ptr %.03445.i.1, align 2
  %i.dm = getelementptr inbounds nuw i8, ptr %.03445.i.pn.1, i64 10
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !87 ; 2 uses
  %.not.i.1 = icmp eq i16 %i.dn, 0
  %i.do = trunc i32 %i.dk to i16
  br i1 %.not.i.1, label %._ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb.exit.loopexit.1_crit_edge, label %.lr.ph.split.i.1, !llvm.loop !118

._ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb.exit.loopexit.1_crit_edge: ; preds = %bb.e
  %.pre48.pre49.pre53.pre.pre = load ptr, ptr %i.a, align 8, !tbaa !43
  br label %_ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb.exit.loopexit.1, !llvm.loop !118

_ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb.exit.loopexit.1: ; preds = %.lr.ph.split.i.1, %._ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb.exit.loopexit.1_crit_edge
  %.pre48.pre49.pre53.pre = phi ptr [ %.pre48.pre49.pre53.pre.pre, %._ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb.exit.loopexit.1_crit_edge ], [ %.pre48.pre49.pre53.pre.pre63, %.lr.ph.split.i.1 ]
  %.pre39 = load i16, ptr %i.aa, align 2, !tbaa !22
  %.pre40 = load ptr, ptr %i.cl, align 8, !tbaa !53
  br label %_ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb.exit.1

_ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb.exit.1: ; preds = %_ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb.exit.loopexit.1, %_ZN20btAxisSweep3InternalItE9sortMinUpEitP12btDispatcherb.exit
  %.pre48.pre49.pre53 = phi ptr [ %.pre48.pre49.pre53.pre, %_ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb.exit.loopexit.1 ], [ %.pre48.pre49.pre53.pre57, %_ZN20btAxisSweep3InternalItE9sortMinUpEitP12btDispatcherb.exit ] ; 2 uses
  %i.dp = phi ptr [ %.pre40, %_ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb.exit.loopexit.1 ], [ %i.cm, %_ZN20btAxisSweep3InternalItE9sortMinUpEitP12btDispatcherb.exit ]
  %i.dq = phi i16 [ %.pre39, %_ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb.exit.loopexit.1 ], [ %i.ch, %_ZN20btAxisSweep3InternalItE9sortMinUpEitP12btDispatcherb.exit ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.d, i64 54
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !49
  %i.dt = zext i16 %i.ds to i64                   ; 2 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.dt
  store i16 %i.dq, ptr %i.du, align 2, !tbaa !85
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.dt ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 6
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !87 ; 2 uses
  %.not45.i.1 = icmp eq i16 %i.dx, 0
  br i1 %.not45.i.1, label %_ZN20btAxisSweep3InternalItE9sortMinUpEitP12btDispatcherb.exit.1, label %.lr.ph.i28.1

.lr.ph.i28.1:                                     ; preds = %_ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb.exit.1
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 2
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !87
  %i.ea = zext i16 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [72 x i8], ptr %.pre48.pre49.pre53, i64 %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 54 ; 2 uses
  %.pre41 = load i16, ptr %i.dv, align 2, !tbaa !85
  br label %.lr.ph.split.i29.1

.lr.ph.split.i29.1:                               ; preds = %bb.f, %.lr.ph.i28.1
  %i.ed = phi i16 [ %i.et, %bb.f ], [ %.pre41, %.lr.ph.i28.1 ]
  %i.ee = phi i16 [ %i.es, %bb.f ], [ %i.dx, %.lr.ph.i28.1 ]
  %.03647.i.pn.1 = phi ptr [ %.03647.i.1, %bb.f ], [ %i.dv, %.lr.ph.i28.1 ] ; 4 uses
  %.03647.i.1 = getelementptr i8, ptr %.03647.i.pn.1, i64 4 ; 4 uses
  %i.ef = load i16, ptr %.03647.i.1, align 2, !tbaa !85 ; 2 uses
  %.not39.i.1 = icmp ult i16 %i.ed, %i.ef
  %.pre48.pre49.pre.pre59 = load ptr, ptr %i.a, align 8, !tbaa !43 ; 2 uses
  br i1 %.not39.i.1, label %_ZN20btAxisSweep3InternalItE9sortMinUpEitP12btDispatcherb.exit.loopexit.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.i29.1
  %i.eg = zext i16 %i.ee to i64
  %i.eh = getelementptr inbounds nuw [72 x i8], ptr %.pre48.pre49.pre.pre59, i64 %i.eg
  %i.ei = and i16 %i.ef, 1
  %.not40.i.1 = icmp eq i16 %i.ei, 0
  %i.ej = select i1 %.not40.i.1, i64 54, i64 60
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ej ; 2 uses
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !49
  %i.em = add i16 %i.el, -1
  store i16 %i.em, ptr %i.ek, align 2, !tbaa !49
  %i.en = load i16, ptr %i.ec, align 2, !tbaa !49
  %i.eo = add i16 %i.en, 1
  store i16 %i.eo, ptr %i.ec, align 2, !tbaa !49
  %i.ep = load i32, ptr %.03647.i.pn.1, align 2   ; 2 uses
  %i.eq = load i32, ptr %.03647.i.1, align 2
  store i32 %i.eq, ptr %.03647.i.pn.1, align 2
  store i32 %i.ep, ptr %.03647.i.1, align 2
  %i.er = getelementptr inbounds nuw i8, ptr %.03647.i.pn.1, i64 10
  %i.es = load i16, ptr %i.er, align 2, !tbaa !87 ; 2 uses
  %.not.i31.1 = icmp eq i16 %i.es, 0
  %i.et = trunc i32 %i.ep to i16
  br i1 %.not.i31.1, label %._ZN20btAxisSweep3InternalItE9sortMinUpEitP12btDispatcherb.exit.loopexit.1_crit_edge, label %.lr.ph.split.i29.1, !llvm.loop !119

._ZN20btAxisSweep3InternalItE9sortMinUpEitP12btDispatcherb.exit.loopexit.1_crit_edge: ; preds = %bb.f
  %.pre48.pre49.pre.pre = load ptr, ptr %i.a, align 8, !tbaa !43
  br label %_ZN20btAxisSweep3InternalItE9sortMinUpEitP12btDispatcherb.exit.loopexit.1, !llvm.loop !119

_ZN20btAxisSweep3InternalItE9sortMinUpEitP12btDispatcherb.exit.loopexit.1: ; preds = %.lr.ph.split.i29.1, %._ZN20btAxisSweep3InternalItE9sortMinUpEitP12btDispatcherb.exit.loopexit.1_crit_edge
  %.pre48.pre49.pre = phi ptr [ %.pre48.pre49.pre.pre, %._ZN20btAxisSweep3InternalItE9sortMinUpEitP12btDispatcherb.exit.loopexit.1_crit_edge ], [ %.pre48.pre49.pre.pre59, %.lr.ph.split.i29.1 ]
  %.pre42 = load i16, ptr %i.aa, align 2, !tbaa !22
  br label %_ZN20btAxisSweep3InternalItE9sortMinUpEitP12btDispatcherb.exit.1

_ZN20btAxisSweep3InternalItE9sortMinUpEitP12btDispatcherb.exit.1: ; preds = %_ZN20btAxisSweep3InternalItE9sortMinUpEitP12btDispatcherb.exit.loopexit.1, %_ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb.exit.1
  %.pre48.pre49 = phi ptr [ %.pre48.pre49.pre, %_ZN20btAxisSweep3InternalItE9sortMinUpEitP12btDispatcherb.exit.loopexit.1 ], [ %.pre48.pre49.pre53, %_ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb.exit.1 ] ; 2 uses
  %i.eu = phi i16 [ %.pre42, %_ZN20btAxisSweep3InternalItE9sortMinUpEitP12btDispatcherb.exit.loopexit.1 ], [ %i.dq, %_ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb.exit.1 ] ; 4 uses
  %i.ev = getelementptr i8, ptr %i.cm, i64 %.idx  ; 2 uses
  %i.ew = getelementptr i8, ptr %i.ev, i64 -4
  %i.ex = getelementptr i8, ptr %i.ev, i64 -2
  store i16 0, ptr %i.ex, align 2, !tbaa !87
  store i16 %i.eu, ptr %i.ew, align 2, !tbaa !85
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !53 ; 4 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.d, i64 62
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !49
  %i.fc = zext i16 %i.fb to i64
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %i.fc ; 4 uses
  store i16 %i.eu, ptr %i.fd, align 2, !tbaa !85
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 6
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !87 ; 2 uses
  %.not43.i.2 = icmp eq i16 %i.ff, 0
  br i1 %.not43.i.2, label %_ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb.exit.2, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %_ZN20btAxisSweep3InternalItE9sortMinUpEitP12btDispatcherb.exit.1
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 2
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !87
  %i.fi = zext i16 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [72 x i8], ptr %.pre48.pre49, i64 %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 62 ; 2 uses
  br label %.lr.ph.split.i.2

.lr.ph.split.i.2:                                 ; preds = %bb.g, %.lr.ph.i.2
  %i.fl = phi i16 [ %i.gb, %bb.g ], [ %i.eu, %.lr.ph.i.2 ]
  %i.fm = phi i16 [ %i.ga, %bb.g ], [ %i.ff, %.lr.ph.i.2 ]
  %.03445.i.pn.2 = phi ptr [ %.03445.i.2, %bb.g ], [ %i.fd, %.lr.ph.i.2 ] ; 4 uses
  %.03445.i.2 = getelementptr i8, ptr %.03445.i.pn.2, i64 4 ; 4 uses
  %i.fn = load i16, ptr %.03445.i.2, align 2, !tbaa !85 ; 2 uses
  %.not37.i.2 = icmp ult i16 %i.fl, %i.fn
  %.pre48.pre.pre55 = load ptr, ptr %i.a, align 8, !tbaa !43 ; 2 uses
  br i1 %.not37.i.2, label %_ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb.exit.loopexit.2, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.i.2
  %i.fo = zext i16 %i.fm to i64
  %i.fp = getelementptr inbounds nuw [72 x i8], ptr %.pre48.pre.pre55, i64 %i.fo
  %i.fq = and i16 %i.fn, 1
  %.not38.i.2 = icmp eq i16 %i.fq, 0
  %i.fr = select i1 %.not38.i.2, i64 56, i64 62
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fr ; 2 uses
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !49
  %i.fu = add i16 %i.ft, -1
  store i16 %i.fu, ptr %i.fs, align 2, !tbaa !49
  %i.fv = load i16, ptr %i.fk, align 2, !tbaa !49
  %i.fw = add i16 %i.fv, 1
  store i16 %i.fw, ptr %i.fk, align 2, !tbaa !49
  %i.fx = load i32, ptr %.03445.i.pn.2, align 2   ; 2 uses
  %i.fy = load i32, ptr %.03445.i.2, align 2
  store i32 %i.fy, ptr %.03445.i.pn.2, align 2
  store i32 %i.fx, ptr %.03445.i.2, align 2
  %i.fz = getelementptr inbounds nuw i8, ptr %.03445.i.pn.2, i64 10
  %i.ga = load i16, ptr %i.fz, align 2, !tbaa !87 ; 2 uses
  %.not.i.2 = icmp eq i16 %i.ga, 0
  %i.gb = trunc i32 %i.fx to i16
  br i1 %.not.i.2, label %._ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb.exit.loopexit.2_crit_edge, label %.lr.ph.split.i.2, !llvm.loop !118

._ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb.exit.loopexit.2_crit_edge: ; preds = %bb.g
  %.pre48.pre.pre = load ptr, ptr %i.a, align 8, !tbaa !43
  br label %_ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb.exit.loopexit.2, !llvm.loop !118

_ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb.exit.loopexit.2: ; preds = %.lr.ph.split.i.2, %._ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb.exit.loopexit.2_crit_edge
  %.pre48.pre = phi ptr [ %.pre48.pre.pre, %._ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb.exit.loopexit.2_crit_edge ], [ %.pre48.pre.pre55, %.lr.ph.split.i.2 ]
  %.pre43 = load i16, ptr %i.aa, align 2, !tbaa !22
  %.pre44 = load ptr, ptr %i.ey, align 8, !tbaa !53
  br label %_ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb.exit.2

_ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb.exit.2: ; preds = %_ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb.exit.loopexit.2, %_ZN20btAxisSweep3InternalItE9sortMinUpEitP12btDispatcherb.exit.1
  %.pre48 = phi ptr [ %.pre48.pre, %_ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb.exit.loopexit.2 ], [ %.pre48.pre49, %_ZN20btAxisSweep3InternalItE9sortMinUpEitP12btDispatcherb.exit.1 ] ; 2 uses
  %i.gc = phi ptr [ %.pre44, %_ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb.exit.loopexit.2 ], [ %i.ez, %_ZN20btAxisSweep3InternalItE9sortMinUpEitP12btDispatcherb.exit.1 ]
  %i.gd = phi i16 [ %.pre43, %_ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb.exit.loopexit.2 ], [ %i.eu, %_ZN20btAxisSweep3InternalItE9sortMinUpEitP12btDispatcherb.exit.1 ] ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.gf = load i16, ptr %i.ge, align 2, !tbaa !49
  %i.gg = zext i16 %i.gf to i64                   ; 2 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %i.gg
  store i16 %i.gd, ptr %i.gh, align 2, !tbaa !85
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %i.gg ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 6
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !87 ; 2 uses
  %.not45.i.2 = icmp eq i16 %i.gk, 0
  br i1 %.not45.i.2, label %_ZN20btAxisSweep3InternalItE9sortMinUpEitP12btDispatcherb.exit.2, label %.lr.ph.i28.2

.lr.ph.i28.2:                                     ; preds = %_ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb.exit.2
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 2
  %i.gm = load i16, ptr %i.gl, align 2, !tbaa !87
  %i.gn = zext i16 %i.gm to i64
  %i.go = getelementptr inbounds nuw [72 x i8], ptr %.pre48, i64 %i.gn
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 56 ; 2 uses
  %.pre45 = load i16, ptr %i.gi, align 2, !tbaa !85
  br label %.lr.ph.split.i29.2

.lr.ph.split.i29.2:                               ; preds = %bb.h, %.lr.ph.i28.2
  %i.gq = phi i16 [ %i.hg, %bb.h ], [ %.pre45, %.lr.ph.i28.2 ]
  %i.gr = phi i16 [ %i.hf, %bb.h ], [ %i.gk, %.lr.ph.i28.2 ]
  %.03647.i.pn.2 = phi ptr [ %.03647.i.2, %bb.h ], [ %i.gi, %.lr.ph.i28.2 ] ; 4 uses
  %.03647.i.2 = getelementptr i8, ptr %.03647.i.pn.2, i64 4 ; 4 uses
  %i.gs = load i16, ptr %.03647.i.2, align 2, !tbaa !85 ; 2 uses
  %.not39.i.2 = icmp ult i16 %i.gq, %i.gs
  %.pre47.pre51 = load ptr, ptr %i.a, align 8, !tbaa !43 ; 2 uses
  br i1 %.not39.i.2, label %_ZN20btAxisSweep3InternalItE9sortMinUpEitP12btDispatcherb.exit.loopexit.2, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.i29.2
  %i.gt = zext i16 %i.gr to i64
  %i.gu = getelementptr inbounds nuw [72 x i8], ptr %.pre47.pre51, i64 %i.gt
  %i.gv = and i16 %i.gs, 1
  %.not40.i.2 = icmp eq i16 %i.gv, 0
  %i.gw = select i1 %.not40.i.2, i64 56, i64 62
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.gw ; 2 uses
  %i.gy = load i16, ptr %i.gx, align 2, !tbaa !49
  %i.gz = add i16 %i.gy, -1
  store i16 %i.gz, ptr %i.gx, align 2, !tbaa !49
  %i.ha = load i16, ptr %i.gp, align 2, !tbaa !49
  %i.hb = add i16 %i.ha, 1
  store i16 %i.hb, ptr %i.gp, align 2, !tbaa !49
  %i.hc = load i32, ptr %.03647.i.pn.2, align 2   ; 2 uses
  %i.hd = load i32, ptr %.03647.i.2, align 2
  store i32 %i.hd, ptr %.03647.i.pn.2, align 2
  store i32 %i.hc, ptr %.03647.i.2, align 2
  %i.he = getelementptr inbounds nuw i8, ptr %.03647.i.pn.2, i64 10
  %i.hf = load i16, ptr %i.he, align 2, !tbaa !87 ; 2 uses
  %.not.i31.2 = icmp eq i16 %i.hf, 0
  %i.hg = trunc i32 %i.hc to i16
  br i1 %.not.i31.2, label %._ZN20btAxisSweep3InternalItE9sortMinUpEitP12btDispatcherb.exit.loopexit.2_crit_edge, label %.lr.ph.split.i29.2, !llvm.loop !119

._ZN20btAxisSweep3InternalItE9sortMinUpEitP12btDispatcherb.exit.loopexit.2_crit_edge: ; preds = %bb.h
  %.pre47.pre = load ptr, ptr %i.a, align 8, !tbaa !43
  br label %_ZN20btAxisSweep3InternalItE9sortMinUpEitP12btDispatcherb.exit.loopexit.2, !llvm.loop !119

_ZN20btAxisSweep3InternalItE9sortMinUpEitP12btDispatcherb.exit.loopexit.2: ; preds = %.lr.ph.split.i29.2, %._ZN20btAxisSweep3InternalItE9sortMinUpEitP12btDispatcherb.exit.loopexit.2_crit_edge
  %.pre47 = phi ptr [ %.pre47.pre, %._ZN20btAxisSweep3InternalItE9sortMinUpEitP12btDispatcherb.exit.loopexit.2_crit_edge ], [ %.pre47.pre51, %.lr.ph.split.i29.2 ]
  %.pre46 = load i16, ptr %i.aa, align 2, !tbaa !22
  br label %_ZN20btAxisSweep3InternalItE9sortMinUpEitP12btDispatcherb.exit.2

_ZN20btAxisSweep3InternalItE9sortMinUpEitP12btDispatcherb.exit.2: ; preds = %_ZN20btAxisSweep3InternalItE9sortMinUpEitP12btDispatcherb.exit.loopexit.2, %_ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb.exit.2
  %i.hh = phi ptr [ %.pre47, %_ZN20btAxisSweep3InternalItE9sortMinUpEitP12btDispatcherb.exit.loopexit.2 ], [ %.pre48, %_ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb.exit.2 ]
  %i.hi = phi i16 [ %.pre46, %_ZN20btAxisSweep3InternalItE9sortMinUpEitP12btDispatcherb.exit.loopexit.2 ], [ %i.gd, %_ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb.exit.2 ]
  %i.hj = getelementptr i8, ptr %i.ez, i64 %.idx  ; 2 uses
  %i.hk = getelementptr i8, ptr %i.hj, i64 -4
  %i.hl = getelementptr i8, ptr %i.hj, i64 -2
  store i16 0, ptr %i.hl, align 2, !tbaa !87
  store i16 %i.hi, ptr %i.hk, align 2, !tbaa !85
  %i.hm = getelementptr inbounds nuw [72 x i8], ptr %i.hh, i64 %i.c
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ho = load i16, ptr %i.hn, align 8, !tbaa !46
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 52
  store i16 %i.ho, ptr %i.hp, align 4, !tbaa !49
  store i16 %1, ptr %i.hn, align 8, !tbaa !46
  %i.hq = load i16, ptr %i.o, align 4, !tbaa !45
  %i.hr = add i16 %i.hq, -1
  store i16 %i.hr, ptr %i.o, align 4, !tbaa !45
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN20btAxisSweep3InternalItE9sortMaxUpEitP12btDispatcherb(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef %1, i16 noundef zeroext %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = sext i32 %1 to i64                       ; 4 uses
  %i.c = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.e = zext i16 %2 to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.e ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %i.i = load i16, ptr %i.h, align 2, !tbaa !87   ; 3 uses
  %.not43 = icmp eq i16 %i.i, 0
  br i1 %.not43, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.03442 = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.l = load i16, ptr %i.k, align 2, !tbaa !87
  %i.m = zext i16 %i.l to i64
  %i.n = getelementptr inbounds nuw [72 x i8], ptr %i.j, i64 %i.m ; 2 uses
  %i.o = shl nuw i32 1, %1
  %i.p = and i32 %i.o, 3                          ; 2 uses
  %i.q = shl nuw nsw i32 1, %i.p
  %i.r = and i32 %i.q, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 58 ; 3 uses
  %i.t = zext nneg i32 %i.p to i64                ; 4 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 52 ; 2 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.t
  %i.x = zext nneg i32 %i.r to i64                ; 4 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.x
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.s, i64 %i.b ; 4 uses
  br i1 %4, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us
  %i.ad = phi i16 [ %i.bz, %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us ], [ %i.i, %.lr.ph ]
  %.03445.us = phi ptr [ %.034.us, %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us ], [ %.03442, %.lr.ph ] ; 5 uses
  %.044.us = phi ptr [ %i.bx, %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us ], [ %i.f, %.lr.ph ] ; 5 uses
  %i.ae = load i16, ptr %.044.us, align 2, !tbaa !85
  %i.af = load i16, ptr %.03445.us, align 2, !tbaa !85 ; 2 uses
  %.not37.us = icmp ult i16 %i.ae, %i.af
  br i1 %.not37.us, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !43  ; 2 uses
  %i.ah = zext i16 %i.ad to i64
  %i.ai = getelementptr inbounds nuw [72 x i8], ptr %i.ag, i64 %i.ah ; 5 uses
  %i.aj = and i16 %i.af, 1
  %.not38.us = icmp eq i16 %i.aj, 0
  br i1 %.not38.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 58
  br label %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us

bb.d:                                             ; preds = %bb.b
  %i.al = load i16, ptr %i.u, align 2, !tbaa !49
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 52 ; 8 uses
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.t
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !49
  %i.ap = icmp ult i16 %i.al, %i.ao
  br i1 %i.ap, label %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 58 ; 2 uses
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %i.t
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !49
  %i.at = load i16, ptr %i.w, align 2, !tbaa !49
  %i.au = icmp ult i16 %i.as, %i.at
  br i1 %i.au, label %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = load i16, ptr %i.y, align 2, !tbaa !49
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.x
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !49
  %i.ay = icmp ult i16 %i.av, %i.ax
  br i1 %i.ay, label %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us

_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us: ; preds = %bb.f
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %i.x
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !49
  %i.bb = load i16, ptr %i.z, align 2, !tbaa !49
  %.not41.us = icmp ult i16 %i.ba, %i.bb
  br i1 %.not41.us, label %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %bb.g

bb.g:                                             ; preds = %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us
  %i.bc = getelementptr inbounds nuw i8, ptr %.044.us, i64 2
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !87
  %i.be = zext i16 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [72 x i8], ptr %i.ag, i64 %i.be ; 2 uses
  %i.bg = load ptr, ptr %i.aa, align 8, !tbaa !23 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !9
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = tail call noundef ptr %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef %i.bf, ptr noundef nonnull %i.ai) ; 0 uses
  %i.bl = load ptr, ptr %i.ab, align 8, !tbaa !24 ; 3 uses
  %.not39.us = icmp eq ptr %i.bl, null
  br i1 %.not39.us, label %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !9
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = tail call noundef ptr %i.bo(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.ai) ; 0 uses
  br label %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us

_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us: ; preds = %bb.d, %bb.e, %bb.f, %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us, %bb.g, %bb.h, %bb.c
  %.sink56 = phi ptr [ %i.ak, %bb.c ], [ %i.am, %bb.h ], [ %i.am, %bb.g ], [ %i.am, %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us ], [ %i.am, %bb.f ], [ %i.am, %bb.e ], [ %i.am, %bb.d ]
  %i.bq = getelementptr inbounds [2 x i8], ptr %.sink56, i64 %i.b ; 2 uses
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !49
  %i.bs = add i16 %i.br, -1
  store i16 %i.bs, ptr %i.bq, align 2, !tbaa !49
  %i.bt = load i16, ptr %i.ac, align 2, !tbaa !49
  %i.bu = add i16 %i.bt, 1
  store i16 %i.bu, ptr %i.ac, align 2, !tbaa !49
  %i.bv = load i32, ptr %.044.us, align 2
  %i.bw = load i32, ptr %.03445.us, align 2
  store i32 %i.bw, ptr %.044.us, align 2
  store i32 %i.bv, ptr %.03445.us, align 2
  %i.bx = getelementptr inbounds nuw i8, ptr %.044.us, i64 4
  %.034.us = getelementptr inbounds nuw i8, ptr %.03445.us, i64 4
  %i.by = getelementptr inbounds nuw i8, ptr %.03445.us, i64 6
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !87 ; 2 uses
  %.not.us = icmp eq i16 %i.bz, 0
  br i1 %.not.us, label %.critedge, label %.lr.ph.split.us, !llvm.loop !118

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.i
  %i.ca = phi i16 [ %i.cr, %bb.i ], [ %i.i, %.lr.ph ]
  %.03445 = phi ptr [ %.034, %bb.i ], [ %.03442, %.lr.ph ] ; 5 uses
  %.044 = phi ptr [ %i.cp, %bb.i ], [ %i.f, %.lr.ph ] ; 4 uses
  %i.cb = load i16, ptr %.044, align 2, !tbaa !85
  %i.cc = load i16, ptr %.03445, align 2, !tbaa !85 ; 2 uses
  %.not37 = icmp ult i16 %i.cb, %i.cc
  br i1 %.not37, label %.critedge, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split
  %i.cd = load ptr, ptr %i.g, align 8, !tbaa !43
  %i.ce = zext i16 %i.ca to i64
  %i.cf = getelementptr inbounds nuw [72 x i8], ptr %i.cd, i64 %i.ce
  %i.cg = and i16 %i.cc, 1
  %.not38 = icmp eq i16 %i.cg, 0
  %. = select i1 %.not38, i64 52, i64 58
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.
  %i.ci = getelementptr inbounds [2 x i8], ptr %i.ch, i64 %i.b ; 2 uses
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !49
  %i.ck = add i16 %i.cj, -1
  store i16 %i.ck, ptr %i.ci, align 2, !tbaa !49
  %i.cl = load i16, ptr %i.ac, align 2, !tbaa !49
  %i.cm = add i16 %i.cl, 1
  store i16 %i.cm, ptr %i.ac, align 2, !tbaa !49
  %i.cn = load i32, ptr %.044, align 2
  %i.co = load i32, ptr %.03445, align 2
  store i32 %i.co, ptr %.044, align 2
  store i32 %i.cn, ptr %.03445, align 2
  %i.cp = getelementptr inbounds nuw i8, ptr %.044, i64 4
  %.034 = getelementptr inbounds nuw i8, ptr %.03445, i64 4
  %i.cq = getelementptr inbounds nuw i8, ptr %.03445, i64 6
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !87 ; 2 uses
  %.not = icmp eq i16 %i.cr, 0
  br i1 %.not, label %.critedge, label %.lr.ph.split, !llvm.loop !118

.critedge:                                        ; preds = %.lr.ph.split, %bb.i, %.lr.ph.split.us, %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN20btAxisSweep3InternalItE9sortMinUpEitP12btDispatcherb(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef %1, i16 noundef zeroext %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = sext i32 %1 to i64                       ; 4 uses
  %i.c = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.e = zext i16 %2 to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.e ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %i.i = load i16, ptr %i.h, align 2, !tbaa !87   ; 3 uses
  %.not45 = icmp eq i16 %i.i, 0
  br i1 %.not45, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.03644 = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.l = load i16, ptr %i.k, align 2, !tbaa !87
  %i.m = zext i16 %i.l to i64
  %i.n = getelementptr inbounds nuw [72 x i8], ptr %i.j, i64 %i.m
  %i.o = shl nuw i32 1, %1
  %i.p = and i32 %i.o, 3                          ; 2 uses
  %i.q = shl nuw nsw i32 1, %i.p
  %i.r = and i32 %i.q, 3
  %i.s = zext nneg i32 %i.p to i64                ; 4 uses
  %i.t = zext nneg i32 %i.r to i64                ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 52
  %i.x = getelementptr inbounds [2 x i8], ptr %i.w, i64 %i.b ; 4 uses
  br i1 %4, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us
  %i.y = phi i16 [ %i.ca, %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us ], [ %i.i, %.lr.ph ]
  %.03647.us = phi ptr [ %.036.us, %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us ], [ %.03644, %.lr.ph ] ; 5 uses
  %.046.us = phi ptr [ %i.by, %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us ], [ %i.f, %.lr.ph ] ; 5 uses
  %i.z = load i16, ptr %.046.us, align 2, !tbaa !85
  %i.aa = load i16, ptr %.03647.us, align 2, !tbaa !85 ; 2 uses
  %.not39.us = icmp ult i16 %i.z, %i.aa
  br i1 %.not39.us, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !43  ; 2 uses
  %i.ac = zext i16 %i.y to i64
  %i.ad = getelementptr inbounds nuw [72 x i8], ptr %i.ab, i64 %i.ac ; 5 uses
  %i.ae = and i16 %i.aa, 1
  %.not40.us = icmp eq i16 %i.ae, 0
  br i1 %.not40.us, label %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %.046.us, i64 2
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !87
  %i.ah = zext i16 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [72 x i8], ptr %i.ab, i64 %i.ah ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 58 ; 2 uses
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.s
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !49
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 52 ; 2 uses
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.s
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !49
  %i.ap = icmp ult i16 %i.al, %i.ao
  br i1 %i.ap, label %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 58 ; 2 uses
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %i.s
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !49
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 52 ; 2 uses
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.s
  %i.av = load i16, ptr %i.au, align 2, !tbaa !49
  %i.aw = icmp ult i16 %i.as, %i.av
  br i1 %i.aw, label %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.t
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !49
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.t
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !49
  %i.bb = icmp ult i16 %i.ay, %i.ba
  br i1 %i.bb, label %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us

_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us: ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %i.t
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !49
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.t
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !49
  %.not43.us = icmp ult i16 %i.bd, %i.bf
  br i1 %.not43.us, label %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %bb.f

bb.f:                                             ; preds = %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !23  ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !9
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = tail call noundef ptr %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.ad, ptr noundef %3) ; 0 uses
  %i.bl = load ptr, ptr %i.v, align 8, !tbaa !24  ; 3 uses
  %.not41.us = icmp eq ptr %i.bl, null
  br i1 %.not41.us, label %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !9
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = tail call noundef ptr %i.bo(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.ad, ptr noundef %3) ; 0 uses
  br label %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us

_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us, %bb.f, %bb.g
  %.sink = phi i64 [ 58, %bb.c ], [ 58, %bb.g ], [ 58, %bb.f ], [ 58, %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us ], [ 58, %bb.e ], [ 58, %bb.d ], [ 52, %bb.b ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.sink
  %i.br = getelementptr inbounds [2 x i8], ptr %i.bq, i64 %i.b ; 2 uses
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !49
  %i.bt = add i16 %i.bs, -1
  store i16 %i.bt, ptr %i.br, align 2, !tbaa !49
  %i.bu = load i16, ptr %i.x, align 2, !tbaa !49
  %i.bv = add i16 %i.bu, 1
  store i16 %i.bv, ptr %i.x, align 2, !tbaa !49
  %i.bw = load i32, ptr %.046.us, align 2
  %i.bx = load i32, ptr %.03647.us, align 2
  store i32 %i.bx, ptr %.046.us, align 2
  store i32 %i.bw, ptr %.03647.us, align 2
  %i.by = getelementptr inbounds nuw i8, ptr %.046.us, i64 4
  %.036.us = getelementptr inbounds nuw i8, ptr %.03647.us, i64 4
  %i.bz = getelementptr inbounds nuw i8, ptr %.03647.us, i64 6
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !87 ; 2 uses
  %.not.us = icmp eq i16 %i.ca, 0
  br i1 %.not.us, label %.critedge, label %.lr.ph.split.us, !llvm.loop !119

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.h
  %i.cb = phi i16 [ %i.cs, %bb.h ], [ %i.i, %.lr.ph ]
  %.03647 = phi ptr [ %.036, %bb.h ], [ %.03644, %.lr.ph ] ; 5 uses
  %.046 = phi ptr [ %i.cq, %bb.h ], [ %i.f, %.lr.ph ] ; 4 uses
  %i.cc = load i16, ptr %.046, align 2, !tbaa !85
  %i.cd = load i16, ptr %.03647, align 2, !tbaa !85 ; 2 uses
  %.not39 = icmp ult i16 %i.cc, %i.cd
  br i1 %.not39, label %.critedge, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split
  %i.ce = load ptr, ptr %i.g, align 8, !tbaa !43
  %i.cf = zext i16 %i.cb to i64
  %i.cg = getelementptr inbounds nuw [72 x i8], ptr %i.ce, i64 %i.cf
  %i.ch = and i16 %i.cd, 1
  %.not40 = icmp eq i16 %i.ch, 0
  %. = select i1 %.not40, i64 52, i64 58
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.
  %i.cj = getelementptr inbounds [2 x i8], ptr %i.ci, i64 %i.b ; 2 uses
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !49
  %i.cl = add i16 %i.ck, -1
  store i16 %i.cl, ptr %i.cj, align 2, !tbaa !49
  %i.cm = load i16, ptr %i.x, align 2, !tbaa !49
  %i.cn = add i16 %i.cm, 1
  store i16 %i.cn, ptr %i.x, align 2, !tbaa !49
  %i.co = load i32, ptr %.046, align 2
  %i.cp = load i32, ptr %.03647, align 2
  store i32 %i.cp, ptr %.046, align 2
  store i32 %i.co, ptr %.03647, align 2
  %i.cq = getelementptr inbounds nuw i8, ptr %.046, i64 4
  %.036 = getelementptr inbounds nuw i8, ptr %.03647, i64 4
  %i.cr = getelementptr inbounds nuw i8, ptr %.03647, i64 6
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !87 ; 2 uses
  %.not = icmp eq i16 %i.cs, 0
  br i1 %.not, label %.critedge, label %.lr.ph.split, !llvm.loop !119

.critedge:                                        ; preds = %.lr.ph.split, %bb.h, %.lr.ph.split.us, %_ZN20btAxisSweep3InternalItE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN20btAxisSweep3InternalItE12updateHandleEtRK9btVector3S3_P12btDispatcher(ptr noundef nonnull align 8 dereferenceable(168) %0, i16 noundef zeroext %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = zext i16 %1 to i64
  %i.d = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %i.c ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load float, ptr %2, align 4, !tbaa !42
  %i.g = load float, ptr %i.e, align 4, !tbaa !42 ; 2 uses
  %i.h = fsub float %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.j = load float, ptr %i.i, align 4, !tbaa !42
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load float, ptr %i.k, align 8, !tbaa !42 ; 2 uses
  %i.m = fsub float %i.j, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load float, ptr %i.n, align 4, !tbaa !42
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.q = load float, ptr %i.p, align 4, !tbaa !42 ; 2 uses
  %i.r = fsub float %i.o, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.t = load float, ptr %i.s, align 4, !tbaa !42 ; 2 uses
  %i.u = fmul float %i.h, %i.t                    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load float, ptr %i.v, align 8, !tbaa !42 ; 2 uses
  %i.x = fmul float %i.m, %i.w                    ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.z = load float, ptr %i.y, align 4, !tbaa !42 ; 2 uses
  %i.aa = fmul float %i.r, %i.z                   ; 3 uses
  %i.ab = fcmp ugt float %i.u, 0.000000e+00
  br i1 %i.ab, label %.sink.split, label %bb.b

.sink.split:                                      ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !22 ; 2 uses
  %i.ae = uitofp i16 %i.ad to float
  %i.af = fcmp ult float %i.u, %i.ae
  %i.ag = fptoui float %i.u to i16
  %.sink48 = select i1 %i.af, i16 %i.ag, i16 %i.ad
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load i16, ptr %i.ah, align 8, !tbaa !11
  %i.aj = and i16 %i.ai, %.sink48
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  %i.ak = phi i16 [ 0, %bb.a ], [ %i.aj, %.sink.split ] ; 2 uses
  %i.al = fcmp ugt float %i.x, 0.000000e+00
  br i1 %i.al, label %.sink.split50, label %bb.c

.sink.split50:                                    ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.an = load i16, ptr %i.am, align 2, !tbaa !22 ; 2 uses
  %i.ao = uitofp i16 %i.an to float
  %i.ap = fcmp ult float %i.x, %i.ao
  %i.aq = fptoui float %i.x to i16
  %.sink51 = select i1 %i.ap, i16 %i.aq, i16 %i.an
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load i16, ptr %i.ar, align 8, !tbaa !11
  %i.at = and i16 %i.as, %.sink51
  br label %bb.c

bb.c:                                             ; preds = %.sink.split50, %bb.b
  %i.au = phi i16 [ 0, %bb.b ], [ %i.at, %.sink.split50 ] ; 2 uses
  %i.av = fcmp ugt float %i.aa, 0.000000e+00
  br i1 %i.av, label %_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit.sink.split, label %_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit

_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit.sink.split: ; preds = %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !22 ; 2 uses
  %i.ay = uitofp i16 %i.ax to float
  %i.az = fcmp ult float %i.aa, %i.ay
  %i.ba = fptoui float %i.aa to i16
  %.sink53 = select i1 %i.az, i16 %i.ba, i16 %i.ax
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = load i16, ptr %i.bb, align 8, !tbaa !11
  %i.bd = and i16 %i.bc, %.sink53
  br label %_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit

_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit: ; preds = %_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit.sink.split, %bb.c
  %i.be = phi i16 [ 0, %bb.c ], [ %i.bd, %_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit.sink.split ] ; 2 uses
  %i.bf = load float, ptr %3, align 4, !tbaa !42
  %i.bg = fsub float %i.bf, %i.g
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !42
  %i.bj = fsub float %i.bi, %i.l
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !42
  %i.bm = fsub float %i.bl, %i.q
  %i.bn = fmul float %i.t, %i.bg                  ; 3 uses
  %i.bo = fmul float %i.w, %i.bj                  ; 3 uses
  %i.bp = fmul float %i.z, %i.bm                  ; 3 uses
  %i.bq = fcmp ugt float %i.bn, 0.000000e+00
  br i1 %i.bq, label %.sink.split55, label %bb.d

.sink.split55:                                    ; preds = %_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !22 ; 2 uses
  %i.bt = uitofp i16 %i.bs to float
  %i.bu = fcmp ult float %i.bn, %i.bt
  %i.bv = fptoui float %i.bn to i16
  %.sink57 = select i1 %i.bu, i16 %i.bv, i16 %i.bs
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bx = load i16, ptr %i.bw, align 8, !tbaa !11
  %i.by = and i16 %i.bx, %.sink57
  %i.bz = or i16 %i.by, 1
  br label %bb.d

bb.d:                                             ; preds = %.sink.split55, %_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit
  %i.ca = phi i16 [ 1, %_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit ], [ %i.bz, %.sink.split55 ] ; 2 uses
  %i.cb = fcmp ugt float %i.bo, 0.000000e+00
  br i1 %i.cb, label %.sink.split58, label %bb.e

.sink.split58:                                    ; preds = %bb.d
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !22 ; 2 uses
  %i.ce = uitofp i16 %i.cd to float
  %i.cf = fcmp ult float %i.bo, %i.ce
  %i.cg = fptoui float %i.bo to i16
  %.sink60 = select i1 %i.cf, i16 %i.cg, i16 %i.cd
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ci = load i16, ptr %i.ch, align 8, !tbaa !11
  %i.cj = and i16 %i.ci, %.sink60
  %i.ck = or i16 %i.cj, 1
  br label %bb.e

bb.e:                                             ; preds = %.sink.split58, %bb.d
  %i.cl = phi i16 [ 1, %bb.d ], [ %i.ck, %.sink.split58 ] ; 2 uses
  %i.cm = fcmp ugt float %i.bp, 0.000000e+00
  br i1 %i.cm, label %_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit37.sink.split, label %_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit37

_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit37.sink.split: ; preds = %bb.e
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !22 ; 2 uses
  %i.cp = uitofp i16 %i.co to float
  %i.cq = fcmp ult float %i.bp, %i.cp
  %i.cr = fptoui float %i.bp to i16
  %.sink62 = select i1 %i.cq, i16 %i.cr, i16 %i.co
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ct = load i16, ptr %i.cs, align 8, !tbaa !11
  %i.cu = and i16 %i.ct, %.sink62
  %i.cv = or i16 %i.cu, 1
  br label %_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit37

_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit37: ; preds = %_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit37.sink.split, %bb.e
  %i.cw = phi i16 [ 1, %bb.e ], [ %i.cv, %_ZNK20btAxisSweep3InternalItE8quantizeEPtRK9btVector3i.exit37.sink.split ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.cy = getelementptr inbounds nuw i8, ptr %i.d, i64 58
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.da = load i16, ptr %i.cx, align 2, !tbaa !49 ; 3 uses
  %i.db = load i16, ptr %i.cy, align 2, !tbaa !49 ; 3 uses
  %i.dc = zext i16 %i.ak to i32
  %i.dd = load ptr, ptr %i.cz, align 8, !tbaa !53 ; 2 uses
  %i.de = zext i16 %i.da to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.de ; 2 uses
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !85
  %i.dh = zext i16 %i.dg to i32
  %i.di = sub nsw i32 %i.dc, %i.dh                ; 2 uses
  %i.dj = zext i16 %i.ca to i32
  %i.dk = zext i16 %i.db to i64
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.dk ; 2 uses
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !85
  %i.dn = zext i16 %i.dm to i32
  %i.do = sub nsw i32 %i.dj, %i.dn                ; 2 uses
  store i16 %i.ak, ptr %i.df, align 2, !tbaa !85
  store i16 %i.ca, ptr %i.dl, align 2, !tbaa !85
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
  %i.dt = getelementptr inbounds nuw i8, ptr %i.d, i64 54
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !49 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !49 ; 3 uses
  %i.dx = zext i16 %i.au to i32
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !53 ; 2 uses
  %i.ea = zext i16 %i.du to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.ea ; 2 uses
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !85
  %i.ed = zext i16 %i.ec to i32
  %i.ee = sub nsw i32 %i.dx, %i.ed                ; 2 uses
  %i.ef = zext i16 %i.cl to i32
  %i.eg = zext i16 %i.dw to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.eg ; 2 uses
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !85
  %i.ej = zext i16 %i.ei to i32
  %i.ek = sub nsw i32 %i.ef, %i.ej                ; 2 uses
  store i16 %i.au, ptr %i.eb, align 2, !tbaa !85
  store i16 %i.cl, ptr %i.eh, align 2, !tbaa !85
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
  %i.ep = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !49 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.d, i64 62
  %i.es = load i16, ptr %i.er, align 2, !tbaa !49 ; 3 uses
  %i.et = zext i16 %i.be to i32
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !53 ; 2 uses
  %i.ew = zext i16 %i.eq to i64
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.ew ; 2 uses
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !85
  %i.ez = zext i16 %i.ey to i32
  %i.fa = sub nsw i32 %i.et, %i.ez                ; 2 uses
  %i.fb = zext i16 %i.cw to i32
  %i.fc = zext i16 %i.es to i64
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.fc ; 2 uses
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !85
  %i.ff = zext i16 %i.fe to i32
  %i.fg = sub nsw i32 %i.fb, %i.ff                ; 2 uses
  store i16 %i.be, ptr %i.ex, align 2, !tbaa !85
  store i16 %i.cw, ptr %i.fd, align 2, !tbaa !85
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

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN20btAlignedObjectArrayI16btBroadphasePairE17quickSortInternalI29btBroadphasePairSortPredicateEEvRKT_ii(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %struct.btBroadphasePair, align 8   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.ab, %bb.a
  %.tr48 = phi i32 [ %2, %bb.a ], [ %.230, %bb.ab ] ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91
  %i.c = add nsw i32 %.tr48, %3
  %i.d = sdiv i32 %i.c, 2
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [32 x i8], ptr %i.b, i64 %i.e ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.f, align 8, !tbaa !93 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !93 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !94 ; 2 uses
  %.not22.i = icmp eq ptr %.sroa.0.0.copyload, null ; 2 uses
  %.not24.i = icmp eq ptr %.sroa.5.0.copyload, null ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.y, %tailrecurse
  %.028 = phi i32 [ %.tr48, %tailrecurse ], [ %.230, %bb.y ]
  %.0 = phi i32 [ %3, %tailrecurse ], [ %.2, %bb.y ]
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !91   ; 2 uses
  %i.j = sext i32 %.028 to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNK29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit.thread, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit.thread ], [ %i.j, %bb.b ] ; 4 uses
  %i.k = getelementptr inbounds [32 x i8], ptr %i.i, i64 %indvars.iv ; 5 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !99   ; 3 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !84
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = phi i32 [ %i.n, %bb.d ], [ -1, %bb.c ]
  br i1 %.not22.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.g, align 8, !tbaa !84
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = phi i32 [ %i.p, %bb.f ], [ -1, %bb.e ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !120  ; 3 uses
  %.not23.i = icmp eq ptr %i.s, null
  br i1 %.not23.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i32, ptr %i.t, align 8, !tbaa !84
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.v = phi i32 [ %i.u, %bb.h ], [ -1, %bb.g ]
  br i1 %.not24.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = load i32, ptr %i.h, align 8, !tbaa !84
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.x = phi i32 [ %i.w, %bb.j ], [ -1, %bb.i ]
  %i.y = icmp sgt i32 %i.o, %i.q
  br i1 %i.y, label %_ZNK29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = icmp eq ptr %i.l, %.sroa.0.0.copyload    ; 2 uses
  %i.aa = icmp sgt i32 %i.v, %i.x                 ; 2 uses
  %.not25.i = xor i1 %i.z, true
  %brmerge.i = select i1 %.not25.i, i1 true, i1 %i.aa
  br i1 %brmerge.i, label %_ZNK29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = icmp eq ptr %i.s, %.sroa.5.0.copyload
  br i1 %i.ab, label %.split, label %.critedge.preheader

.critedge.preheader:                              ; preds = %_ZNK29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit, %.split, %bb.m
  %i.ac = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.ad = sext i32 %.0 to i64
  br label %.critedge

.split:                                           ; preds = %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !121
  %i.ag = icmp ugt ptr %i.af, %.sroa.7.0.copyload
  br i1 %i.ag, label %_ZNK29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit.thread, label %.critedge.preheader

_ZNK29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit: ; preds = %bb.l
  %or.cond.i = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %or.cond.i, label %_ZNK29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit.thread, label %.critedge.preheader

_ZNK29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit.thread: ; preds = %bb.k, %.split, %_ZNK29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %bb.c, !llvm.loop !122

.critedge:                                        ; preds = %.critedge.preheader, %_ZNK29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit41.thread
  %indvars.iv56 = phi i64 [ %i.ad, %.critedge.preheader ], [ %indvars.iv.next57, %_ZNK29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit41.thread ] ; 5 uses
  %i.ah = getelementptr inbounds [32 x i8], ptr %i.i, i64 %indvars.iv56 ; 4 uses
  br i1 %.not22.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.critedge
  %i.ai = load i32, ptr %i.g, align 8, !tbaa !84
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.critedge
  %i.aj = phi i32 [ %i.ai, %bb.n ], [ -1, %.critedge ]
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !99 ; 3 uses
  %.not22.i35 = icmp eq ptr %i.ak, null
  br i1 %.not22.i35, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load i32, ptr %i.al, align 8, !tbaa !84
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.an = phi i32 [ %i.am, %bb.p ], [ -1, %bb.o ]
  br i1 %.not24.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ao = load i32, ptr %i.h, align 8, !tbaa !84
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ap = phi i32 [ %i.ao, %bb.r ], [ -1, %bb.q ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !120 ; 3 uses
  %.not24.i37 = icmp eq ptr %i.ar, null
  br i1 %.not24.i37, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load i32, ptr %i.as, align 8, !tbaa !84
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.au = phi i32 [ %i.at, %bb.t ], [ -1, %bb.s ]
  %i.av = icmp sgt i32 %i.aj, %i.an
  br i1 %i.av, label %_ZNK29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit41.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aw = icmp eq ptr %.sroa.0.0.copyload, %i.ak  ; 2 uses
  %i.ax = icmp sgt i32 %i.ap, %i.au               ; 2 uses
  %.not25.i39 = xor i1 %i.aw, true
  %brmerge.i40 = select i1 %.not25.i39, i1 true, i1 %i.ax
  br i1 %brmerge.i40, label %_ZNK29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit41, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ay = icmp eq ptr %.sroa.5.0.copyload, %i.ar
  br i1 %i.ay, label %.split46, label %_ZNK29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit41.thread45

.split46:                                         ; preds = %bb.w
  %i.az = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !121
  %i.bb = icmp ugt ptr %.sroa.7.0.copyload, %i.ba
  br i1 %i.bb, label %_ZNK29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit41.thread, label %_ZNK29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit41.thread45

_ZNK29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit41: ; preds = %bb.v
  %or.cond.i38 = select i1 %i.aw, i1 %i.ax, i1 false
  br i1 %or.cond.i38, label %_ZNK29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit41.thread, label %_ZNK29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit41.thread45

_ZNK29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit41.thread: ; preds = %bb.u, %.split46, %_ZNK29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit41
  %indvars.iv.next57 = add nsw i64 %indvars.iv56, -1
  br label %.critedge, !llvm.loop !123

_ZNK29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit41.thread45: ; preds = %bb.w, %.split46, %_ZNK29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit41
  %i.bc = trunc nsw i64 %indvars.iv56 to i32      ; 2 uses
  %.not = icmp sgt i64 %indvars.iv, %indvars.iv56
  br i1 %.not, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNK29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit41.thread45
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !tbaa.struct !92
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 32, i1 false), !tbaa.struct !92
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !91
  %i.be = getelementptr inbounds [32 x i8], ptr %i.bd, i64 %indvars.iv56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.be, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.bf = add nsw i32 %i.ac, 1
  %i.bg = add nsw i32 %i.bc, -1
  br label %bb.y

bb.y:                                             ; preds = %_ZNK29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit41.thread45, %bb.x
  %.230 = phi i32 [ %i.bf, %bb.x ], [ %i.ac, %_ZNK29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit41.thread45 ] ; 4 uses
  %.2 = phi i32 [ %i.bg, %bb.x ], [ %i.bc, %_ZNK29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit41.thread45 ] ; 4 uses
  %.not33 = icmp sgt i32 %.230, %.2
  br i1 %.not33, label %bb.z, label %bb.b, !llvm.loop !124

bb.z:                                             ; preds = %bb.y
  %i.bh = icmp slt i32 %.tr48, %.2
  br i1 %i.bh, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZN20btAlignedObjectArrayI16btBroadphasePairE17quickSortInternalI29btBroadphasePairSortPredicateEEvRKT_ii(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %.tr48, i32 noundef %.2)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bi = icmp slt i32 %.230, %3
  br i1 %i.bi, label %tailrecurse, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN20btAxisSweep3InternalIjE9addHandleERK9btVector3S3_PviiP12btDispatcher(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load float, ptr %1, align 4, !tbaa !42
  %i.c = load float, ptr %i.a, align 8, !tbaa !42 ; 2 uses
  %i.d = fsub float %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load float, ptr %i.e, align 4, !tbaa !42
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load float, ptr %i.g, align 4, !tbaa !42 ; 2 uses
  %i.i = fsub float %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load float, ptr %i.j, align 4, !tbaa !42
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load float, ptr %i.l, align 8, !tbaa !42 ; 2 uses
  %i.n = fsub float %i.k, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load float, ptr %i.o, align 8, !tbaa !42 ; 2 uses
  %i.q = fmul float %i.d, %i.p                    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.s = load float, ptr %i.r, align 4, !tbaa !42 ; 2 uses
  %i.t = fmul float %i.i, %i.s                    ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load float, ptr %i.u, align 8, !tbaa !42 ; 2 uses
  %i.w = fmul float %i.n, %i.v                    ; 3 uses
  %i.x = fcmp ugt float %i.q, 0.000000e+00
  br i1 %i.x, label %.sink.split.i, label %bb.b

.sink.split.i:                                    ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !60   ; 2 uses
  %i.aa = uitofp i32 %i.z to float
  %i.ab = fcmp ult float %i.q, %i.aa
  %i.ac = fptoui float %i.q to i32
  %.sink34.i = select i1 %i.ab, i32 %i.ac, i32 %i.z
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !57
  %i.af = and i32 %.sink34.i, %i.ae
  br label %bb.b

bb.b:                                             ; preds = %.sink.split.i, %bb.a
  %i.ag = phi i32 [ 0, %bb.a ], [ %i.af, %.sink.split.i ]
  %i.ah = fcmp ugt float %i.t, 0.000000e+00
  br i1 %i.ah, label %.sink.split35.i, label %bb.c

.sink.split35.i:                                  ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !60 ; 2 uses
  %i.ak = uitofp i32 %i.aj to float
  %i.al = fcmp ult float %i.t, %i.ak
  %i.am = fptoui float %i.t to i32
  %.sink37.i = select i1 %i.al, i32 %i.am, i32 %i.aj
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !57
  %i.ap = and i32 %.sink37.i, %i.ao
  br label %bb.c

bb.c:                                             ; preds = %.sink.split35.i, %bb.b
  %i.aq = phi i32 [ 0, %bb.b ], [ %i.ap, %.sink.split35.i ]
  %i.ar = fcmp ugt float %i.w, 0.000000e+00
  br i1 %i.ar, label %.sink.split38.i, label %_ZNK20btAxisSweep3InternalIjE8quantizeEPjRK9btVector3i.exit

.sink.split38.i:                                  ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.at = load i32, ptr %i.as, align 4, !tbaa !60 ; 2 uses
  %i.au = uitofp i32 %i.at to float
  %i.av = fcmp ult float %i.w, %i.au
  %i.aw = fptoui float %i.w to i32
  %.sink40.i = select i1 %i.av, i32 %i.aw, i32 %i.at
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !57
  %i.az = and i32 %.sink40.i, %i.ay
  br label %_ZNK20btAxisSweep3InternalIjE8quantizeEPjRK9btVector3i.exit

_ZNK20btAxisSweep3InternalIjE8quantizeEPjRK9btVector3i.exit: ; preds = %bb.c, %.sink.split38.i
  %i.ba = phi i32 [ 0, %bb.c ], [ %i.az, %.sink.split38.i ]
  %i.bb = load float, ptr %2, align 4, !tbaa !42
  %i.bc = fsub float %i.bb, %i.c
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.be = load float, ptr %i.bd, align 4, !tbaa !42
  %i.bf = fsub float %i.be, %i.h
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !42
  %i.bi = fsub float %i.bh, %i.m
  %i.bj = fmul float %i.p, %i.bc                  ; 3 uses
  %i.bk = fmul float %i.s, %i.bf                  ; 3 uses
  %i.bl = fmul float %i.v, %i.bi                  ; 3 uses
  %i.bm = fcmp ugt float %i.bj, 0.000000e+00
  br i1 %i.bm, label %.sink.split.i53, label %bb.d

.sink.split.i53:                                  ; preds = %_ZNK20btAxisSweep3InternalIjE8quantizeEPjRK9btVector3i.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !60 ; 2 uses
  %i.bp = uitofp i32 %i.bo to float
  %i.bq = fcmp ult float %i.bj, %i.bp
  %i.br = fptoui float %i.bj to i32
  %.sink34.i54 = select i1 %i.bq, i32 %i.br, i32 %i.bo
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !57
  %i.bu = and i32 %.sink34.i54, %i.bt
  %i.bv = or i32 %i.bu, 1
  br label %bb.d

bb.d:                                             ; preds = %.sink.split.i53, %_ZNK20btAxisSweep3InternalIjE8quantizeEPjRK9btVector3i.exit
  %i.bw = phi i32 [ 1, %_ZNK20btAxisSweep3InternalIjE8quantizeEPjRK9btVector3i.exit ], [ %i.bv, %.sink.split.i53 ]
  %i.bx = fcmp ugt float %i.bk, 0.000000e+00
  br i1 %i.bx, label %.sink.split35.i51, label %bb.e

.sink.split35.i51:                                ; preds = %bb.d
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !60 ; 2 uses
  %i.ca = uitofp i32 %i.bz to float
  %i.cb = fcmp ult float %i.bk, %i.ca
  %i.cc = fptoui float %i.bk to i32
  %.sink37.i52 = select i1 %i.cb, i32 %i.cc, i32 %i.bz
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !57
  %i.cf = and i32 %.sink37.i52, %i.ce
  %i.cg = or i32 %i.cf, 1
  br label %bb.e

bb.e:                                             ; preds = %.sink.split35.i51, %bb.d
  %i.ch = phi i32 [ 1, %bb.d ], [ %i.cg, %.sink.split35.i51 ]
  %i.ci = fcmp ugt float %i.bl, 0.000000e+00
  br i1 %i.ci, label %.sink.split38.i49, label %_ZNK20btAxisSweep3InternalIjE8quantizeEPjRK9btVector3i.exit55

.sink.split38.i49:                                ; preds = %bb.e
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !60 ; 2 uses
  %i.cl = uitofp i32 %i.ck to float
  %i.cm = fcmp ult float %i.bl, %i.cl
  %i.cn = fptoui float %i.bl to i32
  %.sink40.i50 = select i1 %i.cm, i32 %i.cn, i32 %i.ck
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !57
  %i.cq = and i32 %.sink40.i50, %i.cp
  %i.cr = or i32 %i.cq, 1
  br label %_ZNK20btAxisSweep3InternalIjE8quantizeEPjRK9btVector3i.exit55

_ZNK20btAxisSweep3InternalIjE8quantizeEPjRK9btVector3i.exit55: ; preds = %bb.e, %.sink.split38.i49
  %i.cs = phi i32 [ 1, %bb.e ], [ %i.cr, %.sink.split38.i49 ]
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !70 ; 9 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 13 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !67 ; 2 uses
  %i.cx = zext i32 %i.cu to i64
  %i.cy = getelementptr inbounds nuw [88 x i8], ptr %i.cw, i64 %i.cx ; 14 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 52 ; 3 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !71
  store i32 %i.da, ptr %i.ct, align 8, !tbaa !70
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !69
  %i.dd = add i32 %i.dc, 1                        ; 2 uses
  store i32 %i.dd, ptr %i.db, align 8, !tbaa !69
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store i32 %i.cu, ptr %i.de, align 8, !tbaa !84
  store ptr %3, ptr %i.cy, align 8, !tbaa !47
  %i.df = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i32 %4, ptr %i.df, align 8, !tbaa !113
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  store i32 %5, ptr %i.dg, align 4, !tbaa !114
  %i.dh = shl i32 %i.dd, 1                        ; 6 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.dj = add i32 %i.dh, -1                       ; 4 uses
  %i.dk = zext i32 %i.dj to i64                   ; 6 uses
  %i.dl = or disjoint i32 %i.dh, 1
  %i.dm = zext i32 %i.dl to i64                   ; 3 uses
  %i.dn = zext i32 %i.dh to i64                   ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.cy, i64 64 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cw, i64 64 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !71
  %i.dr = add i32 %i.dq, 2
  store i32 %i.dr, ptr %i.dp, align 4, !tbaa !71
  %i.ds = load ptr, ptr %i.di, align 8, !tbaa !73 ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dk
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dm
  %i.dv = load i64, ptr %i.dt, align 4
  store i64 %i.dv, ptr %i.du, align 4
  %i.dw = load ptr, ptr %i.di, align 8, !tbaa !73 ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.dk ; 2 uses
  store i32 %i.ag, ptr %i.dx, align 4, !tbaa !75
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  store i32 %i.cu, ptr %i.dy, align 4, !tbaa !77
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.dn ; 2 uses
  store i32 %i.bw, ptr %i.dz, align 4, !tbaa !75
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  store i32 %i.cu, ptr %i.ea, align 4, !tbaa !77
  store i32 %i.dj, ptr %i.cz, align 4, !tbaa !71
  store i32 %i.dh, ptr %i.do, align 8, !tbaa !71
  %i.eb = load ptr, ptr %i.cv, align 8, !tbaa !67
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 68 ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !71
  %i.ee = add i32 %i.ed, 2
  store i32 %i.ee, ptr %i.ec, align 4, !tbaa !71
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !73 ; 2 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.dk
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.dm
  %i.ej = load i64, ptr %i.eh, align 4
  store i64 %i.ej, ptr %i.ei, align 4
  %i.ek = load ptr, ptr %i.ef, align 8, !tbaa !73 ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.dk ; 2 uses
  store i32 %i.aq, ptr %i.el, align 4, !tbaa !75
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  store i32 %i.cu, ptr %i.em, align 4, !tbaa !77
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.dn ; 2 uses
  store i32 %i.ch, ptr %i.en, align 4, !tbaa !75
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  store i32 %i.cu, ptr %i.eo, align 4, !tbaa !77
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cy, i64 56
  store i32 %i.dj, ptr %i.ep, align 8, !tbaa !71
  %i.eq = getelementptr inbounds nuw i8, ptr %i.cy, i64 68
  store i32 %i.dh, ptr %i.eq, align 4, !tbaa !71
  %i.er = load ptr, ptr %i.cv, align 8, !tbaa !67
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 72 ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !71
  %i.eu = add i32 %i.et, 2
  store i32 %i.eu, ptr %i.es, align 4, !tbaa !71
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !73 ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.dk
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.dm
  %i.ez = load i64, ptr %i.ex, align 4
  store i64 %i.ez, ptr %i.ey, align 4
  %i.fa = load ptr, ptr %i.ev, align 8, !tbaa !73 ; 2 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.dk ; 2 uses
  store i32 %i.ba, ptr %i.fb, align 4, !tbaa !75
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  store i32 %i.cu, ptr %i.fc, align 4, !tbaa !77
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.dn ; 2 uses
  store i32 %i.cs, ptr %i.fd, align 4, !tbaa !75
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  store i32 %i.cu, ptr %i.fe, align 4, !tbaa !77
  %i.ff = getelementptr inbounds nuw i8, ptr %i.cy, i64 60
  store i32 %i.dj, ptr %i.ff, align 4, !tbaa !71
  %i.fg = getelementptr inbounds nuw i8, ptr %i.cy, i64 72
  store i32 %i.dh, ptr %i.fg, align 8, !tbaa !71
  %i.fh = load i32, ptr %i.cz, align 4, !tbaa !71
  %i.fi = load ptr, ptr %i.di, align 8, !tbaa !73 ; 2 uses
  %i.fj = zext i32 %i.fh to i64
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.fj ; 4 uses
  %.03136.i = getelementptr inbounds i8, ptr %i.fk, i64 -8 ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !75
  %i.fm = load i32, ptr %.03136.i, align 4, !tbaa !75 ; 2 uses
  %i.fn = icmp ult i32 %i.fl, %i.fm
  br i1 %i.fn, label %.lr.ph.i, label %_ZN20btAxisSweep3InternalIjE11sortMinDownEijP12btDispatcherb.exit

.lr.ph.i:                                         ; preds = %_ZNK20btAxisSweep3InternalIjE8quantizeEPjRK9btVector3i.exit55
  %i.fo = load ptr, ptr %i.cv, align 8, !tbaa !67
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !77
  %i.fr = zext i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw [88 x i8], ptr %i.fo, i64 %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 52 ; 2 uses
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i, %.lr.ph.i
  %i.fu = phi i32 [ %i.gk, %.lr.ph.split.i ], [ %i.fm, %.lr.ph.i ]
  %.03139.i = phi ptr [ %.031.i, %.lr.ph.split.i ], [ %.03136.i, %.lr.ph.i ] ; 3 uses
  %.038.i = phi ptr [ %i.gi, %.lr.ph.split.i ], [ %i.fk, %.lr.ph.i ] ; 4 uses
  %i.fv = getelementptr inbounds i8, ptr %.038.i, i64 -4
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !77
  %i.fx = load ptr, ptr %i.cv, align 8, !tbaa !67
  %i.fy = zext i32 %i.fw to i64
  %i.fz = getelementptr inbounds nuw [88 x i8], ptr %i.fx, i64 %i.fy
  %i.ga = and i32 %i.fu, 1
  %.not.i = icmp eq i32 %i.ga, 0
  %..i = select i1 %.not.i, i64 52, i64 64
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 %..i ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !71
  %i.gd = add i32 %i.gc, 1
  store i32 %i.gd, ptr %i.gb, align 4, !tbaa !71
  %i.ge = load i32, ptr %i.ft, align 4, !tbaa !71
  %i.gf = add i32 %i.ge, -1
  store i32 %i.gf, ptr %i.ft, align 4, !tbaa !71
  %i.gg = load i64, ptr %.038.i, align 4
  %i.gh = load i64, ptr %.03139.i, align 4
  store i64 %i.gh, ptr %.038.i, align 4
  store i64 %i.gg, ptr %.03139.i, align 4
  %i.gi = getelementptr inbounds i8, ptr %.038.i, i64 -8 ; 2 uses
  %.031.i = getelementptr inbounds i8, ptr %.03139.i, i64 -8 ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !75
  %i.gk = load i32, ptr %.031.i, align 4, !tbaa !75 ; 2 uses
  %i.gl = icmp ult i32 %i.gj, %i.gk
  br i1 %i.gl, label %.lr.ph.split.i, label %_ZN20btAxisSweep3InternalIjE11sortMinDownEijP12btDispatcherb.exit.loopexit, !llvm.loop !125

_ZN20btAxisSweep3InternalIjE11sortMinDownEijP12btDispatcherb.exit.loopexit: ; preds = %.lr.ph.split.i
  %.pre = load ptr, ptr %i.di, align 8, !tbaa !73
  br label %_ZN20btAxisSweep3InternalIjE11sortMinDownEijP12btDispatcherb.exit

_ZN20btAxisSweep3InternalIjE11sortMinDownEijP12btDispatcherb.exit: ; preds = %_ZN20btAxisSweep3InternalIjE11sortMinDownEijP12btDispatcherb.exit.loopexit, %_ZNK20btAxisSweep3InternalIjE8quantizeEPjRK9btVector3i.exit55
  %i.gm = phi ptr [ %.pre, %_ZN20btAxisSweep3InternalIjE11sortMinDownEijP12btDispatcherb.exit.loopexit ], [ %i.fi, %_ZNK20btAxisSweep3InternalIjE8quantizeEPjRK9btVector3i.exit55 ]
  %i.gn = load i32, ptr %i.do, align 8, !tbaa !71
  %i.go = zext i32 %i.gn to i64
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.go ; 4 uses
  %.03540.i = getelementptr inbounds i8, ptr %i.gp, i64 -8 ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !75
  %i.gr = load i32, ptr %.03540.i, align 4, !tbaa !75 ; 2 uses
  %i.gs = icmp ult i32 %i.gq, %i.gr
  br i1 %i.gs, label %.lr.ph.i56, label %_ZN20btAxisSweep3InternalIjE11sortMaxDownEijP12btDispatcherb.exit

.lr.ph.i56:                                       ; preds = %_ZN20btAxisSweep3InternalIjE11sortMinDownEijP12btDispatcherb.exit
  %i.gt = load ptr, ptr %i.cv, align 8, !tbaa !67
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !77
  %i.gw = zext i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw [88 x i8], ptr %i.gt, i64 %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 64 ; 2 uses
  br label %.lr.ph.split.i57

.lr.ph.split.i57:                                 ; preds = %.lr.ph.split.i57, %.lr.ph.i56
  %i.gz = phi i32 [ %i.hp, %.lr.ph.split.i57 ], [ %i.gr, %.lr.ph.i56 ]
  %.03543.i = phi ptr [ %.035.i, %.lr.ph.split.i57 ], [ %.03540.i, %.lr.ph.i56 ] ; 3 uses
  %.042.i = phi ptr [ %i.hn, %.lr.ph.split.i57 ], [ %i.gp, %.lr.ph.i56 ] ; 4 uses
  %i.ha = getelementptr inbounds i8, ptr %.042.i, i64 -4
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !77
  %i.hc = load ptr, ptr %i.cv, align 8, !tbaa !67
  %i.hd = zext i32 %i.hb to i64
  %i.he = getelementptr inbounds nuw [88 x i8], ptr %i.hc, i64 %i.hd
  %i.hf = and i32 %i.gz, 1
  %.not.i58 = icmp eq i32 %i.hf, 0
  %..i59 = select i1 %.not.i58, i64 52, i64 64
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 %..i59 ; 2 uses
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !71
  %i.hi = add i32 %i.hh, 1
  store i32 %i.hi, ptr %i.hg, align 4, !tbaa !71
  %i.hj = load i32, ptr %i.gy, align 4, !tbaa !71
  %i.hk = add i32 %i.hj, -1
  store i32 %i.hk, ptr %i.gy, align 4, !tbaa !71
  %i.hl = load i64, ptr %.042.i, align 4
  %i.hm = load i64, ptr %.03543.i, align 4
  store i64 %i.hm, ptr %.042.i, align 4
  store i64 %i.hl, ptr %.03543.i, align 4
  %i.hn = getelementptr inbounds i8, ptr %.042.i, i64 -8 ; 2 uses
  %.035.i = getelementptr inbounds i8, ptr %.03543.i, i64 -8 ; 2 uses
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !75
  %i.hp = load i32, ptr %.035.i, align 4, !tbaa !75 ; 2 uses
  %i.hq = icmp ult i32 %i.ho, %i.hp
  br i1 %i.hq, label %.lr.ph.split.i57, label %_ZN20btAxisSweep3InternalIjE11sortMaxDownEijP12btDispatcherb.exit, !llvm.loop !126

_ZN20btAxisSweep3InternalIjE11sortMaxDownEijP12btDispatcherb.exit: ; preds = %.lr.ph.split.i57, %_ZN20btAxisSweep3InternalIjE11sortMinDownEijP12btDispatcherb.exit
  %i.hr = getelementptr inbounds nuw i8, ptr %i.cy, i64 56
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !71
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !73 ; 2 uses
  %i.hv = zext i32 %i.hs to i64
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %i.hv ; 4 uses
  %.03136.i60 = getelementptr inbounds i8, ptr %i.hw, i64 -8 ; 2 uses
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !75
  %i.hy = load i32, ptr %.03136.i60, align 4, !tbaa !75 ; 2 uses
  %i.hz = icmp ult i32 %i.hx, %i.hy
  br i1 %i.hz, label %.lr.ph.i61, label %_ZN20btAxisSweep3InternalIjE11sortMinDownEijP12btDispatcherb.exit68

.lr.ph.i61:                                       ; preds = %_ZN20btAxisSweep3InternalIjE11sortMaxDownEijP12btDispatcherb.exit
  %i.ia = load ptr, ptr %i.cv, align 8, !tbaa !67
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !77
  %i.id = zext i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw [88 x i8], ptr %i.ia, i64 %i.id
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 56 ; 2 uses
  br label %.lr.ph.split.i62

.lr.ph.split.i62:                                 ; preds = %.lr.ph.split.i62, %.lr.ph.i61
  %i.ig = phi i32 [ %i.ix, %.lr.ph.split.i62 ], [ %i.hy, %.lr.ph.i61 ]
  %.03139.i63 = phi ptr [ %.031.i67, %.lr.ph.split.i62 ], [ %.03136.i60, %.lr.ph.i61 ] ; 3 uses
  %.038.i64 = phi ptr [ %i.iv, %.lr.ph.split.i62 ], [ %i.hw, %.lr.ph.i61 ] ; 4 uses
  %i.ih = getelementptr inbounds i8, ptr %.038.i64, i64 -4
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !77
  %i.ij = load ptr, ptr %i.cv, align 8, !tbaa !67
  %i.ik = zext i32 %i.ii to i64
  %i.il = getelementptr inbounds nuw [88 x i8], ptr %i.ij, i64 %i.ik
  %i.im = and i32 %i.ig, 1
  %.not.i65 = icmp eq i32 %i.im, 0
  %i.in = select i1 %.not.i65, i64 56, i64 68
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.in ; 2 uses
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !71
  %i.iq = add i32 %i.ip, 1
  store i32 %i.iq, ptr %i.io, align 4, !tbaa !71
  %i.ir = load i32, ptr %i.if, align 4, !tbaa !71
  %i.is = add i32 %i.ir, -1
  store i32 %i.is, ptr %i.if, align 4, !tbaa !71
  %i.it = load i64, ptr %.038.i64, align 4
  %i.iu = load i64, ptr %.03139.i63, align 4
  store i64 %i.iu, ptr %.038.i64, align 4
  store i64 %i.it, ptr %.03139.i63, align 4
  %i.iv = getelementptr inbounds i8, ptr %.038.i64, i64 -8 ; 2 uses
  %.031.i67 = getelementptr inbounds i8, ptr %.03139.i63, i64 -8 ; 2 uses
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !75
  %i.ix = load i32, ptr %.031.i67, align 4, !tbaa !75 ; 2 uses
  %i.iy = icmp ult i32 %i.iw, %i.ix
  br i1 %i.iy, label %.lr.ph.split.i62, label %_ZN20btAxisSweep3InternalIjE11sortMinDownEijP12btDispatcherb.exit68.loopexit, !llvm.loop !125

_ZN20btAxisSweep3InternalIjE11sortMinDownEijP12btDispatcherb.exit68.loopexit: ; preds = %.lr.ph.split.i62
  %.pre86 = load ptr, ptr %i.ht, align 8, !tbaa !73
  br label %_ZN20btAxisSweep3InternalIjE11sortMinDownEijP12btDispatcherb.exit68

_ZN20btAxisSweep3InternalIjE11sortMinDownEijP12btDispatcherb.exit68: ; preds = %_ZN20btAxisSweep3InternalIjE11sortMinDownEijP12btDispatcherb.exit68.loopexit, %_ZN20btAxisSweep3InternalIjE11sortMaxDownEijP12btDispatcherb.exit
  %i.iz = phi ptr [ %.pre86, %_ZN20btAxisSweep3InternalIjE11sortMinDownEijP12btDispatcherb.exit68.loopexit ], [ %i.hu, %_ZN20btAxisSweep3InternalIjE11sortMaxDownEijP12btDispatcherb.exit ]
  %i.ja = getelementptr inbounds nuw i8, ptr %i.cy, i64 68
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !71
  %i.jc = zext i32 %i.jb to i64
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %i.jc ; 4 uses
  %.03540.i69 = getelementptr inbounds i8, ptr %i.jd, i64 -8 ; 2 uses
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !75
  %i.jf = load i32, ptr %.03540.i69, align 4, !tbaa !75 ; 2 uses
  %i.jg = icmp ult i32 %i.je, %i.jf
  br i1 %i.jg, label %.lr.ph.i70, label %_ZN20btAxisSweep3InternalIjE11sortMaxDownEijP12btDispatcherb.exit77

.lr.ph.i70:                                       ; preds = %_ZN20btAxisSweep3InternalIjE11sortMinDownEijP12btDispatcherb.exit68
  %i.jh = load ptr, ptr %i.cv, align 8, !tbaa !67
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jd, i64 4
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !77
  %i.jk = zext i32 %i.jj to i64
  %i.jl = getelementptr inbounds nuw [88 x i8], ptr %i.jh, i64 %i.jk
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 68 ; 2 uses
  br label %.lr.ph.split.i71

.lr.ph.split.i71:                                 ; preds = %.lr.ph.split.i71, %.lr.ph.i70
  %i.jn = phi i32 [ %i.ke, %.lr.ph.split.i71 ], [ %i.jf, %.lr.ph.i70 ]
  %.03543.i72 = phi ptr [ %.035.i76, %.lr.ph.split.i71 ], [ %.03540.i69, %.lr.ph.i70 ] ; 3 uses
  %.042.i73 = phi ptr [ %i.kc, %.lr.ph.split.i71 ], [ %i.jd, %.lr.ph.i70 ] ; 4 uses
  %i.jo = getelementptr inbounds i8, ptr %.042.i73, i64 -4
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !77
  %i.jq = load ptr, ptr %i.cv, align 8, !tbaa !67
  %i.jr = zext i32 %i.jp to i64
  %i.js = getelementptr inbounds nuw [88 x i8], ptr %i.jq, i64 %i.jr
  %i.jt = and i32 %i.jn, 1
  %.not.i74 = icmp eq i32 %i.jt, 0
  %i.ju = select i1 %.not.i74, i64 56, i64 68
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 %i.ju ; 2 uses
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !71
  %i.jx = add i32 %i.jw, 1
  store i32 %i.jx, ptr %i.jv, align 4, !tbaa !71
  %i.jy = load i32, ptr %i.jm, align 4, !tbaa !71
  %i.jz = add i32 %i.jy, -1
  store i32 %i.jz, ptr %i.jm, align 4, !tbaa !71
  %i.ka = load i64, ptr %.042.i73, align 4
  %i.kb = load i64, ptr %.03543.i72, align 4
  store i64 %i.kb, ptr %.042.i73, align 4
  store i64 %i.ka, ptr %.03543.i72, align 4
  %i.kc = getelementptr inbounds i8, ptr %.042.i73, i64 -8 ; 2 uses
  %.035.i76 = getelementptr inbounds i8, ptr %.03543.i72, i64 -8 ; 2 uses
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !75
  %i.ke = load i32, ptr %.035.i76, align 4, !tbaa !75 ; 2 uses
  %i.kf = icmp ult i32 %i.kd, %i.ke
  br i1 %i.kf, label %.lr.ph.split.i71, label %_ZN20btAxisSweep3InternalIjE11sortMaxDownEijP12btDispatcherb.exit77, !llvm.loop !126

_ZN20btAxisSweep3InternalIjE11sortMaxDownEijP12btDispatcherb.exit77: ; preds = %.lr.ph.split.i71, %_ZN20btAxisSweep3InternalIjE11sortMinDownEijP12btDispatcherb.exit68
  %i.kg = getelementptr inbounds nuw i8, ptr %i.cy, i64 60
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !71
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !73
  %i.kk = zext i32 %i.kh to i64
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %i.kk ; 4 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 4
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !77
  %i.ko = load ptr, ptr %i.cv, align 8, !tbaa !67
  %i.kp = zext i32 %i.kn to i64
  %i.kq = getelementptr inbounds nuw [88 x i8], ptr %i.ko, i64 %i.kp ; 7 uses
  %.03136.i78 = getelementptr inbounds i8, ptr %i.kl, i64 -8 ; 2 uses
  %i.kr = load i32, ptr %i.kl, align 4, !tbaa !75
  %i.ks = load i32, ptr %.03136.i78, align 4, !tbaa !75 ; 2 uses
  %i.kt = icmp ult i32 %i.kr, %i.ks
  br i1 %i.kt, label %.lr.ph.i79, label %_ZN20btAxisSweep3InternalIjE11sortMinDownEijP12btDispatcherb.exit80

.lr.ph.i79:                                       ; preds = %_ZN20btAxisSweep3InternalIjE11sortMaxDownEijP12btDispatcherb.exit77
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kq, i64 64
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kq, i64 52
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kq, i64 68
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kq, i64 56
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.la = getelementptr inbounds nuw i8, ptr %i.kq, i64 60 ; 2 uses
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us.i, %.lr.ph.i79
  %i.lb = phi i32 [ %i.mr, %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us.i ], [ %i.ks, %.lr.ph.i79 ]
  %.03139.us.i = phi ptr [ %.031.us.i, %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us.i ], [ %.03136.i78, %.lr.ph.i79 ] ; 3 uses
  %.038.us.i = phi ptr [ %i.mp, %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us.i ], [ %i.kl, %.lr.ph.i79 ] ; 4 uses
  %i.lc = getelementptr inbounds i8, ptr %.038.us.i, i64 -4
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !77
  %i.le = load ptr, ptr %i.cv, align 8, !tbaa !67
  %i.lf = zext i32 %i.ld to i64
  %i.lg = getelementptr inbounds nuw [88 x i8], ptr %i.le, i64 %i.lf ; 7 uses
  %i.lh = and i32 %i.lb, 1
  %.not.us.i = icmp eq i32 %i.lh, 0
  br i1 %.not.us.i, label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.us.i
  %i.li = load i32, ptr %i.ku, align 4, !tbaa !71
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 52
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !71
  %i.ll = icmp ult i32 %i.li, %i.lk
  br i1 %i.ll, label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lg, i64 64
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !71
  %i.lo = load i32, ptr %i.kv, align 4, !tbaa !71
  %i.lp = icmp ult i32 %i.ln, %i.lo
  br i1 %i.lp, label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.lq = load i32, ptr %i.kw, align 4, !tbaa !71
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lg, i64 56
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !71
  %i.lt = icmp ult i32 %i.lq, %i.ls
  br i1 %i.lt, label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us.i, label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us.i

_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us.i: ; preds = %bb.h
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lg, i64 68
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !71
  %i.lw = load i32, ptr %i.kx, align 4, !tbaa !71
  %.not35.us.i = icmp ult i32 %i.lv, %i.lw
  br i1 %.not35.us.i, label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us.i, label %bb.i

bb.i:                                             ; preds = %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us.i
  %i.lx = load ptr, ptr %i.ky, align 8, !tbaa !61 ; 2 uses
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !9
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  %i.ma = load ptr, ptr %i.lz, align 8
  %i.mb = tail call noundef ptr %i.ma(ptr noundef nonnull align 8 dereferenceable(8) %i.lx, ptr noundef nonnull %i.kq, ptr noundef nonnull %i.lg), !inline_history !127 ; 0 uses
  %i.mc = load ptr, ptr %i.kz, align 8, !tbaa !62 ; 3 uses
  %.not33.us.i = icmp eq ptr %i.mc, null
  br i1 %.not33.us.i, label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !9
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  %i.mf = load ptr, ptr %i.me, align 8
  %i.mg = tail call noundef ptr %i.mf(ptr noundef nonnull align 8 dereferenceable(8) %i.mc, ptr noundef nonnull %i.kq, ptr noundef nonnull %i.lg), !inline_history !127 ; 0 uses
  br label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us.i

_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us.i: ; preds = %bb.j, %bb.i, %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us.i, %bb.h, %bb.g, %bb.f, %.lr.ph.split.us.i
  %.sink.i = phi i64 [ 64, %bb.f ], [ 64, %bb.j ], [ 64, %bb.i ], [ 64, %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us.i ], [ 64, %bb.h ], [ 64, %bb.g ], [ 52, %.lr.ph.split.us.i ]
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lg, i64 %.sink.i
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 8 ; 2 uses
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !71
  %i.mk = add i32 %i.mj, 1
  store i32 %i.mk, ptr %i.mi, align 4, !tbaa !71
  %i.ml = load i32, ptr %i.la, align 4, !tbaa !71
  %i.mm = add i32 %i.ml, -1
  store i32 %i.mm, ptr %i.la, align 4, !tbaa !71
  %i.mn = load i64, ptr %.038.us.i, align 4
  %i.mo = load i64, ptr %.03139.us.i, align 4
  store i64 %i.mo, ptr %.038.us.i, align 4
  store i64 %i.mn, ptr %.03139.us.i, align 4
  %i.mp = getelementptr inbounds i8, ptr %.038.us.i, i64 -8 ; 2 uses
  %.031.us.i = getelementptr inbounds i8, ptr %.03139.us.i, i64 -8 ; 2 uses
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !75
  %i.mr = load i32, ptr %.031.us.i, align 4, !tbaa !75 ; 2 uses
  %i.ms = icmp ult i32 %i.mq, %i.mr
  br i1 %i.ms, label %.lr.ph.split.us.i, label %_ZN20btAxisSweep3InternalIjE11sortMinDownEijP12btDispatcherb.exit80, !llvm.loop !125

_ZN20btAxisSweep3InternalIjE11sortMinDownEijP12btDispatcherb.exit80: ; preds = %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us.i, %_ZN20btAxisSweep3InternalIjE11sortMaxDownEijP12btDispatcherb.exit77
  %i.mt = getelementptr inbounds nuw i8, ptr %i.cy, i64 72
  %i.mu = load i32, ptr %i.mt, align 8, !tbaa !71
  tail call void @_ZN20btAxisSweep3InternalIjE11sortMaxDownEijP12btDispatcherb(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef 2, i32 noundef %i.mu, ptr noundef %6, i1 noundef zeroext true)
  ret i32 %i.cu
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN20btAxisSweep3InternalIjE11sortMinDownEijP12btDispatcherb(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = sext i32 %1 to i64                       ; 4 uses
  %i.c = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73
  %i.e = zext i32 %2 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.e ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !77
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !67
  %i.k = zext i32 %i.h to i64
  %i.l = getelementptr inbounds nuw [88 x i8], ptr %i.j, i64 %i.k ; 4 uses
  %.03136 = getelementptr inbounds i8, ptr %i.f, i64 -8 ; 3 uses
  %i.m = load i32, ptr %i.f, align 4, !tbaa !75
  %i.n = load i32, ptr %.03136, align 4, !tbaa !75 ; 3 uses
  %i.o = icmp ult i32 %i.m, %i.n
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.p = shl nuw i32 1, %1
  %i.q = and i32 %i.p, 3                          ; 2 uses
  %i.r = shl nuw nsw i32 1, %i.q
  %i.s = and i32 %i.r, 3
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 64 ; 2 uses
  %i.u = zext nneg i32 %i.q to i64                ; 4 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 52 ; 3 uses
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
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !77
  %i.ah = load ptr, ptr %i.i, align 8, !tbaa !67
  %i.ai = zext i32 %i.ag to i64
  %i.aj = getelementptr inbounds nuw [88 x i8], ptr %i.ah, i64 %i.ai ; 5 uses
  %i.ak = and i32 %i.ae, 1
  %.not.us = icmp eq i32 %i.ak, 0
  br i1 %.not.us, label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.al = load i32, ptr %i.v, align 4, !tbaa !71
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 52 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.u
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !71
  %i.ap = icmp ult i32 %i.al, %i.ao
  br i1 %i.ap, label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 64 ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.u
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !71
  %i.at = load i32, ptr %i.x, align 4, !tbaa !71
  %i.au = icmp ult i32 %i.as, %i.at
  br i1 %i.au, label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.av = load i32, ptr %i.z, align 4, !tbaa !71
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.y
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !71
  %i.ay = icmp ult i32 %i.av, %i.ax
  br i1 %i.ay, label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us

_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us: ; preds = %bb.d
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.y
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !71
  %i.bb = load i32, ptr %i.aa, align 4, !tbaa !71
  %.not35.us = icmp ult i32 %i.ba, %i.bb
  br i1 %.not35.us, label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %bb.e

bb.e:                                             ; preds = %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us
  %i.bc = load ptr, ptr %i.ab, align 8, !tbaa !61 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !9
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = tail call noundef ptr %i.bf(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull %i.l, ptr noundef nonnull %i.aj) ; 0 uses
  %i.bh = load ptr, ptr %i.ac, align 8, !tbaa !62 ; 3 uses
  %.not33.us = icmp eq ptr %i.bh, null
  br i1 %.not33.us, label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !9
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = tail call noundef ptr %i.bk(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull %i.l, ptr noundef nonnull %i.aj) ; 0 uses
  br label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us

_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us: ; preds = %.lr.ph.split.us, %bb.b, %bb.c, %bb.d, %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us, %bb.e, %bb.f
  %.sink = phi i64 [ 64, %bb.b ], [ 64, %bb.f ], [ 64, %bb.e ], [ 64, %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us ], [ 64, %bb.d ], [ 64, %bb.c ], [ 52, %.lr.ph.split.us ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.sink
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.b ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !71
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !71
  %i.bq = load i32, ptr %i.ad, align 4, !tbaa !71
  %i.br = add i32 %i.bq, -1
  store i32 %i.br, ptr %i.ad, align 4, !tbaa !71
  %i.bs = load i64, ptr %.038.us, align 4
  %i.bt = load i64, ptr %.03139.us, align 4
  store i64 %i.bt, ptr %.038.us, align 4
  store i64 %i.bs, ptr %.03139.us, align 4
  %i.bu = getelementptr inbounds i8, ptr %.038.us, i64 -8 ; 2 uses
  %.031.us = getelementptr inbounds i8, ptr %.03139.us, i64 -8 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !75
  %i.bw = load i32, ptr %.031.us, align 4, !tbaa !75 ; 2 uses
  %i.bx = icmp ult i32 %i.bv, %i.bw
  br i1 %i.bx, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !125

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %i.by = phi i32 [ %i.cp, %.lr.ph.split ], [ %i.n, %.lr.ph ]
  %.03139 = phi ptr [ %.031, %.lr.ph.split ], [ %.03136, %.lr.ph ] ; 3 uses
  %.038 = phi ptr [ %i.cn, %.lr.ph.split ], [ %i.f, %.lr.ph ] ; 4 uses
  %i.bz = getelementptr inbounds i8, ptr %.038, i64 -4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !77
  %i.cb = load ptr, ptr %i.i, align 8, !tbaa !67
  %i.cc = zext i32 %i.ca to i64
  %i.cd = getelementptr inbounds nuw [88 x i8], ptr %i.cb, i64 %i.cc
  %i.ce = and i32 %i.by, 1
  %.not = icmp eq i32 %i.ce, 0
  %. = select i1 %.not, i64 52, i64 64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.b ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !71
  %i.ci = add i32 %i.ch, 1
  store i32 %i.ci, ptr %i.cg, align 4, !tbaa !71
  %i.cj = load i32, ptr %i.ad, align 4, !tbaa !71
  %i.ck = add i32 %i.cj, -1
  store i32 %i.ck, ptr %i.ad, align 4, !tbaa !71
  %i.cl = load i64, ptr %.038, align 4
  %i.cm = load i64, ptr %.03139, align 4
  store i64 %i.cm, ptr %.038, align 4
  store i64 %i.cl, ptr %.03139, align 4
  %i.cn = getelementptr inbounds i8, ptr %.038, i64 -8 ; 2 uses
  %.031 = getelementptr inbounds i8, ptr %.03139, i64 -8 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !75
  %i.cp = load i32, ptr %.031, align 4, !tbaa !75 ; 2 uses
  %i.cq = icmp ult i32 %i.co, %i.cp
  br i1 %i.cq, label %.lr.ph.split, label %._crit_edge, !llvm.loop !125

._crit_edge:                                      ; preds = %.lr.ph.split, %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN20btAxisSweep3InternalIjE11sortMaxDownEijP12btDispatcherb(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = sext i32 %1 to i64                       ; 4 uses
  %i.c = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73
  %i.e = zext i32 %2 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.e ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %.03540 = getelementptr inbounds i8, ptr %i.f, i64 -8 ; 3 uses
  %i.h = load i32, ptr %i.f, align 4, !tbaa !75
  %i.i = load i32, ptr %.03540, align 4, !tbaa !75 ; 3 uses
  %i.j = icmp ult i32 %i.h, %i.i
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !67
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !77
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [88 x i8], ptr %i.k, i64 %i.n
  %i.p = shl nuw i32 1, %1
  %i.q = and i32 %i.p, 3                          ; 2 uses
  %i.r = shl nuw nsw i32 1, %i.q
  %i.s = and i32 %i.r, 3
  %i.t = zext nneg i32 %i.q to i64                ; 4 uses
  %i.u = zext nneg i32 %i.s to i64                ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.y = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.b ; 4 uses
  br i1 %4, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us
  %i.z = phi i32 [ %i.cb, %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us ], [ %i.i, %.lr.ph ]
  %.03543.us = phi ptr [ %.035.us, %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us ], [ %.03540, %.lr.ph ] ; 3 uses
  %.042.us = phi ptr [ %i.bz, %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us ], [ %i.f, %.lr.ph ] ; 5 uses
  %i.aa = getelementptr inbounds i8, ptr %.042.us, i64 -4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !77
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !67  ; 2 uses
  %i.ad = zext i32 %i.ab to i64
  %i.ae = getelementptr inbounds nuw [88 x i8], ptr %i.ac, i64 %i.ad ; 5 uses
  %i.af = and i32 %i.z, 1
  %.not.us = icmp eq i32 %i.af, 0
  br i1 %.not.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  br label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us

bb.c:                                             ; preds = %.lr.ph.split.us
  %i.ah = getelementptr inbounds nuw i8, ptr %.042.us, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !77
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [88 x i8], ptr %i.ac, i64 %i.aj ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 64 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.t
  %i.an = load i32, ptr %i.am, align 4, !tbaa !71
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 52 ; 8 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.t
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !71
  %i.ar = icmp ult i32 %i.an, %i.aq
  br i1 %i.ar, label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 64 ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.t
  %i.au = load i32, ptr %i.at, align 4, !tbaa !71
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 52 ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.t
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !71
  %i.ay = icmp ult i32 %i.au, %i.ax
  br i1 %i.ay, label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.u
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !71
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.u
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !71
  %i.bd = icmp ult i32 %i.ba, %i.bc
  br i1 %i.bd, label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us

_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us: ; preds = %bb.e
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.u
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !71
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.u
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !71
  %.not39.us = icmp ult i32 %i.bf, %i.bh
  br i1 %.not39.us, label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %bb.f

bb.f:                                             ; preds = %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us
  %i.bi = load ptr, ptr %i.v, align 8, !tbaa !61  ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !9
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = tail call noundef ptr %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.ae, ptr noundef %3) ; 0 uses
  %i.bn = load ptr, ptr %i.w, align 8, !tbaa !62  ; 3 uses
  %.not37.us = icmp eq ptr %i.bn, null
  br i1 %.not37.us, label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !9
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = tail call noundef ptr %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.ae, ptr noundef %3) ; 0 uses
  br label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us

_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us: ; preds = %bb.c, %bb.d, %bb.e, %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us, %bb.f, %bb.g, %bb.b
  %.sink51 = phi ptr [ %i.ag, %bb.b ], [ %i.ao, %bb.g ], [ %i.ao, %bb.f ], [ %i.ao, %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us ], [ %i.ao, %bb.e ], [ %i.ao, %bb.d ], [ %i.ao, %bb.c ]
  %i.bs = getelementptr inbounds [4 x i8], ptr %.sink51, i64 %i.b ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !71
  %i.bu = add i32 %i.bt, 1
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !71
  %i.bv = load i32, ptr %i.y, align 4, !tbaa !71
  %i.bw = add i32 %i.bv, -1
  store i32 %i.bw, ptr %i.y, align 4, !tbaa !71
  %i.bx = load i64, ptr %.042.us, align 4
  %i.by = load i64, ptr %.03543.us, align 4
  store i64 %i.by, ptr %.042.us, align 4
  store i64 %i.bx, ptr %.03543.us, align 4
  %i.bz = getelementptr inbounds i8, ptr %.042.us, i64 -8 ; 2 uses
  %.035.us = getelementptr inbounds i8, ptr %.03543.us, i64 -8 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !75
  %i.cb = load i32, ptr %.035.us, align 4, !tbaa !75 ; 2 uses
  %i.cc = icmp ult i32 %i.ca, %i.cb
  br i1 %i.cc, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !126

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %i.cd = phi i32 [ %i.cu, %.lr.ph.split ], [ %i.i, %.lr.ph ]
  %.03543 = phi ptr [ %.035, %.lr.ph.split ], [ %.03540, %.lr.ph ] ; 3 uses
  %.042 = phi ptr [ %i.cs, %.lr.ph.split ], [ %i.f, %.lr.ph ] ; 4 uses
  %i.ce = getelementptr inbounds i8, ptr %.042, i64 -4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !77
  %i.cg = load ptr, ptr %i.g, align 8, !tbaa !67
  %i.ch = zext i32 %i.cf to i64
  %i.ci = getelementptr inbounds nuw [88 x i8], ptr %i.cg, i64 %i.ch
  %i.cj = and i32 %i.cd, 1
  %.not = icmp eq i32 %i.cj, 0
  %. = select i1 %.not, i64 52, i64 64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.b ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !71
  %i.cn = add i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !71
  %i.co = load i32, ptr %i.y, align 4, !tbaa !71
  %i.cp = add i32 %i.co, -1
  store i32 %i.cp, ptr %i.y, align 4, !tbaa !71
  %i.cq = load i64, ptr %.042, align 4
  %i.cr = load i64, ptr %.03543, align 4
  store i64 %i.cr, ptr %.042, align 4
  store i64 %i.cq, ptr %.03543, align 4
  %i.cs = getelementptr inbounds i8, ptr %.042, i64 -8 ; 2 uses
  %.035 = getelementptr inbounds i8, ptr %.03543, i64 -8 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !75
  %i.cu = load i32, ptr %.035, align 4, !tbaa !75 ; 2 uses
  %i.cv = icmp ult i32 %i.ct, %i.cu
  br i1 %i.cv, label %.lr.ph.split, label %._crit_edge, !llvm.loop !126

._crit_edge:                                      ; preds = %.lr.ph.split, %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN20btAxisSweep3InternalIjE12removeHandleEjP12btDispatcher(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 14 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67
  %i.c = zext i32 %1 to i64                       ; 2 uses
  %i.d = getelementptr inbounds nuw [88 x i8], ptr %i.b, i64 %i.c ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !61   ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  br i1 %i.j, label %.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !61   ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef %i.d, ptr noundef %2)
  br label %.preheader

.preheader:                                       ; preds = %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !69
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !67   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64 ; 2 uses
  %i.s = load <2 x i32>, ptr %i.r, align 4, !tbaa !71
  %i.t = add <2 x i32> %i.s, splat (i32 -2)
  store <2 x i32> %i.t, ptr %i.r, align 4, !tbaa !71
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 72 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !71
  %i.w = add i32 %i.v, -2
  store i32 %i.w, ptr %i.u, align 4, !tbaa !71
  %i.x = shl i32 %i.p, 1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.ac = sext i32 %i.x to i64                    ; 3 uses
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !73  ; 4 uses
  %i.ae = load i32, ptr %i.z, align 4, !tbaa !71
  %i.af = load i32, ptr %i.aa, align 4, !tbaa !60 ; 3 uses
  %i.ag = zext i32 %i.ae to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ag ; 4 uses
  store i32 %i.af, ptr %i.ah, align 4, !tbaa !75
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !77 ; 2 uses
  %.not43.i = icmp eq i32 %i.aj, 0
  br i1 %.not43.i, label %_ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !77
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [88 x i8], ptr %i.q, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 64 ; 2 uses
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %bb.c, %.lr.ph.i
  %i.ap = phi i32 [ %i.be, %bb.c ], [ %i.af, %.lr.ph.i ]
  %i.aq = phi i32 [ %i.bd, %bb.c ], [ %i.aj, %.lr.ph.i ]
  %.03445.i.pn = phi ptr [ %.03445.i, %bb.c ], [ %i.ah, %.lr.ph.i ] ; 4 uses
  %.03445.i = getelementptr i8, ptr %.03445.i.pn, i64 8 ; 4 uses
  %i.ar = load i32, ptr %.03445.i, align 4, !tbaa !75 ; 2 uses
  %.not37.i = icmp ult i32 %i.ap, %i.ar
  %.pre48.pre49.pre53.pre57.pre61.pre.pre68 = load ptr, ptr %i.a, align 8, !tbaa !67 ; 2 uses
  br i1 %.not37.i, label %_ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb.exit.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.i
  %i.as = zext i32 %i.aq to i64
  %i.at = getelementptr inbounds nuw [88 x i8], ptr %.pre48.pre49.pre53.pre57.pre61.pre.pre68, i64 %i.as
  %i.au = and i32 %i.ar, 1
  %.not38.i = icmp eq i32 %i.au, 0
  %..i = select i1 %.not38.i, i64 52, i64 64
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %..i ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !71
  %i.ax = add i32 %i.aw, -1
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !71
  %i.ay = load i32, ptr %i.ao, align 4, !tbaa !71
  %i.az = add i32 %i.ay, 1
  store i32 %i.az, ptr %i.ao, align 4, !tbaa !71
  %i.ba = load i64, ptr %.03445.i.pn, align 4     ; 2 uses
  %i.bb = load i64, ptr %.03445.i, align 4
  store i64 %i.bb, ptr %.03445.i.pn, align 4
  store i64 %i.ba, ptr %.03445.i, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %.03445.i.pn, i64 20
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !77 ; 2 uses
  %.not.i = icmp eq i32 %i.bd, 0
  %i.be = trunc i64 %i.ba to i32
  br i1 %.not.i, label %._ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb.exit.loopexit_crit_edge, label %.lr.ph.split.i, !llvm.loop !128

._ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb.exit.loopexit_crit_edge: ; preds = %bb.c
  %.pre48.pre49.pre53.pre57.pre61.pre.pre = load ptr, ptr %i.a, align 8, !tbaa !67
  br label %_ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb.exit.loopexit, !llvm.loop !128

_ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb.exit.loopexit: ; preds = %.lr.ph.split.i, %._ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb.exit.loopexit_crit_edge
  %.pre48.pre49.pre53.pre57.pre61.pre = phi ptr [ %.pre48.pre49.pre53.pre57.pre61.pre.pre, %._ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb.exit.loopexit_crit_edge ], [ %.pre48.pre49.pre53.pre57.pre61.pre.pre68, %.lr.ph.split.i ]
  %.pre = load i32, ptr %i.aa, align 4, !tbaa !60
  %.pre36 = load ptr, ptr %i.y, align 8, !tbaa !73
  br label %_ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb.exit

_ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb.exit: ; preds = %_ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb.exit.loopexit, %.preheader
  %.pre48.pre49.pre53.pre57.pre61 = phi ptr [ %.pre48.pre49.pre53.pre57.pre61.pre, %_ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb.exit.loopexit ], [ %i.q, %.preheader ] ; 2 uses
  %i.bf = phi ptr [ %.pre36, %_ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb.exit.loopexit ], [ %i.ad, %.preheader ]
  %i.bg = phi i32 [ %.pre, %_ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb.exit.loopexit ], [ %i.af, %.preheader ] ; 2 uses
  %i.bh = load i32, ptr %i.ab, align 4, !tbaa !71
  %i.bi = zext i32 %i.bh to i64                   ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.bi
  store i32 %i.bg, ptr %i.bj, align 4, !tbaa !75
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bi ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !77 ; 2 uses
  %.not45.i = icmp eq i32 %i.bm, 0
  br i1 %.not45.i, label %_ZN20btAxisSweep3InternalIjE9sortMinUpEijP12btDispatcherb.exit, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %_ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !77
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [88 x i8], ptr %.pre48.pre49.pre53.pre57.pre61, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 52 ; 2 uses
  %.pre37 = load i32, ptr %i.bk, align 4, !tbaa !75
  br label %.lr.ph.split.i29

.lr.ph.split.i29:                                 ; preds = %bb.d, %.lr.ph.i28
  %i.bs = phi i32 [ %i.ch, %bb.d ], [ %.pre37, %.lr.ph.i28 ]
  %i.bt = phi i32 [ %i.cg, %bb.d ], [ %i.bm, %.lr.ph.i28 ]
  %.03647.i.pn = phi ptr [ %.03647.i, %bb.d ], [ %i.bk, %.lr.ph.i28 ] ; 4 uses
  %.03647.i = getelementptr i8, ptr %.03647.i.pn, i64 8 ; 4 uses
  %i.bu = load i32, ptr %.03647.i, align 4, !tbaa !75 ; 2 uses
  %.not39.i = icmp ult i32 %i.bs, %i.bu
  %.pre48.pre49.pre53.pre57.pre.pre66 = load ptr, ptr %i.a, align 8, !tbaa !67 ; 2 uses
  br i1 %.not39.i, label %_ZN20btAxisSweep3InternalIjE9sortMinUpEijP12btDispatcherb.exit.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.i29
  %i.bv = zext i32 %i.bt to i64
  %i.bw = getelementptr inbounds nuw [88 x i8], ptr %.pre48.pre49.pre53.pre57.pre.pre66, i64 %i.bv
  %i.bx = and i32 %i.bu, 1
  %.not40.i = icmp eq i32 %i.bx, 0
  %..i30 = select i1 %.not40.i, i64 52, i64 64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 %..i30 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !71
  %i.ca = add i32 %i.bz, -1
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !71
  %i.cb = load i32, ptr %i.br, align 4, !tbaa !71
  %i.cc = add i32 %i.cb, 1
  store i32 %i.cc, ptr %i.br, align 4, !tbaa !71
  %i.cd = load i64, ptr %.03647.i.pn, align 4     ; 2 uses
  %i.ce = load i64, ptr %.03647.i, align 4
  store i64 %i.ce, ptr %.03647.i.pn, align 4
  store i64 %i.cd, ptr %.03647.i, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %.03647.i.pn, i64 20
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !77 ; 2 uses
  %.not.i31 = icmp eq i32 %i.cg, 0
  %i.ch = trunc i64 %i.cd to i32
  br i1 %.not.i31, label %._ZN20btAxisSweep3InternalIjE9sortMinUpEijP12btDispatcherb.exit.loopexit_crit_edge, label %.lr.ph.split.i29, !llvm.loop !129

._ZN20btAxisSweep3InternalIjE9sortMinUpEijP12btDispatcherb.exit.loopexit_crit_edge: ; preds = %bb.d
  %.pre48.pre49.pre53.pre57.pre.pre = load ptr, ptr %i.a, align 8, !tbaa !67
  br label %_ZN20btAxisSweep3InternalIjE9sortMinUpEijP12btDispatcherb.exit.loopexit, !llvm.loop !129

_ZN20btAxisSweep3InternalIjE9sortMinUpEijP12btDispatcherb.exit.loopexit: ; preds = %.lr.ph.split.i29, %._ZN20btAxisSweep3InternalIjE9sortMinUpEijP12btDispatcherb.exit.loopexit_crit_edge
  %.pre48.pre49.pre53.pre57.pre = phi ptr [ %.pre48.pre49.pre53.pre57.pre.pre, %._ZN20btAxisSweep3InternalIjE9sortMinUpEijP12btDispatcherb.exit.loopexit_crit_edge ], [ %.pre48.pre49.pre53.pre57.pre.pre66, %.lr.ph.split.i29 ]
  %.pre38 = load i32, ptr %i.aa, align 4, !tbaa !60
  br label %_ZN20btAxisSweep3InternalIjE9sortMinUpEijP12btDispatcherb.exit

_ZN20btAxisSweep3InternalIjE9sortMinUpEijP12btDispatcherb.exit: ; preds = %_ZN20btAxisSweep3InternalIjE9sortMinUpEijP12btDispatcherb.exit.loopexit, %_ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb.exit
  %.pre48.pre49.pre53.pre57 = phi ptr [ %.pre48.pre49.pre53.pre57.pre, %_ZN20btAxisSweep3InternalIjE9sortMinUpEijP12btDispatcherb.exit.loopexit ], [ %.pre48.pre49.pre53.pre57.pre61, %_ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb.exit ] ; 2 uses
  %i.ci = phi i32 [ %.pre38, %_ZN20btAxisSweep3InternalIjE9sortMinUpEijP12btDispatcherb.exit.loopexit ], [ %i.bg, %_ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb.exit ] ; 4 uses
  %i.cj = getelementptr [8 x i8], ptr %i.ad, i64 %i.ac ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 -8
  %i.cl = getelementptr i8, ptr %i.cj, i64 -4
  store i32 0, ptr %i.cl, align 4, !tbaa !77
  store i32 %i.ci, ptr %i.ck, align 4, !tbaa !75
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !73 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !71
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.cq ; 4 uses
  store i32 %i.ci, ptr %i.cr, align 4, !tbaa !75
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !77 ; 2 uses
  %.not43.i.1 = icmp eq i32 %i.ct, 0
  br i1 %.not43.i.1, label %_ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb.exit.1, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %_ZN20btAxisSweep3InternalIjE9sortMinUpEijP12btDispatcherb.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !77
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [88 x i8], ptr %.pre48.pre49.pre53.pre57, i64 %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 68 ; 2 uses
  br label %.lr.ph.split.i.1

.lr.ph.split.i.1:                                 ; preds = %bb.e, %.lr.ph.i.1
  %i.cz = phi i32 [ %i.dp, %bb.e ], [ %i.ci, %.lr.ph.i.1 ]
  %i.da = phi i32 [ %i.do, %bb.e ], [ %i.ct, %.lr.ph.i.1 ]
  %.03445.i.pn.1 = phi ptr [ %.03445.i.1, %bb.e ], [ %i.cr, %.lr.ph.i.1 ] ; 4 uses
  %.03445.i.1 = getelementptr i8, ptr %.03445.i.pn.1, i64 8 ; 4 uses
  %i.db = load i32, ptr %.03445.i.1, align 4, !tbaa !75 ; 2 uses
  %.not37.i.1 = icmp ult i32 %i.cz, %i.db
  %.pre48.pre49.pre53.pre.pre63 = load ptr, ptr %i.a, align 8, !tbaa !67 ; 2 uses
  br i1 %.not37.i.1, label %_ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb.exit.loopexit.1, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.i.1
  %i.dc = zext i32 %i.da to i64
  %i.dd = getelementptr inbounds nuw [88 x i8], ptr %.pre48.pre49.pre53.pre.pre63, i64 %i.dc
  %i.de = and i32 %i.db, 1
  %.not38.i.1 = icmp eq i32 %i.de, 0
  %i.df = select i1 %.not38.i.1, i64 56, i64 68
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.df ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !71
  %i.di = add i32 %i.dh, -1
  store i32 %i.di, ptr %i.dg, align 4, !tbaa !71
  %i.dj = load i32, ptr %i.cy, align 4, !tbaa !71
  %i.dk = add i32 %i.dj, 1
  store i32 %i.dk, ptr %i.cy, align 4, !tbaa !71
  %i.dl = load i64, ptr %.03445.i.pn.1, align 4   ; 2 uses
  %i.dm = load i64, ptr %.03445.i.1, align 4
  store i64 %i.dm, ptr %.03445.i.pn.1, align 4
  store i64 %i.dl, ptr %.03445.i.1, align 4
  %i.dn = getelementptr inbounds nuw i8, ptr %.03445.i.pn.1, i64 20
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !77 ; 2 uses
  %.not.i.1 = icmp eq i32 %i.do, 0
  %i.dp = trunc i64 %i.dl to i32
  br i1 %.not.i.1, label %._ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb.exit.loopexit.1_crit_edge, label %.lr.ph.split.i.1, !llvm.loop !128

._ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb.exit.loopexit.1_crit_edge: ; preds = %bb.e
  %.pre48.pre49.pre53.pre.pre = load ptr, ptr %i.a, align 8, !tbaa !67
  br label %_ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb.exit.loopexit.1, !llvm.loop !128

_ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb.exit.loopexit.1: ; preds = %.lr.ph.split.i.1, %._ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb.exit.loopexit.1_crit_edge
  %.pre48.pre49.pre53.pre = phi ptr [ %.pre48.pre49.pre53.pre.pre, %._ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb.exit.loopexit.1_crit_edge ], [ %.pre48.pre49.pre53.pre.pre63, %.lr.ph.split.i.1 ]
  %.pre39 = load i32, ptr %i.aa, align 4, !tbaa !60
  %.pre40 = load ptr, ptr %i.cm, align 8, !tbaa !73
  br label %_ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb.exit.1

_ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb.exit.1: ; preds = %_ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb.exit.loopexit.1, %_ZN20btAxisSweep3InternalIjE9sortMinUpEijP12btDispatcherb.exit
  %.pre48.pre49.pre53 = phi ptr [ %.pre48.pre49.pre53.pre, %_ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb.exit.loopexit.1 ], [ %.pre48.pre49.pre53.pre57, %_ZN20btAxisSweep3InternalIjE9sortMinUpEijP12btDispatcherb.exit ] ; 2 uses
  %i.dq = phi ptr [ %.pre40, %_ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb.exit.loopexit.1 ], [ %i.cn, %_ZN20btAxisSweep3InternalIjE9sortMinUpEijP12btDispatcherb.exit ]
  %i.dr = phi i32 [ %.pre39, %_ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb.exit.loopexit.1 ], [ %i.ci, %_ZN20btAxisSweep3InternalIjE9sortMinUpEijP12btDispatcherb.exit ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !71
  %i.du = zext i32 %i.dt to i64                   ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.du
  store i32 %i.dr, ptr %i.dv, align 4, !tbaa !75
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.du ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 12
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !77 ; 2 uses
  %.not45.i.1 = icmp eq i32 %i.dy, 0
  br i1 %.not45.i.1, label %_ZN20btAxisSweep3InternalIjE9sortMinUpEijP12btDispatcherb.exit.1, label %.lr.ph.i28.1

.lr.ph.i28.1:                                     ; preds = %_ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb.exit.1
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !77
  %i.eb = zext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [88 x i8], ptr %.pre48.pre49.pre53, i64 %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 56 ; 2 uses
  %.pre41 = load i32, ptr %i.dw, align 4, !tbaa !75
  br label %.lr.ph.split.i29.1

.lr.ph.split.i29.1:                               ; preds = %bb.f, %.lr.ph.i28.1
  %i.ee = phi i32 [ %i.eu, %bb.f ], [ %.pre41, %.lr.ph.i28.1 ]
  %i.ef = phi i32 [ %i.et, %bb.f ], [ %i.dy, %.lr.ph.i28.1 ]
  %.03647.i.pn.1 = phi ptr [ %.03647.i.1, %bb.f ], [ %i.dw, %.lr.ph.i28.1 ] ; 4 uses
  %.03647.i.1 = getelementptr i8, ptr %.03647.i.pn.1, i64 8 ; 4 uses
  %i.eg = load i32, ptr %.03647.i.1, align 4, !tbaa !75 ; 2 uses
  %.not39.i.1 = icmp ult i32 %i.ee, %i.eg
  %.pre48.pre49.pre.pre59 = load ptr, ptr %i.a, align 8, !tbaa !67 ; 2 uses
  br i1 %.not39.i.1, label %_ZN20btAxisSweep3InternalIjE9sortMinUpEijP12btDispatcherb.exit.loopexit.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.i29.1
  %i.eh = zext i32 %i.ef to i64
  %i.ei = getelementptr inbounds nuw [88 x i8], ptr %.pre48.pre49.pre.pre59, i64 %i.eh
  %i.ej = and i32 %i.eg, 1
  %.not40.i.1 = icmp eq i32 %i.ej, 0
  %i.ek = select i1 %.not40.i.1, i64 56, i64 68
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ek ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !71
  %i.en = add i32 %i.em, -1
  store i32 %i.en, ptr %i.el, align 4, !tbaa !71
  %i.eo = load i32, ptr %i.ed, align 4, !tbaa !71
  %i.ep = add i32 %i.eo, 1
  store i32 %i.ep, ptr %i.ed, align 4, !tbaa !71
  %i.eq = load i64, ptr %.03647.i.pn.1, align 4   ; 2 uses
  %i.er = load i64, ptr %.03647.i.1, align 4
  store i64 %i.er, ptr %.03647.i.pn.1, align 4
  store i64 %i.eq, ptr %.03647.i.1, align 4
  %i.es = getelementptr inbounds nuw i8, ptr %.03647.i.pn.1, i64 20
  %i.et = load i32, ptr %i.es, align 4, !tbaa !77 ; 2 uses
  %.not.i31.1 = icmp eq i32 %i.et, 0
  %i.eu = trunc i64 %i.eq to i32
  br i1 %.not.i31.1, label %._ZN20btAxisSweep3InternalIjE9sortMinUpEijP12btDispatcherb.exit.loopexit.1_crit_edge, label %.lr.ph.split.i29.1, !llvm.loop !129

._ZN20btAxisSweep3InternalIjE9sortMinUpEijP12btDispatcherb.exit.loopexit.1_crit_edge: ; preds = %bb.f
  %.pre48.pre49.pre.pre = load ptr, ptr %i.a, align 8, !tbaa !67
  br label %_ZN20btAxisSweep3InternalIjE9sortMinUpEijP12btDispatcherb.exit.loopexit.1, !llvm.loop !129

_ZN20btAxisSweep3InternalIjE9sortMinUpEijP12btDispatcherb.exit.loopexit.1: ; preds = %.lr.ph.split.i29.1, %._ZN20btAxisSweep3InternalIjE9sortMinUpEijP12btDispatcherb.exit.loopexit.1_crit_edge
  %.pre48.pre49.pre = phi ptr [ %.pre48.pre49.pre.pre, %._ZN20btAxisSweep3InternalIjE9sortMinUpEijP12btDispatcherb.exit.loopexit.1_crit_edge ], [ %.pre48.pre49.pre.pre59, %.lr.ph.split.i29.1 ]
  %.pre42 = load i32, ptr %i.aa, align 4, !tbaa !60
  br label %_ZN20btAxisSweep3InternalIjE9sortMinUpEijP12btDispatcherb.exit.1

_ZN20btAxisSweep3InternalIjE9sortMinUpEijP12btDispatcherb.exit.1: ; preds = %_ZN20btAxisSweep3InternalIjE9sortMinUpEijP12btDispatcherb.exit.loopexit.1, %_ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb.exit.1
  %.pre48.pre49 = phi ptr [ %.pre48.pre49.pre, %_ZN20btAxisSweep3InternalIjE9sortMinUpEijP12btDispatcherb.exit.loopexit.1 ], [ %.pre48.pre49.pre53, %_ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb.exit.1 ] ; 2 uses
  %i.ev = phi i32 [ %.pre42, %_ZN20btAxisSweep3InternalIjE9sortMinUpEijP12btDispatcherb.exit.loopexit.1 ], [ %i.dr, %_ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb.exit.1 ] ; 4 uses
  %i.ew = getelementptr [8 x i8], ptr %i.cn, i64 %i.ac ; 2 uses
  %i.ex = getelementptr i8, ptr %i.ew, i64 -8
  %i.ey = getelementptr i8, ptr %i.ew, i64 -4
  store i32 0, ptr %i.ey, align 4, !tbaa !77
  store i32 %i.ev, ptr %i.ex, align 4, !tbaa !75
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !73 ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !71
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fd ; 4 uses
  store i32 %i.ev, ptr %i.fe, align 4, !tbaa !75
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 12
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !77 ; 2 uses
  %.not43.i.2 = icmp eq i32 %i.fg, 0
  br i1 %.not43.i.2, label %_ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb.exit.2, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %_ZN20btAxisSweep3InternalIjE9sortMinUpEijP12btDispatcherb.exit.1
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !77
  %i.fj = zext i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [88 x i8], ptr %.pre48.pre49, i64 %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 72 ; 2 uses
  br label %.lr.ph.split.i.2

.lr.ph.split.i.2:                                 ; preds = %bb.g, %.lr.ph.i.2
  %i.fm = phi i32 [ %i.gc, %bb.g ], [ %i.ev, %.lr.ph.i.2 ]
  %i.fn = phi i32 [ %i.gb, %bb.g ], [ %i.fg, %.lr.ph.i.2 ]
  %.03445.i.pn.2 = phi ptr [ %.03445.i.2, %bb.g ], [ %i.fe, %.lr.ph.i.2 ] ; 4 uses
  %.03445.i.2 = getelementptr i8, ptr %.03445.i.pn.2, i64 8 ; 4 uses
  %i.fo = load i32, ptr %.03445.i.2, align 4, !tbaa !75 ; 2 uses
  %.not37.i.2 = icmp ult i32 %i.fm, %i.fo
  %.pre48.pre.pre55 = load ptr, ptr %i.a, align 8, !tbaa !67 ; 2 uses
  br i1 %.not37.i.2, label %_ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb.exit.loopexit.2, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.i.2
  %i.fp = zext i32 %i.fn to i64
  %i.fq = getelementptr inbounds nuw [88 x i8], ptr %.pre48.pre.pre55, i64 %i.fp
  %i.fr = and i32 %i.fo, 1
  %.not38.i.2 = icmp eq i32 %i.fr, 0
  %i.fs = select i1 %.not38.i.2, i64 60, i64 72
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fs ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !71
  %i.fv = add i32 %i.fu, -1
  store i32 %i.fv, ptr %i.ft, align 4, !tbaa !71
  %i.fw = load i32, ptr %i.fl, align 4, !tbaa !71
  %i.fx = add i32 %i.fw, 1
  store i32 %i.fx, ptr %i.fl, align 4, !tbaa !71
  %i.fy = load i64, ptr %.03445.i.pn.2, align 4   ; 2 uses
  %i.fz = load i64, ptr %.03445.i.2, align 4
  store i64 %i.fz, ptr %.03445.i.pn.2, align 4
  store i64 %i.fy, ptr %.03445.i.2, align 4
  %i.ga = getelementptr inbounds nuw i8, ptr %.03445.i.pn.2, i64 20
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !77 ; 2 uses
  %.not.i.2 = icmp eq i32 %i.gb, 0
  %i.gc = trunc i64 %i.fy to i32
  br i1 %.not.i.2, label %._ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb.exit.loopexit.2_crit_edge, label %.lr.ph.split.i.2, !llvm.loop !128

._ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb.exit.loopexit.2_crit_edge: ; preds = %bb.g
  %.pre48.pre.pre = load ptr, ptr %i.a, align 8, !tbaa !67
  br label %_ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb.exit.loopexit.2, !llvm.loop !128

_ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb.exit.loopexit.2: ; preds = %.lr.ph.split.i.2, %._ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb.exit.loopexit.2_crit_edge
  %.pre48.pre = phi ptr [ %.pre48.pre.pre, %._ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb.exit.loopexit.2_crit_edge ], [ %.pre48.pre.pre55, %.lr.ph.split.i.2 ]
  %.pre43 = load i32, ptr %i.aa, align 4, !tbaa !60
  %.pre44 = load ptr, ptr %i.ez, align 8, !tbaa !73
  br label %_ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb.exit.2

_ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb.exit.2: ; preds = %_ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb.exit.loopexit.2, %_ZN20btAxisSweep3InternalIjE9sortMinUpEijP12btDispatcherb.exit.1
  %.pre48 = phi ptr [ %.pre48.pre, %_ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb.exit.loopexit.2 ], [ %.pre48.pre49, %_ZN20btAxisSweep3InternalIjE9sortMinUpEijP12btDispatcherb.exit.1 ] ; 2 uses
  %i.gd = phi ptr [ %.pre44, %_ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb.exit.loopexit.2 ], [ %i.fa, %_ZN20btAxisSweep3InternalIjE9sortMinUpEijP12btDispatcherb.exit.1 ]
  %i.ge = phi i32 [ %.pre43, %_ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb.exit.loopexit.2 ], [ %i.ev, %_ZN20btAxisSweep3InternalIjE9sortMinUpEijP12btDispatcherb.exit.1 ] ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !71
  %i.gh = zext i32 %i.gg to i64                   ; 2 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.gh
  store i32 %i.ge, ptr %i.gi, align 4, !tbaa !75
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %i.gh ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 12
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !77 ; 2 uses
  %.not45.i.2 = icmp eq i32 %i.gl, 0
  br i1 %.not45.i.2, label %_ZN20btAxisSweep3InternalIjE9sortMinUpEijP12btDispatcherb.exit.2, label %.lr.ph.i28.2

.lr.ph.i28.2:                                     ; preds = %_ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb.exit.2
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !77
  %i.go = zext i32 %i.gn to i64
  %i.gp = getelementptr inbounds nuw [88 x i8], ptr %.pre48, i64 %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 60 ; 2 uses
  %.pre45 = load i32, ptr %i.gj, align 4, !tbaa !75
  br label %.lr.ph.split.i29.2

.lr.ph.split.i29.2:                               ; preds = %bb.h, %.lr.ph.i28.2
  %i.gr = phi i32 [ %i.hh, %bb.h ], [ %.pre45, %.lr.ph.i28.2 ]
  %i.gs = phi i32 [ %i.hg, %bb.h ], [ %i.gl, %.lr.ph.i28.2 ]
  %.03647.i.pn.2 = phi ptr [ %.03647.i.2, %bb.h ], [ %i.gj, %.lr.ph.i28.2 ] ; 4 uses
  %.03647.i.2 = getelementptr i8, ptr %.03647.i.pn.2, i64 8 ; 4 uses
  %i.gt = load i32, ptr %.03647.i.2, align 4, !tbaa !75 ; 2 uses
  %.not39.i.2 = icmp ult i32 %i.gr, %i.gt
  %.pre47.pre51 = load ptr, ptr %i.a, align 8, !tbaa !67 ; 2 uses
  br i1 %.not39.i.2, label %_ZN20btAxisSweep3InternalIjE9sortMinUpEijP12btDispatcherb.exit.loopexit.2, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.i29.2
  %i.gu = zext i32 %i.gs to i64
  %i.gv = getelementptr inbounds nuw [88 x i8], ptr %.pre47.pre51, i64 %i.gu
  %i.gw = and i32 %i.gt, 1
  %.not40.i.2 = icmp eq i32 %i.gw, 0
  %i.gx = select i1 %.not40.i.2, i64 60, i64 72
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.gx ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !71
  %i.ha = add i32 %i.gz, -1
  store i32 %i.ha, ptr %i.gy, align 4, !tbaa !71
  %i.hb = load i32, ptr %i.gq, align 4, !tbaa !71
  %i.hc = add i32 %i.hb, 1
  store i32 %i.hc, ptr %i.gq, align 4, !tbaa !71
  %i.hd = load i64, ptr %.03647.i.pn.2, align 4   ; 2 uses
  %i.he = load i64, ptr %.03647.i.2, align 4
  store i64 %i.he, ptr %.03647.i.pn.2, align 4
  store i64 %i.hd, ptr %.03647.i.2, align 4
  %i.hf = getelementptr inbounds nuw i8, ptr %.03647.i.pn.2, i64 20
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !77 ; 2 uses
  %.not.i31.2 = icmp eq i32 %i.hg, 0
  %i.hh = trunc i64 %i.hd to i32
  br i1 %.not.i31.2, label %._ZN20btAxisSweep3InternalIjE9sortMinUpEijP12btDispatcherb.exit.loopexit.2_crit_edge, label %.lr.ph.split.i29.2, !llvm.loop !129

._ZN20btAxisSweep3InternalIjE9sortMinUpEijP12btDispatcherb.exit.loopexit.2_crit_edge: ; preds = %bb.h
  %.pre47.pre = load ptr, ptr %i.a, align 8, !tbaa !67
  br label %_ZN20btAxisSweep3InternalIjE9sortMinUpEijP12btDispatcherb.exit.loopexit.2, !llvm.loop !129

_ZN20btAxisSweep3InternalIjE9sortMinUpEijP12btDispatcherb.exit.loopexit.2: ; preds = %.lr.ph.split.i29.2, %._ZN20btAxisSweep3InternalIjE9sortMinUpEijP12btDispatcherb.exit.loopexit.2_crit_edge
  %.pre47 = phi ptr [ %.pre47.pre, %._ZN20btAxisSweep3InternalIjE9sortMinUpEijP12btDispatcherb.exit.loopexit.2_crit_edge ], [ %.pre47.pre51, %.lr.ph.split.i29.2 ]
  %.pre46 = load i32, ptr %i.aa, align 4, !tbaa !60
  br label %_ZN20btAxisSweep3InternalIjE9sortMinUpEijP12btDispatcherb.exit.2

_ZN20btAxisSweep3InternalIjE9sortMinUpEijP12btDispatcherb.exit.2: ; preds = %_ZN20btAxisSweep3InternalIjE9sortMinUpEijP12btDispatcherb.exit.loopexit.2, %_ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb.exit.2
  %i.hi = phi ptr [ %.pre47, %_ZN20btAxisSweep3InternalIjE9sortMinUpEijP12btDispatcherb.exit.loopexit.2 ], [ %.pre48, %_ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb.exit.2 ]
  %i.hj = phi i32 [ %.pre46, %_ZN20btAxisSweep3InternalIjE9sortMinUpEijP12btDispatcherb.exit.loopexit.2 ], [ %i.ge, %_ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb.exit.2 ]
  %i.hk = getelementptr [8 x i8], ptr %i.fa, i64 %i.ac ; 2 uses
  %i.hl = getelementptr i8, ptr %i.hk, i64 -8
  %i.hm = getelementptr i8, ptr %i.hk, i64 -4
  store i32 0, ptr %i.hm, align 4, !tbaa !77
  store i32 %i.hj, ptr %i.hl, align 4, !tbaa !75
  %i.hn = getelementptr inbounds nuw [88 x i8], ptr %i.hi, i64 %i.c
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !70
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 52
  store i32 %i.hp, ptr %i.hq, align 4, !tbaa !71
  store i32 %1, ptr %i.ho, align 8, !tbaa !70
  %i.hr = load i32, ptr %i.o, align 8, !tbaa !69
  %i.hs = add i32 %i.hr, -1
  store i32 %i.hs, ptr %i.o, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = sext i32 %1 to i64                       ; 4 uses
  %i.c = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73
  %i.e = zext i32 %2 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.e ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !77   ; 3 uses
  %.not43 = icmp eq i32 %i.i, 0
  br i1 %.not43, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.03442 = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !67
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !77
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [88 x i8], ptr %i.j, i64 %i.m ; 2 uses
  %i.o = shl nuw i32 1, %1
  %i.p = and i32 %i.o, 3                          ; 2 uses
  %i.q = shl nuw nsw i32 1, %i.p
  %i.r = and i32 %i.q, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 64 ; 3 uses
  %i.t = zext nneg i32 %i.p to i64                ; 4 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 52 ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.t
  %i.x = zext nneg i32 %i.r to i64                ; 4 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.x
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.b ; 4 uses
  br i1 %4, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us
  %i.ad = phi i32 [ %i.bz, %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us ], [ %i.i, %.lr.ph ]
  %.03445.us = phi ptr [ %.034.us, %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us ], [ %.03442, %.lr.ph ] ; 5 uses
  %.044.us = phi ptr [ %i.bx, %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us ], [ %i.f, %.lr.ph ] ; 5 uses
  %i.ae = load i32, ptr %.044.us, align 4, !tbaa !75
  %i.af = load i32, ptr %.03445.us, align 4, !tbaa !75 ; 2 uses
  %.not37.us = icmp ult i32 %i.ae, %i.af
  br i1 %.not37.us, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !67  ; 2 uses
  %i.ah = zext i32 %i.ad to i64
  %i.ai = getelementptr inbounds nuw [88 x i8], ptr %i.ag, i64 %i.ah ; 5 uses
  %i.aj = and i32 %i.af, 1
  %.not38.us = icmp eq i32 %i.aj, 0
  br i1 %.not38.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  br label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us

bb.d:                                             ; preds = %bb.b
  %i.al = load i32, ptr %i.u, align 4, !tbaa !71
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 52 ; 8 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.t
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !71
  %i.ap = icmp ult i32 %i.al, %i.ao
  br i1 %i.ap, label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 64 ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.t
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !71
  %i.at = load i32, ptr %i.w, align 4, !tbaa !71
  %i.au = icmp ult i32 %i.as, %i.at
  br i1 %i.au, label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = load i32, ptr %i.y, align 4, !tbaa !71
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.x
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !71
  %i.ay = icmp ult i32 %i.av, %i.ax
  br i1 %i.ay, label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us

_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us: ; preds = %bb.f
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.x
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !71
  %i.bb = load i32, ptr %i.z, align 4, !tbaa !71
  %.not41.us = icmp ult i32 %i.ba, %i.bb
  br i1 %.not41.us, label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %bb.g

bb.g:                                             ; preds = %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us
  %i.bc = getelementptr inbounds nuw i8, ptr %.044.us, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !77
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [88 x i8], ptr %i.ag, i64 %i.be ; 2 uses
  %i.bg = load ptr, ptr %i.aa, align 8, !tbaa !61 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !9
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = tail call noundef ptr %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef %i.bf, ptr noundef nonnull %i.ai) ; 0 uses
  %i.bl = load ptr, ptr %i.ab, align 8, !tbaa !62 ; 3 uses
  %.not39.us = icmp eq ptr %i.bl, null
  br i1 %.not39.us, label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !9
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = tail call noundef ptr %i.bo(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.ai) ; 0 uses
  br label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us

_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us: ; preds = %bb.d, %bb.e, %bb.f, %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us, %bb.g, %bb.h, %bb.c
  %.sink56 = phi ptr [ %i.ak, %bb.c ], [ %i.am, %bb.h ], [ %i.am, %bb.g ], [ %i.am, %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us ], [ %i.am, %bb.f ], [ %i.am, %bb.e ], [ %i.am, %bb.d ]
  %i.bq = getelementptr inbounds [4 x i8], ptr %.sink56, i64 %i.b ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !71
  %i.bs = add i32 %i.br, -1
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !71
  %i.bt = load i32, ptr %i.ac, align 4, !tbaa !71
  %i.bu = add i32 %i.bt, 1
  store i32 %i.bu, ptr %i.ac, align 4, !tbaa !71
  %i.bv = load i64, ptr %.044.us, align 4
  %i.bw = load i64, ptr %.03445.us, align 4
  store i64 %i.bw, ptr %.044.us, align 4
  store i64 %i.bv, ptr %.03445.us, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %.044.us, i64 8
  %.034.us = getelementptr inbounds nuw i8, ptr %.03445.us, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %.03445.us, i64 12
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !77 ; 2 uses
  %.not.us = icmp eq i32 %i.bz, 0
  br i1 %.not.us, label %.critedge, label %.lr.ph.split.us, !llvm.loop !128

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.i
  %i.ca = phi i32 [ %i.cr, %bb.i ], [ %i.i, %.lr.ph ]
  %.03445 = phi ptr [ %.034, %bb.i ], [ %.03442, %.lr.ph ] ; 5 uses
  %.044 = phi ptr [ %i.cp, %bb.i ], [ %i.f, %.lr.ph ] ; 4 uses
  %i.cb = load i32, ptr %.044, align 4, !tbaa !75
  %i.cc = load i32, ptr %.03445, align 4, !tbaa !75 ; 2 uses
  %.not37 = icmp ult i32 %i.cb, %i.cc
  br i1 %.not37, label %.critedge, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split
  %i.cd = load ptr, ptr %i.g, align 8, !tbaa !67
  %i.ce = zext i32 %i.ca to i64
  %i.cf = getelementptr inbounds nuw [88 x i8], ptr %i.cd, i64 %i.ce
  %i.cg = and i32 %i.cc, 1
  %.not38 = icmp eq i32 %i.cg, 0
  %. = select i1 %.not38, i64 52, i64 64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.b ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !71
  %i.ck = add i32 %i.cj, -1
  store i32 %i.ck, ptr %i.ci, align 4, !tbaa !71
  %i.cl = load i32, ptr %i.ac, align 4, !tbaa !71
  %i.cm = add i32 %i.cl, 1
  store i32 %i.cm, ptr %i.ac, align 4, !tbaa !71
  %i.cn = load i64, ptr %.044, align 4
  %i.co = load i64, ptr %.03445, align 4
  store i64 %i.co, ptr %.044, align 4
  store i64 %i.cn, ptr %.03445, align 4
  %i.cp = getelementptr inbounds nuw i8, ptr %.044, i64 8
  %.034 = getelementptr inbounds nuw i8, ptr %.03445, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %.03445, i64 12
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !77 ; 2 uses
  %.not = icmp eq i32 %i.cr, 0
  br i1 %.not, label %.critedge, label %.lr.ph.split, !llvm.loop !128

.critedge:                                        ; preds = %.lr.ph.split, %bb.i, %.lr.ph.split.us, %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN20btAxisSweep3InternalIjE9sortMinUpEijP12btDispatcherb(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = sext i32 %1 to i64                       ; 4 uses
  %i.c = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73
  %i.e = zext i32 %2 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.e ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !77   ; 3 uses
  %.not45 = icmp eq i32 %i.i, 0
  br i1 %.not45, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.03644 = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !67
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !77
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [88 x i8], ptr %i.j, i64 %i.m
  %i.o = shl nuw i32 1, %1
  %i.p = and i32 %i.o, 3                          ; 2 uses
  %i.q = shl nuw nsw i32 1, %i.p
  %i.r = and i32 %i.q, 3
  %i.s = zext nneg i32 %i.p to i64                ; 4 uses
  %i.t = zext nneg i32 %i.r to i64                ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 52
  %i.x = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.b ; 4 uses
  br i1 %4, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us
  %i.y = phi i32 [ %i.ca, %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us ], [ %i.i, %.lr.ph ]
  %.03647.us = phi ptr [ %.036.us, %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us ], [ %.03644, %.lr.ph ] ; 5 uses
  %.046.us = phi ptr [ %i.by, %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us ], [ %i.f, %.lr.ph ] ; 5 uses
  %i.z = load i32, ptr %.046.us, align 4, !tbaa !75
  %i.aa = load i32, ptr %.03647.us, align 4, !tbaa !75 ; 2 uses
  %.not39.us = icmp ult i32 %i.z, %i.aa
  br i1 %.not39.us, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !67  ; 2 uses
  %i.ac = zext i32 %i.y to i64
  %i.ad = getelementptr inbounds nuw [88 x i8], ptr %i.ab, i64 %i.ac ; 5 uses
  %i.ae = and i32 %i.aa, 1
  %.not40.us = icmp eq i32 %i.ae, 0
  br i1 %.not40.us, label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %.046.us, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !77
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [88 x i8], ptr %i.ab, i64 %i.ah ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 64 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.s
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !71
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 52 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.s
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !71
  %i.ap = icmp ult i32 %i.al, %i.ao
  br i1 %i.ap, label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 64 ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.s
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !71
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 52 ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.s
  %i.av = load i32, ptr %i.au, align 4, !tbaa !71
  %i.aw = icmp ult i32 %i.as, %i.av
  br i1 %i.aw, label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.t
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !71
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.t
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !71
  %i.bb = icmp ult i32 %i.ay, %i.ba
  br i1 %i.bb, label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us

_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us: ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.t
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !71
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.t
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !71
  %.not43.us = icmp ult i32 %i.bd, %i.bf
  br i1 %.not43.us, label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %bb.f

bb.f:                                             ; preds = %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us
  %i.bg = load ptr, ptr %i.u, align 8, !tbaa !61  ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !9
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = tail call noundef ptr %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.ad, ptr noundef %3) ; 0 uses
  %i.bl = load ptr, ptr %i.v, align 8, !tbaa !62  ; 3 uses
  %.not41.us = icmp eq ptr %i.bl, null
  br i1 %.not41.us, label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !9
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = tail call noundef ptr %i.bo(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.ad, ptr noundef %3) ; 0 uses
  br label %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us

_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us, %bb.f, %bb.g
  %.sink = phi i64 [ 64, %bb.c ], [ 64, %bb.g ], [ 64, %bb.f ], [ 64, %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.us ], [ 64, %bb.e ], [ 64, %bb.d ], [ 52, %bb.b ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.sink
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.b ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !71
  %i.bt = add i32 %i.bs, -1
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !71
  %i.bu = load i32, ptr %i.x, align 4, !tbaa !71
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.x, align 4, !tbaa !71
  %i.bw = load i64, ptr %.046.us, align 4
  %i.bx = load i64, ptr %.03647.us, align 4
  store i64 %i.bx, ptr %.046.us, align 4
  store i64 %i.bw, ptr %.03647.us, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %.046.us, i64 8
  %.036.us = getelementptr inbounds nuw i8, ptr %.03647.us, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %.03647.us, i64 12
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !77 ; 2 uses
  %.not.us = icmp eq i32 %i.ca, 0
  br i1 %.not.us, label %.critedge, label %.lr.ph.split.us, !llvm.loop !129

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.h
  %i.cb = phi i32 [ %i.cs, %bb.h ], [ %i.i, %.lr.ph ]
  %.03647 = phi ptr [ %.036, %bb.h ], [ %.03644, %.lr.ph ] ; 5 uses
  %.046 = phi ptr [ %i.cq, %bb.h ], [ %i.f, %.lr.ph ] ; 4 uses
  %i.cc = load i32, ptr %.046, align 4, !tbaa !75
  %i.cd = load i32, ptr %.03647, align 4, !tbaa !75 ; 2 uses
  %.not39 = icmp ult i32 %i.cc, %i.cd
  br i1 %.not39, label %.critedge, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split
  %i.ce = load ptr, ptr %i.g, align 8, !tbaa !67
  %i.cf = zext i32 %i.cb to i64
  %i.cg = getelementptr inbounds nuw [88 x i8], ptr %i.ce, i64 %i.cf
  %i.ch = and i32 %i.cd, 1
  %.not40 = icmp eq i32 %i.ch, 0
  %. = select i1 %.not40, i64 52, i64 64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.b ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !71
  %i.cl = add i32 %i.ck, -1
  store i32 %i.cl, ptr %i.cj, align 4, !tbaa !71
  %i.cm = load i32, ptr %i.x, align 4, !tbaa !71
  %i.cn = add i32 %i.cm, 1
  store i32 %i.cn, ptr %i.x, align 4, !tbaa !71
  %i.co = load i64, ptr %.046, align 4
  %i.cp = load i64, ptr %.03647, align 4
  store i64 %i.cp, ptr %.046, align 4
  store i64 %i.co, ptr %.03647, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %.046, i64 8
  %.036 = getelementptr inbounds nuw i8, ptr %.03647, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %.03647, i64 12
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !77 ; 2 uses
  %.not = icmp eq i32 %i.cs, 0
  br i1 %.not, label %.critedge, label %.lr.ph.split, !llvm.loop !129

.critedge:                                        ; preds = %.lr.ph.split, %bb.h, %.lr.ph.split.us, %_ZN20btAxisSweep3InternalIjE13testOverlap2DEPKNS0_6HandleES3_ii.exit.thread.us, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN20btAxisSweep3InternalIjE12updateHandleEjRK9btVector3S3_P12btDispatcher(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [88 x i8], ptr %i.b, i64 %i.c ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load float, ptr %2, align 4, !tbaa !42
  %i.g = load float, ptr %i.e, align 8, !tbaa !42 ; 2 uses
  %i.h = fsub float %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.j = load float, ptr %i.i, align 4, !tbaa !42
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.l = load float, ptr %i.k, align 4, !tbaa !42 ; 2 uses
  %i.m = fsub float %i.j, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load float, ptr %i.n, align 4, !tbaa !42
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load float, ptr %i.p, align 8, !tbaa !42 ; 2 uses
  %i.r = fsub float %i.o, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load float, ptr %i.s, align 8, !tbaa !42 ; 2 uses
  %i.u = fmul float %i.h, %i.t                    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.w = load float, ptr %i.v, align 4, !tbaa !42 ; 2 uses
  %i.x = fmul float %i.m, %i.w                    ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.z = load float, ptr %i.y, align 8, !tbaa !42 ; 2 uses
  %i.aa = fmul float %i.r, %i.z                   ; 3 uses
  %i.ab = fcmp ugt float %i.u, 0.000000e+00
  br i1 %i.ab, label %.sink.split.i, label %bb.b

.sink.split.i:                                    ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !60 ; 2 uses
  %i.ae = uitofp i32 %i.ad to float
  %i.af = fcmp ult float %i.u, %i.ae
  %i.ag = fptoui float %i.u to i32
  %.sink34.i = select i1 %i.af, i32 %i.ag, i32 %i.ad
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !57
  %i.aj = and i32 %.sink34.i, %i.ai
  br label %bb.b

bb.b:                                             ; preds = %.sink.split.i, %bb.a
  %i.ak = phi i32 [ 0, %bb.a ], [ %i.aj, %.sink.split.i ] ; 2 uses
  %i.al = fcmp ugt float %i.x, 0.000000e+00
  br i1 %i.al, label %.sink.split35.i, label %bb.c

.sink.split35.i:                                  ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !60 ; 2 uses
  %i.ao = uitofp i32 %i.an to float
  %i.ap = fcmp ult float %i.x, %i.ao
  %i.aq = fptoui float %i.x to i32
  %.sink37.i = select i1 %i.ap, i32 %i.aq, i32 %i.an
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !57
  %i.at = and i32 %.sink37.i, %i.as
  br label %bb.c

bb.c:                                             ; preds = %.sink.split35.i, %bb.b
  %i.au = phi i32 [ 0, %bb.b ], [ %i.at, %.sink.split35.i ] ; 2 uses
  %i.av = fcmp ugt float %i.aa, 0.000000e+00
  br i1 %i.av, label %.sink.split38.i, label %_ZNK20btAxisSweep3InternalIjE8quantizeEPjRK9btVector3i.exit

.sink.split38.i:                                  ; preds = %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !60 ; 2 uses
  %i.ay = uitofp i32 %i.ax to float
  %i.az = fcmp ult float %i.aa, %i.ay
  %i.ba = fptoui float %i.aa to i32
  %.sink40.i = select i1 %i.az, i32 %i.ba, i32 %i.ax
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !57
  %i.bd = and i32 %.sink40.i, %i.bc
  br label %_ZNK20btAxisSweep3InternalIjE8quantizeEPjRK9btVector3i.exit

_ZNK20btAxisSweep3InternalIjE8quantizeEPjRK9btVector3i.exit: ; preds = %bb.c, %.sink.split38.i
  %i.be = phi i32 [ 0, %bb.c ], [ %i.bd, %.sink.split38.i ] ; 2 uses
  %i.bf = load float, ptr %3, align 4, !tbaa !42
  %i.bg = fsub float %i.bf, %i.g
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !42
  %i.bj = fsub float %i.bi, %i.l
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !42
  %i.bm = fsub float %i.bl, %i.q
  %i.bn = fmul float %i.t, %i.bg                  ; 3 uses
  %i.bo = fmul float %i.w, %i.bj                  ; 3 uses
  %i.bp = fmul float %i.z, %i.bm                  ; 3 uses
  %i.bq = fcmp ugt float %i.bn, 0.000000e+00
  br i1 %i.bq, label %.sink.split.i41, label %bb.d

.sink.split.i41:                                  ; preds = %_ZNK20btAxisSweep3InternalIjE8quantizeEPjRK9btVector3i.exit
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !60 ; 2 uses
  %i.bt = uitofp i32 %i.bs to float
  %i.bu = fcmp ult float %i.bn, %i.bt
  %i.bv = fptoui float %i.bn to i32
  %.sink34.i42 = select i1 %i.bu, i32 %i.bv, i32 %i.bs
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !57
  %i.by = and i32 %.sink34.i42, %i.bx
  %i.bz = or i32 %i.by, 1
  br label %bb.d

bb.d:                                             ; preds = %.sink.split.i41, %_ZNK20btAxisSweep3InternalIjE8quantizeEPjRK9btVector3i.exit
  %i.ca = phi i32 [ 1, %_ZNK20btAxisSweep3InternalIjE8quantizeEPjRK9btVector3i.exit ], [ %i.bz, %.sink.split.i41 ] ; 2 uses
  %i.cb = fcmp ugt float %i.bo, 0.000000e+00
  br i1 %i.cb, label %.sink.split35.i39, label %bb.e

.sink.split35.i39:                                ; preds = %bb.d
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !60 ; 2 uses
  %i.ce = uitofp i32 %i.cd to float
  %i.cf = fcmp ult float %i.bo, %i.ce
  %i.cg = fptoui float %i.bo to i32
  %.sink37.i40 = select i1 %i.cf, i32 %i.cg, i32 %i.cd
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !57
  %i.cj = and i32 %.sink37.i40, %i.ci
  %i.ck = or i32 %i.cj, 1
  br label %bb.e

bb.e:                                             ; preds = %.sink.split35.i39, %bb.d
  %i.cl = phi i32 [ 1, %bb.d ], [ %i.ck, %.sink.split35.i39 ] ; 2 uses
  %i.cm = fcmp ugt float %i.bp, 0.000000e+00
  br i1 %i.cm, label %.sink.split38.i37, label %_ZNK20btAxisSweep3InternalIjE8quantizeEPjRK9btVector3i.exit43

.sink.split38.i37:                                ; preds = %bb.e
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !60 ; 2 uses
  %i.cp = uitofp i32 %i.co to float
  %i.cq = fcmp ult float %i.bp, %i.cp
  %i.cr = fptoui float %i.bp to i32
  %.sink40.i38 = select i1 %i.cq, i32 %i.cr, i32 %i.co
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !57
  %i.cu = and i32 %.sink40.i38, %i.ct
  %i.cv = or i32 %i.cu, 1
  br label %_ZNK20btAxisSweep3InternalIjE8quantizeEPjRK9btVector3i.exit43

_ZNK20btAxisSweep3InternalIjE8quantizeEPjRK9btVector3i.exit43: ; preds = %bb.e, %.sink.split38.i37
  %i.cw = phi i32 [ 1, %bb.e ], [ %i.cv, %.sink.split38.i37 ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.cy = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.da = load i32, ptr %i.cx, align 4, !tbaa !71 ; 3 uses
  %i.db = load i32, ptr %i.cy, align 4, !tbaa !71 ; 3 uses
  %i.dc = load ptr, ptr %i.cz, align 8, !tbaa !73 ; 2 uses
  %i.dd = zext i32 %i.da to i64
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.dd ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !75
  %i.dg = sub nsw i32 %i.ak, %i.df                ; 2 uses
  %i.dh = zext i32 %i.db to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.dh ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !75
  %i.dk = sub nsw i32 %i.ca, %i.dj                ; 2 uses
  store i32 %i.ak, ptr %i.de, align 4, !tbaa !75
  store i32 %i.ca, ptr %i.di, align 4, !tbaa !75
  %i.dl = icmp slt i32 %i.dg, 0
  br i1 %i.dl, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK20btAxisSweep3InternalIjE8quantizeEPjRK9btVector3i.exit43
  tail call void @_ZN20btAxisSweep3InternalIjE11sortMinDownEijP12btDispatcherb(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef 0, i32 noundef %i.da, ptr noundef %4, i1 noundef zeroext true)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNK20btAxisSweep3InternalIjE8quantizeEPjRK9btVector3i.exit43
  %i.dm = icmp sgt i32 %i.dk, 0
  br i1 %i.dm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN20btAxisSweep3InternalIjE9sortMaxUpEijP12btDispatcherb(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef 0, i32 noundef %i.db, ptr noundef %4, i1 noundef zeroext true)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.dn = icmp sgt i32 %i.dg, 0
  br i1 %i.dn, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN20btAxisSweep3InternalIjE9sortMinUpEijP12btDispatcherb(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef 0, i32 noundef %i.da, ptr noundef %4, i1 noundef zeroext true)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.do = icmp slt i32 %i.dk, 0
  br i1 %i.do, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN20btAxisSweep3InternalIjE11sortMaxDownEijP12btDispatcherb(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef 0, i32 noundef %i.db, ptr noundef %4, i1 noundef zeroext true)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.dp = getelementptr inbounds nuw i8, ptr %i.d, i64 56
end_hunk_1
begin_hunk_2_@_ZN20btAxisSweep3InternalIjE12updateHandleEjRK9btVector3S3_P12btDispatcher:bb.a

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.eg = icmp slt i32 %i.ec, 0
  br i1 %i.eg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @_ZN20btAxisSweep3InternalIjE11sortMaxDownEijP12btDispatcherb(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef 1, i32 noundef %i.ds, ptr noundef %4, i1 noundef zeroext true)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.eh = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !71 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !71 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !73 ; 2 uses
  %i.en = zext i32 %i.ei to i64
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.en ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !75
  %i.eq = sub nsw i32 %i.be, %i.ep                ; 2 uses
  %i.er = zext i32 %i.ek to i64
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.er ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !75
  %i.eu = sub nsw i32 %i.cw, %i.et                ; 2 uses
  store i32 %i.be, ptr %i.eo, align 4, !tbaa !75
  store i32 %i.cw, ptr %i.es, align 4, !tbaa !75
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

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !8, i64 0}
!11 = !{!12, !14, i64 8}
!12 = !{!"_ZTS20btAxisSweep3InternalItE", !13, i64 0, !14, i64 8, !14, i64 10, !15, i64 12, !15, i64 28, !15, i64 44, !14, i64 60, !14, i64 62, !16, i64 64, !14, i64 72, !7, i64 80, !7, i64 104, !18, i64 128, !19, i64 136, !20, i64 144, !6, i64 148, !21, i64 152, !18, i64 160}
!13 = !{!"_ZTS21btBroadphaseInterface"}
!14 = !{!"short", !7, i64 0}
!15 = !{!"_ZTS9btVector3", !7, i64 0}
!16 = !{!"p1 _ZTSN20btAxisSweep3InternalItE6HandleE", !17, i64 0}
!17 = !{!"any pointer", !7, i64 0}
!18 = !{!"p1 _ZTS22btOverlappingPairCache", !17, i64 0}
!19 = !{!"p1 _ZTS25btOverlappingPairCallback", !17, i64 0}
!20 = !{!"bool", !7, i64 0}
!21 = !{!"p1 _ZTS16btDbvtBroadphase", !17, i64 0}
!22 = !{!12, !14, i64 10}
!23 = !{!12, !18, i64 128}
!24 = !{!12, !19, i64 136}
!25 = !{!12, !20, i64 144}
!26 = !{!12, !6, i64 148}
!27 = !{!12, !21, i64 152}
!28 = !{!29, !20, i64 24}
!29 = !{!"_ZTS20btAlignedObjectArrayI16btBroadphasePairE", !30, i64 0, !6, i64 4, !6, i64 8, !31, i64 16, !20, i64 24}
!30 = !{!"_ZTS18btAlignedAllocatorI16btBroadphasePairLj16EE"}
!31 = !{!"p1 _ZTS16btBroadphasePair", !17, i64 0}
!32 = !{!29, !6, i64 4}
!33 = !{!12, !18, i64 160}
!34 = !{!35, !20, i64 221}
!35 = !{!"_ZTS16btDbvtBroadphase", !13, i64 0, !7, i64 8, !7, i64 136, !18, i64 160, !36, i64 168, !6, i64 172, !6, i64 176, !6, i64 180, !6, i64 184, !6, i64 188, !6, i64 192, !6, i64 196, !6, i64 200, !36, i64 204, !6, i64 208, !6, i64 212, !6, i64 216, !20, i64 220, !20, i64 221, !20, i64 222, !37, i64 224}
!36 = !{!"float", !7, i64 0}
!37 = !{!"_ZTS20btAlignedObjectArrayIS_IPK10btDbvtNodeEE", !38, i64 0, !6, i64 4, !6, i64 8, !39, i64 16, !20, i64 24}
!38 = !{!"_ZTS18btAlignedAllocatorI20btAlignedObjectArrayIPK10btDbvtNodeELj16EE"}
!39 = !{!"p1 _ZTS20btAlignedObjectArrayIPK10btDbvtNodeE", !17, i64 0}
!40 = !{i64 0, i64 16, !41}
!41 = !{!7, !7, i64 0}
!42 = !{!36, !36, i64 0}
!43 = !{!12, !16, i64 64}
!44 = !{!12, !14, i64 62}
!45 = !{!12, !14, i64 60}
!46 = !{!12, !14, i64 72}
!47 = !{!48, !17, i64 0}
!48 = !{!"_ZTS17btBroadphaseProxy", !17, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !15, i64 20, !15, i64 36}
!49 = !{!14, !14, i64 0}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.unroll.disable"}
!52 = !{!17, !17, i64 0}
!53 = !{!54, !54, i64 0}
!54 = !{!"p1 _ZTSN20btAxisSweep3InternalItE4EdgeE", !17, i64 0}
!55 = distinct !{!55, !56}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!58, !6, i64 8}
!58 = !{!"_ZTS20btAxisSweep3InternalIjE", !13, i64 0, !6, i64 8, !6, i64 12, !15, i64 16, !15, i64 32, !15, i64 48, !6, i64 64, !6, i64 68, !59, i64 72, !6, i64 80, !7, i64 88, !7, i64 112, !18, i64 136, !19, i64 144, !20, i64 152, !6, i64 156, !21, i64 160, !18, i64 168}
!59 = !{!"p1 _ZTSN20btAxisSweep3InternalIjE6HandleE", !17, i64 0}
!60 = !{!58, !6, i64 12}
!61 = !{!58, !18, i64 136}
!62 = !{!58, !19, i64 144}
!63 = !{!58, !20, i64 152}
!64 = !{!58, !6, i64 156}
!65 = !{!58, !21, i64 160}
!66 = !{!58, !18, i64 168}
!67 = !{!58, !59, i64 72}
!68 = !{!58, !6, i64 68}
!69 = !{!58, !6, i64 64}
!70 = !{!58, !6, i64 80}
!71 = !{!6, !6, i64 0}
!72 = distinct !{!72, !51}
!73 = !{!74, !74, i64 0}
!74 = !{!"p1 _ZTSN20btAxisSweep3InternalIjE4EdgeE", !17, i64 0}
!75 = !{!76, !6, i64 0}
!76 = !{!"_ZTSN20btAxisSweep3InternalIjE4EdgeE", !6, i64 0, !6, i64 4}
!77 = !{!76, !6, i64 4}
!78 = distinct !{!78, !56}
!79 = !{i8 0, i8 2}
!80 = !{}
!81 = !{!82, !83, i64 64}
!82 = !{!"_ZTSN20btAxisSweep3InternalItE6HandleE", !48, i64 0, !7, i64 52, !7, i64 58, !83, i64 64}
!83 = !{!"p1 _ZTS17btBroadphaseProxy", !17, i64 0}
!84 = !{!48, !6, i64 16}
!85 = !{!86, !14, i64 0}
!86 = !{!"_ZTSN20btAxisSweep3InternalItE4EdgeE", !14, i64 0, !14, i64 2}
!87 = !{!86, !14, i64 2}
!88 = distinct !{!88, !56}
!89 = distinct !{!89, !56}
!90 = !{!29, !6, i64 8}
!91 = !{!29, !31, i64 16}
!92 = !{i64 0, i64 8, !93, i64 8, i64 8, !93, i64 16, i64 8, !94, i64 24, i64 8, !41}
!93 = !{!83, !83, i64 0}
!94 = !{!95, !95, i64 0}
!95 = !{!"p1 _ZTS20btCollisionAlgorithm", !17, i64 0}
!96 = distinct !{!96, !56}
!97 = distinct !{!97, !51}
!98 = distinct !{!98, !56}
!99 = !{!100, !83, i64 0}
!100 = !{!"_ZTS16btBroadphasePair", !83, i64 0, !83, i64 8, !95, i64 16, !7, i64 24}
!101 = distinct !{!101, !56}
!102 = distinct !{!102, !51}
!103 = distinct !{!103, !56}
!104 = !{!105, !83, i64 80}
!105 = !{!"_ZTSN20btAxisSweep3InternalIjE6HandleE", !48, i64 0, !7, i64 52, !7, i64 64, !83, i64 80}
!106 = distinct !{!106, !56}
!107 = distinct !{!107, !56}
!108 = distinct !{!108, !51}
!109 = distinct !{!109, !56}
!110 = distinct !{!110, !51}
!111 = distinct !{!111, !56}
!112 = !{ptr @_ZN15btNullPairCacheD2Ev}
!113 = !{!48, !6, i64 8}
!114 = !{!48, !6, i64 12}
!115 = distinct !{!115, !56}
!116 = distinct !{!116, !56}
!117 = !{ptr @_ZN20btAxisSweep3InternalItE11sortMinDownEitP12btDispatcherb}
!118 = distinct !{!118, !56}
!119 = distinct !{!119, !56}
!120 = !{!100, !83, i64 8}
!121 = !{!100, !95, i64 16}
!122 = distinct !{!122, !56}
!123 = distinct !{!123, !56}
!124 = distinct !{!124, !56}
!125 = distinct !{!125, !56}
!126 = distinct !{!126, !56}
!127 = !{ptr @_ZN20btAxisSweep3InternalIjE11sortMinDownEijP12btDispatcherb}
!128 = distinct !{!128, !56}
!129 = distinct !{!129, !56}
end_hunk_2
