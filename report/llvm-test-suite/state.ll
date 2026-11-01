Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/state?download=true
inline.NumInlined: 698
inline.NumDeleted: 221
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN5State32calc_finite_difference_via_facesEd:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 1352
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !59   ; 29 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 1048
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 1072
  call void @_ZN4Mesh24calc_face_list_wbidirmapEv(ptr noundef nonnull align 8 dereferenceable(2288) %i.j)
  %i.w = load atomic i8, ptr @_ZGVZN5State32calc_finite_difference_via_facesEdE2Hx acquire, align 8
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %bb.d, label %bb.f, !prof !117

bb.d:                                             ; preds = %bb.c
  %i.y = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5State32calc_finite_difference_via_facesEdE2Hx) #21
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN5State32calc_finite_difference_via_facesEdE2Hx, i8 0, i64 24, i1 false)
  %i.z = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIdSaIdEED2Ev, ptr nonnull @_ZZN5State32calc_finite_difference_via_facesEdE2Hx, ptr nonnull @__dso_handle) #21 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5State32calc_finite_difference_via_facesEdE2Hx) #21
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.aa = load atomic i8, ptr @_ZGVZN5State32calc_finite_difference_via_facesEdE2Ux acquire, align 8
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %bb.g, label %bb.i, !prof !117

bb.g:                                             ; preds = %bb.f
  %i.ac = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5State32calc_finite_difference_via_facesEdE2Ux) #21
  %.not1058 = icmp eq i32 %i.ac, 0
  br i1 %.not1058, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN5State32calc_finite_difference_via_facesEdE2Ux, i8 0, i64 24, i1 false)
  %i.ad = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIdSaIdEED2Ev, ptr nonnull @_ZZN5State32calc_finite_difference_via_facesEdE2Ux, ptr nonnull @__dso_handle) #21 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5State32calc_finite_difference_via_facesEdE2Ux) #21
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.ae = load atomic i8, ptr @_ZGVZN5State32calc_finite_difference_via_facesEdE2Vx acquire, align 8
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %bb.j, label %bb.l, !prof !117

bb.j:                                             ; preds = %bb.i
  %i.ag = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5State32calc_finite_difference_via_facesEdE2Vx) #21
  %.not1059 = icmp eq i32 %i.ag, 0
  br i1 %.not1059, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN5State32calc_finite_difference_via_facesEdE2Vx, i8 0, i64 24, i1 false)
  %i.ah = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIdSaIdEED2Ev, ptr nonnull @_ZZN5State32calc_finite_difference_via_facesEdE2Vx, ptr nonnull @__dso_handle) #21 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5State32calc_finite_difference_via_facesEdE2Vx) #21
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !35  ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1560
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !118 ; 4 uses
  %i.al = sext i32 %i.ak to i64                   ; 7 uses
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5State32calc_finite_difference_via_facesEdE2Hx, i64 8), align 8, !tbaa !68 ; 2 uses
  %i.an = load ptr, ptr @_ZZN5State32calc_finite_difference_via_facesEdE2Hx, align 8, !tbaa !69 ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3                 ; 3 uses
  %i.as = icmp ult i64 %i.ar, %i.al
  br i1 %i.as, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.at = sub nuw nsw i64 %i.al, %i.ar
  call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN5State32calc_finite_difference_via_facesEdE2Hx, i64 noundef %i.at)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !35  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 1560
  %.pre1199 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !118 ; 2 uses
  %.pre1218 = sext i32 %.pre1199 to i64
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.n:                                             ; preds = %bb.l
  %i.au = icmp ugt i64 %i.ar, %i.al
  br i1 %i.au, label %bb.o, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.al ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, %i.av
  br i1 %.not.i.i, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.o
  store ptr %i.av, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5State32calc_finite_difference_via_facesEdE2Hx, i64 8), align 8, !tbaa !68
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

_ZNSt6vectorIdSaIdEE6resizeEm.exit:               ; preds = %bb.m, %bb.n, %bb.o, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i
  %.pre-phi = phi i64 [ %.pre1218, %bb.m ], [ %i.al, %bb.n ], [ %i.al, %bb.o ], [ %i.al, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i ] ; 7 uses
  %i.aw = phi i32 [ %.pre1199, %bb.m ], [ %i.ak, %bb.n ], [ %i.ak, %bb.o ], [ %i.ak, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i ] ; 3 uses
  %i.ax = phi ptr [ %.pre, %bb.m ], [ %i.ai, %bb.n ], [ %i.ai, %bb.o ], [ %i.ai, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i ] ; 3 uses
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5State32calc_finite_difference_via_facesEdE2Ux, i64 8), align 8, !tbaa !68 ; 2 uses
  %i.az = load ptr, ptr @_ZZN5State32calc_finite_difference_via_facesEdE2Ux, align 8, !tbaa !69 ; 2 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 3                 ; 3 uses
  %i.be = icmp ult i64 %i.bd, %.pre-phi
  br i1 %i.be, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  %i.bf = sub nuw nsw i64 %.pre-phi, %i.bd
  call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN5State32calc_finite_difference_via_facesEdE2Ux, i64 noundef %i.bf)
  %.pre1200 = load ptr, ptr %i.c, align 8, !tbaa !35 ; 2 uses
  %.phi.trans.insert1201 = getelementptr inbounds nuw i8, ptr %.pre1200, i64 1560
  %.pre1202 = load i32, ptr %.phi.trans.insert1201, align 8, !tbaa !118 ; 2 uses
  %.pre1219 = sext i32 %.pre1202 to i64
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit1065

bb.q:                                             ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  %i.bg = icmp ugt i64 %i.bd, %.pre-phi
  br i1 %i.bg, label %bb.r, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit1065

bb.r:                                             ; preds = %bb.q
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.pre-phi ; 2 uses
  %.not.i.i1063 = icmp eq ptr %i.ay, %i.bh
  br i1 %.not.i.i1063, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit1065, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i1064

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i1064:    ; preds = %bb.r
  store ptr %i.bh, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5State32calc_finite_difference_via_facesEdE2Ux, i64 8), align 8, !tbaa !68
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit1065

_ZNSt6vectorIdSaIdEE6resizeEm.exit1065:           ; preds = %bb.p, %bb.q, %bb.r, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i1064
  %.pre-phi1220 = phi i64 [ %.pre1219, %bb.p ], [ %.pre-phi, %bb.q ], [ %.pre-phi, %bb.r ], [ %.pre-phi, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i1064 ] ; 4 uses
  %i.bi = phi i32 [ %.pre1202, %bb.p ], [ %i.aw, %bb.q ], [ %i.aw, %bb.r ], [ %i.aw, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i1064 ] ; 3 uses
  %i.bj = phi ptr [ %.pre1200, %bb.p ], [ %i.ax, %bb.q ], [ %i.ax, %bb.r ], [ %i.ax, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i1064 ] ; 3 uses
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5State32calc_finite_difference_via_facesEdE2Vx, i64 8), align 8, !tbaa !68 ; 2 uses
  %i.bl = load ptr, ptr @_ZZN5State32calc_finite_difference_via_facesEdE2Vx, align 8, !tbaa !69 ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = ashr exact i64 %i.bo, 3                 ; 3 uses
  %i.bq = icmp ult i64 %i.bp, %.pre-phi1220
  br i1 %i.bq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit1065
  %i.br = sub nuw nsw i64 %.pre-phi1220, %i.bp
  call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN5State32calc_finite_difference_via_facesEdE2Vx, i64 noundef %i.br)
  %.pre1203 = load ptr, ptr %i.c, align 8, !tbaa !35 ; 2 uses
  %.phi.trans.insert1204 = getelementptr inbounds nuw i8, ptr %.pre1203, i64 1560
  %.pre1205 = load i32, ptr %.phi.trans.insert1204, align 8, !tbaa !118
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit1068

