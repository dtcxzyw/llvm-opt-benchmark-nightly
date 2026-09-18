Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/aruco_board?download=true
inline.NumInlined: 1418
inline.NumDeleted: 577
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN2cv5aruco16CharucoBoardImpl24calcNearestMarkerCornersEv:bb.a
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #26
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i
  store ptr %i.b, ptr %i.c, align 8, !tbaa !144
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE5clearEv.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EE5clearEv.exit:     ; preds = %bb.a, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 8 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !143  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !144  ; 2 uses
  %.not.i.i64 = icmp eq ptr %i.o, %i.m
  br i1 %.not.i.i64, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE5clearEv.exit71, label %.lr.ph.i.i.i.i65

.lr.ph.i.i.i.i65:                                 ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE5clearEv.exit, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i68
  %.05.i.i.i.i66 = phi ptr [ %i.v, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i68 ], [ %i.m, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE5clearEv.exit ] ; 3 uses
  %i.p = load ptr, ptr %.05.i.i.i.i66, align 8, !tbaa !49 ; 3 uses
  %.not.i.i.i.i.i.i.i.i67 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.i.i.i67, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i68, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i65
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i66, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !112
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #26
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i68

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i68: ; preds = %bb.c, %.lr.ph.i.i.i.i65
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i66, i64 24 ; 2 uses
  %.not.i.i.i.i69 = icmp eq ptr %i.v, %i.o
  br i1 %.not.i.i.i.i69, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i70, label %.lr.ph.i.i.i.i65, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i70: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i68
  store ptr %i.m, ptr %i.n, align 8, !tbaa !144
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !144
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE5clearEv.exit71

_ZNSt6vectorIS_IiSaIiEESaIS1_EE5clearEv.exit71:   ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE5clearEv.exit, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i70
  %i.w = phi ptr [ %i.b, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE5clearEv.exit ], [ %.pre, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i70 ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !93
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !56
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = sdiv exact i64 %i.ad, 12                ; 4 uses
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !143 ; 2 uses
  %i.ag = ptrtoint ptr %i.w to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = sdiv exact i64 %i.ai, 24                ; 3 uses
  %i.ak = icmp ugt i64 %i.ae, %i.aj
  br i1 %i.ak, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE5clearEv.exit71
  %i.al = sub nuw nsw i64 %i.ae, %i.aj
  tail call void @_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.al)
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit

bb.e:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE5clearEv.exit71
  %i.am = icmp ult i64 %i.ae, %i.aj
  br i1 %i.am, label %bb.f, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.ae ; 3 uses
  %.not.i.i72 = icmp eq ptr %i.w, %i.an
  br i1 %.not.i.i72, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit, label %.lr.ph.i.i.i.i73

.lr.ph.i.i.i.i73:                                 ; preds = %bb.f, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i76
  %.05.i.i.i.i74 = phi ptr [ %i.au, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i76 ], [ %i.an, %bb.f ] ; 3 uses
  %i.ao = load ptr, ptr %.05.i.i.i.i74, align 8, !tbaa !49 ; 3 uses
  %.not.i.i.i.i.i.i.i.i75 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i.i.i.i.i75, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i76, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i73
  %i.ap = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i74, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !112
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #26
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i76

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i76: ; preds = %bb.g, %.lr.ph.i.i.i.i73
  %i.au = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i74, i64 24 ; 2 uses
  %.not.i.i.i.i77 = icmp eq ptr %i.au, %i.w
  br i1 %.not.i.i.i.i77, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i78, label %.lr.ph.i.i.i.i73, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i78: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i76
  store ptr %i.an, ptr %i.c, align 8, !tbaa !144
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit:    ; preds = %bb.d, %bb.e, %bb.f, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i78
  %i.av = load ptr, ptr %i.y, align 8, !tbaa !93
  %i.aw = load ptr, ptr %i.x, align 8, !tbaa !56
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = sdiv exact i64 %i.az, 12                ; 4 uses
  %i.bb = load ptr, ptr %i.n, align 8, !tbaa !144 ; 3 uses
  %i.bc = load ptr, ptr %i.l, align 8, !tbaa !143 ; 2 uses
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = sdiv exact i64 %i.bf, 24                ; 3 uses
  %i.bh = icmp ugt i64 %i.ba, %i.bg
  br i1 %i.bh, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit
  %i.bi = sub nuw nsw i64 %i.ba, %i.bg
  tail call void @_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef %i.bi)
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit86

