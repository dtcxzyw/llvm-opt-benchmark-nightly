inline.NumInlined: 3211
inline.NumDeleted: 1104
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN2cv24CirclesGridClusterFinder8findGridERKSt6vectorINS_6Point_IfEESaIS3_EENS_5Size_IiEERS5_:bb.a

bb.aj:                                            ; preds = %bb.ai
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !95
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = ptrtoint ptr %i.dd to i64
  %i.di = sub i64 %i.dg, %i.dh
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.di) #30
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit39

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit39:  ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE5clearEv.exit, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit39
  ret void

bb.al:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit, %bb.r
  %.pn23 = phi { ptr, i32 } [ %i.bu, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit ], [ %i.ba, %bb.r ]
  %i.dj = load ptr, ptr %10, align 8, !tbaa !12   ; 3 uses
  %.not.i.i.i40 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i40, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit41, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !95
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = ptrtoint ptr %i.dj to i64
  %i.do = sub i64 %i.dm, %i.dn
  call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef %i.do) #30
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit41

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit41:  ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %i.dp = load ptr, ptr %9, align 8, !tbaa !12    ; 3 uses
  %.not.i.i.i42 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i42, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit43, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit41
  %i.dq = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !95
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.dp to i64
  %i.du = sub i64 %i.ds, %i.dt
  call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef %i.du) #30
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit43

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit43:  ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit41, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit43, %bb.n
  %i.dv = phi ptr [ %i.am, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit43 ], [ %.pre, %bb.n ] ; 3 uses
  %.pn23.pn = phi { ptr, i32 } [ %.pn23, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit43 ], [ %i.ar, %bb.n ]
  %.not.i.i.i44 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i44, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit45, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dw = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !95
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = ptrtoint ptr %i.dv to i64
  %i.ea = sub i64 %i.dy, %i.dz
  call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %i.ea) #30
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit45

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit45:  ; preds = %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit45, %bb.k
  %.pn23.pn.pn = phi { ptr, i32 } [ %.pn23.pn, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit45 ], [ %.pn.pn, %bb.k ]
  %i.eb = load ptr, ptr %5, align 8, !tbaa !12    ; 3 uses
  %.not.i.i.i46 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i46, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit47, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !95
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = ptrtoint ptr %i.eb to i64
  %i.eg = sub i64 %i.ee, %i.ef
  call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef %i.eg) #30
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit47

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit47:  ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit47, %bb.d
  %.pn23.pn.pn.pn = phi { ptr, i32 } [ %.pn23.pn.pn, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit47 ], [ %i.m, %bb.d ]
  %i.eh = load ptr, ptr %4, align 8, !tbaa !12    ; 3 uses
  %.not.i.i.i48 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i48, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit49, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !95
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = ptrtoint ptr %i.eh to i64
  %i.em = sub i64 %i.ek, %i.el
  call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef %i.em) #30
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit49

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit49:  ; preds = %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %.pn23.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN2cv10convexHullERKNS_11_InputArrayERKNS_12_OutputArrayEbb(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv24CirclesGridClusterFinder11findCornersERKSt6vectorINS_6Point_IfEESaIS3_EERS5_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::Range", align 8         ; 4 uses
  %4 = alloca %"class.cv::Range", align 4         ; 5 uses
  %5 = alloca %"class.cv::Mat", align 8           ; 19 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %7 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %8 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator.14", align 1 ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator.14", align 1 ; 3 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 14 uses
  %14 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %15 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %16 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !12     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = ashr exact i64 %i.f, 3
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit, %bb.a
  %.sroa.097.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.097.1, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ] ; 8 uses
  %.sroa.10.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.10.1, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ] ; 2 uses
  %.sroa.15.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.15.1, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store i32 1124024325, ptr %5, align 8, !tbaa !125
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 1, ptr %i.h, align 4, !tbaa !40
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 1, ptr %i.i, align 8, !tbaa !126
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.k = ptrtoint ptr %.sroa.10.0.lcssa to i64
  %i.l = ptrtoint ptr %.sroa.097.0.lcssa to i64   ; 2 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 2
  %i.o = trunc i64 %i.n to i32
  store i32 %i.o, ptr %i.j, align 4, !tbaa !127
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 153, ptr %i.p, align 8, !tbaa !128
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.q, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.u, i64 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.w, i8 0, i64 72, i1 false), !tbaa !53
  %i.x = load i32, ptr %i.j, align 4, !tbaa !127  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 84
  store i32 %i.x, ptr %i.y, align 4, !tbaa !61
  store i64 4, ptr %i.v, align 8, !tbaa !53
  %i.z = icmp eq ptr %.sroa.097.0.lcssa, %.sroa.10.0.lcssa
  br i1 %i.z, label %bb.h, label %bb.b

