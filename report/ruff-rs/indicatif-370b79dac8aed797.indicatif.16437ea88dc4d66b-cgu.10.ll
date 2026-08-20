inline.NumInlined: 77
inline.NumDeleted: 41
begin_hunk_0_@_RINvMNtNtNtCs2AWtUsOyxgP_3std4sync6poison7condvarNtB3_7Condvar18wait_timeout_whilebNCNvMs3_NtCs1UvybGPDVxf_9indicatif12progress_barNtB1r_13TickerControl3run0EB1t_:bb.a
  store ptr %2, ptr %i.l, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.b, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sink79, ptr %.sroa.59.0..sroa_idx, align 8
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.m = extractvalue { i64, i32 } %i.k, 0        ; 2 uses
  %i.n = extractvalue { i64, i32 } %i.k, 1        ; 2 uses
  %i.o = icmp ult i64 %4, %i.m
  br i1 %i.o, label %.loopexit81, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = sub nuw i64 %4, %i.m                     ; 3 uses
  %.not.i = icmp samesign ult i32 %5, %i.n
  br i1 %.not.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %.loopexit81, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = add i64 %i.p, -1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.sroa.05.0.i = phi i64 [ %i.r, %bb.h ], [ %i.p, %bb.f ] ; 3 uses
  %.pn.i = phi i32 [ %i.h, %bb.h ], [ %5, %bb.f ]
  %.sroa.02.0.i = sub nuw nsw i32 %.pn.i, %i.n    ; 3 uses
  %i.s = icmp samesign ult i32 %.sroa.02.0.i, 1000000000
  br i1 %i.s, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = icmp eq i64 %.sroa.05.0.i, -1
  br i1 %i.t, label %bb.l, label %bb.k, !prof !5

bb.k:                                             ; preds = %bb.j
  %i.u = add nuw i64 %.sroa.05.0.i, 1
  %i.v = add nsw i32 %.sroa.02.0.i, -1000000000
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 25, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #19
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.i, %bb.k
  %.sroa.4.0.i = phi i32 [ %i.v, %bb.k ], [ %.sroa.02.0.i, %bb.i ]
  %.sroa.0.0.i = phi i64 [ %i.u, %bb.k ], [ %.sroa.05.0.i, %bb.i ]
  %i.w = invoke noundef zeroext i1 @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync7condvar5futexNtB2_7Condvar12wait_timeout(ptr noundef nonnull align 4 %1, ptr noundef nonnull align 4 %2, i64 noundef %.sroa.0.0.i, i32 noundef range(i32 0, 1000000000) %.sroa.4.0.i)
          to label %bb.p unwind label %bb.n, !noalias !6

bb.n:                                             ; preds = %bb.m
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardbEECs1UvybGPDVxf_9indicatif(ptr nonnull align 4 %2, i8 %i.b) #20
          to label %.body unwind label %bb.o, !noalias !6

bb.o:                                             ; preds = %bb.n
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21, !noalias !6
  unreachable

bb.p:                                             ; preds = %bb.m
  %i.z = load atomic i8, ptr %i.i monotonic, align 4, !noalias !6
  %.not = icmp eq i8 %i.z, 0
  br i1 %.not, label %bb.c, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aa = xor i1 %i.w, true
  %.sink.i = zext i1 %i.aa to i8
  br label %.loopexit81

.body:                                            ; preds = %bb.n, %bb.r
  %eh.lpad-body71 = phi { ptr, i32 } [ %lpad.phi, %bb.r ], [ %i.x, %bb.n ]
  resume { ptr, i32 } %eh.lpad-body71

