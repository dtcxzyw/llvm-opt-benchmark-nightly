Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpBacktrackingLineSearch?download=true
inline.NumInlined: 2109
inline.NumDeleted: 474
begin_hunk_0_@_ZN5Ipopt22BacktrackingLineSearch14InitializeImplERKNS_11OptionsListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:.noexc.i

bb.aw:                                            ; preds = %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !57
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !63
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !62
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !61
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !60
  %i.ni = call noundef zeroext i1 @_ZN5Ipopt23AlgorithmStrategyObject10InitializeERKNS_10JournalistERNS_8IpoptNLPERNS_9IpoptDataERNS_25IpoptCalculatedQuantitiesERKNS_11OptionsListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(49) %i.mz, ptr noundef nonnull align 8 dereferenceable(40) %i.nb, ptr noundef nonnull align 8 dereferenceable(24) %i.nd, ptr noundef nonnull align 8 dereferenceable(2232) %i.nf, ptr noundef nonnull align 8 dereferenceable(2185) %i.nh, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  br i1 %i.ni, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 221
  store i8 1, ptr %i.nj, align 1, !tbaa !75
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 222
  store i8 0, ptr %i.nk, align 2, !tbaa !76
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i8 0, ptr %i.nl, align 8, !tbaa !77
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 220
  store i8 0, ptr %i.nm, align 4, !tbaa !78
  %i.nn = load ptr, ptr %0, align 8, !tbaa !31
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 32
  %i.np = load ptr, ptr %i.no, align 8
  call void %i.np(ptr noundef nonnull align 8 dereferenceable(264) %0)
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 228
  store i32 0, ptr %i.nq, align 4, !tbaa !79
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !56 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.ns, null
  br i1 %.not.i.i.i, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEEaSEPS2_.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 8 ; 2 uses
  %i.nu = load i32, ptr %i.nt, align 8, !tbaa !29
  %i.nv = add nsw i32 %i.nu, -1                   ; 2 uses
  store i32 %i.nv, ptr %i.nt, align 8, !tbaa !29
  %i.nw = icmp eq i32 %i.nv, 0
  br i1 %i.nw, label %bb.az, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEEaSEPS2_.exit

bb.az:                                            ; preds = %bb.ay
  %i.nx = load ptr, ptr %i.ns, align 8, !tbaa !31
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  %i.nz = load ptr, ptr %i.ny, align 8
  call void %i.nz(ptr noundef nonnull align 8 dereferenceable(280) %i.ns) #23, !inline_history !1
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEEaSEPS2_.exit

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEEaSEPS2_.exit: ; preds = %bb.ax, %bb.ay, %bb.az
  store ptr null, ptr %i.nr, align 8, !tbaa !56
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i32 -1, ptr %i.oa, align 8, !tbaa !80
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 200
  store double -1.000000e+00, ptr %i.ob, align 8, !tbaa !81
  br label %bb.ba

bb.ba:                                            ; preds = %bb.aw, %bb.ab, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEEaSEPS2_.exit
  %.062 = phi i1 [ true, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEEaSEPS2_.exit ], [ false, %bb.ab ], [ false, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #23
  ret i1 %.062

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140
  %.pn94.pn = phi { ptr, i32 } [ %.pn94, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260 ], [ %.pn92, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257 ], [ %.pn90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254 ], [ %.pn88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251 ], [ %i.lv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248 ], [ %i.lq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245 ], [ %i.ll, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242 ], [ %.pn80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239 ], [ %.pn78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236 ], [ %.pn76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233 ], [ %.pn74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230 ], [ %i.ki, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227 ], [ %i.dh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #23
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128
  %.pn94.pn.pn = phi { ptr, i32 } [ %.pn94.pn, %bb.bb ], [ %.pn68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137 ], [ %.pn66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134 ], [ %i.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128 ]
  resume { ptr, i32 } %.pn94.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5Ipopt23AlgorithmStrategyObject10InitializeERKNS_10JournalistERNS_8IpoptNLPERNS_9IpoptDataERNS_25IpoptCalculatedQuantitiesERKNS_11OptionsListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(2232) %3, ptr noundef nonnull align 8 dereferenceable(2185) %4, ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef nonnull align 8 dereferenceable(32) %6) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i8 1, ptr %i.a, align 8, !tbaa !222
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !29
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 8, !tbaa !29
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !63   ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZN5Ipopt8SmartPtrIKNS_10JournalistEEaSEPS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !29
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.g, align 8, !tbaa !29
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %_ZN5Ipopt8SmartPtrIKNS_10JournalistEEaSEPS2_.exit

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #23, !inline_history !218
  br label %_ZN5Ipopt8SmartPtrIKNS_10JournalistEEaSEPS2_.exit

_ZN5Ipopt8SmartPtrIKNS_10JournalistEEaSEPS2_.exit: ; preds = %bb.a, %bb.b, %bb.c
  store ptr %1, ptr %i.b, align 8, !tbaa !63
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !29
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 8, !tbaa !29
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !62   ; 4 uses
  %.not.i.i.i8 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i8, label %_ZN5Ipopt8SmartPtrINS_8IpoptNLPEEaSEPS1_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_10JournalistEEaSEPS2_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !29
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.s, align 8, !tbaa !29
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.e, label %_ZN5Ipopt8SmartPtrINS_8IpoptNLPEEaSEPS1_.exit

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !31
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(24) %i.r) #23, !inline_history !219
  br label %_ZN5Ipopt8SmartPtrINS_8IpoptNLPEEaSEPS1_.exit

_ZN5Ipopt8SmartPtrINS_8IpoptNLPEEaSEPS1_.exit:    ; preds = %_ZN5Ipopt8SmartPtrIKNS_10JournalistEEaSEPS2_.exit, %bb.d, %bb.e
  store ptr %2, ptr %i.n, align 8, !tbaa !62
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !29
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !29
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !61  ; 4 uses
  %.not.i.i.i9 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i9, label %_ZN5Ipopt8SmartPtrINS_9IpoptDataEEaSEPS1_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_8IpoptNLPEEaSEPS1_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !29
  %i.ag = add nsw i32 %i.af, -1                   ; 2 uses
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !29
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.g, label %_ZN5Ipopt8SmartPtrINS_9IpoptDataEEaSEPS1_.exit

bb.g:                                             ; preds = %bb.f
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !31
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(2232) %i.ad) #23, !inline_history !220
  br label %_ZN5Ipopt8SmartPtrINS_9IpoptDataEEaSEPS1_.exit

_ZN5Ipopt8SmartPtrINS_9IpoptDataEEaSEPS1_.exit:   ; preds = %_ZN5Ipopt8SmartPtrINS_8IpoptNLPEEaSEPS1_.exit, %bb.f, %bb.g
  store ptr %3, ptr %i.z, align 8, !tbaa !61
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !29
  %i.ao = add nsw i32 %i.an, 1
  store i32 %i.ao, ptr %i.am, align 8, !tbaa !29
  %i.ap = load ptr, ptr %i.al, align 8, !tbaa !60 ; 4 uses
  %.not.i.i.i10 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i10, label %_ZN5Ipopt8SmartPtrINS_25IpoptCalculatedQuantitiesEEaSEPS1_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_9IpoptDataEEaSEPS1_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !29
  %i.as = add nsw i32 %i.ar, -1                   ; 2 uses
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !29
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.i, label %_ZN5Ipopt8SmartPtrINS_25IpoptCalculatedQuantitiesEEaSEPS1_.exit

bb.i:                                             ; preds = %bb.h
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !31
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(2185) %i.ap) #23, !inline_history !221
  br label %_ZN5Ipopt8SmartPtrINS_25IpoptCalculatedQuantitiesEEaSEPS1_.exit

