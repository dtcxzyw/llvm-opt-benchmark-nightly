inline.NumInlined: 1010
inline.NumDeleted: 534
begin_hunk_0_@_ZN6google8protobuf8compilerL16CanonicalizePathB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %2, align 1, !tbaa !47
  %i.c = icmp eq i8 %i.b, 47
  br i1 %i.c, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, label %bb.c

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.b
  %i.d = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #34 ; 4 uses
  store i64 0, ptr %i.d, align 8, !tbaa !55
  %.sroa.663.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @.str.9, ptr %.sroa.663.0..sroa_idx64, align 8, !tbaa !97
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.sroa.26.0 = phi ptr [ null, %bb.a ], [ %i.e, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ null, %bb.b ] ; 6 uses
  %.sroa.066.0 = phi ptr [ null, %bb.a ], [ %i.d, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ null, %bb.b ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store i64 %1, ptr %3, align 8, !tbaa !55, !alias.scope !157
  %.sroa.2.0..sroa_idx.i1.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %.sroa.2.0..sroa_idx.i1.i, align 8, !tbaa !97, !alias.scope !157
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 47, ptr %i.f, align 8, !tbaa !47, !alias.scope !157
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store i64 0, ptr %4, align 8, !tbaa !160, !alias.scope !166
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 10 uses
  store i32 0, ptr %i.g, align 8, !tbaa !169, !alias.scope !166
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false), !alias.scope !166
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  store ptr %3, ptr %i.i, align 8, !tbaa !170, !alias.scope !166
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  store i8 47, ptr %i.j, align 8, !tbaa !47, !alias.scope !166
  %i.k = icmp eq ptr %2, null
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 2, ptr %i.g, align 8, !tbaa !169, !alias.scope !166
  store i64 %1, ptr %4, align 8, !tbaa !160, !alias.scope !166
  br label %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit

bb.e:                                             ; preds = %bb.c
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i, %bb.e
  %i.l = phi i64 [ %i.ac, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i ], [ 0, %bb.e ] ; 2 uses
  %i.m = load i32, ptr %i.g, align 8, !tbaa !169, !alias.scope !166
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 2, ptr %i.g, align 8, !tbaa !169, !alias.scope !166
  br label %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit

bb.h:                                             ; preds = %bb.f
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !170, !alias.scope !166 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.o, align 8, !tbaa !55 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !97 ; 3 uses
  %i.p = invoke { i64, ptr } @_ZNK4absl12lts_202505126ByChar4FindESt17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef nonnull align 1 dereferenceable(1) %i.j, i64 %.sroa.0.0.copyload.i.i.i.i, ptr %.sroa.2.0.copyload.i.i.i.i, i64 noundef %i.l)
          to label %.noexc15 unwind label %.loopexit112 ; 2 uses

.noexc15:                                         ; preds = %bb.h
  %i.q = extractvalue { i64, ptr } %i.p, 0
  %i.r = extractvalue { i64, ptr } %i.p, 1        ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i, i64 %.sroa.0.0.copyload.i.i.i.i
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.noexc15
  store i32 1, ptr %i.g, align 8, !tbaa !169, !alias.scope !166
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.noexc15
  %i.u = load i64, ptr %4, align 8, !tbaa !160, !alias.scope !166 ; 5 uses
  %i.v = icmp ugt i64 %i.u, %.sroa.0.0.copyload.i.i.i.i
  br i1 %i.v, label %bb.k, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, i64 noundef %i.u, i64 noundef %.sroa.0.0.copyload.i.i.i.i) #33
          to label %.noexc16 unwind label %.loopexit.split-lp113

.noexc16:                                         ; preds = %bb.k
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i: ; preds = %bb.j
  %i.w = ptrtoint ptr %i.r to i64
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i, i64 %i.u ; 2 uses
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.w, %i.y
  %i.aa = sub nuw i64 %.sroa.0.0.copyload.i.i.i.i, %i.u
  %.sroa.speculated.i.i.i.i14 = call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.z) ; 3 uses
  store i64 %.sroa.speculated.i.i.i.i14, ptr %i.h, align 8, !tbaa !55, !alias.scope !166
  store ptr %i.x, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !97, !alias.scope !166
  %i.ab = add i64 %i.u, %i.q
  %i.ac = add i64 %i.ab, %.sroa.speculated.i.i.i.i14 ; 3 uses
  store i64 %i.ac, ptr %4, align 8, !tbaa !160, !alias.scope !166
  %.not.i.i.i = icmp eq i64 %.sroa.speculated.i.i.i.i14, 0
  br i1 %.not.i.i.i, label %bb.f, label %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit.loopexit, !llvm.loop !171

_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit.loopexit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i
  %.pre = load i32, ptr %i.g, align 8, !tbaa !169
  %i.ad = icmp ne i32 %.pre, 2
  br label %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit

_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit: ; preds = %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit.loopexit, %bb.g, %bb.d
  %i.ae = phi i64 [ %i.ac, %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit.loopexit ], [ %i.l, %bb.g ], [ %1, %bb.d ]
  %i.af = phi i1 [ %i.ad, %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit.loopexit ], [ false, %bb.g ], [ false, %bb.d ]
  %.sroa.0.0.copyload.i.i.i17 = load i64, ptr %3, align 8, !tbaa !55, !noalias !172 ; 2 uses
  %i.ag = icmp ne i64 %i.ae, %.sroa.0.0.copyload.i.i.i17
  %.not3.i145 = select i1 %i.af, i1 true, i1 %i.ag
  br i1 %.not3.i145, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  br label %bb.l

._crit_edge:                                      ; preds = %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit, %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit
  %.sroa.26.1.lcssa = phi ptr [ %.sroa.26.0, %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit ], [ %.sroa.26.2, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ] ; 8 uses
  %.sroa.13.1.lcssa = phi ptr [ %.sroa.26.0, %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit ], [ %.sroa.13.2, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ] ; 6 uses
  %.sroa.066.1.lcssa = phi ptr [ %.sroa.066.0, %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit ], [ %.sroa.066.2, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ] ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br i1 %i.a, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit39, label %bb.y

.loopexit112:                                     ; preds = %bb.h
  %lpad.loopexit114 = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.loopexit.split-lp113:                            ; preds = %bb.k
  %lpad.loopexit.split-lp115 = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.loopexit:                                        ; preds = %bb.t
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.loopexit.split-lp:                               ; preds = %bb.w
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.l:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit
  %.sroa.066.1148 = phi ptr [ %.sroa.066.0, %.lr.ph ], [ %.sroa.066.2, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ] ; 9 uses
  %.sroa.13.1147 = phi ptr [ %.sroa.26.0, %.lr.ph ], [ %.sroa.13.2, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ] ; 10 uses
  %.sroa.26.1146 = phi ptr [ %.sroa.26.0, %.lr.ph ], [ %.sroa.26.2, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ] ; 3 uses
  %.sroa.050.0.copyload = load i64, ptr %i.h, align 8, !tbaa !55 ; 3 uses
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !97 ; 3 uses
  %i.ah = icmp eq i64 %.sroa.050.0.copyload, 1
  br i1 %i.ah, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, label %bb.m

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.l
  %lhsc = load i8, ptr %.sroa.7.0.copyload, align 1
  %i.ai = icmp eq i8 %lhsc, 46
  br i1 %i.ai, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, label %bb.m

.loopexit107:                                     ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit109 = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.loopexit.split-lp108:                            ; preds = %bb.p
  %lpad.loopexit.split-lp110 = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.m:                                             ; preds = %bb.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %.not.i = icmp eq ptr %.sroa.13.1147, %.sroa.26.1146
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 %.sroa.050.0.copyload, ptr %.sroa.13.1147, align 8, !tbaa !55
  %.sroa.7.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %.sroa.13.1147, i64 8
  store ptr %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx53, align 8, !tbaa !97
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.13.1147, i64 16
  br label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit

bb.o:                                             ; preds = %bb.m
  %i.ak = ptrtoint ptr %.sroa.13.1147 to i64
  %i.al = ptrtoint ptr %.sroa.066.1148 to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 4 uses
  %i.an = icmp eq i64 %i.am, 9223372036854775792
  br i1 %i.an, label %bb.p, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #33
          to label %.noexc19.a unwind label %.loopexit.split-lp108

.noexc19.a:                                       ; preds = %bb.p
  unreachable

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.o
  %i.ao = ashr exact i64 %i.am, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ao, i64 1)
  %i.ap = add nsw i64 %.sroa.speculated.i.i.i, %i.ao ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %i.ao
  %i.ar = call i64 @llvm.umin.i64(i64 %i.ap, i64 576460752303423487)
  %i.as = select i1 %i.aq, i64 576460752303423487, i64 %i.ar ; 2 uses
  %i.at = shl nuw nsw i64 %i.as, 4
  %i.au = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #34
          to label %.noexc20 unwind label %.loopexit107 ; 5 uses