.loopexit:                                        ; preds = %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp:                               ; preds = %bb.l, %bb.a
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardbEECs1UvybGPDVxf_9indicatif(ptr nonnull %2, i8 %i.b) #20
          to label %.body unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs1UvybGPDVxf_9indicatif(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) %0, ptr noalias nofree noundef align 8 captures(address_is_null) dereferenceable_or_null(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !3, !noundef !4
  %trunc = trunc nuw i8 %i.b to i1
  br i1 %trunc, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.04.0.copyload = load i64, ptr %1, align 8
  %.sroa.5.0..sroa.0.0.1.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa.0.0.1.sroa_idx, align 8
  %.sroa.6.0..sroa.0.0.1.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa.0.0.1.sroa_idx, align 8
  store i64 0, ptr %1, align 8
  %i.c = trunc nuw i64 %.sroa.04.0.copyload to i1
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.d = tail call { i64, i64 } @_RNvNtNtNtCs2AWtUsOyxgP_3std3sys6random5linux19hashmap_random_keys() ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0
  %i.f = extractvalue { i64, i64 } %i.d, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.3.0 = phi i64 [ %i.f, %bb.d ], [ %.sroa.6.0.copyload, %bb.c ]
  %.sroa.03.0 = phi i64 [ %i.e, %bb.d ], [ %.sroa.5.0.copyload, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.03.0, ptr %0, align 8
  store i64 %.sroa.3.0, ptr %i.g, align 8
  store i8 1, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTReINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs1UvybGPDVxf_9indicatif5style15ProgressTrackerEL_EEE9next_implKb0_EB1A_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %.not12 = icmp eq i16 %i.b, 0
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  br i1 %.not12, label %.lr.ph, label %._crit_edge19

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted14 = load ptr, ptr %i.c, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  store ptr %i.o, ptr %i.c, align 8
  store ptr %i.n, ptr %0, align 8
  br label %._crit_edge19

._crit_edge19:                                    ; preds = %bb.a, %._crit_edge
  %i.d = phi ptr [ %i.n, %._crit_edge ], [ %.promoted, %bb.a ]
  %.lcssa = phi i16 [ %.cast, %._crit_edge ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = add i16 %.lcssa, -1
  %i.f = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.g = zext nneg i16 %i.f to i64
  %i.h = and i16 %i.e, %.lcssa
  store i16 %i.h, ptr %i.a, align 8
  %i.i = sub nsw i64 0, %i.g
  %i.j = getelementptr inbounds [32 x i8], ptr %i.d, i64 %i.i
  ret ptr %i.j

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %.promoted14, %.lr.ph ], [ %i.o, %bb.b ] ; 2 uses
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.n, %bb.b ]
  %.val10 = load <16 x i8>, ptr %i.k, align 16
  %i.m = icmp sgt <16 x i8> %.val10, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -512 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast = bitcast <16 x i1> %i.m to i16          ; 2 uses
  %.not = icmp eq i16 %.cast, 0
  br i1 %.not, label %bb.b, label %._crit_edge
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardTjQINtNtBG_3raw8RawTableTReINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs1UvybGPDVxf_9indicatif5style15ProgressTrackerEL_EEEENCNvMse_B1y_B1v_15clone_from_impl0EEB2w_(i64 %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.not.i.i = icmp eq i64 %.0.val, 0
  br i1 %.not.i.i, label %_RNvXs1_NtCsgQfI1edjipl_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTReINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs1UvybGPDVxf_9indicatif5style15ProgressTrackerEL_EEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB23_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTReINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs1UvybGPDVxf_9indicatif5style15ProgressTrackerEL_EEEB1h_.exit.i.i, %.lr.ph.i.i
  %.sroa.0.01.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTReINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs1UvybGPDVxf_9indicatif5style15ProgressTrackerEL_EEEB1h_.exit.i.i ] ; 2 uses
  %i.a = add nuw i64 %.sroa.0.01.i.i, 1           ; 2 uses
  %i.b = load ptr, ptr %.8.val, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.01.i.i
  %i.d = load i8, ptr %i.c, align 1, !noundef !4
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTReINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs1UvybGPDVxf_9indicatif5style15ProgressTrackerEL_EEEB1h_.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.b, i64 -16
  %.val.i.i = load ptr, ptr %i.f, align 8         ; 5 uses
  %i.g = getelementptr i8, ptr %i.b, i64 -8
  %.val6.i.i = load ptr, ptr %i.g, align 8, !nonnull !4, !align !9, !noundef !4 ; 5 uses
  %i.h = load ptr, ptr %.val6.i.i, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.h(ptr noundef nonnull %.val.i.i)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !10, !invariant.load !4 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTReINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs1UvybGPDVxf_9indicatif5style15ProgressTrackerEL_EEEB1h_.exit.i.i, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !11, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) %i.m) #22
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTReINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs1UvybGPDVxf_9indicatif5style15ProgressTrackerEL_EEEB1h_.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !10, !invariant.load !4 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs1UvybGPDVxf_9indicatif5style15ProgressTrackerEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBL_.exit5.i.i.i.i, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !11, !invariant.load !4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) %i.s) #22
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs1UvybGPDVxf_9indicatif5style15ProgressTrackerEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBL_.exit5.i.i.i.i

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs1UvybGPDVxf_9indicatif5style15ProgressTrackerEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBL_.exit5.i.i.i.i: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.f
  resume { ptr, i32 } %i.n

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTReINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs1UvybGPDVxf_9indicatif5style15ProgressTrackerEL_EEEB1h_.exit.i.i: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.e, %bb.b
  %exitcond.not.i.i = icmp eq i64 %i.a, %.0.val
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCsgQfI1edjipl_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTReINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs1UvybGPDVxf_9indicatif5style15ProgressTrackerEL_EEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB23_.exit, label %bb.b

