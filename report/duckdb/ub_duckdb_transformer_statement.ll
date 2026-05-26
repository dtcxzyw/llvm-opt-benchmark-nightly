inline.NumInlined: 9726
inline.NumDeleted: 5291
begin_hunk_0_@_ZN6duckdb11Transformer14PGListToVectorENS_12optional_ptrIN17duckdb_libpgquery6PGListELb1EEERm:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br i1 %.017, label %bb.s, label %bb.ae

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn3258 = phi { ptr, i32 } [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.s) #23
  br label %bb.ae

bb.t:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !10  ; 4 uses
  store ptr %i.j, ptr %10, align 8, !tbaa !19
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.177) #24
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.ac = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aa) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !21
  %i.ad = icmp ugt i64 %i.ac, 15
  br i1 %i.ad, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.v
  %i.ae = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc40 unwind label %.loopexit60 ; 2 uses

.noexc40:                                         ; preds = %.noexc.i
  store ptr %i.ae, ptr %10, align 8, !tbaa !23
  %i.af = load i64, ptr %i.a, align 8, !tbaa !21
  store i64 %i.af, ptr %i.j, align 8, !tbaa !10
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc40, %bb.v
  %i.ag = phi ptr [ %i.ae, %.noexc40 ], [ %i.j, %bb.v ] ; 2 uses
  switch i64 %i.ac, label %bb.x [
    i64 1, label %bb.w
    i64 0, label %bb.y
  ]

bb.w:                                             ; preds = %._crit_edge.i.i
  %i.ah = load i8, ptr %i.aa, align 1, !tbaa !10
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !10
  br label %bb.y

bb.x:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr nonnull align 1 %i.aa, i64 %i.ac, i1 false)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %._crit_edge.i.i
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !21  ; 2 uses
  store i64 %i.ai, ptr %i.k, align 8, !tbaa !25
  %i.aj = load ptr, ptr %10, align 8, !tbaa !23
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ai
  store i8 0, ptr %i.ak, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.al = load ptr, ptr %10, align 8, !tbaa !23   ; 4 uses
  %i.am = load i64, ptr %i.k, align 8, !tbaa !25  ; 2 uses
  %i.an = trunc i64 %i.am to i32                  ; 3 uses
  store i32 %i.an, ptr %.sroa.0, align 8, !tbaa !10
  %i.ao = icmp ult i32 %i.an, 13
  br i1 %i.ao, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.4..sroa_idx82, i8 0, i64 12, i1 false)
  %i.ap = icmp eq i32 %i.an, 0
  br i1 %i.ap, label %_ZN6duckdb8string_tC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.aq = and i64 %i.am, 15
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.4..sroa_idx, ptr align 1 %i.al, i64 %i.aq, i1 false)
  %.sroa.0.8..sroa.0.8..sroa.0.8..sroa.0.8..pre = load ptr, ptr %.sroa.0.8..sroa_idx83, align 8
  br label %_ZN6duckdb8string_tC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.ab:                                            ; preds = %bb.y
  %i.ar = load i32, ptr %i.al, align 1
  store i32 %i.ar, ptr %.sroa.0.4..sroa_idx81, align 4
  store ptr %i.al, ptr %.sroa.0.8..sroa_idx, align 8, !tbaa !10
  br label %_ZN6duckdb8string_tC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN6duckdb8string_tC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.ab, %bb.aa, %bb.z
  %.sroa.0.8..sroa.0.8..sroa.0.8. = phi ptr [ %i.al, %bb.ab ], [ %.sroa.0.8..sroa.0.8..sroa.0.8..sroa.0.8..pre, %bb.aa ], [ null, %bb.z ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0. = load i64, ptr %.sroa.0, align 8
  %i.as = invoke { i64, ptr } @_ZN6duckdb12StringVector15AddStringOrBlobERNS_6VectorENS_8string_tE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0., ptr %.sroa.0.8..sroa.0.8..sroa.0.8.)
          to label %bb.ac unwind label %bb.ad     ; 2 uses

bb.ac:                                            ; preds = %_ZN6duckdb8string_tC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.at = extractvalue { i64, ptr } %i.as, 0
  %i.au = extractvalue { i64, ptr } %i.as, 1
  %i.av = load i64, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.aw = add i64 %i.av, 1
  store i64 %i.aw, ptr %3, align 8, !tbaa !21
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.av ; 2 uses
  store i64 %i.at, ptr %i.ax, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.au, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !10
  %i.ay = load ptr, ptr %10, align 8, !tbaa !23   ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.j
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %bb.ac
  call void @_ZdlPv(ptr noundef %i.ay) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %.027.in = getelementptr inbounds nuw i8, ptr %.02771, i64 8
  %.027 = load ptr, ptr %.027.in, align 8, !tbaa !7 ; 2 uses
  %.not28 = icmp eq ptr %.027, null
  br i1 %.not28, label %.loopexit, label %bb.l, !llvm.loop !1064

.loopexit60:                                      ; preds = %.noexc.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

.loopexit.split-lp:                               ; preds = %bb.u
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

bb.ad:                                            ; preds = %_ZN6duckdb8string_tC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = load ptr, ptr %10, align 8, !tbaa !23   ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.j
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %bb.ad
  call void @_ZdlPv(ptr noundef %i.bb) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %bb.ad, %.loopexit60, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44
  %.pn = phi { ptr, i32 } [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit60 ], [ %i.ba, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.q, %bb.j
  %.pn32.pn.pn.pn.pn = phi { ptr, i32 } [ %i.m, %bb.j ], [ %i.n, %bb.k ], [ %i.t, %bb.q ], [ %.pn3258, %bb.s ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) #23
  br label %bb.af

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %_ZN6duckdb12optional_ptrIN17duckdb_libpgquery6PGListELb1EEptEv.exit, %bb.c
  ret void

bb.af:                                            ; preds = %bb.ae, %bb.i, %bb.d
  %.pn32.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn32.pn.pn.pn.pn, %bb.ae ], [ %i.l, %bb.i ], [ %i.b, %bb.d ]
  resume { ptr, i32 } %.pn32.pn.pn.pn.pn.pn

bb.ag:                                            ; preds = %bb.p
  unreachable
}

declare void @_ZN6duckdb6VectorC1ENS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i64 noundef) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1065 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !1066
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !1068
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !1069
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !1069
  br label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !10
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit, !prof !59

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23
  br label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1065 ; 8 uses
  %.not.i.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1, label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit5, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !1066
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !1068
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #23, !inline_history !1069
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #23, !inline_history !1069
  br label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit5

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !10
  %.not.i.i.i.i2 = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i2, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i4 = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i4, 1
  br i1 %i.ah, label %bb.m, label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit5, !prof !59

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #23
  br label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit5

_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit5: ; preds = %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i3, %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1065 ; 8 uses
  %.not.i.i.i.i6 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i6, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit5
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.ak, align 8, !tbaa !1066
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !1068
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !33
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #23, !inline_history !1070
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !33
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #23, !inline_history !1070
  br label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !10
  %.not.i.i.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ak, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.ax = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i.i = phi i32 [ %i.an, %bb.q ], [ %i.ax, %bb.r ]
  %i.ay = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ay, label %bb.s, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit, !prof !59

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #23
  br label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit

_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit:    ; preds = %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit5, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.s
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.az) #23
  ret void
}

declare { i64, ptr } @_ZN6duckdb12StringVector15AddStringOrBlobERNS_6VectorENS_8string_tE(ptr noundef nonnull align 8 dereferenceable(104), i64, ptr) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11Transformer19TransformCreateTypeERN17duckdb_libpgquery16PGCreateTypeStmtE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.502") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(48) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::unique_ptr.795", align 8 ; 19 uses
  %4 = alloca %"struct.duckdb::QualifiedName", align 8 ; 12 uses
  %5 = alloca %"class.duckdb::unique_ptr.652", align 8 ; 8 uses
  %6 = alloca %"struct.duckdb::LogicalType", align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.duckdb::Vector", align 8    ; 7 uses
  %8 = alloca %"struct.duckdb::LogicalType", align 8 ; 9 uses
  %9 = alloca %"struct.duckdb::LogicalType", align 8 ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::allocator.16", align 1 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1071)
  %i.b = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #25, !noalias !1071 ; 4 uses
  invoke void @_ZN6duckdb15CreateStatementC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.b)
          to label %_ZN6duckdb9make_uniqINS_15CreateStatementEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.b, !noalias !1071

common.resume:                                    ; preds = %_ZNKSt14default_deleteIN6duckdb15CreateStatementEEclEPS1_.exit.i, %.body, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn33.pn.pn.pn.ph, %.body ], [ %.pn33.pn.pn.pn86, %_ZNKSt14default_deleteIN6duckdb15CreateStatementEEclEPS1_.exit.i ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #26, !noalias !1071
  br label %common.resume

_ZN6duckdb9make_uniqINS_15CreateStatementEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.b, ptr %0, align 8, !tbaa !573, !alias.scope !1071
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1074)
  %i.d = invoke noalias noundef nonnull dereferenceable(392) ptr @_Znwm(i64 noundef 392) #25
          to label %.noexc unwind label %.body.thread ; 3 uses

.noexc:                                           ; preds = %_ZN6duckdb9make_uniqINS_15CreateStatementEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  invoke void @_ZN6duckdb14CreateTypeInfoC1Ev(ptr noundef nonnull align 8 dereferenceable(392) %i.d)
          to label %bb.d unwind label %bb.c, !noalias !1074

bb.c:                                             ; preds = %.noexc
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #26, !noalias !1074
  br label %.body

bb.d:                                             ; preds = %.noexc
  store ptr %i.d, ptr %3, align 8, !tbaa !1077, !alias.scope !1074
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1079
  invoke void @_ZN6duckdb11Transformer22TransformQualifiedNameERN17duckdb_libpgquery10PGRangeVarE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::QualifiedName") align 8 %4, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(72) %i.g)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.h = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14CreateTypeInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.f
  %i.j = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14CreateTypeInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit40 unwind label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit40: ; preds = %bb.g
  %i.m = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14CreateTypeInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit40
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 320
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit42 unwind label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit42: ; preds = %bb.h
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !1079
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 33
  %i.r = load i8, ptr %i.q, align 1, !tbaa !618
  %i.s = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14CreateTypeInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit42
  %.not = icmp eq i8 %i.r, 0
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 81
  %i.u = zext i1 %.not to i8
  store i8 %i.u, ptr %i.t, align 1, !tbaa !621
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.w = load i32, ptr %i.v, align 8, !tbaa !1082
  %i.x = invoke noundef zeroext i8 @_ZN6duckdb11Transformer19TransformOnConflictEN17duckdb_libpgquery18PGOnCreateConflictE(ptr nonnull align 8 poison, i32 noundef %i.w)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.y = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14CreateTypeInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  store i8 %i.x, ptr %i.z, align 8, !tbaa !640
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !1083
  switch i32 %i.ab, label %bb.aw [
    i32 1, label %bb.n
    i32 2, label %bb.ag
  ]

.body.thread:                                     ; preds = %_ZN6duckdb9make_uniqINS_15CreateStatementEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZNKSt14default_deleteIN6duckdb15CreateStatementEEclEPS1_.exit.i

bb.l:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.m:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.n, %bb.j, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit68

bb.n:                                             ; preds = %bb.k
  %i.af = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14CreateTypeInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.o unwind label %bb.m

bb.o:                                             ; preds = %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 82
  store i8 0, ptr %i.ag, align 2, !tbaa !1084
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1085 ; 2 uses
  %.not25 = icmp eq ptr %i.ai, null
  br i1 %.not25, label %bb.y, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZN6duckdb11Transformer19TransformSelectStmtERN17duckdb_libpgquery6PGNodeEb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.652") align 8 %5, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.ai, i1 noundef zeroext false)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.aj = load ptr, ptr %5, align 8, !tbaa !826   ; 4 uses
  store ptr null, ptr %5, align 8, !tbaa !826
  %i.ak = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14CreateTypeInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 376 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !40 ; 3 uses
  store ptr %i.aj, ptr %i.al, align 8, !tbaa !40
  %.not.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.r
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !33
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.am) #23, !inline_history !1086
  br label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i.i.i.i.i, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 noundef zeroext 0)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit
  %i.aq = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14CreateTypeInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i unwind label %bb.w ; 3 uses

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i: ; preds = %bb.s
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 352
end_hunk_0
begin_hunk_1_@_ZN6duckdb11Transformer19TransformCreateTypeERN17duckdb_libpgquery16PGCreateTypeStmtE:bb.a
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit49

bb.u:                                             ; preds = %bb.q
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i44 = icmp eq ptr %i.aj, null
  br i1 %.not.i44, label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit46, label %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i45

_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i45: ; preds = %bb.u
  %i.bg = load ptr, ptr %i.aj, align 8, !tbaa !33
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.aj) #23, !inline_history !58
  br label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit46

bb.v:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.s
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #23
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn29 = phi { ptr, i32 } [ %i.bk, %bb.w ], [ %i.bj, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit46

_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit46: ; preds = %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i45, %bb.u, %bb.x
  %.pn29.pn = phi { ptr, i32 } [ %.pn29, %bb.x ], [ %i.bf, %bb.u ], [ %i.bf, %_ZNKSt14default_deleteIN6duckdb12SQLStatementEEclEPS1_.exit.i45 ] ; 2 uses
  %i.bl = load ptr, ptr %5, align 8, !tbaa !826   ; 3 uses
  %.not.i47 = icmp eq ptr %i.bl, null
  br i1 %.not.i47, label %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit49, label %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i48

_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i48: ; preds = %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit46
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !33
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(128) %i.bl) #23, !inline_history !853
  br label %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit49

_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit49: ; preds = %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i48, %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit46, %bb.t
  %.pn29.pn.pn = phi { ptr, i32 } [ %i.be, %bb.t ], [ %.pn29.pn, %_ZNSt10unique_ptrIN6duckdb12SQLStatementESt14default_deleteIS1_EED2Ev.exit46 ], [ %.pn29.pn, %_ZNKSt14default_deleteIN6duckdb15SelectStatementEEclEPS1_.exit.i48 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit68

bb.y:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 0, ptr %i.a, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1087
  invoke void @_ZN6duckdb11Transformer14PGListToVectorENS_12optional_ptrIN17duckdb_libpgquery6PGListELb1EEERm(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Vector") align 8 %7, ptr nonnull align 8 poison, ptr %i.bq, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.br = load i64, ptr %i.a, align 8, !tbaa !21
  invoke void @_ZN6duckdb11LogicalType4ENUMERNS_6VectorEm(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %8, ptr noundef nonnull align 8 dereferenceable(104) %7, i64 noundef %i.br)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.bs = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14CreateTypeInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i54 unwind label %bb.ad ; 3 uses

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i54: ; preds = %bb.aa
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 352
  %i.bu = load i8, ptr %8, align 8, !tbaa !342
  store i8 %i.bu, ptr %i.bt, align 8, !tbaa !342
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 1
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !350
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 353
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !350
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 360 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ca = load <2 x ptr>, ptr %i.bz, align 8, !tbaa !351
  %i.cb = load <2 x ptr>, ptr %i.by, align 8, !tbaa !351
  store <2 x ptr> %i.ca, ptr %i.by, align 8, !tbaa !351
  store <2 x ptr> %i.cb, ptr %i.bz, align 8, !tbaa !351
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.bb

bb.ab:                                            ; preds = %bb.y
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ac:                                            ; preds = %bb.z
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %bb.aa
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #23
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn26 = phi { ptr, i32 } [ %i.ce, %bb.ad ], [ %i.cd, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %7) #23
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ab
  %.pn26.pn = phi { ptr, i32 } [ %.pn26, %bb.ae ], [ %i.cc, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit68

bb.ag:                                            ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1088
  invoke void @_ZN6duckdb11Transformer17TransformTypeNameERN17duckdb_libpgquery10PGTypeNameE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %9, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(56) %i.cg)
          to label %bb.ah unwind label %bb.at

bb.ah:                                            ; preds = %bb.ag
  %i.ch = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14CreateTypeInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.ai unwind label %bb.au     ; 4 uses

bb.ai:                                            ; preds = %bb.ah
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 352 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %9
  br i1 %i.cj, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ck = load i8, ptr %9, align 8, !tbaa !342
  store i8 %i.ck, ptr %i.ci, align 8, !tbaa !342
  %i.cl = getelementptr inbounds nuw i8, ptr %9, i64 1
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !350
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 353
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !350
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 360
  %i.cp = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !1065 ; 2 uses
  %i.cs = load <2 x ptr>, ptr %i.cp, align 8, !tbaa !351
  %.not.i.i.i.i.i.i60 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i.i.i.i60, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 3 uses
  %i.cu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !10
  %.not.i.i.i.i.i.i.i61 = icmp eq i8 %i.cu, 0
  br i1 %.not.i.i.i.i.i.i.i61, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !3
  %i.cw = add nsw i32 %i.cv, 1
  store i32 %i.cw, ptr %i.ct, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i

bb.am:                                            ; preds = %bb.ak
  %i.cx = atomicrmw volatile add ptr %i.ct, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i: ; preds = %bb.am, %bb.al, %bb.aj
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ch, i64 368
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !1065 ; 8 uses
  store <2 x ptr> %i.cs, ptr %i.co, align 8, !tbaa !351
  %.not.i.i.i.i.i62 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i.i62, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, label %bb.an

bb.an:                                            ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 4 uses
  %i.db = load atomic i64, ptr %i.da acquire, align 8 ; 2 uses
  %i.dc = icmp eq i64 %i.db, 4294967297
  %i.dd = trunc i64 %i.db to i32                  ; 2 uses
  br i1 %i.dc, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 0, ptr %i.da, align 8, !tbaa !1066
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 12
  store i32 0, ptr %i.de, align 4, !tbaa !1068
  %i.df = load ptr, ptr %i.cz, align 8, !tbaa !33
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8
  call void %i.dh(ptr noundef nonnull align 8 dereferenceable(16) %i.cz) #23, !inline_history !1089
  %i.di = load ptr, ptr %i.cz, align 8, !tbaa !33
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(16) %i.cz) #23, !inline_history !1089
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

bb.ap:                                            ; preds = %bb.an
  %i.dl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !10
  %.not.i.i.i.i5.i.i = icmp eq i8 %i.dl, 0
  br i1 %.not.i.i.i.i5.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dm = add nsw i32 %i.dd, -1
  store i32 %i.dm, ptr %i.da, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ar:                                            ; preds = %bb.ap
  %i.dn = atomicrmw volatile add ptr %i.da, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ar, %bb.aq
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.dd, %bb.aq ], [ %i.dn, %bb.ar ]
  %i.do = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.do, label %bb.as, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, !prof !59

