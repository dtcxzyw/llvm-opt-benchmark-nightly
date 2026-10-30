Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/config_vars?download=true
inline.NumInlined: 833
inline.NumDeleted: 396
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4absl12lts_2025051214flags_internal7FlagOpsISt8optionalIiEEEPvNS1_6FlagOpEPKvS5_S5_:bb.a

bb.g:                                             ; preds = %bb.a
  br label %_ZNSt16allocator_traitsISaIZN4absl12lts_2025051214flags_internal7FlagOpsISt8optionalIiEEEPvNS2_6FlagOpEPKvS6_S6_E12AlignedSpaceEE8allocateERSB_m.exit

bb.h:                                             ; preds = %bb.a
  %i.e = load i64, ptr %2, align 4                ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.e to i32
  %.sroa.6.0.extract.shift = and i64 %i.e, -1099511627776
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !24 ; 2 uses
  %i.f = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.f, label %_ZN4absl12lts_202505129ParseFlagISt8optionalIiEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_PNSt7__cxx1112basic_stringIcS6_SaIcEEE.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.g = call noundef zeroext i1 @_ZN4absl12lts_2025051214flags_internal13AbslParseFlagESt17basic_string_viewIcSt11char_traitsIcEEPiPNSt7__cxx1112basic_stringIcS4_SaIcEEE(i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload, ptr noundef nonnull %i.a, ptr noundef %3)
  br i1 %i.g, label %_ZN4absl12lts_202505129ParseFlagISt8optionalIiEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_PNSt7__cxx1112basic_stringIcS6_SaIcEEE.exit.thread37, label %_ZN4absl12lts_202505129ParseFlagISt8optionalIiEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_PNSt7__cxx1112basic_stringIcS6_SaIcEEE.exit

_ZN4absl12lts_202505129ParseFlagISt8optionalIiEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_PNSt7__cxx1112basic_stringIcS6_SaIcEEE.exit.thread37: ; preds = %bb.i
  %i.h = load i32, ptr %i.a, align 4, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %_ZN4absl12lts_202505129ParseFlagISt8optionalIiEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_PNSt7__cxx1112basic_stringIcS6_SaIcEEE.exit.thread

_ZN4absl12lts_202505129ParseFlagISt8optionalIiEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_PNSt7__cxx1112basic_stringIcS6_SaIcEEE.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %_ZNSt16allocator_traitsISaIZN4absl12lts_2025051214flags_internal7FlagOpsISt8optionalIiEEEPvNS2_6FlagOpEPKvS6_S6_E12AlignedSpaceEE8allocateERSB_m.exit

_ZN4absl12lts_202505129ParseFlagISt8optionalIiEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_PNSt7__cxx1112basic_stringIcS6_SaIcEEE.exit.thread: ; preds = %bb.h, %_ZN4absl12lts_202505129ParseFlagISt8optionalIiEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_PNSt7__cxx1112basic_stringIcS6_SaIcEEE.exit.thread37
  %.sroa.0.136 = phi i32 [ %i.h, %_ZN4absl12lts_202505129ParseFlagISt8optionalIiEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_PNSt7__cxx1112basic_stringIcS6_SaIcEEE.exit.thread37 ], [ %.sroa.0.0.extract.trunc, %bb.h ]
  %.sroa.5.0.insert.insert = phi i64 [ 4294967296, %_ZN4absl12lts_202505129ParseFlagISt8optionalIiEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_PNSt7__cxx1112basic_stringIcS6_SaIcEEE.exit.thread37 ], [ %.sroa.6.0.extract.shift, %bb.h ]
  %.sroa.0.0.insert.ext = zext i32 %.sroa.0.136 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.insert, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %2, align 4
  br label %_ZNSt16allocator_traitsISaIZN4absl12lts_2025051214flags_internal7FlagOpsISt8optionalIiEEEPvNS2_6FlagOpEPKvS6_S6_E12AlignedSpaceEE8allocateERSB_m.exit

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i8, ptr %i.i, align 4, !tbaa !30, !range !31, !noalias !71, !noundef !32
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %.thread.i.i.i, label %._crit_edge.i.i.i.i.i

.thread.i.i.i:                                    ; preds = %bb.j
  %i.l = load i32, ptr %1, align 4, !tbaa !27, !noalias !72
  call void @_ZN4absl12lts_2025051214flags_internal7UnparseB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i32 noundef %i.l)
  br label %_ZN4absl12lts_2025051211UnparseFlagISt8optionalIiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

._crit_edge.i.i.i.i.i:                            ; preds = %bb.j
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.m, ptr %4, align 8, !tbaa !33, !alias.scope !71
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.n, align 8, !tbaa !26, !alias.scope !71
  store i8 0, ptr %i.m, align 8, !tbaa !19, !alias.scope !71
  br label %_ZN4absl12lts_2025051211UnparseFlagISt8optionalIiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

_ZN4absl12lts_2025051211UnparseFlagISt8optionalIiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit: ; preds = %.thread.i.i.i, %._crit_edge.i.i.i.i.i
  %i.o = load ptr, ptr %2, align 8, !tbaa !18     ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  %i.r = load ptr, ptr %4, align 8, !tbaa !18     ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.t = icmp eq ptr %i.r, %i.s                   ; 2 uses
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZN4absl12lts_2025051211UnparseFlagISt8optionalIiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  br i1 %i.t, label %bb.k, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZN4absl12lts_2025051211UnparseFlagISt8optionalIiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  br i1 %i.t, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !26   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %.not21.i = icmp eq ptr %4, %2
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.l, !prof !22