.noexc20:                                         ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.am ; 2 uses
  store i64 %.sroa.050.0.copyload, ptr %i.av, align 8, !tbaa !55
  %.sroa.7.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx55, align 8, !tbaa !97
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.066.1148, %.sroa.13.1147
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc20, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i ], [ %i.au, %.noexc20 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i ], [ %.sroa.066.1148, %.noexc20 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !175, !alias.scope !176
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aw, %.sroa.13.1147
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !180

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc20
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.au, %.noexc20 ], [ %i.ax, %.lr.ph.i.i.i.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i23.i.i = icmp eq ptr %.sroa.066.1148, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.066.1148, i64 noundef %i.am) #32
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.q, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.as
  br label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.n, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %.sroa.26.2 = phi ptr [ %.sroa.26.1146, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ %.sroa.26.1146, %bb.n ], [ %i.az, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ] ; 4 uses
  %.sroa.13.2 = phi ptr [ %.sroa.13.1147, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ %i.aj, %bb.n ], [ %i.ay, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ] ; 2 uses
  %.sroa.066.2 = phi ptr [ %.sroa.066.1148, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ %.sroa.066.1148, %bb.n ], [ %i.au, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ] ; 4 uses
  br label %bb.r

bb.r:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit
  %i.ba = load i32, ptr %i.g, align 8, !tbaa !169
  %i.bb = icmp eq i32 %i.ba, 1
  br i1 %i.bb, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 2, ptr %i.g, align 8, !tbaa !169
  %.pre176 = load i64, ptr %4, align 8
  br label %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit

bb.t:                                             ; preds = %bb.r
  %i.bc = load ptr, ptr %i.i, align 8, !tbaa !170 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.bc, align 8, !tbaa !55 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !97 ; 3 uses
  %i.bd = load i64, ptr %4, align 8, !tbaa !160
  %i.be = invoke { i64, ptr } @_ZNK4absl12lts_202505126ByChar4FindESt17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef nonnull align 1 dereferenceable(1) %i.j, i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i, i64 noundef %i.bd)
          to label %.noexc22.a unwind label %.loopexit ; 2 uses

.noexc22.a:                                       ; preds = %bb.t
  %i.bf = extractvalue { i64, ptr } %i.be, 0
  %i.bg = extractvalue { i64, ptr } %i.be, 1      ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 %.sroa.0.0.copyload.i.i
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.noexc22.a
  store i32 1, ptr %i.g, align 8, !tbaa !169
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.noexc22.a
  %i.bj = load i64, ptr %4, align 8, !tbaa !160   ; 5 uses
  %i.bk = icmp ugt i64 %i.bj, %.sroa.0.0.copyload.i.i
  br i1 %i.bk, label %bb.w, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i

bb.w:                                             ; preds = %bb.v
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, i64 noundef %i.bj, i64 noundef %.sroa.0.0.copyload.i.i) #33
          to label %.noexc23 unwind label %.loopexit.split-lp

.noexc23:                                         ; preds = %bb.w
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i: ; preds = %bb.v
  %i.bl = ptrtoint ptr %i.bg to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 %i.bj ; 2 uses
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = sub i64 %i.bl, %i.bn
  %i.bp = sub nuw i64 %.sroa.0.0.copyload.i.i, %i.bj
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.bp, i64 %i.bo) ; 3 uses
  store i64 %.sroa.speculated.i.i, ptr %i.h, align 8, !tbaa !55
  store ptr %i.bm, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !97
  %i.bq = add i64 %i.bj, %i.bf
  %i.br = add i64 %i.bq, %.sroa.speculated.i.i    ; 2 uses
  store i64 %i.br, ptr %4, align 8, !tbaa !160
  %.not.i21 = icmp eq i64 %.sroa.speculated.i.i, 0
  br i1 %.not.i21, label %bb.r, label %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit.loopexit, !llvm.loop !171

_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit.loopexit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i
  %.pre175 = load i32, ptr %i.g, align 8, !tbaa !169
  %i.bs = icmp ne i32 %.pre175, 2
  br label %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit

_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit: ; preds = %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit.loopexit, %bb.s
  %i.bt = phi i64 [ %i.br, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit.loopexit ], [ %.pre176, %bb.s ]
  %i.bu = phi i1 [ %i.bs, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit.loopexit ], [ false, %bb.s ]
  %i.bv = icmp ne i64 %i.bt, %.sroa.0.0.copyload.i.i.i17
  %.not3.i = select i1 %i.bu, i1 true, i1 %i.bv
  br i1 %.not3.i, label %bb.l, label %._crit_edge

bb.x:                                             ; preds = %.loopexit107, %.loopexit.split-lp108, %.loopexit, %.loopexit.split-lp, %.loopexit112, %.loopexit.split-lp113
  %.sroa.26.4 = phi ptr [ %.sroa.26.2, %.loopexit.split-lp ], [ %.sroa.26.0, %.loopexit112 ], [ %.sroa.26.0, %.loopexit.split-lp113 ], [ %.sroa.26.2, %.loopexit ], [ %.sroa.13.1147, %.loopexit107 ], [ %.sroa.13.1147, %.loopexit.split-lp108 ]
  %.sroa.066.4 = phi ptr [ %.sroa.066.2, %.loopexit.split-lp ], [ %.sroa.066.0, %.loopexit112 ], [ %.sroa.066.0, %.loopexit.split-lp113 ], [ %.sroa.066.2, %.loopexit ], [ %.sroa.066.1148, %.loopexit107 ], [ %.sroa.066.1148, %.loopexit.split-lp108 ]
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit114, %.loopexit112 ], [ %lpad.loopexit.split-lp115, %.loopexit.split-lp113 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit109, %.loopexit107 ], [ %lpad.loopexit.split-lp110, %.loopexit.split-lp108 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %.body

bb.y:                                             ; preds = %._crit_edge
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 %1
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -1
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !47
  %i.bz = icmp eq i8 %i.by, 47
  br i1 %i.bz, label %bb.z, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit39

bb.z:                                             ; preds = %bb.y
  %.not.i.i24 = icmp eq ptr %.sroa.13.1.lcssa, %.sroa.26.1.lcssa
  br i1 %.not.i.i24, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i64 0, ptr %.sroa.13.1.lcssa, align 8, !tbaa !55
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.13.1.lcssa, i64 8
  store ptr @.str.9, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !97
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.13.1.lcssa, i64 16
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit39

bb.ab:                                            ; preds = %bb.z
  %i.cb = ptrtoint ptr %.sroa.26.1.lcssa to i64
  %i.cc = ptrtoint ptr %.sroa.066.1.lcssa to i64
  %i.cd = sub i64 %i.cb, %i.cc                    ; 4 uses
  %i.ce = icmp eq i64 %i.cd, 9223372036854775792
  br i1 %i.ce, label %bb.ac, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i25

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #33
          to label %.noexc37 unwind label %bb.ae

.noexc37:                                         ; preds = %bb.ac
  unreachable

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i25: ; preds = %bb.ab
  %i.cf = ashr exact i64 %i.cd, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i26 = call i64 @llvm.umax.i64(i64 %i.cf, i64 1)
  %i.cg = add nsw i64 %.sroa.speculated.i.i.i.i26, %i.cf ; 2 uses
  %i.ch = icmp ult i64 %i.cg, %i.cf
  %i.ci = call i64 @llvm.umin.i64(i64 %i.cg, i64 576460752303423487)
  %i.cj = select i1 %i.ch, i64 576460752303423487, i64 %i.ci ; 2 uses
  %i.ck = shl nuw nsw i64 %i.cj, 4
  %i.cl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #34
          to label %.noexc38 unwind label %bb.ae  ; 5 uses

.noexc38:                                         ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i25
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cd ; 2 uses
  store i64 0, ptr %i.cm, align 8, !tbaa !55
  %.sroa.6.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr @.str.9, ptr %.sroa.6.0..sroa_idx46, align 8, !tbaa !97
  %.not10.i.i.i.i.i.i28 = icmp eq ptr %.sroa.066.1.lcssa, %.sroa.26.1.lcssa
  br i1 %.not10.i.i.i.i.i.i28, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i33, label %.lr.ph.i.i.i.i.i.i29

.lr.ph.i.i.i.i.i.i29:                             ; preds = %.noexc38, %.lr.ph.i.i.i.i.i.i29
  %.012.i.i.i.i.i.i30 = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i29 ], [ %i.cl, %.noexc38 ] ; 2 uses
  %.0911.i.i.i.i.i.i31 = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i29 ], [ %.sroa.066.1.lcssa, %.noexc38 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i30, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i31, i64 16, i1 false), !tbaa.struct !175, !alias.scope !181
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i31, i64 16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i30, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i32 = icmp eq ptr %i.cn, %.sroa.26.1.lcssa
  br i1 %.not.i.i.i.i.i.i32, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i33, label %.lr.ph.i.i.i.i.i.i29, !llvm.loop !180

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i33: ; preds = %.lr.ph.i.i.i.i.i.i29, %.noexc38
  %.0.lcssa.i.i.i.i.i.i34 = phi ptr [ %i.cl, %.noexc38 ], [ %i.co, %.lr.ph.i.i.i.i.i.i29 ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i34, i64 16
  %.not.i23.i.i.i35 = icmp eq ptr %.sroa.066.1.lcssa, null
  br i1 %.not.i23.i.i.i35, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i36, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i33
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.066.1.lcssa, i64 noundef %i.cd) #32
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i36

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i36: ; preds = %bb.ad, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i33
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %i.cj
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit39