_ZN5Ipopt8SmartPtrINS_25IpoptCalculatedQuantitiesEEaSEPS1_.exit: ; preds = %_ZN5Ipopt8SmartPtrINS_9IpoptDataEEaSEPS1_.exit, %bb.h, %bb.i
  store ptr %4, ptr %i.al, align 8, !tbaa !60
  %i.ax = load ptr, ptr %0, align 8, !tbaa !31
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = tail call noundef zeroext i1 %i.az(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef nonnull align 8 dereferenceable(32) %6) ; 2 uses
  br i1 %i.ba, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_25IpoptCalculatedQuantitiesEEaSEPS1_.exit
  store i8 0, ptr %i.a, align 8, !tbaa !222
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN5Ipopt8SmartPtrINS_25IpoptCalculatedQuantitiesEEaSEPS1_.exit
  ret i1 %i.ba
}

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt22BacktrackingLineSearch24FindAcceptableTrialPointEv(ptr noundef nonnull align 8 dereferenceable(264) initializes((222, 223)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Ipopt::SmartPtr.37", align 8 ; 17 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::allocator.14", align 1 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::allocator.14", align 1 ; 4 uses
  %6 = alloca %"class.Ipopt::SmartPtr.37", align 8 ; 8 uses
  %7 = alloca %"class.Ipopt::SmartPtr.37", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 10 uses
  %i.b = alloca double, align 8                   ; 12 uses
  %i.c = alloca i8, align 1                       ; 7 uses
  %i.d = alloca i8, align 1                       ; 8 uses
  %i.e = alloca i8, align 1                       ; 11 uses
  %i.f = alloca i8, align 1                       ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.g = alloca i8, align 1                       ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::allocator.14", align 1 ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %12 = alloca %"class.std::allocator.14", align 1 ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::allocator.14", align 1 ; 5 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %16 = alloca %"class.std::allocator.14", align 1 ; 4 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::allocator.14", align 1 ; 3 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %20 = alloca %"class.std::allocator.14", align 1 ; 5 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %22 = alloca %"class.std::allocator.14", align 1 ; 4 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %24 = alloca %"class.std::allocator.14", align 1 ; 5 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %26 = alloca %"class.std::allocator.14", align 1 ; 4 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %28 = alloca %"class.std::allocator.14", align 1 ; 5 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %30 = alloca %"class.std::allocator.14", align 1 ; 4 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %32 = alloca %"class.std::allocator.14", align 1 ; 5 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %34 = alloca %"class.std::allocator.14", align 1 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !63   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 22 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !61
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 68
  %i.m = load i32, ptr %i.l, align 4, !tbaa !91
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.p(ptr noundef nonnull align 8 dereferenceable(40) %i.i, i32 noundef 6, i32 noundef 8, ptr noundef nonnull @.str.71, i32 noundef %i.m)
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !61
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.s = load double, ptr %i.r, align 8, !tbaa !92 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.u = load double, ptr %i.t, align 8, !tbaa !81
  %i.v = fcmp une double %i.u, %i.s
  br i1 %i.v, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !63   ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !31
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.z(ptr noundef nonnull align 8 dereferenceable(40) %i.w, i32 noundef 6, i32 noundef 8, ptr noundef nonnull @.str.72)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i8 0, ptr %i.aa, align 8, !tbaa !55
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !56 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEEaSEPS2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !29
  %i.af = add nsw i32 %i.ae, -1                   ; 2 uses
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !29
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.d, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEEaSEPS2_.exit

bb.d:                                             ; preds = %bb.c
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !31
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(280) %i.ac) #23, !inline_history !1
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEEaSEPS2_.exit

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEEaSEPS2_.exit: ; preds = %bb.b, %bb.c, %bb.d
  store ptr null, ptr %i.ab, align 8, !tbaa !56
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !56 ; 4 uses
  %.not.i.i.i231 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i231, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEEaSEPS2_.exit232, label %bb.e

bb.e:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEEaSEPS2_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !29
  %i.ao = add nsw i32 %i.an, -1                   ; 2 uses
  store i32 %i.ao, ptr %i.am, align 8, !tbaa !29
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.f, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEEaSEPS2_.exit232

bb.f:                                             ; preds = %bb.e
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !31
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(280) %i.al) #23, !inline_history !1
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEEaSEPS2_.exit232

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEEaSEPS2_.exit232: ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEEaSEPS2_.exit, %bb.e, %bb.f
  store ptr null, ptr %i.ak, align 8, !tbaa !56
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i32 0, ptr %i.at, align 4, !tbaa !93
  store double %i.s, ptr %i.t, align 8, !tbaa !81
  br label %bb.g

bb.g:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEEaSEPS2_.exit232, %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 6 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !57 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !31
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 112
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = tail call noundef zeroext i1 %i.ay(ptr noundef nonnull align 8 dereferenceable(49) %i.av)
  br i1 %i.az, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !60
  %i.bc = tail call noundef zeroext i1 @_ZNK5Ipopt25IpoptCalculatedQuantities15IsSquareProblemEv(ptr noundef nonnull align 8 dereferenceable(2185) %i.bb)
  br i1 %i.bc, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 104
  store double 0.000000e+00, ptr %i.bd, align 8, !tbaa !309
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !59 ; 3 uses
  %.not.i = icmp eq ptr %i.bf, null
  br i1 %.not.i, label %_ZN5Ipopt22BacktrackingLineSearch19CurrentIsAcceptableEv.exit.thread, label %_ZN5Ipopt22BacktrackingLineSearch19CurrentIsAcceptableEv.exit

_ZN5Ipopt22BacktrackingLineSearch19CurrentIsAcceptableEv.exit: ; preds = %bb.j
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !31
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = tail call noundef zeroext i1 %i.bi(ptr noundef nonnull align 8 dereferenceable(49) %i.bf), !inline_history !310
  br i1 %i.bj, label %bb.k, label %_ZN5Ipopt22BacktrackingLineSearch19CurrentIsAcceptableEv.exit.thread

bb.k:                                             ; preds = %_ZN5Ipopt22BacktrackingLineSearch19CurrentIsAcceptableEv.exit
  %i.bk = load ptr, ptr %i.h, align 8, !tbaa !63  ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !31
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.bn(ptr noundef nonnull align 8 dereferenceable(40) %i.bk, i32 noundef 6, i32 noundef 8, ptr noundef nonnull @.str.73)
  %i.bo = load ptr, ptr %i.j, align 8, !tbaa !61
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !56, !noalias !311 ; 6 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bq, null       ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_ZNK5Ipopt9IpoptData4currEv.exit.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !29, !noalias !311
  %i.bt = add nsw i32 %i.bs, 2
  store i32 %i.bt, ptr %i.br, align 8, !tbaa !29
  br label %_ZNK5Ipopt9IpoptData4currEv.exit.thread.i

_ZNK5Ipopt9IpoptData4currEv.exit.thread.i:        ; preds = %bb.l, %bb.k
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !56 ; 4 uses
  %.not.i.i.i.i2.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i2.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit.thread.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !29
  %i.by = add nsw i32 %i.bx, -1                   ; 2 uses
  store i32 %i.by, ptr %i.bw, align 8, !tbaa !29
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ca = load ptr, ptr %i.bv, align 8, !tbaa !31
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  tail call void %i.cc(ptr noundef nonnull align 8 dereferenceable(280) %i.bv) #23, !inline_history !225
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %_ZNK5Ipopt9IpoptData4currEv.exit.thread.i
  store ptr %i.bq, ptr %i.bu, align 8, !tbaa !56
  br i1 %.not.i.i.i.i.i, label %_ZN5Ipopt22BacktrackingLineSearch20StoreAcceptablePointEv.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !29
  %i.cf = add nsw i32 %i.ce, -1                   ; 2 uses
  store i32 %i.cf, ptr %i.cd, align 8, !tbaa !29
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.q, label %_ZN5Ipopt22BacktrackingLineSearch20StoreAcceptablePointEv.exit

bb.q:                                             ; preds = %bb.p
  %i.ch = load ptr, ptr %i.bq, align 8, !tbaa !31
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  tail call void %i.cj(ptr noundef nonnull align 8 dereferenceable(280) %i.bq) #23, !inline_history !226
  br label %_ZN5Ipopt22BacktrackingLineSearch20StoreAcceptablePointEv.exit

_ZN5Ipopt22BacktrackingLineSearch20StoreAcceptablePointEv.exit: ; preds = %bb.o, %bb.p, %bb.q
  %i.ck = load ptr, ptr %i.j, align 8, !tbaa !61
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 68
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !91
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i32 %i.cm, ptr %i.cn, align 8, !tbaa !80
  br label %_ZN5Ipopt22BacktrackingLineSearch19CurrentIsAcceptableEv.exit.thread

_ZN5Ipopt22BacktrackingLineSearch19CurrentIsAcceptableEv.exit.thread: ; preds = %bb.j, %_ZN5Ipopt22BacktrackingLineSearch20StoreAcceptablePointEv.exit, %_ZN5Ipopt22BacktrackingLineSearch19CurrentIsAcceptableEv.exit
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 222 ; 2 uses
  store i8 0, ptr %i.co, align 2, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  store ptr null, ptr %1, align 8, !tbaa !95
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 3 uses
  %i.cq = load i8, ptr %i.cp, align 4, !tbaa !78, !range !96, !noundef !97
  %i.cr = trunc nuw i8 %i.cq to i1                ; 2 uses
  br i1 %i.cr, label %bb.r, label %bb.ay

bb.r:                                             ; preds = %_ZN5Ipopt22BacktrackingLineSearch19CurrentIsAcceptableEv.exit.thread
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !58
  %.not689 = icmp eq ptr %i.ct, null
  br i1 %.not689, label %bb.t, label %bb.ai

bb.s:                                             ; preds = %bb.bk, %bb.t
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit292

bb.t:                                             ; preds = %bb.r
  %i.cv = load ptr, ptr %i.au, align 8, !tbaa !57 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !31
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 120
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = invoke noundef zeroext i1 %i.cy(ptr noundef nonnull align 8 dereferenceable(49) %i.cv)
          to label %bb.u unwind label %bb.s

bb.u:                                             ; preds = %bb.t
  br i1 %i.cz, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i8 0, ptr %i.da, align 8, !tbaa !55
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !56 ; 4 uses
  %.not.i.i.i233 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i233, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !29
  %i.df = add nsw i32 %i.de, -1                   ; 2 uses
  store i32 %i.df, ptr %i.dd, align 8, !tbaa !29
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dh = load ptr, ptr %i.dc, align 8, !tbaa !31
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8
  tail call void %i.dj(ptr noundef nonnull align 8 dereferenceable(280) %i.dc) #23, !inline_history !1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  store ptr null, ptr %i.db, align 8, !tbaa !56
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !56 ; 4 uses
  %.not.i.i.i235 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i235, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !29
  %i.do = add nsw i32 %i.dn, -1                   ; 2 uses
  store i32 %i.do, ptr %i.dm, align 8, !tbaa !29
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dq = load ptr, ptr %i.dl, align 8, !tbaa !31
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8
  tail call void %i.ds(ptr noundef nonnull align 8 dereferenceable(280) %i.dl) #23, !inline_history !1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %bb.z, %bb.aa
  store ptr null, ptr %i.dk, align 8, !tbaa !56
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 228
  store i32 0, ptr %i.dt, align 4, !tbaa !79
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i32 0, ptr %i.du, align 4, !tbaa !93
  %i.dv = load ptr, ptr %i.j, align 8, !tbaa !61
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 136
  store i8 88, ptr %i.dw, align 8, !tbaa !98
  store i8 0, ptr %i.cp, align 4, !tbaa !78
  br label %bb.jc