bb.i:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit
  %i.bj = icmp ult i64 %i.ba, %i.bg
  br i1 %i.bj, label %bb.j, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit86

bb.j:                                             ; preds = %bb.i
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %i.ba ; 3 uses
  %.not.i.i79 = icmp eq ptr %i.bb, %i.bk
  br i1 %.not.i.i79, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit86, label %.lr.ph.i.i.i.i80

.lr.ph.i.i.i.i80:                                 ; preds = %bb.j, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i83
  %.05.i.i.i.i81 = phi ptr [ %i.br, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i83 ], [ %i.bk, %bb.j ] ; 3 uses
  %i.bl = load ptr, ptr %.05.i.i.i.i81, align 8, !tbaa !49 ; 3 uses
  %.not.i.i.i.i.i.i.i.i82 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i.i.i.i.i82, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i83, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i80
  %i.bm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i81, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !112
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bl to i64
  %i.bq = sub i64 %i.bo, %i.bp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bq) #26
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i83

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i83: ; preds = %bb.k, %.lr.ph.i.i.i.i80
  %i.br = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i81, i64 24 ; 2 uses
  %.not.i.i.i.i84 = icmp eq ptr %i.br, %i.bb
  br i1 %.not.i.i.i.i84, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i85, label %.lr.ph.i.i.i.i80, !llvm.loop !8

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i85: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i.i83
  store ptr %i.bk, ptr %i.n, align 8, !tbaa !144
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit86

_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit86:  ; preds = %bb.h, %bb.i, %bb.j, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i.i85
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.bt = load ptr, ptr %i.y, align 8, !tbaa !93
  %i.bu = load ptr, ptr %i.x, align 8, !tbaa !56
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = sdiv exact i64 %i.bx, 12                ; 2 uses
  %i.bz = and i64 %i.by, 4294967295
  %.not = icmp eq i64 %i.bz, 0
  br i1 %.not, label %._crit_edge128, label %.lr.ph127

.lr.ph127:                                        ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit86
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !69
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = load ptr, ptr %i.bs, align 8, !tbaa !53
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = sub i64 %i.cc, %i.ce
  %i.cg = sdiv exact i64 %i.cf, 24                ; 2 uses
  %i.ch = and i64 %i.cg, 4294967295
  %.not129 = icmp eq i64 %i.ch, 0
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 292
  %wide.trip.count145 = and i64 %i.by, 4294967295
  %wide.trip.count = and i64 %i.cg, 4294967295    ; 2 uses
  %exitcond.peel.not = icmp eq i64 %wide.trip.count, 1
  br label %bb.l

._crit_edge128:                                   ; preds = %._crit_edge, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE6resizeEm.exit86
  ret void

