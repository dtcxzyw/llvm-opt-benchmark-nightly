inline.NumInlined: 13633
inline.NumDeleted: 4657
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 69
loop-unroll.NumUnrolled: 85
begin_hunk_0_@_ZN11OpenImageIO4v3_114ImageCacheFile14set_imageinputESt10shared_ptrINS0_10ImageInputEE:bb.a
_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageInputELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN11OpenImageIO4v3_114ImageCacheImpl15incr_open_filesEv.exit, %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5, !noalias !292
  call void @_ZNSt10_Sp_lockerC1EPKv(ptr noundef nonnull align 1 dereferenceable(2) %2, ptr noundef nonnull %i.n) #5, !noalias !292
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !297, !noalias !292
  store ptr %i.m, ptr %i.n, align 8, !tbaa !297, !noalias !292
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !258, !noalias !292 ; 8 uses
  store ptr %i.p, ptr %i.w, align 8, !tbaa !258, !noalias !292
  call void @_ZNSt10_Sp_lockerD1Ev(ptr noundef nonnull align 1 dead_on_return(2) dereferenceable(2) %2) #5, !noalias !292
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5, !noalias !292
  %.not9 = icmp eq ptr %i.v, null
  br i1 %.not9, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageInputELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !289, !nonnull !290, !align !291
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
  store i32 0, ptr %i.ac, align 8, !tbaa !259
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 0, ptr %i.ag, align 4, !tbaa !261
  %i.ah = load ptr, ptr %i.x, align 8, !tbaa !262
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #5, !inline_history !279
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !262
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #5, !inline_history !279
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageInputELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit8

bb.k:                                             ; preds = %bb.i
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i5 = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i5, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = add nsw i32 %i.af, -1
  store i32 %i.ao, ptr %i.ac, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6