bb.as:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cz) #23
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

_ZN6duckdb11LogicalTypeaSERKS0_.exit:             ; preds = %bb.ai, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i, %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.as
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.bb

bb.at:                                            ; preds = %bb.ag
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.au:                                            ; preds = %bb.ah
  %i.dq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #23
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.pn = phi { ptr, i32 } [ %i.dq, %bb.au ], [ %i.dp, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit68

bb.aw:                                            ; preds = %bb.k
  %i.dr = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.65, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.ax unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.dr, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %bb.ax
  invoke void @__cxa_throw(ptr nonnull %i.dr, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.bf unwind label %bb.az

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.aw
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ba

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.0 = phi i1 [ false, %bb.ay ], [ true, %bb.ax ] ; 2 uses
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.du = load ptr, ptr %10, align 8, !tbaa !23   ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.az
  call void @_ZdlPv(ptr noundef %i.du) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br i1 %.0, label %bb.ba, label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br i1 %.0, label %bb.ba, label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit68

bb.ba:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn3382 = phi { ptr, i32 } [ %i.ds, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.dt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.dr) #23
  br label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit68

bb.bb:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i54, %_ZN6duckdb11LogicalTypeaSERKS0_.exit
  %i.dx = load ptr, ptr %3, align 8, !tbaa !1077  ; 4 uses
  store ptr null, ptr %3, align 8, !tbaa !1077
  %i.dy = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15CreateStatementESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.bc unwind label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 120 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !644 ; 3 uses
  store ptr %i.dx, ptr %i.dz, align 8, !tbaa !644
  %.not.i.i.i.i.i63 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i.i.i63, label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.bc
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !33
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(320) %i.ea) #23, !inline_history !646
  br label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i.i.i.i.i, %bb.bc
  %i.ee = load ptr, ptr %i.n, align 8, !tbaa !23  ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.ee) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.eh = load ptr, ptr %i.k, align 8, !tbaa !23  ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ej = icmp eq ptr %i.eh, %i.ei
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.eh) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.ek = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.em = icmp eq ptr %i.ek, %i.el
  br i1 %i.em, label %_ZN6duckdb13QualifiedNameD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  call void @_ZdlPv(ptr noundef %i.ek) #26
  br label %_ZN6duckdb13QualifiedNameD2Ev.exit

_ZN6duckdb13QualifiedNameD2Ev.exit:               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.en = load ptr, ptr %3, align 8, !tbaa !1077  ; 3 uses
  %.not.i65 = icmp eq ptr %i.en, null
  br i1 %.not.i65, label %_ZNSt10unique_ptrIN6duckdb14CreateTypeInfoESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb14CreateTypeInfoEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb14CreateTypeInfoEEclEPS1_.exit.i: ; preds = %_ZN6duckdb13QualifiedNameD2Ev.exit
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !33
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(392) %i.en) #23, !inline_history !1090
  br label %_ZNSt10unique_ptrIN6duckdb14CreateTypeInfoESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14CreateTypeInfoESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN6duckdb13QualifiedNameD2Ev.exit, %_ZNKSt14default_deleteIN6duckdb14CreateTypeInfoEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.bd:                                            ; preds = %bb.bb
  %i.er = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i66 = icmp eq ptr %i.dx, null
  br i1 %.not.i66, label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit68, label %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i67

_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i67: ; preds = %bb.bd
  %i.es = load ptr, ptr %i.dx, align 8, !tbaa !33
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load ptr, ptr %i.et, align 8
  call void %i.eu(ptr noundef nonnull align 8 dereferenceable(320) %i.dx) #23, !inline_history !649
  br label %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit68

_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit68: ; preds = %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i67, %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ba, %bb.av, %bb.af, %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit49, %bb.m
  %.pn33.pn = phi { ptr, i32 } [ %.pn3382, %bb.ba ], [ %i.dt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn29.pn.pn, %_ZNSt10unique_ptrIN6duckdb15SelectStatementESt14default_deleteIS1_EED2Ev.exit49 ], [ %.pn26.pn, %bb.af ], [ %i.ae, %bb.m ], [ %.pn, %bb.av ], [ %i.er, %bb.bd ], [ %i.er, %_ZNKSt14default_deleteIN6duckdb10CreateInfoEEclEPS1_.exit.i67 ]
  call void @_ZN6duckdb13QualifiedNameD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %4) #23
  br label %bb.be

bb.be:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit68, %bb.l
  %.pn33.pn.pn = phi { ptr, i32 } [ %.pn33.pn, %_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit68 ], [ %i.ad, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.ev = load ptr, ptr %3, align 8, !tbaa !1077  ; 3 uses
  %.not.i69 = icmp eq ptr %i.ev, null
  br i1 %.not.i69, label %.body, label %_ZNKSt14default_deleteIN6duckdb14CreateTypeInfoEEclEPS1_.exit.i70

_ZNKSt14default_deleteIN6duckdb14CreateTypeInfoEEclEPS1_.exit.i70: ; preds = %bb.be
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !33
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8
  call void %i.ey(ptr noundef nonnull align 8 dereferenceable(392) %i.ev) #23, !inline_history !1090
  br label %.body

.body:                                            ; preds = %_ZNKSt14default_deleteIN6duckdb14CreateTypeInfoEEclEPS1_.exit.i70, %bb.be, %bb.c
  %.pn33.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn33.pn.pn, %_ZNKSt14default_deleteIN6duckdb14CreateTypeInfoEEclEPS1_.exit.i70 ], [ %.pn33.pn.pn, %bb.be ], [ %i.e, %bb.c ] ; 2 uses
  %.pr83 = load ptr, ptr %0, align 8, !tbaa !573  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %.not.i72 = icmp eq ptr %.pr83, null
  br i1 %.not.i72, label %common.resume, label %_ZNKSt14default_deleteIN6duckdb15CreateStatementEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15CreateStatementEEclEPS1_.exit.i: ; preds = %.body.thread, %.body
  %.pn33.pn.pn.pn86 = phi { ptr, i32 } [ %i.ac, %.body.thread ], [ %.pn33.pn.pn.pn.ph, %.body ]
  %i.ez = phi ptr [ %i.b, %.body.thread ], [ %.pr83, %.body ] ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !33
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8
  call void %i.fc(ptr noundef nonnull align 8 dereferenceable(128) %i.ez) #23, !inline_history !650
  br label %common.resume

bb.bf:                                            ; preds = %bb.ay
  unreachable
end_hunk_1
begin_hunk_2_@_ZN6duckdb11Transformer23TransformPivotStatementERN17duckdb_libpgquery12PGSelectStmtE:bb.a

bb.z:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bd) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.z
  store ptr %i.bo, ptr %i.as, align 8, !tbaa !152
  store ptr %i.cj, ptr %i.ax, align 8, !tbaa !148
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bm
  store ptr %i.ck, ptr %i.az, align 8, !tbaa !149
  %.pr = load ptr, ptr %10, align 8, !tbaa !150   ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.cl = load ptr, ptr %.pr, align 8, !tbaa !33
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(56) %.pr) #23, !inline_history !165
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.co = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10SelectNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.aa unwind label %bb.al     ; 3 uses

bb.aa:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 160 ; 2 uses
  %i.cq = load ptr, ptr %9, align 8, !tbaa !279   ; 5 uses
  store ptr null, ptr %9, align 8, !tbaa !279
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 168 ; 3 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !148 ; 6 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 176 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !149
  %.not.i.i117 = icmp eq ptr %i.cs, %i.cu
  br i1 %.not.i.i117, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cv = ptrtoint ptr %i.cq to i64
  store i64 %i.cv, ptr %i.cs, align 8, !tbaa !150
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store ptr %i.cw, ptr %i.cr, align 8, !tbaa !148
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit135

bb.ac:                                            ; preds = %bb.aa
  %i.cx = load ptr, ptr %i.cp, align 8, !tbaa !152 ; 10 uses
  %i.cy = ptrtoint ptr %i.cs to i64               ; 3 uses
  %i.cz = ptrtoint ptr %i.cx to i64               ; 3 uses
  %i.da = sub i64 %i.cy, %i.cz                    ; 3 uses
  %i.db = icmp eq i64 %i.da, 9223372036854775800
  br i1 %i.db, label %bb.ad, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i118

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #24
          to label %.noexc130 unwind label %.loopexit.split-lp368

.noexc130:                                        ; preds = %bb.ad
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i118: ; preds = %bb.ac
  %i.dc = ashr exact i64 %i.da, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i119 = call i64 @llvm.umax.i64(i64 %i.dc, i64 1)
  %i.dd = add nsw i64 %.sroa.speculated.i.i.i.i119, %i.dc ; 2 uses
  %i.de = icmp ult i64 %i.dd, %i.dc
  %i.df = call i64 @llvm.umin.i64(i64 %i.dd, i64 1152921504606846975)
  %i.dg = select i1 %i.de, i64 1152921504606846975, i64 %i.df ; 3 uses
  %.not.i.i.i.i120 = icmp ne i64 %i.dg, 0
  call void @llvm.assume(i1 %.not.i.i.i.i120)
  %i.dh = shl nuw nsw i64 %i.dg, 3
  %i.di = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dh) #25
          to label %.noexc131 unwind label %.loopexit367 ; 10 uses

.noexc131:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i118
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.da
  %i.dk = ptrtoint ptr %i.cq to i64
  store i64 %i.dk, ptr %i.dj, align 8, !tbaa !150
  %.not10.i.i.i.i.i.i.i121 = icmp eq ptr %i.cx, %i.cs
  br i1 %.not10.i.i.i.i.i.i.i121, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i126, label %.lr.ph.i.i.i.i.i.i.i122.preheader

.lr.ph.i.i.i.i.i.i.i122.preheader:                ; preds = %.noexc131
  %i.dl = add i64 %i.cy, -8
  %i.dm = sub i64 %i.dl, %i.cz                    ; 2 uses
  %i.dn = lshr i64 %i.dm, 3
  %i.do = add nuw nsw i64 %i.dn, 1                ; 2 uses
  %min.iters.check638 = icmp ult i64 %i.dm, 56
  br i1 %min.iters.check638, label %.lr.ph.i.i.i.i.i.i.i122.preheader677, label %vector.memcheck629

vector.memcheck629:                               ; preds = %.lr.ph.i.i.i.i.i.i.i122.preheader
  %scevgep630 = getelementptr i8, ptr %i.di, i64 8
  %i.dp = add i64 %i.cy, -8
  %i.dq = sub i64 %i.dp, %i.cz
  %i.dr = and i64 %i.dq, -8                       ; 2 uses
  %scevgep631 = getelementptr i8, ptr %scevgep630, i64 %i.dr
  %scevgep632 = getelementptr i8, ptr %i.cx, i64 8
  %scevgep633 = getelementptr i8, ptr %scevgep632, i64 %i.dr
  %bound0634 = icmp ult ptr %i.di, %scevgep633
  %bound1635 = icmp ult ptr %i.cx, %scevgep631
  %found.conflict636 = and i1 %bound0634, %bound1635
  br i1 %found.conflict636, label %.lr.ph.i.i.i.i.i.i.i122.preheader677, label %vector.ph639

vector.ph639:                                     ; preds = %vector.memcheck629
  %n.vec641 = and i64 %i.do, 4611686018427387900  ; 3 uses
  %i.ds = shl i64 %n.vec641, 3                    ; 2 uses
  %i.dt = getelementptr i8, ptr %i.di, i64 %i.ds  ; 2 uses
  %i.du = getelementptr i8, ptr %i.cx, i64 %i.ds
  br label %vector.body642

vector.body642:                                   ; preds = %vector.body642, %vector.ph639
  %index643 = phi i64 [ 0, %vector.ph639 ], [ %index.next648, %vector.body642 ] ; 2 uses
  %i.dv = shl i64 %index643, 3                    ; 2 uses
  %next.gep644 = getelementptr i8, ptr %i.di, i64 %i.dv ; 2 uses
  %next.gep645 = getelementptr i8, ptr %i.cx, i64 %i.dv ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1699)
  call void @llvm.experimental.noalias.scope.decl(metadata !1702)
  %i.dw = getelementptr i8, ptr %next.gep645, i64 16
  %wide.load646 = load <2 x i64>, ptr %next.gep645, align 8, !tbaa !150, !alias.scope !1704, !noalias !1699
  %wide.load647 = load <2 x i64>, ptr %i.dw, align 8, !tbaa !150, !alias.scope !1704, !noalias !1699
  %i.dx = getelementptr i8, ptr %next.gep644, i64 16
  store <2 x i64> %wide.load646, ptr %next.gep644, align 8, !tbaa !150, !alias.scope !1707, !noalias !1704
  store <2 x i64> %wide.load647, ptr %i.dx, align 8, !tbaa !150, !alias.scope !1707, !noalias !1704
  %i.dy = getelementptr i8, ptr %next.gep645, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep645, align 8, !tbaa !150, !alias.scope !1704, !noalias !1699
  store <2 x ptr> splat (ptr null), ptr %i.dy, align 8, !tbaa !150, !alias.scope !1704, !noalias !1699
  %index.next648 = add nuw i64 %index643, 4       ; 2 uses
  %i.dz = icmp eq i64 %index.next648, %n.vec641
  br i1 %i.dz, label %middle.block649, label %vector.body642, !llvm.loop !1709

middle.block649:                                  ; preds = %vector.body642
  %cmp.n650 = icmp eq i64 %i.do, %n.vec641
  br i1 %cmp.n650, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i126, label %.lr.ph.i.i.i.i.i.i.i122.preheader677

.lr.ph.i.i.i.i.i.i.i122.preheader677:             ; preds = %vector.memcheck629, %.lr.ph.i.i.i.i.i.i.i122.preheader, %middle.block649
  %.012.i.i.i.i.i.i.i123.ph = phi ptr [ %i.di, %vector.memcheck629 ], [ %i.di, %.lr.ph.i.i.i.i.i.i.i122.preheader ], [ %i.dt, %middle.block649 ]
  %.0911.i.i.i.i.i.i.i124.ph = phi ptr [ %i.cx, %vector.memcheck629 ], [ %i.cx, %.lr.ph.i.i.i.i.i.i.i122.preheader ], [ %i.du, %middle.block649 ]
  br label %.lr.ph.i.i.i.i.i.i.i122

