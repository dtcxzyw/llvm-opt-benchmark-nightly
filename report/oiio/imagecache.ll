Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/imagecache?download=true
inline.NumInlined: 13633
inline.NumDeleted: 4658
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 78
loop-unroll.NumUnrolled: 92
begin_hunk_0_@_ZN11OpenImageIO4v3_114ImageCacheFile14set_imageinputESt10shared_ptrINS0_10ImageInputEE:bb.a
bb.a:
  %2 = alloca %"struct.std::_Sp_locker", align 1  ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !324
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN11OpenImageIO4v3_114ImageCacheImpl15incr_open_filesEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !325, !nonnull !326, !align !327 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 25228
  %i.e = atomicrmw add ptr %i.d, i32 1 seq_cst, align 4 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 25236 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 25232
  %i.h = atomicrmw add ptr %i.g, i32 1 seq_cst, align 4
  %i.i = add i32 %i.h, 1                          ; 2 uses
  br label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i: ; preds = %bb.c, %bb.b
  %i.j = load atomic i32, ptr %i.f seq_cst, align 4 ; 2 uses
  %.not.i.i = icmp slt i32 %i.j, %i.i
  br i1 %.not.i.i, label %bb.c, label %_ZN11OpenImageIO4v3_114ImageCacheImpl15incr_open_filesEv.exit.loopexit

bb.c:                                             ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i
  %i.k = cmpxchg weak ptr %i.f, i32 %i.j, i32 %i.i seq_cst seq_cst, align 4
  %i.l = extractvalue { i32, i1 } %i.k, 1
  br i1 %i.l, label %_ZN11OpenImageIO4v3_114ImageCacheImpl15incr_open_filesEv.exit.loopexit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i

_ZN11OpenImageIO4v3_114ImageCacheImpl15incr_open_filesEv.exit.loopexit: ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i, %bb.c
  %.pre = load ptr, ptr %1, align 8, !tbaa !324
  br label %_ZN11OpenImageIO4v3_114ImageCacheImpl15incr_open_filesEv.exit