bb.m:                                             ; preds = %bb.k
  %i.ap = atomicrmw volatile add ptr %i.ac, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i7 = phi i32 [ %i.af, %bb.l ], [ %i.ap, %bb.m ]
  %i.aq = icmp eq i32 %.0.i.i.i.i7, 1
  br i1 %i.aq, label %bb.n, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageInputELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit8, !prof !190

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
  store ptr %2, ptr %i.c, align 8, !tbaa !298
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !327  ; 2 uses
  %i.f = icmp sgt i32 %i.e, 1
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.h = load i32, ptr %i.g, align 4, !tbaa !341
  %i.i = icmp sgt i32 %i.h, 1
  %i.j = zext i1 %i.i to i8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi i8 [ 1, %bb.a ], [ %i.j, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 %i.k, ptr %i.l, align 2, !tbaa !342
  %i.m = load i32, ptr %2, align 8, !tbaa !343    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !344  ; 2 uses
  %i.p = icmp eq i32 %i.m, %i.o
  br i1 %i.p, label %bb.d, label %._ZN11OpenImageIO4v3_120has_full_pixel_rangeINS0_9ImageSpecEEEbRKT_.exit.thread_crit_edge

._ZN11OpenImageIO4v3_120has_full_pixel_rangeINS0_9ImageSpecEEEbRKT_.exit.thread_crit_edge: ; preds = %bb.c
  %.phi.trans.insert82.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 28
  %.pre83.pre = load i32, ptr %.phi.trans.insert82.phi.trans.insert, align 4, !tbaa !345
  %.phi.trans.insert84.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.pre85.pre = load i32, ptr %.phi.trans.insert84.phi.trans.insert, align 4, !tbaa !346
  br label %_ZN11OpenImageIO4v3_120has_full_pixel_rangeINS0_9ImageSpecEEEbRKT_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !346  ; 10 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.t = load i32, ptr %i.s, align 4, !tbaa !345  ; 2 uses
  %i.u = icmp eq i32 %i.r, %i.t
  br i1 %i.u, label %bb.e, label %_ZN11OpenImageIO4v3_120has_full_pixel_rangeINS0_9ImageSpecEEEbRKT_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !347
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !348
  %i.z = icmp eq i32 %i.w, %i.y
  br i1 %i.z, label %bb.f, label %_ZN11OpenImageIO4v3_120has_full_pixel_rangeINS0_9ImageSpecEEEbRKT_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !349 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !350
  %i.ae = icmp eq i32 %i.ab, %i.ad
  br i1 %i.ae, label %bb.g, label %_ZN11OpenImageIO4v3_120has_full_pixel_rangeINS0_9ImageSpecEEEbRKT_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !351 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !352
  %i.aj = icmp eq i32 %i.ag, %i.ai
  br i1 %i.aj, label %_ZN11OpenImageIO4v3_120has_full_pixel_rangeINS0_9ImageSpecEEEbRKT_.exit, label %_ZN11OpenImageIO4v3_120has_full_pixel_rangeINS0_9ImageSpecEEEbRKT_.exit.thread

_ZN11OpenImageIO4v3_120has_full_pixel_rangeINS0_9ImageSpecEEEbRKT_.exit.thread: ; preds = %._ZN11OpenImageIO4v3_120has_full_pixel_rangeINS0_9ImageSpecEEEbRKT_.exit.thread_crit_edge, %bb.g, %bb.f, %bb.e, %bb.d
  %.pre85 = phi i32 [ %.pre85.pre, %._ZN11OpenImageIO4v3_120has_full_pixel_rangeINS0_9ImageSpecEEEbRKT_.exit.thread_crit_edge ], [ %i.r, %bb.g ], [ %i.r, %bb.f ], [ %i.r, %bb.e ], [ %i.r, %bb.d ]
  %.pre83 = phi i32 [ %.pre83.pre, %._ZN11OpenImageIO4v3_120has_full_pixel_rangeINS0_9ImageSpecEEEbRKT_.exit.thread_crit_edge ], [ %i.r, %bb.g ], [ %i.r, %bb.f ], [ %i.r, %bb.e ], [ %i.t, %bb.d ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 0, ptr %i.ak, align 4, !tbaa !353
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 36
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !350
  %.phi.trans.insert76 = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.pre77 = load i32, ptr %.phi.trans.insert76, align 4, !tbaa !349
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.pre79 = load i32, ptr %.phi.trans.insert78, align 8, !tbaa !352
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre81 = load i32, ptr %.phi.trans.insert80, align 8, !tbaa !351
  br label %bb.h

_ZN11OpenImageIO4v3_120has_full_pixel_rangeINS0_9ImageSpecEEEbRKT_.exit: ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.am = load i32, ptr %i.al, align 4, !tbaa !341
  %i.an = icmp eq i32 %i.e, %i.am                 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ap = zext i1 %i.an to i8
  store i8 %i.ap, ptr %i.ao, align 4, !tbaa !353
  br i1 %i.an, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN11OpenImageIO4v3_120has_full_pixel_rangeINS0_9ImageSpecEEEbRKT_.exit.thread, %_ZN11OpenImageIO4v3_120has_full_pixel_rangeINS0_9ImageSpecEEEbRKT_.exit
  %i.aq = phi i32 [ %.pre85, %_ZN11OpenImageIO4v3_120has_full_pixel_rangeINS0_9ImageSpecEEEbRKT_.exit.thread ], [ %i.r, %_ZN11OpenImageIO4v3_120has_full_pixel_rangeINS0_9ImageSpecEEEbRKT_.exit ]
  %i.ar = phi i32 [ %.pre83, %_ZN11OpenImageIO4v3_120has_full_pixel_rangeINS0_9ImageSpecEEEbRKT_.exit.thread ], [ %i.r, %_ZN11OpenImageIO4v3_120has_full_pixel_rangeINS0_9ImageSpecEEEbRKT_.exit ]
  %i.as = phi i32 [ %.pre81, %_ZN11OpenImageIO4v3_120has_full_pixel_rangeINS0_9ImageSpecEEEbRKT_.exit.thread ], [ %i.ag, %_ZN11OpenImageIO4v3_120has_full_pixel_rangeINS0_9ImageSpecEEEbRKT_.exit ]
  %i.at = phi i32 [ %.pre79, %_ZN11OpenImageIO4v3_120has_full_pixel_rangeINS0_9ImageSpecEEEbRKT_.exit.thread ], [ %i.ag, %_ZN11OpenImageIO4v3_120has_full_pixel_rangeINS0_9ImageSpecEEEbRKT_.exit ]
  %i.au = phi i32 [ %.pre77, %_ZN11OpenImageIO4v3_120has_full_pixel_rangeINS0_9ImageSpecEEEbRKT_.exit.thread ], [ %i.ab, %_ZN11OpenImageIO4v3_120has_full_pixel_rangeINS0_9ImageSpecEEEbRKT_.exit ]
  %i.av = phi i32 [ %.pre, %_ZN11OpenImageIO4v3_120has_full_pixel_rangeINS0_9ImageSpecEEEbRKT_.exit.thread ], [ %i.ab, %_ZN11OpenImageIO4v3_120has_full_pixel_rangeINS0_9ImageSpecEEEbRKT_.exit ]
  %i.aw = sitofp i32 %i.au to float
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ay = sub nsw i32 %i.o, %i.m
  %i.az = insertelement <2 x i32> poison, i32 %i.av, i64 0
  %i.ba = insertelement <2 x i32> %i.az, i32 %i.ay, i64 1
  %i.bb = sitofp <2 x i32> %i.ba to <2 x float>
  %i.bc = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = fdiv <2 x float> %i.bb, %i.bd
  store <2 x float> %i.be, ptr %i.ax, align 8, !tbaa !32
  %i.bf = sitofp i32 %i.as to float
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %24 = sub nsw i32 %i.ar, %i.aq
  %25 = insertelement <2 x i32> poison, i32 %i.at, i64 0
  %26 = insertelement <2 x i32> %25, i32 %24, i64 1
  %27 = sitofp <2 x i32> %26 to <2 x float>
  %28 = insertelement <2 x float> poison, float %i.bf, i64 0
  %29 = shufflevector <2 x float> %28, <2 x float> poison, <2 x i32> zeroinitializer
  %30 = fdiv <2 x float> %27, %29                 ; 2 uses
  %31 = extractelement <2 x float> %30, i64 0
  store float %31, ptr %23, align 8, !tbaa !354
  %32 = extractelement <2 x float> %30, i64 1
  br label %bb.j

bb.i:                                             ; preds = %_ZN11OpenImageIO4v3_120has_full_pixel_rangeINS0_9ImageSpecEEEbRKT_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 80
  store float 1.000000e+00, ptr %i.bh, align 8, !tbaa !355
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.bg, align 8, !tbaa !32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink106 = phi i64 [ 84, %bb.i ], [ 92, %bb.h ]
  %.sink = phi float [ 0.000000e+00, %bb.i ], [ %32, %bb.h ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %.sink106
  store float %.sink, ptr %i.bi, align 4, !tbaa !32
  store ptr @.str.47, ptr %6, align 8, !tbaa !7
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 17, ptr %i.bj, align 8, !tbaa !12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  call void @_ZNK11OpenImageIO4v3_19ImageSpec20get_string_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %5, ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull dead_on_return %6, ptr noundef nonnull dead_on_return %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bk = load ptr, ptr %5, align 8, !tbaa !7     ; 2 uses
  %.not.i = icmp eq ptr %i.bk, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %i.bk, ptr %4, align 8, !tbaa !7
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !12
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !12
  %i.bo = call noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %4)
  %i.bp = ptrtoint ptr %i.bo to i64
  br label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit

_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit: ; preds = %bb.j, %bb.k
  %i.bq = phi i64 [ %i.bp, %bb.k ], [ 0, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !114
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store i64 267, ptr %i.bs, align 8
  br i1 %3, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit52.thread, label %bb.l

bb.l:                                             ; preds = %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !356 ; 3 uses
  %i.bv = icmp eq i8 %i.bu, 2
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 65
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = icmp eq i8 %i.bx, 1                     ; 3 uses
  %or.cond.i = select i1 %i.bv, i1 %i.by, i1 false
  br i1 %or.cond.i, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit: ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !357
  %.not.i46 = icmp eq i32 %i.ca, 0
  br i1 %.not.i46, label %bb.m, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit52.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread: ; preds = %bb.l
  %i.cb = icmp eq i8 %i.bu, 4
  %or.cond.i47 = select i1 %i.cb, i1 %i.by, i1 false
  br i1 %or.cond.i47, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit49, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit49.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit49: ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !357
  %.not.i48 = icmp eq i32 %i.cd, 0
  br i1 %.not.i48, label %bb.m, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit52.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit49.thread: ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread
  %i.ce = icmp eq i8 %i.bu, 10
  %or.cond.i50 = select i1 %i.ce, i1 %i.by, i1 false
  br i1 %or.cond.i50, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit52, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit52.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit52: ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit49.thread
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !357
  %.not.i51 = icmp eq i32 %i.cg, 0
  br i1 %.not.i51, label %bb.m, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit52.thread

bb.m:                                             ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit52, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit49, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit
  %i.ch = load i64, ptr %i.bt, align 8            ; 3 uses
  store i64 %i.ch, ptr %i.bs, align 8
  %i.ci = lshr i64 %i.ch, 32
  %i.cj = trunc nuw i64 %i.ci to i32
  %i.ck = lshr i64 %i.ch, 8
  %i.cl = call i32 @llvm.smax.i32(i32 %i.cj, i32 1)
  %i.cm = and i64 %i.ck, 255
  br label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit52.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit52.thread: ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit49, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit49.thread, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit52, %bb.m, %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit
  %i.cn = phi i64 [ 1, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit49.thread ], [ 1, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit52 ], [ %i.cm, %bb.m ], [ 1, %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit ], [ 1, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit49 ], [ 1, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit ]
  %narrow.i = phi i32 [ 1, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit49.thread ], [ 1, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit52 ], [ %i.cl, %bb.m ], [ 1, %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit ], [ 1, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit49 ], [ 1, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit ]
  %i.co = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.bs) #5
  %i.cp = mul i64 %i.co, %i.cn
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = mul i32 %narrow.i, %i.cq                ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.cr, ptr %i.cs, align 8, !tbaa !358
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 3 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !359
  %i.cv = mul i32 %i.cr, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !360
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5
  store ptr @.str.48, ptr %9, align 8, !tbaa !7
  %i.cx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 8, ptr %i.cx, align 8, !tbaa !12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  call void @_ZNK11OpenImageIO4v3_19ImageSpec20get_string_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %8, ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull dead_on_return %9, ptr noundef nonnull dead_on_return %10)
  %i.cy = load ptr, ptr %8, align 8, !tbaa !7
  store ptr %i.cy, ptr %11, align 8, !tbaa !7
  %i.cz = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !12
  store i64 %i.db, ptr %i.cz, align 8, !tbaa !12
  store ptr @.str.49, ptr %12, align 8, !tbaa !7
  %i.dc = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 11, ptr %i.dc, align 8, !tbaa !12
  %i.dd = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil12istarts_withENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %11, ptr noundef nonnull dead_on_return %12)
  br i1 %i.dd, label %.critedge73, label %bb.n