bb.ae:                                            ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i25, %bb.ac
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit39: ; preds = %bb.aa, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i36, %bb.y, %._crit_edge
  %.sroa.26.5 = phi ptr [ %.sroa.26.1.lcssa, %._crit_edge ], [ %.sroa.26.1.lcssa, %bb.y ], [ %i.cq, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i36 ], [ %.sroa.26.1.lcssa, %bb.aa ] ; 3 uses
  %.sroa.13.3 = phi ptr [ %.sroa.13.1.lcssa, %._crit_edge ], [ %.sroa.13.1.lcssa, %bb.y ], [ %i.cp, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i36 ], [ %i.ca, %bb.aa ] ; 6 uses
  %.sroa.066.5 = phi ptr [ %.sroa.066.1.lcssa, %._crit_edge ], [ %.sroa.066.1.lcssa, %bb.y ], [ %i.cl, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i36 ], [ %.sroa.066.1.lcssa, %bb.aa ] ; 12 uses
  %.sroa.13.3246 = ptrtoint ptr %.sroa.13.3 to i64
  %.sroa.066.5247 = ptrtoint ptr %.sroa.066.5 to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !185)
  call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.cs, ptr %0, align 8, !tbaa !54, !alias.scope !191
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ct, align 8, !tbaa !53, !alias.scope !191
  store i8 0, ptr %i.cs, align 8, !tbaa !47, !alias.scope !191
  %.not41.i.i.i.i = icmp eq ptr %.sroa.066.5, %.sroa.13.3
  br i1 %.not41.i.i.i.i, label %_ZN4absl12lts_202505127StrJoinISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEEENSt7__cxx1112basic_stringIcS5_SaIcEEERKT_S6_.exit, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit39
  %i.cu = load i64, ptr %.sroa.066.5, align 8, !tbaa !102, !noalias !196 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.066.5, i64 16 ; 6 uses
  %.not4244.i.i.i.i = icmp eq ptr %i.cv, %.sroa.13.3 ; 2 uses
  br i1 %.not4244.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.af
  %i.cw = add i64 %.sroa.13.3246, -32
  %i.cx = sub i64 %i.cw, %.sroa.066.5247          ; 2 uses
  %min.iters.check = icmp ult i64 %i.cx, 64
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader252, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %i.cy = lshr i64 %i.cx, 4
  %i.cz = add nuw nsw i64 %i.cy, 1                ; 2 uses
  %n.mod.vf = and i64 %i.cz, 3                    ; 2 uses
  %i.da = icmp eq i64 %n.mod.vf, 0
  %i.db = select i1 %i.da, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.cz, %i.db               ; 2 uses
  %i.dc = shl i64 %n.vec, 4
  %i.dd = getelementptr i8, ptr %i.cv, i64 %i.dc
  %i.de = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.cu, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.de, %vector.ph ], [ %i.dl, %vector.body ]
  %vec.phi248 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.dm, %vector.body ]
  %i.df = shl i64 %index, 4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cv, i64 %i.df
  %i.dg = getelementptr i8, ptr %i.cv, i64 %i.df
  %next.gep249 = getelementptr i8, ptr %i.dg, i64 32
  %i.dh = add <2 x i64> %vec.phi, splat (i64 1)
  %i.di = add <2 x i64> %vec.phi248, splat (i64 1)
  %i.dj = load <3 x i64>, ptr %next.gep, align 8, !tbaa !102, !noalias !196
  %strided.vec = shufflevector <3 x i64> %i.dj, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.dk = load <3 x i64>, ptr %next.gep249, align 8, !tbaa !102, !noalias !196
  %strided.vec251 = shufflevector <3 x i64> %i.dk, <3 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.dl = add <2 x i64> %i.dh, %strided.vec       ; 2 uses
  %i.dm = add <2 x i64> %i.di, %strided.vec251    ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %middle.block, label %vector.body, !llvm.loop !197

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.dm, %i.dl
  %i.do = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %.lr.ph.i.i.i.i.preheader252

.lr.ph.i.i.i.i.preheader252:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.ph = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.preheader ], [ %i.dd, %middle.block ]
  %.02545.i.i.i.i.ph = phi i64 [ %i.cu, %.lr.ph.i.i.i.i.preheader ], [ %i.do, %middle.block ]
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.af
  %.025.lcssa.i.i.i.i = phi i64 [ %i.cu, %bb.af ], [ %i.ds, %.lr.ph.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i40 = icmp eq i64 %.025.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i.i40, label %_ZN4absl12lts_202505127StrJoinISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEEENSt7__cxx1112basic_stringIcS5_SaIcEEERKT_S6_.exit.thread, label %bb.ag

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader252, %.lr.ph.i.i.i.i
  %i.dp = phi ptr [ %i.dt, %.lr.ph.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.preheader252 ] ; 2 uses
  %.02545.i.i.i.i = phi i64 [ %i.ds, %.lr.ph.i.i.i.i ], [ %.02545.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader252 ]
  %i.dq = add i64 %.02545.i.i.i.i, 1
  %i.dr = load i64, ptr %i.dp, align 8, !tbaa !102, !noalias !196
  %i.ds = add i64 %i.dq, %i.dr                    ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 16 ; 2 uses
  %.not42.i.i.i.i = icmp eq ptr %i.dt, %.sroa.13.3
  br i1 %.not42.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !200

bb.ag:                                            ; preds = %._crit_edge.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.025.lcssa.i.i.i.i, i8 noundef signext 0)
          to label %_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit.i.i.i.i unwind label %bb.ah

_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit.i.i.i.i: ; preds = %bb.ag
  %i.du = load ptr, ptr %0, align 8, !tbaa !49, !alias.scope !191 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.066.5, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !104, !noalias !196
  %i.dx = load i64, ptr %.sroa.066.5, align 8, !tbaa !102, !noalias !196
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.du, ptr align 1 %i.dw, i64 %i.dx, i1 false)
  br i1 %.not4244.i.i.i.i, label %_ZN4absl12lts_202505127StrJoinISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEEENSt7__cxx1112basic_stringIcS5_SaIcEEERKT_S6_.exit.thread, label %.lr.ph49.preheader.i.i.i.i

.lr.ph49.preheader.i.i.i.i:                       ; preds = %_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit.i.i.i.i
  %i.dy = load i64, ptr %.sroa.066.5, align 8, !tbaa !102, !noalias !196
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dy
  br label %.lr.ph49.i.i.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.ea = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eb = load ptr, ptr %0, align 8, !tbaa !49, !alias.scope !191 ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.cs
  br i1 %i.ec, label %.body.thread102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.ah
  %i.ed = load i64, ptr %i.cs, align 8, !tbaa !47, !alias.scope !191
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ee) #32
  br label %.body.thread102

.lr.ph49.i.i.i.i:                                 ; preds = %.lr.ph49.i.i.i.i, %.lr.ph49.preheader.i.i.i.i
  %i.ef = phi ptr [ %i.em, %.lr.ph49.i.i.i.i ], [ %i.cv, %.lr.ph49.preheader.i.i.i.i ] ; 4 uses
  %.048.i.i.i.i = phi ptr [ %i.el, %.lr.ph49.i.i.i.i ], [ %i.dz, %.lr.ph49.preheader.i.i.i.i ] ; 2 uses
  %.sroa.0.047.i.i.i.i = phi ptr [ %i.ef, %.lr.ph49.i.i.i.i ], [ %.sroa.066.5, %.lr.ph49.preheader.i.i.i.i ]
  store i8 47, ptr %.048.i.i.i.i, align 1
  %i.eg = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i, i64 1 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0.047.i.i.i.i, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !104, !noalias !196
  %i.ej = load i64, ptr %i.ef, align 8, !tbaa !102, !noalias !196
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eg, ptr align 1 %i.ei, i64 %i.ej, i1 false)
  %i.ek = load i64, ptr %i.ef, align 8, !tbaa !102, !noalias !196
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 2 uses
  %.not43.i.i.i.i = icmp eq ptr %i.em, %.sroa.13.3
  br i1 %.not43.i.i.i.i, label %_ZN4absl12lts_202505127StrJoinISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEEENSt7__cxx1112basic_stringIcS5_SaIcEEERKT_S6_.exit.thread, label %.lr.ph49.i.i.i.i, !llvm.loop !201

