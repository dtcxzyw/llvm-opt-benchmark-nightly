inline.NumInlined: 153
inline.NumDeleted: 114
begin_hunk_0_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECshbKHpCRGxgC_16deltalake_derive:bb.a
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsbjGuDcEILED_11proc_macro23imp19DeferredTokenStreamECshbKHpCRGxgC_16deltalake_derive.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjJ0p09o2jmV_10proc_macro11TokenStreamECshbKHpCRGxgC_16deltalake_derive.exit.i.i
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtCsjJ0p09o2jmV_10proc_macro9TokenTreeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsbjGuDcEILED_11proc_macro23imp11TokenStreamECshbKHpCRGxgC_16deltalake_derive.exit

bb.h:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  invoke void @_RNvXs0_NtCsbjGuDcEILED_11proc_macro28fallbackNtB5_11TokenStreamNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.k unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %i.k = load ptr, ptr %i.i, align 8, !alias.scope !55, !nonnull !17, !noundef !17 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !noalias !58, !noundef !17
  %i.m = add i64 %i.l, -1                         ; 2 uses
  store i64 %i.m, ptr %i.k, align 8, !noalias !58
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.j, label %common.resume.i

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs6_NtCs6Po7BT7Nknu_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCsbjGuDcEILED_11proc_macro29TokenTreeEE9drop_slowBV_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #19
          to label %common.resume.i unwind label %bb.m

bb.k:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %i.o = load ptr, ptr %i.i, align 8, !alias.scope !68, !nonnull !17, !noundef !17 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !noalias !69, !noundef !17
  %i.q = add i64 %i.p, -1                         ; 2 uses
  store i64 %i.q, ptr %i.o, align 8, !noalias !69
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsbjGuDcEILED_11proc_macro23imp11TokenStreamECshbKHpCRGxgC_16deltalake_derive.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvMs6_NtCs6Po7BT7Nknu_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCsbjGuDcEILED_11proc_macro29TokenTreeEE9drop_slowBV_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #19
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsbjGuDcEILED_11proc_macro23imp11TokenStreamECshbKHpCRGxgC_16deltalake_derive.exit

bb.m:                                             ; preds = %bb.j
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsbjGuDcEILED_11proc_macro23imp11TokenStreamECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsbjGuDcEILED_11proc_macro23imp19DeferredTokenStreamECshbKHpCRGxgC_16deltalake_derive.exit.i, %bb.k, %bb.l
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECshbKHpCRGxgC_16deltalake_derive.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECshbKHpCRGxgC_16deltalake_derive.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECshbKHpCRGxgC_16deltalake_derive.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsl1mHGn7pXMx_12convert_case8boundary5splitRNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef nonnull readonly align 8 captures(address) %2, i64 noundef range(i64 0, 192153584101141163) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [88 x i8], align 8                ; 4 uses
  %i.c = alloca [192 x i8], align 8               ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 2 uses
  %i.e = alloca [48 x i8], align 8                ; 2 uses
  %i.f = alloca [48 x i8], align 8                ; 2 uses
  %i.g = alloca [48 x i8], align 8                ; 2 uses
  %i.h = alloca [200 x i8], align 8               ; 3 uses
  %i.i = alloca [48 x i8], align 8                ; 3 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 9 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !17, !align !70, !noundef !17 ; 2 uses
  %i.m = getelementptr i8, ptr %.val, i64 8
  %.val.i = load ptr, ptr %i.m, align 8, !nonnull !17, !noundef !17 ; 8 uses
  %i.n = getelementptr i8, ptr %.val, i64 16
  %.val1.i = load i64, ptr %i.n, align 8, !noundef !17 ; 15 uses
  %i.o = icmp eq i64 %.val1.i, 0
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.l, align 8, !alias.scope !71
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.p, align 8, !alias.scope !71
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 5 uses
  store i64 0, ptr %i.q, align 8, !alias.scope !71
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !80
  %i.r = ptrtoint ptr %.val.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !82
  invoke void @_RNvMs4_NtCskxeEtmv7ubq_20unicode_segmentation8graphemeNtB5_14GraphemeCursor3new(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(192) %i.c, i64 noundef 0, i64 noundef %.val1.i, i1 noundef zeroext true)
          to label %.noexc unwind label %.body31.thread59