bb.t:                                             ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit1065
  %i.bs = icmp ugt i64 %i.bp, %.pre-phi1220
  br i1 %i.bs, label %bb.u, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit1068

bb.u:                                             ; preds = %bb.t
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.pre-phi1220 ; 2 uses
  %.not.i.i1066 = icmp eq ptr %i.bk, %i.bt
  br i1 %.not.i.i1066, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit1068, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i1067

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i1067:    ; preds = %bb.u
  store ptr %i.bt, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5State32calc_finite_difference_via_facesEdE2Vx, i64 8), align 8, !tbaa !68
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit1068

_ZNSt6vectorIdSaIdEE6resizeEm.exit1068:           ; preds = %bb.s, %bb.t, %bb.u, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i1067
  %i.bu = phi i32 [ %.pre1205, %bb.s ], [ %i.bi, %bb.t ], [ %i.bi, %bb.u ], [ %i.bi, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i1067 ] ; 2 uses
  %i.bv = phi ptr [ %.pre1203, %bb.s ], [ %i.bj, %bb.t ], [ %i.bj, %bb.u ], [ %i.bj, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i1067 ] ; 3 uses
  %i.bw = icmp sgt i32 %i.bu, 0
  br i1 %i.bw, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit1068
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 1640
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !66
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 1664
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !66
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 1048
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.cd = fmul double %1, 5.000000e-01            ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.cf = load ptr, ptr @_ZZN5State32calc_finite_difference_via_facesEdE2Hx, align 8 ; 2 uses
  %i.cg = load ptr, ptr @_ZZN5State32calc_finite_difference_via_facesEdE2Ux, align 8 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ci = load ptr, ptr @_ZZN5State32calc_finite_difference_via_facesEdE2Vx, align 8
  %wide.trip.count = zext nneg i32 %i.bu to i64
  %i.cj = load ptr, ptr %i.cb, align 8, !tbaa !69 ; 2 uses
  br label %bb.v

._crit_edge:                                      ; preds = %bb.y, %_ZNSt6vectorIdSaIdEE6resizeEm.exit1068
  %i.ck = load atomic i8, ptr @_ZGVZN5State32calc_finite_difference_via_facesEdE2Hy acquire, align 8
  %i.cl = icmp eq i8 %i.ck, 0
  br i1 %i.cl, label %bb.z, label %bb.ab, !prof !117

