Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libphonenumber/original/stringutil?download=true
inline.NumInlined: 443
inline.NumDeleted: 158
begin_hunk_0_@_ZN4i18n12phonenumbers10SimpleItoaB5cxx11Ei:bb.a
  %i.j = icmp samesign ugt i64 %i.f, 15
  br i1 %i.j, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.c
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !16, !alias.scope !30
  %i.l = load i64, ptr %i.a, align 8, !tbaa !21, !noalias !30
  store i64 %i.l, ptr %i.i, align 8, !tbaa !15, !alias.scope !30
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.c
  %i.m = phi ptr [ %i.k, %.noexc.i.i ], [ %i.i, %bb.c ] ; 2 uses
  switch i64 %i.f, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZN4absl7debian36StrCatB5cxx11ERKNS0_8AlphaNumE.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.n = load i8, ptr %i.b, align 8, !tbaa !15
  store i8 %i.n, ptr %i.m, align 1, !tbaa !15
  br label %_ZN4absl7debian36StrCatB5cxx11ERKNS0_8AlphaNumE.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr nonnull align 8 %i.b, i64 %i.f, i1 false)
  br label %_ZN4absl7debian36StrCatB5cxx11ERKNS0_8AlphaNumE.exit

_ZN4absl7debian36StrCatB5cxx11ERKNS0_8AlphaNumE.exit: ; preds = %._crit_edge.i.i.i, %bb.d, %bb.e
  %i.o = load i64, ptr %i.a, align 8, !tbaa !21, !noalias !30 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !14, !alias.scope !30
  %i.q = load ptr, ptr %0, align 8, !tbaa !16, !alias.scope !30
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18, !noalias !30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4i18n12phonenumbers10SimpleItoaB5cxx11Em(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.absl::debian3::AlphaNum", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.c = call noundef ptr @_ZN4absl7debian316numbers_internal15FastIntToBufferEmPc(i64 noundef %1, ptr noundef nonnull %i.b)
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !18
  %i.g = icmp sgt i64 %i.f, -1
  br i1 %i.g, label %bb.c, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  call void @llvm.trap() #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.f, ptr %i.h, align 8, !tbaa !19
  call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !11, !alias.scope !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18, !noalias !33
  store i64 %i.f, ptr %i.a, align 8, !tbaa !21, !noalias !33
  %i.j = icmp samesign ugt i64 %i.f, 15
  br i1 %i.j, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.c
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !16, !alias.scope !33
  %i.l = load i64, ptr %i.a, align 8, !tbaa !21, !noalias !33
  store i64 %i.l, ptr %i.i, align 8, !tbaa !15, !alias.scope !33
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.c
  %i.m = phi ptr [ %i.k, %.noexc.i.i ], [ %i.i, %bb.c ] ; 2 uses
  switch i64 %i.f, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZN4absl7debian36StrCatB5cxx11ERKNS0_8AlphaNumE.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.n = load i8, ptr %i.b, align 8, !tbaa !15
  store i8 %i.n, ptr %i.m, align 1, !tbaa !15
  br label %_ZN4absl7debian36StrCatB5cxx11ERKNS0_8AlphaNumE.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr nonnull align 8 %i.b, i64 %i.f, i1 false)
  br label %_ZN4absl7debian36StrCatB5cxx11ERKNS0_8AlphaNumE.exit

_ZN4absl7debian36StrCatB5cxx11ERKNS0_8AlphaNumE.exit: ; preds = %._crit_edge.i.i.i, %bb.d, %bb.e
  %i.o = load i64, ptr %i.a, align 8, !tbaa !21, !noalias !33 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !14, !alias.scope !33
  %i.q = load ptr, ptr %0, align 8, !tbaa !16, !alias.scope !33
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18, !noalias !33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4i18n12phonenumbers10SimpleItoaB5cxx11El(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.absl::debian3::AlphaNum", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.c = call noundef ptr @_ZN4absl7debian316numbers_internal15FastIntToBufferElPc(i64 noundef %1, ptr noundef nonnull %i.b)
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !18
  %i.g = icmp sgt i64 %i.f, -1
  br i1 %i.g, label %bb.c, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  call void @llvm.trap() #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.f, ptr %i.h, align 8, !tbaa !19
  call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !11, !alias.scope !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18, !noalias !36
  store i64 %i.f, ptr %i.a, align 8, !tbaa !21, !noalias !36
  %i.j = icmp samesign ugt i64 %i.f, 15
  br i1 %i.j, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.c
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !16, !alias.scope !36
  %i.l = load i64, ptr %i.a, align 8, !tbaa !21, !noalias !36
  store i64 %i.l, ptr %i.i, align 8, !tbaa !15, !alias.scope !36
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.c
  %i.m = phi ptr [ %i.k, %.noexc.i.i ], [ %i.i, %bb.c ] ; 2 uses
  switch i64 %i.f, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZN4absl7debian36StrCatB5cxx11ERKNS0_8AlphaNumE.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.n = load i8, ptr %i.b, align 8, !tbaa !15
  store i8 %i.n, ptr %i.m, align 1, !tbaa !15
  br label %_ZN4absl7debian36StrCatB5cxx11ERKNS0_8AlphaNumE.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr nonnull align 8 %i.b, i64 %i.f, i1 false)
  br label %_ZN4absl7debian36StrCatB5cxx11ERKNS0_8AlphaNumE.exit