_ZN4absl12lts_202505127StrJoinISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEEENSt7__cxx1112basic_stringIcS5_SaIcEEERKT_S6_.exit: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_.exit39
  %.not.i.i.i41 = icmp eq ptr %.sroa.13.3, null
  br i1 %.not.i.i.i41, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, label %_ZN4absl12lts_202505127StrJoinISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEEENSt7__cxx1112basic_stringIcS5_SaIcEEERKT_S6_.exit.thread

_ZN4absl12lts_202505127StrJoinISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEEENSt7__cxx1112basic_stringIcS5_SaIcEEERKT_S6_.exit.thread: ; preds = %.lr.ph49.i.i.i.i, %._crit_edge.i.i.i.i, %_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit.i.i.i.i, %_ZN4absl12lts_202505127StrJoinISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEEENSt7__cxx1112basic_stringIcS5_SaIcEEERKT_S6_.exit
  %i.en = ptrtoint ptr %.sroa.26.5 to i64
  %i.eo = ptrtoint ptr %.sroa.066.5 to i64
  %i.ep = sub i64 %i.en, %i.eo
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.066.5, i64 noundef %i.ep) #32
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit: ; preds = %_ZN4absl12lts_202505127StrJoinISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEEENSt7__cxx1112basic_stringIcS5_SaIcEEERKT_S6_.exit, %_ZN4absl12lts_202505127StrJoinISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS6_EEEENSt7__cxx1112basic_stringIcS5_SaIcEEERKT_S6_.exit.thread
  ret void

.body:                                            ; preds = %bb.x, %bb.ae
  %.sroa.26.6 = phi ptr [ %.sroa.26.4, %bb.x ], [ %.sroa.26.1.lcssa, %bb.ae ]
  %.sroa.066.6 = phi ptr [ %.sroa.066.4, %bb.x ], [ %.sroa.066.1.lcssa, %bb.ae ] ; 2 uses
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.x ], [ %i.cr, %bb.ae ] ; 2 uses
  %.not.i.i.i42 = icmp eq ptr %.sroa.066.6, null
  br i1 %.not.i.i.i42, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit43, label %.body.thread102

.body.thread102:                                  ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %.body
  %.pn.pn.pn.pn95 = phi { ptr, i32 } [ %i.ea, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %.pn.pn.pn.pn, %.body ], [ %i.ea, %bb.ah ]
  %.sroa.066.694 = phi ptr [ %.sroa.066.5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %.sroa.066.6, %.body ], [ %.sroa.066.5, %bb.ah ] ; 2 uses
  %.sroa.26.693 = phi ptr [ %.sroa.26.5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %.sroa.26.6, %.body ], [ %.sroa.26.5, %bb.ah ]
  %i.eq = ptrtoint ptr %.sroa.26.693 to i64
  %i.er = ptrtoint ptr %.sroa.066.694 to i64
  %i.es = sub i64 %i.eq, %i.er
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.066.694, i64 noundef %i.es) #32
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISt4pairIS9_S9_ESaISC_EEEENS1_10StringHashENS1_8StringEqESaISB_IKS9_SE_EEE4findISt17basic_string_viewIcS7_EEENSL_8iteratorERKT_:bb.a
  br label %.split, !llvm.loop !222

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISt4pairIS9_S9_ESaISC_EEEENS1_10StringHashENS1_8StringEqESaISB_IKS9_SE_EEE10find_largeISt17basic_string_viewIcS7_EEENSL_8iteratorERKT_m.exit: ; preds = %._crit_edge.i, %._crit_edge.i.us, %.thread32.i
  %.sroa.0.4.ph.i = phi ptr [ %i.bn, %.thread32.i ], [ null, %._crit_edge.i.us ], [ null, %._crit_edge.i ]
  %.sroa.3.4.ph.i = phi ptr [ %.us-phi15, %.thread32.i ], [ undef, %._crit_edge.i.us ], [ undef, %._crit_edge.i ]
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i, 0
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %.sroa.3.4.ph.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISt4pairIS9_S9_ESaISC_EEEENS1_10StringHashENS1_8StringEqESaISB_IKS9_SE_EEE10find_smallISt17basic_string_viewIcS7_EEENSL_8iteratorERKT_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISt4pairIS9_S9_ESaISC_EEEENS1_10StringHashENS1_8StringEqESaISB_IKS9_SE_EEE10find_smallISt17basic_string_viewIcS7_EEENSL_8iteratorERKT_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISt4pairIS9_S9_ESaISC_EEEEvE5applyINS1_12raw_hash_setISF_NS1_10StringHashENS1_8StringEqESaISB_IKS9_SE_EEE12EqualElementISt17basic_string_viewIcS7_EEEJRSM_ESF_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSV_DpOSW_.exit.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.c, %bb.b, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISt4pairIS9_S9_ESaISC_EEEENS1_10StringHashENS1_8StringEqESaISB_IKS9_SE_EEE10find_largeISt17basic_string_viewIcS7_EEENSL_8iteratorERKT_m.exit
  %.pn = phi { ptr, ptr } [ %.fca.1.insert.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISt4pairIS9_S9_ESaISC_EEEENS1_10StringHashENS1_8StringEqESaISB_IKS9_SE_EEE10find_largeISt17basic_string_viewIcS7_EEENSL_8iteratorERKT_m.exit ], [ %.fca.1.insert.i.i, %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISt4pairIS9_S9_ESaISC_EEEEvE5applyINS1_12raw_hash_setISF_NS1_10StringHashENS1_8StringEqESaISB_IKS9_SE_EEE12EqualElementISt17basic_string_viewIcS7_EEEJRSM_ESF_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSV_DpOSW_.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ { ptr null, ptr undef }, %bb.c ], [ { ptr null, ptr undef }, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i ]
  ret { ptr, ptr } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #24

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #25 comdat align 2 {
bb.a:
  %i.a = icmp ult i64 %2, 9
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ugt i64 %2, 3
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.0.copyload.i.i = load i32, ptr %1, align 1
  %i.c = zext i32 %.0.copyload.i.i to i64
  %i.d = shl nuw i64 %i.c, 32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -4
  %.0.copyload.i4.i = load i32, ptr %i.f, align 1
  %i.g = zext i32 %.0.copyload.i4.i to i64
  %i.h = or disjoint i64 %i.d, %i.g
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load i8, ptr %1, align 1, !tbaa !47
  %i.j = zext i8 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 16
  %i.l = getelementptr i8, ptr %1, i64 %2
  %i.m = getelementptr i8, ptr %i.l, i64 -1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !47
  %i.o = zext i8 %i.n to i64
  %i.p = or disjoint i64 %i.k, %i.o
  %i.q = lshr i64 %2, 1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !47
  %i.t = zext i8 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 8
  %i.v = or disjoint i64 %i.p, %i.u
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.0.i = phi i64 [ %i.h, %bb.c ], [ %i.v, %bb.e ]
  %i.w = xor i64 %.0.i, %0
  %i.x = mul i64 %i.w, -2543921745674291987
  %i.y = tail call noundef i64 @llvm.bswap.i64(i64 %i.x)
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

bb.g:                                             ; preds = %bb.a
  %i.z = icmp ult i64 %2, 17
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.0.copyload.i.i.i = load i64, ptr %1, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -8
  %.0.copyload.i.i4.i = load i64, ptr %i.ab, align 1
  %i.ac = xor i64 %.0.copyload.i.i.i, %0
  %i.ad = xor i64 %.0.copyload.i.i4.i, -2543921745674291987
  %i.ae = zext i64 %i.ac to i128
  %i.af = zext i64 %i.ad to i128
  %i.ag = mul nuw i128 %i.af, %i.ae               ; 2 uses
  %i.ah = lshr i128 %i.ag, 64
  %i.ai = xor i128 %i.ah, %i.ag
  %i.aj = trunc i128 %i.ai to i64
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

bb.i:                                             ; preds = %bb.g
  %i.ak = icmp ult i64 %2, 33
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.0.copyload.i.i20 = load i64, ptr %1, align 1
  %i.al = xor i64 %.0.copyload.i.i20, 1376283091369227076
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.0.copyload.i.i21 = load i64, ptr %i.am, align 1
  %i.an = xor i64 %.0.copyload.i.i21, %0
  %i.ao = zext i64 %i.al to i128
  %i.ap = zext i64 %i.an to i128
  %i.aq = mul nuw i128 %i.ap, %i.ao               ; 2 uses
  %i.ar = getelementptr i8, ptr %1, i64 %2        ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 -16
  %.0.copyload.i.i22 = load i64, ptr %i.as, align 1
  %i.at = xor i64 %.0.copyload.i.i22, 589684135938649225
  %i.au = getelementptr i8, ptr %i.ar, i64 -8
  %.0.copyload.i.i23 = load i64, ptr %i.au, align 1
  %i.av = xor i64 %.0.copyload.i.i23, %0
  %i.aw = zext i64 %i.at to i128
  %i.ax = zext i64 %i.av to i128
  %i.ay = mul nuw i128 %i.ax, %i.aw               ; 2 uses
  %i.az = xor i128 %i.ay, %i.aq
  %i.ba = lshr i128 %i.az, 64
  %i.bb = xor i128 %i.aq, %i.ba
  %i.bc = xor i128 %i.bb, %i.ay
  %i.bd = trunc i128 %i.bc to i64
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