.lr.ph.i.i.i.i.i.i.i122:                          ; preds = %.lr.ph.i.i.i.i.i.i.i122.preheader677, %.lr.ph.i.i.i.i.i.i.i122
  %.012.i.i.i.i.i.i.i123 = phi ptr [ %i.ec, %.lr.ph.i.i.i.i.i.i.i122 ], [ %.012.i.i.i.i.i.i.i123.ph, %.lr.ph.i.i.i.i.i.i.i122.preheader677 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i124 = phi ptr [ %i.eb, %.lr.ph.i.i.i.i.i.i.i122 ], [ %.0911.i.i.i.i.i.i.i124.ph, %.lr.ph.i.i.i.i.i.i.i122.preheader677 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1699)
  call void @llvm.experimental.noalias.scope.decl(metadata !1702)
  %i.ea = load i64, ptr %.0911.i.i.i.i.i.i.i124, align 8, !tbaa !150, !alias.scope !1702, !noalias !1699
  store i64 %i.ea, ptr %.012.i.i.i.i.i.i.i123, align 8, !tbaa !150, !alias.scope !1699, !noalias !1702
  store ptr null, ptr %.0911.i.i.i.i.i.i.i124, align 8, !tbaa !150, !alias.scope !1702, !noalias !1699
  %i.eb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i124, i64 8 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i123, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i125 = icmp eq ptr %i.eb, %i.cs
  br i1 %.not.i.i.i.i.i.i.i125, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i126, label %.lr.ph.i.i.i.i.i.i.i122, !llvm.loop !1710

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i126: ; preds = %.lr.ph.i.i.i.i.i.i.i122, %middle.block649, %.noexc131
  %.0.lcssa.i.i.i.i.i.i.i127 = phi ptr [ %i.di, %.noexc131 ], [ %i.dt, %middle.block649 ], [ %i.ec, %.lr.ph.i.i.i.i.i.i.i122 ]
  %i.ed = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i127, i64 8
  %.not.i23.i.i.i128 = icmp eq ptr %i.cx, null
  br i1 %.not.i23.i.i.i128, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i129, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i126
  call void @_ZdlPv(ptr noundef nonnull %i.cx) #26
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i129

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i129: ; preds = %bb.ae, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i126
  store ptr %i.di, ptr %i.cp, align 8, !tbaa !152
  store ptr %i.ed, ptr %i.cr, align 8, !tbaa !148
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.dg
  store ptr %i.ee, ptr %i.ct, align 8, !tbaa !149
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit135

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit135: ; preds = %bb.ab, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i129
  %.02022.i.i.i = load ptr, ptr %i.ag, align 8, !tbaa !1430 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit135, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i ], [ %.02022.i.i.i, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit135 ] ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !21 ; 2 uses
  %i.eh = icmp ult i64 %storemerge441, %i.eg      ; 2 uses
  %.in.v.i.i.i = select i1 %i.eh, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !1430 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1711

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  br i1 %i.eh, label %._crit_edge.thread.i.i.i, label %bb.ag

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit135
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.af, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit135 ] ; 4 uses
  %i.ei = load ptr, ptr %i.ah, align 8, !tbaa !1420
  %i.ej = icmp eq ptr %.019.lcssa29.i.i.i, %i.ei
  br i1 %i.ej, label %select.unfold.i.i, label %bb.af

bb.af:                                            ; preds = %._crit_edge.thread.i.i.i
  %i.ek = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #27
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 32
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !21
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %._crit_edge.i.i.i
  %i.el = phi i64 [ %.pre.i.i, %bb.af ], [ %i.eg, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.af ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.em = icmp ult i64 %i.el, %storemerge441
  br i1 %i.em, label %select.unfold.i.i, label %bb.ai

select.unfold.i.i:                                ; preds = %bb.ag, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.ag ] ; 3 uses
  %i.en = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.af
  br i1 %i.en, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %select.unfold.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !21
  %i.eq = icmp ult i64 %storemerge441, %i.ep
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i: ; preds = %bb.ah, %select.unfold.i.i
  %i.er = phi i1 [ %i.eq, %bb.ah ], [ true, %select.unfold.i.i ]
  %i.es = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25
          to label %.noexc136 unwind label %bb.al ; 2 uses

.noexc136:                                        ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  store i64 %storemerge441, ptr %i.et, align 8, !tbaa !21
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.er, ptr noundef nonnull %i.es, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.af) #23
  %i.eu = load i64, ptr %i.aj, align 8, !tbaa !1422
  %i.ev = add i64 %i.eu, 1
  store i64 %i.ev, ptr %i.aj, align 8, !tbaa !1422
  br label %bb.ai

bb.ai:                                            ; preds = %.noexc136, %bb.ag
  %i.ew = load ptr, ptr %9, align 8, !tbaa !279   ; 3 uses
  %.not.i137 = icmp eq ptr %i.ew, null
  br i1 %.not.i137, label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i: ; preds = %bb.ai
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !33
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8
  call void %i.ez(ptr noundef nonnull align 8 dereferenceable(80) %i.ew) #23, !inline_history !282
  br label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.ai, %_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.fa = add nuw i64 %storemerge441, 1           ; 2 uses
  %i.fb = load ptr, ptr %i.ak, align 8, !tbaa !15
  %i.fc = load ptr, ptr %7, align 8, !tbaa !243
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = sub i64 %i.fd, %i.fe
  %i.fg = ashr exact i64 %i.ff, 5
  %i.fh = icmp ult i64 %i.fa, %i.fg
  br i1 %i.fh, label %.lr.ph443, label %._crit_edge444, !llvm.loop !1712

bb.aj:                                            ; preds = %.lr.ph443
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ak:                                            ; preds = %bb.s
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit146

bb.al:                                            ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, %bb.t
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit143

bb.am:                                            ; preds = %bb.v, %bb.u
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit140

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.loopexit.split-lp:                               ; preds = %bb.y
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.an:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.fm = load ptr, ptr %10, align 8, !tbaa !150  ; 3 uses
  %.not.i138 = icmp eq ptr %i.fm, null
  br i1 %.not.i138, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit140, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i139

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i139: ; preds = %bb.an
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !33
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8
  call void %i.fp(ptr noundef nonnull align 8 dereferenceable(56) %i.fm) #23, !inline_history !165
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit140

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit140: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i139, %bb.an, %bb.am
  %.pn = phi { ptr, i32 } [ %i.fl, %bb.am ], [ %lpad.phi, %bb.an ], [ %lpad.phi, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i139 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit143

.loopexit367:                                     ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i118
  %lpad.loopexit369 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp368:                            ; preds = %bb.ad
  %lpad.loopexit.split-lp370 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit.split-lp368, %.loopexit367
  %lpad.phi371 = phi { ptr, i32 } [ %lpad.loopexit369, %.loopexit367 ], [ %lpad.loopexit.split-lp370, %.loopexit.split-lp368 ] ; 2 uses
  %.not.i141 = icmp eq ptr %i.cq, null
  br i1 %.not.i141, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit143, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i142

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i142: ; preds = %bb.ao
  %i.fq = load ptr, ptr %i.cq, align 8, !tbaa !33
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8
  call void %i.fs(ptr noundef nonnull align 8 dereferenceable(56) %i.cq) #23, !inline_history !165
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit143

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit143: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i142, %bb.ao, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit140, %bb.al
  %.pn73 = phi { ptr, i32 } [ %i.fk, %bb.al ], [ %.pn, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit140 ], [ %lpad.phi371, %bb.ao ], [ %lpad.phi371, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i142 ] ; 2 uses
  %i.ft = load ptr, ptr %9, align 8, !tbaa !279   ; 3 uses
  %.not.i144 = icmp eq ptr %i.ft, null
  br i1 %.not.i144, label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit146, label %_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i145

_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i145: ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit143
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !33
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8
  call void %i.fw(ptr noundef nonnull align 8 dereferenceable(80) %i.ft) #23, !inline_history !282
  br label %_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit146

_ZNSt10unique_ptrIN6duckdb19ColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit146: ; preds = %_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i145, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit143, %bb.ak
  %.pn73.pn = phi { ptr, i32 } [ %i.fj, %bb.ak ], [ %.pn73, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit143 ], [ %.pn73, %_ZNKSt14default_deleteIN6duckdb19ColumnRefExpressionEEclEPS1_.exit.i145 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.ax

bb.ap:                                            ; preds = %._crit_edge444
  %i.fx = getelementptr inbounds nuw i8, ptr %i.an, i64 192 ; 2 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !1713 ; 11 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.an, i64 200
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !1716
  %.not.i.i147 = icmp eq ptr %i.fy, %i.ga
  br i1 %.not.i.i147, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 8 ; 4 uses
  %i.gc = load ptr, ptr %i.ag, align 8, !tbaa !1419 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i.i.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gd = load i32, ptr %i.af, align 8, !tbaa !1414
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  store ptr %i.gc, ptr %i.ge, align 8, !tbaa !1419
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  %i.gg = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !1430
  store <2 x ptr> %i.gg, ptr %i.gf, align 8, !tbaa !1430
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  store ptr %i.gb, ptr %i.gh, align 8, !tbaa !1717
  %i.gi = load i64, ptr %i.aj, align 8, !tbaa !1422
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fy, i64 40
  store i64 %i.gi, ptr %i.gj, align 8, !tbaa !1422
  store ptr null, ptr %i.ag, align 8, !tbaa !1419
  store ptr %i.af, ptr %i.ah, align 8, !tbaa !1420
  store ptr %i.af, ptr %i.ai, align 8, !tbaa !1421
  store i64 0, ptr %i.aj, align 8, !tbaa !1422
  br label %_ZNSt3setImSt4lessImESaImEEC2EOS3_.exit.i.i

bb.as:                                            ; preds = %bb.aq
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  store ptr null, ptr %i.gk, align 8, !tbaa !1419
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  store ptr %i.gb, ptr %i.gl, align 8, !tbaa !1420
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fy, i64 32
  store ptr %i.gb, ptr %i.gm, align 8, !tbaa !1421
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fy, i64 40
  store i64 0, ptr %i.gn, align 8, !tbaa !1422
  br label %_ZNSt3setImSt4lessImESaImEEC2EOS3_.exit.i.i

_ZNSt3setImSt4lessImESaImEEC2EOS3_.exit.i.i:      ; preds = %bb.as, %bb.ar
  %.sink.i.i.i.i.i.i = phi i32 [ 0, %bb.as ], [ %i.gd, %bb.ar ]
  store i32 %.sink.i.i.i.i.i.i, ptr %i.gb, align 8, !tbaa !1414
  %i.go = getelementptr inbounds nuw i8, ptr %i.fy, i64 48
  store ptr %i.go, ptr %i.fx, align 8, !tbaa !1713
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE9push_backEOS4_.exit

bb.at:                                            ; preds = %bb.ap
  %i.gp = getelementptr inbounds nuw i8, ptr %i.an, i64 184
  invoke void @_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.gp, ptr %i.fy, ptr noundef nonnull align 8 dereferenceable(48) %8)
          to label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE9push_backEOS4_.exit unwind label %bb.aw

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE9push_backEOS4_.exit: ; preds = %_ZNSt3setImSt4lessImESaImEEC2EOS3_.exit.i.i, %bb.at
  %i.gq = load ptr, ptr %i.ag, align 8, !tbaa !1419
  invoke void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef %i.gq)
          to label %_ZNSt3setImSt4lessImESaImEED2Ev.exit unwind label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE9push_backEOS4_.exit
end_hunk_2
begin_hunk_3_@_ZN6duckdb11Transformer23TransformCreateSequenceERN17duckdb_libpgquery15PGCreateSeqStmtE:bb.a
  %i.bv = icmp eq i32 %i.bu, 219
  br i1 %i.bv, label %bb.ag, label %bb.ar

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZNK6duckdb12optional_ptrIN17duckdb_libpgquery7PGValueELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.ah unwind label %bb.ad

bb.ah:                                            ; preds = %bb.ag
  %i.bw = load ptr, ptr %13, align 8, !tbaa !965
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !10 ; 5 uses
  %i.bz = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.by) #27 ; 2 uses
  %i.ca = trunc i64 %i.bz to i32                  ; 3 uses
  store i32 %i.ca, ptr %.sroa.0282, align 8, !tbaa !10
  %i.cb = icmp ult i32 %i.ca, 13
  br i1 %i.cb, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0282.4..sroa_idx595, i8 0, i64 12, i1 false)
  %i.cc = icmp eq i32 %i.ca, 0
  br i1 %i.cc, label %_ZN6duckdb8string_tC2EPKc.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cd = and i64 %i.bz, 15
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0282.4..sroa_idx, ptr nonnull align 1 %i.by, i64 %i.cd, i1 false)
  %.sroa.0282.8..sroa.0282.8..sroa.0282.8..sroa.0282.8..pre = load ptr, ptr %.sroa.0282.8..sroa_idx596, align 8
  br label %_ZN6duckdb8string_tC2EPKc.exit

bb.ak:                                            ; preds = %bb.ah
  %i.ce = load i32, ptr %i.by, align 1
  store i32 %i.ce, ptr %.sroa.0282.4..sroa_idx594, align 4
  store ptr %i.by, ptr %.sroa.0282.8..sroa_idx, align 8, !tbaa !10
  br label %_ZN6duckdb8string_tC2EPKc.exit

_ZN6duckdb8string_tC2EPKc.exit:                   ; preds = %bb.ak, %bb.aj, %bb.ai
  %.sroa.0282.8..sroa.0282.8..sroa.0282.8. = phi ptr [ %i.by, %bb.ak ], [ %.sroa.0282.8..sroa.0282.8..sroa.0282.8..sroa.0282.8..pre, %bb.aj ], [ null, %bb.ai ]
  %.sroa.0282.0..sroa.0282.0..sroa.0282.0..sroa.0282.0. = load i64, ptr %.sroa.0282, align 8
  %i.cf = invoke noundef zeroext i1 @_ZN6duckdb7TryCast9OperationINS_8string_tElEEbT_RT0_b(i64 %.sroa.0282.0..sroa.0282.0..sroa.0282.0..sroa.0282.0., ptr %.sroa.0282.8..sroa.0282.8..sroa.0282.8., ptr noundef nonnull align 8 dereferenceable(8) %i.b, i1 noundef zeroext true)
          to label %bb.al unwind label %bb.ad