_ZN4absl7debian36StrCatB5cxx11ERKNS0_8AlphaNumE.exit: ; preds = %._crit_edge.i.i.i, %bb.d, %bb.e
  %i.o = load i64, ptr %i.a, align 8, !tbaa !21, !noalias !36 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !14, !alias.scope !36
  %i.q = load ptr, ptr %0, align 8, !tbaa !16, !alias.scope !36
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18, !noalias !36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN4i18n12phonenumbers15HasPrefixStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = load ptr, ptr %1, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !14   ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN4absl7debian310StartsWithENS0_11string_viewES1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !14
  %.not.i = icmp ult i64 %i.g, %i.d
  br i1 %.not.i, label %_ZN4absl7debian310StartsWithENS0_11string_viewES1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %bcmp.i = tail call i32 @bcmp(ptr %i.a, ptr %i.b, i64 %i.d)
  %i.h = icmp eq i32 %bcmp.i, 0
  br label %_ZN4absl7debian310StartsWithENS0_11string_viewES1_.exit

_ZN4absl7debian310StartsWithENS0_11string_viewES1_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.i = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ %i.h, %bb.c ]
  ret i1 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i64 @_ZN4i18n12phonenumbers7FindNthERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEci(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.011 = phi i32 [ %4, %.lr.ph ], [ 0, %bb.a ]
  %.0710 = phi i64 [ %i.c, %.lr.ph ], [ -1, %bb.a ]
  %i.b = add i64 %.0710, 1
  %i.c = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef signext %1, i64 noundef %i.b) #18 ; 3 uses
  %3 = icmp eq i64 %i.c, -1
  %4 = add nuw nsw i32 %.011, 1                   ; 2 uses
  %i.d = icmp eq i32 %4, %2
  %or.cond = select i1 %3, i1 true, i1 %i.d
  br i1 %or.cond, label %._crit_edge, label %.lr.ph, !llvm.loop !37

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.1 = phi i64 [ -1, %bb.a ], [ %i.c, %.lr.ph ]
  ret i64 %.1
}

; Function Attrs: mustprogress uwtable
define void @_ZN4i18n12phonenumbers16SplitStringUsingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcPSt6vectorIS6_SaIS6_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i8 noundef signext %1, ptr noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.absl::debian3::strings_internal::Splitter", align 8 ; 7 uses
  %4 = alloca %"class.absl::debian3::strings_internal::SplitIterator", align 8 ; 17 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.b = load ptr, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !14   ; 3 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !23, !alias.scope !47
  %.sroa.2.0..sroa_idx.i3.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.d, ptr %.sroa.2.0..sroa_idx.i3.i, align 8, !tbaa !21, !alias.scope !47
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 %1, ptr %i.e, align 8, !tbaa !15, !alias.scope !47
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store i64 0, ptr %4, align 8, !tbaa !53, !alias.scope !54
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 10 uses
  store i32 0, ptr %i.f, align 8, !tbaa !55, !alias.scope !54
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false), !alias.scope !54
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  store ptr %3, ptr %i.h, align 8, !tbaa !56, !alias.scope !54
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  store i8 %1, ptr %i.i, align 8, !tbaa !15, !alias.scope !54
  %i.j = icmp eq ptr %i.b, null
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 2, ptr %i.f, align 8, !tbaa !55, !alias.scope !54
  store i64 %i.d, ptr %4, align 8, !tbaa !53, !alias.scope !54
  br label %_ZNK4absl7debian316strings_internal8SplitterINS0_6ByCharENS0_9SkipEmptyENS0_11string_viewEE5beginEv.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  br label %bb.d