bb.b:                                             ; preds = %.noexc
  store ptr %.sroa.097.0.lcssa, ptr %i.q, align 8, !tbaa !45
  store ptr %.sroa.097.0.lcssa, ptr %i.r, align 8, !tbaa !129
  %i.aa = sext i32 %i.x to i64
  %i.ab = shl nsw i64 %i.aa, 2
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.097.0.lcssa, i64 %i.ab ; 2 uses
  store ptr %i.ac, ptr %i.s, align 8, !tbaa !130
  store ptr %i.ac, ptr %i.t, align 8, !tbaa !131
  br label %bb.h

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  %.pre139143 = phi ptr [ %.pre139144, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %.pre140 = phi ptr [ %.pre141, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ], [ %i.b, %.lr.ph.preheader ] ; 2 uses
  %i.ad = phi ptr [ %i.cf, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ], [ %i.c, %.lr.ph.preheader ] ; 4 uses
  %i.ae = phi ptr [ %i.cg, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ], [ %i.b, %.lr.ph.preheader ]
  %i.af = phi i64 [ %i.ck, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ], [ %i.g, %.lr.ph.preheader ] ; 2 uses
  %i.ag = phi i64 [ %i.cj, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ], [ %i.f, %.lr.ph.preheader ]
  %.040130 = phi i64 [ %i.ah, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.sroa.15.0129 = phi ptr [ %.sroa.15.1, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ], [ null, %.lr.ph.preheader ] ; 5 uses
  %.sroa.10.0128 = phi ptr [ %.sroa.10.1, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ], [ null, %.lr.ph.preheader ] ; 3 uses
  %.sroa.097.0127 = phi ptr [ %.sroa.097.1, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit ], [ null, %.lr.ph.preheader ] ; 7 uses
  %i.ah = add nuw i64 %.040130, 1                 ; 4 uses
  %i.ai = icmp eq i64 %i.ah, %i.af
  %i.aj = select i1 %i.ai, i64 0, i64 %i.ah
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.aj
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.040130 ; 2 uses
  %.val64 = load float, ptr %i.al, align 4, !tbaa !132
  %i.am = getelementptr i8, ptr %i.al, i64 4
  %.val65 = load float, ptr %i.am, align 4, !tbaa !134
  %17 = add i64 %.040130, -1
  %sext = shl i64 %i.ag, 29
  %i.an = ashr exact i64 %sext, 32
  %i.ao = add i64 %17, %i.an
  %i.ap = urem i64 %i.ao, %i.af
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ap
  %i.ar = load <2 x float>, ptr %i.ak, align 4, !tbaa !46 ; 2 uses
  %i.as = load <2 x float>, ptr %i.aq, align 4, !tbaa !46 ; 2 uses
  %i.at = shufflevector <2 x float> %i.as, <2 x float> %i.ar, <2 x i32> <i32 0, i32 2>
  %i.au = insertelement <2 x float> poison, float %.val64, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = fsub <2 x float> %i.at, %i.av
  %i.ax = shufflevector <2 x float> %i.as, <2 x float> %i.ar, <2 x i32> <i32 1, i32 3>
  %i.ay = insertelement <2 x float> poison, float %.val65, i64 0
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ba = fsub <2 x float> %i.ax, %i.az
  %i.bb = fpext <2 x float> %i.aw to <2 x double> ; 3 uses
  %i.bc = fpext <2 x float> %i.ba to <2 x double> ; 4 uses
  %i.bd = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.be = fmul <2 x double> %i.bd, %i.bc
  %i.bf = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bf, <2 x double> %i.bb, <2 x double> %i.be) ; 2 uses
  %foldExtExtBinop = fmul <2 x double> %i.bc, %i.bc
  %i.bh = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.bi = extractelement <2 x double> %i.bb, i64 0 ; 2 uses
  %i.bj = tail call double @llvm.fmuladd.f64(double %i.bi, double %i.bi, double %i.bh)
  %i.bk = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bl = insertelement <2 x double> %i.bk, double %i.bj, i64 1
  %i.bm = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.bl) ; 2 uses
  %shift = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop170 = fmul <2 x double> %i.bm, %shift
  %i.bn = extractelement <2 x double> %foldExtExtBinop170, i64 0
  %i.bo = extractelement <2 x double> %i.bg, i64 0
  %i.bp = fdiv double %i.bo, %i.bn
  %i.bq = fptrunc double %i.bp to float           ; 2 uses
  %.not.i = icmp eq ptr %.sroa.10.0128, %.sroa.15.0129
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  store float %i.bq, ptr %.sroa.10.0128, align 4, !tbaa !46
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

bb.d:                                             ; preds = %.lr.ph
  %i.br = ptrtoint ptr %.sroa.15.0129 to i64
  %i.bs = ptrtoint ptr %.sroa.097.0127 to i64
  %i.bt = sub i64 %i.br, %i.bs                    ; 6 uses
  %i.bu = icmp eq i64 %i.bt, 9223372036854775804
  br i1 %i.bu, label %bb.e, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #29
          to label %.noexc73 unwind label %.loopexit.split-lp107

.noexc73:                                         ; preds = %bb.e
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.bv = ashr exact i64 %i.bt, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.bw = add nsw i64 %.sroa.speculated.i.i.i, %i.bv ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bv
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 2305843009213693951)
  %i.bz = select i1 %i.bx, i64 2305843009213693951, i64 %i.by ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bz, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ca = shl nuw nsw i64 %i.bz, 2
  %i.cb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #31
          to label %.noexc74 unwind label %.loopexit106 ; 4 uses

.noexc74:                                         ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 %i.bt ; 2 uses
  store float %i.bq, ptr %i.cc, align 4, !tbaa !46
  %i.cd = icmp sgt i64 %i.bt, 0
  br i1 %i.cd, label %bb.f, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

bb.f:                                             ; preds = %.noexc74
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cb, ptr align 4 %.sroa.097.0127, i64 %i.bt, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i: ; preds = %bb.f, %.noexc74
  %.not.i17.i.i = icmp eq ptr %.sroa.097.0127, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.097.0127, i64 noundef %i.bt) #30
  %.pre.pre = load ptr, ptr %i.a, align 8, !tbaa !8
  %.pre139.pre = load ptr, ptr %1, align 8, !tbaa !12
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  %.pre139 = phi ptr [ %.pre139.pre, %bb.g ], [ %.pre139143, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i ] ; 2 uses
  %.pre = phi ptr [ %.pre.pre, %bb.g ], [ %.pre140, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i ] ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.bz
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

_ZNSt6vectorIfSaIfEE9push_backERKf.exit:          ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, %bb.c
  %.pre139144 = phi ptr [ %.pre139, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %.pre139143, %bb.c ]
  %.pre141 = phi ptr [ %.pre, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %.pre140, %bb.c ]
  %i.cf = phi ptr [ %.pre139, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %i.ad, %bb.c ] ; 2 uses
  %i.cg = phi ptr [ %.pre, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %i.ae, %bb.c ] ; 2 uses
  %.sroa.097.1 = phi ptr [ %i.cb, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %.sroa.097.0127, %bb.c ] ; 2 uses
  %.pn = phi ptr [ %i.cc, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %.sroa.10.0128, %bb.c ]
  %.sroa.15.1 = phi ptr [ %i.ce, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %.sroa.15.0129, %bb.c ] ; 2 uses
  %.sroa.10.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 2 uses
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = ptrtoint ptr %i.cf to i64
  %i.cj = sub i64 %i.ch, %i.ci                    ; 2 uses
  %i.ck = ashr exact i64 %i.cj, 3                 ; 2 uses
  %i.cl = icmp ult i64 %i.ah, %i.ck
  br i1 %i.cl, label %.lr.ph, label %._crit_edge, !llvm.loop !135

.loopexit106:                                     ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit108 = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.loopexit.split-lp107:                            ; preds = %bb.e
  %lpad.loopexit.split-lp109 = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.h:                                             ; preds = %bb.b, %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %i.cm, align 8, !tbaa !13
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 0, ptr %i.cn, align 4, !tbaa !15
  store i32 16842752, ptr %7, align 8, !tbaa !58
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %5, ptr %i.co, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.cp = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 0, ptr %i.cq, align 8
  store i32 33619968, ptr %8, align 8, !tbaa !58
  store ptr %6, ptr %i.cp, align 8, !tbaa !60
  invoke void @_ZN2cv7sortIdxERKNS_11_InputArrayERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, i32 noundef 16)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.cr = load i32, ptr %6, align 8, !tbaa !125
  %i.cs = and i32 %i.cr, 4095
  %i.ct = icmp eq i32 %i.cs, 4
  br i1 %i.ct, label %bb.q, label %bb.l