bb.al:                                            ; preds = %_ZN6duckdb8string_tC2EPKc.exit
  br i1 %i.cf, label %bb.aw, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cg = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.145, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.an unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN6duckdb15ParserExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %bb.an
  invoke void @__cxa_throw(ptr nonnull %i.cg, ptr nonnull @_ZTIN6duckdb15ParserExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.gb unwind label %bb.ap

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.am
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.081 = phi i1 [ false, %bb.ao ], [ true, %bb.an ] ; 2 uses
  %i.ci = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cj = load ptr, ptr %14, align 8, !tbaa !23   ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ap
  call void @_ZdlPv(ptr noundef %i.cj) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br i1 %.081, label %bb.aq, label %bb.ej

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br i1 %.081, label %bb.aq, label %bb.ej

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn101294 = phi { ptr, i32 } [ %i.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.cg) #23
  br label %bb.ej

bb.ar:                                            ; preds = %bb.af
  %i.cm = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.145, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.as unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.thread

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN6duckdb15ParserExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %bb.as
  invoke void @__cxa_throw(ptr nonnull %i.cm, ptr nonnull @_ZTIN6duckdb15ParserExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.gb unwind label %bb.au

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.thread: ; preds = %bb.ar
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %bb.av

bb.au:                                            ; preds = %bb.at, %bb.as
  %.083 = phi i1 [ false, %bb.at ], [ true, %bb.as ] ; 2 uses
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cp = load ptr, ptr %16, align 8, !tbaa !23   ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147: ; preds = %bb.au
  call void @_ZdlPv(ptr noundef %i.cp) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br i1 %.083, label %bb.av, label %bb.ej

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149: ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br i1 %.083, label %bb.av, label %bb.ej

bb.av:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149
  %.pn99297 = phi { ptr, i32 } [ %i.cn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149.thread ], [ %i.co, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ %i.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147 ]
  call void @__cxa_free_exception(ptr %i.cm) #23
  br label %bb.ej

bb.aw:                                            ; preds = %bb.w, %bb.al, %bb.s
  %i.cs = load i64, ptr %i.ah, align 8, !tbaa !25 ; 3 uses
  switch i64 %i.cs, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit215.thread321 [
    i64 9, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 8, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit158
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit196
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.aw
  %i.ct = load ptr, ptr %12, align 8, !tbaa !23   ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 1
  %i.cv = xor i64 %i.cu, 7954884599298092649
  %i.cw = getelementptr i8, ptr %i.ct, i64 8
  %i.cx = load i8, ptr %i.cw, align 1
  %i.cy = zext i8 %i.cx to i64
  %i.cz = xor i64 %i.cy, 116
  %i.da = or i64 %i.cv, %i.cz
  %i.db = icmp ne i64 %i.da, 0
  %i.dc = zext i1 %i.db to i32
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit215.thread321

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.de = load i64, ptr %i.ai, align 8, !tbaa !2256
  %.not.not.i.i = icmp eq i64 %i.de, 0
  br i1 %.not.not.i.i, label %.preheader, label %bb.ay

.preheader:                                       ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.ax
  %.sroa.06.0.in.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.ax ], [ %i.ac, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !327 ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %.loopexit, label %bb.ax

bb.ax:                                            ; preds = %.preheader
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !2257
  %i.dh = icmp eq i8 %i.dg, 1
  br i1 %i.dh, label %_ZNSt13unordered_setIN6duckdb12SequenceInfoENS0_13EnumClassHashESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit, label %.preheader, !llvm.loop !2259

bb.ay:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.di = load i64, ptr %i.ab, align 8, !tbaa !2254 ; 2 uses
  %i.dj = icmp ne i64 %i.di, 1
  %i.dk = zext i1 %i.dj to i64                    ; 2 uses
  %i.dl = load ptr, ptr %10, align 8, !tbaa !2252
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dk
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !382 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !327 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !380
  %i.ds = icmp eq i64 %i.dr, 1
  %i.dt = load i8, ptr %i.dp, align 8
  %i.du = icmp eq i8 %i.dt, 1
  %i.dv = select i1 %i.ds, i1 %i.du, i1 false
  br i1 %i.dv, label %_ZNSt13unordered_setIN6duckdb12SequenceInfoENS0_13EnumClassHashESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit, label %.lr.ph.i.i.i.i

bb.ba:                                            ; preds = %bb.bb
  %i.dw = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.dx = icmp eq i64 %i.ed, 1
  %i.dy = load i8, ptr %i.dw, align 1
  %i.dz = icmp eq i8 %i.dy, 1
  %i.ea = select i1 %i.dx, i1 %i.dz, i1 false
  br i1 %i.ea, label %_ZNSt13unordered_setIN6duckdb12SequenceInfoENS0_13EnumClassHashESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2260

.lr.ph.i.i.i.i:                                   ; preds = %bb.az, %bb.ba
  %.020.i.i.i.i = phi ptr [ %i.eb, %bb.ba ], [ %i.do, %bb.az ]
  %i.eb = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !327 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.eb, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !380 ; 2 uses
  %i.ee = urem i64 %i.ed, %i.di
  %.not19.i.i.i.i = icmp eq i64 %i.ee, %i.dk
  br i1 %.not19.i.i.i.i, label %bb.ba, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !2260

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.bb
  br label %.loopexit, !llvm.loop !2260

_ZNSt13unordered_setIN6duckdb12SequenceInfoENS0_13EnumClassHashESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit: ; preds = %bb.az, %bb.ba, %bb.ax
  %i.ef = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.147, ptr noundef nonnull align 1 dereferenceable(1) %19)
          to label %bb.bc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152.thread

bb.bc:                                            ; preds = %_ZNSt13unordered_setIN6duckdb12SequenceInfoENS0_13EnumClassHashESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit
  invoke void @_ZN6duckdb15ParserExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ef, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.bd unwind label %bb.be

bb.bd:                                            ; preds = %bb.bc
  invoke void @__cxa_throw(ptr nonnull %i.ef, ptr nonnull @_ZTIN6duckdb15ParserExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.gb unwind label %bb.be

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152.thread: ; preds = %_ZNSt13unordered_setIN6duckdb12SequenceInfoENS0_13EnumClassHashESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit
  %i.eg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %bb.bf

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.089 = phi i1 [ false, %bb.bd ], [ true, %bb.bc ] ; 2 uses
  %i.eh = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ei = load ptr, ptr %18, align 8, !tbaa !23   ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ek = icmp eq ptr %i.ei, %i.ej
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150: ; preds = %bb.be
  call void @_ZdlPv(ptr noundef %i.ei) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br i1 %.089, label %bb.bf, label %bb.ej

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152: ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br i1 %.089, label %bb.bf, label %bb.ej

bb.bf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152
  %.pn116302 = phi { ptr, i32 } [ %i.eg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152.thread ], [ %i.eh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152 ], [ %i.eh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150 ]
  call void @__cxa_free_exception(ptr %i.ef) #23
  br label %bb.ej

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %.preheader, %..loopexit_crit_edge21.i.i.i.i, %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i8 1, ptr %i.c, align 1, !tbaa !2257
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store ptr %10, ptr %7, align 8, !tbaa !2261
  %i.el = invoke { ptr, i8 } @_ZNSt10_HashtableIN6duckdb12SequenceInfoES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_13EnumClassHashENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS1_S1_NS3_10_AllocNodeISaINS3_10_Hash_nodeIS1_Lb1EEEEEEEESt4pairINS3_14_Node_iteratorIS1_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.bg unwind label %bb.bh     ; 0 uses

bb.bg:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br i1 %i.be, label %bb.ei, label %bb.bi

bb.bh:                                            ; preds = %.loopexit
  %i.em = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %bb.ej

bb.bi:                                            ; preds = %bb.bg
  %i.en = load i64, ptr %i.b, align 8, !tbaa !21
  %i.eo = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18CreateSequenceInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.bj unwind label %bb.ad

bb.bj:                                            ; preds = %bb.bi
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 360
  store i64 %i.en, ptr %i.ep, align 8, !tbaa !2263
  %i.eq = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18CreateSequenceInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.bk unwind label %bb.ad

bb.bk:                                            ; preds = %bb.bj
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 360
  %i.es = load i64, ptr %i.er, align 8, !tbaa !2263
  %i.et = icmp eq i64 %i.es, 0
  br i1 %i.et, label %bb.bl, label %bb.bq

bb.bl:                                            ; preds = %bb.bk
  %i.eu = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.148, ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %bb.bm unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156.thread

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZN6duckdb15ParserExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.eu, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %bb.bn unwind label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  invoke void @__cxa_throw(ptr nonnull %i.eu, ptr nonnull @_ZTIN6duckdb15ParserExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.gb unwind label %bb.bo

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156.thread: ; preds = %bb.bl
  %i.ev = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.087 = phi i1 [ false, %bb.bn ], [ true, %bb.bm ] ; 2 uses
  %i.ew = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ex = load ptr, ptr %20, align 8, !tbaa !23   ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.ez = icmp eq ptr %i.ex, %i.ey
  br i1 %i.ez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154: ; preds = %bb.bo
  call void @_ZdlPv(ptr noundef %i.ex) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  br i1 %.087, label %bb.bp, label %bb.ej

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156: ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  br i1 %.087, label %bb.bp, label %bb.ej

bb.bp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156
  %.pn113305 = phi { ptr, i32 } [ %i.ev, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156.thread ], [ %i.ew, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156 ], [ %i.ew, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154 ]
  call void @__cxa_free_exception(ptr %i.eu) #23
  br label %bb.ej

bb.bq:                                            ; preds = %bb.bk
  %i.fa = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18CreateSequenceInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.br unwind label %bb.ad

bb.br:                                            ; preds = %bb.bq
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 360
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !2263
  %i.fd = icmp slt i64 %i.fc, 0
  br i1 %i.fd, label %bb.bs, label %bb.bv

bb.bs:                                            ; preds = %bb.br
  %i.fe = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18CreateSequenceInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.bt unwind label %bb.ad

bb.bt:                                            ; preds = %bb.bs
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 376
  store i64 -1, ptr %i.ff, align 8, !tbaa !2264
  %i.fg = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18CreateSequenceInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.bu unwind label %bb.ad

bb.bu:                                            ; preds = %bb.bt
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 368
  store i64 -9223372036854775808, ptr %i.fh, align 8, !tbaa !2265
  br label %bb.ei

bb.bv:                                            ; preds = %bb.br
  %i.fi = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18CreateSequenceInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.bw unwind label %bb.ad

bb.bw:                                            ; preds = %bb.bv
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 368
  store i64 1, ptr %i.fj, align 8, !tbaa !2265
  %i.fk = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18CreateSequenceInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.bx unwind label %bb.ad

bb.bx:                                            ; preds = %bb.bw
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 376
  store i64 9223372036854775807, ptr %i.fl, align 8, !tbaa !2264
  br label %bb.ei

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit158: ; preds = %bb.aw
  %.pre = load ptr, ptr %12, align 8, !tbaa !23   ; 2 uses
  %bcmp.i157 = call i32 @bcmp(ptr %.pre, ptr nonnull @.str.149, i64 %i.cs)
  %i.fm = icmp eq i32 %bcmp.i157, 0
  br i1 %i.fm, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit158.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit177

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit158.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit158
  %i.fn = load i64, ptr %i.ai, align 8, !tbaa !2256
  %.not.not.i.i159 = icmp eq i64 %i.fn, 0
  br i1 %.not.not.i.i159, label %.preheader347, label %bb.bz

.preheader347:                                    ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit158.thread, %bb.by
  %.sroa.06.0.in.i.i167 = phi ptr [ %.sroa.06.0.i.i168, %bb.by ], [ %i.ac, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit158.thread ]
  %.sroa.06.0.i.i168 = load ptr, ptr %.sroa.06.0.in.i.i167, align 8, !tbaa !327 ; 3 uses
  %.not.i.i169 = icmp eq ptr %.sroa.06.0.i.i168, null
  br i1 %.not.i.i169, label %.loopexit348, label %bb.by

bb.by:                                            ; preds = %.preheader347
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i168, i64 8
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !2257
  %i.fq = icmp eq i8 %i.fp, 2
  br i1 %i.fq, label %_ZNSt13unordered_setIN6duckdb12SequenceInfoENS0_13EnumClassHashESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit170, label %.preheader347, !llvm.loop !2259

bb.bz:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit158.thread
  %i.fr = load i64, ptr %i.ab, align 8, !tbaa !2254 ; 2 uses
  %i.fs = urem i64 2, %i.fr                       ; 2 uses
  %i.ft = load ptr, ptr %10, align 8, !tbaa !2252
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.fs
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !382 ; 2 uses
  %.not.i.i.i.i160 = icmp eq ptr %i.fv, null
  br i1 %.not.i.i.i.i160, label %.loopexit348, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !327 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !380
  %i.ga = icmp eq i64 %i.fz, 2
  %i.gb = load i8, ptr %i.fx, align 8
  %i.gc = icmp eq i8 %i.gb, 2
  %i.gd = select i1 %i.ga, i1 %i.gc, i1 false
  br i1 %i.gd, label %_ZNSt13unordered_setIN6duckdb12SequenceInfoENS0_13EnumClassHashESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit170, label %.lr.ph.i.i.i.i161

bb.cb:                                            ; preds = %bb.cc
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gf = icmp eq i64 %i.gl, 2
  %i.gg = load i8, ptr %i.ge, align 1
  %i.gh = icmp eq i8 %i.gg, 2
  %i.gi = select i1 %i.gf, i1 %i.gh, i1 false
  br i1 %i.gi, label %_ZNSt13unordered_setIN6duckdb12SequenceInfoENS0_13EnumClassHashESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit170, label %.lr.ph.i.i.i.i161, !llvm.loop !2260

.lr.ph.i.i.i.i161:                                ; preds = %bb.ca, %bb.cb
  %.020.i.i.i.i162 = phi ptr [ %i.gj, %bb.cb ], [ %i.fw, %bb.ca ]
  %i.gj = load ptr, ptr %.020.i.i.i.i162, align 8, !tbaa !327 ; 4 uses
  %.not18.i.i.i.i163 = icmp eq ptr %i.gj, null
  br i1 %.not18.i.i.i.i163, label %.loopexit348, label %bb.cc

bb.cc:                                            ; preds = %.lr.ph.i.i.i.i161
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !380 ; 2 uses
  %i.gm = urem i64 %i.gl, %i.fr
  %.not19.i.i.i.i164 = icmp eq i64 %i.gm, %i.fs
  br i1 %.not19.i.i.i.i164, label %bb.cb, label %..loopexit_crit_edge21.i.i.i.i165, !llvm.loop !2260

..loopexit_crit_edge21.i.i.i.i165:                ; preds = %bb.cc
  br label %.loopexit348, !llvm.loop !2260

_ZNSt13unordered_setIN6duckdb12SequenceInfoENS0_13EnumClassHashESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit170: ; preds = %bb.ca, %bb.cb, %bb.by
  %i.gn = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @.str.150, ptr noundef nonnull align 1 dereferenceable(1) %23)
          to label %bb.cd unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173.thread

bb.cd:                                            ; preds = %_ZNSt13unordered_setIN6duckdb12SequenceInfoENS0_13EnumClassHashESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit170
  invoke void @_ZN6duckdb15ParserExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.gn, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.ce unwind label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  invoke void @__cxa_throw(ptr nonnull %i.gn, ptr nonnull @_ZTIN6duckdb15ParserExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.gb unwind label %bb.cf

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173.thread: ; preds = %_ZNSt13unordered_setIN6duckdb12SequenceInfoENS0_13EnumClassHashESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit170
  %i.go = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  br label %bb.cg

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.085 = phi i1 [ false, %bb.ce ], [ true, %bb.cd ] ; 2 uses
  %i.gp = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.gq = load ptr, ptr %22, align 8, !tbaa !23   ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.gs = icmp eq ptr %i.gq, %i.gr
  br i1 %i.gs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171: ; preds = %bb.cf
  call void @_ZdlPv(ptr noundef %i.gq) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  br i1 %.085, label %bb.cg, label %bb.ej

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173: ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  br i1 %.085, label %bb.cg, label %bb.ej

bb.cg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173
  %.pn111310 = phi { ptr, i32 } [ %i.go, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173.thread ], [ %i.gp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173 ], [ %i.gp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171 ]
  call void @__cxa_free_exception(ptr %i.gn) #23
  br label %bb.ej

.loopexit348:                                     ; preds = %.lr.ph.i.i.i.i161, %.preheader347, %..loopexit_crit_edge21.i.i.i.i165, %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i8 2, ptr %i.d, align 1, !tbaa !2257
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store ptr %10, ptr %6, align 8, !tbaa !2261
  %i.gt = invoke { ptr, i8 } @_ZNSt10_HashtableIN6duckdb12SequenceInfoES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_13EnumClassHashENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS1_S1_NS3_10_AllocNodeISaINS3_10_Hash_nodeIS1_Lb1EEEEEEEESt4pairINS3_14_Node_iteratorIS1_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ch unwind label %bb.ci     ; 0 uses

bb.ch:                                            ; preds = %.loopexit348
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br i1 %i.be, label %bb.ei, label %bb.cj

bb.ci:                                            ; preds = %.loopexit348
  %i.gu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br label %bb.ej

bb.cj:                                            ; preds = %bb.ch
  %i.gv = load i64, ptr %i.b, align 8, !tbaa !21
  %i.gw = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18CreateSequenceInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.ck unwind label %bb.ad

bb.ck:                                            ; preds = %bb.cj
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 368
  store i64 %i.gv, ptr %i.gx, align 8, !tbaa !2265
  %i.gy = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18CreateSequenceInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.cl unwind label %bb.ad

bb.cl:                                            ; preds = %bb.ck
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 360
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !2263
  %i.hb = icmp sgt i64 %i.ha, 0
  br i1 %i.hb, label %bb.cm, label %bb.ei

bb.cm:                                            ; preds = %bb.cl
  %i.hc = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18CreateSequenceInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.cn unwind label %bb.ad

bb.cn:                                            ; preds = %bb.cm
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 368
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !2265
  br label %bb.ei

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit177: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit158
  %i.hf = load i64, ptr %.pre, align 1
  %i.hg = icmp ne i64 %i.hf, 7310868735961096557
  %i.hh = zext i1 %i.hg to i32
  %i.hi = icmp eq i32 %i.hh, 0
  br i1 %i.hi, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit177.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit215.thread321

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit177.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit177
  %i.hj = load i64, ptr %i.ai, align 8, !tbaa !2256
  %.not.not.i.i178 = icmp eq i64 %i.hj, 0
  br i1 %.not.not.i.i178, label %.preheader351, label %bb.cp

.preheader351:                                    ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit177.thread, %bb.co
  %.sroa.06.0.in.i.i186 = phi ptr [ %.sroa.06.0.i.i187, %bb.co ], [ %i.ac, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit177.thread ]
  %.sroa.06.0.i.i187 = load ptr, ptr %.sroa.06.0.in.i.i186, align 8, !tbaa !327 ; 3 uses
  %.not.i.i188 = icmp eq ptr %.sroa.06.0.i.i187, null
  br i1 %.not.i.i188, label %.loopexit352, label %bb.co

bb.co:                                            ; preds = %.preheader351
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i187, i64 8
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !2257
  %i.hm = icmp eq i8 %i.hl, 3
  br i1 %i.hm, label %_ZNSt13unordered_setIN6duckdb12SequenceInfoENS0_13EnumClassHashESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit189, label %.preheader351, !llvm.loop !2259

bb.cp:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit177.thread
  %i.hn = load i64, ptr %i.ab, align 8, !tbaa !2254 ; 2 uses
  %i.ho = urem i64 3, %i.hn                       ; 2 uses
  %i.hp = load ptr, ptr %10, align 8, !tbaa !2252
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.ho
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !382 ; 2 uses
  %.not.i.i.i.i179 = icmp eq ptr %i.hr, null
  br i1 %.not.i.i.i.i179, label %.loopexit352, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !327 ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !380
  %i.hw = icmp eq i64 %i.hv, 3
  %i.hx = load i8, ptr %i.ht, align 8
  %i.hy = icmp eq i8 %i.hx, 3
  %i.hz = select i1 %i.hw, i1 %i.hy, i1 false
  br i1 %i.hz, label %_ZNSt13unordered_setIN6duckdb12SequenceInfoENS0_13EnumClassHashESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit189, label %.lr.ph.i.i.i.i180

bb.cr:                                            ; preds = %bb.cs
  %i.ia = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ib = icmp eq i64 %i.ih, 3
  %i.ic = load i8, ptr %i.ia, align 1
  %i.id = icmp eq i8 %i.ic, 3
  %i.ie = select i1 %i.ib, i1 %i.id, i1 false
  br i1 %i.ie, label %_ZNSt13unordered_setIN6duckdb12SequenceInfoENS0_13EnumClassHashESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit189, label %.lr.ph.i.i.i.i180, !llvm.loop !2260

.lr.ph.i.i.i.i180:                                ; preds = %bb.cq, %bb.cr
  %.020.i.i.i.i181 = phi ptr [ %i.if, %bb.cr ], [ %i.hs, %bb.cq ]
  %i.if = load ptr, ptr %.020.i.i.i.i181, align 8, !tbaa !327 ; 4 uses
  %.not18.i.i.i.i182 = icmp eq ptr %i.if, null
  br i1 %.not18.i.i.i.i182, label %.loopexit352, label %bb.cs

bb.cs:                                            ; preds = %.lr.ph.i.i.i.i180
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !380 ; 2 uses
  %i.ii = urem i64 %i.ih, %i.hn
  %.not19.i.i.i.i183 = icmp eq i64 %i.ii, %i.ho
  br i1 %.not19.i.i.i.i183, label %bb.cr, label %..loopexit_crit_edge21.i.i.i.i184, !llvm.loop !2260

..loopexit_crit_edge21.i.i.i.i184:                ; preds = %bb.cs
  br label %.loopexit352, !llvm.loop !2260

_ZNSt13unordered_setIN6duckdb12SequenceInfoENS0_13EnumClassHashESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit189: ; preds = %bb.cq, %bb.cr, %bb.co
  %i.ij = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull @.str.152, ptr noundef nonnull align 1 dereferenceable(1) %25)
          to label %bb.ct unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192.thread

bb.ct:                                            ; preds = %_ZNSt13unordered_setIN6duckdb12SequenceInfoENS0_13EnumClassHashESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit189
  invoke void @_ZN6duckdb15ParserExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ij, ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %bb.cu unwind label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  invoke void @__cxa_throw(ptr nonnull %i.ij, ptr nonnull @_ZTIN6duckdb15ParserExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.gb unwind label %bb.cv

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192.thread: ; preds = %_ZNSt13unordered_setIN6duckdb12SequenceInfoENS0_13EnumClassHashESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit189
  %i.ik = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  br label %bb.cw

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.079 = phi i1 [ false, %bb.cu ], [ true, %bb.ct ] ; 2 uses
  %i.il = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.im = load ptr, ptr %24, align 8, !tbaa !23   ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.io = icmp eq ptr %i.im, %i.in
  br i1 %i.io, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190: ; preds = %bb.cv
  call void @_ZdlPv(ptr noundef %i.im) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  br i1 %.079, label %bb.cw, label %bb.ej

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192: ; preds = %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  br i1 %.079, label %bb.cw, label %bb.ej

bb.cw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192
  %.pn109315 = phi { ptr, i32 } [ %i.ik, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192.thread ], [ %i.il, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192 ], [ %i.il, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190 ]
  call void @__cxa_free_exception(ptr %i.ij) #23
  br label %bb.ej

.loopexit352:                                     ; preds = %.lr.ph.i.i.i.i180, %.preheader351, %..loopexit_crit_edge21.i.i.i.i184, %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store i8 3, ptr %i.e, align 1, !tbaa !2257
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %10, ptr %5, align 8, !tbaa !2261
  %i.ip = invoke { ptr, i8 } @_ZNSt10_HashtableIN6duckdb12SequenceInfoES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_13EnumClassHashENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS1_S1_NS3_10_AllocNodeISaINS3_10_Hash_nodeIS1_Lb1EEEEEEEESt4pairINS3_14_Node_iteratorIS1_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.cx unwind label %bb.cy     ; 0 uses

bb.cx:                                            ; preds = %.loopexit352
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  br i1 %i.be, label %bb.ei, label %bb.cz

bb.cy:                                            ; preds = %.loopexit352
  %i.iq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  br label %bb.ej

bb.cz:                                            ; preds = %bb.cx
  %i.ir = load i64, ptr %i.b, align 8, !tbaa !21
  %i.is = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18CreateSequenceInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.da unwind label %bb.ad

bb.da:                                            ; preds = %bb.cz
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 376
  store i64 %i.ir, ptr %i.it, align 8, !tbaa !2264
  %i.iu = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18CreateSequenceInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.db unwind label %bb.ad

bb.db:                                            ; preds = %bb.da
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 360
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !2263
  %i.ix = icmp slt i64 %i.iw, 0
  br i1 %i.ix, label %bb.dc, label %bb.ei

bb.dc:                                            ; preds = %bb.db
  %i.iy = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18CreateSequenceInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.dd unwind label %bb.ad

bb.dd:                                            ; preds = %bb.dc
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 376
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !2264
  br label %bb.ei

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit196: ; preds = %bb.aw
  %.pre510 = load ptr, ptr %12, align 8, !tbaa !23 ; 3 uses
  %bcmp.i195 = call i32 @bcmp(ptr %.pre510, ptr nonnull @.str.153, i64 %i.cs)
  %i.jb = icmp eq i32 %bcmp.i195, 0
  br i1 %i.jb, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit196.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit215

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit196.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit196
  %i.jc = load i64, ptr %i.ai, align 8, !tbaa !2256
  %.not.not.i.i197 = icmp eq i64 %i.jc, 0
  br i1 %.not.not.i.i197, label %.preheader355, label %bb.df

.preheader355:                                    ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit196.thread, %bb.de
  %.sroa.06.0.in.i.i205 = phi ptr [ %.sroa.06.0.i.i206, %bb.de ], [ %i.ac, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit196.thread ]
  %.sroa.06.0.i.i206 = load ptr, ptr %.sroa.06.0.in.i.i205, align 8, !tbaa !327 ; 3 uses
  %.not.i.i207 = icmp eq ptr %.sroa.06.0.i.i206, null
  br i1 %.not.i.i207, label %.loopexit356, label %bb.de

bb.de:                                            ; preds = %.preheader355
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i206, i64 8
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !2257
  %i.jf = icmp eq i8 %i.je, 0
  br i1 %i.jf, label %_ZNSt13unordered_setIN6duckdb12SequenceInfoENS0_13EnumClassHashESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit208, label %.preheader355, !llvm.loop !2259

bb.df:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit196.thread
  %i.jg = load i64, ptr %i.ab, align 8, !tbaa !2254
  %i.jh = load ptr, ptr %10, align 8, !tbaa !2252
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !382 ; 2 uses
  %.not.i.i.i.i198 = icmp eq ptr %i.ji, null
  br i1 %.not.i.i.i.i198, label %.loopexit356, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !327 ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !380
  %i.jn = icmp eq i64 %i.jm, 0
  %i.jo = load i8, ptr %i.jk, align 8
  %i.jp = icmp eq i8 %i.jo, 0
  %i.jq = select i1 %i.jn, i1 %i.jp, i1 false
  br i1 %i.jq, label %_ZNSt13unordered_setIN6duckdb12SequenceInfoENS0_13EnumClassHashESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit208, label %.lr.ph.i.i.i.i199

bb.dh:                                            ; preds = %bb.di
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.js = icmp eq i64 %i.jy, 0
  %i.jt = load i8, ptr %i.jr, align 1
  %i.ju = icmp eq i8 %i.jt, 0
  %i.jv = select i1 %i.js, i1 %i.ju, i1 false
  br i1 %i.jv, label %_ZNSt13unordered_setIN6duckdb12SequenceInfoENS0_13EnumClassHashESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit208, label %.lr.ph.i.i.i.i199, !llvm.loop !2260

.lr.ph.i.i.i.i199:                                ; preds = %bb.dg, %bb.dh
  %.020.i.i.i.i200 = phi ptr [ %i.jw, %bb.dh ], [ %i.jj, %bb.dg ]
  %i.jw = load ptr, ptr %.020.i.i.i.i200, align 8, !tbaa !327 ; 4 uses
  %.not18.i.i.i.i201 = icmp eq ptr %i.jw, null
  br i1 %.not18.i.i.i.i201, label %.loopexit356, label %bb.di

bb.di:                                            ; preds = %.lr.ph.i.i.i.i199
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !380 ; 2 uses
  %i.jz = urem i64 %i.jy, %i.jg
  %.not19.i.i.i.i202 = icmp eq i64 %i.jz, 0
  br i1 %.not19.i.i.i.i202, label %bb.dh, label %..loopexit_crit_edge21.i.i.i.i203, !llvm.loop !2260

..loopexit_crit_edge21.i.i.i.i203:                ; preds = %bb.di
  br label %.loopexit356, !llvm.loop !2260

_ZNSt13unordered_setIN6duckdb12SequenceInfoENS0_13EnumClassHashESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit208: ; preds = %bb.dg, %bb.dh, %bb.de
  %i.ka = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull @.str.154, ptr noundef nonnull align 1 dereferenceable(1) %27)
          to label %bb.dj unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211.thread

bb.dj:                                            ; preds = %_ZNSt13unordered_setIN6duckdb12SequenceInfoENS0_13EnumClassHashESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit208
  invoke void @_ZN6duckdb15ParserExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ka, ptr noundef nonnull align 8 dereferenceable(32) %26)
          to label %bb.dk unwind label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  invoke void @__cxa_throw(ptr nonnull %i.ka, ptr nonnull @_ZTIN6duckdb15ParserExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.gb unwind label %bb.dl

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211.thread: ; preds = %_ZNSt13unordered_setIN6duckdb12SequenceInfoENS0_13EnumClassHashESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit208
  %i.kb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  br label %bb.dm

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %.073 = phi i1 [ false, %bb.dk ], [ true, %bb.dj ] ; 2 uses
  %i.kc = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.kd = load ptr, ptr %26, align 8, !tbaa !23   ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.kf = icmp eq ptr %i.kd, %i.ke
  br i1 %i.kf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209: ; preds = %bb.dl
  call void @_ZdlPv(ptr noundef %i.kd) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  br i1 %.073, label %bb.dm, label %bb.ej

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211: ; preds = %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  br i1 %.073, label %bb.dm, label %bb.ej

bb.dm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211
  %.pn107320 = phi { ptr, i32 } [ %i.kb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211.thread ], [ %i.kc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211 ], [ %i.kc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209 ]
  call void @__cxa_free_exception(ptr %i.ka) #23
  br label %bb.ej

.loopexit356:                                     ; preds = %.lr.ph.i.i.i.i199, %.preheader355, %..loopexit_crit_edge21.i.i.i.i203, %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  store i8 0, ptr %i.f, align 1, !tbaa !2257
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %10, ptr %4, align 8, !tbaa !2261
  %i.kg = invoke { ptr, i8 } @_ZNSt10_HashtableIN6duckdb12SequenceInfoES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_13EnumClassHashENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS1_S1_NS3_10_AllocNodeISaINS3_10_Hash_nodeIS1_Lb1EEEEEEEESt4pairINS3_14_Node_iteratorIS1_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.dn unwind label %bb.do     ; 0 uses

bb.dn:                                            ; preds = %.loopexit356
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  br i1 %i.be, label %bb.ei, label %bb.dp

bb.do:                                            ; preds = %.loopexit356
  %i.kh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  br label %bb.ej

bb.dp:                                            ; preds = %bb.dn
  %i.ki = load i64, ptr %i.b, align 8, !tbaa !21
  %i.kj = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18CreateSequenceInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.dq unwind label %bb.ad

bb.dq:                                            ; preds = %bb.dp
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 384
  store i64 %i.ki, ptr %i.kk, align 8, !tbaa !2250
  br label %bb.ei

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit215: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit196
  %i.kl = load i32, ptr %.pre510, align 1
  %i.km = xor i32 %i.kl, 1818458467
  %i.kn = getelementptr i8, ptr %.pre510, i64 4
  %i.ko = load i8, ptr %i.kn, align 1
  %i.kp = zext i8 %i.ko to i32
  %i.kq = xor i32 %i.kp, 101
  %i.kr = or i32 %i.km, %i.kq
  %i.ks = icmp ne i32 %i.kr, 0
  %i.kt = zext i1 %i.ks to i32
  %i.ku = icmp eq i32 %i.kt, 0
  br i1 %i.ku, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit215.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit215.thread321

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit215.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit215
  %i.kv = load i64, ptr %i.ai, align 8, !tbaa !2256
  %.not.not.i.i216 = icmp eq i64 %i.kv, 0
  br i1 %.not.not.i.i216, label %.preheader359, label %bb.ds

.preheader359:                                    ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit215.thread, %bb.dr
  %.sroa.06.0.in.i.i224 = phi ptr [ %.sroa.06.0.i.i225, %bb.dr ], [ %i.ac, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit215.thread ]
  %.sroa.06.0.i.i225 = load ptr, ptr %.sroa.06.0.in.i.i224, align 8, !tbaa !327 ; 3 uses
  %.not.i.i226 = icmp eq ptr %.sroa.06.0.i.i225, null
  br i1 %.not.i.i226, label %.loopexit360, label %bb.dr

bb.dr:                                            ; preds = %.preheader359
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i225, i64 8
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !2257
  %i.ky = icmp eq i8 %i.kx, 4
  br i1 %i.ky, label %_ZNSt13unordered_setIN6duckdb12SequenceInfoENS0_13EnumClassHashESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit227, label %.preheader359, !llvm.loop !2259

bb.ds:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit215.thread
  %i.kz = load i64, ptr %i.ab, align 8, !tbaa !2254 ; 2 uses
  %i.la = urem i64 4, %i.kz                       ; 2 uses
  %i.lb = load ptr, ptr %10, align 8, !tbaa !2252
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %i.la
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !382 ; 2 uses
  %.not.i.i.i.i217 = icmp eq ptr %i.ld, null
  br i1 %.not.i.i.i.i217, label %.loopexit360, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !327 ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  %i.lg = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !380
  %i.li = icmp eq i64 %i.lh, 4
  %i.lj = load i8, ptr %i.lf, align 8
  %i.lk = icmp eq i8 %i.lj, 4
  %i.ll = select i1 %i.li, i1 %i.lk, i1 false
  br i1 %i.ll, label %_ZNSt13unordered_setIN6duckdb12SequenceInfoENS0_13EnumClassHashESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit227, label %.lr.ph.i.i.i.i218

bb.du:                                            ; preds = %bb.dv
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %i.ln = icmp eq i64 %i.lt, 4
  %i.lo = load i8, ptr %i.lm, align 1
  %i.lp = icmp eq i8 %i.lo, 4
  %i.lq = select i1 %i.ln, i1 %i.lp, i1 false
  br i1 %i.lq, label %_ZNSt13unordered_setIN6duckdb12SequenceInfoENS0_13EnumClassHashESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit227, label %.lr.ph.i.i.i.i218, !llvm.loop !2260

.lr.ph.i.i.i.i218:                                ; preds = %bb.dt, %bb.du
  %.020.i.i.i.i219 = phi ptr [ %i.lr, %bb.du ], [ %i.le, %bb.dt ]
  %i.lr = load ptr, ptr %.020.i.i.i.i219, align 8, !tbaa !327 ; 4 uses
  %.not18.i.i.i.i220 = icmp eq ptr %i.lr, null
  br i1 %.not18.i.i.i.i220, label %.loopexit360, label %bb.dv

bb.dv:                                            ; preds = %.lr.ph.i.i.i.i218
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !380 ; 2 uses
  %i.lu = urem i64 %i.lt, %i.kz
  %.not19.i.i.i.i221 = icmp eq i64 %i.lu, %i.la
  br i1 %.not19.i.i.i.i221, label %bb.du, label %..loopexit_crit_edge21.i.i.i.i222, !llvm.loop !2260

..loopexit_crit_edge21.i.i.i.i222:                ; preds = %bb.dv
  br label %.loopexit360, !llvm.loop !2260

_ZNSt13unordered_setIN6duckdb12SequenceInfoENS0_13EnumClassHashESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit227: ; preds = %bb.dt, %bb.du, %bb.dr
  %i.lv = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull @.str.156, ptr noundef nonnull align 1 dereferenceable(1) %29)
          to label %bb.dw unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230.thread

bb.dw:                                            ; preds = %_ZNSt13unordered_setIN6duckdb12SequenceInfoENS0_13EnumClassHashESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit227
  invoke void @_ZN6duckdb15ParserExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.lv, ptr noundef nonnull align 8 dereferenceable(32) %28)
          to label %bb.dx unwind label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  invoke void @__cxa_throw(ptr nonnull %i.lv, ptr nonnull @_ZTIN6duckdb15ParserExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.gb unwind label %bb.dy

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230.thread: ; preds = %_ZNSt13unordered_setIN6duckdb12SequenceInfoENS0_13EnumClassHashESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit227
  %i.lw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  br label %bb.dz

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %.046 = phi i1 [ false, %bb.dx ], [ true, %bb.dw ] ; 2 uses
  %i.lx = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ly = load ptr, ptr %28, align 8, !tbaa !23   ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.ma = icmp eq ptr %i.ly, %i.lz
  br i1 %i.ma, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228: ; preds = %bb.dy
  call void @_ZdlPv(ptr noundef %i.ly) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  br i1 %.046, label %bb.dz, label %bb.ej

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230: ; preds = %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  br i1 %.046, label %bb.dz, label %bb.ej

bb.dz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230
  %.pn105325 = phi { ptr, i32 } [ %i.lw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230.thread ], [ %i.lx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230 ], [ %i.lx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228 ]
  call void @__cxa_free_exception(ptr %i.lv) #23
  br label %bb.ej

.loopexit360:                                     ; preds = %.lr.ph.i.i.i.i218, %.preheader359, %..loopexit_crit_edge21.i.i.i.i222, %bb.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  store i8 4, ptr %i.g, align 1, !tbaa !2257
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %10, ptr %3, align 8, !tbaa !2261
  %i.mb = invoke { ptr, i8 } @_ZNSt10_HashtableIN6duckdb12SequenceInfoES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_13EnumClassHashENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS1_S1_NS3_10_AllocNodeISaINS3_10_Hash_nodeIS1_Lb1EEEEEEEESt4pairINS3_14_Node_iteratorIS1_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.ea unwind label %bb.eb     ; 0 uses

bb.ea:                                            ; preds = %.loopexit360
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  br i1 %i.be, label %bb.ei, label %bb.ec

bb.eb:                                            ; preds = %.loopexit360
  %i.mc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  br label %bb.ej

bb.ec:                                            ; preds = %bb.ea
  %i.md = load i64, ptr %i.b, align 8, !tbaa !21
  %i.me = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18CreateSequenceInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.ed unwind label %bb.ad

bb.ed:                                            ; preds = %bb.ec
  %i.mf = icmp sgt i64 %i.md, 0
  %i.mg = getelementptr inbounds nuw i8, ptr %i.me, i64 392
  %i.mh = zext i1 %i.mf to i8
  store i8 %i.mh, ptr %i.mg, align 8, !tbaa !2266
  br label %bb.ei

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit215.thread321: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit177, %bb.aw, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit215
  %i.mi = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull @.str.157, ptr noundef nonnull align 1 dereferenceable(1) %31)
          to label %bb.ee unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235.thread

bb.ee:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit215.thread321
  invoke void @_ZN6duckdb15ParserExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.mi, ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.ef unwind label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  invoke void @__cxa_throw(ptr nonnull %i.mi, ptr nonnull @_ZTIN6duckdb15ParserExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.gb unwind label %bb.eg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit215.thread321
  %i.mj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  br label %bb.eh

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %.042 = phi i1 [ false, %bb.ef ], [ true, %bb.ee ] ; 2 uses
  %i.mk = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ml = load ptr, ptr %30, align 8, !tbaa !23   ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.mn = icmp eq ptr %i.ml, %i.mm
  br i1 %i.mn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233: ; preds = %bb.eg
  call void @_ZdlPv(ptr noundef %i.ml) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  br i1 %.042, label %bb.eh, label %bb.ej

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235: ; preds = %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  br i1 %.042, label %bb.eh, label %bb.ej

bb.eh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235
  %.pn103328 = phi { ptr, i32 } [ %i.mj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235.thread ], [ %i.mk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235 ], [ %i.mk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233 ]
  call void @__cxa_free_exception(ptr %i.mi) #23
  br label %bb.ej

bb.ei:                                            ; preds = %bb.bx, %bb.bu, %bb.dd, %bb.db, %bb.ed, %bb.dq, %bb.cl, %bb.cn, %bb.ea, %bb.dn, %bb.cx, %bb.ch, %bb.bg
  %.277 = phi i1 [ %.075487, %bb.dn ], [ %.075487, %bb.ea ], [ %.075487, %bb.bg ], [ %.075487, %bb.ch ], [ %.075487, %bb.cx ], [ %.075487, %bb.bu ], [ %.075487, %bb.bx ], [ %.075487, %bb.cn ], [ %.075487, %bb.cl ], [ %.075487, %bb.dd ], [ %.075487, %bb.db ], [ true, %bb.dq ], [ %.075487, %bb.ed ] ; 2 uses
  %.272 = phi i64 [ %.070488, %bb.dn ], [ %.070488, %bb.ea ], [ %.070488, %bb.bg ], [ %.070488, %bb.ch ], [ %.070488, %bb.cx ], [ -1, %bb.bu ], [ 1, %bb.bx ], [ %i.he, %bb.cn ], [ %.070488, %bb.cl ], [ %i.ja, %bb.dd ], [ %.070488, %bb.db ], [ %.070488, %bb.dq ], [ %.070488, %bb.ed ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  %i.mo = load ptr, ptr %12, align 8, !tbaa !23   ; 2 uses
  %i.mp = icmp eq ptr %i.mo, %i.ag
  br i1 %i.mp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236: ; preds = %bb.ei
  call void @_ZdlPv(ptr noundef %i.mo) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238: ; preds = %bb.ei, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %.078.in = getelementptr inbounds nuw i8, ptr %.078489, i64 8
  %.078 = load ptr, ptr %.078.in, align 8, !tbaa !7 ; 2 uses
  %.not91 = icmp eq ptr %.078, null
  br i1 %.not91, label %._crit_edge, label %bb.k, !llvm.loop !2267

bb.ej:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235, %bb.eh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, %bb.dz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211, %bb.dm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, %bb.cw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, %bb.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156, %bb.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, %bb.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, %bb.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.aq, %bb.eb, %bb.do, %bb.cy, %bb.ci, %bb.bh, %bb.ad
  %.pn116.pn = phi { ptr, i32 } [ %.pn116302, %bb.bf ], [ %i.eh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152 ], [ %.pn113305, %bb.bp ], [ %i.ew, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156 ], [ %i.bs, %bb.ad ], [ %i.em, %bb.bh ], [ %i.mk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233 ], [ %.pn111310, %bb.cg ], [ %i.gp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173 ], [ %i.gu, %bb.ci ], [ %i.lx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228 ], [ %.pn109315, %bb.cw ], [ %i.il, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192 ], [ %i.iq, %bb.cy ], [ %i.kc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209 ], [ %.pn107320, %bb.dm ], [ %i.kc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211 ], [ %i.kh, %bb.do ], [ %i.il, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190 ], [ %.pn105325, %bb.dz ], [ %i.lx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230 ], [ %i.mc, %bb.eb ], [ %i.gp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171 ], [ %.pn103328, %bb.eh ], [ %i.mk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235 ], [ %.pn101294, %bb.aq ], [ %i.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn99297, %bb.av ], [ %i.co, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ %i.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147 ], [ %i.eh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150 ], [ %i.ew, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ac, %bb.ej, %bb.ab
  %.pn116.pn.pn.pn = phi { ptr, i32 } [ %i.bq, %bb.ab ], [ %.pn116.pn, %bb.ej ], [ %i.br, %bb.ac ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  %i.mq = load ptr, ptr %12, align 8, !tbaa !23   ; 2 uses
  %i.mr = icmp eq ptr %i.mq, %i.ag
  br i1 %i.mr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239: ; preds = %bb.ek
  call void @_ZdlPv(ptr noundef %i.mq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241: ; preds = %bb.ek, %.loopexit363, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239, %bb.aa
  %.pn116.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bp, %bb.aa ], [ %.pn116.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit363 ], [ %.pn116.pn.pn.pn, %bb.ek ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.ep

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238
  br i1 %.277, label %bb.en, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.j, %._crit_edge
  %.070.lcssa548 = phi i64 [ %.272, %._crit_edge ], [ %i.z, %bb.j ]
  %i.ms = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18CreateSequenceInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.el unwind label %bb.em

bb.el:                                            ; preds = %._crit_edge.thread
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 384
  store i64 %.070.lcssa548, ptr %i.mt, align 8, !tbaa !2250
  br label %bb.en
end_hunk_3
begin_hunk_4_@_ZN6duckdb11Transformer22TransformAlterSequenceERN17duckdb_libpgquery14PGAlterSeqStmtE:bb.a
          to label %bb.cs unwind label %bb.t

bb.p:                                             ; preds = %_ZN6duckdb9make_uniqINS_14AlterStatementEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.q:                                             ; preds = %.noexc.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182

bb.r:                                             ; preds = %.noexc.i89
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179

bb.s:                                             ; preds = %.noexc.i93
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.m
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.u

bb.t:                                             ; preds = %bb.o, %bb.n
  %.032 = phi i1 [ false, %bb.o ], [ true, %bb.n ] ; 2 uses
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bk = load ptr, ptr %10, align 8, !tbaa !23   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.t
  call void @_ZdlPv(ptr noundef %i.bk) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br i1 %.032, label %bb.u, label %bb.cq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br i1 %.032, label %bb.u, label %bb.cq

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn198 = phi { ptr, i32 } [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.bd) #23
  br label %bb.cq

bb.v:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.bn = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 2 uses
  store ptr %i.bn, ptr %12, align 8, !tbaa !2252
  %i.bo = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  store i64 1, ptr %i.bo, align 8, !tbaa !2254
  %i.bp = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %12, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bq, align 8, !tbaa !321
  %i.br = getelementptr inbounds nuw i8, ptr %12, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, i8 0, i64 16, i1 false)
  %.031.in280 = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.031281 = load ptr, ptr %.031.in280, align 8, !tbaa !7 ; 2 uses
  %.not56282 = icmp eq ptr %.031281, null
  br i1 %.not56282, label %._crit_edge, label %.lr.ph284

.lr.ph284:                                        ; preds = %bb.v
  %i.bs = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.bv = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 25
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph284, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144
  %.031283 = phi ptr [ %.031281, %.lr.ph284 ], [ %.031, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %i.cc = load ptr, ptr %.031283, align 8, !tbaa !10
  store ptr %i.cc, ptr %13, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  invoke void @_ZNK6duckdb12optional_ptrIN17duckdb_libpgquery9PGDefElemELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.x unwind label %bb.ak

bb.x:                                             ; preds = %bb.w
  %i.cd = load ptr, ptr %13, align 8, !tbaa !434
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !443 ; 4 uses
  store ptr %i.bs, ptr %14, align 8, !tbaa !19
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.177) #24
          to label %.noexc99 unwind label %.loopexit.split-lp221

.noexc99:                                         ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.ch = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cf) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 %i.ch, ptr %i.b, align 8, !tbaa !21
  %i.ci = icmp ugt i64 %i.ch, 15
  br i1 %i.ci, label %.noexc.i98, label %._crit_edge.i.i97

.noexc.i98:                                       ; preds = %bb.z
  %i.cj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc100 unwind label %.loopexit220 ; 2 uses

.noexc100:                                        ; preds = %.noexc.i98
  store ptr %i.cj, ptr %14, align 8, !tbaa !23
  %i.ck = load i64, ptr %i.b, align 8, !tbaa !21
  store i64 %i.ck, ptr %i.bs, align 8, !tbaa !10
  br label %._crit_edge.i.i97

._crit_edge.i.i97:                                ; preds = %.noexc100, %bb.z
  %i.cl = phi ptr [ %i.cj, %.noexc100 ], [ %i.bs, %bb.z ] ; 2 uses
  switch i64 %i.ch, label %bb.ab [
    i64 1, label %bb.aa
    i64 0, label %bb.ac
  ]

bb.aa:                                            ; preds = %._crit_edge.i.i97
  %i.cm = load i8, ptr %i.cf, align 1, !tbaa !10
  store i8 %i.cm, ptr %i.cl, align 1, !tbaa !10
  br label %bb.ac

bb.ab:                                            ; preds = %._crit_edge.i.i97
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cl, ptr nonnull align 1 %i.cf, i64 %i.ch, i1 false)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %._crit_edge.i.i97
  %i.cn = load i64, ptr %i.b, align 8, !tbaa !21  ; 2 uses
  store i64 %i.cn, ptr %i.bt, align 8, !tbaa !25
  %i.co = load ptr, ptr %14, align 8, !tbaa !23
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cn
  store i8 0, ptr %i.cp, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.cq = load i64, ptr %i.bt, align 8, !tbaa !25
  %i.cr = icmp eq i64 %i.cq, 8
  br i1 %i.cr, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread199

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.ac
  %i.cs = load ptr, ptr %14, align 8, !tbaa !23
  %i.ct = load i64, ptr %i.cs, align 1
  %i.cu = icmp ne i64 %i.ct, 8746658311110031215
  %i.cv = zext i1 %i.cu to i32
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread199

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.cx = load i64, ptr %i.bu, align 8, !tbaa !2256
  %.not.not.i.i = icmp eq i64 %i.cx, 0
  br i1 %.not.not.i.i, label %.preheader, label %bb.ae

.preheader:                                       ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.ad
  %.sroa.06.0.in.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.ad ], [ %i.bp, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !327 ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %.loopexit217, label %bb.ad

bb.ad:                                            ; preds = %.preheader
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !2257
  %i.da = icmp eq i8 %i.cz, 5
  br i1 %i.da, label %_ZNSt13unordered_setIN6duckdb12SequenceInfoENS0_13EnumClassHashESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit, label %.preheader, !llvm.loop !2259

bb.ae:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.db = load i64, ptr %i.bo, align 8, !tbaa !2254 ; 2 uses
  %i.dc = urem i64 5, %i.db                       ; 2 uses
  %i.dd = load ptr, ptr %12, align 8, !tbaa !2252
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.dc
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !382 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i.i, label %.loopexit217, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !327 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !380
  %i.dk = icmp eq i64 %i.dj, 5
  %i.dl = load i8, ptr %i.dh, align 8
  %i.dm = icmp eq i8 %i.dl, 5
  %i.dn = select i1 %i.dk, i1 %i.dm, i1 false
  br i1 %i.dn, label %_ZNSt13unordered_setIN6duckdb12SequenceInfoENS0_13EnumClassHashESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit, label %.lr.ph.i.i.i.i

bb.ag:                                            ; preds = %bb.ah
  %i.do = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dp = icmp eq i64 %i.dv, 5
  %i.dq = load i8, ptr %i.do, align 1
  %i.dr = icmp eq i8 %i.dq, 5
  %i.ds = select i1 %i.dp, i1 %i.dr, i1 false
  br i1 %i.ds, label %_ZNSt13unordered_setIN6duckdb12SequenceInfoENS0_13EnumClassHashESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2260

.lr.ph.i.i.i.i:                                   ; preds = %bb.af, %bb.ag
  %.020.i.i.i.i = phi ptr [ %i.dt, %bb.ag ], [ %i.dg, %bb.af ]
  %i.dt = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !327 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.dt, null
  br i1 %.not18.i.i.i.i, label %.loopexit217, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !380 ; 2 uses
  %i.dw = urem i64 %i.dv, %i.db
  %.not19.i.i.i.i = icmp eq i64 %i.dw, %i.dc
  br i1 %.not19.i.i.i.i, label %bb.ag, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !2260

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.ah
  br label %.loopexit217, !llvm.loop !2260

_ZNSt13unordered_setIN6duckdb12SequenceInfoENS0_13EnumClassHashESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit: ; preds = %bb.af, %bb.ag, %bb.ad
  %i.dx = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.169, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.ai unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103.thread

bb.ai:                                            ; preds = %_ZNSt13unordered_setIN6duckdb12SequenceInfoENS0_13EnumClassHashESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit
  invoke void @_ZN6duckdb15ParserExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.dx, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.aj unwind label %bb.al

bb.aj:                                            ; preds = %bb.ai
  invoke void @__cxa_throw(ptr nonnull %i.dx, ptr nonnull @_ZTIN6duckdb15ParserExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.cs unwind label %bb.al

bb.ak:                                            ; preds = %bb.w
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162

.loopexit220:                                     ; preds = %.noexc.i98
  %lpad.loopexit222 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162

.loopexit.split-lp221:                            ; preds = %bb.y
  %lpad.loopexit.split-lp223 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103.thread: ; preds = %_ZNSt13unordered_setIN6duckdb12SequenceInfoENS0_13EnumClassHashESt8equal_toIS1_ESaIS1_EE4findERKS1_.exit
  %i.dz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.am

bb.al:                                            ; preds = %bb.aj, %bb.ai
  %.029 = phi i1 [ false, %bb.aj ], [ true, %bb.ai ] ; 2 uses
  %i.ea = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.eb = load ptr, ptr %15, align 8, !tbaa !23   ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %bb.al
  call void @_ZdlPv(ptr noundef %i.eb) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br i1 %.029, label %bb.am, label %bb.ck

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br i1 %.029, label %bb.am, label %bb.ck

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103
  %.pn77203 = phi { ptr, i32 } [ %i.dz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103.thread ], [ %i.ea, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ], [ %i.ea, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101 ]
  call void @__cxa_free_exception(ptr %i.dx) #23
  br label %bb.ck

.loopexit217:                                     ; preds = %.lr.ph.i.i.i.i, %.preheader, %..loopexit_crit_edge21.i.i.i.i, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  store i8 5, ptr %i.f, align 1, !tbaa !2257
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %12, ptr %5, align 8, !tbaa !2261
  %i.ee = invoke { ptr, i8 } @_ZNSt10_HashtableIN6duckdb12SequenceInfoES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_13EnumClassHashENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS1_S1_NS3_10_AllocNodeISaINS3_10_Hash_nodeIS1_Lb1EEEEEEEESt4pairINS3_14_Node_iteratorIS1_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.an unwind label %bb.as     ; 0 uses

bb.an:                                            ; preds = %.loopexit217
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  invoke void @_ZNK6duckdb12optional_ptrIN17duckdb_libpgquery9PGDefElemELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.ao unwind label %bb.at

bb.ao:                                            ; preds = %bb.an
  %i.ef = load ptr, ptr %13, align 8, !tbaa !434
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !437 ; 2 uses
  store ptr %i.eh, ptr %17, align 8
  %.not216 = icmp eq ptr %i.eh, null
  br i1 %.not216, label %bb.ap, label %bb.aw

bb.ap:                                            ; preds = %bb.ao
  %i.ei = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.170, ptr noundef nonnull align 1 dereferenceable(1) %19)
          to label %bb.aq unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109.thread

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN6duckdb17InternalExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ei, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.ar unwind label %bb.au

bb.ar:                                            ; preds = %bb.aq
  invoke void @__cxa_throw(ptr nonnull %i.ei, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.cs unwind label %bb.au

bb.as:                                            ; preds = %.loopexit217
  %i.ej = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  br label %bb.ck

bb.at:                                            ; preds = %bb.aw, %bb.an
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109.thread: ; preds = %bb.ap
  %i.el = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %bb.av

bb.au:                                            ; preds = %bb.ar, %bb.aq
  %.025 = phi i1 [ false, %bb.ar ], [ true, %bb.aq ] ; 2 uses
  %i.em = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.en = load ptr, ptr %18, align 8, !tbaa !23   ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ep = icmp eq ptr %i.en, %i.eo
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %bb.au
  call void @_ZdlPv(ptr noundef %i.en) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br i1 %.025, label %bb.av, label %bb.cf

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br i1 %.025, label %bb.av, label %bb.cf

bb.av:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109
  %.pn59206 = phi { ptr, i32 } [ %i.el, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109.thread ], [ %i.em, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109 ], [ %i.em, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107 ]
  call void @__cxa_free_exception(ptr %i.ei) #23
  br label %bb.cf

bb.aw:                                            ; preds = %bb.ao
  invoke void @_ZNK6duckdb12optional_ptrIN17duckdb_libpgquery6PGListELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.ax unwind label %bb.at

bb.ax:                                            ; preds = %bb.aw
  %i.eq = load ptr, ptr %17, align 8, !tbaa !237
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !2297
  %.not61 = icmp eq i32 %i.er, 223
  br i1 %.not61, label %bb.bd, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.es = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.171, ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %bb.az unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113.thread

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZN6duckdb17InternalExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.es, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.ba unwind label %bb.bb

bb.ba:                                            ; preds = %bb.az
  invoke void @__cxa_throw(ptr nonnull %i.es, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.cs unwind label %bb.bb

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113.thread: ; preds = %bb.ay
  %i.et = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  br label %bb.bc

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.023 = phi i1 [ false, %bb.ba ], [ true, %bb.az ] ; 2 uses
  %i.eu = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ev = load ptr, ptr %20, align 8, !tbaa !23   ; 2 uses
end_hunk_4
begin_hunk_5_@_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_:bb.a
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  %i.r = load <2 x ptr>, ptr %2, align 8, !tbaa !386
  store <2 x ptr> %i.r, ptr %i.q, align 8, !tbaa !386
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !149
  store ptr %i.u, ptr %i.s, align 8, !tbaa !149
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %.not10.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i ], [ %i.p, %_ZNKSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2471)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2474)
  %i.v = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !386, !alias.scope !2474, !noalias !2471
  store <2 x ptr> %i.v, ptr %.012.i.i.i.i, align 8, !tbaa !386, !alias.scope !2471, !noalias !2474
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !149, !alias.scope !2474, !noalias !2471
  store ptr %i.y, ptr %i.w, align 8, !tbaa !149, !alias.scope !2471, !noalias !2474
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !2474, !noalias !2471
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.z, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2476

_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE12_M_check_lenEmPKc.exit ], [ %i.aa, %.lr.ph.i.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i16, label %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22, label %.lr.ph.i.i.i.i17

.lr.ph.i.i.i.i17:                                 ; preds = %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit, %.lr.ph.i.i.i.i17
  %.012.i.i.i.i18 = phi ptr [ %i.ah, %.lr.ph.i.i.i.i17 ], [ %i.ab, %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit ] ; 3 uses
  %.0911.i.i.i.i19 = phi ptr [ %i.ag, %.lr.ph.i.i.i.i17 ], [ %1, %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2477)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2480)
  %i.ac = load <2 x ptr>, ptr %.0911.i.i.i.i19, align 8, !tbaa !386, !alias.scope !2480, !noalias !2477
  store <2 x ptr> %i.ac, ptr %.012.i.i.i.i18, align 8, !tbaa !386, !alias.scope !2477, !noalias !2480
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !149, !alias.scope !2480, !noalias !2477
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !149, !alias.scope !2477, !noalias !2480
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i19, i8 0, i64 24, i1 false), !alias.scope !2480, !noalias !2477
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 24 ; 2 uses
  %.not.i.i.i.i20 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i.i20, label %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22, label %.lr.ph.i.i.i.i17, !llvm.loop !2476

_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22: ; preds = %.lr.ph.i.i.i.i17, %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit
  %.0.lcssa.i.i.i.i21 = phi ptr [ %i.ab, %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit ], [ %i.ah, %.lr.ph.i.i.i.i17 ]
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN6duckdb6vectorINS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE13_M_deallocateEPS8_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #26
  br label %_ZNSt12_Vector_baseIN6duckdb6vectorINS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE13_M_deallocateEPS8_m.exit

_ZNSt12_Vector_baseIN6duckdb6vectorINS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE13_M_deallocateEPS8_m.exit: ; preds = %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22, %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8, !tbaa !1253
  store ptr %.0.lcssa.i.i.i.i21, ptr %i.a, align 8, !tbaa !1247
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !1249
  ret void
}