bb.l:                                             ; preds = %.lr.ph127, %._crit_edge
  %indvars.iv142 = phi i64 [ 0, %.lr.ph127 ], [ %indvars.iv.next143, %._crit_edge ] ; 12 uses
  %i.cj = load ptr, ptr %i.x, align 8, !tbaa !56
  %i.ck = getelementptr inbounds nuw [12 x i8], ptr %i.cj, i64 %indvars.iv142 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !58 ; 5 uses
  %.sroa.0113.0.copyload = load float, ptr %i.ck, align 4, !tbaa !58 ; 5 uses
  br i1 %.not129, label %.preheader117, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cl = load ptr, ptr %i.bs, align 8, !tbaa !53
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !56 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 36
  %1 = load <2 x float>, ptr %i.cm, align 4, !tbaa !58
  %2 = fadd <2 x float> %1, zeroinitializer
  %3 = load <2 x float>, ptr %i.cn, align 4, !tbaa !58
  %4 = fadd <2 x float> %2, %3
  %5 = load <2 x float>, ptr %i.co, align 4, !tbaa !58
  %6 = fadd <2 x float> %4, %5
  %7 = load <2 x float>, ptr %i.cp, align 4, !tbaa !58
  %8 = fadd <2 x float> %6, %7                    ; 2 uses
  %9 = extractelement <2 x float> %8, i64 0
  %10 = fmul float %9, 2.500000e-01
  %11 = extractelement <2 x float> %8, i64 1
  %i.cq = fmul float %11, 2.500000e-01
  %i.cr = fsub float %.sroa.0113.0.copyload, %10  ; 2 uses
  %i.cs = fsub float %.sroa.5.0.copyload, %i.cq   ; 2 uses
  %i.ct = fmul float %i.cs, %i.cs
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.cr, float %i.cr, float %i.ct)
  %i.cv = fpext float %i.cu to double
  %i.cw = load ptr, ptr %i.a, align 8, !tbaa !143
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.cw, i64 %indvars.iv142 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 3 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !48 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 16 ; 3 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !112
  %.not.i.i87.peel = icmp eq ptr %i.cz, %i.db
  br i1 %.not.i.i87.peel, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.cz, align 4, !tbaa !41
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  store ptr %i.dc, ptr %i.cy, align 8, !tbaa !48
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.peel

bb.o:                                             ; preds = %bb.m
  %i.dd = load ptr, ptr %i.cx, align 8, !tbaa !49 ; 4 uses
  %i.de = ptrtoint ptr %i.cz to i64
  %i.df = ptrtoint ptr %i.dd to i64               ; 2 uses
  %i.dg = sub i64 %i.de, %i.df                    ; 5 uses
  %i.dh = icmp eq i64 %i.dg, 9223372036854775804
  br i1 %i.dh, label %.loopexit135, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.peel

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.peel: ; preds = %bb.o
  %i.di = ashr exact i64 %i.dg, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.peel = tail call i64 @llvm.umax.i64(i64 %i.di, i64 1)
  %i.dj = add nsw i64 %.sroa.speculated.i.i.i.i.peel, %i.di ; 2 uses
  %i.dk = icmp ult i64 %i.dj, %i.di
  %i.dl = tail call i64 @llvm.umin.i64(i64 %i.dj, i64 2305843009213693951)
  %i.dm = select i1 %i.dk, i64 2305843009213693951, i64 %i.dl ; 3 uses
  %.not.i.i.i.i88.peel = icmp ne i64 %i.dm, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i88.peel)
  %i.dn = shl nuw nsw i64 %i.dm, 2
  %i.do = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dn) #27 ; 4 uses
  %i.dp = getelementptr inbounds i8, ptr %i.do, i64 %i.dg ; 2 uses
  store i32 0, ptr %i.dp, align 4, !tbaa !41
  %i.dq = icmp sgt i64 %i.dg, 0
  br i1 %i.dq, label %bb.p, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.peel

bb.p:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.peel
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.do, ptr align 4 %i.dd, i64 %i.dg, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.peel

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.peel: ; preds = %bb.p, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.peel
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %.not.i17.i.i.i.peel = icmp eq ptr %i.dd, null
  br i1 %.not.i17.i.i.i.peel, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.peel, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.peel
  %i.ds = load ptr, ptr %i.da, align 8, !tbaa !112
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = sub i64 %i.dt, %i.df
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.du) #26
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.peel

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.peel: ; preds = %bb.q, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.peel
  store ptr %i.do, ptr %i.cx, align 8, !tbaa !49
  store ptr %i.dr, ptr %i.cy, align 8, !tbaa !48
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.dm
  store ptr %i.dv, ptr %i.da, align 8, !tbaa !112
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.peel

_ZNSt6vectorIiSaIiEE9push_backEOi.exit.peel:      ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.peel, %bb.n
  br i1 %exitcond.peel.not, label %.preheader117, label %.preheader.peel.next