bb.j:                                             ; preds = %._crit_edge
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.k:                                             ; preds = %bb.h
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.aq

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv24CirclesGridClusterFinder11findCornersERKSt6vectorINS_6Point_IfEESaIS3_EERS5_, ptr noundef nonnull @.str.1, i32 noundef 210) #29
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.p:                                             ; preds = %bb.m
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cy = load ptr, ptr %9, align 8, !tbaa !19    ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.db = load i64, ptr %i.cz, align 8, !tbaa !24
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.o
  %.pn43 = phi { ptr, i32 } [ %i.cw, %bb.o ], [ %i.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.cx, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.aq

bb.q:                                             ; preds = %bb.i
  %i.dd = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !126
  %i.df = icmp eq i32 %i.de, 1
  br i1 %i.df, label %bb.w, label %bb.r
end_hunk_0
begin_hunk_1_@_ZNK2cv17CirclesGridFinder10computeRNGERNS_5GraphERSt6vectorINS_6Point_IfEESaIS5_EEPNS_3MatE:bb.a

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv17CirclesGridFinder23filterOutliersByDensityERKSt6vectorINS_6Point_IfEESaIS3_EERS5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(173) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.14", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.14", align 1 ; 3 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !119    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !119  ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv17CirclesGridFinder23filterOutliersByDensityERKSt6vectorINS_6Point_IfEESaIS3_EERS5_, ptr noundef nonnull @.str.1, i32 noundef 1106) #29
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = load ptr, ptr %3, align 8, !tbaa !19     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.j = load i64, ptr %i.h, align 8, !tbaa !24
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn28 = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.f, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.x