declare void @_ZN6duckdb15InsertStatementC1Ev(ptr noundef nonnull align 8 dereferenceable(370)) unnamed_addr #4

declare void @_ZN6duckdb13LoadStatementC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #4

declare void @_ZN6duckdb18MergeIntoStatementC1Ev(ptr noundef nonnull align 8 dereferenceable(320)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb12optional_ptrIN17duckdb_libpgquery13PGMatchActionELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.16", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1424
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.183, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !23     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #23
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt8_Rb_treeIN6duckdb20MergeActionConditionESt4pairIKS1_NS0_10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS5_ELb1EEEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE17_M_emplace_uniqueIJRS1_S8_EEES2_ISt17_Rb_tree_iteratorIS9_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #25 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load i8, ptr %1, align 1, !tbaa !1428    ; 4 uses
  store i8 %i.c, ptr %i.b, align 8, !tbaa !2482
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !1350   ; 3 uses
  store i64 %i.e, ptr %i.d, align 8, !tbaa !1350
  store ptr null, ptr %2, align 8, !tbaa !1350
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.02022.i = load ptr, ptr %i.f, align 8, !tbaa !1430 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  %i.h = inttoptr i64 %i.e to ptr
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.02024.i = phi ptr [ %.020.i, %.lr.ph.i ], [ %.02022.i, %bb.a ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.j = load i8, ptr %i.i, align 1, !tbaa !1428  ; 2 uses
  %i.k = icmp ult i8 %i.c, %i.j                   ; 2 uses
  %.in.v.i = select i1 %i.k, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !1430 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !2490

._crit_edge.i:                                    ; preds = %.lr.ph.i
  br i1 %i.k, label %._crit_edge.thread.i, label %bb.c

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.a
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.g, %bb.a ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1420
  %i.n = icmp eq ptr %.019.lcssa29.i, %i.m
  br i1 %i.n, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %._crit_edge.thread.i
  %i.o = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #27 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !1428
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.i
  %i.p = phi i8 [ %.pre, %bb.b ], [ %i.j, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.b ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.o, %bb.b ], [ %.02024.i, %._crit_edge.i ]
  %i.q = icmp ult i8 %i.p, %i.c
  br i1 %i.q, label %select.unfold, label %bb.e

select.unfold:                                    ; preds = %bb.c, %._crit_edge.thread.i
  %.sroa.4.0.i.ph = phi ptr [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %.019.lcssa28.i, %bb.c ] ; 3 uses
  %i.r = icmp eq ptr %.sroa.4.0.i.ph, %i.g
  br i1 %i.r, label %.thread19, label %bb.d

bb.d:                                             ; preds = %select.unfold
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  %i.t = load i8, ptr %i.s, align 1, !tbaa !1428
  %i.u = icmp ult i8 %i.c, %i.t
  br label %.thread19

.thread19:                                        ; preds = %select.unfold, %bb.d
  %i.v = phi i1 [ %i.u, %bb.d ], [ true, %select.unfold ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.v, ptr noundef nonnull %i.a, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.g) #23
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !1422
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8, !tbaa !1422
  br label %_ZNSt8_Rb_treeIN6duckdb20MergeActionConditionESt4pairIKS1_NS0_10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS5_ELb1EEEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE10_Auto_nodeD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %.not.i.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt8_Rb_treeIN6duckdb20MergeActionConditionESt4pairIKS1_NS0_10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS5_ELb1EEEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZNKSt14default_deleteIN6duckdb15MergeIntoActionEEclEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %i.h)
  br label %_ZNSt8_Rb_treeIN6duckdb20MergeActionConditionESt4pairIKS1_NS0_10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS5_ELb1EEEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit.i

_ZNSt8_Rb_treeIN6duckdb20MergeActionConditionESt4pairIKS1_NS0_10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS5_ELb1EEEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit.i: ; preds = %bb.f, %bb.e
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #26
  br label %_ZNSt8_Rb_treeIN6duckdb20MergeActionConditionESt4pairIKS1_NS0_10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS5_ELb1EEEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIN6duckdb20MergeActionConditionESt4pairIKS1_NS0_10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS5_ELb1EEEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread19, %_ZNSt8_Rb_treeIN6duckdb20MergeActionConditionESt4pairIKS1_NS0_10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS5_ELb1EEEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit.i
  %.sroa.3.024 = phi i8 [ 1, %.thread19 ], [ 0, %_ZNSt8_Rb_treeIN6duckdb20MergeActionConditionESt4pairIKS1_NS0_10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS5_ELb1EEEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit.i ]
  %.sroa.011.023 = phi ptr [ %i.a, %.thread19 ], [ %.sroa.05.0.i, %_ZNSt8_Rb_treeIN6duckdb20MergeActionConditionESt4pairIKS1_NS0_10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS5_ELb1EEEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.011.023, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.024, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #18

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIN6duckdb20MergeActionConditionESt4pairIKS1_NS0_6vectorINS0_10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEESt10_Select1stISC_ESt4lessIS1_ESaISC_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESN_IJEEEEESt17_Rb_tree_iteratorISC_ESt23_Rb_tree_const_iteratorISC_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<duckdb::MergeActionCondition, std::pair<const duckdb::MergeActionCondition, duckdb::vector<duckdb::unique_ptr<duckdb::MergeIntoAction>>>, std::_Select1st<std::pair<const duckdb::MergeActionCondition, duckdb::vector<duckdb::unique_ptr<duckdb::MergeIntoAction>>>>, std::less<duckdb::MergeActionCondition>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %0, ptr %5, align 8, !tbaa !2491
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #25 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.d = load i64, ptr %3, align 8, !tbaa !351
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i8, ptr %i.e, align 1, !tbaa !1428
  store i8 %i.f, ptr %i.c, align 8, !tbaa !2493
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  store ptr %i.b, ptr %i.a, align 8, !tbaa !2499
  %i.h = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN6duckdb20MergeActionConditionESt4pairIKS1_NS0_6vectorINS0_10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEESt10_Select1stISC_ESt4lessIS1_ESaISC_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISC_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.h, 1        ; 4 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.i, null
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.l
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.n = load i8, ptr %i.c, align 1, !tbaa !1428
  %i.o = load i8, ptr %i.m, align 1, !tbaa !1428
  %i.p = icmp ult i8 %i.n, %i.o
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.q = phi i1 [ %i.p, %bb.d ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.q, ptr noundef nonnull %i.b, ptr noundef nonnull %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.k) #23
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !1422
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.r, align 8, !tbaa !1422
  br label %_ZNSt8_Rb_treeIN6duckdb20MergeActionConditionESt4pairIKS1_NS0_6vectorINS0_10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEESt10_Select1stISC_ESt4lessIS1_ESaISC_EE10_Auto_nodeD2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIN6duckdb20MergeActionConditionESt4pairIKS1_NS0_6vectorINS0_10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEESt10_Select1stISC_ESt4lessIS1_ESaISC_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %i.u

bb.f:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !1437 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1433 ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.v, %i.x
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.f, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.z, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.v, %bb.f ] ; 3 uses
  %i.y = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !1350 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  tail call void @_ZNKSt14default_deleteIN6duckdb15MergeIntoActionEEclEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %.05.i.i.i.i.i.i.i, ptr noundef nonnull %i.y)
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.z, %i.x
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2502

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !1437
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %bb.f
  %i.aa = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.v, %bb.f ] ; 2 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZNSt8_Rb_treeIN6duckdb20MergeActionConditionESt4pairIKS1_NS0_6vectorINS0_10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEESt10_Select1stISC_ESt4lessIS1_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.aa) #26
  br label %_ZNSt8_Rb_treeIN6duckdb20MergeActionConditionESt4pairIKS1_NS0_6vectorINS0_10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEESt10_Select1stISC_ESt4lessIS1_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit.i