bb.l:                                             ; preds = %bb.k
  switch i64 %i.v, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.x = load i8, ptr %i.r, align 1, !tbaa !19
  store i8 %i.x, ptr %i.o, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.r, i64 %i.v, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.y = load i64, ptr %i.u, align 8, !tbaa !26   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !26
  %i.aa = load ptr, ptr %2, align 8, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !19
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.r, ptr %2, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ae = load <2 x i64>, ptr %i.ad, align 8, !tbaa !19
  store <2 x i64> %i.ae, ptr %i.ac, align 8, !tbaa !19
  br label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.af = load i64, ptr %i.p, align 8, !tbaa !19
  store ptr %i.r, ptr %2, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = load <2 x i64>, ptr %i.ag, align 8, !tbaa !19
  store <2 x i64> %i.ai, ptr %i.ah, align 8, !tbaa !19
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.o, ptr %4, align 8, !tbaa !18
  store i64 %i.af, ptr %i.s, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.s, ptr %4, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.o, %bb.p
  %i.aj = phi ptr [ %i.o, %bb.o ], [ %i.s, %bb.p ], [ %i.r, %bb.k ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.ak, align 8, !tbaa !26
  store i8 0, ptr %i.aj, align 1, !tbaa !19
  %i.al = load ptr, ptr %4, align 8, !tbaa !18    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !19
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %_ZNSt16allocator_traitsISaIZN4absl12lts_2025051214flags_internal7FlagOpsISt8optionalIiEEEPvNS2_6FlagOpEPKvS6_S6_E12AlignedSpaceEE8allocateERSB_m.exit

bb.q:                                             ; preds = %bb.a
  br label %_ZNSt16allocator_traitsISaIZN4absl12lts_2025051214flags_internal7FlagOpsISt8optionalIiEEEPvNS2_6FlagOpEPKvS6_S6_E12AlignedSpaceEE8allocateERSB_m.exit

bb.r:                                             ; preds = %bb.a
  br label %_ZNSt16allocator_traitsISaIZN4absl12lts_2025051214flags_internal7FlagOpsISt8optionalIiEEEPvNS2_6FlagOpEPKvS6_S6_E12AlignedSpaceEE8allocateERSB_m.exit

_ZNSt16allocator_traitsISaIZN4absl12lts_2025051214flags_internal7FlagOpsISt8optionalIiEEEPvNS2_6FlagOpEPKvS6_S6_E12AlignedSpaceEE8allocateERSB_m.exit: ; preds = %bb.b, %_ZN4absl12lts_202505129ParseFlagISt8optionalIiEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_PNSt7__cxx1112basic_stringIcS6_SaIcEEE.exit.thread, %_ZN4absl12lts_202505129ParseFlagISt8optionalIiEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_PNSt7__cxx1112basic_stringIcS6_SaIcEEE.exit, %bb.a, %bb.r, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.1 = phi ptr [ null, %bb.r ], [ inttoptr (i64 8 to ptr), %bb.a ], [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.e ], [ inttoptr (i64 88 to ptr), %bb.q ], [ @_ZN4absl12lts_2025051213base_internal11FastTypeTagISt8optionalIiEE9kDummyVarE, %bb.f ], [ @_ZTISt8optionalIiE, %bb.g ], [ %i.b, %bb.b ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %2, %_ZN4absl12lts_202505129ParseFlagISt8optionalIiEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_PNSt7__cxx1112basic_stringIcS6_SaIcEEE.exit.thread ], [ null, %_ZN4absl12lts_202505129ParseFlagISt8optionalIiEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_PNSt7__cxx1112basic_stringIcS6_SaIcEEE.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN64AbslFlagDefaultGenForgrpc_client_channel_backup_poll_interval_ms3GenEPv(ptr noundef %0) #0 comdat align 2 {
bb.a:
  store i64 0, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN4absl12lts_2025051214flags_internal7FlagOpsISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPvNS1_6FlagOpEPKvSB_SB_(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::optional", align 8     ; 16 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  switch i32 %0, label %bb.ac [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %_ZNSt16allocator_traitsISaIZN4absl12lts_2025051214flags_internal7FlagOpsISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPvNS2_6FlagOpEPKvSC_SC_E12AlignedSpaceEE8allocateERSH_m.exit
    i32 5, label %bb.j
    i32 6, label %bb.k
    i32 7, label %bb.l
    i32 8, label %bb.u
    i32 9, label %bb.ab
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #16
  br label %_ZNSt16allocator_traitsISaIZN4absl12lts_2025051214flags_internal7FlagOpsISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPvNS2_6FlagOpEPKvSC_SC_E12AlignedSpaceEE8allocateERSH_m.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !35, !range !31, !noundef !32
  %i.f = trunc nuw i8 %i.e to i1
  store i8 0, ptr %i.d, align 8, !tbaa !35
  br i1 %i.f, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %2, align 8, !tbaa !18     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.j = load i64, ptr %i.h, align 8, !tbaa !19
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %2, i64 noundef 40) #17
  br label %_ZNSt16allocator_traitsISaIZN4absl12lts_2025051214flags_internal7FlagOpsISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPvNS2_6FlagOpEPKvSC_SC_E12AlignedSpaceEE8allocateERSH_m.exit

bb.e:                                             ; preds = %bb.a
  tail call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_copy_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %_ZNSt16allocator_traitsISaIZN4absl12lts_2025051214flags_internal7FlagOpsISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPvNS2_6FlagOpEPKvSC_SC_E12AlignedSpaceEE8allocateERSH_m.exit

bb.f:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store i8 0, ptr %i.m, align 8, !tbaa !35
  %i.n = load i8, ptr %i.l, align 8, !tbaa !35, !range !31, !noundef !32
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.g, label %_ZNSt16allocator_traitsISaIZN4absl12lts_2025051214flags_internal7FlagOpsISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPvNS2_6FlagOpEPKvSC_SC_E12AlignedSpaceEE8allocateERSH_m.exit

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.p, ptr %2, align 8, !tbaa !33
  %i.q = load ptr, ptr %1, align 8, !tbaa !18     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !26   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 %i.s, ptr %i.b, align 8, !tbaa !24
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %.noexc.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.g
  %i.u = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.u, ptr %2, align 8, !tbaa !18
  %i.v = load i64, ptr %i.b, align 8, !tbaa !24
  store i64 %i.v, ptr %i.p, align 8, !tbaa !19
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.noexc.i.i.i.i.i.i.i.i, %bb.g
  %i.w = phi ptr [ %i.u, %.noexc.i.i.i.i.i.i.i.i ], [ %i.p, %bb.g ] ; 2 uses
  switch i64 %i.s, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.x = load i8, ptr %i.q, align 1, !tbaa !19
  store i8 %i.x, ptr %i.w, align 1, !tbaa !19
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.q, i64 %i.s, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.y = load i64, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !26
  %i.aa = load ptr, ptr %2, align 8, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  store i8 1, ptr %i.m, align 8, !tbaa !35
  br label %_ZNSt16allocator_traitsISaIZN4absl12lts_2025051214flags_internal7FlagOpsISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPvNS2_6FlagOpEPKvSC_SC_E12AlignedSpaceEE8allocateERSH_m.exit

bb.j:                                             ; preds = %bb.a
  br label %_ZNSt16allocator_traitsISaIZN4absl12lts_2025051214flags_internal7FlagOpsISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPvNS2_6FlagOpEPKvSC_SC_E12AlignedSpaceEE8allocateERSH_m.exit

bb.k:                                             ; preds = %bb.a
  br label %_ZNSt16allocator_traitsISaIZN4absl12lts_2025051214flags_internal7FlagOpsISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPvNS2_6FlagOpEPKvSC_SC_E12AlignedSpaceEE8allocateERSH_m.exit

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 6 uses
  store i8 0, ptr %i.ad, align 8, !tbaa !35
  %i.ae = load i8, ptr %i.ac, align 8, !tbaa !35, !range !31, !noundef !32
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.m, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit27

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.ag, ptr %4, align 8, !tbaa !33
  %i.ah = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.aj, ptr %i.a, align 8, !tbaa !24
  %i.ak = icmp ugt i64 %i.aj, 15
  br i1 %i.ak, label %.noexc.i.i.i.i.i.i.i.i26, label %._crit_edge.i.i.i.i.i.i.i.i.i24

.noexc.i.i.i.i.i.i.i.i26:                         ; preds = %bb.m
  %i.al = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.al, ptr %4, align 8, !tbaa !18
  %i.am = load i64, ptr %i.a, align 8, !tbaa !24
  store i64 %i.am, ptr %i.ag, align 8, !tbaa !19
  br label %._crit_edge.i.i.i.i.i.i.i.i.i24

._crit_edge.i.i.i.i.i.i.i.i.i24:                  ; preds = %.noexc.i.i.i.i.i.i.i.i26, %bb.m
  %i.an = phi ptr [ %i.al, %.noexc.i.i.i.i.i.i.i.i26 ], [ %i.ag, %bb.m ] ; 2 uses
  switch i64 %i.aj, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i25
  ]

bb.n:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i24
  %i.ao = load i8, ptr %i.ah, align 1, !tbaa !19
  store i8 %i.ao, ptr %i.an, align 1, !tbaa !19
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i25

bb.o:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i24
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.an, ptr align 1 %i.ah, i64 %i.aj, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i25

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i25: ; preds = %bb.o, %bb.n, %._crit_edge.i.i.i.i.i.i.i.i.i24
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !24  ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !26
  %i.ar = load ptr, ptr %4, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ap
  store i8 0, ptr %i.as, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  store i8 1, ptr %i.ad, align 8, !tbaa !35
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit27

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit27: ; preds = %bb.l, %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i25
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !24
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !25
  %i.at = invoke noundef zeroext i1 @_ZN4absl12lts_2025051214flags_internal13AbslParseFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbSt17basic_string_viewIcS6_EPSt8optionalIT_EPS8_(i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload, ptr noundef nonnull %4, ptr noundef %3)
          to label %_ZN4absl12lts_202505129ParseFlagISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEbSt17basic_string_viewIcS6_EPT_PS8_.exit unwind label %bb.p

_ZN4absl12lts_202505129ParseFlagISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEbSt17basic_string_viewIcS6_EPT_PS8_.exit: ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit27
  br i1 %i.at, label %bb.r, label %bb.s

bb.p:                                             ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit27
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = load i8, ptr %i.ad, align 8, !tbaa !35, !range !31, !noundef !32
  %i.aw = trunc nuw i8 %i.av to i1
  store i8 0, ptr %i.ad, align 8, !tbaa !35
  br i1 %i.aw, label %bb.q, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit30

bb.q:                                             ; preds = %bb.p
  %i.ax = load ptr, ptr %4, align 8, !tbaa !18    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i28: ; preds = %bb.q
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !19
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #17
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit30

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit30: ; preds = %bb.q, %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %i.au

bb.r:                                             ; preds = %_ZN4absl12lts_202505129ParseFlagISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEbSt17basic_string_viewIcS6_EPT_PS8_.exit
  call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_move_assignEOS6_(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %4) #19
  br label %bb.s

bb.s:                                             ; preds = %_ZN4absl12lts_202505129ParseFlagISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEbSt17basic_string_viewIcS6_EPT_PS8_.exit, %bb.r
  %.0 = phi ptr [ %2, %bb.r ], [ null, %_ZN4absl12lts_202505129ParseFlagISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEbSt17basic_string_viewIcS6_EPT_PS8_.exit ]
  %i.bc = load i8, ptr %i.ad, align 8, !tbaa !35, !range !31, !noundef !32
  %i.bd = trunc nuw i8 %i.bc to i1
  store i8 0, ptr %i.ad, align 8, !tbaa !35
  br i1 %i.bd, label %bb.t, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit33

bb.t:                                             ; preds = %bb.s
  %i.be = load ptr, ptr %4, align 8, !tbaa !18    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31: ; preds = %bb.t
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !19
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #17
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit33

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit33: ; preds = %bb.t, %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %_ZNSt16allocator_traitsISaIZN4absl12lts_2025051214flags_internal7FlagOpsISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPvNS2_6FlagOpEPKvSC_SC_E12AlignedSpaceEE8allocateERSH_m.exit

bb.u:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !35, !range !31, !noalias !86, !noundef !32
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %.thread.i.i.i, label %._crit_edge.i.i.i.i.i

.thread.i.i.i:                                    ; preds = %bb.u
  %i.bm = load ptr, ptr %1, align 8, !tbaa !18, !noalias !87
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !26, !noalias !87
  call void @_ZN4absl12lts_2025051214flags_internal15AbslUnparseFlagB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i64 %i.bo, ptr %i.bm)
  br label %_ZN4absl12lts_2025051211UnparseFlagISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES8_RKT_.exit

._crit_edge.i.i.i.i.i:                            ; preds = %bb.u
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.bp, ptr %5, align 8, !tbaa !33, !alias.scope !86
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.bq, align 8, !tbaa !26, !alias.scope !86
  store i8 0, ptr %i.bp, align 8, !tbaa !19, !alias.scope !86
  br label %_ZN4absl12lts_2025051211UnparseFlagISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES8_RKT_.exit