bb.g:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %2, align 8, !tbaa !12     ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !8    ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, %i.l
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPN2cv6Point_IfEES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv6Point_IfEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.g
  store ptr %i.l, ptr %i.m, align 8, !tbaa !8
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !8
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE5clearEv.exit

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE5clearEv.exit: ; preds = %bb.g, %_ZSt8_DestroyIPN2cv6Point_IfEES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.o = phi ptr [ %i.n, %bb.g ], [ %i.l, %_ZSt8_DestroyIPN2cv6Point_IfEES2_EvT_S4_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.p = phi ptr [ %i.c, %bb.g ], [ %.pre, %_ZSt8_DestroyIPN2cv6Point_IfEES2_EvT_S4_RSaIT0_E.exit.i.i ] ; 2 uses
  %.not = icmp eq ptr %i.p, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE5clearEv.exit
  %i.q = ptrtoint ptr %i.a to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.r, %i.q
  %i.t = ashr exact i64 %i.s, 3
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.h

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit
  %.pre51 = load ptr, ptr %2, align 8, !tbaa !119
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE5clearEv.exit
  %i.x = phi ptr [ %i.dg, %._crit_edge.loopexit ], [ %i.o, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE5clearEv.exit ]
  %i.y = phi ptr [ %.pre51, %._crit_edge.loopexit ], [ %i.l, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE5clearEv.exit ]
  %i.z = icmp eq ptr %i.y, %i.x
  br i1 %i.z, label %bb.r, label %bb.w

bb.h:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit
  %i.aa = phi ptr [ %i.o, %.lr.ph ], [ %i.dg, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit ] ; 6 uses
  %i.ab = phi i64 [ %i.t, %.lr.ph ], [ %i.dn, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %i.ac = phi ptr [ %i.a, %.lr.ph ], [ %i.dj, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit ] ; 4 uses
  %.02149 = phi i64 [ 0, %.lr.ph ], [ %i.dh, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.02149 ; 3 uses
  %i.ae = load <2 x float>, ptr %i.u, align 8, !tbaa !46 ; 2 uses
  %i.af = fmul <2 x float> %i.ae, splat (float 5.000000e-01)
  %i.ag = load <2 x float>, ptr %i.ad, align 4, !tbaa !46
  %i.ah = fsub <2 x float> %i.ag, %i.af           ; 3 uses
  %i.ai = fadd <2 x float> %i.ae, %i.ah           ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 1) ; 3 uses
  %i.aj = extractelement <2 x float> %i.ai, i64 0 ; 3 uses
  %i.ak = extractelement <2 x float> %i.ai, i64 1 ; 3 uses
  %i.al = extractelement <2 x float> %i.ah, i64 0 ; 3 uses
  %i.am = extractelement <2 x float> %i.ah, i64 1 ; 3 uses
  %xtraiter = and i64 %umax, 1
  %i.an = icmp ult i64 %i.ab, 2
  br i1 %i.an, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.h
  %unroll_iter = and i64 %umax, -2
  br label %bb.j

.unr-lcssa:                                       ; preds = %_ZNK2cv5Rect_IfE8containsIfEEbRKNS_6Point_IT_EE.exit.thread.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK2cv5Rect_IfE8containsIfEEbRKNS_6Point_IT_EE.exit.thread.epil, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.h
  %.048.epil.init = phi i64 [ 0, %bb.h ], [ %i.bv, %.unr-lcssa ]
  %.02047.epil.init = phi i32 [ 0, %bb.h ], [ %i.bu, %.unr-lcssa ] ; 3 uses
  %lcmp.mod79 = trunc i64 %umax to i1
  tail call void @llvm.assume(i1 %lcmp.mod79)
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.048.epil.init ; 2 uses
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !132 ; 2 uses
  %i.aq = fcmp ole float %i.al, %i.ap
  %i.ar = fcmp olt float %i.ap, %i.aj
  %or.cond.epil = and i1 %i.aq, %i.ar
  br i1 %or.cond.epil, label %bb.i, label %_ZNK2cv5Rect_IfE8containsIfEEbRKNS_6Point_IT_EE.exit.thread.epil

bb.i:                                             ; preds = %.epil.preheader
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.at = load float, ptr %i.as, align 4, !tbaa !134 ; 2 uses
  %i.au = fcmp ugt float %i.am, %i.at
  br i1 %i.au, label %_ZNK2cv5Rect_IfE8containsIfEEbRKNS_6Point_IT_EE.exit.thread.epil, label %_ZNK2cv5Rect_IfE8containsIfEEbRKNS_6Point_IT_EE.exit.epil

_ZNK2cv5Rect_IfE8containsIfEEbRKNS_6Point_IT_EE.exit.epil: ; preds = %bb.i
  %i.av = fcmp olt float %i.at, %i.ak
  %cond.fr.epil = freeze i1 %i.av
  %i.aw = zext i1 %cond.fr.epil to i32
  %spec.select.epil = add nsw i32 %.02047.epil.init, %i.aw
  br label %_ZNK2cv5Rect_IfE8containsIfEEbRKNS_6Point_IT_EE.exit.thread.epil

_ZNK2cv5Rect_IfE8containsIfEEbRKNS_6Point_IT_EE.exit.thread.epil: ; preds = %.epil.preheader, %bb.i, %_ZNK2cv5Rect_IfE8containsIfEEbRKNS_6Point_IT_EE.exit.epil, %.unr-lcssa
  %.lcssa = phi i32 [ %i.bu, %.unr-lcssa ], [ %.02047.epil.init, %.epil.preheader ], [ %spec.select.epil, %_ZNK2cv5Rect_IfE8containsIfEEbRKNS_6Point_IT_EE.exit.epil ], [ %.02047.epil.init, %bb.i ]
  %i.ax = sitofp i32 %.lcssa to float
  %i.ay = load float, ptr %i.v, align 8, !tbaa !338
  %i.az = fcmp ugt float %i.ay, %i.ax
  br i1 %i.az, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit, label %bb.m

bb.j:                                             ; preds = %_ZNK2cv5Rect_IfE8containsIfEEbRKNS_6Point_IT_EE.exit.thread.1, %.new
  %.048 = phi i64 [ 0, %.new ], [ %i.bv, %_ZNK2cv5Rect_IfE8containsIfEEbRKNS_6Point_IT_EE.exit.thread.1 ] ; 3 uses
  %.02047 = phi i32 [ 0, %.new ], [ %i.bu, %_ZNK2cv5Rect_IfE8containsIfEEbRKNS_6Point_IT_EE.exit.thread.1 ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %_ZNK2cv5Rect_IfE8containsIfEEbRKNS_6Point_IT_EE.exit.thread.1 ]
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.048 ; 2 uses
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !132 ; 2 uses
  %i.bc = fcmp ole float %i.al, %i.bb
  %i.bd = fcmp olt float %i.bb, %i.aj
  %or.cond = and i1 %i.bc, %i.bd
  br i1 %or.cond, label %bb.k, label %_ZNK2cv5Rect_IfE8containsIfEEbRKNS_6Point_IT_EE.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bf = load float, ptr %i.be, align 4, !tbaa !134 ; 2 uses
  %i.bg = fcmp ugt float %i.am, %i.bf
  br i1 %i.bg, label %_ZNK2cv5Rect_IfE8containsIfEEbRKNS_6Point_IT_EE.exit.thread, label %_ZNK2cv5Rect_IfE8containsIfEEbRKNS_6Point_IT_EE.exit

_ZNK2cv5Rect_IfE8containsIfEEbRKNS_6Point_IT_EE.exit: ; preds = %bb.k
  %i.bh = fcmp olt float %i.bf, %i.ak
  %cond.fr = freeze i1 %i.bh
  %i.bi = zext i1 %cond.fr to i32
  %spec.select = add nsw i32 %.02047, %i.bi
  br label %_ZNK2cv5Rect_IfE8containsIfEEbRKNS_6Point_IT_EE.exit.thread

_ZNK2cv5Rect_IfE8containsIfEEbRKNS_6Point_IT_EE.exit.thread: ; preds = %_ZNK2cv5Rect_IfE8containsIfEEbRKNS_6Point_IT_EE.exit, %bb.j, %bb.k
  %i.bj = phi i32 [ %.02047, %bb.j ], [ %spec.select, %_ZNK2cv5Rect_IfE8containsIfEEbRKNS_6Point_IT_EE.exit ], [ %.02047, %bb.k ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.048 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !132 ; 2 uses
  %i.bn = fcmp ole float %i.al, %i.bm
  %i.bo = fcmp olt float %i.bm, %i.aj
  %or.cond.1 = and i1 %i.bn, %i.bo
  br i1 %or.cond.1, label %bb.l, label %_ZNK2cv5Rect_IfE8containsIfEEbRKNS_6Point_IT_EE.exit.thread.1

bb.l:                                             ; preds = %_ZNK2cv5Rect_IfE8containsIfEEbRKNS_6Point_IT_EE.exit.thread
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !134 ; 2 uses
  %i.br = fcmp ugt float %i.am, %i.bq
  br i1 %i.br, label %_ZNK2cv5Rect_IfE8containsIfEEbRKNS_6Point_IT_EE.exit.thread.1, label %_ZNK2cv5Rect_IfE8containsIfEEbRKNS_6Point_IT_EE.exit.1

_ZNK2cv5Rect_IfE8containsIfEEbRKNS_6Point_IT_EE.exit.1: ; preds = %bb.l
  %i.bs = fcmp olt float %i.bq, %i.ak
  %cond.fr.1 = freeze i1 %i.bs
  %i.bt = zext i1 %cond.fr.1 to i32
  %spec.select.1 = add nsw i32 %i.bj, %i.bt
  br label %_ZNK2cv5Rect_IfE8containsIfEEbRKNS_6Point_IT_EE.exit.thread.1

_ZNK2cv5Rect_IfE8containsIfEEbRKNS_6Point_IT_EE.exit.thread.1: ; preds = %_ZNK2cv5Rect_IfE8containsIfEEbRKNS_6Point_IT_EE.exit.1, %bb.l, %_ZNK2cv5Rect_IfE8containsIfEEbRKNS_6Point_IT_EE.exit.thread
  %i.bu = phi i32 [ %i.bj, %_ZNK2cv5Rect_IfE8containsIfEEbRKNS_6Point_IT_EE.exit.thread ], [ %spec.select.1, %_ZNK2cv5Rect_IfE8containsIfEEbRKNS_6Point_IT_EE.exit.1 ], [ %i.bj, %bb.l ] ; 3 uses
  %i.bv = add nuw i64 %.048, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.j, !llvm.loop !339

bb.m:                                             ; preds = %_ZNK2cv5Rect_IfE8containsIfEEbRKNS_6Point_IT_EE.exit.thread.epil
  %i.bw = load ptr, ptr %i.w, align 8, !tbaa !95
  %.not.i = icmp eq ptr %i.aa, %i.bw
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = load i64, ptr %i.ad, align 4
  store i64 %i.bx, ptr %i.aa, align 4
  %i.by = load ptr, ptr %i.m, align 8, !tbaa !8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  store ptr %i.bz, ptr %i.m, align 8, !tbaa !8
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit

bb.o:                                             ; preds = %bb.m
  %i.ca = load ptr, ptr %2, align 8, !tbaa !12    ; 7 uses
  %i.cb = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.cc = ptrtoint ptr %i.ca to i64               ; 3 uses
  %i.cd = sub i64 %i.cb, %i.cc                    ; 4 uses
  %i.ce = icmp eq i64 %i.cd, 9223372036854775800
  br i1 %i.ce, label %bb.p, label %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #29
  unreachable

_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.o
  %i.cf = ashr exact i64 %i.cd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cf, i64 1)
  %i.cg = add nsw i64 %.sroa.speculated.i.i.i, %i.cf ; 2 uses
  %i.ch = icmp ult i64 %i.cg, %i.cf
  %i.ci = tail call i64 @llvm.umin.i64(i64 %i.cg, i64 1152921504606846975)
  %i.cj = select i1 %i.ch, i64 1152921504606846975, i64 %i.ci ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ck = shl nuw nsw i64 %i.cj, 3
  %i.cl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #31 ; 8 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cd
  %i.cn = load i64, ptr %i.ad, align 4
  store i64 %i.cn, ptr %i.cm, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %i.ca, %i.aa
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.co = ptrtoaddr ptr %i.cl to i64
  %i.cp = add i64 %i.cb, -8
  %i.cq = sub i64 %i.cp, %i.cc                    ; 2 uses
  %i.cr = lshr i64 %i.cq, 3
  %i.cs = add nuw nsw i64 %i.cr, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cq, 24
  %i.ct = sub i64 %i.cc, %i.co
  %diff.check = icmp ugt i64 %i.ct, -32
  %or.cond74 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond74, label %.lr.ph.i.i.i.i.i.preheader75, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.cs, 4611686018427387900     ; 3 uses
  %i.cu = shl i64 %n.vec, 3                       ; 2 uses
  %i.cv = getelementptr i8, ptr %i.cl, i64 %i.cu  ; 2 uses
  %i.cw = getelementptr i8, ptr %i.ca, i64 %i.cu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cx = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cl, i64 %i.cx ; 2 uses
  %next.gep71 = getelementptr i8, ptr %i.ca, i64 %i.cx ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  %i.cy = getelementptr i8, ptr %next.gep71, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep71, align 4, !alias.scope !343, !noalias !340
  %wide.load72 = load <2 x i64>, ptr %i.cy, align 4, !alias.scope !343, !noalias !340
  %i.cz = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !340, !noalias !343
  store <2 x i64> %wide.load72, ptr %i.cz, align 4, !alias.scope !340, !noalias !343
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !345

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cs, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader75

.lr.ph.i.i.i.i.i.preheader75:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cv, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader75, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader75 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader75 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  %i.db = load i64, ptr %.0911.i.i.i.i.i, align 4, !alias.scope !343, !noalias !340
  store i64 %i.db, ptr %.012.i.i.i.i.i, align 4, !alias.scope !340, !noalias !343
  %i.dc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dc, %i.aa
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !346

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.cl, %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.cv, %middle.block ], [ %i.dd, %.lr.ph.i.i.i.i.i ]
  %i.de = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef %i.cd) #30
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.q, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.cl, ptr %2, align 8, !tbaa !12
  store ptr %i.de, ptr %i.m, align 8, !tbaa !8
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cj
  store ptr %i.df, ptr %i.w, align 8, !tbaa !95
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.n, %_ZNK2cv5Rect_IfE8containsIfEEbRKNS_6Point_IT_EE.exit.thread.epil
  %i.dg = phi ptr [ %i.de, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.bz, %bb.n ], [ %i.aa, %_ZNK2cv5Rect_IfE8containsIfEEbRKNS_6Point_IT_EE.exit.thread.epil ] ; 2 uses
  %i.dh = add nuw i64 %.02149, 1                  ; 2 uses
  %i.di = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.dj = load ptr, ptr %1, align 8, !tbaa !12    ; 2 uses
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = ashr exact i64 %i.dm, 3                 ; 2 uses
  %i.do = icmp ult i64 %i.dh, %i.dn
  br i1 %i.do, label %bb.h, label %._crit_edge.loopexit, !llvm.loop !347