bb.v:                                             ; preds = %.lr.ph, %bb.y
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.y ] ; 8 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !9
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !9
  %i.cq = sext i32 %i.cn to i64                   ; 7 uses
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !9  ; 2 uses
  %i.ct = sext i32 %i.cp to i64                   ; 7 uses
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !9  ; 2 uses
  %i.cw = icmp eq i32 %i.cs, %i.cv
  %i.cx = sext i32 %i.cs to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.cx
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !71 ; 6 uses
  br i1 %i.cw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.da = fdiv double %i.cd, %i.cz                ; 3 uses
  %i.db = load ptr, ptr %i.cc, align 8, !tbaa !54 ; 2 uses
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.db, i64 %i.ct ; 3 uses
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !71
  %i.de = getelementptr inbounds [8 x i8], ptr %i.db, i64 %i.cq ; 3 uses
  %i.df = load double, ptr %i.de, align 8, !tbaa !71
  %i.dg = fadd double %i.dd, %i.df
  %i.dh = fmul double %i.dg, 5.000000e-01
  %i.di = load ptr, ptr %i.ce, align 8, !tbaa !55 ; 2 uses
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.ct ; 3 uses
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !71
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.cq ; 3 uses
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !71
  %i.dn = fsub double %i.dk, %i.dm
  %i.do = fmul double %i.da, %i.dn
  %i.dp = fsub double %i.dh, %i.do
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv
  store double %i.dp, ptr %i.dq, align 8, !tbaa !71
  %i.dr = load double, ptr %i.dj, align 8, !tbaa !71 ; 2 uses
  %i.ds = load double, ptr %i.dl, align 8, !tbaa !71 ; 2 uses
  %i.dt = fadd double %i.dr, %i.ds
  %i.du = fmul double %i.dt, 5.000000e-01
  %i.dv = load double, ptr %i.dc, align 8, !tbaa !71
  %i.dw = load double, ptr %i.de, align 8, !tbaa !71
  %i.dx = insertelement <2 x double> poison, double %i.dr, i64 0
  %i.dy = insertelement <2 x double> %i.dx, double %i.ds, i64 1 ; 2 uses
  %i.dz = fmul <2 x double> %i.dy, %i.dy
  %i.ea = insertelement <2 x double> poison, double %i.dv, i64 0
  %i.eb = insertelement <2 x double> %i.ea, double %i.dw, i64 1 ; 3 uses
  %i.ec = fdiv <2 x double> %i.dz, %i.eb
  %i.ed = fmul <2 x double> %i.eb, %i.eb
  %i.ee = fmul <2 x double> %i.ed, splat (double 4.900000e+00)
  %i.ef = fadd <2 x double> %i.ec, %i.ee          ; 2 uses
  %shift = shufflevector <2 x double> %i.ef, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.ef, %shift
  %i.eg = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.eh = fmul double %i.da, %i.eg
  %i.ei = fsub double %i.du, %i.eh
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv
  store double %i.ei, ptr %i.ej, align 8, !tbaa !71
  %i.ek = load ptr, ptr %i.ch, align 8, !tbaa !56 ; 2 uses
  %i.el = getelementptr inbounds [8 x i8], ptr %i.ek, i64 %i.ct
  %i.em = load double, ptr %i.el, align 8, !tbaa !71 ; 2 uses
  %i.en = getelementptr inbounds [8 x i8], ptr %i.ek, i64 %i.cq
  %i.eo = load double, ptr %i.en, align 8, !tbaa !71 ; 2 uses
  %i.ep = fadd double %i.em, %i.eo
  %i.eq = fmul double %i.ep, 5.000000e-01
  %i.er = load double, ptr %i.dj, align 8, !tbaa !71
  %i.es = load double, ptr %i.dc, align 8, !tbaa !71
  %i.et = load double, ptr %i.dl, align 8, !tbaa !71
  %i.eu = load double, ptr %i.de, align 8, !tbaa !71
  %i.ev = insertelement <2 x double> poison, double %i.em, i64 0
  %i.ew = insertelement <2 x double> %i.ev, double %i.eo, i64 1
  %i.ex = insertelement <2 x double> poison, double %i.er, i64 0
  %i.ey = insertelement <2 x double> %i.ex, double %i.et, i64 1
  %i.ez = fmul <2 x double> %i.ew, %i.ey
  %i.fa = insertelement <2 x double> poison, double %i.es, i64 0
  %i.fb = insertelement <2 x double> %i.fa, double %i.eu, i64 1
  %i.fc = fdiv <2 x double> %i.ez, %i.fb          ; 2 uses
  %shift1270 = shufflevector <2 x double> %i.fc, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1271 = fsub <2 x double> %i.fc, %shift1270
  %i.fd = extractelement <2 x double> %foldExtExtBinop1271, i64 0
  %i.fe = fmul double %i.da, %i.fd
  %i.ff = fsub double %i.eq, %i.fe
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.fg = sext i32 %i.cv to i64
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.fg
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !71 ; 5 uses
  %i.fj = insertelement <2 x double> poison, double %i.cz, i64 0
  %i.fk = insertelement <2 x double> %i.fj, double %i.fi, i64 1 ; 5 uses
  %i.fl = fmul <2 x double> %i.fk, %i.fk          ; 3 uses
  %i.fm = shufflevector <2 x double> %i.fl, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fn = fdiv <2 x double> %i.fm, %i.fl          ; 2 uses
  %i.fo = fcmp olt <2 x double> %i.fn, splat (double 5.000000e-01)
  %i.fp = select <2 x i1> %i.fo, <2 x double> %i.fn, <2 x double> splat (double 5.000000e-01)
  %i.fq = fmul <2 x double> %i.fl, %i.fp          ; 2 uses
  %i.fr = load ptr, ptr %i.cc, align 8, !tbaa !54 ; 2 uses
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %i.ct ; 3 uses
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !71
  %i.fu = fmul double %i.cz, %i.ft
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %i.cq ; 3 uses
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !71
  %i.fx = load ptr, ptr %i.ce, align 8, !tbaa !55 ; 2 uses
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.fx, i64 %i.ct ; 3 uses
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !71
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.fx, i64 %i.cq ; 3 uses
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !71
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv
  %i.ge = load ptr, ptr %i.ch, align 8, !tbaa !56 ; 2 uses
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.ge, i64 %i.ct
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.ge, i64 %i.cq
  %3 = shufflevector <2 x double> %i.fk, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.gh = fdiv <2 x double> %i.fk, %3             ; 2 uses
  %i.gi = fcmp olt <2 x double> %i.gh, splat (double 1.000000e+00)
  %i.gj = select <2 x i1> %i.gi, <2 x double> %i.gh, <2 x double> splat (double 1.000000e+00)
  %i.gk = shufflevector <2 x double> %i.gj, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.gl = fmul <2 x double> %i.fk, %i.gk          ; 4 uses
  %i.gm = extractelement <2 x double> %i.gl, i64 1
  %i.gn = fmul double %i.gm, %i.fz
  %i.go = extractelement <2 x double> %i.gl, i64 0
  %i.gp = fmul double %i.go, %i.gb
  %i.gq = fmul double %i.fi, %i.fw
  %i.gr = fadd double %i.fu, %i.gq
  %i.gs = insertelement <2 x double> %i.fq, double %i.cz, i64 0
  %i.gt = shufflevector <2 x double> %i.fq, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.gu = insertelement <2 x double> %i.gt, double %i.fi, i64 0
  %i.gv = fadd <2 x double> %i.gs, %i.gu          ; 3 uses
  %i.gw = fsub double %i.gn, %i.gp
  %i.gx = fmul double %i.cd, %i.gw
  %i.gy = insertelement <2 x double> poison, double %i.gr, i64 0
  %i.gz = insertelement <2 x double> %i.gy, double %i.gx, i64 1
  %i.ha = fdiv <2 x double> %i.gz, %i.gv          ; 2 uses
  %shift1273 = shufflevector <2 x double> %i.ha, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1274 = fsub <2 x double> %i.ha, %shift1273
  %i.hb = extractelement <2 x double> %foldExtExtBinop1274, i64 0
  store double %i.hb, ptr %i.gc, align 8, !tbaa !71
  %i.hc = load double, ptr %i.fy, align 8, !tbaa !71 ; 2 uses
  %i.hd = fmul double %i.cz, %i.hc
  %i.he = load double, ptr %i.ga, align 8, !tbaa !71 ; 2 uses
  %i.hf = load double, ptr %i.fs, align 8, !tbaa !71
  %i.hg = load double, ptr %i.fv, align 8, !tbaa !71
  %i.hh = insertelement <2 x double> poison, double %i.he, i64 0
  %i.hi = insertelement <2 x double> %i.hh, double %i.hc, i64 1 ; 2 uses
  %i.hj = fmul <2 x double> %i.hi, %i.hi
  %i.hk = insertelement <2 x double> poison, double %i.hg, i64 0
  %i.hl = insertelement <2 x double> %i.hk, double %i.hf, i64 1 ; 3 uses
  %i.hm = fdiv <2 x double> %i.hj, %i.hl
  %i.hn = fmul <2 x double> %i.hl, %i.hl
  %i.ho = fmul <2 x double> %i.hn, splat (double 4.900000e+00)
  %i.hp = fadd <2 x double> %i.hm, %i.ho
  %i.hq = fmul <2 x double> %i.gl, %i.hp          ; 2 uses
  %i.hr = fmul double %i.fi, %i.he
  %i.hs = fadd double %i.hd, %i.hr
  %shift1276 = shufflevector <2 x double> %i.hq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1277 = fsub <2 x double> %shift1276, %i.hq
  %i.ht = extractelement <2 x double> %foldExtExtBinop1277, i64 0
  %i.hu = fmul double %i.cd, %i.ht
  %i.hv = insertelement <2 x double> poison, double %i.hs, i64 0
  %i.hw = insertelement <2 x double> %i.hv, double %i.hu, i64 1
  %i.hx = fdiv <2 x double> %i.hw, %i.gv          ; 2 uses
  %shift1279 = shufflevector <2 x double> %i.hx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1280 = fsub <2 x double> %i.hx, %shift1279
  %i.hy = extractelement <2 x double> %foldExtExtBinop1280, i64 0
  store double %i.hy, ptr %i.gd, align 8, !tbaa !71
  %i.hz = load double, ptr %i.gf, align 8, !tbaa !71 ; 2 uses
  %i.ia = fmul double %i.cz, %i.hz
  %i.ib = load double, ptr %i.gg, align 8, !tbaa !71 ; 2 uses
  %i.ic = fmul double %i.fi, %i.ib
  %i.id = fadd double %i.ia, %i.ic
  %i.ie = load double, ptr %i.fy, align 8, !tbaa !71
  %i.if = load double, ptr %i.fs, align 8, !tbaa !71
  %i.ig = load double, ptr %i.ga, align 8, !tbaa !71
  %i.ih = insertelement <2 x double> poison, double %i.ib, i64 0
  %i.ii = insertelement <2 x double> %i.ih, double %i.hz, i64 1
  %i.ij = insertelement <2 x double> poison, double %i.ig, i64 0
  %i.ik = insertelement <2 x double> %i.ij, double %i.ie, i64 1
  %i.il = fmul <2 x double> %i.ii, %i.ik
  %i.im = load double, ptr %i.fv, align 8, !tbaa !71
  %i.in = insertelement <2 x double> poison, double %i.im, i64 0
  %i.io = insertelement <2 x double> %i.in, double %i.if, i64 1
  %i.ip = fdiv <2 x double> %i.il, %i.io
  %i.iq = fmul <2 x double> %i.gl, %i.ip          ; 2 uses
  %shift1282 = shufflevector <2 x double> %i.iq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1283 = fsub <2 x double> %shift1282, %i.iq
  %i.ir = extractelement <2 x double> %foldExtExtBinop1283, i64 0
  %i.is = fmul double %i.cd, %i.ir
  %i.it = insertelement <2 x double> poison, double %i.id, i64 0
  %i.iu = insertelement <2 x double> %i.it, double %i.is, i64 1
  %i.iv = fdiv <2 x double> %i.iu, %i.gv          ; 2 uses
  %shift1285 = shufflevector <2 x double> %i.iv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1286 = fsub <2 x double> %i.iv, %shift1285
  %i.iw = extractelement <2 x double> %foldExtExtBinop1286, i64 0
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sink = phi double [ %i.iw, %bb.x ], [ %i.ff, %bb.w ]
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv
  store double %.sink, ptr %i.ix, align 8, !tbaa !71
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.v, !llvm.loop !114