.noexc:                                           ; preds = %bb.b
  invoke void @_RNvMs4_NtCskxeEtmv7ubq_20unicode_segmentation8graphemeNtB5_14GraphemeCursor3new(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.b, i64 noundef %.val1.i, i64 noundef %.val1.i, i1 noundef zeroext true)
          to label %bb.e unwind label %.body31.thread59

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !84
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.s, align 8, !alias.scope !84
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.t, align 8, !alias.scope !84
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECshbKHpCRGxgC_16deltalake_derive.exit

bb.d:                                             ; preds = %.body
  br i1 %.sroa.06.3, label %bb.ar, label %.body31.thread

.body31.thread59:                                 ; preds = %bb.e, %.noexc, %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.e:                                             ; preds = %.noexc
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  store ptr %.val.i, ptr %i.u, align 8, !alias.scope !87, !noalias !90
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  store i64 %.val1.i, ptr %i.v, align 8, !alias.scope !87, !noalias !90
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.w, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 88, i1 false), !noalias !90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !82
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 192
  store i64 %i.r, ptr %i.x, align 8, !alias.scope !92, !noalias !93
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.h, ptr noundef nonnull align 8 dereferenceable(192) %i.c, i64 192, i1 false), !noalias !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !80
  invoke void @_RINvYNtNtCskxeEtmv7ubq_20unicode_segmentation8grapheme15GraphemeIndicesNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator5unzipjReINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEIB2c_B29_EECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.i, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(200) %i.h)
          to label %bb.f unwind label %.body31.thread59

.loopexit69:                                      ; preds = %bb.z
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.ap, %bb.ae, %bb.ad, %bb.ab
  %lpad.loopexit70 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke, %bb.y, %bb.n, %bb.m, %bb.g
  %.sroa.06.2.ph.ph = phi i1 [ true, %.invoke ], [ true, %bb.y ], [ true, %bb.g ], [ false, %bb.n ], [ true, %bb.m ]
  %lpad.loopexit.split-lp71 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit69
  %.sroa.06.2 = phi i1 [ true, %.loopexit69 ], [ true, %.loopexit.split-lp.loopexit ], [ %.sroa.06.2.ph.ph, %.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit69 ], [ %lpad.loopexit70, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp71, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24) %i.j) #18
          to label %.body unwind label %bb.aq

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %.val12 = load i64, ptr %i.z, align 8, !noundef !17 ; 4 uses
  %i.aa = icmp ult i64 %.val12, 576460752303423488
  call void @llvm.assume(i1 %i.aa)
  %i.ab = add nsw i64 %.val12, -1                 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  %.val14 = load i64, ptr %i.ad, align 8, !noundef !17 ; 2 uses
  %i.ae = icmp ult i64 %i.ab, %.val14
  br i1 %i.ae, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef range(i64 -1, 576460752303423487) %i.ab, i64 noundef range(i64 0, 1152921504606846976) %.val14, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #16
          to label %.noexc24 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc24:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %.val13 = load ptr, ptr %i.ac, align 8, !nonnull !17, !noundef !17
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.val13, i64 %i.ab
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !17
  %.val15 = load ptr, ptr %i.af, align 8, !nonnull !17, !noundef !17
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %.val15, i64 %i.ab
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !17
  %i.al = add i64 %i.ak, %i.ah                    ; 2 uses
  %i.am = getelementptr inbounds nuw [48 x i8], ptr %2, i64 %3
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReE4pushCshbKHpCRGxgC_16deltalake_derive.exit41
  %.sroa.0.0.ph90 = phi i64 [ 0, %bb.h ], [ %i.by, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReE4pushCshbKHpCRGxgC_16deltalake_derive.exit41 ] ; 13 uses
  %.sroa.047.0.ph89 = phi i64 [ 0, %bb.h ], [ %i.bj, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReE4pushCshbKHpCRGxgC_16deltalake_derive.exit41 ]
  br label %bb.w

.loopexit:                                        ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtCsl1mHGn7pXMx_12convert_case8boundary8BoundaryENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit
  %i.an = icmp ult i64 %i.bj, %.val12
  br i1 %i.an, label %bb.w, label %.outer._crit_edge

