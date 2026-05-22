inline.NumInlined: 355
inline.NumDeleted: 176
begin_hunk_0_@_ZN6google8protobuf8compiler23ParseGeneratorParameterESt17basic_string_viewIcSt11char_traitsIcEEPSt6vectorISt4pairINSt7__cxx1112basic_stringIcS4_SaIcEEESB_ESaISC_EE:bb.a
  br label %bb.m

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJRSt17basic_string_viewIcS4_ERA1_KcEEERS7_DpOT_.exit: ; preds = %bb.e, %.noexc, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12emplace_backIJSt17basic_string_viewIcS4_ESC_EEERS7_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.027.039, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ai, %i.d
  br i1 %.not, label %._crit_edge.loopexit, label %bb.c

bb.m:                                             ; preds = %bb.l, %bb.f
  %.pn14 = phi { ptr, i32 } [ %i.aa, %bb.f ], [ %lpad.phi, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.aj = load ptr, ptr %4, align 8, !tbaa !22    ; 3 uses
  %.not.i.i.i25 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i25, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit26, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !24
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #17
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit26

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit26: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  resume { ptr, i32 } %.pn14
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6google8protobuf8compiler10StripProtoB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr readonly captures(address_is_null) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = freeze i64 %1                            ; 10 uses
  %i.d = icmp ult i64 %i.c, 11
  br i1 %i.d, label %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread38, label %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit

_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit: ; preds = %bb.a
  %i.e = getelementptr i8, ptr %2, i64 %i.c
  %i.f = getelementptr i8, ptr %i.e, i64 -11      ; 2 uses
  %i.g = load i64, ptr %i.f, align 1
  %i.h = xor i64 %i.g, 7306087041378447406
  %i.i = getelementptr i8, ptr %i.f, i64 3
  %i.j = load i64, ptr %i.i, align 1
  %i.k = xor i64 %i.j, 7810779306592793711
  %i.l = or i64 %i.h, %i.k
  %i.m = icmp ne i64 %i.l, 0
  %i.n = zext i1 %i.m to i32
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.b, label %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread38.thread

bb.b:                                             ; preds = %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit
  %i.p = add i64 %i.c, -11                        ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %i.p ; 2 uses
  %i.r = load i64, ptr %i.q, align 1
  %i.s = xor i64 %i.r, 7306087041378447406
  %i.t = getelementptr i8, ptr %i.q, i64 3
  %i.u = load i64, ptr %i.t, align 1
  %i.v = xor i64 %i.u, 7810779306592793711
  %i.w = or i64 %i.s, %i.v
  %i.x = icmp ne i64 %i.w, 0
  %i.y = zext i1 %i.x to i32
  %i.z = icmp eq i32 %i.y, 0
  %spec.select.i = select i1 %i.z, i64 %i.p, i64 %i.c ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.aa, ptr %0, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i64 %spec.select.i, ptr %i.b, align 8, !tbaa !8
  %i.ab = icmp ugt i64 %spec.select.i, 15
  br i1 %i.ab, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.b
  %i.ac = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.ac, ptr %0, align 8, !tbaa !35
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !8
  store i64 %i.ad, ptr %i.aa, align 8, !tbaa !16
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.b
  %i.ae = phi ptr [ %i.ac, %.noexc.i.i.i ], [ %i.aa, %bb.b ] ; 2 uses
  switch i64 %spec.select.i, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.af = load i8, ptr %2, align 1, !tbaa !16
  store i8 %i.af, ptr %i.ae, align 1, !tbaa !16
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr nonnull align 1 %2, i64 %spec.select.i, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i
  %i.ag = load i64, ptr %i.b, align 8, !tbaa !8   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !37
  %i.ai = load ptr, ptr %0, align 8, !tbaa !35
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  store i8 0, ptr %i.aj, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %bb.i

_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread38: ; preds = %bb.a
  %or.cond.not.i11 = icmp samesign ugt i64 %i.c, 5
  br i1 %or.cond.not.i11, label %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread38.thread, label %_ZN4absl12lts_2025051211StripSuffixESt17basic_string_viewIcSt11char_traitsIcEES4_.exit18

_ZN4absl12lts_2025051211StripSuffixESt17basic_string_viewIcSt11char_traitsIcEES4_.exit18: ; preds = %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread38
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.ak, ptr %0, align 8, !tbaa !33
  %i.al = icmp eq ptr %2, null
  %i.am = icmp ne i64 %i.c, 0
  %or.cond.i.i.i22 = and i1 %i.al, %i.am
  br i1 %or.cond.i.i.i22, label %.noexc25, label %.thread

.thread:                                          ; preds = %_ZN4absl12lts_2025051211StripSuffixESt17basic_string_viewIcSt11char_traitsIcEES4_.exit18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.c, ptr %i.a, align 8, !tbaa !8
  br label %._crit_edge.i.i.i.i23

.noexc25:                                         ; preds = %_ZN4absl12lts_2025051211StripSuffixESt17basic_string_viewIcSt11char_traitsIcEES4_.exit18
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.7) #18
  unreachable