bb.z:                                             ; preds = %._crit_edge
  %i.iy = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5State32calc_finite_difference_via_facesEdE2Hy) #21
  %.not1060 = icmp eq i32 %i.iy, 0
  br i1 %.not1060, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN5State32calc_finite_difference_via_facesEdE2Hy, i8 0, i64 24, i1 false)
  %i.iz = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIdSaIdEED2Ev, ptr nonnull @_ZZN5State32calc_finite_difference_via_facesEdE2Hy, ptr nonnull @__dso_handle) #21 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5State32calc_finite_difference_via_facesEdE2Hy) #21
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %._crit_edge
  %i.ja = load atomic i8, ptr @_ZGVZN5State32calc_finite_difference_via_facesEdE2Uy acquire, align 8
  %i.jb = icmp eq i8 %i.ja, 0
  br i1 %i.jb, label %bb.ac, label %bb.ae, !prof !117

bb.ac:                                            ; preds = %bb.ab
  %i.jc = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5State32calc_finite_difference_via_facesEdE2Uy) #21
  %.not1061 = icmp eq i32 %i.jc, 0
  br i1 %.not1061, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN5State32calc_finite_difference_via_facesEdE2Uy, i8 0, i64 24, i1 false)
  %i.jd = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIdSaIdEED2Ev, ptr nonnull @_ZZN5State32calc_finite_difference_via_facesEdE2Uy, ptr nonnull @__dso_handle) #21 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5State32calc_finite_difference_via_facesEdE2Uy) #21
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.je = load atomic i8, ptr @_ZGVZN5State32calc_finite_difference_via_facesEdE2Vy acquire, align 8
  %i.jf = icmp eq i8 %i.je, 0
  br i1 %i.jf, label %bb.af, label %bb.ah, !prof !117

bb.af:                                            ; preds = %bb.ae
  %i.jg = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5State32calc_finite_difference_via_facesEdE2Vy) #21
  %.not1062 = icmp eq i32 %i.jg, 0
  br i1 %.not1062, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN5State32calc_finite_difference_via_facesEdE2Vy, i8 0, i64 24, i1 false)
  %i.jh = call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIdSaIdEED2Ev, ptr nonnull @_ZZN5State32calc_finite_difference_via_facesEdE2Vy, ptr nonnull @__dso_handle) #21 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5State32calc_finite_difference_via_facesEdE2Vy) #21
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %i.ji = load ptr, ptr %i.c, align 8, !tbaa !35  ; 4 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 1564
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !119 ; 4 uses
  %i.jl = sext i32 %i.jk to i64                   ; 7 uses
  %i.jm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5State32calc_finite_difference_via_facesEdE2Hy, i64 8), align 8, !tbaa !68 ; 2 uses
  %i.jn = load ptr, ptr @_ZZN5State32calc_finite_difference_via_facesEdE2Hy, align 8, !tbaa !69 ; 2 uses
  %i.jo = ptrtoint ptr %i.jm to i64
  %i.jp = ptrtoint ptr %i.jn to i64
  %i.jq = sub i64 %i.jo, %i.jp
  %i.jr = ashr exact i64 %i.jq, 3                 ; 3 uses
  %i.js = icmp ult i64 %i.jr, %i.jl
  br i1 %i.js, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.jt = sub nuw nsw i64 %i.jl, %i.jr
  call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN5State32calc_finite_difference_via_facesEdE2Hy, i64 noundef %i.jt)
  %.pre1206 = load ptr, ptr %i.c, align 8, !tbaa !35 ; 2 uses
  %.phi.trans.insert1207 = getelementptr inbounds nuw i8, ptr %.pre1206, i64 1564
  %.pre1208 = load i32, ptr %.phi.trans.insert1207, align 4, !tbaa !119 ; 2 uses
  %.pre1221 = sext i32 %.pre1208 to i64
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit1074

bb.aj:                                            ; preds = %bb.ah
  %i.ju = icmp ugt i64 %i.jr, %i.jl
  br i1 %i.ju, label %bb.ak, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit1074

bb.ak:                                            ; preds = %bb.aj
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %i.jl ; 2 uses
  %.not.i.i1072 = icmp eq ptr %i.jm, %i.jv
  br i1 %.not.i.i1072, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit1074, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i1073

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i1073:    ; preds = %bb.ak
  store ptr %i.jv, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5State32calc_finite_difference_via_facesEdE2Hy, i64 8), align 8, !tbaa !68
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit1074

_ZNSt6vectorIdSaIdEE6resizeEm.exit1074:           ; preds = %bb.ai, %bb.aj, %bb.ak, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i1073
  %.pre-phi1222 = phi i64 [ %.pre1221, %bb.ai ], [ %i.jl, %bb.aj ], [ %i.jl, %bb.ak ], [ %i.jl, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i1073 ] ; 7 uses
  %i.jw = phi i32 [ %.pre1208, %bb.ai ], [ %i.jk, %bb.aj ], [ %i.jk, %bb.ak ], [ %i.jk, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i1073 ] ; 3 uses
  %i.jx = phi ptr [ %.pre1206, %bb.ai ], [ %i.ji, %bb.aj ], [ %i.ji, %bb.ak ], [ %i.ji, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i1073 ] ; 3 uses
  %i.jy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5State32calc_finite_difference_via_facesEdE2Uy, i64 8), align 8, !tbaa !68 ; 2 uses
  %i.jz = load ptr, ptr @_ZZN5State32calc_finite_difference_via_facesEdE2Uy, align 8, !tbaa !69 ; 2 uses
  %i.ka = ptrtoint ptr %i.jy to i64
  %i.kb = ptrtoint ptr %i.jz to i64
  %i.kc = sub i64 %i.ka, %i.kb
  %i.kd = ashr exact i64 %i.kc, 3                 ; 3 uses
  %i.ke = icmp ult i64 %i.kd, %.pre-phi1222
  br i1 %i.ke, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit1074
  %i.kf = sub nuw nsw i64 %.pre-phi1222, %i.kd
  call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN5State32calc_finite_difference_via_facesEdE2Uy, i64 noundef %i.kf)
  %.pre1209 = load ptr, ptr %i.c, align 8, !tbaa !35 ; 2 uses
  %.phi.trans.insert1210 = getelementptr inbounds nuw i8, ptr %.pre1209, i64 1564
  %.pre1211 = load i32, ptr %.phi.trans.insert1210, align 4, !tbaa !119 ; 2 uses
  %.pre1223 = sext i32 %.pre1211 to i64
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit1077

bb.am:                                            ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit1074
  %i.kg = icmp ugt i64 %i.kd, %.pre-phi1222
  br i1 %i.kg, label %bb.an, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit1077

bb.an:                                            ; preds = %bb.am
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %.pre-phi1222 ; 2 uses
  %.not.i.i1075 = icmp eq ptr %i.jy, %i.kh
  br i1 %.not.i.i1075, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit1077, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i1076

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i1076:    ; preds = %bb.an
  store ptr %i.kh, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5State32calc_finite_difference_via_facesEdE2Uy, i64 8), align 8, !tbaa !68
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit1077

_ZNSt6vectorIdSaIdEE6resizeEm.exit1077:           ; preds = %bb.al, %bb.am, %bb.an, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i1076
  %.pre-phi1224 = phi i64 [ %.pre1223, %bb.al ], [ %.pre-phi1222, %bb.am ], [ %.pre-phi1222, %bb.an ], [ %.pre-phi1222, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i1076 ] ; 4 uses
  %i.ki = phi i32 [ %.pre1211, %bb.al ], [ %i.jw, %bb.am ], [ %i.jw, %bb.an ], [ %i.jw, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i1076 ] ; 3 uses
  %i.kj = phi ptr [ %.pre1209, %bb.al ], [ %i.jx, %bb.am ], [ %i.jx, %bb.an ], [ %i.jx, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i1076 ] ; 3 uses
  %i.kk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5State32calc_finite_difference_via_facesEdE2Vy, i64 8), align 8, !tbaa !68 ; 2 uses
  %i.kl = load ptr, ptr @_ZZN5State32calc_finite_difference_via_facesEdE2Vy, align 8, !tbaa !69 ; 2 uses
  %i.km = ptrtoint ptr %i.kk to i64
  %i.kn = ptrtoint ptr %i.kl to i64
  %i.ko = sub i64 %i.km, %i.kn
  %i.kp = ashr exact i64 %i.ko, 3                 ; 3 uses
  %i.kq = icmp ult i64 %i.kp, %.pre-phi1224
  br i1 %i.kq, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit1077
  %i.kr = sub nuw nsw i64 %.pre-phi1224, %i.kp
  call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN5State32calc_finite_difference_via_facesEdE2Vy, i64 noundef %i.kr)
  %.pre1212 = load ptr, ptr %i.c, align 8, !tbaa !35 ; 2 uses
  %.phi.trans.insert1213 = getelementptr inbounds nuw i8, ptr %.pre1212, i64 1564
  %.pre1214 = load i32, ptr %.phi.trans.insert1213, align 4, !tbaa !119
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit1080

