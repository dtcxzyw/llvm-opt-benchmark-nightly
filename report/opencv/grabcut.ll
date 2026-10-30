Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/grabcut?download=true
inline.NumInlined: 373
inline.NumDeleted: 125
begin_hunk_0_@_ZN13GCApplication13setLblsInMaskEiN2cv6Point_IiEEb:bb.a

_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.n = ashr exact i64 %i.l, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i.i, %i.n ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 1152921504606846975)
  %i.r = select i1 %i.p, i64 1152921504606846975, i64 %i.q ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #19 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l
  store i64 %2, ptr %i.u, align 4, !tbaa !14
  %.not10.i.i.i.i.i = icmp eq ptr %i.i, %i.e
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i ], [ %i.t, %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i ], [ %i.i, %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %i.v = load i64, ptr %.0911.i.i.i.i.i, align 4, !tbaa !14, !alias.scope !89
  store i64 %i.v, ptr %.012.i.i.i.i.i, align 4, !tbaa !14, !alias.scope !88
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.w, %i.e
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !84

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.t, %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.x, %.lr.ph.i.i.i.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !60
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.ab) #18
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.t, ptr %i.a, align 8, !tbaa !17
  store ptr %i.y, ptr %i.d, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r
  store ptr %i.ac, ptr %i.f, align 8, !tbaa !60
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %i.af, align 8
  store i32 50397184, ptr %4, align 8, !tbaa !12
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store double %.49, ptr %5, align 8, !tbaa !48
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false)
  call void @_ZN2cv6circleERKNS_17_InputOutputArrayENS_6Point_IiEEiRKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %2, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef -1, i32 noundef 8, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.a
  %i.ah = and i32 %1, 16
  %.not15 = icmp eq i32 %i.ah, 0
  br i1 %.not15, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !18 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !60
  %.not.i17 = icmp eq ptr %i.aj, %i.al
  br i1 %.not.i17, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i64 %2, ptr %i.aj, align 4, !tbaa !14
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !18
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !17  ; 5 uses
  %i.ao = ptrtoint ptr %i.aj to i64
  %i.ap = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.aq = sub i64 %i.ao, %i.ap                    ; 3 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775800
  br i1 %i.ar, label %bb.l, label %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i18

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #17
  unreachable

_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i18: ; preds = %bb.k
  %i.as = ashr exact i64 %i.aq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i19 = call i64 @llvm.umax.i64(i64 %i.as, i64 1)
  %i.at = add nsw i64 %.sroa.speculated.i.i.i19, %i.as ; 2 uses
  %i.au = icmp ult i64 %i.at, %i.as
  %i.av = call i64 @llvm.umin.i64(i64 %i.at, i64 1152921504606846975)
  %i.aw = select i1 %i.au, i64 1152921504606846975, i64 %i.av ; 3 uses
  %.not.i.i.i20 = icmp ne i64 %i.aw, 0
  call void @llvm.assume(i1 %.not.i.i.i20)
  %i.ax = shl nuw nsw i64 %i.aw, 3
  %i.ay = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #19 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aq
  store i64 %2, ptr %i.az, align 4, !tbaa !14
  %.not10.i.i.i.i.i21 = icmp eq ptr %i.an, %i.aj
  br i1 %.not10.i.i.i.i.i21, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i26, label %.lr.ph.i.i.i.i.i22