bb.d:                                             ; preds = %_ZNK4absl7debian311string_view6substrEmm.exit.i.i.i, %bb.c
  %i.k = phi i64 [ %i.ad, %_ZNK4absl7debian311string_view6substrEmm.exit.i.i.i ], [ 0, %bb.c ] ; 2 uses
  %i.l = load i32, ptr %i.f, align 8, !tbaa !55, !alias.scope !54
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 2, ptr %i.f, align 8, !tbaa !55, !alias.scope !54
  br label %_ZNK4absl7debian316strings_internal8SplitterINS0_6ByCharENS0_9SkipEmptyENS0_11string_viewEE5beginEv.exit

bb.f:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !56, !alias.scope !54 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !23 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !21 ; 4 uses
  %i.o = call { ptr, i64 } @_ZNK4absl7debian36ByChar4FindENS0_11string_viewEm(ptr noundef nonnull align 1 dereferenceable(1) %i.i, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.2.0.copyload.i.i.i.i, i64 noundef %i.k) ; 2 uses
  %i.p = extractvalue { ptr, i64 } %i.o, 0        ; 2 uses
  %i.q = extractvalue { ptr, i64 } %i.o, 1
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.2.0.copyload.i.i.i.i
  %i.s = icmp eq ptr %i.p, %i.r
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.f, align 8, !tbaa !55, !alias.scope !54
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.t = load i64, ptr %4, align 8, !tbaa !53, !alias.scope !54 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.t ; 2 uses
  %i.v = icmp ugt i64 %i.t, %.sroa.2.0.copyload.i.i.i.i
  br i1 %i.v, label %bb.i, label %bb.j, !prof !57

bb.i:                                             ; preds = %bb.h
  call void @_ZN4absl7debian313base_internal18ThrowStdOutOfRangeEPKc(ptr noundef nonnull @.str.1) #21
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.w = ptrtoint ptr %i.p to i64
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = sub nuw i64 %.sroa.2.0.copyload.i.i.i.i, %i.t
  %i.aa = call noundef i64 @llvm.umin.i64(i64 %i.y, i64 %i.z) ; 4 uses
  %i.ab = icmp sgt i64 %i.aa, -1
  br i1 %i.ab, label %_ZNK4absl7debian311string_view6substrEmm.exit.i.i.i, label %bb.k, !prof !20

bb.k:                                             ; preds = %bb.j
  call void @llvm.trap() #19
  unreachable

_ZNK4absl7debian311string_view6substrEmm.exit.i.i.i: ; preds = %bb.j
  store ptr %i.u, ptr %i.g, align 8, !tbaa !23, !alias.scope !54
  store i64 %i.aa, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !21, !alias.scope !54
  %i.ac = add i64 %i.t, %i.q
  %i.ad = add i64 %i.ac, %i.aa                    ; 3 uses
  store i64 %i.ad, ptr %4, align 8, !tbaa !53, !alias.scope !54
  %.not.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i, label %bb.d, label %_ZNK4absl7debian316strings_internal8SplitterINS0_6ByCharENS0_9SkipEmptyENS0_11string_viewEE5beginEv.exit.loopexit, !llvm.loop !42

_ZNK4absl7debian316strings_internal8SplitterINS0_6ByCharENS0_9SkipEmptyENS0_11string_viewEE5beginEv.exit.loopexit: ; preds = %_ZNK4absl7debian311string_view6substrEmm.exit.i.i.i
  %.pre = load i32, ptr %i.f, align 8, !tbaa !55
  %i.ae = icmp ne i32 %.pre, 2
  br label %_ZNK4absl7debian316strings_internal8SplitterINS0_6ByCharENS0_9SkipEmptyENS0_11string_viewEE5beginEv.exit

_ZNK4absl7debian316strings_internal8SplitterINS0_6ByCharENS0_9SkipEmptyENS0_11string_viewEE5beginEv.exit: ; preds = %_ZNK4absl7debian316strings_internal8SplitterINS0_6ByCharENS0_9SkipEmptyENS0_11string_viewEE5beginEv.exit.loopexit, %bb.b, %bb.e
  %i.af = phi i64 [ %i.ad, %_ZNK4absl7debian316strings_internal8SplitterINS0_6ByCharENS0_9SkipEmptyENS0_11string_viewEE5beginEv.exit.loopexit ], [ %i.d, %bb.b ], [ %i.k, %bb.e ]
  %i.ag = phi i1 [ %i.ae, %_ZNK4absl7debian316strings_internal8SplitterINS0_6ByCharENS0_9SkipEmptyENS0_11string_viewEE5beginEv.exit.loopexit ], [ false, %bb.b ], [ false, %bb.e ]
  %.sroa.2.0.copyload.i.i.i7 = load i64, ptr %.sroa.2.0..sroa_idx.i3.i, align 8, !tbaa !21, !noalias !58 ; 2 uses
  %i.ah = icmp ne i64 %i.af, %.sroa.2.0.copyload.i.i.i7
  %.not3.i16 = select i1 %i.ag, i1 true, i1 %i.ah
  br i1 %.not3.i16, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK4absl7debian316strings_internal8SplitterINS0_6ByCharENS0_9SkipEmptyENS0_11string_viewEE5beginEv.exit
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 12 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.l