_ZN11OpenImageIO4v3_114ImageCacheImpl15incr_open_filesEv.exit: ; preds = %_ZN11OpenImageIO4v3_114ImageCacheImpl15incr_open_filesEv.exit.loopexit, %bb.a
  %i.m = phi ptr [ %.pre, %_ZN11OpenImageIO4v3_114ImageCacheImpl15incr_open_filesEv.exit.loopexit ], [ null, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !307  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageInputELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_114ImageCacheImpl15incr_open_filesEv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !139
  %.not.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i32, ptr %i.q, align 4, !tbaa !106
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.q, align 4, !tbaa !106
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageInputELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.u = atomicrmw volatile add ptr %i.q, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageInputELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageInputELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN11OpenImageIO4v3_114ImageCacheImpl15incr_open_filesEv.exit, %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5, !noalias !1189
  call void @_ZNSt10_Sp_lockerC1EPKv(ptr noundef nonnull align 1 dereferenceable(2) %2, ptr noundef nonnull %i.n) #5, !noalias !1189
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !328, !noalias !1189
  store ptr %i.m, ptr %i.n, align 8, !tbaa !328, !noalias !1189
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !307, !noalias !1189 ; 8 uses
  store ptr %i.p, ptr %i.w, align 8, !tbaa !307, !noalias !1189
  call void @_ZNSt10_Sp_lockerD1Ev(ptr noundef nonnull align 1 dead_on_return(2) dereferenceable(2) %2) #5, !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5, !noalias !1189
  %.not9 = icmp eq ptr %i.v, null
  br i1 %.not9, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageInputELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !325, !nonnull !326, !align !327
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 25232
  %i.ab = atomicrmw sub ptr %i.aa, i32 1 seq_cst, align 4 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageInputELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.not.i.i4 = icmp eq ptr %i.x, null
  br i1 %.not.i.i4, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageInputELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit8, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.ad = load atomic i64, ptr %i.ac acquire, align 8 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 4294967297
  %i.af = trunc i64 %i.ad to i32                  ; 2 uses
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ac, align 8, !tbaa !309
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 0, ptr %i.ag, align 4, !tbaa !310
  %i.ah = load ptr, ptr %i.x, align 8, !tbaa !312
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #5, !inline_history !5
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !312
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #5, !inline_history !5
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageInputELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit8

bb.k:                                             ; preds = %bb.i
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !139
  %.not.i.i.i5 = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i5, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = add nsw i32 %i.af, -1
  store i32 %i.ao, ptr %i.ac, align 8, !tbaa !106
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6

bb.m:                                             ; preds = %bb.k
  %i.ap = atomicrmw volatile add ptr %i.ac, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i7 = phi i32 [ %i.af, %bb.l ], [ %i.ap, %bb.m ]
  %i.aq = icmp eq i32 %.0.i.i.i.i7, 1
  br i1 %i.aq, label %bb.n, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageInputELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit8, !prof !279

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #5
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageInputELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit8

_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageInputELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit8: ; preds = %bb.h, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6, %bb.n
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_114ImageCacheFile12SubimageInfo4initERS1_PNS0_9ImageSpecEb(ptr noundef nonnull align 8 dereferenceable(128) initializes((24, 32), (42, 43), (44, 45), (80, 84), (88, 92), (112, 128)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(400) %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %6 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %7 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 2 uses
  %8 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 6 uses
  %9 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %10 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 2 uses
  %11 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %12 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %13 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %14 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %15 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 8 uses
  %16 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 6 uses
  %17 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 4 uses
  %i.a = alloca float, align 4                    ; 6 uses
  %18 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 8 uses
  %19 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 6 uses
  %20 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 4 uses
  %i.b = alloca float, align 4                    ; 6 uses
  %21 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %22 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %2, ptr %i.c, align 8, !tbaa !357
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !371  ; 2 uses
  %i.f = icmp sgt i32 %i.e, 1
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.h = load i32, ptr %i.g, align 4, !tbaa !372
  %i.i = icmp sgt i32 %i.h, 1
  %i.j = zext i1 %i.i to i8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi i8 [ 1, %bb.a ], [ %i.j, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 %i.k, ptr %i.l, align 2, !tbaa !373
  %i.m = load i32, ptr %2, align 8, !tbaa !374    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !375  ; 2 uses
  %i.p = icmp eq i32 %i.m, %i.o
  br i1 %i.p, label %bb.d, label %._ZN11OpenImageIO4v3_120has_full_pixel_rangeINS0_9ImageSpecEEEbRKT_.exit.thread_crit_edge

._ZN11OpenImageIO4v3_120has_full_pixel_rangeINS0_9ImageSpecEEEbRKT_.exit.thread_crit_edge: ; preds = %bb.c
  %.phi.trans.insert81.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 28
  %.pre82.pre = load i32, ptr %.phi.trans.insert81.phi.trans.insert, align 4, !tbaa !376
  %.phi.trans.insert83.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.pre84.pre = load i32, ptr %.phi.trans.insert83.phi.trans.insert, align 4, !tbaa !377
  br label %_ZN11OpenImageIO4v3_120has_full_pixel_rangeINS0_9ImageSpecEEEbRKT_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !377  ; 10 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.t = load i32, ptr %i.s, align 4, !tbaa !376  ; 2 uses
  %i.u = icmp eq i32 %i.r, %i.t
  br i1 %i.u, label %bb.e, label %_ZN11OpenImageIO4v3_120has_full_pixel_rangeINS0_9ImageSpecEEEbRKT_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !378
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !379
  %i.z = icmp eq i32 %i.w, %i.y
  br i1 %i.z, label %bb.f, label %_ZN11OpenImageIO4v3_120has_full_pixel_rangeINS0_9ImageSpecEEEbRKT_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !380 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !381
  %i.ae = icmp eq i32 %i.ab, %i.ad
  br i1 %i.ae, label %bb.g, label %_ZN11OpenImageIO4v3_120has_full_pixel_rangeINS0_9ImageSpecEEEbRKT_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !382 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !383
  %i.aj = icmp eq i32 %i.ag, %i.ai
  br i1 %i.aj, label %_ZN11OpenImageIO4v3_120has_full_pixel_rangeINS0_9ImageSpecEEEbRKT_.exit, label %_ZN11OpenImageIO4v3_120has_full_pixel_rangeINS0_9ImageSpecEEEbRKT_.exit.thread

_ZN11OpenImageIO4v3_120has_full_pixel_rangeINS0_9ImageSpecEEEbRKT_.exit.thread: ; preds = %._ZN11OpenImageIO4v3_120has_full_pixel_rangeINS0_9ImageSpecEEEbRKT_.exit.thread_crit_edge, %bb.g, %bb.f, %bb.e, %bb.d
  %.pre84 = phi i32 [ %.pre84.pre, %._ZN11OpenImageIO4v3_120has_full_pixel_rangeINS0_9ImageSpecEEEbRKT_.exit.thread_crit_edge ], [ %i.r, %bb.g ], [ %i.r, %bb.f ], [ %i.r, %bb.e ], [ %i.r, %bb.d ]
  %.pre82 = phi i32 [ %.pre82.pre, %._ZN11OpenImageIO4v3_120has_full_pixel_rangeINS0_9ImageSpecEEEbRKT_.exit.thread_crit_edge ], [ %i.r, %bb.g ], [ %i.r, %bb.f ], [ %i.r, %bb.e ], [ %i.t, %bb.d ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 0, ptr %i.ak, align 4, !tbaa !1192
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 36
  %.phi.trans.insert75 = getelementptr inbounds nuw i8, ptr %2, i64 12
  %23 = load <2 x i32>, ptr %.phi.trans.insert, align 4, !tbaa !106
  %i.al = load <2 x i32>, ptr %.phi.trans.insert75, align 4, !tbaa !106
  br label %bb.h

_ZN11OpenImageIO4v3_120has_full_pixel_rangeINS0_9ImageSpecEEEbRKT_.exit: ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.an = load i32, ptr %i.am, align 4, !tbaa !372
  %i.ao = icmp eq i32 %i.e, %i.an                 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.aq = zext i1 %i.ao to i8
  store i8 %i.aq, ptr %i.ap, align 4, !tbaa !1192
  %i.ar = insertelement <2 x i32> poison, i32 %i.ab, i64 0
  %i.as = insertelement <2 x i32> %i.ar, i32 %i.ag, i64 1 ; 2 uses
  br i1 %i.ao, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN11OpenImageIO4v3_120has_full_pixel_rangeINS0_9ImageSpecEEEbRKT_.exit.thread, %_ZN11OpenImageIO4v3_120has_full_pixel_rangeINS0_9ImageSpecEEEbRKT_.exit
  %i.at = phi i32 [ %.pre84, %_ZN11OpenImageIO4v3_120has_full_pixel_rangeINS0_9ImageSpecEEEbRKT_.exit.thread ], [ %i.r, %_ZN11OpenImageIO4v3_120has_full_pixel_rangeINS0_9ImageSpecEEEbRKT_.exit ]
  %i.au = phi i32 [ %.pre82, %_ZN11OpenImageIO4v3_120has_full_pixel_rangeINS0_9ImageSpecEEEbRKT_.exit.thread ], [ %i.r, %_ZN11OpenImageIO4v3_120has_full_pixel_rangeINS0_9ImageSpecEEEbRKT_.exit ]
  %24 = phi <2 x i32> [ %i.al, %_ZN11OpenImageIO4v3_120has_full_pixel_rangeINS0_9ImageSpecEEEbRKT_.exit.thread ], [ %i.as, %_ZN11OpenImageIO4v3_120has_full_pixel_rangeINS0_9ImageSpecEEEbRKT_.exit ]
  %25 = phi <2 x i32> [ %23, %_ZN11OpenImageIO4v3_120has_full_pixel_rangeINS0_9ImageSpecEEEbRKT_.exit.thread ], [ %i.as, %_ZN11OpenImageIO4v3_120has_full_pixel_rangeINS0_9ImageSpecEEEbRKT_.exit ]
  %26 = shufflevector <2 x i32> %24, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %27 = sitofp <4 x i32> %26 to <4 x float>
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aw = sub nsw i32 %i.o, %i.m
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %29 = sub nsw i32 %i.au, %i.at
  %30 = shufflevector <2 x i32> %25, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %31 = insertelement <4 x i32> %30, i32 %i.aw, i64 2
  %32 = insertelement <4 x i32> %31, i32 %29, i64 3
  %33 = sitofp <4 x i32> %32 to <4 x float>
  %34 = fdiv <4 x float> %33, %27                 ; 3 uses
  %35 = shufflevector <4 x float> %34, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  store <2 x float> %35, ptr %i.av, align 8, !tbaa !132
  %i.ax = extractelement <4 x float> %34, i64 1
  store float %i.ax, ptr %28, align 8, !tbaa !384
  %i.ay = extractelement <4 x float> %34, i64 3
  br label %bb.j

bb.i:                                             ; preds = %_ZN11OpenImageIO4v3_120has_full_pixel_rangeINS0_9ImageSpecEEEbRKT_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 80
  store float 1.000000e+00, ptr %i.ba, align 8, !tbaa !1193
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.az, align 8, !tbaa !132
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink105 = phi i64 [ 84, %bb.i ], [ 92, %bb.h ]
  %.sink = phi float [ 0.000000e+00, %bb.i ], [ %i.ay, %bb.h ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %.sink105
  store float %.sink, ptr %i.bb, align 4, !tbaa !132
  store ptr @.str.47, ptr %6, align 8, !tbaa !111
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 17, ptr %i.bc, align 8, !tbaa !112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  call void @_ZNK11OpenImageIO4v3_19ImageSpec20get_string_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %5, ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull dead_on_return %6, ptr noundef nonnull dead_on_return %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bd = load ptr, ptr %5, align 8, !tbaa !111   ; 2 uses
  %.not.i = icmp eq ptr %i.bd, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %i.bd, ptr %4, align 8, !tbaa !111
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !112
  store i64 %i.bg, ptr %i.be, align 8, !tbaa !112
  %i.bh = call noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %4)
  %i.bi = ptrtoint ptr %i.bh to i64
  br label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit

_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit: ; preds = %bb.j, %bb.k
  %i.bj = phi i64 [ %i.bi, %bb.k ], [ 0, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !207
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store i64 267, ptr %i.bl, align 8
  br i1 %3, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit51.thread, label %bb.l

bb.l:                                             ; preds = %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !385 ; 3 uses
  %i.bo = icmp eq i8 %i.bn, 2
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 65
  %i.bq = load i8, ptr %i.bp, align 1
  %i.br = icmp eq i8 %i.bq, 1                     ; 3 uses
  %or.cond.i = select i1 %i.bo, i1 %i.br, i1 false
  br i1 %or.cond.i, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit: ; preds = %bb.l
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !386
  %.not.i45 = icmp eq i32 %i.bt, 0
  br i1 %.not.i45, label %bb.m, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit51.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread: ; preds = %bb.l
  %i.bu = icmp eq i8 %i.bn, 4
  %or.cond.i46 = select i1 %i.bu, i1 %i.br, i1 false
  br i1 %or.cond.i46, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit48, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit48.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit48: ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !386
  %.not.i47 = icmp eq i32 %i.bw, 0
  br i1 %.not.i47, label %bb.m, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit51.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit48.thread: ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread
  %i.bx = icmp eq i8 %i.bn, 10
  %or.cond.i49 = select i1 %i.bx, i1 %i.br, i1 false
  br i1 %or.cond.i49, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit51, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit51.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit51: ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit48.thread
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !386
  %.not.i50 = icmp eq i32 %i.bz, 0
  br i1 %.not.i50, label %bb.m, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit51.thread

bb.m:                                             ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit51, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit48, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit
  %i.ca = load i64, ptr %i.bm, align 8            ; 3 uses
  store i64 %i.ca, ptr %i.bl, align 8
  %i.cb = lshr i64 %i.ca, 32
  %i.cc = trunc nuw i64 %i.cb to i32
  %i.cd = lshr i64 %i.ca, 8
  %i.ce = call i32 @llvm.smax.i32(i32 %i.cc, i32 1)
  %i.cf = and i64 %i.cd, 255
  br label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit51.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit51.thread: ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit48, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit48.thread, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit51, %bb.m, %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit
  %i.cg = phi i64 [ 1, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit48.thread ], [ 1, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit51 ], [ %i.cf, %bb.m ], [ 1, %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit ], [ 1, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit48 ], [ 1, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit ]
  %narrow.i = phi i32 [ 1, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit48.thread ], [ 1, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit51 ], [ %i.ce, %bb.m ], [ 1, %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit ], [ 1, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit48 ], [ 1, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit ]
  %i.ch = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.bl) #5
  %i.ci = mul i64 %i.ch, %i.cg
  %i.cj = trunc i64 %i.ci to i32
  %i.ck = mul i32 %narrow.i, %i.cj                ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.ck, ptr %i.cl, align 8, !tbaa !1194
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 3 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !387
  %i.co = mul i32 %i.ck, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !1195
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5
  store ptr @.str.48, ptr %9, align 8, !tbaa !111
  %i.cq = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 8, ptr %i.cq, align 8, !tbaa !112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  call void @_ZNK11OpenImageIO4v3_19ImageSpec20get_string_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %8, ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull dead_on_return %9, ptr noundef nonnull dead_on_return %10)
  %i.cr = load ptr, ptr %8, align 8, !tbaa !111
  store ptr %i.cr, ptr %11, align 8, !tbaa !111
  %i.cs = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !112
  store i64 %i.cu, ptr %i.cs, align 8, !tbaa !112
  store ptr @.str.49, ptr %12, align 8, !tbaa !111
  %i.cv = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 11, ptr %i.cv, align 8, !tbaa !112
  %i.cw = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil12istarts_withENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %11, ptr noundef nonnull dead_on_return %12)
  br i1 %i.cw, label %.critedge72, label %bb.n

bb.n:                                             ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit51.thread
  %i.cx = load ptr, ptr %8, align 8, !tbaa !111
  store ptr %i.cx, ptr %13, align 8, !tbaa !111
  %i.cy = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.cz = load i64, ptr %i.ct, align 8, !tbaa !112
  store i64 %i.cz, ptr %i.cy, align 8, !tbaa !112
  store ptr @.str.50, ptr %14, align 8, !tbaa !111
  %i.da = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 6, ptr %i.da, align 8, !tbaa !112
  %i.db = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil12istarts_withENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %13, ptr noundef nonnull dead_on_return %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #5
  store ptr @.str.51, ptr %16, align 8, !tbaa !111
  %i.dc = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 18, ptr %i.dc, align 8, !tbaa !112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  call void @_ZNK11OpenImageIO4v3_19ImageSpec20get_string_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %15, ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull dead_on_return %16, ptr noundef nonnull dead_on_return %17)
  br i1 %i.db, label %bb.o, label %.critedge

.critedge72:                                      ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit51.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #5
  store ptr @.str.51, ptr %16, align 8, !tbaa !111
  %i.dd = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 18, ptr %i.dd, align 8, !tbaa !112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  call void @_ZNK11OpenImageIO4v3_19ImageSpec20get_string_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %15, ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull dead_on_return %16, ptr noundef nonnull dead_on_return %17)
  br label %bb.o

bb.o:                                             ; preds = %.critedge72, %bb.n
  %i.de = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !112
  %.not = icmp eq i64 %i.df, 0
  br i1 %.not, label %bb.x, label %.preheader73

.preheader73:                                     ; preds = %bb.o
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  br label %bb.p

thread-pre-split:                                 ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %.pr = load i64, ptr %i.de, align 8, !tbaa !112
  %.not40 = icmp eq i64 %.pr, 0
  br i1 %.not40, label %.loopexit74, label %bb.p

bb.p:                                             ; preds = %.preheader73, %thread-pre-split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.dj = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil11parse_floatERNS0_17basic_string_viewIcSt11char_traitsIcEEERfb(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i1 noundef zeroext true) #5
  br i1 %i.dj, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.dk = load ptr, ptr %i.dh, align 8, !tbaa !388 ; 4 uses
  %i.dl = load ptr, ptr %i.di, align 8, !tbaa !389
  %.not.i52 = icmp eq ptr %i.dk, %i.dl
  br i1 %.not.i52, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dm = load float, ptr %i.a, align 4, !tbaa !132
  store float %i.dm, ptr %i.dk, align 4, !tbaa !132
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  store ptr %i.dn, ptr %i.dh, align 8, !tbaa !388
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

bb.s:                                             ; preds = %bb.q
  %i.do = load ptr, ptr %i.dg, align 8, !tbaa !390 ; 4 uses
  %i.dp = ptrtoint ptr %i.dk to i64
  %i.dq = ptrtoint ptr %i.do to i64               ; 2 uses
  %i.dr = sub i64 %i.dp, %i.dq                    ; 5 uses
  %i.ds = icmp eq i64 %i.dr, 9223372036854775804
  br i1 %i.ds, label %bb.t, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i

bb.t:                                             ; preds = %bb.s
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.330) #48
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.s
  %i.dt = ashr exact i64 %i.dr, 2                 ; 3 uses
end_hunk_0