bb.n:                                             ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit52.thread
  %i.de = load ptr, ptr %8, align 8, !tbaa !7
  store ptr %i.de, ptr %13, align 8, !tbaa !7
  %i.df = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.dg = load i64, ptr %i.da, align 8, !tbaa !12
  store i64 %i.dg, ptr %i.df, align 8, !tbaa !12
  store ptr @.str.50, ptr %14, align 8, !tbaa !7
  %i.dh = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 6, ptr %i.dh, align 8, !tbaa !12
  %i.di = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil12istarts_withENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %13, ptr noundef nonnull dead_on_return %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #5
  store ptr @.str.51, ptr %16, align 8, !tbaa !7
  %i.dj = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 18, ptr %i.dj, align 8, !tbaa !12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  call void @_ZNK11OpenImageIO4v3_19ImageSpec20get_string_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %15, ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull dead_on_return %16, ptr noundef nonnull dead_on_return %17)
  br i1 %i.di, label %bb.o, label %.critedge

.critedge73:                                      ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit52.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #5
  store ptr @.str.51, ptr %16, align 8, !tbaa !7
  %i.dk = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 18, ptr %i.dk, align 8, !tbaa !12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  call void @_ZNK11OpenImageIO4v3_19ImageSpec20get_string_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %15, ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull dead_on_return %16, ptr noundef nonnull dead_on_return %17)
  br label %bb.o