.outer._crit_edge:                                ; preds = %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReE4pushCshbKHpCRGxgC_16deltalake_derive.exit41, %.loopexit
  %.sroa.0.0.ph.lcssa86 = phi i64 [ %.sroa.0.0.ph90, %.loopexit ], [ %i.by, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReE4pushCshbKHpCRGxgC_16deltalake_derive.exit41 ] ; 8 uses
  %i.ao = icmp eq i64 %.sroa.0.0.ph.lcssa86, 0
  br i1 %i.ao, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.outer._crit_edge
  %.not.i.i.i = icmp ult i64 %.sroa.0.0.ph.lcssa86, %.val1.i
  br i1 %.not.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = icmp eq i64 %.sroa.0.0.ph.lcssa86, %.val1.i
  br i1 %i.ap, label %bb.l, label %.invoke

bb.k:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.0.ph.lcssa86
  %i.ar = load i8, ptr %i.aq, align 1, !alias.scope !94, !noundef !17
  %i.as = icmp sgt i8 %i.ar, -65
  br i1 %i.as, label %bb.l, label %.invoke

bb.l:                                             ; preds = %bb.k, %bb.j, %.outer._crit_edge
  %i.at = sub nuw i64 %.val1.i, %.sroa.0.0.ph.lcssa86
  %i.au = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.0.ph.lcssa86
  %i.av = load i64, ptr %i.q, align 8, !alias.scope !101, !noalias !106, !noundef !17 ; 4 uses
  %i.aw = load i64, ptr %i.l, align 8, !range !109, !alias.scope !101, !noalias !106, !noundef !17
  %i.ax = icmp eq i64 %i.av, %i.aw
  br i1 %i.ax, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecReE8grow_oneCsjJ0p09o2jmV_10proc_macro(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ay = load ptr, ptr %i.p, align 8, !alias.scope !101, !noalias !106, !nonnull !17, !noundef !17
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.av ; 2 uses
  store ptr %i.au, ptr %i.az, align 8, !noalias !106
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 %i.at, ptr %i.ba, align 8
  %i.bb = add nsw i64 %i.av, 1                    ; 2 uses
  store i64 %i.bb, ptr %i.q, align 8, !alias.scope !101, !noalias !106
  %.sroa.052.0.copyload = load i64, ptr %i.l, align 8
  %.sroa.253.0.copyload = load ptr, ptr %i.p, align 8, !nonnull !17, !noundef !17 ; 3 uses
  %i.bc = icmp slt i64 %i.av, 576460752303423487
  call void @llvm.assume(i1 %i.bc)
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %.sroa.253.0.copyload, i64 %i.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !110
  store ptr %.sroa.253.0.copyload, ptr %i.a, align 8, !alias.scope !117, !noalias !121
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.253.0.copyload, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !117, !noalias !121
  %.sroa.351.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.052.0.copyload, ptr %.sroa.351.0..sroa_idx, align 8, !alias.scope !117, !noalias !121
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.bd, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !117, !noalias !121
  invoke void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB6_3VecReEINtB4_12SpecFromIterBW_INtNtB6_9into_iter8IntoIterBW_EE9from_iterCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !110
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body unwind label %bb.r

bb.q:                                             ; preds = %bb.o
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECshbKHpCRGxgC_16deltalake_derive.exit unwind label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

.body:                                            ; preds = %bb.s, %bb.p, %.loopexit.split-lp
  %.sroa.06.3 = phi i1 [ %.sroa.06.2, %.loopexit.split-lp ], [ false, %bb.p ], [ false, %bb.s ]
  %.pn = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %i.be, %bb.p ], [ %i.bg, %bb.s ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24) %i.k) #18
          to label %bb.d unwind label %bb.aq

bb.s:                                             ; preds = %bb.q
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %bb.q
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.u unwind label %bb.t

bb.t:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECshbKHpCRGxgC_16deltalake_derive.exit
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body31.thread unwind label %bb.v

bb.u:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECshbKHpCRGxgC_16deltalake_derive.exit
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECshbKHpCRGxgC_16deltalake_derive.exit

bb.v:                                             ; preds = %bb.t
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %bb.u, %bb.c
  ret void