bb.r:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv17CirclesGridFinder23filterOutliersByDensityERKSt6vectorINS_6Point_IfEESaIS3_EERS5_, ptr noundef nonnull @.str.1, i32 noundef 1125) #29
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.r
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

bb.v:                                             ; preds = %bb.s
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dr = load ptr, ptr %5, align 8, !tbaa !19    ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.v
  %i.du = load i64, ptr %i.ds, align 8, !tbaa !24
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.dv) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.u
  %.pn = phi { ptr, i32 } [ %i.dp, %bb.u ], [ %i.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %i.dq, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.x

bb.w:                                             ; preds = %._crit_edge
  ret void

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn28.pn = phi { ptr, i32 } [ %.pn28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ]
  resume { ptr, i32 } %.pn28.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv17CirclesGridFinder9findBasisERKSt6vectorINS_6Point_IfEESaIS3_EERS5_RS1_INS_5GraphESaIS9_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(173) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %5 = alloca %"class.cv::Mat", align 8           ; 11 uses
  %6 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %8 = alloca %"class.cv::Mat", align 8           ; 19 uses
  %9 = alloca %"class.cv::_InputOutputArray", align 8 ; 7 uses
  %10 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator.14", align 1 ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator.14", align 1 ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::allocator.14", align 1 ; 3 uses
  %17 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %18 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %19 = alloca %"class.cv::Graph", align 8        ; 13 uses
  %20 = alloca %"class.cv::_InputArray", align 8  ; 12 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %22 = alloca %"class.std::allocator.14", align 1 ; 3 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !12     ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN2cv17CirclesGridFinder15findLongestPathERSt6vectorINS_5GraphESaIS2_EERNS_4PathE:.noexc
          cleanup
  %i.el = load ptr, ptr %3, align 8, !tbaa !19    ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.en = icmp eq ptr %i.el, %i.em
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ae
  %i.eo = load i64, ptr %i.em, align 8, !tbaa !24
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.ep) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %.body

bb.af:                                            ; preds = %_ZNKSt3mapImN2cv5Graph6VertexESt4lessImESaISt4pairIKmS2_EEE4findERS6_.exit.i
  %i.eq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 80
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !267
  %i.es = trunc i64 %i.er to i32
  %i.et = add nsw i32 %.0181, %i.es               ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.i.i.i.i90.preheader, !llvm.loop !432