_ZN4absl12lts_2025051211UnparseFlagISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES8_RKT_.exit: ; preds = %.thread.i.i.i, %._crit_edge.i.i.i.i.i
  %i.br = load ptr, ptr %2, align 8, !tbaa !18    ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  %i.bu = load ptr, ptr %5, align 8, !tbaa !18    ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv                ; 2 uses
  br i1 %i.bt, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZN4absl12lts_2025051211UnparseFlagISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES8_RKT_.exit
  br i1 %i.bw, label %bb.v, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZN4absl12lts_2025051211UnparseFlagISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES8_RKT_.exit
  br i1 %i.bw, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !26 ; 3 uses
  %i.bz = icmp ult i64 %i.by, 16
  call void @llvm.assume(i1 %i.bz)
  %.not21.i = icmp eq ptr %5, %2
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.w, !prof !22

bb.w:                                             ; preds = %bb.v
  switch i64 %i.by, label %bb.y [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w
  %i.ca = load i8, ptr %i.bu, align 1, !tbaa !19
  store i8 %i.ca, ptr %i.br, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.y:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.br, ptr align 1 %i.bu, i64 %i.by, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.y, %bb.x, %bb.w
  %i.cb = load i64, ptr %i.bx, align 8, !tbaa !26 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !26
  %i.cd = load ptr, ptr %2, align 8, !tbaa !18
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cb
  store i8 0, ptr %i.ce, align 1, !tbaa !19
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bu, ptr %2, align 8, !tbaa !18
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ch = load <2 x i64>, ptr %i.cg, align 8, !tbaa !19
  store <2 x i64> %i.ch, ptr %i.cf, align 8, !tbaa !19
  br label %bb.aa

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ci = load i64, ptr %i.bs, align 8, !tbaa !19
  store ptr %i.bu, ptr %2, align 8, !tbaa !18
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cl = load <2 x i64>, ptr %i.cj, align 8, !tbaa !19
  store <2 x i64> %i.cl, ptr %i.ck, align 8, !tbaa !19
  %.not.i = icmp eq ptr %i.br, null
  br i1 %.not.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.br, ptr %5, align 8, !tbaa !18
  store i64 %i.ci, ptr %i.bv, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.bv, ptr %5, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.z, %bb.aa
  %i.cm = phi ptr [ %i.br, %bb.z ], [ %i.bv, %bb.aa ], [ %i.bu, %bb.v ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.cn, align 8, !tbaa !26
  store i8 0, ptr %i.cm, align 1, !tbaa !19
  %i.co = load ptr, ptr %5, align 8, !tbaa !18    ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !19
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cs) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %_ZNSt16allocator_traitsISaIZN4absl12lts_2025051214flags_internal7FlagOpsISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPvNS2_6FlagOpEPKvSC_SC_E12AlignedSpaceEE8allocateERSH_m.exit

bb.ab:                                            ; preds = %bb.a
  br label %_ZNSt16allocator_traitsISaIZN4absl12lts_2025051214flags_internal7FlagOpsISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPvNS2_6FlagOpEPKvSC_SC_E12AlignedSpaceEE8allocateERSH_m.exit

bb.ac:                                            ; preds = %bb.a
  br label %_ZNSt16allocator_traitsISaIZN4absl12lts_2025051214flags_internal7FlagOpsISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPvNS2_6FlagOpEPKvSC_SC_E12AlignedSpaceEE8allocateERSH_m.exit

_ZNSt16allocator_traitsISaIZN4absl12lts_2025051214flags_internal7FlagOpsISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPvNS2_6FlagOpEPKvSC_SC_E12AlignedSpaceEE8allocateERSH_m.exit: ; preds = %bb.b, %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i, %bb.f, %bb.a, %bb.ac, %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit33, %bb.k, %bb.j, %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %.1 = phi ptr [ null, %bb.ac ], [ inttoptr (i64 40 to ptr), %bb.a ], [ null, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i ], [ null, %bb.e ], [ %i.c, %bb.b ], [ inttoptr (i64 88 to ptr), %bb.ab ], [ @_ZN4absl12lts_2025051213base_internal11FastTypeTagISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9kDummyVarE, %bb.j ], [ @_ZTISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE, %bb.k ], [ %.0, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit33 ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ null, %bb.f ], [ null, %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN38AbslFlagDefaultGenForgrpc_dns_resolver3GenEPv(ptr noundef %0) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN38AbslFlagDefaultGenForgrpc_dns_resolverD2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.a, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN31AbslFlagDefaultGenForgrpc_trace3GenEPv(ptr noundef %0) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN31AbslFlagDefaultGenForgrpc_traceD2Ev.exit:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN35AbslFlagDefaultGenForgrpc_verbosity3GenEPv(ptr noundef %0) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN35AbslFlagDefaultGenForgrpc_verbosityD2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.a, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN4absl12lts_2025051214flags_internal7FlagOpsISt8optionalIbEEEPvNS1_6FlagOpEPKvS5_S5_(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  switch i32 %0, label %bb.r [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %_ZNSt16allocator_traitsISaIZN4absl12lts_2025051214flags_internal7FlagOpsISt8optionalIbEEEPvNS2_6FlagOpEPKvS6_S6_E12AlignedSpaceEE8allocateERSB_m.exit
    i32 5, label %bb.f
    i32 6, label %bb.g
    i32 7, label %bb.h
    i32 8, label %bb.j
    i32 9, label %bb.q
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #16
  br label %_ZNSt16allocator_traitsISaIZN4absl12lts_2025051214flags_internal7FlagOpsISt8optionalIbEEEPvNS2_6FlagOpEPKvS6_S6_E12AlignedSpaceEE8allocateERSB_m.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef %2, i64 noundef 4) #17
  br label %_ZNSt16allocator_traitsISaIZN4absl12lts_2025051214flags_internal7FlagOpsISt8optionalIbEEEPvNS2_6FlagOpEPKvS6_S6_E12AlignedSpaceEE8allocateERSB_m.exit

bb.d:                                             ; preds = %bb.a
  %i.c = load i16, ptr %1, align 1
  store i16 %i.c, ptr %2, align 1
  br label %_ZNSt16allocator_traitsISaIZN4absl12lts_2025051214flags_internal7FlagOpsISt8optionalIbEEEPvNS2_6FlagOpEPKvS6_S6_E12AlignedSpaceEE8allocateERSB_m.exit

end_hunk_0
begin_hunk_1_@_ZN9grpc_core10ConfigVarsC2ERKNS0_9OverridesE:bb.a
  ]

bb.ba:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i95
  %i.gb = load i8, ptr %i.fu, align 1, !tbaa !19
  store i8 %i.gb, ptr %i.ga, align 1, !tbaa !19
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i96

bb.bb:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i95
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ga, ptr align 1 %i.fu, i64 %i.fw, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i96

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i96: ; preds = %bb.bb, %bb.ba, %._crit_edge.i.i.i.i.i.i.i.i.i95
  %i.gc = load i64, ptr %i.a, align 8, !tbaa !24  ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 %i.gc, ptr %i.gd, align 8, !tbaa !26
  %i.ge = load ptr, ptr %i.fn, align 8, !tbaa !18
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gc
  store i8 0, ptr %i.gf, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  store i8 1, ptr %i.fp, align 8, !tbaa !35
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit99

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit99: ; preds = %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i96, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit
  ret void

bb.bc:                                            ; preds = %_ZN9grpc_core10LoadConfigIbbEET_RKN4absl12lts_2025051214flags_internal4FlagISt8optionalIS1_EEESt17basic_string_viewIcSt11char_traitsIcEERKS7_T0_.exit94
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

bb.bd:                                            ; preds = %bb.ar
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

bb.be:                                            ; preds = %bb.as
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

bb.bf:                                            ; preds = %bb.at
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

bb.bg:                                            ; preds = %bb.au
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.bh:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bi:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i97
  %i.gm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.eu) #19
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.pn = phi { ptr, i32 } [ %i.gm, %bb.bi ], [ %i.gl, %bb.bh ] ; 2 uses
  %i.gn = load ptr, ptr %i.es, align 8, !tbaa !18 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.gp = icmp eq ptr %i.gn, %i.go
  br i1 %i.gp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bj
  %i.gq = load i64, ptr %i.go, align 8, !tbaa !19
  %i.gr = add i64 %i.gq, 1
  call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gr) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.bg
  %.pn.pn = phi { ptr, i32 } [ %i.gk, %bb.bg ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn, %bb.bj ] ; 2 uses
  %i.gs = load ptr, ptr %i.eq, align 8, !tbaa !18 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.gu = icmp eq ptr %i.gs, %i.gt
  br i1 %i.gu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.gv = load i64, ptr %i.gt, align 8, !tbaa !19
  %i.gw = add i64 %i.gv, 1
  call void @_ZdlPvm(ptr noundef %i.gs, i64 noundef %i.gw) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100, %bb.bf
  %.pn.pn.pn = phi { ptr, i32 } [ %i.gj, %bb.bf ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.gx = load ptr, ptr %i.eo, align 8, !tbaa !18 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.gz = icmp eq ptr %i.gx, %i.gy
  br i1 %i.gz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102
  %i.ha = load i64, ptr %i.gy, align 8, !tbaa !19
  %i.hb = add i64 %i.ha, 1
  call void @_ZdlPvm(ptr noundef %i.gx, i64 noundef %i.hb) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103, %bb.be
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gi, %bb.be ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ] ; 2 uses
  %i.hc = load ptr, ptr %i.em, align 8, !tbaa !18 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.he = icmp eq ptr %i.hc, %i.hd
  br i1 %i.he, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105
  %i.hf = load i64, ptr %i.hd, align 8, !tbaa !19
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hg) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106, %bb.bd
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gh, %bb.bd ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105 ] ; 2 uses
  %i.hh = load ptr, ptr %i.ek, align 8, !tbaa !18 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.hj = icmp eq ptr %i.hh, %i.hi
  br i1 %i.hj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108
  %i.hk = load i64, ptr %i.hi, align 8, !tbaa !19
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hh, i64 noundef %i.hl) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109, %bb.bc
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gg, %bb.bc ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108 ]
  %i.hm = load ptr, ptr %i.ei, align 8, !tbaa !18 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ho = icmp eq ptr %i.hm, %i.hn
  br i1 %i.ho, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111
  %i.hp = load i64, ptr %i.hn, align 8, !tbaa !19
  %i.hq = add i64 %i.hp, 1
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hq) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core10LoadConfigINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEET_RKN4absl12lts_2025051214flags_internal4FlagISt8optionalIS9_EEESt17basic_string_viewIcS4_ERKSF_T0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, i64 %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::optional", align 8     ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.c = load i8, ptr %i.b, align 8, !tbaa !35, !range !31, !noundef !32
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !33
  %i.f = load ptr, ptr %4, align 8, !tbaa !18     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !26   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.h, ptr %i.a, align 8, !tbaa !24
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.j = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !18
  %i.k = load i64, ptr %i.a, align 8, !tbaa !24
  store i64 %i.k, ptr %i.e, align 8, !tbaa !19
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.l = phi ptr [ %i.j, %.noexc.i ], [ %i.e, %bb.b ] ; 2 uses
  switch i64 %i.h, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.m = load i8, ptr %i.f, align 1, !tbaa !19
  store i8 %i.m, ptr %i.l, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.n = load i64, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !26
  %i.p = load ptr, ptr %0, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @_ZNK4absl12lts_2025051214flags_internal4FlagISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3GetEv(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %6, ptr noundef nonnull align 8 dereferenceable(136) %1)
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 6 uses
  %i.s = load i8, ptr %i.r, align 8, !tbaa !35, !range !31, !noundef !32
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !33
  %i.v = load ptr, ptr %6, align 8, !tbaa !18     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !26   ; 3 uses
  %i.aa = icmp ult i64 %i.z, 16
  call void @llvm.assume(i1 %i.aa)
  %i.ab = add nuw nsw i64 %i.z, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.ab, i1 false)
  br label %.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.f
  store ptr %i.v, ptr %0, align 8, !tbaa !18
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !19
  store i64 %i.ac, ptr %i.u, align 8, !tbaa !19
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !26
  br label %.thread