.preheader117:                                    ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.peel, %bb.l
  %i.dw = load ptr, ptr %i.a, align 8, !tbaa !143 ; 2 uses
  %i.dx = getelementptr inbounds nuw [24 x i8], ptr %i.dw, i64 %indvars.iv142 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !48
  %i.ea = load ptr, ptr %i.dx, align 8, !tbaa !49
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = sub i64 %i.eb, %i.ec                    ; 3 uses
  %.not130 = icmp eq i64 %i.ed, 0
  br i1 %.not130, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader117
  %i.ee = ashr exact i64 %i.ed, 2
  %i.ef = insertelement <2 x float> poison, float %.sroa.0113.0.copyload, i64 0
  %i.eg = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eh = insertelement <2 x float> poison, float %.sroa.5.0.copyload, i64 0
  %i.ei = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph

.preheader.peel.next:                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.peel, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ 1, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.peel ] ; 6 uses
  %.060121 = phi double [ %.161, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %i.cv, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.peel ] ; 3 uses
  %i.ej = load ptr, ptr %i.bs, align 8, !tbaa !53
  %i.ek = getelementptr inbounds nuw [24 x i8], ptr %i.ej, i64 %indvars.iv
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !56 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 36
  %12 = load <2 x float>, ptr %i.el, align 4, !tbaa !58
  %13 = fadd <2 x float> %12, zeroinitializer
  %14 = load <2 x float>, ptr %i.em, align 4, !tbaa !58
  %15 = fadd <2 x float> %13, %14
  %16 = load <2 x float>, ptr %i.en, align 4, !tbaa !58
  %17 = fadd <2 x float> %15, %16
  %18 = load <2 x float>, ptr %i.eo, align 4, !tbaa !58
  %19 = fadd <2 x float> %17, %18                 ; 2 uses
  %20 = extractelement <2 x float> %19, i64 0
  %21 = fmul float %20, 2.500000e-01
  %22 = extractelement <2 x float> %19, i64 1
  %i.ep = fmul float %22, 2.500000e-01
  %i.eq = fsub float %.sroa.0113.0.copyload, %21  ; 2 uses
  %i.er = fsub float %.sroa.5.0.copyload, %i.ep   ; 2 uses
  %i.es = fmul float %i.er, %i.er
  %i.et = tail call float @llvm.fmuladd.f32(float %i.eq, float %i.eq, float %i.es)
  %i.eu = fpext float %i.et to double             ; 6 uses
  %i.ev = fsub double %i.eu, %.060121
  %i.ew = tail call double @llvm.fabs.f64(double %i.ev)
  %i.ex = load float, ptr %i.ci, align 4, !tbaa !136
  %i.ey = fpext float %i.ex to double
  %i.ez = fmul double %i.ey, 1.000000e-02
  %i.fa = tail call noundef double @pow(double noundef %i.ez, double noundef 2.000000e+00) #24
  %i.fb = fcmp olt double %i.ew, %i.fa
  br i1 %i.fb, label %._crit_edge148, label %bb.v

._crit_edge148:                                   ; preds = %.preheader.peel.next
  %i.fc = load ptr, ptr %i.a, align 8, !tbaa !143
  %i.fd = getelementptr inbounds nuw [24 x i8], ptr %i.fc, i64 %indvars.iv142 ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8 ; 3 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !48 ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 16 ; 3 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !112
  %.not.i.i87 = icmp eq ptr %i.ff, %i.fh
  br i1 %.not.i.i87, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge148
  %i.fi = trunc nuw i64 %indvars.iv to i32
  store i32 %i.fi, ptr %i.ff, align 4, !tbaa !41
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  store ptr %i.fj, ptr %i.fe, align 8, !tbaa !48
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.s:                                             ; preds = %._crit_edge148
  %i.fk = load ptr, ptr %i.fd, align 8, !tbaa !49 ; 4 uses
  %i.fl = ptrtoint ptr %i.ff to i64
  %i.fm = ptrtoint ptr %i.fk to i64               ; 2 uses
  %i.fn = sub i64 %i.fl, %i.fm                    ; 5 uses
  %i.fo = icmp eq i64 %i.fn, 9223372036854775804
  br i1 %i.fo, label %.loopexit135, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