bb.w:                                             ; preds = %.lr.ph, %.loopexit
  %.sroa.047.087 = phi i64 [ %.sroa.047.0.ph89, %.lr.ph ], [ %i.bj, %.loopexit ] ; 7 uses
  %i.bj = add nuw nsw i64 %.sroa.047.087, 1       ; 4 uses
  br label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtCsl1mHGn7pXMx_12convert_case8boundary8BoundaryENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtCsl1mHGn7pXMx_12convert_case8boundary8BoundaryENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %bb.aa, %bb.w
  %.sroa.048.0 = phi ptr [ %2, %bb.w ], [ %spec.select, %bb.aa ] ; 6 uses
  %i.bk = icmp eq ptr %.sroa.048.0, %i.am         ; 2 uses
  %spec.select.idx = select i1 %i.bk, i64 0, i64 48
  %spec.select = getelementptr inbounds nuw i8, ptr %.sroa.048.0, i64 %spec.select.idx
  br i1 %i.bk, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtCsl1mHGn7pXMx_12convert_case8boundary8BoundaryENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.048.0, i64 48, i1 false)
  %.val18 = load i64, ptr %i.z, align 8, !noundef !17 ; 4 uses
  %i.bl = icmp ugt i64 %.sroa.047.087, %.val18
  br i1 %i.bl, label %bb.y, label %bb.z, !prof !122

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef %.sroa.047.087, i64 noundef range(i64 0, 576460752303423488) %.val18, i64 noundef range(i64 0, 576460752303423488) %.val18, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #16
          to label %.noexc33 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc33:                                         ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.x
  %.val17 = load ptr, ptr %i.af, align 8, !nonnull !17, !noundef !17
  %i.bm = sub nuw nsw i64 %.val18, %.sroa.047.087
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %.val17, i64 %.sroa.047.087
  %i.bo = invoke noundef zeroext i1 @_RNvMNtCsl1mHGn7pXMx_12convert_case8boundaryNtB2_8Boundary7matches(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bn, i64 noundef %i.bm)
          to label %bb.aa unwind label %.loopexit69

bb.aa:                                            ; preds = %bb.z
  br i1 %i.bo, label %bb.ab, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtCsl1mHGn7pXMx_12convert_case8boundary8BoundaryENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit

bb.ab:                                            ; preds = %bb.aa
  %.val21 = load ptr, ptr %i.ac, align 8, !nonnull !17, !noundef !17
  %.val22 = load i64, ptr %i.ad, align 8, !noundef !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.048.0, i64 48, i1 false)
  %i.bp = invoke noundef i64 @_RNvMNtCsl1mHGn7pXMx_12convert_case8boundaryNtB2_8Boundary5start(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.f)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit

bb.ac:                                            ; preds = %bb.ab
  %i.bq = add i64 %i.bp, %.sroa.047.087           ; 2 uses
  %.not = icmp ult i64 %i.bq, %.val22
  br i1 %.not, label %.else44, label %bb.ad

.else44:                                          ; preds = %bb.ac
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.val21, i64 %i.bq
  %.else.val45 = load i64, ptr %i.br, align 8, !noundef !17
  br label %bb.ad

bb.ad:                                            ; preds = %.else44, %bb.ac
  %i.bs = phi i64 [ %i.al, %bb.ac ], [ %.else.val45, %.else44 ] ; 11 uses
  %.val19 = load ptr, ptr %i.ac, align 8, !nonnull !17, !noundef !17
  %.val20 = load i64, ptr %i.ad, align 8, !noundef !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.048.0, i64 48, i1 false)
  %i.bt = invoke noundef i64 @_RNvMNtCsl1mHGn7pXMx_12convert_case8boundaryNtB2_8Boundary5start(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.e)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.048.0, i64 48, i1 false)
  %i.bu = invoke noundef i64 @_RNvMNtCsl1mHGn7pXMx_12convert_case8boundaryNtB2_8Boundary3len(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.d)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit

bb.af:                                            ; preds = %bb.ae
  %i.bv = add i64 %i.bt, %.sroa.047.087
  %i.bw = add i64 %i.bv, %i.bu                    ; 2 uses
  %.not68 = icmp ult i64 %i.bw, %.val20
  br i1 %.not68, label %.else, label %.cont

.else:                                            ; preds = %bb.af
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.val19, i64 %i.bw
  %.else.val = load i64, ptr %i.bx, align 8, !noundef !17
end_hunk_0