bb.ap:                                            ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit1077
  %i.ks = icmp ugt i64 %i.kp, %.pre-phi1224
  br i1 %i.ks, label %bb.aq, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit1080

bb.aq:                                            ; preds = %bb.ap
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %.pre-phi1224 ; 2 uses
  %.not.i.i1078 = icmp eq ptr %i.kk, %i.kt
  br i1 %.not.i.i1078, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit1080, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i1079

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i1079:    ; preds = %bb.aq
  store ptr %i.kt, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5State32calc_finite_difference_via_facesEdE2Vy, i64 8), align 8, !tbaa !68
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit1080

_ZNSt6vectorIdSaIdEE6resizeEm.exit1080:           ; preds = %bb.ao, %bb.ap, %bb.aq, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i1079
  %i.ku = phi i32 [ %.pre1214, %bb.ao ], [ %i.ki, %bb.ap ], [ %i.ki, %bb.aq ], [ %i.ki, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i1079 ] ; 2 uses
  %i.kv = phi ptr [ %.pre1212, %bb.ao ], [ %i.kj, %bb.ap ], [ %i.kj, %bb.aq ], [ %i.kj, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i1079 ] ; 4 uses
  %i.kw = icmp sgt i32 %i.ku, 0
  br i1 %i.kw, label %.lr.ph1182, label %._crit_edge1183

.lr.ph1182:                                       ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit1080
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kv, i64 2000
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !66
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kv, i64 2024
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !66
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kv, i64 1072
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.ld = fmul double %1, 5.000000e-01            ; 4 uses
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.lf = load ptr, ptr @_ZZN5State32calc_finite_difference_via_facesEdE2Hy, align 8 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.lh = load ptr, ptr @_ZZN5State32calc_finite_difference_via_facesEdE2Uy, align 8 ; 2 uses
  %i.li = load ptr, ptr @_ZZN5State32calc_finite_difference_via_facesEdE2Vy, align 8
  %wide.trip.count1192 = zext nneg i32 %i.ku to i64
  %i.lj = load ptr, ptr %i.lb, align 8, !tbaa !69 ; 2 uses
  br label %bb.ar