bb.ag:                                            ; preds = %_ZNKSt3mapImN2cv5Graph6VertexESt4lessImESaISt4pairIKmS2_EEE4findERS6_.exit.thread.i.split
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.y
  %i.ev = phi ptr [ %.pre253, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.db, %bb.y ] ; 3 uses
  %.sroa.0.2 = phi ptr [ %i.dz, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.0.0400, %bb.y ]
  %.pn = phi ptr [ %i.ea, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.12.1, %bb.y ]
  %.sroa.18.2 = phi ptr [ %i.ec, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.18.0402, %bb.y ]
  %.sroa.12.4 = getelementptr inbounds nuw i8, ptr %.pn, i64 4
  %.not.i.i.i.i93 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i.i.i93, label %_ZN2cv4PathD2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.ew = load ptr, ptr %i.r, align 8, !tbaa !317
  %i.ex = ptrtoint ptr %i.ew to i64
  %i.ey = ptrtoint ptr %i.ev to i64
  %i.ez = sub i64 %i.ex, %i.ey
  call void @_ZdlPvm(ptr noundef nonnull %i.ev, i64 noundef %i.ez) #30
  br label %_ZN2cv4PathD2Ev.exit

_ZN2cv4PathD2Ev.exit:                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.aj

.loopexit118:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit120 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp119:                            ; preds = %bb.aa
  %lpad.loopexit.split-lp121 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit118, %.loopexit.split-lp119, %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn70.pn.pn = phi { ptr, i32 } [ %.pn68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ek, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.eu, %bb.ag ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit120, %.loopexit118 ], [ %lpad.loopexit.split-lp121, %.loopexit.split-lp119 ]
  %i.fa = load ptr, ptr %i.n, align 8, !tbaa !315 ; 3 uses
  %.not.i.i.i.i94 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i.i94, label %_ZN2cv4PathD2Ev.exit95, label %bb.ai

bb.ai:                                            ; preds = %.body
  %i.fb = load ptr, ptr %i.r, align 8, !tbaa !317
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = ptrtoint ptr %i.fa to i64
  %i.fe = sub i64 %i.fc, %i.fd
  call void @_ZdlPvm(ptr noundef nonnull %i.fa, i64 noundef %i.fe) #30
  br label %_ZN2cv4PathD2Ev.exit95

_ZN2cv4PathD2Ev.exit95:                           ; preds = %bb.ai, %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.ak

bb.aj:                                            ; preds = %_ZN2cv4PathD2Ev.exit, %bb.j
  %.sroa.0.1 = phi ptr [ %.sroa.0.2, %_ZN2cv4PathD2Ev.exit ], [ %.sroa.0.0400, %bb.j ] ; 2 uses
  %.sroa.12.2 = phi ptr [ %.sroa.12.4, %_ZN2cv4PathD2Ev.exit ], [ %.sroa.12.1, %bb.j ] ; 2 uses
  %.sroa.18.1 = phi ptr [ %.sroa.18.2, %_ZN2cv4PathD2Ev.exit ], [ %.sroa.18.0402, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.ff = add nuw i64 %.060404, 1                 ; 2 uses
  %i.fg = load ptr, ptr %i.i, align 8, !tbaa !324
  %i.fh = load ptr, ptr %1, align 8, !tbaa !321   ; 2 uses
  %i.fi = ptrtoint ptr %i.fg to i64
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = sub i64 %i.fi, %i.fj
  %i.fl = sdiv exact i64 %i.fk, 48
  %i.fm = icmp ult i64 %i.ff, %i.fl
  br i1 %i.fm, label %.lr.ph406, label %..preheader_crit_edge, !llvm.loop !433

bb.ak:                                            ; preds = %_ZN2cv4PathD2Ev.exit95, %bb.i
  %.pn70.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn70.pn.pn, %_ZN2cv4PathD2Ev.exit95 ], [ %i.be, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.h
  %.pn70.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn70.pn.pn.pn.pn, %bb.ak ], [ %i.bd, %bb.h ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.g
  %.pn70.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn70.pn.pn.pn.pn.pn, %bb.al ], [ %i.bc, %bb.g ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.au

._crit_edge187.unr-lcssa:                         ; preds = %.lr.ph186
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge187, label %.lr.ph186.epil.preheader

.lr.ph186.epil.preheader:                         ; preds = %._crit_edge187.unr-lcssa, %.lr.ph186.preheader
  %indvars.iv245.epil.init = phi i64 [ 0, %.lr.ph186.preheader ], [ %indvars.iv.next246.3, %._crit_edge187.unr-lcssa ]
  %.055184.epil.init = phi i32 [ -1, %.lr.ph186.preheader ], [ %spec.select117.3, %._crit_edge187.unr-lcssa ]
  %.057183.epil.init = phi i32 [ -1, %.lr.ph186.preheader ], [ %spec.select116.3, %._crit_edge187.unr-lcssa ]
  %lcmp.mod449 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod449)
  br label %.lr.ph186.epil

.lr.ph186.epil:                                   ; preds = %.lr.ph186.epil, %.lr.ph186.epil.preheader
  %indvars.iv245.epil = phi i64 [ %indvars.iv245.epil.init, %.lr.ph186.epil.preheader ], [ %indvars.iv.next246.epil, %.lr.ph186.epil ] ; 3 uses
  %.055184.epil = phi i32 [ %.055184.epil.init, %.lr.ph186.epil.preheader ], [ %spec.select117.epil, %.lr.ph186.epil ]
  %.057183.epil = phi i32 [ %.057183.epil.init, %.lr.ph186.epil.preheader ], [ %spec.select116.epil, %.lr.ph186.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph186.epil.preheader ], [ %epil.iter.next, %.lr.ph186.epil ]
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa, i64 %indvars.iv245.epil
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !61 ; 2 uses
  %i.fp = icmp sgt i32 %i.fo, %.057183.epil
  %spec.select116.epil = call i32 @llvm.smax.i32(i32 %i.fo, i32 %.057183.epil)
  %i.fq = trunc nuw nsw i64 %indvars.iv245.epil to i32
  %spec.select117.epil = select i1 %i.fp, i32 %i.fq, i32 %.055184.epil ; 2 uses
  %indvars.iv.next246.epil = add nuw nsw i64 %indvars.iv245.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge187, label %.lr.ph186.epil, !llvm.loop !434