_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread38.thread: ; preds = %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit, %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread38
  %i.an = add i64 %i.c, -6                        ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 %i.an ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 1
  %i.aq = xor i32 %i.ap, 1869770798
  %i.ar = getelementptr i8, ptr %i.ao, i64 4
  %i.as = load i16, ptr %i.ar, align 1
  %i.at = zext i16 %i.as to i32
  %i.au = xor i32 %i.at, 28532
  %i.av = or i32 %i.aq, %i.au
  %i.aw = icmp ne i32 %i.av, 0
  %i.ax = zext i1 %i.aw to i32
  %i.ay = icmp eq i32 %i.ax, 0
  %spec.select.i17 = select i1 %i.ay, i64 %i.an, i64 %i.c ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.az, ptr %0, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %spec.select.i17, ptr %i.a, align 8, !tbaa !8
  %i.ba = icmp ugt i64 %spec.select.i17, 15
  br i1 %i.ba, label %.noexc.i.i.i24, label %._crit_edge.i.i.i.i23

.noexc.i.i.i24:                                   ; preds = %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread38.thread
  %i.bb = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.bb, ptr %0, align 8, !tbaa !35
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !8
  store i64 %i.bc, ptr %i.az, align 8, !tbaa !16
  br label %._crit_edge.i.i.i.i23

._crit_edge.i.i.i.i23:                            ; preds = %.thread, %.noexc.i.i.i24, %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread38.thread
  %.sroa.05.0.i124345 = phi i64 [ %spec.select.i17, %.noexc.i.i.i24 ], [ %spec.select.i17, %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread38.thread ], [ %i.c, %.thread ] ; 2 uses
  %i.bd = phi ptr [ %i.bb, %.noexc.i.i.i24 ], [ %i.az, %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread38.thread ], [ %i.ak, %.thread ] ; 2 uses
  switch i64 %.sroa.05.0.i124345, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i23
  %i.be = load i8, ptr %2, align 1, !tbaa !16
  store i8 %i.be, ptr %i.bd, align 1, !tbaa !16
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i23
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bd, ptr align 1 %2, i64 %.sroa.05.0.i124345, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i23
  %i.bf = load i64, ptr %i.a, align 8, !tbaa !8   ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !37
  %i.bh = load ptr, ptr %0, align 8, !tbaa !35
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bf
  store i8 0, ptr %i.bi, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN6google8protobuf8compiler19IsKnownFeatureProtoESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr readonly captures(none) %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i64 %0, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit [
    i64 34, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
    i64 35, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i5
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.a
  %bcmp.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(34) %1, ptr noundef nonnull dereferenceable(34) @.str.3, i64 34)
  %2 = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i5:  ; preds = %bb.a
  %bcmp.i6 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(35) %1, ptr noundef nonnull dereferenceable(35) @.str.4, i64 35)
  %i.a = icmp eq i32 %bcmp.i6, 0
  br label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i5, %bb.a
  %.0 = phi i1 [ %2, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ %i.a, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i5 ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN6google8protobuf8internal5IsOssEv() local_unnamed_addr #3 {
bb.a:
  store i8 1, ptr @_ZN6google8protobuf8internal15is_oss_was_readE, align 1, !tbaa !38
  %i.a = load i8, ptr @_ZN6google8protobuf8internal6is_ossE, align 1, !tbaa !38, !range !40, !noundef !41
  %i.b = trunc nuw i8 %i.a to i1
  ret i1 %i.b
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #16 ; 0 uses
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #7

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS8_SaIS8_EES8_Lb0EEclERKS9_(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(18) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::array", align 8       ; 6 uses
  %4 = alloca %"class.absl::lts_20250512::strings_internal::SplitIterator", align 8 ; 16 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42)
  store i64 0, ptr %4, align 8, !tbaa !45, !alias.scope !42
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 10 uses
  store i32 0, ptr %i.a, align 8, !tbaa !51, !alias.scope !42
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false), !alias.scope !42
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  store ptr %2, ptr %i.c, align 8, !tbaa !52, !alias.scope !42
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !16, !noalias !42
  store i8 %i.f, ptr %i.d, align 8, !tbaa !16, !alias.scope !42
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !13, !noalias !42
  %i.g = icmp eq ptr %.sroa.2.0.copyload.i.i.i, null
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %2, align 8, !tbaa !8, !noalias !42
  store i32 2, ptr %i.a, align 8, !tbaa !51, !alias.scope !42
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %4, align 8, !tbaa !45, !alias.scope !42
  br label %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i, %bb.c
  %i.h = phi i64 [ %i.y, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i ], [ 0, %bb.c ]
  %i.i = load i32, ptr %i.a, align 8, !tbaa !51, !alias.scope !42
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 2, ptr %i.a, align 8, !tbaa !51, !alias.scope !42
  br label %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit

bb.f:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !52, !alias.scope !42 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.k, align 8, !tbaa !8 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !13 ; 3 uses
  %i.l = invoke { i64, ptr } @_ZNK4absl12lts_202505126ByChar4FindESt17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef nonnull align 1 dereferenceable(1) %i.d, i64 %.sroa.0.0.copyload.i.i.i.i, ptr %.sroa.2.0.copyload.i.i.i.i, i64 noundef %i.h)
          to label %.noexc unwind label %.loopexit20 ; 2 uses

.noexc:                                           ; preds = %bb.f
  %i.m = extractvalue { i64, ptr } %i.l, 0
  %i.n = extractvalue { i64, ptr } %i.l, 1        ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i, i64 %.sroa.0.0.copyload.i.i.i.i
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.noexc
  store i32 1, ptr %i.a, align 8, !tbaa !51, !alias.scope !42
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.noexc
  %i.q = load i64, ptr %4, align 8, !tbaa !45, !alias.scope !42 ; 5 uses
  %i.r = icmp ugt i64 %i.q, %.sroa.0.0.copyload.i.i.i.i
  br i1 %i.r, label %bb.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i64 noundef %i.q, i64 noundef %.sroa.0.0.copyload.i.i.i.i) #18
          to label %.noexc13 unwind label %.loopexit.split-lp21

.noexc13:                                         ; preds = %bb.i
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i: ; preds = %bb.h
  %i.s = ptrtoint ptr %i.n to i64
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i, i64 %i.q ; 2 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.s, %i.u
  %i.w = sub nuw i64 %.sroa.0.0.copyload.i.i.i.i, %i.q
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.w, i64 %i.v) ; 3 uses
  store i64 %.sroa.speculated.i.i.i.i, ptr %i.b, align 8, !tbaa !8, !alias.scope !42
  store ptr %i.t, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !13, !alias.scope !42
  %i.x = add i64 %i.q, %i.m
  %i.y = add i64 %i.x, %.sroa.speculated.i.i.i.i  ; 2 uses
  store i64 %i.y, ptr %4, align 8, !tbaa !45, !alias.scope !42
  %.not.i.i.i = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %.not.i.i.i, label %bb.d, label %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit, !llvm.loop !53

_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i, %bb.b, %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.j

bb.j:                                             ; preds = %.critedge, %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit
  %i.ab = load i32, ptr %i.a, align 8, !tbaa !51
  %i.ac = icmp eq i32 %i.ab, 2
  br i1 %i.ac, label %bb.k, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.j
  %.pre = load ptr, ptr %i.z, align 8, !tbaa !28
  %.pre41 = load i64, ptr %i.b, align 8, !tbaa !26
  br label %.preheader

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void

.loopexit20:                                      ; preds = %bb.f
  %lpad.loopexit22 = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp21:                             ; preds = %bb.i
  %lpad.loopexit.split-lp23 = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.preheader:                                       ; preds = %.preheader.preheader, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit
  %i.ad = phi i64 [ %.sroa.speculated.i.i, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ], [ %.pre41, %.preheader.preheader ]
  %i.ae = phi ptr [ %i.au, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ], [ %.pre, %.preheader.preheader ]
  %.0 = phi i64 [ %i.bb, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %.0 ; 2 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !55
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %i.ad, ptr %i.ag, align 8, !tbaa !57
  br label %bb.l

bb.l:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i, %.preheader
  %i.ah = load i32, ptr %i.a, align 8, !tbaa !51
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit.thread, label %bb.m

_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit.thread: ; preds = %bb.l
  store i32 2, ptr %i.a, align 8, !tbaa !51
  %i.aj = add nuw nsw i64 %.0, 1
  br label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !52  ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ak, align 8, !tbaa !8 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !13 ; 3 uses
  %i.al = load i64, ptr %4, align 8, !tbaa !45
  %i.am = invoke { i64, ptr } @_ZNK4absl12lts_202505126ByChar4FindESt17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef nonnull align 1 dereferenceable(1) %i.d, i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i, i64 noundef %i.al)
          to label %.noexc14 unwind label %.loopexit ; 2 uses

.noexc14:                                         ; preds = %bb.m
  %i.an = extractvalue { i64, ptr } %i.am, 0
  %i.ao = extractvalue { i64, ptr } %i.am, 1      ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 %.sroa.0.0.copyload.i.i
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.noexc14
end_hunk_0