bb.k:                                             ; preds = %bb.i
  %.not = icmp ugt i64 %2, 1024
  br i1 %.not, label %bb.m, label %bb.l, !prof !77

bb.l:                                             ; preds = %bb.k
  %i.be = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState16LowLevelHashImplEPKhm(ptr noundef %1, i64 noundef %2)
  %i.bf = xor i64 %i.be, %0
  %i.bg = zext i64 %i.bf to i128
  %i.bh = mul nuw i128 %i.bg, 15902822328035259629 ; 2 uses
  %i.bi = lshr i128 %i.bh, 64
  %i.bj = xor i128 %i.bi, %i.bh
  %i.bk = trunc i128 %i.bj to i64
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

bb.m:                                             ; preds = %bb.k
  %i.bl = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState28CombineLargeContiguousImpl64EmPKhm(i64 noundef %0, ptr noundef %1, i64 noundef %2)
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit: ; preds = %bb.f, %bb.d, %bb.m, %bb.l, %bb.j, %bb.h
  %.0 = phi i64 [ %i.bl, %bb.m ], [ %i.aj, %bb.h ], [ %i.bd, %bb.j ], [ %i.bk, %bb.l ], [ %i.y, %bb.f ], [ %0, %bb.d ]
  ret i64 %.0
}

declare noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState28CombineLargeContiguousImpl64EmPKhm(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #26

declare noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState16LowLevelHashImplEPKhm(ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZN4absl12lts_2025051216strings_internal9CatPiecesB5cxx11ESt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64) local_unnamed_addr #4

declare void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase24MergeFromConcreteMessageERKS2_PNS0_5ArenaEPFPvS6_PKvE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef ptr @_ZN6google8protobuf5Arena13CopyConstructINS0_33ExtensionRangeOptions_DeclarationEEEPvPS1_PKv(ptr noundef %0, ptr noundef %1) #19 comdat align 2 {
_ZN6google8protobuf8internal8PrefetchIL_ZZNS0_5Arena13CopyConstructINS0_33ExtensionRangeOptions_DeclarationEEEPvPS3_PKvE13kPrefetchOptsES5_S5_EEvPKT1_.exit:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = add i64 %i.a, 64
  %i.c = inttoptr i64 %i.b to ptr
  tail call void @llvm.prefetch.p0(ptr %i.c, i32 0, i32 3, i32 1)
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZN6google8protobuf8internal8PrefetchIL_ZZNS0_5Arena13CopyConstructINS0_33ExtensionRangeOptions_DeclarationEEEPvPS3_PKvE13kPrefetchOptsES5_S5_EEvPKT1_.exit
  %i.d = tail call noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168) %0, i64 noundef 48)
  br label %bb.c

bb.b:                                             ; preds = %_ZN6google8protobuf8internal8PrefetchIL_ZZNS0_5Arena13CopyConstructINS0_33ExtensionRangeOptions_DeclarationEEEPvPS3_PKvE13kPrefetchOptsES5_S5_EEvPKT1_.exit
  %i.e = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #34
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.d, %bb.a ], [ %i.e, %bb.b ]  ; 2 uses
  tail call void @_ZN6google8protobuf33ExtensionRangeOptions_DeclarationC1EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %.0, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(48) %1)
  ret ptr %.0
}

declare void @_ZN6google8protobuf33ExtensionRangeOptions_DeclarationC1EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6google8protobuf8compiler14DiskSourceTree7MappingESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !153  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !150    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775744
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6google8protobuf8compiler14DiskSourceTree7MappingESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #33
  unreachable

_ZNKSt6vectorIN6google8protobuf8compiler14DiskSourceTree7MappingESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 6                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 144115188075855871)
  %i.l = select i1 %i.j, i64 144115188075855871, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %3 = shl nuw nsw i64 %i.l, 6
  %4 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %3) #34 ; 5 uses
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 %i.n ; 7 uses
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %6, ptr %5, align 8, !tbaa !54
  %7 = load ptr, ptr %2, align 8, !tbaa !49       ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %.not.i = icmp eq ptr %7, %8
  br i1 %.not.i, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIN6google8protobuf8compiler14DiskSourceTree7MappingESaIS4_EE12_M_check_lenEmPKc.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !53   ; 3 uses
  %i.q = icmp ult i64 %i.p, 16
  tail call void @llvm.assume(i1 %i.q)
  %i.r = add nuw nsw i64 %i.p, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(1) %8, i64 %i.r, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt6vectorIN6google8protobuf8compiler14DiskSourceTree7MappingESaIS4_EE12_M_check_lenEmPKc.exit
  store ptr %7, ptr %5, align 8, !tbaa !49
  %i.s = load i64, ptr %8, align 8, !tbaa !47
  store i64 %i.s, ptr %6, align 8, !tbaa !47
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c
  %i.t = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.p, %bb.c ]
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.t, ptr %i.v, align 8, !tbaa !53
  store ptr %8, ptr %2, align 8, !tbaa !49
  store i64 0, ptr %i.u, align 8, !tbaa !53
  store i8 0, ptr %8, align 8, !tbaa !47
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 3 uses
  store ptr %i.y, ptr %i.w, align 8, !tbaa !54
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !49   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 5 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !53 ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 16
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = add nuw nsw i64 %i.ad, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.af, i1 false)
  br label %_ZN6google8protobuf8compiler14DiskSourceTree7MappingC2EOS3_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.z, ptr %i.w, align 8, !tbaa !49
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !47
  store i64 %i.ag, ptr %i.y, align 8, !tbaa !47
  %.phi.trans.insert37 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.pre38 = load i64, ptr %.phi.trans.insert37, align 8, !tbaa !53
  br label %_ZN6google8protobuf8compiler14DiskSourceTree7MappingC2EOS3_.exit