._crit_edge1183:                                  ; preds = %bb.au, %_ZNSt6vectorIdSaIdEE6resizeEm.exit1080
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kv, i64 1176
  %i.ll = load i64, ptr %i.lk, align 8, !tbaa !76
  %i.lm = call noundef ptr @_ZN10MallocPlus13memory_mallocEmmPKci(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %i.ll, i64 noundef 8, ptr noundef nonnull @.str.3, i32 noundef 16)
  store ptr %i.lm, ptr @_ZZN5State32calc_finite_difference_via_facesEdE5H_new, align 8, !tbaa !75
  %i.ln = load ptr, ptr %i.c, align 8, !tbaa !35
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 1176
  %i.lp = load i64, ptr %i.lo, align 8, !tbaa !76
  %i.lq = call noundef ptr @_ZN10MallocPlus13memory_mallocEmmPKci(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %i.lp, i64 noundef 8, ptr noundef nonnull @.str.4, i32 noundef 16)
  store ptr %i.lq, ptr @_ZZN5State32calc_finite_difference_via_facesEdE5U_new, align 8, !tbaa !75
  %i.lr = load ptr, ptr %i.c, align 8, !tbaa !35
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 1176
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !76
  %i.lu = call noundef ptr @_ZN10MallocPlus13memory_mallocEmmPKci(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %i.lt, i64 noundef 8, ptr noundef nonnull @.str.5, i32 noundef 16)
  store ptr %i.lu, ptr @_ZZN5State32calc_finite_difference_via_facesEdE5V_new, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.lv = load ptr, ptr %i.c, align 8, !tbaa !35
  call void @_ZN4Mesh10get_boundsERiS0_(ptr noundef nonnull align 8 dereferenceable(2288) %i.lv, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %i.lw = load i32, ptr %i.a, align 4, !tbaa !9   ; 2 uses
  %i.lx = load i32, ptr %i.b, align 4, !tbaa !9   ; 2 uses
  %i.ly = icmp slt i32 %i.lw, %i.lx
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !54 ; 26 uses
  br i1 %i.ly, label %.lr.ph1186, label %._crit_edge1183.._crit_edge1187_crit_edge

._crit_edge1183.._crit_edge1187_crit_edge:        ; preds = %._crit_edge1183
  %.pre1217 = load ptr, ptr @_ZZN5State32calc_finite_difference_via_facesEdE5H_new, align 8, !tbaa !75
  br label %._crit_edge1187

.lr.ph1186:                                       ; preds = %._crit_edge1183
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !55 ; 13 uses
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !56 ; 13 uses
  %i.mf = load ptr, ptr %i.u, align 8, !tbaa !69  ; 3 uses
  %i.mg = load ptr, ptr %i.v, align 8, !tbaa !69  ; 2 uses
  %i.mh = load ptr, ptr %i.c, align 8, !tbaa !35  ; 8 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 1688
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !66
  %i.mk = load ptr, ptr @_ZZN5State32calc_finite_difference_via_facesEdE2Hx, align 8 ; 4 uses
  %i.ml = load ptr, ptr @_ZZN5State32calc_finite_difference_via_facesEdE2Ux, align 8 ; 4 uses
  %i.mm = load ptr, ptr @_ZZN5State32calc_finite_difference_via_facesEdE2Vx, align 8 ; 4 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mh, i64 1712
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !66
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mh, i64 1736
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !66
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mh, i64 1760
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !66
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mh, i64 2048
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !66
  %i.mv = load ptr, ptr @_ZZN5State32calc_finite_difference_via_facesEdE2Hy, align 8 ; 4 uses
  %i.mw = load ptr, ptr @_ZZN5State32calc_finite_difference_via_facesEdE2Uy, align 8 ; 4 uses
  %i.mx = load ptr, ptr @_ZZN5State32calc_finite_difference_via_facesEdE2Vy, align 8 ; 4 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mh, i64 2072
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !66
  %i.na = getelementptr inbounds nuw i8, ptr %i.mh, i64 2096
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !66
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mh, i64 2120
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !66
  %i.ne = load ptr, ptr @_ZZN5State32calc_finite_difference_via_facesEdE5H_new, align 8, !tbaa !75 ; 2 uses
  %i.nf = load ptr, ptr @_ZZN5State32calc_finite_difference_via_facesEdE5U_new, align 8, !tbaa !75
  %i.ng = load ptr, ptr @_ZZN5State32calc_finite_difference_via_facesEdE5V_new, align 8, !tbaa !75
  %i.nh = sext i32 %i.lw to i64
  %wide.trip.count1197 = sext i32 %i.lx to i64
  br label %bb.av

bb.ar:                                            ; preds = %.lr.ph1182, %bb.au
  %indvars.iv1189 = phi i64 [ 0, %.lr.ph1182 ], [ %indvars.iv.next1190, %bb.au ] ; 8 uses
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv1189
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !9
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %indvars.iv1189
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !9
  %i.nm = sext i32 %i.nj to i64                   ; 7 uses
  %i.nn = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.nm
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !9  ; 2 uses
  %i.np = sext i32 %i.nl to i64                   ; 7 uses
  %i.nq = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.np
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !9  ; 2 uses
  %i.ns = icmp eq i32 %i.no, %i.nr
  %i.nt = sext i32 %i.no to i64
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %i.nt
  %i.nv = load double, ptr %i.nu, align 8, !tbaa !71 ; 6 uses
  br i1 %i.ns, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.nw = fdiv double %i.ld, %i.nv                ; 3 uses
  %i.nx = load ptr, ptr %i.lc, align 8, !tbaa !54 ; 2 uses
  %i.ny = getelementptr inbounds [8 x i8], ptr %i.nx, i64 %i.np ; 3 uses
  %i.nz = load double, ptr %i.ny, align 8, !tbaa !71
  %i.oa = getelementptr inbounds [8 x i8], ptr %i.nx, i64 %i.nm ; 3 uses
  %i.ob = load double, ptr %i.oa, align 8, !tbaa !71
  %i.oc = fadd double %i.nz, %i.ob
  %i.od = fmul double %i.oc, 5.000000e-01
  %i.oe = load ptr, ptr %i.le, align 8, !tbaa !56 ; 2 uses
  %i.of = getelementptr inbounds [8 x i8], ptr %i.oe, i64 %i.np ; 3 uses
  %i.og = load double, ptr %i.of, align 8, !tbaa !71
  %i.oh = getelementptr inbounds [8 x i8], ptr %i.oe, i64 %i.nm ; 3 uses
  %i.oi = load double, ptr %i.oh, align 8, !tbaa !71
  %i.oj = fsub double %i.og, %i.oi
  %i.ok = fmul double %i.nw, %i.oj
  %i.ol = fsub double %i.od, %i.ok
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %indvars.iv1189
  store double %i.ol, ptr %i.om, align 8, !tbaa !71
  %i.on = load ptr, ptr %i.lg, align 8, !tbaa !55 ; 2 uses
  %i.oo = getelementptr inbounds [8 x i8], ptr %i.on, i64 %i.np
  %i.op = load double, ptr %i.oo, align 8, !tbaa !71 ; 2 uses
  %i.oq = getelementptr inbounds [8 x i8], ptr %i.on, i64 %i.nm
  %i.or = load double, ptr %i.oq, align 8, !tbaa !71 ; 2 uses
  %i.os = fadd double %i.op, %i.or
  %i.ot = fmul double %i.os, 5.000000e-01
  %i.ou = load double, ptr %i.of, align 8, !tbaa !71
  %i.ov = load double, ptr %i.ny, align 8, !tbaa !71
  %i.ow = load double, ptr %i.oh, align 8, !tbaa !71
  %i.ox = load double, ptr %i.oa, align 8, !tbaa !71
  %i.oy = insertelement <2 x double> poison, double %i.op, i64 0
  %i.oz = insertelement <2 x double> %i.oy, double %i.or, i64 1
  %i.pa = insertelement <2 x double> poison, double %i.ou, i64 0
  %i.pb = insertelement <2 x double> %i.pa, double %i.ow, i64 1
  %i.pc = fmul <2 x double> %i.oz, %i.pb
  %i.pd = insertelement <2 x double> poison, double %i.ov, i64 0
  %i.pe = insertelement <2 x double> %i.pd, double %i.ox, i64 1
  %i.pf = fdiv <2 x double> %i.pc, %i.pe          ; 2 uses
  %shift1288 = shufflevector <2 x double> %i.pf, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1289 = fsub <2 x double> %i.pf, %shift1288
  %i.pg = extractelement <2 x double> %foldExtExtBinop1289, i64 0
  %i.ph = fmul double %i.nw, %i.pg
  %i.pi = fsub double %i.ot, %i.ph
  %i.pj = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %indvars.iv1189
  store double %i.pi, ptr %i.pj, align 8, !tbaa !71
  %i.pk = load double, ptr %i.of, align 8, !tbaa !71 ; 2 uses
  %i.pl = load double, ptr %i.oh, align 8, !tbaa !71 ; 2 uses
  %i.pm = fadd double %i.pk, %i.pl
  %i.pn = fmul double %i.pm, 5.000000e-01
  %i.po = load double, ptr %i.ny, align 8, !tbaa !71
  %i.pp = load double, ptr %i.oa, align 8, !tbaa !71
  %i.pq = insertelement <2 x double> poison, double %i.pk, i64 0
  %i.pr = insertelement <2 x double> %i.pq, double %i.pl, i64 1 ; 2 uses
  %i.ps = fmul <2 x double> %i.pr, %i.pr
  %i.pt = insertelement <2 x double> poison, double %i.po, i64 0
  %i.pu = insertelement <2 x double> %i.pt, double %i.pp, i64 1 ; 3 uses
  %i.pv = fdiv <2 x double> %i.ps, %i.pu
  %i.pw = fmul <2 x double> %i.pu, %i.pu
  %i.px = fmul <2 x double> %i.pw, splat (double 4.900000e+00)
  %i.py = fadd <2 x double> %i.pv, %i.px          ; 2 uses
  %shift1291 = shufflevector <2 x double> %i.py, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1292 = fsub <2 x double> %i.py, %shift1291
  %i.pz = extractelement <2 x double> %foldExtExtBinop1292, i64 0
  %i.qa = fmul double %i.nw, %i.pz
  %i.qb = fsub double %i.pn, %i.qa
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.qc = sext i32 %i.nr to i64
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %i.qc
  %i.qe = load double, ptr %i.qd, align 8, !tbaa !71 ; 5 uses
  %i.qf = insertelement <2 x double> poison, double %i.nv, i64 0
  %i.qg = insertelement <2 x double> %i.qf, double %i.qe, i64 1 ; 5 uses
  %i.qh = fmul <2 x double> %i.qg, %i.qg          ; 3 uses
  %i.qi = shufflevector <2 x double> %i.qh, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.qj = fdiv <2 x double> %i.qi, %i.qh          ; 2 uses
  %i.qk = fcmp olt <2 x double> %i.qj, splat (double 5.000000e-01)
  %i.ql = select <2 x i1> %i.qk, <2 x double> %i.qj, <2 x double> splat (double 5.000000e-01)
  %i.qm = fmul <2 x double> %i.qh, %i.ql          ; 2 uses
  %i.qn = load ptr, ptr %i.lc, align 8, !tbaa !54 ; 2 uses
  %i.qo = getelementptr inbounds [8 x i8], ptr %i.qn, i64 %i.np ; 3 uses
  %i.qp = load double, ptr %i.qo, align 8, !tbaa !71
  %i.qq = fmul double %i.nv, %i.qp
  %i.qr = getelementptr inbounds [8 x i8], ptr %i.qn, i64 %i.nm ; 3 uses
  %i.qs = load double, ptr %i.qr, align 8, !tbaa !71
  %i.qt = load ptr, ptr %i.le, align 8, !tbaa !56 ; 2 uses
  %i.qu = getelementptr inbounds [8 x i8], ptr %i.qt, i64 %i.np ; 3 uses
  %i.qv = load double, ptr %i.qu, align 8, !tbaa !71
  %i.qw = getelementptr inbounds [8 x i8], ptr %i.qt, i64 %i.nm ; 3 uses
  %i.qx = load double, ptr %i.qw, align 8, !tbaa !71
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %indvars.iv1189
  %i.qz = load ptr, ptr %i.lg, align 8, !tbaa !55 ; 2 uses
  %i.ra = getelementptr inbounds [8 x i8], ptr %i.qz, i64 %i.np
  %i.rb = getelementptr inbounds [8 x i8], ptr %i.qz, i64 %i.nm
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %indvars.iv1189
  %4 = shufflevector <2 x double> %i.qg, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.rd = fdiv <2 x double> %i.qg, %4             ; 2 uses
  %i.re = fcmp olt <2 x double> %i.rd, splat (double 1.000000e+00)
  %i.rf = select <2 x i1> %i.re, <2 x double> %i.rd, <2 x double> splat (double 1.000000e+00)
  %i.rg = shufflevector <2 x double> %i.rf, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.rh = fmul <2 x double> %i.qg, %i.rg          ; 4 uses
  %i.ri = extractelement <2 x double> %i.rh, i64 1
  %i.rj = fmul double %i.ri, %i.qv
  %i.rk = extractelement <2 x double> %i.rh, i64 0
  %i.rl = fmul double %i.rk, %i.qx
  %i.rm = fmul double %i.qe, %i.qs
  %i.rn = fadd double %i.qq, %i.rm
  %i.ro = insertelement <2 x double> %i.qm, double %i.nv, i64 0
  %i.rp = shufflevector <2 x double> %i.qm, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.rq = insertelement <2 x double> %i.rp, double %i.qe, i64 0
  %i.rr = fadd <2 x double> %i.ro, %i.rq          ; 3 uses
  %i.rs = fsub double %i.rj, %i.rl
  %i.rt = fmul double %i.ld, %i.rs
  %i.ru = insertelement <2 x double> poison, double %i.rn, i64 0
  %i.rv = insertelement <2 x double> %i.ru, double %i.rt, i64 1
  %i.rw = fdiv <2 x double> %i.rv, %i.rr          ; 2 uses
  %shift1294 = shufflevector <2 x double> %i.rw, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1295 = fsub <2 x double> %i.rw, %shift1294
  %i.rx = extractelement <2 x double> %foldExtExtBinop1295, i64 0
  store double %i.rx, ptr %i.qy, align 8, !tbaa !71
  %i.ry = load double, ptr %i.ra, align 8, !tbaa !71 ; 2 uses
  %i.rz = fmul double %i.nv, %i.ry
  %i.sa = load double, ptr %i.rb, align 8, !tbaa !71 ; 2 uses
  %i.sb = load double, ptr %i.qu, align 8, !tbaa !71
  %i.sc = load double, ptr %i.qo, align 8, !tbaa !71
  %i.sd = load double, ptr %i.qw, align 8, !tbaa !71
  %i.se = load double, ptr %i.qr, align 8, !tbaa !71
  %i.sf = insertelement <2 x double> poison, double %i.sa, i64 0
  %i.sg = insertelement <2 x double> %i.sf, double %i.ry, i64 1
  %i.sh = insertelement <2 x double> poison, double %i.sd, i64 0
  %i.si = insertelement <2 x double> %i.sh, double %i.sb, i64 1
  %i.sj = fmul <2 x double> %i.sg, %i.si
  %i.sk = insertelement <2 x double> poison, double %i.se, i64 0
  %i.sl = insertelement <2 x double> %i.sk, double %i.sc, i64 1
  %i.sm = fdiv <2 x double> %i.sj, %i.sl
  %i.sn = fmul <2 x double> %i.rh, %i.sm          ; 2 uses
  %i.so = fmul double %i.qe, %i.sa
  %i.sp = fadd double %i.rz, %i.so
  %shift1297 = shufflevector <2 x double> %i.sn, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1298 = fsub <2 x double> %shift1297, %i.sn
  %i.sq = extractelement <2 x double> %foldExtExtBinop1298, i64 0
  %i.sr = fmul double %i.ld, %i.sq
  %i.ss = insertelement <2 x double> poison, double %i.sp, i64 0
  %i.st = insertelement <2 x double> %i.ss, double %i.sr, i64 1
  %i.su = fdiv <2 x double> %i.st, %i.rr          ; 2 uses
  %shift1300 = shufflevector <2 x double> %i.su, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1301 = fsub <2 x double> %i.su, %shift1300
  %i.sv = extractelement <2 x double> %foldExtExtBinop1301, i64 0
  store double %i.sv, ptr %i.rc, align 8, !tbaa !71
  %i.sw = load double, ptr %i.qu, align 8, !tbaa !71 ; 2 uses
  %i.sx = fmul double %i.nv, %i.sw
  %i.sy = load double, ptr %i.qw, align 8, !tbaa !71 ; 2 uses
  %i.sz = fmul double %i.qe, %i.sy
  %i.ta = fadd double %i.sx, %i.sz
  %i.tb = load double, ptr %i.qo, align 8, !tbaa !71
  %i.tc = insertelement <2 x double> poison, double %i.sy, i64 0
  %i.td = insertelement <2 x double> %i.tc, double %i.sw, i64 1 ; 2 uses
  %i.te = fmul <2 x double> %i.td, %i.td
  %i.tf = load double, ptr %i.qr, align 8, !tbaa !71
  %i.tg = insertelement <2 x double> poison, double %i.tf, i64 0
  %i.th = insertelement <2 x double> %i.tg, double %i.tb, i64 1 ; 3 uses
  %i.ti = fdiv <2 x double> %i.te, %i.th
  %i.tj = fmul <2 x double> %i.th, %i.th
  %i.tk = fmul <2 x double> %i.tj, splat (double 4.900000e+00)
  %i.tl = fadd <2 x double> %i.ti, %i.tk
  %i.tm = fmul <2 x double> %i.rh, %i.tl          ; 2 uses
  %shift1303 = shufflevector <2 x double> %i.tm, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1304 = fsub <2 x double> %shift1303, %i.tm
  %i.tn = extractelement <2 x double> %foldExtExtBinop1304, i64 0
  %i.to = fmul double %i.ld, %i.tn
  %i.tp = insertelement <2 x double> poison, double %i.ta, i64 0
  %i.tq = insertelement <2 x double> %i.tp, double %i.to, i64 1
  %i.tr = fdiv <2 x double> %i.tq, %i.rr          ; 2 uses
  %shift1306 = shufflevector <2 x double> %i.tr, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1307 = fsub <2 x double> %i.tr, %shift1306
  %i.ts = extractelement <2 x double> %foldExtExtBinop1307, i64 0
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.sink1267 = phi double [ %i.ts, %bb.at ], [ %i.qb, %bb.as ]
  %i.tt = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %indvars.iv1189
  store double %.sink1267, ptr %i.tt, align 8, !tbaa !71
  %indvars.iv.next1190 = add nuw nsw i64 %indvars.iv1189, 1 ; 2 uses
  %exitcond1193.not = icmp eq i64 %indvars.iv.next1190, %wide.trip.count1192
  br i1 %exitcond1193.not, label %._crit_edge1183, label %bb.ar, !llvm.loop !115

._crit_edge1187:                                  ; preds = %bb.dp, %._crit_edge1183.._crit_edge1187_crit_edge
  %i.tu = phi ptr [ %.pre1217, %._crit_edge1183.._crit_edge1187_crit_edge ], [ %i.ne, %bb.dp ]
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.tw = call noundef ptr @_ZN10MallocPlus14memory_replaceEPvS0_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %i.ma, ptr noundef %i.tu)
  store ptr %i.tw, ptr %i.tv, align 8, !tbaa !54
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !55
  %i.tz = load ptr, ptr @_ZZN5State32calc_finite_difference_via_facesEdE5U_new, align 8, !tbaa !75
  %i.ua = call noundef ptr @_ZN10MallocPlus14memory_replaceEPvS0_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %i.ty, ptr noundef %i.tz)
  store ptr %i.ua, ptr %i.tx, align 8, !tbaa !55
  %i.ub = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !56
  %i.ud = load ptr, ptr @_ZZN5State32calc_finite_difference_via_facesEdE5V_new, align 8, !tbaa !75
  %i.ue = call noundef ptr @_ZN10MallocPlus14memory_replaceEPvS0_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %i.uc, ptr noundef %i.ud)
  store ptr %i.ue, ptr %i.ub, align 8, !tbaa !56
  %.sroa.0.0.copyload = load i64, ptr %2, align 8, !tbaa !65
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !65
  %i.uf = call double @cpu_timer_stop(i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
  %i.ug = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.uh = load double, ptr %i.ug, align 8, !tbaa !71
  %i.ui = fadd double %i.uf, %i.uh
  store double %i.ui, ptr %i.ug, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

bb.av:                                            ; preds = %.lr.ph1186, %bb.dp
  %indvars.iv1194 = phi i64 [ %i.nh, %.lr.ph1186 ], [ %indvars.iv.next1195, %bb.dp ] ; 20 uses
  %i.uj = getelementptr inbounds [4 x i8], ptr %i.t, i64 %indvars.iv1194
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !9  ; 21 uses
  %i.ul = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv1194
  %i.um = load i32, ptr %i.ul, align 4, !tbaa !9
  %i.un = getelementptr inbounds [4 x i8], ptr %i.n, i64 %indvars.iv1194
  %i.uo = load i32, ptr %i.un, align 4, !tbaa !9
  %i.up = getelementptr inbounds [4 x i8], ptr %i.r, i64 %indvars.iv1194
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !9
  %i.ur = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv1194
  %i.us = load i32, ptr %i.ur, align 4, !tbaa !9
  %i.ut = getelementptr inbounds [8 x i8], ptr %i.ma, i64 %indvars.iv1194
  %i.uu = load double, ptr %i.ut, align 8, !tbaa !71 ; 21 uses
  %i.uv = getelementptr inbounds [8 x i8], ptr %i.mc, i64 %indvars.iv1194
  %i.uw = load double, ptr %i.uv, align 8, !tbaa !71 ; 7 uses
  %i.ux = getelementptr inbounds [8 x i8], ptr %i.me, i64 %indvars.iv1194
  %i.uy = load double, ptr %i.ux, align 8, !tbaa !71 ; 7 uses
  %i.uz = sext i32 %i.um to i64                   ; 5 uses
  %i.va = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.uz
  %i.vb = load i32, ptr %i.va, align 4, !tbaa !9
  %i.vc = getelementptr inbounds [8 x i8], ptr %i.ma, i64 %i.uz
  %i.vd = load double, ptr %i.vc, align 8, !tbaa !71 ; 4 uses
  %i.ve = getelementptr inbounds [8 x i8], ptr %i.mc, i64 %i.uz
  %i.vf = load double, ptr %i.ve, align 8, !tbaa !71 ; 4 uses
  %i.vg = sext i32 %i.uo to i64                   ; 5 uses
  %i.vh = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.vg
  %i.vi = load i32, ptr %i.vh, align 4, !tbaa !9
  %i.vj = getelementptr inbounds [8 x i8], ptr %i.ma, i64 %i.vg
  %i.vk = load double, ptr %i.vj, align 8, !tbaa !71 ; 4 uses
  %i.vl = getelementptr inbounds [8 x i8], ptr %i.mc, i64 %i.vg
  %i.vm = load double, ptr %i.vl, align 8, !tbaa !71 ; 4 uses
  %i.vn = sext i32 %i.uq to i64                   ; 5 uses
  %i.vo = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.vn
  %i.vp = load i32, ptr %i.vo, align 4, !tbaa !9
  %i.vq = getelementptr inbounds [8 x i8], ptr %i.ma, i64 %i.vn
  %i.vr = load double, ptr %i.vq, align 8, !tbaa !71 ; 4 uses
  %i.vs = getelementptr inbounds [8 x i8], ptr %i.me, i64 %i.vn
  %i.vt = load double, ptr %i.vs, align 8, !tbaa !71 ; 4 uses
  %i.vu = sext i32 %i.us to i64                   ; 5 uses
  %i.vv = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.vu
  %i.vw = load i32, ptr %i.vv, align 4, !tbaa !9
  %i.vx = getelementptr inbounds [8 x i8], ptr %i.ma, i64 %i.vu
  %i.vy = load double, ptr %i.vx, align 8, !tbaa !71 ; 4 uses
  %i.vz = getelementptr inbounds [8 x i8], ptr %i.me, i64 %i.vu
  %i.wa = load double, ptr %i.vz, align 8, !tbaa !71 ; 4 uses
  %i.wb = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.uz
  %i.wc = load i32, ptr %i.wb, align 4, !tbaa !9  ; 3 uses
  %i.wd = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.vg
  %i.we = load i32, ptr %i.wd, align 4, !tbaa !9  ; 3 uses
  %i.wf = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.vn
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !9  ; 3 uses
  %i.wh = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.vu
  %i.wi = load i32, ptr %i.wh, align 4, !tbaa !9  ; 3 uses
  %i.wj = sext i32 %i.vb to i64                   ; 4 uses
  %i.wk = getelementptr inbounds [8 x i8], ptr %i.ma, i64 %i.wj
  %i.wl = load double, ptr %i.wk, align 8, !tbaa !71 ; 2 uses
  %i.wm = getelementptr inbounds [8 x i8], ptr %i.mc, i64 %i.wj
  %i.wn = load double, ptr %i.wm, align 8, !tbaa !71 ; 2 uses
  %i.wo = sext i32 %i.vi to i64                   ; 4 uses
  %i.wp = getelementptr inbounds [8 x i8], ptr %i.ma, i64 %i.wo
  %i.wq = load double, ptr %i.wp, align 8, !tbaa !71 ; 2 uses
  %i.wr = getelementptr inbounds [8 x i8], ptr %i.mc, i64 %i.wo
  %i.ws = load double, ptr %i.wr, align 8, !tbaa !71 ; 2 uses
  %i.wt = sext i32 %i.vp to i64                   ; 4 uses
  %i.wu = getelementptr inbounds [8 x i8], ptr %i.ma, i64 %i.wt
  %i.wv = load double, ptr %i.wu, align 8, !tbaa !71 ; 2 uses
  %i.ww = getelementptr inbounds [8 x i8], ptr %i.me, i64 %i.wt
  %i.wx = load double, ptr %i.ww, align 8, !tbaa !71 ; 2 uses
  %i.wy = sext i32 %i.vw to i64                   ; 4 uses
  %i.wz = getelementptr inbounds [8 x i8], ptr %i.ma, i64 %i.wy
  %i.xa = load double, ptr %i.wz, align 8, !tbaa !71 ; 2 uses
  %i.xb = getelementptr inbounds [8 x i8], ptr %i.me, i64 %i.wy
  %i.xc = load double, ptr %i.xb, align 8, !tbaa !71 ; 2 uses
  %i.xd = sext i32 %i.uk to i64
  %i.xe = getelementptr inbounds nuw [8 x i8], ptr %i.mf, i64 %i.xd
  %i.xf = load double, ptr %i.xe, align 8, !tbaa !71 ; 5 uses
  %i.xg = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.uz ; 5 uses
  %i.xh = load i32, ptr %i.xg, align 4, !tbaa !9  ; 3 uses
  %i.xi = sext i32 %i.xh to i64
  %i.xj = getelementptr inbounds nuw [8 x i8], ptr %i.mf, i64 %i.xi
  %i.xk = load double, ptr %i.xj, align 8, !tbaa !71
  %i.xl = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.vg ; 5 uses
end_hunk_0