_RNvXs1_NtCsgQfI1edjipl_9hashbrown10scopeguardINtB5_10ScopeGuardTjQINtNtB7_3raw8RawTableTReINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs1UvybGPDVxf_9indicatif5style15ProgressTrackerEL_EEEENCNvMse_B15_B12_15clone_from_impl0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB23_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTReINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs1UvybGPDVxf_9indicatif5style15ProgressTrackerEL_EEEB1h_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardbEECs1UvybGPDVxf_9indicatif(ptr %.0.val, i8 %.8.val) unnamed_addr #0 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 4
  %i.b = trunc nuw i8 %.8.val to i1
  br i1 %i.b, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count17is_zero_slow_path()
  br i1 %i.f, label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.a monotonic, align 1
  br label %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i

_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.g = atomicrmw xchg ptr %.0.val, i32 0 release, align 4
  %i.h = icmp eq i32 %i.g, 2
  br i1 %i.h, label %bb.e, label %_RNvXsc_NtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutexINtB5_10MutexGuardbENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1UvybGPDVxf_9indicatif.exit, !prof !5

bb.e:                                             ; preds = %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i
  tail call void @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.0.val)
  br label %_RNvXsc_NtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutexINtB5_10MutexGuardbENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1UvybGPDVxf_9indicatif.exit

_RNvXsc_NtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutexINtB5_10MutexGuardbENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1UvybGPDVxf_9indicatif.exit: ; preds = %_RNvMNtNtCs2AWtUsOyxgP_3std4sync6poisonNtB2_4Flag4done.exit.i, %bb.e
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs1UvybGPDVxf_9indicatif(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13)
  %i.b = icmp eq i64 %4, 0
  br i1 %i.b, label %bb.e, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %0, align 8, !range !10, !alias.scope !13, !noundef !4 ; 2 uses
  %i.f = shl nuw i64 %i.e, 1
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 range(i64 0, -1) %i.f)
  %i.g = icmp eq i64 %4, 1
  %i.h = icmp ult i64 %4, 1025
  %..i = select i1 %i.h, i64 4, i64 1
  %.sroa.08.0.i = select i1 %i.g, i64 8, i64 %..i
  %.sroa.0.0.i14.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i, i64 range(i64 0, -1) %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.i, align 8, !alias.scope !13
  call fastcc void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs1UvybGPDVxf_9indicatif(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.e, ptr %.val13.i, i64 noundef %.sroa.0.0.i14.i, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !13
  %i.j = load i64, ptr %i.a, align 8, !range !16, !noalias !13, !noundef !4
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.l, align 8, !range !17, !noalias !13, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noalias !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.b
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.b ], [ %i.o, %bb.d ], [ undef, %bb.a ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ], [ 0, %bb.a ]
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #19
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.l, align 8, !noalias !13, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13
  store ptr %i.p, ptr %i.i, align 8, !alias.scope !13
  %i.q = icmp sgt i64 %.sroa.0.0.i14.i, -1
  tail call void @llvm.assume(i1 %i.q)
  store i64 %.sroa.0.0.i14.i, ptr %0, align 8, !alias.scope !13
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs1UvybGPDVxf_9indicatif11draw_target8LineTypeE8grow_oneBP_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !10, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !18
  call fastcc void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs1UvybGPDVxf_9indicatif(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 32), !noalias !18
  %i.f = load i64, ptr %i.a, align 8, !range !16, !noalias !18, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !17, !noalias !18, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !18, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !18
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !18
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs1UvybGPDVxf_9indicatif5multi16MultiStateMemberE8grow_oneBP_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !10, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !21
  call fastcc void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs1UvybGPDVxf_9indicatif(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 40), !noalias !21
  %i.f = load i64, ptr %i.a, align 8, !range !16, !noalias !21, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !17, !noalias !21, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !21, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21
end_hunk_0