.lr.ph.i.i.i.i.i22:                               ; preds = %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i18, %.lr.ph.i.i.i.i.i22
  %.012.i.i.i.i.i23 = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i22 ], [ %i.ay, %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i18 ] ; 2 uses
  %.0911.i.i.i.i.i24 = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i22 ], [ %i.an, %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i18 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %i.ba = load i64, ptr %.0911.i.i.i.i.i24, align 4, !tbaa !14, !alias.scope !91
  store i64 %i.ba, ptr %.012.i.i.i.i.i23, align 4, !tbaa !14, !alias.scope !90
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i24, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i23, i64 8 ; 2 uses
  %.not.i.i.i.i.i25 = icmp eq ptr %i.bb, %i.aj
  br i1 %.not.i.i.i.i.i25, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i26, label %.lr.ph.i.i.i.i.i22, !llvm.loop !84

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i26: ; preds = %.lr.ph.i.i.i.i.i22, %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i18
  %.0.lcssa.i.i.i.i.i27 = phi ptr [ %i.ay, %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i18 ], [ %i.bc, %.lr.ph.i.i.i.i.i22 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i27, i64 8
  %.not.i23.i.i28 = icmp eq ptr %i.an, null
  br i1 %.not.i23.i.i28, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i29, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i26
  %i.be = load ptr, ptr %i.ak, align 8, !tbaa !60
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = sub i64 %i.bf, %i.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.bg) #18
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i29

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i29: ; preds = %bb.m, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i26
  store ptr %i.ay, ptr %i.b, align 8, !tbaa !17
  store ptr %i.bd, ptr %i.ai, align 8, !tbaa !18
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.aw
  store ptr %i.bh, ptr %i.ak, align 8, !tbaa !60
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i29, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %i.bk, align 8
  store i32 50397184, ptr %6, align 8, !tbaa !12
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  store double %.50, ptr %7, align 8, !tbaa !48
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i8 0, i64 24, i1 false)
  call void @_ZN2cv6circleERKNS_17_InputOutputArrayENS_6Point_IiEEiRKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 %2, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef -1, i32 noundef 8, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN13GCApplication10mouseClickEiiiiPv(ptr noundef nonnull align 8 dereferenceable(764) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree readnone captures(none) %5) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.0", align 1  ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator.0", align 1  ; 3 uses
  switch i32 %1, label %bb.ar [
    i32 1, label %bb.b
    i32 2, label %bb.e
    i32 4, label %bb.g
    i32 5, label %bb.y
    i32 0, label %bb.ac
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !55    ; 2 uses
  %i.c = icmp ne i8 %i.b, 0
  %i.d = and i32 %4, 24
  %i.e = icmp ne i32 %i.d, 0                      ; 2 uses
  %or.cond3 = or i1 %i.e, %i.c
  br i1 %or.cond3, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  store i8 1, ptr %i.a, align 8, !tbaa !55
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 644
  store i32 %2, ptr %i.f, align 4, !tbaa !14
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 648
  store i32 %3, ptr %.sroa.482.0..sroa_idx, align 8, !tbaa !14
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 652
  store i32 1, ptr %.sroa.583.0..sroa_idx, align 4, !tbaa !14
  %.sroa.684.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 656
  store i32 1, ptr %.sroa.684.0..sroa_idx, align 8, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %10 = phi i8 [ 1, %.thread ], [ %i.b, %bb.b ]
  %i.g = icmp eq i8 %10, 2
  %or.cond87 = and i1 %i.e, %i.g
  br i1 %or.cond87, label %bb.d, label %bb.ar

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 641
  store i8 1, ptr %i.h, align 1, !tbaa !61
  br label %bb.ar

bb.e:                                             ; preds = %bb.a
  %i.i = and i32 %4, 24
  %or.cond7.not = icmp ne i32 %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.k = load i8, ptr %i.j, align 8
  %i.l = icmp eq i8 %i.k, 2
  %or.cond = select i1 %or.cond7.not, i1 %i.l, i1 false
  br i1 %or.cond, label %bb.f, label %bb.ar

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 642
  store i8 1, ptr %i.m, align 2, !tbaa !92
  br label %bb.ar

bb.g:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 4 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !55
  %i.p = icmp eq i8 %i.o, 1
  br i1 %i.p, label %bb.h, label %bb.u

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 644 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !56   ; 3 uses
  %i.s = icmp eq i32 %i.r, %2
  br i1 %i.s, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !57   ; 3 uses
  %i.v = icmp eq i32 %i.u, %3
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  store i8 0, ptr %i.n, align 8, !tbaa !55
  br label %bb.t

bb.k:                                             ; preds = %bb.i
  %i.w = tail call i32 @llvm.smin.i32(i32 %2, i32 %i.r) ; 2 uses
  %i.x = tail call i32 @llvm.smin.i32(i32 %3, i32 %i.u) ; 2 uses
  %i.y = tail call i32 @llvm.smax.i32(i32 %i.r, i32 %2)
  %i.z = sub nsw i32 %i.y, %i.w
  %i.aa = tail call i32 @llvm.smax.i32(i32 %i.u, i32 %3)
  %i.ab = sub nsw i32 %i.aa, %i.x
  store i32 %i.w, ptr %i.q, align 4, !tbaa !14
  store i32 %i.x, ptr %i.t, align 8, !tbaa !14
  %.sroa.579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 652
  store i32 %i.z, ptr %.sroa.579.0..sroa_idx, align 4, !tbaa !14
  %.sroa.680.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 656
  store i32 %i.ab, ptr %.sroa.680.0..sroa_idx, align 8, !tbaa !14
  store i8 2, ptr %i.n, align 8, !tbaa !55
  tail call void @_ZN13GCApplication13setRectInMaskEv(ptr noundef nonnull align 8 dereferenceable(764) %0)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !53
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !53
  %i.ag = icmp eq ptr %i.ad, %i.af
  br i1 %i.ag, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !53
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !53
  %i.al = icmp eq ptr %i.ai, %i.ak
  br i1 %i.al, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !53
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !53
  %i.aq = icmp eq ptr %i.an, %i.ap
  br i1 %i.aq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !53
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !53
  %i.av = icmp eq ptr %i.as, %i.au
  br i1 %i.av, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN13GCApplication10mouseClickEiiiiPv, ptr noundef nonnull @.str.5, i32 noundef 213) #17
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.o
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.s:                                             ; preds = %bb.p
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %6, align 8, !tbaa !42    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.s
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !43
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.r
  %.pn46 = phi { ptr, i32 } [ %i.aw, %bb.r ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ax, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.as

bb.t:                                             ; preds = %bb.n, %bb.j
  tail call void @_ZNK13GCApplication9showImageEv(ptr noundef nonnull align 8 dereferenceable(764) %0)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 641 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !61
  %i.bf = icmp eq i8 %i.be, 1
  br i1 %i.bf, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %.sroa.268.0.insert.ext = zext i32 %3 to i64
  %.sroa.268.0.insert.shift = shl nuw i64 %.sroa.268.0.insert.ext, 32
  %.sroa.067.0.insert.ext = zext i32 %2 to i64
  %.sroa.067.0.insert.insert = or disjoint i64 %.sroa.268.0.insert.shift, %.sroa.067.0.insert.ext
  tail call void @_ZN13GCApplication13setLblsInMaskEiN2cv6Point_IiEEb(ptr noundef nonnull align 8 dereferenceable(764) %0, i32 noundef %4, i64 %.sroa.067.0.insert.insert, i1 noundef zeroext false)
  store i8 2, ptr %i.bd, align 1, !tbaa !61
  %i.bg = tail call noundef i32 @_ZN13GCApplication8nextIterEv(ptr noundef nonnull align 8 dereferenceable(764) %0) ; 0 uses
  tail call void @_ZNK13GCApplication9showImageEv(ptr noundef nonnull align 8 dereferenceable(764) %0)
  br label %bb.ar

bb.w:                                             ; preds = %bb.u
  %i.bh = load i8, ptr %i.n, align 8, !tbaa !55
  %i.bi = icmp eq i8 %i.bh, 2
  br i1 %i.bi, label %bb.x, label %bb.ar

bb.x:                                             ; preds = %bb.w
  %i.bj = tail call noundef i32 @_ZN13GCApplication8nextIterEv(ptr noundef nonnull align 8 dereferenceable(764) %0) ; 0 uses
  tail call void @_ZNK13GCApplication9showImageEv(ptr noundef nonnull align 8 dereferenceable(764) %0)
  br label %bb.ar

bb.y:                                             ; preds = %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 642 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 2, !tbaa !92
  %i.bm = icmp eq i8 %i.bl, 1
  br i1 %i.bm, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %.sroa.266.0.insert.ext = zext i32 %3 to i64
  %.sroa.266.0.insert.shift = shl nuw i64 %.sroa.266.0.insert.ext, 32
  %.sroa.065.0.insert.ext = zext i32 %2 to i64
  %.sroa.065.0.insert.insert = or disjoint i64 %.sroa.266.0.insert.shift, %.sroa.065.0.insert.ext
  tail call void @_ZN13GCApplication13setLblsInMaskEiN2cv6Point_IiEEb(ptr noundef nonnull align 8 dereferenceable(764) %0, i32 noundef %4, i64 %.sroa.065.0.insert.insert, i1 noundef zeroext true)
  store i8 2, ptr %i.bk, align 2, !tbaa !92
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !55
  %i.bp = icmp eq i8 %i.bo, 2
  br i1 %i.bp, label %bb.ab, label %bb.ar

bb.ab:                                            ; preds = %bb.aa
  %i.bq = tail call noundef i32 @_ZN13GCApplication8nextIterEv(ptr noundef nonnull align 8 dereferenceable(764) %0) ; 0 uses
  tail call void @_ZNK13GCApplication9showImageEv(ptr noundef nonnull align 8 dereferenceable(764) %0)
  br label %bb.ar

bb.ac:                                            ; preds = %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !55
  %i.bt = icmp eq i8 %i.bs, 1
  br i1 %i.bt, label %bb.ad, label %bb.an

bb.ad:                                            ; preds = %bb.ac
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 644 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !56 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !57 ; 2 uses
  %i.by = tail call i32 @llvm.smin.i32(i32 %2, i32 %i.bv) ; 2 uses
  %i.bz = tail call i32 @llvm.smin.i32(i32 %3, i32 %i.bx) ; 2 uses
  %i.ca = tail call i32 @llvm.smax.i32(i32 %i.bv, i32 %2)
  %i.cb = sub nsw i32 %i.ca, %i.by
  %i.cc = tail call i32 @llvm.smax.i32(i32 %i.bx, i32 %3)
  %i.cd = sub nsw i32 %i.cc, %i.bz
  store i32 %i.by, ptr %i.bu, align 4, !tbaa !14
  store i32 %i.bz, ptr %i.bw, align 8, !tbaa !14
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 652
  store i32 %i.cb, ptr %.sroa.564.0..sroa_idx, align 4, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 656
  store i32 %i.cd, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !14
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !53
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !53
  %i.ci = icmp eq ptr %i.cf, %i.ch
  br i1 %i.ci, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !53
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !53
  %i.cn = icmp eq ptr %i.ck, %i.cm
  br i1 %i.cn, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !53
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !53
  %i.cs = icmp eq ptr %i.cp, %i.cr
  br i1 %i.cs, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !53
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !53
  %i.cx = icmp eq ptr %i.cu, %i.cw
  br i1 %i.cx, label %bb.am, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN13GCApplication10mouseClickEiiiiPv, ptr noundef nonnull @.str.5, i32 noundef 246) #17
          to label %bb.aj unwind label %bb.al