bb.ac:                                            ; preds = %bb.u
  %i.dx = tail call ptr @__cxa_allocate_exception(i64 112) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.74, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.ad unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239.thread

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.75, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.ae unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN5Ipopt23STEP_COMPUTATION_FAILEDC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_i(ptr noundef nonnull align 8 dereferenceable(112) %i.dx, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 321)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  invoke void @__cxa_throw(ptr nonnull %i.dx, ptr nonnull @_ZTIN5Ipopt23STEP_COMPUTATION_FAILEDE, ptr nonnull @_ZN5Ipopt14IpoptExceptionD2Ev) #25
          to label %bb.ji unwind label %bb.ag

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239.thread: ; preds = %bb.ac
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.098 = phi i1 [ false, %bb.af ], [ true, %bb.ae ] ; 2 uses
  %i.dz = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ea = load ptr, ptr %4, align 8, !tbaa !70    ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ag
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !71
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.ef = load ptr, ptr %2, align 8, !tbaa !70    ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.eh = icmp eq ptr %i.ef, %i.eg
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.ad
  %i.ei = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.ej = load ptr, ptr %2, align 8, !tbaa !70    ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.el = icmp eq ptr %i.ej, %i.ek
  br i1 %i.el, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %i.em = load i64, ptr %i.ek, align 8, !tbaa !71
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.en) #24
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.eo = load i64, ptr %i.eg, align 8, !tbaa !71
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ep) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %.098, label %bb.ah, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit292

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %.098, label %bb.ah, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit292

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237.thread
  %.pn161.pn528.ph = phi { ptr, i32 } [ %i.ei, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237.thread ], [ %i.dy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239.thread ], [ %i.ei, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.ah

bb.ah:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239
  %.pn161.pn528 = phi { ptr, i32 } [ %i.dz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237 ], [ %i.dz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239 ], [ %.pn161.pn528.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.dx) #23
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit292

bb.ai:                                            ; preds = %bb.r
  store i8 0, ptr %i.cp, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.eq = load ptr, ptr %i.j, align 8, !tbaa !61
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !56, !noalias !312 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.es, null
  br i1 %.not.i.i.i.i, label %_ZNK5Ipopt9IpoptData4currEv.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8 ; 2 uses
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !29, !noalias !312
  %i.ev = add nsw i32 %i.eu, 1
  store i32 %i.ev, ptr %i.et, align 8, !tbaa !29, !noalias !312
  br label %_ZNK5Ipopt9IpoptData4currEv.exit

_ZNK5Ipopt9IpoptData4currEv.exit:                 ; preds = %bb.aj, %bb.ai
  invoke void @_ZNK5Ipopt14IteratesVector21MakeNewIteratesVectorEb(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.37") align 8 %6, ptr noundef nonnull align 8 dereferenceable(280) %i.es, i1 noundef zeroext true)
          to label %bb.ak unwind label %bb.av

bb.ak:                                            ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 8 ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !29
  %i.ey = add nsw i32 %i.ex, -1                   ; 2 uses
  store i32 %i.ey, ptr %i.ew, align 8, !tbaa !29
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %bb.al, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit

bb.al:                                            ; preds = %bb.ak
  %i.fa = load ptr, ptr %i.es, align 8, !tbaa !31
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8
  call void %i.fc(ptr noundef nonnull align 8 dereferenceable(280) %i.es) #23, !inline_history !0
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit: ; preds = %bb.ak, %bb.al
  %i.fd = load ptr, ptr %6, align 8, !tbaa !95    ; 3 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !31
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 72
  %i.fg = load ptr, ptr %i.ff, align 8
  invoke void %i.fg(ptr noundef nonnull align 8 dereferenceable(205) %i.fd, double noundef 0.000000e+00)
          to label %.noexc unwind label %bb.aw, !inline_history !2

.noexc:                                           ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(205) %i.fd)
          to label %bb.am unwind label %bb.aw

bb.am:                                            ; preds = %.noexc
  %i.fh = load ptr, ptr %i.j, align 8, !tbaa !61
  %i.fi = load ptr, ptr %6, align 8, !tbaa !95, !noalias !313 ; 6 uses
  %.not.i.i.i.i241 = icmp eq ptr %i.fi, null      ; 2 uses
  br i1 %.not.i.i.i.i241, label %_ZN5Ipopt8ConstPtrINS_14IteratesVectorEEENS_8SmartPtrIKT_EERKNS2_IS3_EE.exit.thread.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8 ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !29, !noalias !313
  %i.fl = add nsw i32 %i.fk, 2
  store i32 %i.fl, ptr %i.fj, align 8, !tbaa !29
  br label %_ZN5Ipopt8ConstPtrINS_14IteratesVectorEEENS_8SmartPtrIKT_EERKNS2_IS3_EE.exit.thread.i

_ZN5Ipopt8ConstPtrINS_14IteratesVectorEEENS_8SmartPtrIKT_EERKNS2_IS3_EE.exit.thread.i: ; preds = %bb.an, %bb.am
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fh, i64 40 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !56 ; 4 uses
  %.not.i.i.i.i.i242 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i.i.i.i242, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %_ZN5Ipopt8ConstPtrINS_14IteratesVectorEEENS_8SmartPtrIKT_EERKNS2_IS3_EE.exit.thread.i
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8 ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !29
  %i.fq = add nsw i32 %i.fp, -1                   ; 2 uses
  store i32 %i.fq, ptr %i.fo, align 8, !tbaa !29
  %i.fr = icmp eq i32 %i.fq, 0
  br i1 %i.fr, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.fs = load ptr, ptr %i.fn, align 8, !tbaa !31
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8
  call void %i.fu(ptr noundef nonnull align 8 dereferenceable(280) %i.fn) #23, !inline_history !231
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %_ZN5Ipopt8ConstPtrINS_14IteratesVectorEEENS_8SmartPtrIKT_EERKNS2_IS3_EE.exit.thread.i
  store ptr %i.fi, ptr %i.fm, align 8, !tbaa !56
  br i1 %.not.i.i.i.i241, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fi, i64 8 ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !29
  %i.fx = add nsw i32 %i.fw, -1                   ; 2 uses
  store i32 %i.fx, ptr %i.fv, align 8, !tbaa !29
  %i.fy = icmp eq i32 %i.fx, 0
  br i1 %i.fy, label %bb.as, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit.i

bb.as:                                            ; preds = %bb.ar
  %i.fz = load ptr, ptr %i.fi, align 8, !tbaa !31
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8
  call void %i.gb(ptr noundef nonnull align 8 dereferenceable(280) %i.fi) #23, !inline_history !232
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit.i

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit.i: ; preds = %bb.as, %bb.ar, %bb.aq
  %i.gc = load ptr, ptr %6, align 8, !tbaa !95    ; 4 uses
  %.not.i.i.i5.i = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i5.i, label %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8 ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !29
  %i.gf = add nsw i32 %i.ge, -1                   ; 2 uses
  store i32 %i.gf, ptr %i.gd, align 8, !tbaa !29
  %i.gg = icmp eq i32 %i.gf, 0
  br i1 %i.gg, label %bb.au, label %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit

bb.au:                                            ; preds = %bb.at
  %i.gh = load ptr, ptr %i.gc, align 8, !tbaa !31
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8
  call void %i.gj(ptr noundef nonnull align 8 dereferenceable(280) %i.gc) #23, !inline_history !233
  br label %_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_14IteratesVectorEED2Ev.exit: ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit.i, %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.bk

bb.av:                                            ; preds = %_ZNK5Ipopt9IpoptData4currEv.exit
  %i.gk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.es, i64 8 ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !29
  %i.gn = add nsw i32 %i.gm, -1                   ; 2 uses
  store i32 %i.gn, ptr %i.gl, align 8, !tbaa !29
  %i.go = icmp eq i32 %i.gn, 0
  br i1 %i.go, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit245.sink.split, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit245

bb.aw:                                            ; preds = %.noexc, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit
  %i.gp = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.gq = load ptr, ptr %6, align 8, !tbaa !95    ; 3 uses
  %.not.i.i246 = icmp eq ptr %i.gq, null
  br i1 %.not.i.i246, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit245, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8 ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !29
  %i.gt = add nsw i32 %i.gs, -1                   ; 2 uses
  store i32 %i.gt, ptr %i.gr, align 8, !tbaa !29
  %i.gu = icmp eq i32 %i.gt, 0
  br i1 %i.gu, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit245.sink.split, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit245

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit245.sink.split: ; preds = %bb.ax, %bb.av
  %.sink816 = phi ptr [ %i.es, %bb.av ], [ %i.gq, %bb.ax ] ; 2 uses
  %.pn166.ph = phi { ptr, i32 } [ %i.gk, %bb.av ], [ %i.gp, %bb.ax ]
  %i.gv = load ptr, ptr %.sink816, align 8, !tbaa !31
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8
  call void %i.gx(ptr noundef nonnull align 8 dereferenceable(280) %.sink816) #23
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit245

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit245: ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit245.sink.split, %bb.ax, %bb.aw, %bb.av
  %.pn166 = phi { ptr, i32 } [ %i.gp, %bb.aw ], [ %i.gp, %bb.ax ], [ %i.gk, %bb.av ], [ %.pn166.ph, %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit245.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit292

bb.ay:                                            ; preds = %_ZN5Ipopt22BacktrackingLineSearch19CurrentIsAcceptableEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.gy = load ptr, ptr %i.j, align 8, !tbaa !61
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 40
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !56, !noalias !314 ; 9 uses
  %.not.i.i.i.i248 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i.i.i248, label %_ZNK5Ipopt9IpoptData5deltaEv.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8 ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !29, !noalias !314
  %i.hd = add nsw i32 %i.hc, 1
  store i32 %i.hd, ptr %i.hb, align 8, !tbaa !29, !noalias !314
  br label %_ZNK5Ipopt9IpoptData5deltaEv.exit

_ZNK5Ipopt9IpoptData5deltaEv.exit:                ; preds = %bb.az, %bb.ay
  invoke void @_ZNK5Ipopt14IteratesVector16MakeNewContainerEv(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.37") align 8 %7, ptr noundef nonnull align 8 dereferenceable(280) %i.ha)
          to label %bb.ba unwind label %.thread

bb.ba:                                            ; preds = %_ZNK5Ipopt9IpoptData5deltaEv.exit
  %i.he = load ptr, ptr %7, align 8, !tbaa !95    ; 5 uses
  %.not.i.i.i249 = icmp eq ptr %i.he, null
  br i1 %.not.i.i.i249, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8 ; 2 uses
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !29
  %i.hh = add nsw i32 %i.hg, 1
end_hunk_0
begin_hunk_1_@_ZN5Ipopt22BacktrackingLineSearch24FindAcceptableTrialPointEv:bb.a

bb.ez:                                            ; preds = %bb.ey, %bb.ex
  invoke void @_ZN5Ipopt22BacktrackingLineSearch12StopWatchDogERNS_8SmartPtrINS_14IteratesVectorEEE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.fa unwind label %.loopexit.split-lp807.loopexit.split-lp.loopexit.loopexit.split-lp

bb.fa:                                            ; preds = %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  br label %bb.et, !llvm.loop !284

bb.fb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381, %.loopexit.split-lp807.loopexit.split-lp.loopexit.loopexit.split-lp
  %.pn191 = phi { ptr, i32 } [ %lpad.loopexit.split-lp835, %.loopexit.split-lp807.loopexit.split-lp.loopexit.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit324

.split803.thread:                                 ; preds = %bb.er, %bb.ey, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br label %bb.hw

.split803:                                        ; preds = %bb.eu, %bb.eo
  %.lcssa = phi i1 [ %i.yf, %bb.eo ], [ %i.yn, %bb.eu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br i1 %.lcssa, label %bb.hw, label %.thread583

bb.fc:                                            ; preds = %bb.eg
  br i1 %.083.shrunk, label %bb.hw, label %.thread583

.thread583:                                       ; preds = %.split804, %.split803, %bb.ei, %bb.fc
  %i.zo = getelementptr inbounds nuw i8, ptr %0, i64 221
  %i.zp = load i8, ptr %i.zo, align 1, !tbaa !75, !range !96, !noundef !97
  %i.zq = trunc nuw i8 %i.zp to i1
  br i1 %i.zq, label %bb.ff, label %bb.fd

bb.fd:                                            ; preds = %.thread583
  %i.zr = load ptr, ptr %i.h, align 8, !tbaa !63  ; 2 uses
  %i.zs = load ptr, ptr %i.zr, align 8, !tbaa !31
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 16
  %i.zu = load ptr, ptr %i.zt, align 8
  invoke void (ptr, i32, i32, ptr, ...) %i.zu(ptr noundef nonnull align 8 dereferenceable(40) %i.zr, i32 noundef 6, i32 noundef 8, ptr noundef nonnull @.str.79)
          to label %bb.fe unwind label %bb.if

bb.fe:                                            ; preds = %bb.fd
  store i8 1, ptr %i.co, align 2, !tbaa !76
  br label %bb.jb

bb.ff:                                            ; preds = %.thread583
  %i.zv = getelementptr inbounds nuw i8, ptr %0, i64 223 ; 4 uses
  %i.zw = load i8, ptr %i.zv, align 1, !tbaa !128, !range !96, !noundef !97 ; 3 uses
  %i.zx = or i8 %i.zw, %.3154
  %or.cond9.not = icmp eq i8 %i.zx, 0
  br i1 %or.cond9.not, label %bb.fg, label %.thread587

bb.fg:                                            ; preds = %bb.ff
  %i.zy = load i8, ptr %i.ix, align 4, !tbaa !99, !range !96, !noundef !97
  %i.zz = trunc nuw i8 %i.zy to i1
  br i1 %i.zz, label %.thread587, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.aaa = load ptr, ptr %i.h, align 8, !tbaa !63 ; 2 uses
  %i.aab = load ptr, ptr %i.aaa, align 8, !tbaa !31
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 16
  %i.aad = load ptr, ptr %i.aac, align 8
  invoke void (ptr, i32, i32, ptr, ...) %i.aad(ptr noundef nonnull align 8 dereferenceable(40) %i.aaa, i32 noundef 6, i32 noundef 8, ptr noundef nonnull @.str.80)
          to label %bb.fi unwind label %bb.if

bb.fi:                                            ; preds = %bb.fh
  %i.aae = load ptr, ptr %i.au, align 8, !tbaa !57 ; 2 uses
  %i.aaf = load ptr, ptr %i.aae, align 8, !tbaa !31
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaf, i64 40
  %i.aah = load ptr, ptr %i.aag, align 8
  invoke void %i.aah(ptr noundef nonnull align 8 dereferenceable(49) %i.aae)
          to label %bb.fj unwind label %bb.if

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  %i.aai = invoke noundef zeroext i1 @_ZN5Ipopt22BacktrackingLineSearch16TrySoftRestoStepERNS_8SmartPtrINS_14IteratesVectorEEERb(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.g)
          to label %bb.fk unwind label %bb.fm

bb.fk:                                            ; preds = %bb.fj
  br i1 %i.aai, label %bb.fl, label %bb.fo

bb.fl:                                            ; preds = %bb.fk
  %i.aaj = load i8, ptr %i.g, align 1, !tbaa !134, !range !96, !noundef !97
  %i.aak = trunc nuw i8 %i.aaj to i1
  br i1 %i.aak, label %.thread590, label %bb.fn

bb.fm:                                            ; preds = %bb.fj
  %i.aal = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit324

bb.fn:                                            ; preds = %bb.fl
  store i8 1, ptr %i.zv, align 1, !tbaa !128
  br label %.thread590

.thread590:                                       ; preds = %bb.fl, %bb.fn
  %.sink817 = phi i8 [ 115, %bb.fn ], [ 83, %bb.fl ]
  %i.aam = load ptr, ptr %i.j, align 8, !tbaa !61
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 136
  store i8 %.sink817, ptr %i.aan, align 8, !tbaa !98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  br label %bb.jb

bb.fo:                                            ; preds = %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  %.pre703 = load i8, ptr %i.zv, align 1, !tbaa !128, !range !96
  br label %.thread587

.thread587:                                       ; preds = %bb.fg, %bb.ff, %bb.fo
  %i.aao = phi i8 [ %i.zw, %bb.fg ], [ %i.zw, %bb.ff ], [ %.pre703, %bb.fo ]
  %i.aap = trunc nuw i8 %i.aao to i1
  br i1 %i.aap, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %.thread587
  %i.aaq = load ptr, ptr %i.au, align 8, !tbaa !57 ; 2 uses
  %i.aar = load ptr, ptr %i.aaq, align 8, !tbaa !31
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 40
  %i.aat = load ptr, ptr %i.aas, align 8
  invoke void %i.aat(ptr noundef nonnull align 8 dereferenceable(49) %i.aaq)
          to label %bb.fq unwind label %bb.if

bb.fq:                                            ; preds = %bb.fp, %.thread587
  %i.aau = load ptr, ptr %i.be, align 8, !tbaa !59 ; 3 uses
  %.not.i382 = icmp eq ptr %i.aau, null
  br i1 %.not.i382, label %_ZN5Ipopt22BacktrackingLineSearch19CurrentIsAcceptableEv.exit384.thread, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.aav = load ptr, ptr %i.aau, align 8, !tbaa !31
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 32
  %i.aax = load ptr, ptr %i.aaw, align 8
  %i.aay = invoke noundef zeroext i1 %i.aax(ptr noundef nonnull align 8 dereferenceable(49) %i.aau)
          to label %_ZN5Ipopt22BacktrackingLineSearch19CurrentIsAcceptableEv.exit384 unwind label %bb.if, !inline_history !310

_ZN5Ipopt22BacktrackingLineSearch19CurrentIsAcceptableEv.exit384: ; preds = %bb.fr
  br i1 %i.aay, label %bb.fs, label %_ZN5Ipopt22BacktrackingLineSearch19CurrentIsAcceptableEv.exit384.thread

bb.fs:                                            ; preds = %_ZN5Ipopt22BacktrackingLineSearch19CurrentIsAcceptableEv.exit384
  %i.aaz = call ptr @__cxa_allocate_exception(i64 112) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.81, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.ft unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390.thread

bb.ft:                                            ; preds = %bb.fs
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.75, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.fu unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387.thread

bb.fu:                                            ; preds = %bb.ft
  invoke void @_ZN5Ipopt24ACCEPTABLE_POINT_REACHEDC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_i(ptr noundef nonnull align 8 dereferenceable(112) %i.aaz, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 570)
          to label %bb.fv unwind label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  invoke void @__cxa_throw(ptr nonnull %i.aaz, ptr nonnull @_ZTIN5Ipopt24ACCEPTABLE_POINT_REACHEDE, ptr nonnull @_ZN5Ipopt14IpoptExceptionD2Ev) #25
          to label %bb.ji unwind label %bb.fw

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390.thread: ; preds = %bb.fs
  %i.aba = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split820

bb.fw:                                            ; preds = %bb.fv, %bb.fu
  %.076 = phi i1 [ false, %bb.fv ], [ true, %bb.fu ] ; 2 uses
  %i.abb = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.abc = load ptr, ptr %11, align 8, !tbaa !70  ; 2 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.abe = icmp eq ptr %i.abc, %i.abd
  br i1 %i.abe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i385

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i385: ; preds = %bb.fw
  %i.abf = load i64, ptr %i.abd, align 8, !tbaa !71
  %i.abg = add i64 %i.abf, 1
  call void @_ZdlPvm(ptr noundef %i.abc, i64 noundef %i.abg) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387: ; preds = %bb.fw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i385
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.abh = load ptr, ptr %9, align 8, !tbaa !70   ; 2 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.abj = icmp eq ptr %i.abh, %i.abi
  br i1 %i.abj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387.thread: ; preds = %bb.ft
  %i.abk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.abl = load ptr, ptr %9, align 8, !tbaa !70   ; 2 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.abn = icmp eq ptr %i.abl, %i.abm
  br i1 %i.abn, label %.sink.split820, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387.thread
  %i.abo = load i64, ptr %i.abm, align 8, !tbaa !71
  %i.abp = add i64 %i.abo, 1
  call void @_ZdlPvm(ptr noundef %i.abl, i64 noundef %i.abp) #24
  br label %.sink.split820

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387
  %i.abq = load i64, ptr %i.abi, align 8, !tbaa !71
  %i.abr = add i64 %i.abq, 1
  call void @_ZdlPvm(ptr noundef %i.abh, i64 noundef %i.abr) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br i1 %.076, label %bb.fx, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit324

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br i1 %.076, label %bb.fx, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit324

.sink.split820:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388.thread
  %.pn213.pn593.ph = phi { ptr, i32 } [ %i.abk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388.thread ], [ %i.aba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390.thread ], [ %i.abk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.fx

bb.fx:                                            ; preds = %.sink.split820, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390
  %.pn213.pn593 = phi { ptr, i32 } [ %i.abb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388 ], [ %i.abb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390 ], [ %.pn213.pn593.ph, %.sink.split820 ]
  call void @__cxa_free_exception(ptr %i.aaz) #23
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit324

_ZN5Ipopt22BacktrackingLineSearch19CurrentIsAcceptableEv.exit384.thread: ; preds = %bb.fq, %_ZN5Ipopt22BacktrackingLineSearch19CurrentIsAcceptableEv.exit384
  %i.abs = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.abt = load ptr, ptr %i.abs, align 8, !tbaa !58
  %.not691 = icmp eq ptr %i.abt, null
  br i1 %.not691, label %bb.fy, label %bb.gg

bb.fy:                                            ; preds = %_ZN5Ipopt22BacktrackingLineSearch19CurrentIsAcceptableEv.exit384.thread
  %i.abu = call ptr @__cxa_allocate_exception(i64 112) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.82, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.fz unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399.thread

bb.fz:                                            ; preds = %bb.fy
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.75, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.ga unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396.thread

bb.ga:                                            ; preds = %bb.fz
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.83, ptr noundef nonnull align 1 dereferenceable(1) %18)
          to label %bb.gb unwind label %bb.gd

bb.gb:                                            ; preds = %bb.ga
  invoke void @_ZN5Ipopt14IpoptExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iS8_(ptr noundef nonnull align 8 dereferenceable(112) %i.abu, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %15, i32 noundef 575, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.gc unwind label %bb.ge

bb.gc:                                            ; preds = %bb.gb
  invoke void @__cxa_throw(ptr nonnull %i.abu, ptr nonnull @_ZTIN5Ipopt14IpoptExceptionE, ptr nonnull @_ZN5Ipopt14IpoptExceptionD2Ev) #25
          to label %bb.ji unwind label %bb.ge

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399.thread: ; preds = %bb.fy
  %i.abv = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split821

bb.gd:                                            ; preds = %bb.ga
  %i.abw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393

bb.ge:                                            ; preds = %bb.gc, %bb.gb
  %.073 = phi i1 [ false, %bb.gc ], [ true, %bb.gb ] ; 2 uses
  %i.abx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aby = load ptr, ptr %17, align 8, !tbaa !70  ; 2 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.aca = icmp eq ptr %i.aby, %i.abz
  br i1 %i.aca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i391

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i391: ; preds = %bb.ge
  %i.acb = load i64, ptr %i.abz, align 8, !tbaa !71
  %i.acc = add i64 %i.acb, 1
  call void @_ZdlPvm(ptr noundef %i.aby, i64 noundef %i.acc) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393: ; preds = %bb.ge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i391, %bb.gd
  %.pn195 = phi { ptr, i32 } [ %i.abw, %bb.gd ], [ %i.abx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i391 ], [ %i.abx, %bb.ge ] ; 4 uses
  %.174 = phi i1 [ true, %bb.gd ], [ %.073, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i391 ], [ %.073, %bb.ge ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  %i.acd = load ptr, ptr %15, align 8, !tbaa !70  ; 2 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.acf = icmp eq ptr %i.acd, %i.ace
  br i1 %i.acf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i394

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i394: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393
  %i.acg = load i64, ptr %i.ace, align 8, !tbaa !71
  %i.ach = add i64 %i.acg, 1
  call void @_ZdlPvm(ptr noundef %i.acd, i64 noundef %i.ach) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i394
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  %i.aci = load ptr, ptr %13, align 8, !tbaa !70  ; 2 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ack = icmp eq ptr %i.aci, %i.acj
  br i1 %i.ack, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396.thread: ; preds = %bb.fz
  %i.acl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  %i.acm = load ptr, ptr %13, align 8, !tbaa !70  ; 2 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.aco = icmp eq ptr %i.acm, %i.acn
  br i1 %i.aco, label %.sink.split821, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396.thread
  %i.acp = load i64, ptr %i.acn, align 8, !tbaa !71
  %i.acq = add i64 %i.acp, 1
  call void @_ZdlPvm(ptr noundef %i.acm, i64 noundef %i.acq) #24
  br label %.sink.split821

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396
  %i.acr = load i64, ptr %i.acj, align 8, !tbaa !71
  %i.acs = add i64 %i.acr, 1
  call void @_ZdlPvm(ptr noundef %i.aci, i64 noundef %i.acs) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br i1 %.174, label %bb.gf, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit324

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br i1 %.174, label %bb.gf, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit324

.sink.split821:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397.thread
  %.pn195.pn.pn605.ph = phi { ptr, i32 } [ %i.acl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397.thread ], [ %i.abv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399.thread ], [ %i.acl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.gf

bb.gf:                                            ; preds = %.sink.split821, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399
  %.pn195.pn.pn605 = phi { ptr, i32 } [ %.pn195, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397 ], [ %.pn195, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399 ], [ %.pn195.pn.pn605.ph, %.sink.split821 ]
  call void @__cxa_free_exception(ptr %i.abu) #23
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit324

bb.gg:                                            ; preds = %_ZN5Ipopt22BacktrackingLineSearch19CurrentIsAcceptableEv.exit384.thread
  %i.act = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.acu = load ptr, ptr %i.act, align 8, !tbaa !60 ; 2 uses
  %i.acv = load ptr, ptr %i.acu, align 8, !tbaa !31
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acv, i64 64
  %i.acx = load ptr, ptr %i.acw, align 8
  %i.acy = invoke noundef double %i.acx(ptr noundef nonnull align 8 dereferenceable(2185) %i.acu)
          to label %bb.gh unwind label %bb.if

bb.gh:                                            ; preds = %bb.gg
  %i.acz = load ptr, ptr %i.j, align 8, !tbaa !61 ; 2 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 104
  %i.adb = load double, ptr %i.ada, align 8, !tbaa !341
  %i.adc = fmul double %i.adb, 1.000000e-02
  %i.add = fcmp ugt double %i.acy, %i.adc
  br i1 %i.add, label %bb.hd, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.ade = load ptr, ptr %i.act, align 8, !tbaa !60 ; 2 uses
  %i.adf = load ptr, ptr %i.ade, align 8, !tbaa !31
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adf, i64 88
  %i.adh = load ptr, ptr %i.adg, align 8
  %i.adi = invoke noundef double %i.adh(ptr noundef nonnull align 8 dereferenceable(2185) %i.ade, i32 noundef 2)
          to label %bb.gj unwind label %bb.if

bb.gj:                                            ; preds = %bb.gi
  %i.adj = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.adk = load double, ptr %i.adj, align 8, !tbaa !342
  %i.adl = fmul double %i.adk, 1.000000e-01
  %i.adm = fcmp ugt double %i.adi, %i.adl
  br i1 %i.adm, label %._crit_edge, label %bb.gk

._crit_edge:                                      ; preds = %bb.gj
  %.pre704 = load ptr, ptr %i.j, align 8, !tbaa !61
  br label %bb.hd

bb.gk:                                            ; preds = %bb.gj
  %i.adn = invoke noundef zeroext i1 @_ZN5Ipopt22BacktrackingLineSearch22RestoreAcceptablePointEv(ptr noundef nonnull align 8 dereferenceable(264) %0)
          to label %bb.gl unwind label %bb.if

bb.gl:                                            ; preds = %bb.gk
  %i.ado = load ptr, ptr %i.h, align 8, !tbaa !63 ; 4 uses
  br i1 %i.adn, label %bb.gm, label %bb.gt

bb.gm:                                            ; preds = %bb.gl
  %i.adp = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.adq = load i32, ptr %i.adp, align 8, !tbaa !80
  %i.adr = load ptr, ptr %i.ado, align 8, !tbaa !31
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adr, i64 16
  %i.adt = load ptr, ptr %i.ads, align 8
  invoke void (ptr, i32, i32, ptr, ...) %i.adt(ptr noundef nonnull align 8 dereferenceable(40) %i.ado, i32 noundef 4, i32 noundef 8, ptr noundef nonnull @.str.84, i32 noundef %i.adq)
          to label %bb.gn unwind label %bb.if

bb.gn:                                            ; preds = %bb.gm
  %i.adu = call ptr @__cxa_allocate_exception(i64 112) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.85, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.go unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405.thread

bb.go:                                            ; preds = %bb.gn
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @.str.75, ptr noundef nonnull align 1 dereferenceable(1) %22)
          to label %bb.gp unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402.thread

bb.gp:                                            ; preds = %bb.go
  invoke void @_ZN5Ipopt24ACCEPTABLE_POINT_REACHEDC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_i(ptr noundef nonnull align 8 dereferenceable(112) %i.adu, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(32) %21, i32 noundef 590)
          to label %bb.gq unwind label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  invoke void @__cxa_throw(ptr nonnull %i.adu, ptr nonnull @_ZTIN5Ipopt24ACCEPTABLE_POINT_REACHEDE, ptr nonnull @_ZN5Ipopt14IpoptExceptionD2Ev) #25
          to label %bb.ji unwind label %bb.gr

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405.thread: ; preds = %bb.gn
  %i.adv = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split822

bb.gr:                                            ; preds = %bb.gq, %bb.gp
  %.070 = phi i1 [ false, %bb.gq ], [ true, %bb.gp ] ; 2 uses
  %i.adw = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.adx = load ptr, ptr %21, align 8, !tbaa !70  ; 2 uses
  %i.ady = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.adz = icmp eq ptr %i.adx, %i.ady
  br i1 %i.adz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i400

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i400: ; preds = %bb.gr
  %i.aea = load i64, ptr %i.ady, align 8, !tbaa !71
  %i.aeb = add i64 %i.aea, 1
  call void @_ZdlPvm(ptr noundef %i.adx, i64 noundef %i.aeb) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402: ; preds = %bb.gr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i400
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  %i.aec = load ptr, ptr %19, align 8, !tbaa !70  ; 2 uses
  %i.aed = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.aee = icmp eq ptr %i.aec, %i.aed
  br i1 %i.aee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402.thread: ; preds = %bb.go
  %i.aef = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  %i.aeg = load ptr, ptr %19, align 8, !tbaa !70  ; 2 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.aei = icmp eq ptr %i.aeg, %i.aeh
  br i1 %i.aei, label %.sink.split822, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402.thread
  %i.aej = load i64, ptr %i.aeh, align 8, !tbaa !71
  %i.aek = add i64 %i.aej, 1
  call void @_ZdlPvm(ptr noundef %i.aeg, i64 noundef %i.aek) #24
  br label %.sink.split822

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402
  %i.ael = load i64, ptr %i.aed, align 8, !tbaa !71
  %i.aem = add i64 %i.ael, 1
  call void @_ZdlPvm(ptr noundef %i.aec, i64 noundef %i.aem) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  br i1 %.070, label %bb.gs, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit324

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  br i1 %.070, label %bb.gs, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit324

.sink.split822:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403.thread
  %.pn209.pn617.ph = phi { ptr, i32 } [ %i.aef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403.thread ], [ %i.adv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405.thread ], [ %i.aef, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  br label %bb.gs

bb.gs:                                            ; preds = %.sink.split822, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405
  %.pn209.pn617 = phi { ptr, i32 } [ %i.adw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403 ], [ %i.adw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405 ], [ %.pn209.pn617.ph, %.sink.split822 ]
  call void @__cxa_free_exception(ptr %i.adu) #23
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit324

bb.gt:                                            ; preds = %bb.gl
  %i.aen = load ptr, ptr %i.act, align 8, !tbaa !60 ; 3 uses
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aen, i64 16
  %i.aep = load ptr, ptr %i.aeo, align 8, !tbaa !62 ; 2 uses
  %i.aeq = icmp eq ptr %i.aep, null
  br i1 %i.aeq, label %bb.gv, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.aer = call ptr @__dynamic_cast(ptr nonnull %i.aep, ptr nonnull @_ZTIN5Ipopt8IpoptNLPE, ptr nonnull @_ZTIN5Ipopt12OrigIpoptNLPE, i64 0) #23
  %i.aes = icmp eq ptr %i.aer, null
  %i.aet = select i1 %i.aes, ptr @.str.87, ptr @.str.35
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.gt
  %i.aeu = phi ptr [ %i.aet, %bb.gu ], [ @.str.87, %bb.gt ]
  %i.aev = load ptr, ptr %i.aen, align 8, !tbaa !31
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aev, i64 88
  %i.aex = load ptr, ptr %i.aew, align 8
  %i.aey = invoke noundef double %i.aex(ptr noundef nonnull align 8 dereferenceable(2185) %i.aen, i32 noundef 2)
          to label %bb.gw unwind label %bb.if

bb.gw:                                            ; preds = %bb.gv
  %i.aez = load ptr, ptr %i.ado, align 8, !tbaa !31
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aez, i64 16
  %i.afb = load ptr, ptr %i.afa, align 8
  invoke void (ptr, i32, i32, ptr, ...) %i.afb(ptr noundef nonnull align 8 dereferenceable(40) %i.ado, i32 noundef 2, i32 noundef 8, ptr noundef nonnull @.str.86, ptr noundef nonnull %i.aeu, double noundef %i.aey)
          to label %bb.gx unwind label %bb.if

bb.gx:                                            ; preds = %bb.gw
  %i.afc = call ptr @__cxa_allocate_exception(i64 112) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.88, ptr noundef nonnull align 1 dereferenceable(1) %24)
          to label %bb.gy unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411.thread

bb.gy:                                            ; preds = %bb.gx
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull @.str.75, ptr noundef nonnull align 1 dereferenceable(1) %26)
          to label %bb.gz unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408.thread

bb.gz:                                            ; preds = %bb.gy
  invoke void @_ZN5Ipopt23STEP_COMPUTATION_FAILEDC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_i(ptr noundef nonnull align 8 dereferenceable(112) %i.afc, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(32) %25, i32 noundef 598)
          to label %bb.ha unwind label %bb.hb

bb.ha:                                            ; preds = %bb.gz
  invoke void @__cxa_throw(ptr nonnull %i.afc, ptr nonnull @_ZTIN5Ipopt23STEP_COMPUTATION_FAILEDE, ptr nonnull @_ZN5Ipopt14IpoptExceptionD2Ev) #25
          to label %bb.ji unwind label %bb.hb

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411.thread: ; preds = %bb.gx
  %i.afd = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split823

bb.hb:                                            ; preds = %bb.ha, %bb.gz
  %.067 = phi i1 [ false, %bb.ha ], [ true, %bb.gz ] ; 2 uses
  %i.afe = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.aff = load ptr, ptr %25, align 8, !tbaa !70  ; 2 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.afh = icmp eq ptr %i.aff, %i.afg
  br i1 %i.afh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406: ; preds = %bb.hb
  %i.afi = load i64, ptr %i.afg, align 8, !tbaa !71
  %i.afj = add i64 %i.afi, 1
  call void @_ZdlPvm(ptr noundef %i.aff, i64 noundef %i.afj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408: ; preds = %bb.hb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  %i.afk = load ptr, ptr %23, align 8, !tbaa !70  ; 2 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.afm = icmp eq ptr %i.afk, %i.afl
  br i1 %i.afm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408.thread: ; preds = %bb.gy
  %i.afn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  %i.afo = load ptr, ptr %23, align 8, !tbaa !70  ; 2 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.afq = icmp eq ptr %i.afo, %i.afp
  br i1 %i.afq, label %.sink.split823, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408.thread
  %i.afr = load i64, ptr %i.afp, align 8, !tbaa !71
  %i.afs = add i64 %i.afr, 1
  call void @_ZdlPvm(ptr noundef %i.afo, i64 noundef %i.afs) #24
  br label %.sink.split823

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408
  %i.aft = load i64, ptr %i.afl, align 8, !tbaa !71
  %i.afu = add i64 %i.aft, 1
  call void @_ZdlPvm(ptr noundef %i.afk, i64 noundef %i.afu) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  br i1 %.067, label %bb.hc, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit324

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  br i1 %.067, label %bb.hc, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit324

.sink.split823:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409.thread
  %.pn206.pn629.ph = phi { ptr, i32 } [ %i.afn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409.thread ], [ %i.afd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411.thread ], [ %i.afn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  br label %bb.hc

bb.hc:                                            ; preds = %.sink.split823, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411
  %.pn206.pn629 = phi { ptr, i32 } [ %i.afe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409 ], [ %i.afe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411 ], [ %.pn206.pn629.ph, %.sink.split823 ]
  call void @__cxa_free_exception(ptr %i.afc) #23
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit324

bb.hd:                                            ; preds = %._crit_edge, %bb.gh
  %i.afv = phi ptr [ %.pre704, %._crit_edge ], [ %i.acz, %bb.gh ] ; 4 uses
  %i.afw = load double, ptr %i.b, align 8, !tbaa !127
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afv, i64 128
  store double %i.afw, ptr %i.afx, align 8, !tbaa !137
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afv, i64 144
  store double 0.000000e+00, ptr %i.afy, align 8, !tbaa !138
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afv, i64 136
  store i8 82, ptr %i.afz, align 8, !tbaa !98
  %i.aga = load i32, ptr %i.a, align 4, !tbaa !73
  %i.agb = add nsw i32 %i.aga, 1
  %i.agc = getelementptr inbounds nuw i8, ptr %i.afv, i64 152
  store i32 %i.agb, ptr %i.agc, align 8, !tbaa !132
  %i.agd = load ptr, ptr %i.abs, align 8, !tbaa !58 ; 2 uses
  %i.age = load ptr, ptr %i.agd, align 8, !tbaa !31
  %i.agf = getelementptr inbounds nuw i8, ptr %i.age, i64 24
  %i.agg = load ptr, ptr %i.agf, align 8
  %i.agh = invoke noundef zeroext i1 %i.agg(ptr noundef nonnull align 8 dereferenceable(49) %i.agd)
          to label %bb.he unwind label %bb.if

bb.he:                                            ; preds = %bb.hd
  br i1 %i.agh, label %bb.ht, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.agi = invoke noundef zeroext i1 @_ZN5Ipopt22BacktrackingLineSearch22RestoreAcceptablePointEv(ptr noundef nonnull align 8 dereferenceable(264) %0)
          to label %bb.hg unwind label %bb.if

bb.hg:                                            ; preds = %bb.hf
  %i.agj = call ptr @__cxa_allocate_exception(i64 112) #23 ; 6 uses
  br i1 %i.agi, label %bb.hh, label %bb.hn

bb.hh:                                            ; preds = %bb.hg
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull @.str.89, ptr noundef nonnull align 1 dereferenceable(1) %28)
          to label %bb.hi unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417.thread

bb.hi:                                            ; preds = %bb.hh
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull @.str.75, ptr noundef nonnull align 1 dereferenceable(1) %30)
          to label %bb.hj unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414.thread

bb.hj:                                            ; preds = %bb.hi
  invoke void @_ZN5Ipopt24ACCEPTABLE_POINT_REACHEDC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_i(ptr noundef nonnull align 8 dereferenceable(112) %i.agj, ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(32) %29, i32 noundef 617)
          to label %bb.hk unwind label %bb.hl

bb.hk:                                            ; preds = %bb.hj
  invoke void @__cxa_throw(ptr nonnull %i.agj, ptr nonnull @_ZTIN5Ipopt24ACCEPTABLE_POINT_REACHEDE, ptr nonnull @_ZN5Ipopt14IpoptExceptionD2Ev) #25
          to label %bb.ji unwind label %bb.hl

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417.thread: ; preds = %bb.hh
  %i.agk = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split824

bb.hl:                                            ; preds = %bb.hk, %bb.hj
  %.064 = phi i1 [ false, %bb.hk ], [ true, %bb.hj ] ; 2 uses
  %i.agl = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.agm = load ptr, ptr %29, align 8, !tbaa !70  ; 2 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.ago = icmp eq ptr %i.agm, %i.agn
  br i1 %i.ago, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i412

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i412: ; preds = %bb.hl
  %i.agp = load i64, ptr %i.agn, align 8, !tbaa !71
  %i.agq = add i64 %i.agp, 1
  call void @_ZdlPvm(ptr noundef %i.agm, i64 noundef %i.agq) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414: ; preds = %bb.hl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i412
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  %i.agr = load ptr, ptr %27, align 8, !tbaa !70  ; 2 uses
  %i.ags = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.agt = icmp eq ptr %i.agr, %i.ags
  br i1 %i.agt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i415

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414.thread: ; preds = %bb.hi
  %i.agu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  %i.agv = load ptr, ptr %27, align 8, !tbaa !70  ; 2 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.agx = icmp eq ptr %i.agv, %i.agw
  br i1 %i.agx, label %.sink.split824, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i415.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i415.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414.thread
  %i.agy = load i64, ptr %i.agw, align 8, !tbaa !71
  %i.agz = add i64 %i.agy, 1
  call void @_ZdlPvm(ptr noundef %i.agv, i64 noundef %i.agz) #24
  br label %.sink.split824

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i415: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414
  %i.aha = load i64, ptr %i.ags, align 8, !tbaa !71
  %i.ahb = add i64 %i.aha, 1
  call void @_ZdlPvm(ptr noundef %i.agr, i64 noundef %i.ahb) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  br i1 %.064, label %bb.hm, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit324

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  br i1 %.064, label %bb.hm, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit324

.sink.split824:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i415.thread
  %.pn202.pn641.ph = phi { ptr, i32 } [ %i.agu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i415.thread ], [ %i.agk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417.thread ], [ %i.agu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit414.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  br label %bb.hm

bb.hm:                                            ; preds = %.sink.split824, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i415, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417
  %.pn202.pn641 = phi { ptr, i32 } [ %i.agl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i415 ], [ %i.agl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit417 ], [ %.pn202.pn641.ph, %.sink.split824 ]
  call void @__cxa_free_exception(ptr %i.agj) #23
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit324

bb.hn:                                            ; preds = %bb.hg
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull @.str.90, ptr noundef nonnull align 1 dereferenceable(1) %32)
          to label %bb.ho unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423.thread

bb.ho:                                            ; preds = %bb.hn
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull @.str.75, ptr noundef nonnull align 1 dereferenceable(1) %34)
          to label %bb.hp unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420.thread

bb.hp:                                            ; preds = %bb.ho
  invoke void @_ZN5Ipopt18RESTORATION_FAILEDC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_i(ptr noundef nonnull align 8 dereferenceable(112) %i.agj, ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(32) %33, i32 noundef 621)
          to label %bb.hq unwind label %bb.hr

bb.hq:                                            ; preds = %bb.hp
  invoke void @__cxa_throw(ptr nonnull %i.agj, ptr nonnull @_ZTIN5Ipopt18RESTORATION_FAILEDE, ptr nonnull @_ZN5Ipopt14IpoptExceptionD2Ev) #25
          to label %bb.ji unwind label %bb.hr

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423.thread: ; preds = %bb.hn
  %i.ahc = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split825

bb.hr:                                            ; preds = %bb.hq, %bb.hp
  %.0 = phi i1 [ false, %bb.hq ], [ true, %bb.hp ] ; 2 uses
  %i.ahd = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ahe = load ptr, ptr %33, align 8, !tbaa !70  ; 2 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.ahg = icmp eq ptr %i.ahe, %i.ahf
  br i1 %i.ahg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i418

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i418: ; preds = %bb.hr
  %i.ahh = load i64, ptr %i.ahf, align 8, !tbaa !71
  %i.ahi = add i64 %i.ahh, 1
  call void @_ZdlPvm(ptr noundef %i.ahe, i64 noundef %i.ahi) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420: ; preds = %bb.hr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i418
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  %i.ahj = load ptr, ptr %31, align 8, !tbaa !70  ; 2 uses
  %i.ahk = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.ahl = icmp eq ptr %i.ahj, %i.ahk
  br i1 %i.ahl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420.thread: ; preds = %bb.ho
  %i.ahm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  %i.ahn = load ptr, ptr %31, align 8, !tbaa !70  ; 2 uses
  %i.aho = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.ahp = icmp eq ptr %i.ahn, %i.aho
  br i1 %i.ahp, label %.sink.split825, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420.thread
  %i.ahq = load i64, ptr %i.aho, align 8, !tbaa !71
  %i.ahr = add i64 %i.ahq, 1
  call void @_ZdlPvm(ptr noundef %i.ahn, i64 noundef %i.ahr) #24
  br label %.sink.split825

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420
  %i.ahs = load i64, ptr %i.ahk, align 8, !tbaa !71
  %i.aht = add i64 %i.ahs, 1
  call void @_ZdlPvm(ptr noundef %i.ahj, i64 noundef %i.aht) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  br i1 %.0, label %bb.hs, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit324

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  br i1 %.0, label %bb.hs, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit324

.sink.split825:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421.thread
  %.pn199.pn653.ph = phi { ptr, i32 } [ %i.ahm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421.thread ], [ %i.ahc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423.thread ], [ %i.ahm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit420.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  br label %bb.hs

bb.hs:                                            ; preds = %.sink.split825, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423
  %.pn199.pn653 = phi { ptr, i32 } [ %i.ahd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i421 ], [ %i.ahd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit423 ], [ %.pn199.pn653.ph, %.sink.split825 ]
  call void @__cxa_free_exception(ptr %i.agj) #23
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit324

bb.ht:                                            ; preds = %bb.he
  %i.ahu = getelementptr inbounds nuw i8, ptr %0, i64 228
  store i32 0, ptr %i.ahu, align 4, !tbaa !79
  %i.ahv = load i8, ptr %i.ix, align 4, !tbaa !99, !range !96, !noundef !97
  %i.ahw = trunc nuw i8 %i.ahv to i1
  br i1 %i.ahw, label %bb.hu, label %bb.hv

bb.hu:                                            ; preds = %bb.ht
  store i8 0, ptr %i.ix, align 4, !tbaa !99
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %bb.ht
  store i8 0, ptr %i.zv, align 1, !tbaa !128
  %i.ahx = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 0, ptr %i.ahx, align 8, !tbaa !133
  %i.ahy = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i32 0, ptr %i.ahy, align 4, !tbaa !93
  br label %bb.jb

bb.hw:                                            ; preds = %.split803.thread, %.split804.thread, %.split803, %bb.fc
  %i.ahz = getelementptr inbounds nuw i8, ptr %0, i64 223
  %i.aia = load i8, ptr %i.ahz, align 1, !tbaa !128, !range !96, !noundef !97
  %i.aib = trunc nuw i8 %i.aia to i1
  %.not = xor i1 %i.aib, true
  %or.cond11 = or i1 %.285, %.not
  br i1 %or.cond11, label %bb.hx, label %bb.jb

bb.hx:                                            ; preds = %bb.hw
  %i.aic = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.aid = load ptr, ptr %i.aic, align 8, !tbaa !60
  %i.aie = load ptr, ptr %i.j, align 8, !tbaa !61
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aie, i64 88
  %i.aig = load double, ptr %i.aif, align 8, !tbaa !129
  %i.aih = load ptr, ptr %1, align 8, !tbaa !95   ; 5 uses
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aih, i64 208
  %i.aij = load ptr, ptr %i.aii, align 8, !tbaa !102, !noalias !343 ; 4 uses
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aij, i64 32
  %i.ail = load ptr, ptr %i.aik, align 8, !tbaa !105, !noalias !343 ; 2 uses
  %.not.i.i.i424 = icmp eq ptr %i.ail, null
  br i1 %.not.i.i.i424, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i428, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i425

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i428: ; preds = %bb.hx
  %i.aim = getelementptr inbounds nuw i8, ptr %i.aih, i64 232
  %i.ain = load ptr, ptr %i.aim, align 8, !tbaa !108, !noalias !343
  %i.aio = getelementptr inbounds nuw i8, ptr %i.ain, i64 32
  %i.aip = load ptr, ptr %i.aio, align 8, !tbaa !110, !noalias !343 ; 2 uses
  %.not3.i.i.i429 = icmp eq ptr %i.aip, null
  br i1 %.not3.i.i.i429, label %_ZNK5Ipopt14IteratesVector3z_LEv.exit, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i425

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i425: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i428, %bb.hx
  %.0.i3.i.i.i426 = phi ptr [ %i.ail, %bb.hx ], [ %i.aip, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i428 ] ; 2 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i426, i64 8 ; 2 uses
  %i.air = load i32, ptr %i.aiq, align 8, !tbaa !29, !noalias !344
  %i.ais = add nsw i32 %i.air, 1
  store i32 %i.ais, ptr %i.aiq, align 8, !tbaa !29, !noalias !344
  br label %_ZNK5Ipopt14IteratesVector3z_LEv.exit

_ZNK5Ipopt14IteratesVector3z_LEv.exit:            ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i425, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i428
  %storemerge.i.i427 = phi ptr [ null, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i428 ], [ %.0.i3.i.i.i426, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i425 ] ; 7 uses
  %i.ait = getelementptr inbounds nuw i8, ptr %i.aij, i64 40
  %i.aiu = load ptr, ptr %i.ait, align 8, !tbaa !105, !noalias !345 ; 2 uses
  %.not.i.i.i430 = icmp eq ptr %i.aiu, null
  br i1 %.not.i.i.i430, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i434, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i431

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i434: ; preds = %_ZNK5Ipopt14IteratesVector3z_LEv.exit
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.aih, i64 232
  %i.aiw = load ptr, ptr %i.aiv, align 8, !tbaa !108, !noalias !345
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aiw, i64 40
  %i.aiy = load ptr, ptr %i.aix, align 8, !tbaa !110, !noalias !345 ; 2 uses
  %.not3.i.i.i435 = icmp eq ptr %i.aiy, null
  br i1 %.not3.i.i.i435, label %_ZNK5Ipopt14IteratesVector3z_UEv.exit, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i431

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i431: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i434, %_ZNK5Ipopt14IteratesVector3z_LEv.exit
  %.0.i3.i.i.i432 = phi ptr [ %i.aiu, %_ZNK5Ipopt14IteratesVector3z_LEv.exit ], [ %i.aiy, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i434 ] ; 2 uses
  %i.aiz = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i432, i64 8 ; 2 uses
  %i.aja = load i32, ptr %i.aiz, align 8, !tbaa !29, !noalias !346
  %i.ajb = add nsw i32 %i.aja, 1
  store i32 %i.ajb, ptr %i.aiz, align 8, !tbaa !29, !noalias !346
  br label %_ZNK5Ipopt14IteratesVector3z_UEv.exit

_ZNK5Ipopt14IteratesVector3z_UEv.exit:            ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i431, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i434
  %storemerge.i.i433 = phi ptr [ null, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i434 ], [ %.0.i3.i.i.i432, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i431 ] ; 7 uses
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.aij, i64 48
  %i.ajd = load ptr, ptr %i.ajc, align 8, !tbaa !105, !noalias !347 ; 2 uses
  %.not.i.i.i436 = icmp eq ptr %i.ajd, null
  br i1 %.not.i.i.i436, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i440, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i437

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i440: ; preds = %_ZNK5Ipopt14IteratesVector3z_UEv.exit
  %i.aje = getelementptr inbounds nuw i8, ptr %i.aih, i64 232
  %i.ajf = load ptr, ptr %i.aje, align 8, !tbaa !108, !noalias !347
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ajf, i64 48
  %i.ajh = load ptr, ptr %i.ajg, align 8, !tbaa !110, !noalias !347 ; 2 uses
  %.not3.i.i.i441 = icmp eq ptr %i.ajh, null
  br i1 %.not3.i.i.i441, label %_ZNK5Ipopt14IteratesVector3v_LEv.exit, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i437

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i437: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i440, %_ZNK5Ipopt14IteratesVector3z_UEv.exit
  %.0.i3.i.i.i438 = phi ptr [ %i.ajd, %_ZNK5Ipopt14IteratesVector3z_UEv.exit ], [ %i.ajh, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i440 ] ; 2 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i438, i64 8 ; 2 uses
  %i.ajj = load i32, ptr %i.aji, align 8, !tbaa !29, !noalias !348
  %i.ajk = add nsw i32 %i.ajj, 1
  store i32 %i.ajk, ptr %i.aji, align 8, !tbaa !29, !noalias !348
  br label %_ZNK5Ipopt14IteratesVector3v_LEv.exit

_ZNK5Ipopt14IteratesVector3v_LEv.exit:            ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i437, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i440
  %storemerge.i.i439 = phi ptr [ null, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i440 ], [ %.0.i3.i.i.i438, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i437 ] ; 7 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.aij, i64 56
  %i.ajm = load ptr, ptr %i.ajl, align 8, !tbaa !105, !noalias !349 ; 2 uses
  %.not.i.i.i442 = icmp eq ptr %i.ajm, null
  br i1 %.not.i.i.i442, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i446, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i443

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i446: ; preds = %_ZNK5Ipopt14IteratesVector3v_LEv.exit
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.aih, i64 232
  %i.ajo = load ptr, ptr %i.ajn, align 8, !tbaa !108, !noalias !349
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajo, i64 56
  %i.ajq = load ptr, ptr %i.ajp, align 8, !tbaa !110, !noalias !349, !nonnull !97, !noundef !97
  br label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i443

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i443: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i446, %_ZNK5Ipopt14IteratesVector3v_LEv.exit
  %.0.i3.i.i.i444 = phi ptr [ %i.ajm, %_ZNK5Ipopt14IteratesVector3v_LEv.exit ], [ %i.ajq, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i446 ] ; 6 uses
  %i.ajr = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i444, i64 8 ; 6 uses
  %i.ajs = load i32, ptr %i.ajr, align 8, !tbaa !29, !noalias !350
  %i.ajt = add nsw i32 %i.ajs, 1
  store i32 %i.ajt, ptr %i.ajr, align 8, !tbaa !29, !noalias !350
  %i.aju = invoke noundef double @_ZN5Ipopt25IpoptCalculatedQuantities22dual_frac_to_the_boundEdRKNS_6VectorES3_S3_S3_(ptr noundef nonnull align 8 dereferenceable(2185) %i.aid, double noundef %i.aig, ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i427, ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i433, ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i439, ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i444)
          to label %bb.hy unwind label %bb.ig

bb.hy:                                            ; preds = %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i443
  %i.ajv = load i32, ptr %i.ajr, align 8, !tbaa !29
  %i.ajw = add nsw i32 %i.ajv, -1                 ; 2 uses
  store i32 %i.ajw, ptr %i.ajr, align 8, !tbaa !29
  %i.ajx = icmp eq i32 %i.ajw, 0
  br i1 %i.ajx, label %bb.hz, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit449

bb.hz:                                            ; preds = %bb.hy
  %i.ajy = load ptr, ptr %.0.i3.i.i.i444, align 8, !tbaa !31
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajy, i64 8
  %i.aka = load ptr, ptr %i.ajz, align 8
  call void %i.aka(ptr noundef nonnull align 8 dereferenceable(205) %.0.i3.i.i.i444) #23, !inline_history !6
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit449

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit449:     ; preds = %bb.hz, %bb.hy
  %i.akb = getelementptr inbounds nuw i8, ptr %storemerge.i.i439, i64 8 ; 2 uses
  %i.akc = load i32, ptr %i.akb, align 8, !tbaa !29
  %i.akd = add nsw i32 %i.akc, -1                 ; 2 uses
  store i32 %i.akd, ptr %i.akb, align 8, !tbaa !29
  %i.ake = icmp eq i32 %i.akd, 0
  br i1 %i.ake, label %bb.ia, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit451

bb.ia:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit449
  %i.akf = load ptr, ptr %storemerge.i.i439, align 8, !tbaa !31
  %i.akg = getelementptr inbounds nuw i8, ptr %i.akf, i64 8
  %i.akh = load ptr, ptr %i.akg, align 8
  call void %i.akh(ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i439) #23, !inline_history !6
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit451

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit451:     ; preds = %bb.ia, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit449
  %i.aki = getelementptr inbounds nuw i8, ptr %storemerge.i.i433, i64 8 ; 2 uses
  %i.akj = load i32, ptr %i.aki, align 8, !tbaa !29
  %i.akk = add nsw i32 %i.akj, -1                 ; 2 uses
  store i32 %i.akk, ptr %i.aki, align 8, !tbaa !29
  %i.akl = icmp eq i32 %i.akk, 0
  br i1 %i.akl, label %bb.ib, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit453

bb.ib:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit451
  %i.akm = load ptr, ptr %storemerge.i.i433, align 8, !tbaa !31
  %i.akn = getelementptr inbounds nuw i8, ptr %i.akm, i64 8
  %i.ako = load ptr, ptr %i.akn, align 8
  call void %i.ako(ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i433) #23, !inline_history !6
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit453

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit453:     ; preds = %bb.ib, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit451
  %i.akp = getelementptr inbounds nuw i8, ptr %storemerge.i.i427, i64 8 ; 2 uses
  %i.akq = load i32, ptr %i.akp, align 8, !tbaa !29
  %i.akr = add nsw i32 %i.akq, -1                 ; 2 uses
  store i32 %i.akr, ptr %i.akp, align 8, !tbaa !29
  %i.aks = icmp eq i32 %i.akr, 0
  br i1 %i.aks, label %bb.ic, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit455

bb.ic:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit453
  %i.akt = load ptr, ptr %storemerge.i.i427, align 8, !tbaa !31
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akt, i64 8
  %i.akv = load ptr, ptr %i.aku, align 8
  call void %i.akv(ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i427) #23, !inline_history !6
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit455

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit455:     ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit453, %bb.ic
  %i.akw = load double, ptr %i.b, align 8, !tbaa !127
  invoke void @_ZN5Ipopt22BacktrackingLineSearch15PerformDualStepEddRNS_8SmartPtrINS_14IteratesVectorEEE(ptr noundef nonnull align 8 dereferenceable(264) %0, double noundef %i.akw, double noundef %i.aju, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.id unwind label %bb.if

bb.id:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit455
end_hunk_1