.thread:                                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, %bb.g
  %i.ad = phi i64 [ %i.z, %bb.g ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ad, ptr %i.af, align 8, !tbaa !26
  store ptr %i.w, ptr %6, align 8, !tbaa !18
  store i64 0, ptr %i.ae, align 8, !tbaa !26
  store i8 0, ptr %i.w, align 8, !tbaa !19
  store i8 0, ptr %i.r, align 8, !tbaa !35
  br label %bb.l

bb.h:                                             ; preds = %bb.e
  invoke void @_ZN9grpc_core17LoadConfigFromEnvB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEPKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %2, ptr %3, ptr noundef %5)
          to label %bb.k unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load i8, ptr %i.r, align 8, !tbaa !35, !range !31, !noundef !32
  %i.ai = trunc nuw i8 %i.ah to i1
  store i8 0, ptr %i.r, align 8, !tbaa !35
  br i1 %i.ai, label %bb.j, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr %6, align 8, !tbaa !18    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.j
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !19
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #17
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.j, %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  resume { ptr, i32 } %i.ag

bb.k:                                             ; preds = %bb.h
  %.pre10 = load i8, ptr %i.r, align 8, !tbaa !35, !range !31
  %i.ao = trunc nuw i8 %.pre10 to i1
  store i8 0, ptr %i.r, align 8, !tbaa !35
  br i1 %i.ao, label %bb.l, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit9

bb.l:                                             ; preds = %.thread, %bb.k
  %i.ap = load ptr, ptr %6, align 8, !tbaa !18    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i7: ; preds = %bb.l
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !19
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #17
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit9

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit9: ; preds = %bb.l, %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ret void
}

declare i32 @__gxx_personality_v0(...)

declare void @_ZN9grpc_core10LoadConfigERKN4absl12lts_2025051214flags_internal4FlagISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEEESt17basic_string_viewIcS8_ERKSt8optionalISA_EPKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(120), i64, ptr, ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !35, !range !31, !noundef !32
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !35
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !19
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #17
  br label %_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit

_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK9grpc_core10ConfigVars17SystemSslRootsDirB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 232
  tail call void @_ZN9grpc_core10LoadConfigINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEET_RKN4absl12lts_2025051214flags_internal4FlagISt8optionalIS9_EEESt17basic_string_viewIcS4_ERKSF_T0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) @_Z31FLAGS_grpc_system_ssl_roots_dirB5cxx11, i64 25, ptr nonnull @.str.71, ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull @.str.63)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK9grpc_core10ConfigVars23DefaultSslRootsFilePathB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 272
  tail call void @_ZN9grpc_core10LoadConfigINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEET_RKN4absl12lts_2025051214flags_internal4FlagISt8optionalIS9_EEESt17basic_string_viewIcS4_ERKSF_T0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) @_Z38FLAGS_grpc_default_ssl_roots_file_pathB5cxx11, i64 32, ptr nonnull @.str.72, ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull @.str.63)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK9grpc_core10ConfigVars8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %3 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %4 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %7 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca double, align 8                   ; 5 uses
  %i.j = alloca double, align 8                   ; 5 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  store i64 13, ptr %2, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.73, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store i64 1, ptr %3, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.74, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.q = load i64, ptr %i.p, align 8, !tbaa !26
  call void @_ZN4absl12lts_202505127CEscapeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i64 %i.q, ptr %i.o)
  %i.r = load ptr, ptr %5, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !26
  store i64 %i.t, ptr %4, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.r, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store i64 1, ptr %6, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.74, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store i64 42, ptr %7, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.75, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.x = load i32, ptr %1, align 8, !tbaa !48
  store i32 %i.x, ptr %i.a, align 4, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !26
  invoke void @_ZN4absl12lts_202505127CEscapeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, i64 %i.ab, ptr %i.z)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !26
  invoke void @_ZN4absl12lts_202505127CEscapeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, i64 %i.af, ptr %i.ad)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !26
  invoke void @_ZN4absl12lts_202505127CEscapeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, i64 %i.aj, ptr %i.ah)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !54, !range !31, !noundef !32
  %i.am = trunc nuw i8 %i.al to i1
  %i.an = select i1 %i.am, ptr @.str.80, ptr @.str.81
  store ptr %i.an, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !26
  invoke void @_ZN4absl12lts_202505127CEscapeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, i64 %i.ar, ptr %i.ap)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.at = load i8, ptr %i.as, align 1, !tbaa !55, !range !31, !noundef !32
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = select i1 %i.au, ptr @.str.80, ptr @.str.81
  store ptr %i.av, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 232
  invoke void @_ZN9grpc_core10LoadConfigINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEET_RKN4absl12lts_2025051214flags_internal4FlagISt8optionalIS9_EEESt17basic_string_viewIcS4_ERKSF_T0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(136) @_Z31FLAGS_grpc_system_ssl_roots_dirB5cxx11, i64 25, ptr nonnull @.str.71, ptr noundef nonnull align 8 dereferenceable(40) %i.aw, ptr noundef nonnull @.str.63)
          to label %_ZNK9grpc_core10ConfigVars17SystemSslRootsDirB5cxx11Ev.exit unwind label %bb.n

_ZNK9grpc_core10ConfigVars17SystemSslRootsDirB5cxx11Ev.exit: ; preds = %bb.e
  %i.ax = load ptr, ptr %13, align 8, !tbaa !18
  %i.ay = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !26
  invoke void @_ZN4absl12lts_202505127CEscapeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i64 %i.az, ptr %i.ax)
          to label %bb.f unwind label %bb.o

bb.f:                                             ; preds = %_ZNK9grpc_core10ConfigVars17SystemSslRootsDirB5cxx11Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 272
  invoke void @_ZN9grpc_core10LoadConfigINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEET_RKN4absl12lts_2025051214flags_internal4FlagISt8optionalIS9_EEESt17basic_string_viewIcS4_ERKSF_T0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(136) @_Z38FLAGS_grpc_default_ssl_roots_file_pathB5cxx11, i64 32, ptr nonnull @.str.72, ptr noundef nonnull align 8 dereferenceable(40) %i.ba, ptr noundef nonnull @.str.63)
          to label %_ZNK9grpc_core10ConfigVars23DefaultSslRootsFilePathB5cxx11Ev.exit unwind label %bb.p

_ZNK9grpc_core10ConfigVars23DefaultSslRootsFilePathB5cxx11Ev.exit: ; preds = %bb.f
  %i.bb = load ptr, ptr %15, align 8, !tbaa !18
  %i.bc = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !26
  invoke void @_ZN4absl12lts_202505127CEscapeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, i64 %i.bd, ptr %i.bb)
          to label %bb.g unwind label %bb.q