_ZNSt8_Rb_treeIN6duckdb20MergeActionConditionESt4pairIKS1_NS0_6vectorINS0_10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEESt10_Select1stISC_ESt4lessIS1_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit.i: ; preds = %bb.h, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #26
  br label %_ZNSt8_Rb_treeIN6duckdb20MergeActionConditionESt4pairIKS1_NS0_6vectorINS0_10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEESt10_Select1stISC_ESt4lessIS1_ESaISC_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIN6duckdb20MergeActionConditionESt4pairIKS1_NS0_6vectorINS0_10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEESt10_Select1stISC_ESt4lessIS1_ESaISC_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %_ZNSt8_Rb_treeIN6duckdb20MergeActionConditionESt4pairIKS1_NS0_6vectorINS0_10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEESt10_Select1stISC_ESt4lessIS1_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit.i
  %.sroa.0.010 = phi ptr [ %i.b, %.thread ], [ %i.i, %_ZNSt8_Rb_treeIN6duckdb20MergeActionConditionESt4pairIKS1_NS0_6vectorINS0_10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEESt10_Select1stISC_ESt4lessIS1_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret ptr %.sroa.0.010
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeIN6duckdb20MergeActionConditionESt4pairIKS1_NS0_6vectorINS0_10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEESt10_Select1stISC_ESt4lessIS1_ESaISC_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISC_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1422
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1430 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i8, ptr %i.g, align 1, !tbaa !1428
  %i.i = load i8, ptr %2, align 1, !tbaa !1428
  %i.j = icmp ult i8 %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeIN6duckdb20MergeActionConditionESt4pairIKS1_NS0_6vectorINS0_10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEESt10_Select1stISC_ESt4lessIS1_ESaISC_EE24_M_get_insert_unique_posERS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8, !tbaa !1430 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load i8, ptr %2, align 1, !tbaa !1428    ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load i8, ptr %i.m, align 1, !tbaa !1428  ; 2 uses
  %i.o = icmp ult i8 %i.l, %i.n                   ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !1430 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !2503

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1420
  %i.r = icmp eq ptr %.019.lcssa29.i, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeIN6duckdb20MergeActionConditionESt4pairIKS1_NS0_6vectorINS0_10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEESt10_Select1stISC_ESt4lessIS1_ESaISC_EE24_M_get_insert_unique_posERS3_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #27 ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81 = load i8, ptr %.phi.trans.insert80, align 1, !tbaa !1428
  %.pre82 = load i8, ptr %2, align 1, !tbaa !1428
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi i8 [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi i8 [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.v = icmp ult i8 %i.u, %i.t                   ; 2 uses
  %spec.select.i = select i1 %i.v, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.v, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeIN6duckdb20MergeActionConditionESt4pairIKS1_NS0_6vectorINS0_10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEESt10_Select1stISC_ESt4lessIS1_ESaISC_EE24_M_get_insert_unique_posERS3_.exit

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load i8, ptr %2, align 1, !tbaa !1428    ; 8 uses
  %i.y = load i8, ptr %i.w, align 1, !tbaa !1428  ; 2 uses
  %i.z = icmp ult i8 %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1430 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNSt8_Rb_treeIN6duckdb20MergeActionConditionESt4pairIKS1_NS0_6vectorINS0_10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEESt10_Select1stISC_ESt4lessIS1_ESaISC_EE24_M_get_insert_unique_posERS3_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #27 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !1428
  %i.ag = icmp ult i8 %i.af, %i.x
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !2317
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select71 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeIN6duckdb20MergeActionConditionESt4pairIKS1_NS0_6vectorINS0_10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEESt10_Select1stISC_ESt4lessIS1_ESaISC_EE24_M_get_insert_unique_posERS3_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.ak, align 8, !tbaa !1430 ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.am = load i8, ptr %i.al, align 1, !tbaa !1428 ; 2 uses
  %i.an = icmp ult i8 %i.x, %i.am                 ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8, !tbaa !1430 ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !2503

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeIN6duckdb20MergeActionConditionESt4pairIKS1_NS0_6vectorINS0_10unique_ptrINS0_15MergeIntoActionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEESt10_Select1stISC_ESt4lessIS1_ESaISC_EE24_M_get_insert_unique_posERS3_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #27 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load i8, ptr %.phi.trans.insert78, align 1, !tbaa !1428
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi i8 [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp ult i8 %i.aq, %i.x                 ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
end_hunk_5
begin_hunk_6_@_ZN6duckdb9Exception25ConstructMessageRecursiveIN17duckdb_libpgquery21PGTransactionStmtTypeEJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_:bb.a
  %i.n = load i64, ptr %i.m, align 8, !tbaa !25   ; 3 uses
  %i.o = icmp ult i64 %i.n, 16
  call void @llvm.assume(i1 %i.o)
  %i.p = add nuw nsw i64 %i.n, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.k, i64 %i.p, i1 false)
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.j, ptr %i.g, align 8, !tbaa !23
  %i.q = load i64, ptr %i.k, align 8, !tbaa !10
  store i64 %i.q, ptr %i.i, align 8, !tbaa !10
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !25
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.r = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.n, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.r, ptr %i.t, align 8, !tbaa !25
  store ptr %i.k, ptr %i.h, align 8, !tbaa !23
  store i64 0, ptr %i.s, align 8, !tbaa !25
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !564
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store ptr %i.v, ptr %i.c, align 8, !tbaa !564
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  %.phi.trans.insert8 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.pre9 = load ptr, ptr %.phi.trans.insert8, align 8, !tbaa !23 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.x = icmp eq ptr %.pre9, %i.w
  br i1 %i.x, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre9) #26
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

_ZN6duckdb20ExceptionFormatValueD2Ev.exit:        ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN6duckdb9Exception25ConstructMessageRecursiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorINS_20ExceptionFormatValueESaISA_EE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !23  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.aa) #26
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7

_ZN6duckdb20ExceptionFormatValueD2Ev.exit7:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %i.y
}