._crit_edge187:                                   ; preds = %.lr.ph186.epil, %._crit_edge187.unr-lcssa
  %spec.select117.lcssa = phi i32 [ %spec.select117.3, %._crit_edge187.unr-lcssa ], [ %spec.select117.epil, %.lr.ph186.epil ]
  %i.fr = sext i32 %spec.select117.lcssa to i64   ; 3 uses
  %i.fs = load ptr, ptr %i.h, align 8, !tbaa !429
  %i.ft = load ptr, ptr %5, align 8, !tbaa !425   ; 2 uses
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = sub i64 %i.fu, %i.fv
  %i.fx = sdiv exact i64 %i.fw, 40                ; 2 uses
  %.not.i.i96 = icmp ugt i64 %i.fx, %i.fr
  br i1 %.not.i.i96, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %._crit_edge187.thread, %._crit_edge187
  %i.fy = phi i64 [ %i.af, %._crit_edge187.thread ], [ %i.fx, %._crit_edge187 ]
  %.055.lcssa293 = phi i64 [ -1, %._crit_edge187.thread ], [ %i.fr, %._crit_edge187 ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.42, i64 noundef %.055.lcssa293, i64 noundef %i.fy) #29
          to label %.noexc97 unwind label %bb.ar

.noexc97:                                         ; preds = %bb.an
  unreachable

.lr.ph186:                                        ; preds = %.lr.ph186, %.lr.ph186.preheader.new
  %indvars.iv245 = phi i64 [ 0, %.lr.ph186.preheader.new ], [ %indvars.iv.next246.3, %.lr.ph186 ] ; 6 uses
  %.055184 = phi i32 [ -1, %.lr.ph186.preheader.new ], [ %spec.select117.3, %.lr.ph186 ]
  %.057183 = phi i32 [ -1, %.lr.ph186.preheader.new ], [ %spec.select116.3, %.lr.ph186 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph186.preheader.new ], [ %niter.next.3, %.lr.ph186 ]
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa, i64 %indvars.iv245
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !61 ; 2 uses
  %i.gb = icmp sgt i32 %i.ga, %.057183
  %spec.select116 = call i32 @llvm.smax.i32(i32 %i.ga, i32 %.057183) ; 2 uses
  %i.gc = trunc nuw nsw i64 %indvars.iv245 to i32
  %spec.select117 = select i1 %i.gb, i32 %i.gc, i32 %.055184
  %indvars.iv.next246 = or disjoint i64 %indvars.iv245, 1 ; 2 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa, i64 %indvars.iv.next246
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !61 ; 2 uses
  %i.gf = icmp sgt i32 %i.ge, %spec.select116
  %spec.select116.1 = call i32 @llvm.smax.i32(i32 %i.ge, i32 %spec.select116) ; 2 uses
  %i.gg = trunc nuw nsw i64 %indvars.iv.next246 to i32
  %spec.select117.1 = select i1 %i.gf, i32 %i.gg, i32 %spec.select117
  %indvars.iv.next246.1 = or disjoint i64 %indvars.iv245, 2 ; 2 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa, i64 %indvars.iv.next246.1
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !61 ; 2 uses
  %i.gj = icmp sgt i32 %i.gi, %spec.select116.1
  %spec.select116.2 = call i32 @llvm.smax.i32(i32 %i.gi, i32 %spec.select116.1) ; 2 uses
  %i.gk = trunc nuw nsw i64 %indvars.iv.next246.1 to i32
  %spec.select117.2 = select i1 %i.gj, i32 %i.gk, i32 %spec.select117.1
  %indvars.iv.next246.2 = or disjoint i64 %indvars.iv245, 3 ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.lcssa, i64 %indvars.iv.next246.2
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !61 ; 2 uses
  %i.gn = icmp sgt i32 %i.gm, %spec.select116.2
  %spec.select116.3 = call i32 @llvm.smax.i32(i32 %i.gm, i32 %spec.select116.2) ; 2 uses
  %i.go = trunc nuw nsw i64 %indvars.iv.next246.2 to i32
  %spec.select117.3 = select i1 %i.gn, i32 %i.go, i32 %spec.select117.2 ; 3 uses
  %indvars.iv.next246.3 = add nuw nsw i64 %indvars.iv245, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge187.unr-lcssa, label %.lr.ph186, !llvm.loop !435

bb.ao:                                            ; preds = %._crit_edge187
  %i.gp = getelementptr inbounds nuw [40 x i8], ptr %i.ft, i64 %i.fr ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.gp, i64 12, i1 false)
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.gs = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorImSaImEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.gq, ptr noundef nonnull align 8 dereferenceable(24) %i.gr)
          to label %_ZN2cv4PathaSERKS0_.exit unwind label %bb.ar ; 0 uses

_ZN2cv4PathaSERKS0_.exit:                         ; preds = %bb.ao
  switch i64 %.061.lcssa, label %_ZNSt6vectorIiSaIiEED2Ev.exit [
    i64 0, label %bb.ap
    i64 1, label %bb.aq
  ]

bb.ap:                                            ; preds = %_ZN2cv4PathaSERKS0_.exit
  %i.gt = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !374 ; 2 uses
  %i.gv = sext i32 %i.gu to i64
  %i.gw = load ptr, ptr %0, align 8, !tbaa !12    ; 2 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.gv
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !132
  %i.gz = load i32, ptr %2, align 8, !tbaa !369   ; 2 uses
  %i.ha = sext i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.ha
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !132
  %i.hd = fcmp olt float %i.gy, %i.hc
  br i1 %i.hd, label %.critedge, label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.aq:                                            ; preds = %_ZN2cv4PathaSERKS0_.exit
  %i.he = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !374 ; 2 uses
  %i.hg = sext i32 %i.hf to i64
  %i.hh = load ptr, ptr %0, align 8, !tbaa !12    ; 2 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.hg
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 4
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !134
  %i.hl = load i32, ptr %2, align 8, !tbaa !369   ; 2 uses
  %i.hm = sext i32 %i.hl to i64
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.hm
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 4
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !134
  %i.hq = fcmp olt float %i.hk, %i.hp
  br i1 %i.hq, label %.critedge, label %_ZNSt6vectorIiSaIiEED2Ev.exit

.critedge:                                        ; preds = %bb.ap, %bb.aq
  %i.hr = phi i32 [ %i.gz, %bb.ap ], [ %i.hl, %bb.aq ]
  %i.hs = phi i32 [ %i.gu, %bb.ap ], [ %i.hf, %bb.aq ]
  %i.ht = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.hr, ptr %i.ht, align 4, !tbaa !61
  store i32 %i.hs, ptr %2, align 8, !tbaa !61
  %i.hu = load ptr, ptr %i.gq, align 8, !tbaa !272 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !272 ; 2 uses
  %i.hx = icmp ne ptr %i.hu, %i.hw
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %i.hw, i64 -8 ; 2 uses
  %i.hy = icmp ult ptr %i.hu, %.sroa.0.08.i.i
  %or.cond.i.i = select i1 %i.hx, i1 %i.hy, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit

.lr.ph.i.i:                                       ; preds = %.critedge, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.08.i.i, %.critedge ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %i.ib, %.lr.ph.i.i ], [ %i.hu, %.critedge ] ; 3 uses
  %i.hz = load i64, ptr %.sroa.05.09.i.i, align 8, !tbaa !53
  %i.ia = load i64, ptr %.sroa.0.010.i.i, align 8, !tbaa !53
  store i64 %i.ia, ptr %.sroa.05.09.i.i, align 8, !tbaa !53
  store i64 %i.hz, ptr %.sroa.0.010.i.i, align 8, !tbaa !53
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 8 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -8 ; 2 uses
  %i.ic = icmp ult ptr %i.ib, %.sroa.0.0.i.i
  br i1 %i.ic, label %.lr.ph.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, !llvm.loop !436

bb.ar:                                            ; preds = %bb.ao, %bb.an
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.lr.ph.i.i, %.critedge, %bb.ap, %_ZN2cv4PathaSERKS0_.exit, %bb.aq
  %i.ie = ptrtoint ptr %.sroa.18.0.lcssa to i64
  %i.if = sub i64 %i.ie, %i.v
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0.lcssa, i64 noundef %i.if) #30
  %i.ig = load ptr, ptr %5, align 8, !tbaa !425   ; 3 uses
  %i.ih = load ptr, ptr %i.h, align 8, !tbaa !429 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ig, %i.ih
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2cv4PathES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZSt8_DestroyIN2cv4PathEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ip, %_ZSt8_DestroyIN2cv4PathEEvPT_.exit.i.i.i ], [ %i.ig, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !315 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ij, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN2cv4PathEEvPT_.exit.i.i.i, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i.i.i
  %i.ik = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !317
  %i.im = ptrtoint ptr %i.il to i64
  %i.in = ptrtoint ptr %i.ij to i64
  %i.io = sub i64 %i.im, %i.in
  call void @_ZdlPvm(ptr noundef nonnull %i.ij, i64 noundef %i.io) #30
  br label %_ZSt8_DestroyIN2cv4PathEEvPT_.exit.i.i.i

_ZSt8_DestroyIN2cv4PathEEvPT_.exit.i.i.i:         ; preds = %bb.as, %.lr.ph.i.i.i
  %i.ip = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i100 = icmp eq ptr %i.ip, %i.ih
  br i1 %.not.i.i.i100, label %_ZSt8_DestroyIPN2cv4PathES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !431

_ZSt8_DestroyIPN2cv4PathES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN2cv4PathEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !425
  br label %_ZSt8_DestroyIPN2cv4PathES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN2cv4PathES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN2cv4PathES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.iq = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN2cv4PathES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.ig, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.iq, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN2cv4PathESaIS1_EED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %_ZSt8_DestroyIPN2cv4PathES1_EvT_S3_RSaIT0_E.exit.i
  %i.ir = load ptr, ptr %i.d, align 8, !tbaa !428
  %i.is = ptrtoint ptr %i.ir to i64
  %i.it = ptrtoint ptr %i.iq to i64
  %i.iu = sub i64 %i.is, %i.it
  call void @_ZdlPvm(ptr noundef nonnull %i.iq, i64 noundef %i.iu) #30
  br label %_ZNSt6vectorIN2cv4PathESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv4PathESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPN2cv4PathES1_EvT_S3_RSaIT0_E.exit.i, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret i64 %.061.lcssa

bb.au:                                            ; preds = %bb.ar, %bb.am
  %.sroa.0.0394 = phi ptr [ %.sroa.0.0400, %bb.am ], [ %.sroa.0.0.lcssa, %bb.ar ] ; 3 uses
  %.sroa.18.0368 = phi ptr [ %.sroa.18.0402, %bb.am ], [ %.sroa.18.0.lcssa, %bb.ar ]
  %.pn70.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn70.pn.pn.pn.pn.pn.pn, %bb.am ], [ %i.id, %bb.ar ]
  %.not.i.i.i101 = icmp eq ptr %.sroa.0.0394, null
  br i1 %.not.i.i.i101, label %_ZNSt6vectorIiSaIiEED2Ev.exit102, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.iv = ptrtoint ptr %.sroa.18.0368 to i64
  %i.iw = ptrtoint ptr %.sroa.0.0394 to i64
  %i.ix = sub i64 %i.iv, %i.iw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0394, i64 noundef %i.ix) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit102

_ZNSt6vectorIiSaIiEED2Ev.exit102:                 ; preds = %bb.au, %bb.av
  call void @_ZNSt6vectorIN2cv4PathESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  resume { ptr, i32 } %.pn70.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv17CirclesGridFinder15addHolesByGraphERKSt6vectorINS_5GraphESaIS2_EEbNS_6Point_IfEE(ptr noundef nonnull align 8 dereferenceable(173) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i1 noundef zeroext %2, <2 x float> %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.49", align 8    ; 11 uses
  %5 = alloca %"class.std::vector.49", align 8    ; 11 uses
  %6 = alloca %"class.std::vector.49", align 8    ; 10 uses
  %7 = alloca %"class.std::vector.49", align 8    ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  invoke void @_ZN2cv17CirclesGridFinder18findCandidateHolesERSt6vectorImSaImEES4_bNS_6Point_IfEES4_S4_(ptr noundef nonnull align 8 dereferenceable(173) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i1 noundef zeroext %2, <2 x float> %3, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.a = invoke noundef float @_ZN2cv17CirclesGridFinder22computeGraphConfidenceERKSt6vectorINS_5GraphESaIS2_EEbRKS1_ImSaImEESA_(ptr noundef nonnull align 8 dereferenceable(173) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.b = invoke noundef float @_ZN2cv17CirclesGridFinder22computeGraphConfidenceERKSt6vectorINS_5GraphESaIS2_EEbRKS1_ImSaImEESA_(ptr noundef nonnull align 8 dereferenceable(173) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load float, ptr %i.c, align 8, !tbaa !380
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_ZN2cv17CirclesGridFinder12insertWinnerEfffbRKSt6vectorImSaImEES5_RS1_IS3_SaIS3_EE(float noundef %i.a, float noundef %i.b, float noundef %i.d, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.f = load ptr, ptr %7, align 8, !tbaa !315    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !317
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #30
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.l = load ptr, ptr %6, align 8, !tbaa !315    ; 3 uses
end_hunk_2