bb.g:                                             ; preds = %_ZNK9grpc_core10ConfigVars23DefaultSslRootsFilePathB5cxx11Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.bf = load i8, ptr %i.be, align 2, !tbaa !56, !range !31, !noundef !32
  %i.bg = trunc nuw i8 %i.bf to i1
  %i.bh = select i1 %i.bg, ptr @.str.80, ptr @.str.81
  store ptr %i.bh, ptr %i.d, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 35
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !57, !range !31, !noundef !32
  %i.bk = trunc nuw i8 %i.bj to i1
  %i.bl = select i1 %i.bk, ptr @.str.80, ptr @.str.81
  store ptr %i.bl, ptr %i.e, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !18
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !26
  invoke void @_ZN4absl12lts_202505127CEscapeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, i64 %i.bp, ptr %i.bn)
          to label %bb.h unwind label %bb.r

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.br = load i8, ptr %i.bq, align 4, !tbaa !58, !range !31, !noundef !32
  %i.bs = trunc nuw i8 %i.br to i1
  %i.bt = select i1 %i.bs, ptr @.str.80, ptr @.str.81
  store ptr %i.bt, ptr %i.f, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !49
  store i32 %i.bv, ptr %i.g, align 4, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #19
end_hunk_1
begin_hunk_2_@_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_:bb.a

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #18
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.p, %bb.d ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.t

bb.i:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #20
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not14 = icmp eq ptr %0, %1
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.016 = phi ptr [ %i.p, %bb.d ], [ %2, %bb.a ]  ; 8 uses
  %.01215 = phi ptr [ %i.o, %bb.d ], [ %0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.016, i64 16 ; 3 uses
  store ptr %i.b, ptr %.016, align 8, !tbaa !33
  %i.c = load ptr, ptr %.01215, align 8, !tbaa !18 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.01215, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !26   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.e, ptr %i.a, align 8, !tbaa !24
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.lr.ph
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.016, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.g, ptr %.016, align 8, !tbaa !18
  %i.h = load i64, ptr %i.a, align 8, !tbaa !24
  store i64 %i.h, ptr %i.b, align 8, !tbaa !19
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %.lr.ph
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.b, %.lr.ph ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !19
  store i8 %i.j, ptr %i.i, align 1, !tbaa !19
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.016, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !26
  %i.m = load ptr, ptr %.016, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.o = getelementptr inbounds nuw i8, ptr %.01215, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.016, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.o, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !122

bb.e:                                             ; preds = %.noexc.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #19 ; 0 uses
  invoke void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %2, ptr noundef nonnull %.016)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #18
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.p, %bb.d ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.t

bb.i:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #20
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