bb.o:                                             ; preds = %.critedge73, %bb.n
  %i.dl = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !12
  %.not = icmp eq i64 %i.dm, 0
  br i1 %.not, label %bb.x, label %.preheader74

.preheader74:                                     ; preds = %bb.o
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br label %bb.p

thread-pre-split:                                 ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %.pr = load i64, ptr %i.dl, align 8, !tbaa !12
  %.not40 = icmp eq i64 %.pr, 0
  br i1 %.not40, label %.loopexit75, label %bb.p

bb.p:                                             ; preds = %.preheader74, %thread-pre-split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.dq = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil11parse_floatERNS0_17basic_string_viewIcSt11char_traitsIcEEERfb(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i1 noundef zeroext true) #5
  br i1 %i.dq, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.dr = load ptr, ptr %i.do, align 8, !tbaa !361 ; 4 uses
  %i.ds = load ptr, ptr %i.dp, align 8, !tbaa !362
  %.not.i53 = icmp eq ptr %i.dr, %i.ds
  br i1 %.not.i53, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dt = load float, ptr %i.a, align 4, !tbaa !32
  store float %i.dt, ptr %i.dr, align 4, !tbaa !32
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  store ptr %i.du, ptr %i.do, align 8, !tbaa !361
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

bb.s:                                             ; preds = %bb.q
  %i.dv = load ptr, ptr %i.dn, align 8, !tbaa !363 ; 4 uses
  %i.dw = ptrtoint ptr %i.dr to i64
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = sub i64 %i.dw, %i.dx                    ; 6 uses
  %i.dz = icmp eq i64 %i.dy, 9223372036854775804
  br i1 %i.dz, label %bb.t, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i

bb.t:                                             ; preds = %bb.s
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.330) #48
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.s
  %i.ea = ashr exact i64 %i.dy, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ea, i64 1)
  %i.eb = add nsw i64 %.sroa.speculated.i.i.i, %i.ea ; 2 uses
  %i.ec = icmp ult i64 %i.eb, %i.ea
  %i.ed = call i64 @llvm.umin.i64(i64 %i.eb, i64 2305843009213693951)
  %i.ee = select i1 %i.ec, i64 2305843009213693951, i64 %i.ed ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ee, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ef = shl nuw nsw i64 %i.ee, 2
  %i.eg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ef) #47 ; 4 uses
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 %i.dy ; 2 uses
  %i.ei = load float, ptr %i.a, align 4, !tbaa !32
  store float %i.ei, ptr %i.eh, align 4, !tbaa !32
end_hunk_0