._crit_edge:                                      ; preds = %_ZN4absl7debian316strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_9SkipEmptyENS0_11string_viewEEEEppEv.exit, %_ZNK4absl7debian316strings_internal8SplitterINS0_6ByCharENS0_9SkipEmptyENS0_11string_viewEE5beginEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void

bb.l:                                             ; preds = %.lr.ph, %_ZN4absl7debian316strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_9SkipEmptyENS0_11string_viewEEEEppEv.exit
  %.sroa.0.0.copyload = load ptr, ptr %i.g, align 8, !tbaa !23 ; 3 uses
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %.not.i = icmp eq ptr %.sroa.0.0.copyload, null
  store ptr %i.ai, ptr %5, align 8, !tbaa !11, !alias.scope !59
  br i1 %.not.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i64 0, ptr %i.aj, align 8, !tbaa !14, !alias.scope !59
  store i8 0, ptr %i.ai, align 8, !tbaa !15, !alias.scope !59
  br label %_ZNK4absl7debian311string_viewcvNSt7__cxx1112basic_stringIcSt11char_traitsIcET_EEISaIcEEEv.exit

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18, !noalias !59
  store i64 %.sroa.5.0.copyload, ptr %i.a, align 8, !tbaa !21, !noalias !59
  %i.am = icmp ugt i64 %.sroa.5.0.copyload, 15
  br i1 %i.am, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.n
  %i.an = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.an, ptr %5, align 8, !tbaa !16, !alias.scope !59
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !21, !noalias !59
  store i64 %i.ao, ptr %i.ai, align 8, !tbaa !15, !alias.scope !59
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.n
  %i.ap = phi ptr [ %i.an, %.noexc.i.i ], [ %i.ai, %bb.n ] ; 2 uses
  switch i64 %.sroa.5.0.copyload, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %bb.q
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i
  %i.aq = load i8, ptr %.sroa.0.0.copyload, align 1, !tbaa !15
  store i8 %i.aq, ptr %i.ap, align 1, !tbaa !15
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr nonnull align 1 %.sroa.0.0.copyload, i64 %.sroa.5.0.copyload, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %._crit_edge.i.i.i
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !21, !noalias !59 ; 2 uses
  store i64 %i.ar, ptr %i.aj, align 8, !tbaa !14, !alias.scope !59
  %i.as = load ptr, ptr %5, align 8, !tbaa !16, !alias.scope !59
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ar
  store i8 0, ptr %i.at, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18, !noalias !59
  br label %_ZNK4absl7debian311string_viewcvNSt7__cxx1112basic_stringIcSt11char_traitsIcET_EEISaIcEEEv.exit

_ZNK4absl7debian311string_viewcvNSt7__cxx1112basic_stringIcSt11char_traitsIcET_EEISaIcEEEv.exit: ; preds = %bb.m, %bb.q
  %i.au = load ptr, ptr %i.ak, align 8, !tbaa !26 ; 6 uses
  %i.av = load ptr, ptr %i.al, align 8, !tbaa !27
  %.not.i.i = icmp eq ptr %i.au, %i.av
  br i1 %.not.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_ZNK4absl7debian311string_viewcvNSt7__cxx1112basic_stringIcSt11char_traitsIcET_EEISaIcEEEv.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 3 uses
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !11
  %i.ax = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.ai
  br i1 %i.ay, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.az = load i64, ptr %i.aj, align 8, !tbaa !14 ; 3 uses
  %i.ba = icmp ult i64 %i.az, 16
  call void @llvm.assume(i1 %i.ba)
  %i.bb = add nuw nsw i64 %i.az, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull align 8 dereferenceable(1) %i.ai, i64 %i.bb, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.r
  store ptr %i.ax, ptr %i.au, align 8, !tbaa !16
end_hunk_0