declare noundef zeroext i1 @_ZN4absl12lts_2025051214flags_internal13AbslParseFlagESt17basic_string_viewIcSt11char_traitsIcEEPSt6vectorINSt7__cxx1112basic_stringIcS4_SaIcEEESaISA_EEPSA_(i64, ptr, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN4absl12lts_2025051214flags_internal15AbslUnparseFlagERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN4absl12lts_2025051214flags_internal13AbslParseFlagESt17basic_string_viewIcSt11char_traitsIcEEPiPNSt7__cxx1112basic_stringIcS4_SaIcEEE(i64, ptr, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN4absl12lts_2025051214flags_internal7UnparseB5cxx11Ei(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_copy_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !35, !range !31, !noundef !32
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i8, ptr %i.e, align 8, !range !31
  %i.g = trunc nuw i8 %i.f to i1                  ; 2 uses
  %or.cond = select i1 %i.d, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.c:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !33
  %i.i = load ptr, ptr %1, align 8, !tbaa !18     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !26   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.k, ptr %i.a, align 8, !tbaa !24
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.d
  %i.m = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !18
  %i.n = load i64, ptr %i.a, align 8, !tbaa !24
  store i64 %i.n, ptr %i.h, align 8, !tbaa !19
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.d
  %i.o = phi ptr [ %i.m, %.noexc.i.i.i ], [ %i.h, %bb.d ] ; 2 uses
  switch i64 %i.k, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.p = load i8, ptr %i.i, align 1, !tbaa !19
  store i8 %i.p, ptr %i.o, align 1, !tbaa !19
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.i, i64 %i.k, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.e, %bb.f
  %i.q = load i64, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !26
  %i.s = load ptr, ptr %0, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  store i8 1, ptr %i.b, align 8, !tbaa !35
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.g:                                             ; preds = %bb.c
  store i8 0, ptr %i.b, align 8, !tbaa !35
  br i1 %i.d, label %bb.h, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.x = load i64, ptr %i.v, align 8, !tbaa !19
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #17
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.g, %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN4absl12lts_2025051214flags_internal13AbslParseFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbSt17basic_string_viewIcS6_EPSt8optionalIT_EPS8_(i64 %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !35, !range !31, !noundef !32
  %i.d = trunc nuw i8 %i.c to i1
  store i8 0, ptr %i.b, align 8, !tbaa !35
  br i1 %i.d, label %bb.c, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %2, align 8, !tbaa !18     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.h = load i64, ptr %i.f, align 8, !tbaa !19
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #17
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !26
  store i8 0, ptr %i.j, align 8, !tbaa !19
  %i.l = invoke noundef zeroext i1 @_ZN4absl12lts_2025051214flags_internal13AbslParseFlagESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS4_SaIcEEESA_(i64 %0, ptr %1, ptr noundef nonnull %4, ptr noundef %3)
          to label %_ZN4absl12lts_202505129ParseFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbSt17basic_string_viewIcS5_EPT_PS7_.exit unwind label %bb.e ; 2 uses

_ZN4absl12lts_202505129ParseFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbSt17basic_string_viewIcS5_EPT_PS7_.exit: ; preds = %bb.d
  br i1 %i.l, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %4, align 8, !tbaa !18     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.j
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.p = load i64, ptr %i.j, align 8, !tbaa !19
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %i.m

bb.f:                                             ; preds = %_ZN4absl12lts_202505129ParseFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbSt17basic_string_viewIcS5_EPT_PS7_.exit
  %i.r = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(32) %4) #19 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZN4absl12lts_202505129ParseFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbSt17basic_string_viewIcS5_EPT_PS7_.exit, %bb.f
  %i.s = load ptr, ptr %4, align 8, !tbaa !18     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.j
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.g
  %i.u = load i64, ptr %i.j, align 8, !tbaa !19
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7
  %.1 = phi i1 [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7 ], [ true, %bb.b ], [ true, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ true, %bb.c ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !35, !range !31, !noundef !32
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !18     ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = icmp eq ptr %i.d, %i.e
  %i.g = load ptr, ptr %1, align 8, !tbaa !18     ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  br i1 %i.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.b
  br i1 %i.i, label %bb.c, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.b
  br i1 %i.i, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !26   ; 3 uses
  %i.l = icmp ult i64 %i.k, 16
  tail call void @llvm.assume(i1 %i.l)
  %.not21.i = icmp eq ptr %1, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.d, !prof !22

bb.d:                                             ; preds = %bb.c
  switch i64 %i.k, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.m = load i8, ptr %i.g, align 1, !tbaa !19
  store i8 %i.m, ptr %i.d, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.d, ptr align 1 %i.g, i64 %i.k, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.n = load i64, ptr %i.j, align 8, !tbaa !26   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !26
  %i.p = load ptr, ptr %0, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !19
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %0, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !26
  store i64 %i.t, ptr %i.r, align 8, !tbaa !26
  %i.u = load i64, ptr %i.h, align 8, !tbaa !19
  store i64 %i.u, ptr %i.e, align 8, !tbaa !19
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.v = load i64, ptr %i.e, align 8, !tbaa !19
  store ptr %i.g, ptr %0, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !26
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.x, ptr %i.y, align 8, !tbaa !26
  %i.z = load i64, ptr %i.h, align 8, !tbaa !19
  store i64 %i.z, ptr %i.e, align 8, !tbaa !19
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.d, ptr %1, align 8, !tbaa !18
  store i64 %i.v, ptr %i.h, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.h, ptr %1, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.g, %bb.h
  %i.aa = phi ptr [ %i.d, %bb.g ], [ %i.h, %bb.h ], [ %i.g, %bb.c ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.ab, align 8, !tbaa !26
  store i8 0, ptr %i.aa, align 1, !tbaa !19
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ac, ptr %0, align 8, !tbaa !33
  %i.ad = load ptr, ptr %1, align 8, !tbaa !18    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !26 ; 2 uses
  %i.ai = icmp ult i64 %i.ah, 16
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.ae, i64 %i.aj, i1 false)
  br label %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJS5_EEEvDpOT_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.i
  store ptr %i.ad, ptr %0, align 8, !tbaa !18
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !19
  store i64 %i.ak, ptr %i.ac, align 8, !tbaa !19
  br label %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJS5_EEEvDpOT_.exit

_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJS5_EEEvDpOT_.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !26
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.am, ptr %i.an, align 8, !tbaa !26
  store ptr %i.ae, ptr %1, align 8, !tbaa !18
  store i64 0, ptr %i.al, align 8, !tbaa !26
  store i8 0, ptr %i.ae, align 8, !tbaa !19
  store i8 1, ptr %i.a, align 8, !tbaa !35
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJS5_EEEvDpOT_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  ret ptr %0
}

declare noundef zeroext i1 @_ZN4absl12lts_2025051214flags_internal13AbslParseFlagESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS4_SaIcEEESA_(i64, ptr, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_move_assignEOS6_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !35, !range !31, !noundef !32
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i8, ptr %i.d, align 8, !range !31
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !18     ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = icmp eq ptr %i.g, %i.h
  %i.j = load ptr, ptr %1, align 8, !tbaa !18     ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.l = icmp eq ptr %i.j, %i.k                   ; 2 uses
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.b
  br i1 %i.l, label %bb.c, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.b
  br i1 %i.l, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !26   ; 3 uses
  %i.o = icmp ult i64 %i.n, 16
  tail call void @llvm.assume(i1 %i.o)
  %.not21.i = icmp eq ptr %1, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.d, !prof !22

bb.d:                                             ; preds = %bb.c
  switch i64 %i.n, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.p = load i8, ptr %i.j, align 1, !tbaa !19
  store i8 %i.p, ptr %i.g, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %i.j, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.q = load i64, ptr %i.m, align 8, !tbaa !26   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !26
  %i.s = load ptr, ptr %0, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !19
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %0, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !26
  store i64 %i.w, ptr %i.u, align 8, !tbaa !26
  %i.x = load i64, ptr %i.k, align 8, !tbaa !19
  store i64 %i.x, ptr %i.h, align 8, !tbaa !19
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.y = load i64, ptr %i.h, align 8, !tbaa !19
  store ptr %i.j, ptr %0, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !26
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !26
  %i.ac = load i64, ptr %i.k, align 8, !tbaa !19
  store i64 %i.ac, ptr %i.h, align 8, !tbaa !19
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.g, ptr %1, align 8, !tbaa !18
  store i64 %i.y, ptr %i.k, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.k, ptr %1, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.g, %bb.h
  %i.ad = phi ptr [ %i.g, %bb.g ], [ %i.k, %bb.h ], [ %i.j, %bb.c ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.ae, align 8, !tbaa !26
  store i8 0, ptr %i.ad, align 1, !tbaa !19
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.i:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.af, ptr %0, align 8, !tbaa !33
  %i.ag = load ptr, ptr %1, align 8, !tbaa !18    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !26 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 16
  tail call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  store ptr %i.ag, ptr %0, align 8, !tbaa !18
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !19
  store i64 %i.an, ptr %i.af, align 8, !tbaa !19
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !26
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !26
  store ptr %i.ah, ptr %1, align 8, !tbaa !18
  store i64 0, ptr %i.ao, align 8, !tbaa !26
  store i8 0, ptr %i.ah, align 8, !tbaa !19
  store i8 1, ptr %i.a, align 8, !tbaa !35
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.l:                                             ; preds = %bb.i
  store i8 0, ptr %i.a, align 8, !tbaa !35
  br i1 %i.c, label %bb.m, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.m:                                             ; preds = %bb.l
  %i.ar = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.m
  %i.au = load i64, ptr %i.as, align 8, !tbaa !19
  %i.av = add i64 %i.au, 1
  tail call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #17
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.l, %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  ret void
}

declare void @_ZN4absl12lts_2025051214flags_internal15AbslUnparseFlagB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64, ptr) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN4absl12lts_2025051214flags_internal13AbslParseFlagESt17basic_string_viewIcSt11char_traitsIcEEPbPNSt7__cxx1112basic_stringIcS4_SaIcEEE(i64, ptr, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN4absl12lts_2025051214flags_internal7UnparseB5cxx11Eb(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i1 noundef zeroext) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN4absl12lts_2025051214flags_internal13AbslParseFlagESt17basic_string_viewIcSt11char_traitsIcEEPdPNSt7__cxx1112basic_stringIcS4_SaIcEEE(i64, ptr, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN4absl12lts_2025051214flags_internal7UnparseB5cxx11Ed(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, double noundef) local_unnamed_addr #3

declare noundef i32 @_ZN9grpc_core17LoadConfigFromEnvESt17basic_string_viewIcSt11char_traitsIcEEi(i64, ptr, i32 noundef) local_unnamed_addr #3

declare noundef i64 @_ZNK4absl12lts_2025051214flags_internal8FlagImpl11ReadOneWordEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #3

declare noundef double @_ZN9grpc_core17LoadConfigFromEnvESt17basic_string_viewIcSt11char_traitsIcEEd(i64, ptr, double noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN9grpc_core17LoadConfigFromEnvESt17basic_string_viewIcSt11char_traitsIcEEb(i64, ptr, i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN9grpc_core17LoadConfigFromEnvB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEPKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64, ptr, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK4absl12lts_2025051214flags_internal4FlagISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3GetEv(ptr dead_on_unwind noalias writable sret(%"class.std::optional") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %union.U.80, align 8                ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.c = load atomic i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.d = and i64 %i.c, 3
  %i.e = icmp eq i64 %i.d, 3
  br i1 %i.e, label %bb.b, label %_ZNK4absl12lts_2025051214flags_internal9FlagValueISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELNS1_20FlagValueStorageKindE3EE3GetERKNS1_12SequenceLockERSA_.exit, !prof !51

bb.b:                                             ; preds = %bb.a
  %i.f = and i64 %i.c, -4
  %i.g = inttoptr i64 %i.f to ptr                 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store i8 0, ptr %i.i, align 8, !tbaa !35
  %i.j = load i8, ptr %i.h, align 8, !tbaa !35, !range !31, !noundef !32
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.c, label %_ZNK4absl12lts_2025051214flags_internal9FlagValueISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELNS1_20FlagValueStorageKindE3EE3GetERKNS1_12SequenceLockERSA_.exit.thread.thread10

_ZNK4absl12lts_2025051214flags_internal9FlagValueISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELNS1_20FlagValueStorageKindE3EE3GetERKNS1_12SequenceLockERSA_.exit.thread.thread10: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.l, align 8, !tbaa !35
  br label %_ZZNK4absl12lts_2025051214flags_internal4FlagISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3GetEvEN1UD2Ev.exit4

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.m, ptr %2, align 8, !tbaa !33
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !18   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !26   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.p, ptr %i.a, align 8, !tbaa !24
  %i.q = icmp ugt i64 %i.p, 15
  br i1 %i.q, label %.noexc.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.c
  %i.r = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  store ptr %i.r, ptr %2, align 8, !tbaa !18
  %i.s = load i64, ptr %i.a, align 8, !tbaa !24
  store i64 %i.s, ptr %i.m, align 8, !tbaa !19
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.noexc, %bb.c
  %i.t = phi ptr [ %i.r, %.noexc ], [ %i.m, %bb.c ] ; 2 uses
  switch i64 %i.p, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNK4absl12lts_2025051214flags_internal9FlagValueISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELNS1_20FlagValueStorageKindE3EE3GetERKNS1_12SequenceLockERSA_.exit.thread.thread
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.u = load i8, ptr %i.n, align 1, !tbaa !19
  store i8 %i.u, ptr %i.t, align 1, !tbaa !19
  br label %_ZNK4absl12lts_2025051214flags_internal9FlagValueISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELNS1_20FlagValueStorageKindE3EE3GetERKNS1_12SequenceLockERSA_.exit.thread.thread

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.n, i64 %i.p, i1 false)
  br label %_ZNK4absl12lts_2025051214flags_internal9FlagValueISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELNS1_20FlagValueStorageKindE3EE3GetERKNS1_12SequenceLockERSA_.exit.thread.thread

_ZNK4absl12lts_2025051214flags_internal9FlagValueISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELNS1_20FlagValueStorageKindE3EE3GetERKNS1_12SequenceLockERSA_.exit.thread.thread: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i, %bb.d, %bb.e
  %i.v = load i64, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.v, ptr %i.w, align 8, !tbaa !26
  %i.x = load ptr, ptr %2, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  store i8 1, ptr %i.i, align 8, !tbaa !35
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i8 0, ptr %i.z, align 8, !tbaa !35
  br label %bb.h

_ZNK4absl12lts_2025051214flags_internal9FlagValueISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELNS1_20FlagValueStorageKindE3EE3GetERKNS1_12SequenceLockERSA_.exit: ; preds = %bb.a
  invoke void @_ZNK4absl12lts_2025051214flags_internal8FlagImpl4ReadEPv(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %2)
          to label %_ZNK4absl12lts_2025051214flags_internal9FlagValueISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELNS1_20FlagValueStorageKindE3EE3GetERKNS1_12SequenceLockERSA_.exit.thread unwind label %bb.f

bb.f:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i, %_ZNK4absl12lts_2025051214flags_internal9FlagValueISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELNS1_20FlagValueStorageKindE3EE3GetERKNS1_12SequenceLockERSA_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !35, !range !31, !noundef !32
  %i.ad = trunc nuw i8 %i.ac to i1
  store i8 0, ptr %i.ab, align 8, !tbaa !35
  br i1 %i.ad, label %bb.g, label %_ZZNK4absl12lts_2025051214flags_internal4FlagISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3GetEvEN1UD2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.ae = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZZNK4absl12lts_2025051214flags_internal4FlagISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3GetEvEN1UD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !19
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #17
  br label %_ZZNK4absl12lts_2025051214flags_internal4FlagISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3GetEvEN1UD2Ev.exit

_ZZNK4absl12lts_2025051214flags_internal4FlagISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3GetEvEN1UD2Ev.exit: ; preds = %bb.g, %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %i.aa

_ZNK4absl12lts_2025051214flags_internal9FlagValueISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELNS1_20FlagValueStorageKindE3EE3GetERKNS1_12SequenceLockERSA_.exit.thread: ; preds = %_ZNK4absl12lts_2025051214flags_internal9FlagValueISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELNS1_20FlagValueStorageKindE3EE3GetERKNS1_12SequenceLockERSA_.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !35, !range !31
  %i.aj = trunc nuw i8 %.pre to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i8 0, ptr %i.ak, align 8, !tbaa !35
  br i1 %i.aj, label %bb.h, label %_ZZNK4absl12lts_2025051214flags_internal4FlagISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3GetEvEN1UD2Ev.exit4

bb.h:                                             ; preds = %_ZNK4absl12lts_2025051214flags_internal9FlagValueISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELNS1_20FlagValueStorageKindE3EE3GetERKNS1_12SequenceLockERSA_.exit.thread.thread, %_ZNK4absl12lts_2025051214flags_internal9FlagValueISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELNS1_20FlagValueStorageKindE3EE3GetERKNS1_12SequenceLockERSA_.exit.thread
  %i.al = phi ptr [ %i.z, %_ZNK4absl12lts_2025051214flags_internal9FlagValueISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELNS1_20FlagValueStorageKindE3EE3GetERKNS1_12SequenceLockERSA_.exit.thread.thread ], [ %i.ak, %_ZNK4absl12lts_2025051214flags_internal9FlagValueISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELNS1_20FlagValueStorageKindE3EE3GetERKNS1_12SequenceLockERSA_.exit.thread ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.am, ptr %0, align 8, !tbaa !33
  %i.an = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !26 ; 3 uses
  %i.as = icmp ult i64 %i.ar, 16
  call void @llvm.assume(i1 %i.as)
  %i.at = add nuw nsw i64 %i.ar, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, ptr noundef nonnull align 8 dereferenceable(1) %i.ao, i64 %i.at, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.h
  store ptr %i.an, ptr %0, align 8, !tbaa !18
  %i.au = load i64, ptr %i.ao, align 8, !tbaa !19
  store i64 %i.au, ptr %i.am, align 8, !tbaa !19
  %.phi.trans.insert5 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre6 = load i64, ptr %.phi.trans.insert5, align 8, !tbaa !26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i3: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.av = phi i64 [ %i.ar, %bb.i ], [ %.pre6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !26
  store i8 1, ptr %i.al, align 8, !tbaa !35
  br label %_ZZNK4absl12lts_2025051214flags_internal4FlagISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3GetEvEN1UD2Ev.exit4

_ZZNK4absl12lts_2025051214flags_internal4FlagISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3GetEvEN1UD2Ev.exit4: ; preds = %_ZNK4absl12lts_2025051214flags_internal9FlagValueISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELNS1_20FlagValueStorageKindE3EE3GetERKNS1_12SequenceLockERSA_.exit.thread, %_ZNK4absl12lts_2025051214flags_internal9FlagValueISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELNS1_20FlagValueStorageKindE3EE3GetERKNS1_12SequenceLockERSA_.exit.thread.thread10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

declare void @_ZN4absl12lts_2025051216strings_internal9CatPiecesB5cxx11ESt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64) local_unnamed_addr #3

declare noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef, ptr noundef) local_unnamed_addr #3

declare noundef i64 @_ZN4absl12lts_2025051216numbers_internal17SixDigitsToBufferEdPc(double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_config_vars.cc() #13 section ".text.startup" {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4absl12lts_2025051214flags_internal23RegisterCommandLineFlagERNS0_15CommandLineFlagEPKc(ptr noundef nonnull align 8 dereferenceable(8) @_Z22FLAGS_grpc_experimentsB5cxx11, ptr noundef nonnull @.str.2) ; 0 uses
  %i.b = tail call noundef zeroext i1 @_ZN4absl12lts_2025051214flags_internal23RegisterCommandLineFlagERNS0_15CommandLineFlagEPKc(ptr noundef nonnull align 8 dereferenceable(8) @FLAGS_grpc_client_channel_backup_poll_interval_ms, ptr noundef nonnull @.str.2) ; 0 uses
  %i.c = tail call noundef zeroext i1 @_ZN4absl12lts_2025051214flags_internal23RegisterCommandLineFlagERNS0_15CommandLineFlagEPKc(ptr noundef nonnull align 8 dereferenceable(8) @_Z23FLAGS_grpc_dns_resolverB5cxx11, ptr noundef nonnull @.str.2) ; 0 uses
  %i.d = tail call noundef zeroext i1 @_ZN4absl12lts_2025051214flags_internal23RegisterCommandLineFlagERNS0_15CommandLineFlagEPKc(ptr noundef nonnull align 8 dereferenceable(8) @_Z16FLAGS_grpc_traceB5cxx11, ptr noundef nonnull @.str.2) ; 0 uses
  %i.e = tail call noundef zeroext i1 @_ZN4absl12lts_2025051214flags_internal23RegisterCommandLineFlagERNS0_15CommandLineFlagEPKc(ptr noundef nonnull align 8 dereferenceable(8) @_Z20FLAGS_grpc_verbosityB5cxx11, ptr noundef nonnull @.str.2) ; 0 uses
  %i.f = tail call noundef zeroext i1 @_ZN4absl12lts_2025051214flags_internal23RegisterCommandLineFlagERNS0_15CommandLineFlagEPKc(ptr noundef nonnull align 8 dereferenceable(8) @FLAGS_grpc_enable_fork_support, ptr noundef nonnull @.str.2) ; 0 uses
  %i.g = tail call noundef zeroext i1 @_ZN4absl12lts_2025051214flags_internal23RegisterCommandLineFlagERNS0_15CommandLineFlagEPKc(ptr noundef nonnull align 8 dereferenceable(8) @_Z24FLAGS_grpc_poll_strategyB5cxx11, ptr noundef nonnull @.str.2) ; 0 uses
  %i.h = tail call noundef zeroext i1 @_ZN4absl12lts_2025051214flags_internal23RegisterCommandLineFlagERNS0_15CommandLineFlagEPKc(ptr noundef nonnull align 8 dereferenceable(8) @FLAGS_grpc_abort_on_leaks, ptr noundef nonnull @.str.2) ; 0 uses
  %i.i = tail call noundef zeroext i1 @_ZN4absl12lts_2025051214flags_internal23RegisterCommandLineFlagERNS0_15CommandLineFlagEPKc(ptr noundef nonnull align 8 dereferenceable(8) @_Z31FLAGS_grpc_system_ssl_roots_dirB5cxx11, ptr noundef nonnull @.str.2) ; 0 uses
  %i.j = tail call noundef zeroext i1 @_ZN4absl12lts_2025051214flags_internal23RegisterCommandLineFlagERNS0_15CommandLineFlagEPKc(ptr noundef nonnull align 8 dereferenceable(8) @_Z38FLAGS_grpc_default_ssl_roots_file_pathB5cxx11, ptr noundef nonnull @.str.2) ; 0 uses
  %i.k = tail call noundef zeroext i1 @_ZN4absl12lts_2025051214flags_internal23RegisterCommandLineFlagERNS0_15CommandLineFlagEPKc(ptr noundef nonnull align 8 dereferenceable(8) @FLAGS_grpc_use_system_roots_over_language_callback, ptr noundef nonnull @.str.2) ; 0 uses
  %i.l = tail call noundef zeroext i1 @_ZN4absl12lts_2025051214flags_internal23RegisterCommandLineFlagERNS0_15CommandLineFlagEPKc(ptr noundef nonnull align 8 dereferenceable(8) @FLAGS_grpc_not_use_system_ssl_roots, ptr noundef nonnull @.str.2) ; 0 uses
  %i.m = tail call noundef zeroext i1 @_ZN4absl12lts_2025051214flags_internal23RegisterCommandLineFlagERNS0_15CommandLineFlagEPKc(ptr noundef nonnull align 8 dereferenceable(8) @_Z28FLAGS_grpc_ssl_cipher_suitesB5cxx11, ptr noundef nonnull @.str.2) ; 0 uses
  %i.n = tail call noundef zeroext i1 @_ZN4absl12lts_2025051214flags_internal23RegisterCommandLineFlagERNS0_15CommandLineFlagEPKc(ptr noundef nonnull align 8 dereferenceable(8) @FLAGS_grpc_cpp_experimental_disable_reflection, ptr noundef nonnull @.str.2) ; 0 uses
  %i.o = tail call noundef zeroext i1 @_ZN4absl12lts_2025051214flags_internal23RegisterCommandLineFlagERNS0_15CommandLineFlagEPKc(ptr noundef nonnull align 8 dereferenceable(8) @FLAGS_grpc_channelz_max_orphaned_nodes, ptr noundef nonnull @.str.2) ; 0 uses
  %i.p = tail call noundef zeroext i1 @_ZN4absl12lts_2025051214flags_internal23RegisterCommandLineFlagERNS0_15CommandLineFlagEPKc(ptr noundef nonnull align 8 dereferenceable(8) @FLAGS_grpc_channelz_call_tracer, ptr noundef nonnull @.str.2) ; 0 uses
  %i.q = tail call noundef zeroext i1 @_ZN4absl12lts_2025051214flags_internal23RegisterCommandLineFlagERNS0_15CommandLineFlagEPKc(ptr noundef nonnull align 8 dereferenceable(8) @FLAGS_grpc_experimental_target_memory_pressure, ptr noundef nonnull @.str.2) ; 0 uses
  %i.r = tail call noundef zeroext i1 @_ZN4absl12lts_2025051214flags_internal23RegisterCommandLineFlagERNS0_15CommandLineFlagEPKc(ptr noundef nonnull align 8 dereferenceable(8) @FLAGS_grpc_experimental_memory_pressure_threshold, ptr noundef nonnull @.str.2) ; 0 uses
  %i.s = tail call noundef zeroext i1 @_ZN4absl12lts_2025051214flags_internal23RegisterCommandLineFlagERNS0_15CommandLineFlagEPKc(ptr noundef nonnull align 8 dereferenceable(8) @FLAGS_grpc_chaotic_good_metrics_update_interval_ms, ptr noundef nonnull @.str.2) ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { builtin allocsize(0) }
attributes #17 = { builtin nounwind }
attributes #18 = { noreturn }
attributes #19 = { nounwind }
attributes #20 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !20}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !9, i64 0}
!11 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!12 = !{!11, !10, i64 0}
!13 = !{!11, !10, i64 8}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!16 = !{!"long", !5, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0, !16, i64 8, !5, i64 16}
!18 = !{!17, !14, i64 0}
!19 = !{!5, !5, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!11, !10, i64 16}
!22 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!23 = !{!10, !10, i64 0}
!24 = !{!16, !16, i64 0}
!25 = !{!14, !14, i64 0}
!26 = !{!17, !16, i64 8}
!27 = !{!6, !6, i64 0}
!28 = !{!"bool", !5, i64 0}
!29 = !{!"_ZTSSt22_Optional_payload_baseIiE", !5, i64 0, !28, i64 4}
!30 = !{!29, !28, i64 4}
!31 = !{i8 0, i8 2}
!32 = !{}
!33 = !{!15, !14, i64 0}
!34 = !{!"_ZTSSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !5, i64 0, !28, i64 32}
!35 = !{!34, !28, i64 32}
!36 = !{!28, !28, i64 0}
!37 = !{!"_ZTSSt22_Optional_payload_baseIbE", !5, i64 0, !28, i64 1}
!38 = !{!37, !28, i64 1}
!39 = !{!"double", !5, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!"_ZTSSt22_Optional_payload_baseIdE", !5, i64 0, !28, i64 8}
!42 = !{!41, !28, i64 8}
!43 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb0ELb0EE", !34, i64 0}
!44 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EE", !43, i64 0}
!45 = !{!"_ZTSSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EE", !44, i64 0}
!46 = !{!"_ZTSSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !45, i64 0}
!47 = !{!"_ZTSN9grpc_core10ConfigVarsE", !6, i64 0, !6, i64 4, !6, i64 8, !39, i64 16, !39, i64 24, !28, i64 32, !28, i64 33, !28, i64 34, !28, i64 35, !28, i64 36, !28, i64 37, !17, i64 40, !17, i64 72, !17, i64 104, !17, i64 136, !17, i64 168, !17, i64 200, !46, i64 232, !46, i64 272}
!48 = !{!47, !6, i64 0}
!49 = !{!47, !6, i64 4}
!50 = !{!47, !6, i64 8}
!51 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!52 = !{!47, !39, i64 16}
!53 = !{!47, !39, i64 24}
!54 = !{!47, !28, i64 32}
!55 = !{!47, !28, i64 33}
!56 = !{!47, !28, i64 34}
!57 = !{!47, !28, i64 35}
!58 = !{!47, !28, i64 36}
!59 = !{!47, !28, i64 37}
!60 = distinct !{!60, i1 true, !"_ZN4absl12lts_2025051211UnparseFlagISt8optionalIiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_"}
!61 = distinct !{!61, !60, !"_ZN4absl12lts_2025051211UnparseFlagISt8optionalIiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_: argument 0"}
!62 = distinct !{!62, i1 true, !"_ZN4absl12lts_2025051214flags_internal7UnparseISt8optionalIiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_"}
!63 = distinct !{!63, !62, !"_ZN4absl12lts_2025051214flags_internal7UnparseISt8optionalIiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_: argument 0"}
!64 = distinct !{!64, i1 true, !"_ZN4absl12lts_2025051214flags_internal15AbslUnparseFlagIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalIT_E"}
!65 = distinct !{!65, !64, !"_ZN4absl12lts_2025051214flags_internal15AbslUnparseFlagIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalIT_E: argument 0"}
!66 = distinct !{!66, i1 true, !"_ZN4absl12lts_2025051211UnparseFlagIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_"}
!67 = distinct !{!67, !66, !"_ZN4absl12lts_2025051211UnparseFlagIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_: argument 0"}
!68 = !{!61}
!69 = !{!63}
!70 = !{!65}
!71 = !{!65, !63, !61}
!72 = !{!67, !65, !63, !61}
!73 = distinct !{!73, i1 true, !"_ZN4absl12lts_2025051211UnparseFlagISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES8_RKT_"}
!74 = distinct !{!74, !73, !"_ZN4absl12lts_2025051211UnparseFlagISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES8_RKT_: argument 0"}
!75 = distinct !{!75, i1 true, !"_ZN4absl12lts_2025051214flags_internal7UnparseISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES9_RKT_"}
!76 = distinct !{!76, !75, !"_ZN4absl12lts_2025051214flags_internal7UnparseISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES9_RKT_: argument 0"}
!77 = distinct !{!77, i1 true, !"_ZN4absl12lts_2025051214flags_internal15AbslUnparseFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_RKSt8optionalIT_E"}
!78 = distinct !{!78, !77, !"_ZN4absl12lts_2025051214flags_internal15AbslUnparseFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_RKSt8optionalIT_E: argument 0"}
!79 = distinct !{!79, i1 true, !"_ZN4absl12lts_2025051211UnparseFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_RKT_"}
!80 = distinct !{!80, !79, !"_ZN4absl12lts_2025051211UnparseFlagINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_RKT_: argument 0"}
!81 = distinct !{!81, i1 true, !"_ZN4absl12lts_2025051214flags_internal7UnparseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_RKT_"}
!82 = distinct !{!82, !81, !"_ZN4absl12lts_2025051214flags_internal7UnparseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_RKT_: argument 0"}
!83 = !{!74}
!84 = !{!76}
!85 = !{!78}
!86 = !{!78, !76, !74}
!87 = !{!82, !80, !78, !76, !74}
!88 = distinct !{!88, i1 true, !"_ZN4absl12lts_2025051211UnparseFlagISt8optionalIbEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_"}
!89 = distinct !{!89, !88, !"_ZN4absl12lts_2025051211UnparseFlagISt8optionalIbEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_: argument 0"}
!90 = distinct !{!90, i1 true, !"_ZN4absl12lts_2025051214flags_internal7UnparseISt8optionalIbEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_"}
!91 = distinct !{!91, !90, !"_ZN4absl12lts_2025051214flags_internal7UnparseISt8optionalIbEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_: argument 0"}
!92 = distinct !{!92, i1 true, !"_ZN4absl12lts_2025051214flags_internal15AbslUnparseFlagIbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalIT_E"}
!93 = distinct !{!93, !92, !"_ZN4absl12lts_2025051214flags_internal15AbslUnparseFlagIbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalIT_E: argument 0"}
!94 = distinct !{!94, i1 true, !"_ZN4absl12lts_2025051211UnparseFlagIbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_"}
!95 = distinct !{!95, !94, !"_ZN4absl12lts_2025051211UnparseFlagIbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_: argument 0"}
!96 = !{!89}
!97 = !{!91}
!98 = !{!93}
!99 = !{!93, !91, !89}
!100 = !{!95, !93, !91, !89}
!101 = distinct !{!101, i1 true, !"_ZN4absl12lts_2025051211UnparseFlagISt8optionalIdEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_"}
!102 = distinct !{!102, !101, !"_ZN4absl12lts_2025051211UnparseFlagISt8optionalIdEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_: argument 0"}
!103 = distinct !{!103, i1 true, !"_ZN4absl12lts_2025051214flags_internal7UnparseISt8optionalIdEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_"}
!104 = distinct !{!104, !103, !"_ZN4absl12lts_2025051214flags_internal7UnparseISt8optionalIdEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_: argument 0"}
!105 = distinct !{!105, i1 true, !"_ZN4absl12lts_2025051214flags_internal15AbslUnparseFlagIdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalIT_E"}
!106 = distinct !{!106, !105, !"_ZN4absl12lts_2025051214flags_internal15AbslUnparseFlagIdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8optionalIT_E: argument 0"}
!107 = distinct !{!107, i1 true, !"_ZN4absl12lts_2025051211UnparseFlagIdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_"}
!108 = distinct !{!108, !107, !"_ZN4absl12lts_2025051211UnparseFlagIdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_: argument 0"}
!109 = !{!102}
!110 = !{!104}
!111 = !{!106}
!112 = !{!106, !104, !102}
!113 = !{!108, !106, !104, !102}
!114 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!115 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !16, i64 0, !14, i64 8}
!116 = !{!115, !16, i64 0}
!117 = !{!115, !14, i64 8}
!118 = distinct !{!118, !20}
!119 = distinct !{!119, !20}
!120 = distinct !{!120, !20}
!121 = distinct !{!121, !20}
!122 = distinct !{!122, !20}
end_hunk_2