_ZN6google8protobuf8compiler14DiskSourceTree7MappingC2EOS3_.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i
  %i.ah = phi i64 [ %i.ad, %bb.d ], [ %.pre38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !53
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !49
  store i64 0, ptr %i.ai, align 8, !tbaa !53
  store i8 0, ptr %i.aa, align 8, !tbaa !47
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6google8protobuf8compiler14DiskSourceTree7MappingESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6google8protobuf8compiler14DiskSourceTree7MappingC2EOS3_.exit, %_ZSt19__relocate_object_aIN6google8protobuf8compiler14DiskSourceTree7MappingES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.bl, %_ZSt19__relocate_object_aIN6google8protobuf8compiler14DiskSourceTree7MappingES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i ], [ %4, %_ZN6google8protobuf8compiler14DiskSourceTree7MappingC2EOS3_.exit ] ; 8 uses
  %.0911.i.i.i = phi ptr [ %i.bk, %_ZSt19__relocate_object_aIN6google8protobuf8compiler14DiskSourceTree7MappingES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZN6google8protobuf8compiler14DiskSourceTree7MappingC2EOS3_.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ak, ptr %.012.i.i.i, align 8, !tbaa !54, !alias.scope !224, !noalias !227
  %i.al = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !49, !alias.scope !227, !noalias !224 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !53, !alias.scope !227, !noalias !224 ; 3 uses
  %i.aq = icmp ult i64 %i.ap, 16
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = add nuw nsw i64 %i.ap, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ak, ptr noundef nonnull align 8 dereferenceable(1) %i.am, i64 %i.ar, i1 false), !alias.scope !229
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.al, ptr %.012.i.i.i, align 8, !tbaa !49, !alias.scope !224, !noalias !227
  %i.as = load i64, ptr %i.am, align 8, !tbaa !47, !alias.scope !227, !noalias !224
  store i64 %i.as, ptr %i.ak, align 8, !tbaa !47, !alias.scope !224, !noalias !227
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !53, !alias.scope !227, !noalias !224
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.e
  %i.at = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.ap, %bb.e ]
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.at, ptr %i.av, align 8, !tbaa !53, !alias.scope !224, !noalias !227
  store ptr %i.am, ptr %.0911.i.i.i, align 8, !tbaa !49, !alias.scope !227, !noalias !224
  store i64 0, ptr %i.au, align 8, !tbaa !53, !alias.scope !227, !noalias !224
  store i8 0, ptr %i.am, align 8, !tbaa !47, !alias.scope !227, !noalias !224
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 3 uses
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !54, !alias.scope !224, !noalias !227
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !49, !alias.scope !227, !noalias !224 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 5 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !53, !alias.scope !227, !noalias !224 ; 3 uses
  %i.be = icmp ult i64 %i.bd, 16
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = add nuw nsw i64 %i.bd, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %i.ba, i64 %i.bf, i1 false), !alias.scope !229
  br label %_ZSt19__relocate_object_aIN6google8protobuf8compiler14DiskSourceTree7MappingES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  store ptr %i.az, ptr %i.aw, align 8, !tbaa !49, !alias.scope !224, !noalias !227
  %i.bg = load i64, ptr %i.ba, align 8, !tbaa !47, !alias.scope !227, !noalias !224
  store i64 %i.bg, ptr %i.ay, align 8, !tbaa !47, !alias.scope !224, !noalias !227
  %.phi.trans.insert5.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %.pre6.i.i.i.i = load i64, ptr %.phi.trans.insert5.i.i.i.i, align 8, !tbaa !53, !alias.scope !227, !noalias !224
  br label %_ZSt19__relocate_object_aIN6google8protobuf8compiler14DiskSourceTree7MappingES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN6google8protobuf8compiler14DiskSourceTree7MappingES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i, %bb.f
  %i.bh = phi i64 [ %i.bd, %bb.f ], [ %.pre6.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  store i64 %i.bh, ptr %i.bj, align 8, !tbaa !53, !alias.scope !224, !noalias !227
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !49, !alias.scope !227, !noalias !224
  store i64 0, ptr %i.bi, align 8, !tbaa !53, !alias.scope !227, !noalias !224
  store i8 0, ptr %i.ba, align 8, !tbaa !47, !alias.scope !227, !noalias !224
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bk, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6google8protobuf8compiler14DiskSourceTree7MappingESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !230

_ZNSt6vectorIN6google8protobuf8compiler14DiskSourceTree7MappingESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %_ZSt19__relocate_object_aIN6google8protobuf8compiler14DiskSourceTree7MappingES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i, %_ZN6google8protobuf8compiler14DiskSourceTree7MappingC2EOS3_.exit
  %.0.lcssa.i.i.i = phi ptr [ %4, %_ZN6google8protobuf8compiler14DiskSourceTree7MappingC2EOS3_.exit ], [ %i.bl, %_ZSt19__relocate_object_aIN6google8protobuf8compiler14DiskSourceTree7MappingES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 64 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN6google8protobuf8compiler14DiskSourceTree7MappingESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit30, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN6google8protobuf8compiler14DiskSourceTree7MappingESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %_ZSt19__relocate_object_aIN6google8protobuf8compiler14DiskSourceTree7MappingES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i27
  %.012.i.i.i18 = phi ptr [ %i.co, %_ZSt19__relocate_object_aIN6google8protobuf8compiler14DiskSourceTree7MappingES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i27 ], [ %i.bm, %_ZNSt6vectorIN6google8protobuf8compiler14DiskSourceTree7MappingESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 8 uses
  %.0911.i.i.i19 = phi ptr [ %i.cn, %_ZSt19__relocate_object_aIN6google8protobuf8compiler14DiskSourceTree7MappingES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i27 ], [ %1, %_ZNSt6vectorIN6google8protobuf8compiler14DiskSourceTree7MappingESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !234)
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.bn, ptr %.012.i.i.i18, align 8, !tbaa !54, !alias.scope !231, !noalias !234
  %i.bo = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !49, !alias.scope !234, !noalias !231 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20

bb.g:                                             ; preds = %.lr.ph.i.i.i17
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !53, !alias.scope !234, !noalias !231 ; 3 uses
  %i.bt = icmp ult i64 %i.bs, 16
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = add nuw nsw i64 %i.bs, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bn, ptr noundef nonnull align 8 dereferenceable(1) %i.bp, i64 %i.bu, i1 false), !alias.scope !236
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.bo, ptr %.012.i.i.i18, align 8, !tbaa !49, !alias.scope !231, !noalias !234
  %i.bv = load i64, ptr %i.bp, align 8, !tbaa !47, !alias.scope !234, !noalias !231
  store i64 %i.bv, ptr %i.bn, align 8, !tbaa !47, !alias.scope !231, !noalias !234
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !53, !alias.scope !234, !noalias !231
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20, %bb.g
  %i.bw = phi i64 [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20 ], [ %i.bs, %bb.g ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.bw, ptr %i.by, align 8, !tbaa !53, !alias.scope !231, !noalias !234
  store ptr %i.bp, ptr %.0911.i.i.i19, align 8, !tbaa !49, !alias.scope !234, !noalias !231
  store i64 0, ptr %i.bx, align 8, !tbaa !53, !alias.scope !234, !noalias !231
  store i8 0, ptr %i.bp, align 8, !tbaa !47, !alias.scope !234, !noalias !231
  %i.bz = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 48 ; 3 uses
  store ptr %i.cb, ptr %i.bz, align 8, !tbaa !54, !alias.scope !231, !noalias !234
  %i.cc = load ptr, ptr %i.ca, align 8, !tbaa !49, !alias.scope !234, !noalias !231 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 48 ; 5 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i24

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i23
  %i.cf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !53, !alias.scope !234, !noalias !231 ; 3 uses
  %i.ch = icmp ult i64 %i.cg, 16
  tail call void @llvm.assume(i1 %i.ch)
  %i.ci = add nuw nsw i64 %i.cg, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cb, ptr noundef nonnull align 8 dereferenceable(1) %i.cd, i64 %i.ci, i1 false), !alias.scope !236
  br label %_ZSt19__relocate_object_aIN6google8protobuf8compiler14DiskSourceTree7MappingES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i23
  store ptr %i.cc, ptr %i.bz, align 8, !tbaa !49, !alias.scope !231, !noalias !234
  %i.cj = load i64, ptr %i.cd, align 8, !tbaa !47, !alias.scope !234, !noalias !231
  store i64 %i.cj, ptr %i.cb, align 8, !tbaa !47, !alias.scope !231, !noalias !234
  %.phi.trans.insert5.i.i.i.i25 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40
  %.pre6.i.i.i.i26 = load i64, ptr %.phi.trans.insert5.i.i.i.i25, align 8, !tbaa !53, !alias.scope !234, !noalias !231
  br label %_ZSt19__relocate_object_aIN6google8protobuf8compiler14DiskSourceTree7MappingES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i27

_ZSt19__relocate_object_aIN6google8protobuf8compiler14DiskSourceTree7MappingES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i27: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i24, %bb.h
  %i.ck = phi i64 [ %i.cg, %bb.h ], [ %.pre6.i.i.i.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i24 ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40
  %i.cm = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40
  store i64 %i.ck, ptr %i.cm, align 8, !tbaa !53, !alias.scope !231, !noalias !234
  store ptr %i.cd, ptr %i.ca, align 8, !tbaa !49, !alias.scope !234, !noalias !231
  store i64 0, ptr %i.cl, align 8, !tbaa !53, !alias.scope !234, !noalias !231
  store i8 0, ptr %i.cd, align 8, !tbaa !47, !alias.scope !234, !noalias !231
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 64 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 64 ; 2 uses
  %.not.i.i.i28 = icmp eq ptr %i.cn, %i.b
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIN6google8protobuf8compiler14DiskSourceTree7MappingESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit30, label %.lr.ph.i.i.i17, !llvm.loop !230

_ZNSt6vectorIN6google8protobuf8compiler14DiskSourceTree7MappingESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit30: ; preds = %_ZSt19__relocate_object_aIN6google8protobuf8compiler14DiskSourceTree7MappingES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i27, %_ZNSt6vectorIN6google8protobuf8compiler14DiskSourceTree7MappingESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i29 = phi ptr [ %i.bm, %_ZNSt6vectorIN6google8protobuf8compiler14DiskSourceTree7MappingESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.co, %_ZSt19__relocate_object_aIN6google8protobuf8compiler14DiskSourceTree7MappingES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i27 ]
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i31 = icmp eq ptr %i.c, null
  br i1 %.not.i31, label %_ZNSt12_Vector_baseIN6google8protobuf8compiler14DiskSourceTree7MappingESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN6google8protobuf8compiler14DiskSourceTree7MappingESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit30
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !156
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = sub i64 %i.cr, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cs) #32
  br label %_ZNSt12_Vector_baseIN6google8protobuf8compiler14DiskSourceTree7MappingESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN6google8protobuf8compiler14DiskSourceTree7MappingESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorIN6google8protobuf8compiler14DiskSourceTree7MappingESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit30, %bb.i
  store ptr %4, ptr %0, align 8, !tbaa !150
  store ptr %.0.lcssa.i.i.i29, ptr %i.a, align 8, !tbaa !153
  %i.ct = getelementptr inbounds nuw [64 x i8], ptr %4, i64 %i.l
  store ptr %i.ct, ptr %i.cp, align 8, !tbaa !156
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #26

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold nofree noreturn }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #30 = { noreturn nounwind }
attributes #31 = { nounwind }
attributes #32 = { builtin nounwind }
attributes #33 = { noreturn }
attributes #34 = { builtin allocsize(0) }
attributes #35 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"vtable pointer", !6, i64 0}
!9 = !{!10, !12, i64 8}
!10 = !{!"_ZTSN6google8protobuf8compiler28SourceTreeDescriptorDatabaseE", !11, i64 0, !12, i64 8, !14, i64 16, !15, i64 24, !16, i64 32, !17, i64 40, !32, i64 104, !35, i64 120}
!11 = !{!"_ZTSN6google8protobuf18DescriptorDatabaseE"}
!12 = !{!"p1 _ZTSN6google8protobuf8compiler10SourceTreeE", !13, i64 0}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!"p1 _ZTSN6google8protobuf18DescriptorDatabaseE", !13, i64 0}
!15 = !{!"p1 _ZTSN6google8protobuf8compiler23MultiFileErrorCollectorE", !13, i64 0}
!16 = !{!"bool", !5, i64 0}
!17 = !{!"_ZTSN6google8protobuf8compiler19SourceLocationTableE", !18, i64 0, !27, i64 32}
!18 = !{!"_ZTSN4absl12lts_2025051213flat_hash_mapISt4pairIPKN6google8protobuf7MessageENS4_14DescriptorPool14ErrorCollector13ErrorLocationEES2_IiiENS0_13hash_internal4HashISB_EESt8equal_toISB_ESaIS2_IKSB_SC_EEEE", !19, i64 0}
!19 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt4pairIPKN6google8protobuf7MessageENS6_14DescriptorPool14ErrorCollector13ErrorLocationEES4_IiiEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaIS4_IKSD_SE_EEEE", !20, i64 0}
!20 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKN6google8protobuf7MessageENS6_14DescriptorPool14ErrorCollector13ErrorLocationEES4_IiiEEENS0_13hash_internal4HashISD_EESt8equal_toISD_ESaIS4_IKSD_SE_EEEE", !21, i64 0}
!21 = !{!"_ZTSN4absl12lts_2025051218container_internal15CompressedTupleIJNS1_12CommonFieldsENS0_13hash_internal4HashISt4pairIPKN6google8protobuf7MessageENS8_14DescriptorPool14ErrorCollector13ErrorLocationEEEESt8equal_toISF_ESaIcEEEE", !22, i64 0}
!22 = !{!"_ZTSN4absl12lts_2025051218container_internal25internal_compressed_tuple19CompressedTupleImplINS1_15CompressedTupleIJNS1_12CommonFieldsENS0_13hash_internal4HashISt4pairIPKN6google8protobuf7MessageENSA_14DescriptorPool14ErrorCollector13ErrorLocationEEEESt8equal_toISH_ESaIcEEEESt16integer_sequenceImJLm0ELm1ELm2ELm3EEELb1EEE", !23, i64 0}
!23 = !{!"_ZTSN4absl12lts_2025051218container_internal25internal_compressed_tuple7StorageINS1_12CommonFieldsELm0ELb0EEE", !24, i64 0}
!24 = !{!"_ZTSN4absl12lts_2025051218container_internal12CommonFieldsE", !25, i64 0, !26, i64 8, !5, i64 16}
!25 = !{!"long", !5, i64 0}
!26 = !{!"_ZTSN4absl12lts_2025051218container_internal13HashtableSizeE", !25, i64 0}
!27 = !{!"_ZTSN4absl12lts_2025051213flat_hash_mapISt4pairIPKN6google8protobuf7MessageENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES2_IiiENS0_13hash_internal4HashISE_EESt8equal_toISE_ESaIS2_IKSE_SF_EEEE", !28, i64 0}
!28 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt4pairIPKN6google8protobuf7MessageENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES4_IiiEEENS0_13hash_internal4HashISG_EESt8equal_toISG_ESaIS4_IKSG_SH_EEEE", !29, i64 0}
!29 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKN6google8protobuf7MessageENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES4_IiiEEENS0_13hash_internal4HashISG_EESt8equal_toISG_ESaIS4_IKSG_SH_EEEE", !30, i64 0}
!30 = !{!"_ZTSN4absl12lts_2025051218container_internal15CompressedTupleIJNS1_12CommonFieldsENS0_13hash_internal4HashISt4pairIPKN6google8protobuf7MessageENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESt8equal_toISI_ESG_EEE", !31, i64 0}
!31 = !{!"_ZTSN4absl12lts_2025051218container_internal25internal_compressed_tuple19CompressedTupleImplINS1_15CompressedTupleIJNS1_12CommonFieldsENS0_13hash_internal4HashISt4pairIPKN6google8protobuf7MessageENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESt8equal_toISK_ESI_EEESt16integer_sequenceImJLm0ELm1ELm2ELm3EEELb1EEE", !23, i64 0}
!32 = !{!"_ZTSN6google8protobuf8compiler28SourceTreeDescriptorDatabase24ValidationErrorCollectorE", !33, i64 0, !34, i64 8}
!33 = !{!"_ZTSN6google8protobuf14DescriptorPool14ErrorCollectorE"}
!34 = !{!"p1 _ZTSN6google8protobuf8compiler28SourceTreeDescriptorDatabaseE", !13, i64 0}
!35 = !{!"_ZTSN4absl12lts_2025051213flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISt4pairIS7_S7_ESaISA_EENS0_18container_internal10StringHashENSD_8StringEqESaIS9_IKS7_SC_EEEE", !36, i64 0}
!36 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISt4pairIS9_S9_ESaISC_EEEENS1_10StringHashENS1_8StringEqESaISB_IKS9_SE_EEEE", !37, i64 0}
!37 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISt4pairIS9_S9_ESaISC_EEEENS1_10StringHashENS1_8StringEqESaISB_IKS9_SE_EEEE", !38, i64 0}
!38 = !{!"_ZTSN4absl12lts_2025051218container_internal15CompressedTupleIJNS1_12CommonFieldsENS1_10StringHashENS1_8StringEqESaIcEEEE", !39, i64 0}
!39 = !{!"_ZTSN4absl12lts_2025051218container_internal25internal_compressed_tuple19CompressedTupleImplINS1_15CompressedTupleIJNS1_12CommonFieldsENS1_10StringHashENS1_8StringEqESaIcEEEESt16integer_sequenceImJLm0ELm1ELm2ELm3EEELb1EEE", !23, i64 0}
!40 = !{!10, !14, i64 16}
!41 = !{!10, !15, i64 24}
!42 = !{!10, !16, i64 32}
!43 = !{!24, !25, i64 0}
!44 = !{!45, !46, i64 0}
!45 = !{!"_ZTSZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISt4pairIS9_S9_ESaISC_EEEENS1_10StringHashENS1_8StringEqESaISB_IKS9_SE_EEE13destroy_slotsEvEUlPKNS1_6ctrl_tEPvE_", !46, i64 0}
!46 = !{!"p1 _ZTSN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISt4pairIS9_S9_ESaISC_EEEENS1_10StringHashENS1_8StringEqESaISB_IKS9_SE_EEEE", !13, i64 0}
!47 = !{!5, !5, i64 0}
!48 = !{!26, !25, i64 0}
!49 = !{!50, !52, i64 0}
!50 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !51, i64 0, !25, i64 8, !5, i64 16}
!51 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !52, i64 0}
!52 = !{!"p1 omnipotent char", !13, i64 0}
!53 = !{!50, !25, i64 8}
!54 = !{!51, !52, i64 0}
!55 = !{!25, !25, i64 0}
!56 = !{!57, !15, i64 40}
!57 = !{!"_ZTSN6google8protobuf8compiler28SourceTreeDescriptorDatabase24SingleFileErrorCollectorE", !58, i64 0, !50, i64 8, !15, i64 40, !16, i64 48}
!58 = !{!"_ZTSN6google8protobuf2io14ErrorCollectorE"}
!59 = !{!57, !16, i64 48}
!60 = !{!61, !63, i64 8}
!61 = !{!"_ZTSN6google8protobuf8compiler6ParserE", !62, i64 0, !63, i64 8, !64, i64 16, !65, i64 24, !16, i64 32, !16, i64 33, !16, i64 34, !50, i64 40, !66, i64 72, !4, i64 76, !50, i64 80, !67, i64 112}
!62 = !{!"p1 _ZTSN6google8protobuf2io9TokenizerE", !13, i64 0}
!63 = !{!"p1 _ZTSN6google8protobuf2io14ErrorCollectorE", !13, i64 0}
!64 = !{!"p1 _ZTSN6google8protobuf14SourceCodeInfoE", !13, i64 0}
!65 = !{!"p1 _ZTSN6google8protobuf8compiler19SourceLocationTableE", !13, i64 0}
!66 = !{!"_ZTSN6google8protobuf7EditionE", !5, i64 0}
!67 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !68, i64 0}
!68 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !69, i64 0}
!69 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !70, i64 0}
!70 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !71, i64 0, !71, i64 8, !71, i64 16}
!71 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0}
!72 = !{i8 0, i8 2}
!73 = !{}
!74 = !{!61, !65, i64 24}
!75 = !{!76, !25, i64 0}
!76 = !{!"_ZTSN6google8protobuf8internal16InternalMetadataE", !25, i64 0}
!77 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!78 = !{!79, !80, i64 0}
!79 = !{!"_ZTSN6google8protobuf8internal16InternalMetadata13ContainerBaseE", !80, i64 0}
!80 = !{!"p1 _ZTSN6google8protobuf5ArenaE", !13, i64 0}
!81 = !{ptr @_ZN6google8protobuf8compiler28SourceTreeDescriptorDatabase24SingleFileErrorCollectorD2Ev}
!82 = distinct !{null, null}
!83 = !{!84, !84, i64 0}
!84 = !{!"p1 _ZTSSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_E", !13, i64 0}
!85 = !{!86, !63, i64 0}
!86 = !{!"_ZTSN6google8protobuf10TextFormat6ParserE", !63, i64 0, !87, i64 8, !88, i64 16, !16, i64 24, !16, i64 25, !16, i64 26, !16, i64 27, !16, i64 28, !16, i64 29, !16, i64 30, !16, i64 31, !4, i64 32, !89, i64 40}
!87 = !{!"p1 _ZTSN6google8protobuf10TextFormat6FinderE", !13, i64 0}
!88 = !{!"p1 _ZTSN6google8protobuf10TextFormat13ParseInfoTreeE", !13, i64 0}
!89 = !{!"p1 _ZTSN6google8protobuf10TextFormat6Parser19UnsetFieldsMetadataE", !13, i64 0}
!90 = !{!91, !13, i64 0}
!91 = !{!"_ZTSN6google8protobuf8internal20RepeatedPtrFieldBaseE", !13, i64 0, !4, i64 8, !92, i64 12}
!92 = !{!"_ZTSN6google8protobuf8internal30TaggedInternalMetadataResolverILj0EEE", !4, i64 0}
!93 = !{!91, !4, i64 8}
!94 = !{!13, !13, i64 0}
!95 = !{!96, !13, i64 0}
!96 = !{!"_ZTSN6google8protobuf8internal15TaggedStringPtrE", !13, i64 0}
!97 = !{!52, !52, i64 0}
!98 = !{!99}
!99 = distinct !{!99, !100, !"_ZN4absl12lts_202505126StrCatIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_SA_SA_SA_DpRKT_: argument 0"}
!100 = distinct !{!100, !"_ZN4absl12lts_202505126StrCatIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_SA_SA_SA_DpRKT_"}
!101 = !{ptr @_ZN6google8protobuf8compiler28SourceTreeDescriptorDatabase24SingleFileErrorCollector11RecordErrorEiiSt17basic_string_viewIcSt11char_traitsIcEE}
!102 = !{!103, !25, i64 0}
!103 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !25, i64 0, !52, i64 8}
!104 = !{!103, !52, i64 8}
!105 = !{!106}
!106 = distinct !{!106, !107, !"_ZN4absl12lts_202505126StrCatIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_SA_SA_SA_DpRKT_: argument 0"}
!107 = distinct !{!107, !"_ZN4absl12lts_202505126StrCatIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_SA_SA_SA_DpRKT_"}
!108 = !{!92, !4, i64 0}
!109 = !{!32, !34, i64 8}
!110 = !{!111, !16, i64 67}
!111 = !{!"_ZTSN6google8protobuf14DescriptorPoolE", !112, i64 0, !115, i64 8, !122, i64 16, !14, i64 24, !123, i64 32, !124, i64 40, !125, i64 48, !132, i64 56, !16, i64 64, !16, i64 65, !16, i64 66, !16, i64 67, !139, i64 68, !16, i64 69, !16, i64 70, !16, i64 71, !16, i64 72, !16, i64 73, !16, i64 74, !140, i64 80, !143, i64 112}
!112 = !{!"_ZTSN4absl12lts_202505125MutexE", !113, i64 0}
!113 = !{!"_ZTSSt6atomicIlE", !114, i64 0}
!114 = !{!"_ZTSSt13__atomic_baseIlE", !25, i64 0}
!115 = !{!"_ZTSSt10unique_ptrIN4absl12lts_2025051213flat_hash_mapISt4pairIPKvS5_ES_IN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISA_EENS1_13hash_internal4HashIS6_EESt8equal_toIS6_ESaIS3_IKS6_SD_EEEESB_ISM_EE", !116, i64 0}
!116 = !{!"_ZTSSt15__uniq_ptr_dataIN4absl12lts_2025051213flat_hash_mapISt4pairIPKvS5_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISB_EENS1_13hash_internal4HashIS6_EESt8equal_toIS6_ESaIS3_IKS6_SE_EEEESC_ISN_ELb1ELb1EE", !117, i64 0}
!117 = !{!"_ZTSSt15__uniq_ptr_implIN4absl12lts_2025051213flat_hash_mapISt4pairIPKvS5_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISB_EENS1_13hash_internal4HashIS6_EESt8equal_toIS6_ESaIS3_IKS6_SE_EEEESC_ISN_EE", !118, i64 0}
!118 = !{!"_ZTSSt5tupleIJPN4absl12lts_2025051213flat_hash_mapISt4pairIPKvS5_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISB_EENS1_13hash_internal4HashIS6_EESt8equal_toIS6_ESaIS3_IKS6_SE_EEEESC_ISN_EEE", !119, i64 0}
!119 = !{!"_ZTSSt11_Tuple_implILm0EJPN4absl12lts_2025051213flat_hash_mapISt4pairIPKvS5_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISB_EENS1_13hash_internal4HashIS6_EESt8equal_toIS6_ESaIS3_IKS6_SE_EEEESC_ISN_EEE", !120, i64 0}
!120 = !{!"_ZTSSt10_Head_baseILm0EPN4absl12lts_2025051213flat_hash_mapISt4pairIPKvS5_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISB_EENS1_13hash_internal4HashIS6_EESt8equal_toIS6_ESaIS3_IKS6_SE_EEEELb0EE", !121, i64 0}
!121 = !{!"p1 _ZTSN4absl12lts_2025051213flat_hash_mapISt4pairIPKvS4_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISA_EENS0_13hash_internal4HashIS5_EESt8equal_toIS5_ESaIS2_IKS5_SD_EEEE", !13, i64 0}
!122 = !{!"p1 _ZTSN4absl12lts_202505125MutexE", !13, i64 0}
!123 = !{!"p1 _ZTSN6google8protobuf14DescriptorPool14ErrorCollectorE", !13, i64 0}
!124 = !{!"p1 _ZTSN6google8protobuf14DescriptorPoolE", !13, i64 0}
!125 = !{!"_ZTSSt10unique_ptrIN4absl12lts_2025051212AnyInvocableIKFvNS1_11FunctionRefIFvvEEEEEESt14default_deleteIS7_EE", !126, i64 0}
!126 = !{!"_ZTSSt15__uniq_ptr_dataIN4absl12lts_2025051212AnyInvocableIKFvNS1_11FunctionRefIFvvEEEEEESt14default_deleteIS7_ELb1ELb1EE", !127, i64 0}
!127 = !{!"_ZTSSt15__uniq_ptr_implIN4absl12lts_2025051212AnyInvocableIKFvNS1_11FunctionRefIFvvEEEEEESt14default_deleteIS7_EE", !128, i64 0}
!128 = !{!"_ZTSSt5tupleIJPN4absl12lts_2025051212AnyInvocableIKFvNS1_11FunctionRefIFvvEEEEEESt14default_deleteIS7_EEE", !129, i64 0}
!129 = !{!"_ZTSSt11_Tuple_implILm0EJPN4absl12lts_2025051212AnyInvocableIKFvNS1_11FunctionRefIFvvEEEEEESt14default_deleteIS7_EEE", !130, i64 0}
!130 = !{!"_ZTSSt10_Head_baseILm0EPN4absl12lts_2025051212AnyInvocableIKFvNS1_11FunctionRefIFvvEEEEEELb0EE", !131, i64 0}
!131 = !{!"p1 _ZTSN4absl12lts_2025051212AnyInvocableIKFvNS0_11FunctionRefIFvvEEEEEE", !13, i64 0}
!132 = !{!"_ZTSSt10unique_ptrIN6google8protobuf14DescriptorPool6TablesESt14default_deleteIS3_EE", !133, i64 0}
!133 = !{!"_ZTSSt15__uniq_ptr_dataIN6google8protobuf14DescriptorPool6TablesESt14default_deleteIS3_ELb1ELb1EE", !134, i64 0}
!134 = !{!"_ZTSSt15__uniq_ptr_implIN6google8protobuf14DescriptorPool6TablesESt14default_deleteIS3_EE", !135, i64 0}
end_hunk_1