.loopexit135:                                     ; preds = %bb.o, %bb.s
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #25
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.s
  %i.fp = ashr exact i64 %i.fn, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.fp, i64 1)
  %i.fq = add nsw i64 %.sroa.speculated.i.i.i.i, %i.fp ; 2 uses
  %i.fr = icmp ult i64 %i.fq, %i.fp
  %i.fs = tail call i64 @llvm.umin.i64(i64 %i.fq, i64 2305843009213693951)
  %i.ft = select i1 %i.fr, i64 2305843009213693951, i64 %i.fs ; 3 uses
  %.not.i.i.i.i88 = icmp ne i64 %i.ft, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i88)
  %i.fu = shl nuw nsw i64 %i.ft, 2
  %i.fv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fu) #27 ; 4 uses
  %i.fw = getelementptr inbounds i8, ptr %i.fv, i64 %i.fn ; 2 uses
  %i.fx = trunc nuw i64 %indvars.iv to i32
  store i32 %i.fx, ptr %i.fw, align 4, !tbaa !41
  %i.fy = icmp sgt i64 %i.fn, 0
  br i1 %i.fy, label %bb.t, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.t:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fv, ptr align 4 %i.fk, i64 %i.fn, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.t, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.fk, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.ga = load ptr, ptr %i.fg, align 8, !tbaa !112
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = sub i64 %i.gb, %i.fm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fk, i64 noundef %i.gc) #26
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.u, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.fv, ptr %i.fd, align 8, !tbaa !49
  store ptr %i.fz, ptr %i.fe, align 8, !tbaa !48
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.ft
  store ptr %i.gd, ptr %i.fg, align 8, !tbaa !112
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.v:                                             ; preds = %.preheader.peel.next
  %i.ge = fcmp ogt double %.060121, %i.eu
  br i1 %i.ge, label %bb.w, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.w:                                             ; preds = %bb.v
  %i.gf = load ptr, ptr %i.a, align 8, !tbaa !143
  %i.gg = getelementptr inbounds nuw [24 x i8], ptr %i.gf, i64 %indvars.iv142 ; 4 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !49 ; 7 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 8 ; 4 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !48 ; 2 uses
  %.not.i.i89 = icmp eq ptr %i.gj, %i.gh
  br i1 %.not.i.i89, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.w
  store ptr %i.gh, ptr %i.gi, align 8, !tbaa !48
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.w, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.gk = phi ptr [ %i.gj, %bb.w ], [ %i.gh, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ] ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gg, i64 16 ; 3 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !112
  %.not.i.i90 = icmp eq ptr %i.gk, %i.gm
  br i1 %.not.i.i90, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.gn = trunc nuw i64 %indvars.iv to i32
  store i32 %i.gn, ptr %i.gk, align 4, !tbaa !41
  %i.go = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  store ptr %i.go, ptr %i.gi, align 8, !tbaa !48
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.y:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.gp = ptrtoint ptr %i.gk to i64
  %i.gq = ptrtoint ptr %i.gh to i64               ; 2 uses
  %i.gr = sub i64 %i.gp, %i.gq                    ; 5 uses
  %i.gs = icmp eq i64 %i.gr, 9223372036854775804
  br i1 %i.gs, label %.loopexit, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i91