bb.aj:                                            ; preds = %bb.ai
  unreachable

bb.ak:                                            ; preds = %bb.ah
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

bb.al:                                            ; preds = %bb.ai
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.da = load ptr, ptr %8, align 8, !tbaa !42    ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.al
  %i.dd = load i64, ptr %i.db, align 8, !tbaa !43
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.de) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51, %bb.ak
  %.pn = phi { ptr, i32 } [ %i.cy, %bb.ak ], [ %i.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51 ], [ %i.cz, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %bb.as

bb.am:                                            ; preds = %bb.ag
  tail call void @_ZNK13GCApplication9showImageEv(ptr noundef nonnull align 8 dereferenceable(764) %0)
  br label %bb.ar

bb.an:                                            ; preds = %bb.ac
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 641
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !61
  %i.dh = icmp eq i8 %i.dg, 1
  br i1 %i.dh, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %.sroa.255.0.insert.ext = zext i32 %3 to i64
  %.sroa.255.0.insert.shift = shl nuw i64 %.sroa.255.0.insert.ext, 32
  %.sroa.054.0.insert.ext = zext i32 %2 to i64
  %.sroa.054.0.insert.insert = or disjoint i64 %.sroa.255.0.insert.shift, %.sroa.054.0.insert.ext
  tail call void @_ZN13GCApplication13setLblsInMaskEiN2cv6Point_IiEEb(ptr noundef nonnull align 8 dereferenceable(764) %0, i32 noundef %4, i64 %.sroa.054.0.insert.insert, i1 noundef zeroext false)
  tail call void @_ZNK13GCApplication9showImageEv(ptr noundef nonnull align 8 dereferenceable(764) %0)
  br label %bb.ar

bb.ap:                                            ; preds = %bb.an
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 642
  %i.dj = load i8, ptr %i.di, align 2, !tbaa !92
  %i.dk = icmp eq i8 %i.dj, 1
  br i1 %i.dk, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %.sroa.2.0.insert.ext = zext i32 %3 to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %2 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  tail call void @_ZN13GCApplication13setLblsInMaskEiN2cv6Point_IiEEb(ptr noundef nonnull align 8 dereferenceable(764) %0, i32 noundef %4, i64 %.sroa.0.0.insert.insert, i1 noundef zeroext true)
  tail call void @_ZNK13GCApplication9showImageEv(ptr noundef nonnull align 8 dereferenceable(764) %0)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.am, %bb.ap, %bb.aq, %bb.ao, %bb.aa, %bb.ab, %bb.v, %bb.x, %bb.w, %bb.a
  ret void

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn46.pn = phi { ptr, i32 } [ %.pn46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ]
  resume { ptr, i32 } %.pn46.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN13GCApplication8nextIterEv(ptr noundef nonnull align 8 dereferenceable(764) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %2 = alloca %"class.cv::_InputOutputArray", align 8 ; 6 uses
  %3 = alloca %"class.cv::_InputOutputArray", align 8 ; 6 uses
  %4 = alloca %"class.cv::_InputOutputArray", align 8 ; 6 uses
  %5 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %6 = alloca %"class.cv::_InputOutputArray", align 8 ; 6 uses
  %7 = alloca %"class.cv::_InputOutputArray", align 8 ; 6 uses
  %8 = alloca %"class.cv::_InputOutputArray", align 8 ; 6 uses
  %9 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %10 = alloca %"class.cv::_InputOutputArray", align 8 ; 6 uses
  %11 = alloca %"class.cv::_InputOutputArray", align 8 ; 6 uses
  %12 = alloca %"class.cv::_InputOutputArray", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 643 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !44, !range !45, !noundef !46
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.f, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.g, align 4, !tbaa !52
  store i32 16842752, ptr %1, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.e, ptr %i.h, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.k, align 8
  store i32 50397184, ptr %2, align 8, !tbaa !12
  store ptr %i.i, ptr %i.j, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 644
  %.sroa.03.0.copyload = load i64, ptr %i.l, align 4, !tbaa !14
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 652
  %.sroa.24.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.o, align 8
  store i32 50397184, ptr %3, align 8, !tbaa !12
  store ptr %i.m, ptr %i.n, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %i.r, align 8
  store i32 50397184, ptr %4, align 8, !tbaa !12
  store ptr %i.p, ptr %i.q, align 8, !tbaa !13
  call void @_ZN2cv7grabCutERKNS_11_InputArrayERKNS_17_InputOutputArrayENS_5Rect_IiEES5_S5_ii(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 %.sroa.03.0.copyload, i64 %.sroa.24.0.copyload, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef 1, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.t = load i8, ptr %i.s, align 8, !tbaa !55
  %.not = icmp eq i8 %i.t, 2
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 760
  %.0.pre = load i32, ptr %i.u, align 8, !tbaa !34
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE5clearEv.exit40

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 641
  %i.w = load i8, ptr %i.v, align 1, !tbaa !61
  %i.x = icmp eq i8 %i.w, 2
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 642
  %i.z = load i8, ptr %i.y, align 2
  %i.aa = icmp eq i8 %i.z, 2
  %or.cond = select i1 %i.x, i1 true, i1 %i.aa
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 644 ; 2 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !39
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.ag, align 8, !tbaa !51
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 0, ptr %i.ah, align 4, !tbaa !52
  store i32 16842752, ptr %5, align 8, !tbaa !12
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.af, ptr %i.ai, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %i.ak, align 8
  store i32 50397184, ptr %6, align 8, !tbaa !12
  store ptr %i.ac, ptr %i.aj, align 8, !tbaa !13
  %.sroa.01.0.copyload = load i64, ptr %i.ad, align 4, !tbaa !14
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 0, ptr %i.am, align 8
  store i32 50397184, ptr %7, align 8, !tbaa !12
  store ptr %i.ae, ptr %i.al, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 0, ptr %i.ap, align 8
  store i32 50397184, ptr %8, align 8, !tbaa !12
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !13
  call void @_ZN2cv7grabCutERKNS_11_InputArrayERKNS_17_InputOutputArrayENS_5Rect_IiEES5_S5_ii(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 %.sroa.01.0.copyload, i64 %.sroa.22.0.copyload, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, i32 noundef 1, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.aq = load ptr, ptr %i.ab, align 8, !tbaa !39
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 0, ptr %i.ar, align 8, !tbaa !51
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 0, ptr %i.as, align 4, !tbaa !52
  store i32 16842752, ptr %9, align 8, !tbaa !12
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.aq, ptr %i.at, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 0, ptr %i.av, align 8
  store i32 50397184, ptr %10, align 8, !tbaa !12
  store ptr %i.ac, ptr %i.au, align 8, !tbaa !13
  %.sroa.0.0.copyload = load i64, ptr %i.ad, align 4, !tbaa !14
  %.sroa.2.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 0, ptr %i.ax, align 8
  store i32 50397184, ptr %11, align 8, !tbaa !12
  store ptr %i.ae, ptr %i.aw, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.az = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 0, ptr %i.ba, align 8
  store i32 50397184, ptr %12, align 8, !tbaa !12
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !13
  call void @_ZN2cv7grabCutERKNS_11_InputArrayERKNS_17_InputOutputArrayENS_5Rect_IiEES5_S5_ii(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, i32 noundef 1, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store i8 1, ptr %i.a, align 1, !tbaa !44
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !34
  %i.bd = add nsw i32 %i.bc, 1                    ; 3 uses
  store i32 %i.bd, ptr %i.bb, align 8, !tbaa !34
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !17 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !18
  %.not.i.i = icmp eq ptr %i.bh, %i.bf
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPN2cv6Point_IiEES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv6Point_IiEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.i
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !18
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE5clearEv.exit

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE5clearEv.exit: ; preds = %bb.i, %_ZSt8_DestroyIPN2cv6Point_IiEES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !17 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !18
  %.not.i.i32 = icmp eq ptr %i.bl, %i.bj
  br i1 %.not.i.i32, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE5clearEv.exit34, label %_ZSt8_DestroyIPN2cv6Point_IiEES2_EvT_S4_RSaIT0_E.exit.i.i33

end_hunk_0