declare void @_ZN6duckdb15TransactionInfoC1ENS_15TransactionTypeE(ptr noundef nonnull align 8 dereferenceable(11), i8 noundef zeroext) unnamed_addr #4

declare void @_ZN6duckdb20TransactionStatementC1ENS_10unique_ptrINS_15TransactionInfoESt14default_deleteIS2_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) unnamed_addr #4

declare void @_ZN6duckdb25UpdateExtensionsStatementC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #4

declare void @_ZN6duckdb14OnConflictInfoC1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb12optional_ptrIN17duckdb_libpgquery18PGOnConflictClauseELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.16", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1305
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.183, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !23     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #23
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

declare void @_ZN6duckdb18CreateSequenceInfoC1Ev(ptr noundef nonnull align 8 dereferenceable(393)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt10_HashtableIN6duckdb12SequenceInfoES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_13EnumClassHashENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS1_S1_NS3_10_AllocNodeISaINS3_10_Hash_nodeIS1_Lb1EEEEEEEESt4pairINS3_14_Node_iteratorIS1_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !2256
  %.not.not = icmp eq i64 %i.b, 0
  br i1 %.not.not, label %bb.b, label %.thread34

.thread34:                                        ; preds = %bb.a
  %i.c = load i8, ptr %1, align 1, !tbaa !2257    ; 6 uses
  %i.d = zext i8 %i.c to i64                      ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !2254 ; 2 uses
  %i.g = urem i64 %i.d, %i.f                      ; 5 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !2252
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.g
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !382  ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %.critedge, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i8, ptr %1, align 1                 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.028.0.in = phi ptr [ %i.k, %bb.b ], [ %.sroa.028.0, %bb.d ]
  %.sroa.028.0 = load ptr, ptr %.sroa.028.0.in, align 8, !tbaa !327 ; 4 uses
  %.not = icmp eq ptr %.sroa.028.0, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.028.0, i64 8
  %i.n = load i8, ptr %i.m, align 1, !tbaa !2257
  %i.o = icmp eq i8 %i.l, %i.n
  br i1 %i.o, label %_ZNKSt10_HashtableIN6duckdb12SequenceInfoES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_13EnumClassHashENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS1_EEPNS3_10_Hash_nodeIS1_Lb1EEEmRKT_m.exit, label %bb.c, !llvm.loop !2566

bb.e:                                             ; preds = %bb.c
  %i.p = zext i8 %i.l to i64                      ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !2254
  %i.s = urem i64 %i.p, %i.r
  br label %.critedge

bb.f:                                             ; preds = %.thread34
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !327  ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !380
  %i.x = icmp eq i64 %i.w, %i.d
  %i.y = load i8, ptr %i.u, align 8
  %i.z = icmp eq i8 %i.c, %i.y
  %i.aa = select i1 %i.x, i1 %i.z, i1 false
  br i1 %i.aa, label %_ZNKSt10_HashtableIN6duckdb12SequenceInfoES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_13EnumClassHashENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS1_EEPNS3_10_Hash_nodeIS1_Lb1EEEmRKT_m.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ac = icmp eq i64 %i.ai, %i.d
  %i.ad = load i8, ptr %i.ab, align 1
  %i.ae = icmp eq i8 %i.c, %i.ad
  %i.af = select i1 %i.ac, i1 %i.ae, i1 false
  br i1 %i.af, label %_ZNKSt10_HashtableIN6duckdb12SequenceInfoES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_13EnumClassHashENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS1_EEPNS3_10_Hash_nodeIS1_Lb1EEEmRKT_m.exit, label %.lr.ph.i.i, !llvm.loop !2567

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %.020.i.i = phi ptr [ %i.ag, %bb.g ], [ %i.t, %bb.f ]
  %i.ag = load ptr, ptr %.020.i.i, align 8, !tbaa !327 ; 5 uses
  %.not18.i.i = icmp eq ptr %i.ag, null
  br i1 %.not18.i.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !380 ; 2 uses
  %i.aj = urem i64 %i.ai, %i.f
  %.not19.i.i = icmp eq i64 %i.aj, %i.g
  br i1 %.not19.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i, !llvm.loop !2567

..loopexit_crit_edge21.i.i:                       ; preds = %bb.h
  br label %.critedge, !llvm.loop !2567

.critedge:                                        ; preds = %.lr.ph.i.i, %bb.e, %..loopexit_crit_edge21.i.i, %.thread34
  %i.ak = phi i64 [ %i.s, %bb.e ], [ %i.g, %.thread34 ], [ %i.g, %..loopexit_crit_edge21.i.i ], [ %i.g, %.lr.ph.i.i ]
  %i.al = phi i64 [ %i.p, %bb.e ], [ %i.d, %.thread34 ], [ %i.d, %..loopexit_crit_edge21.i.i ], [ %i.d, %.lr.ph.i.i ]
  %i.am = phi i8 [ %i.l, %bb.e ], [ %i.c, %.thread34 ], [ %i.c, %..loopexit_crit_edge21.i.i ], [ %i.c, %.lr.ph.i.i ]
  %i.an = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25 ; 4 uses
  store ptr null, ptr %i.an, align 8, !tbaa !327
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i8 %i.am, ptr %i.ao, align 8, !tbaa !2257
  %i.ap = invoke ptr @_ZNSt10_HashtableIN6duckdb12SequenceInfoES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_13EnumClassHashENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS3_10_Hash_nodeIS1_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.ak, i64 noundef %i.al, ptr noundef nonnull %i.an, i64 noundef 1)
          to label %_ZNKSt10_HashtableIN6duckdb12SequenceInfoES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_13EnumClassHashENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS1_EEPNS3_10_Hash_nodeIS1_Lb1EEEmRKT_m.exit unwind label %_ZNSt10_HashtableIN6duckdb12SequenceInfoES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_13EnumClassHashENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20