.loopexit:                                        ; preds = %bb.y
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #25
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i91: ; preds = %bb.y
  %i.gt = ashr exact i64 %i.gr, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i92 = tail call i64 @llvm.umax.i64(i64 %i.gt, i64 1)
  %i.gu = add nsw i64 %.sroa.speculated.i.i.i.i92, %i.gt ; 2 uses
  %i.gv = icmp ult i64 %i.gu, %i.gt
  %i.gw = tail call i64 @llvm.umin.i64(i64 %i.gu, i64 2305843009213693951)
  %i.gx = select i1 %i.gv, i64 2305843009213693951, i64 %i.gw ; 3 uses
  %.not.i.i.i.i93 = icmp ne i64 %i.gx, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i93)
  %i.gy = shl nuw nsw i64 %i.gx, 2
  %i.gz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gy) #27 ; 4 uses
  %i.ha = getelementptr inbounds i8, ptr %i.gz, i64 %i.gr ; 2 uses
  %i.hb = trunc nuw i64 %indvars.iv to i32
  store i32 %i.hb, ptr %i.ha, align 4, !tbaa !41
  %i.hc = icmp sgt i64 %i.gr, 0
  br i1 %i.hc, label %bb.z, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i94

bb.z:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i91
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gz, ptr align 4 %i.gh, i64 %i.gr, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i94

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i94: ; preds = %bb.z, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i91
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  %.not.i17.i.i.i95 = icmp eq ptr %i.gh, null
  br i1 %.not.i17.i.i.i95, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i96, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i94
  %i.he = load ptr, ptr %i.gl, align 8, !tbaa !112
  %i.hf = ptrtoint ptr %i.he to i64
  %i.hg = sub i64 %i.hf, %i.gq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gh, i64 noundef %i.hg) #26
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i96

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i96: ; preds = %bb.aa, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i94
  store ptr %i.gz, ptr %i.gg, align 8, !tbaa !49
  store ptr %i.hd, ptr %i.gi, align 8, !tbaa !48
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.gx
  store ptr %i.hh, ptr %i.gl, align 8, !tbaa !112
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i96, %bb.x, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.r, %bb.v
  %.161 = phi double [ %.060121, %bb.v ], [ %i.eu, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.eu, %bb.r ], [ %i.eu, %bb.x ], [ %i.eu, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i96 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader117, label %.preheader.peel.next, !llvm.loop !237

._crit_edge:                                      ; preds = %bb.ap, %.preheader117
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 2 uses
  %exitcond146.not = icmp eq i64 %indvars.iv.next143, %wide.trip.count145
  br i1 %exitcond146.not, label %._crit_edge128, label %bb.l, !llvm.loop !238

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ap
  %i.hi = phi ptr [ %i.ja, %bb.ap ], [ %i.dw, %.lr.ph.preheader ] ; 4 uses
  %i.hj = phi i64 [ %i.ll, %bb.ap ], [ %i.ee, %.lr.ph.preheader ] ; 3 uses
  %i.hk = phi i64 [ %i.lk, %bb.ap ], [ %i.ed, %.lr.ph.preheader ]
  %i.hl = phi i64 [ %i.lf, %bb.ap ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %.056125 = phi i32 [ %i.le, %bb.ap ], [ 0, %.lr.ph.preheader ]
  %i.hm = load ptr, ptr %i.l, align 8, !tbaa !143
  %i.hn = getelementptr inbounds nuw [24 x i8], ptr %i.hm, i64 %indvars.iv142 ; 4 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8 ; 4 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !48 ; 4 uses
  %i.hq = load ptr, ptr %i.hn, align 8, !tbaa !49 ; 5 uses
  %i.hr = ptrtoint ptr %i.hp to i64               ; 2 uses
  %i.hs = ptrtoint ptr %i.hq to i64               ; 2 uses
  %i.ht = sub i64 %i.hr, %i.hs                    ; 4 uses
  %i.hu = ashr exact i64 %i.ht, 2                 ; 7 uses
  %i.hv = icmp ugt i64 %i.hj, %i.hu
  br i1 %i.hv, label %bb.ab, label %bb.ah

bb.ab:                                            ; preds = %.lr.ph
  %i.hw = sub nuw nsw i64 %i.hj, %i.hu            ; 6 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hn, i64 16 ; 3 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !112
  %i.hz = ptrtoint ptr %i.hy to i64
  %i.ia = sub i64 %i.hz, %i.hr
  %i.ib = ashr exact i64 %i.ia, 2                 ; 2 uses
end_hunk_0