_ZNSt10_HashtableIN6duckdb12SequenceInfoES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_13EnumClassHashENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20: ; preds = %.critedge
  %i.aq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.an) #26
  resume { ptr, i32 } %i.aq

_ZNKSt10_HashtableIN6duckdb12SequenceInfoES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_13EnumClassHashENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS1_EEPNS3_10_Hash_nodeIS1_Lb1EEEmRKT_m.exit: ; preds = %bb.g, %bb.d, %.critedge, %bb.f
  %.sroa.031.1 = phi ptr [ %.sroa.028.0, %bb.d ], [ %i.ap, %.critedge ], [ %i.t, %bb.f ], [ %i.ag, %bb.g ]
  %.sroa.432.1 = phi i8 [ 0, %bb.d ], [ 1, %.critedge ], [ 0, %bb.f ], [ 0, %bb.g ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.031.1, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.432.1, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableIN6duckdb12SequenceInfoES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_13EnumClassHashENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS3_10_Hash_nodeIS1_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !383
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !2254
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !2256
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableIN6duckdb12SequenceInfoES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_13EnumClassHashENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableIN6duckdb12SequenceInfoES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_13EnumClassHashENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #23 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !383
  invoke void @__cxa_rethrow() #24
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #28
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIN6duckdb12SequenceInfoES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_13EnumClassHashENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !2254
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIN6duckdb12SequenceInfoES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_13EnumClassHashENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIN6duckdb12SequenceInfoES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_13EnumClassHashENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %2, ptr %i.t, align 8, !tbaa !380
  %i.u = load ptr, ptr %0, align 8, !tbaa !2252   ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.0 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !382  ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !327
  store ptr %i.x, ptr %3, align 8, !tbaa !327
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !382
  store ptr %3, ptr %i.y, align 8, !tbaa !327
  br label %_ZNSt10_HashtableIN6duckdb12SequenceInfoES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_13EnumClassHashENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS3_10_Hash_nodeIS1_Lb1EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !2268
  store ptr %i.aa, ptr %3, align 8, !tbaa !327
  store ptr %3, ptr %i.z, align 8, !tbaa !2268
  %i.ab = load ptr, ptr %3, align 8, !tbaa !327   ; 2 uses
  %.not11.i = icmp eq ptr %i.ab, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !2254
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !380
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !382
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.z, ptr %i.v, align 8, !tbaa !382
  br label %_ZNSt10_HashtableIN6duckdb12SequenceInfoES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_13EnumClassHashENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS3_10_Hash_nodeIS1_Lb1EEE.exit

_ZNSt10_HashtableIN6duckdb12SequenceInfoES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_13EnumClassHashENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS3_10_Hash_nodeIS1_Lb1EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !2256
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !2256
  ret ptr %3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableIN6duckdb12SequenceInfoES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_13EnumClassHashENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !59

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !2568
  br label %_ZNSt10_HashtableIN6duckdb12SequenceInfoES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_13EnumClassHashENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb12SequenceInfoELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !59

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb12SequenceInfoELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #25 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIN6duckdb12SequenceInfoES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_13EnumClassHashENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIN6duckdb12SequenceInfoES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_13EnumClassHashENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb12SequenceInfoELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb12SequenceInfoELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2268 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !2268
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIN6duckdb12SequenceInfoES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_13EnumClassHashENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableIN6duckdb12SequenceInfoES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_13EnumClassHashENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableIN6duckdb12SequenceInfoES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_13EnumClassHashENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8, !tbaa !327 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !380
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !382  ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !2268
  store ptr %i.o, ptr %.031, align 8, !tbaa !327
end_hunk_6
