inline.NumInlined: 924
inline.NumDeleted: 458
begin_hunk_0_@_ZN5arrow4util3UriaSEOS1_:bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow4util3Uri6schemeB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !40     ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !42  ; 3 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val1 = load ptr, ptr %i.b, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %i.c = icmp eq ptr %.val, null                  ; 2 uses
  %i.d = ptrtoint ptr %.val1 to i64
  %i.e = ptrtoint ptr %.val to i64
  %i.f = sub i64 %i.d, %i.e
  %.sroa.3.0.i.i = select i1 %i.c, ptr @.str.2, ptr %.val ; 2 uses
  %.sroa.0.0.i.i = select i1 %i.c, i64 0, i64 %i.f ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !7, !alias.scope !43
  %i.h = icmp ugt i64 %.sroa.0.0.i.i, 15
  br i1 %i.h, label %bb.b, label %._crit_edge.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp slt i64 %.sroa.0.0.i.i, 0
  br i1 %i.i, label %.noexc.i.i.i.i, label %bb.c

.noexc.i.i.i.i:                                   ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #22
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw i64 %.sroa.0.0.i.i, 1            ; 2 uses
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %.noexc9.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, !prof !17

.noexc9.i.i.i.i:                                  ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i: ; preds = %bb.c
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #23 ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !16, !alias.scope !43
  store i64 %.sroa.0.0.i.i, ptr %i.g, align 8, !tbaa !14, !alias.scope !43
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, %bb.a
  %i.m = phi ptr [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i ], [ %i.g, %bb.a ] ; 3 uses
  switch i64 %.sroa.0.0.i.i, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZN5arrow4util12_GLOBAL__N_117TextRangeToStringB5cxx11ERK19UriTextRangeStructA.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.n = load i8, ptr %.sroa.3.0.i.i, align 1, !tbaa !14, !noalias !43
  store i8 %i.n, ptr %i.m, align 1, !tbaa !14
  br label %_ZN5arrow4util12_GLOBAL__N_117TextRangeToStringB5cxx11ERK19UriTextRangeStructA.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull align 1 %.sroa.3.0.i.i, i64 %.sroa.0.0.i.i, i1 false)
  br label %_ZN5arrow4util12_GLOBAL__N_117TextRangeToStringB5cxx11ERK19UriTextRangeStructA.exit

_ZN5arrow4util12_GLOBAL__N_117TextRangeToStringB5cxx11ERK19UriTextRangeStructA.exit: ; preds = %._crit_edge.i.i.i.i.i, %bb.d, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.i.i, ptr %i.o, align 8, !tbaa !11, !alias.scope !43
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.0.0.i.i
  store i8 0, ptr %i.p, align 1, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK5arrow4util3Uri14is_file_schemeEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !40
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.c = load i8, ptr %i.b, align 8, !tbaa !46, !range !47, !noundef !48
  %i.d = trunc nuw i8 %i.c to i1
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow4util3Uri4hostB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.val = load ptr, ptr %i.b, align 8, !tbaa !42  ; 3 uses
  %i.c = getelementptr i8, ptr %i.a, i64 40
  %.val1 = load ptr, ptr %i.c, align 8
  %i.d = icmp eq ptr %.val, null                  ; 2 uses
  %i.e = ptrtoint ptr %.val1 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub i64 %i.e, %i.f
  %.sroa.3.0.i = select i1 %i.d, ptr @.str.2, ptr %.val
  %.sroa.0.0.i = select i1 %i.d, i64 0, i64 %i.g
  tail call void @_ZN5arrow4util11UriUnescapeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %.sroa.0.0.i, ptr nonnull %.sroa.3.0.i)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK5arrow4util3Uri8has_hostEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !40
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.val = load ptr, ptr %i.b, align 8, !tbaa !42
  %i.c = icmp ne ptr %.val, null
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow4util3Uri9port_textB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.val = load ptr, ptr %i.b, align 8, !tbaa !42  ; 3 uses
  %i.c = getelementptr i8, ptr %i.a, i64 88
  %.val1 = load ptr, ptr %i.c, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  %i.d = icmp eq ptr %.val, null                  ; 2 uses
  %i.e = ptrtoint ptr %.val1 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub i64 %i.e, %i.f
  %.sroa.3.0.i.i = select i1 %i.d, ptr @.str.2, ptr %.val ; 2 uses
  %.sroa.0.0.i.i = select i1 %i.d, i64 0, i64 %i.g ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !7, !alias.scope !49
  %i.i = icmp ugt i64 %.sroa.0.0.i.i, 15
  br i1 %i.i, label %bb.b, label %._crit_edge.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.j = icmp slt i64 %.sroa.0.0.i.i, 0
  br i1 %i.j, label %.noexc.i.i.i.i, label %bb.c

.noexc.i.i.i.i:                                   ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #22
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.0.0.i.i, 1            ; 2 uses
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %.noexc9.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, !prof !17

.noexc9.i.i.i.i:                                  ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i: ; preds = %bb.c
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #23 ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !16, !alias.scope !49
  store i64 %.sroa.0.0.i.i, ptr %i.h, align 8, !tbaa !14, !alias.scope !49
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, %bb.a
  %i.n = phi ptr [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i ], [ %i.h, %bb.a ] ; 3 uses
  switch i64 %.sroa.0.0.i.i, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZN5arrow4util12_GLOBAL__N_117TextRangeToStringB5cxx11ERK19UriTextRangeStructA.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.o = load i8, ptr %.sroa.3.0.i.i, align 1, !tbaa !14, !noalias !49
  store i8 %i.o, ptr %i.n, align 1, !tbaa !14
  br label %_ZN5arrow4util12_GLOBAL__N_117TextRangeToStringB5cxx11ERK19UriTextRangeStructA.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %.sroa.3.0.i.i, i64 %.sroa.0.0.i.i, i1 false)
  br label %_ZN5arrow4util12_GLOBAL__N_117TextRangeToStringB5cxx11ERK19UriTextRangeStructA.exit

_ZN5arrow4util12_GLOBAL__N_117TextRangeToStringB5cxx11ERK19UriTextRangeStructA.exit: ; preds = %._crit_edge.i.i.i.i.i, %bb.d, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.i.i, ptr %i.p, align 8, !tbaa !11, !alias.scope !49
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.0.0.i.i
  store i8 0, ptr %i.q, align 1, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK5arrow4util3Uri4portEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !40
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.c = load i32, ptr %i.b, align 8, !tbaa !21
  ret i32 %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow4util3Uri8usernameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val = load ptr, ptr %i.b, align 8, !tbaa !42  ; 5 uses
  %i.c = getelementptr i8, ptr %i.a, i64 24
  %.val3 = load ptr, ptr %i.c, align 8
  %i.d = icmp eq ptr %.val, null                  ; 2 uses
  %i.e = ptrtoint ptr %.val3 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %.not1112 = icmp eq i64 %i.g, 0
  %.not11 = select i1 %i.d, i1 true, i1 %.not1112
  br i1 %.not11, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.a
  %i.h = tail call ptr @memchr(ptr noundef nonnull %.val, i32 noundef 58, i64 noundef %i.g) #25 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %.val to i64
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %.not = icmp eq i64 %i.k, -1
  %or.cond = or i1 %.not.i.i, %.not
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.k)
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ %i.g, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ], [ %.sroa.speculated.i, %bb.b ], [ 0, %bb.a ]
  %.sroa.3.0.i = select i1 %i.d, ptr @.str.2, ptr %.val
  tail call void @_ZN5arrow4util11UriUnescapeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %.sroa.0.0, ptr nonnull %.sroa.3.0.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow4util3Uri8passwordB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val = load ptr, ptr %i.b, align 8, !tbaa !42  ; 6 uses
  %i.c = getelementptr i8, ptr %i.a, i64 24
  %.val4 = load ptr, ptr %i.c, align 8            ; 2 uses
  %i.d = icmp eq ptr %.val, null
  %i.e = ptrtoint ptr %.val4 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %.not13 = icmp eq ptr %.val4, %.val
  %.not = select i1 %i.d, i1 true, i1 %.not13
  br i1 %.not, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.a
  %i.h = tail call ptr @memchr(ptr noundef nonnull %.val, i32 noundef 58, i64 noundef %i.g) #25 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %.val to i64
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %i.l = icmp eq i64 %i.k, -1
  %or.cond = or i1 %.not.i.i, %i.l
  br i1 %or.cond, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread, label %bb.b

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.n, align 8, !tbaa !11
  store i8 0, ptr %i.m, align 8, !tbaa !14
  br label %bb.d

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.o = add nuw i64 %i.k, 1                      ; 3 uses
  %.not14 = icmp ult i64 %i.k, %i.g
  br i1 %.not14, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.23, i64 noundef %i.o, i64 noundef %i.g) #22
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.b
  %i.p = sub nuw i64 %i.g, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 %i.o
  tail call void @_ZN5arrow4util11UriUnescapeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %i.p, ptr nonnull %i.q)
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow4util3Uri4pathB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 26 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !40     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 249
  %i.d = load i8, ptr %i.c, align 1, !tbaa !52, !range !47, !noundef !48
  %i.e = trunc nuw i8 %i.d to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  br i1 %i.e, label %bb.b, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.3, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b, %bb.a
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !53   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !53   ; 3 uses
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %._crit_edge, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17.peel

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %.sroa.2.0..sroa_idx.peel.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.2.0.copyload.peel.pre = load ptr, ptr %.sroa.2.0..sroa_idx.peel.phi.trans.insert, align 8, !tbaa !54
  %.sroa.0.0.copyload.peel.pre = load i64, ptr %i.i, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZN5arrow4util11UriUnescapeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i64 %.sroa.0.0.copyload.peel.pre, ptr %.sroa.2.0.copyload.peel.pre)
          to label %bb.d unwind label %.loopexit.split-lp28

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17.peel
  %i.p = load ptr, ptr %3, align 8, !tbaa !16
  %i.q = load i64, ptr %i.n, align 8, !tbaa !11
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef %i.p, i64 noundef %i.q)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel unwind label %.loopexit.split-lp33 ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel: ; preds = %bb.d
  %i.s = load ptr, ptr %3, align 8, !tbaa !16     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.o
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel
  %i.u = load i64, ptr %i.o, align 8, !tbaa !14
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.k
  br i1 %i.x, label %._crit_edge, label %.peel.next

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !56)
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !62, !noalias !66 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i: ; preds = %._crit_edge
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !67, !noalias !66 ; 2 uses
  %i.ad = icmp ugt ptr %i.aa, %i.ac
  %.08.i9.i.i = select i1 %i.ad, ptr %i.aa, ptr %i.ac ; 2 uses
  %.not.i.i = icmp eq ptr %.08.i9.i.i, null
  br i1 %.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !68, !noalias !66
  %i.ah = ptrtoint ptr %.08.i9.i.i to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !11, !noalias !66
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !16, !noalias !66
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1, !tbaa !14, !noalias !66
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i, %._crit_edge
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.ao, ptr %0, align 8, !tbaa !7, !alias.scope !66
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !16, !noalias !66 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 7 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.at = load i64, ptr %i.as, align 8, !tbaa !11, !noalias !66 ; 3 uses
  %i.au = icmp ult i64 %i.at, 16
  call void @llvm.assume(i1 %i.au)
  %i.av = add nuw nsw i64 %i.at, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ao, ptr noundef nonnull align 8 dereferenceable(1) %i.aq, i64 %i.av, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.ap, ptr %0, align 8, !tbaa !16, !alias.scope !66
  %i.aw = load i64, ptr %i.aq, align 8, !tbaa !14, !noalias !66
  store i64 %i.aw, ptr %i.ao, align 8, !tbaa !14, !alias.scope !66
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 104
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !11, !noalias !66
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.e
  %i.ax = phi i64 [ %i.at, %bb.e ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ax, ptr %i.az, align 8, !tbaa !11, !alias.scope !66
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !16, !noalias !66
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ay, i8 0, i64 9, i1 false), !noalias !66
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.y, ptr noundef nonnull %i.aq, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = load ptr, ptr %0, align 8, !tbaa !16, !alias.scope !66 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.ao
  br i1 %i.bc, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  %i.bd = load i64, ptr %i.ao, align 8, !tbaa !14, !alias.scope !66
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #24
  br label %.body

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.021.024 = phi ptr [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel ] ; 3 uses
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.3, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17 unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %.peel.next
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17: ; preds = %.peel.next
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %.sroa.0.0.copyload = load i64, ptr %.sroa.021.024, align 8, !tbaa !55
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.021.024, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !54
  invoke void @_ZN5arrow4util11UriUnescapeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload)
          to label %bb.h unwind label %.loopexit27

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17
  %i.bg = load ptr, ptr %3, align 8, !tbaa !16
  %i.bh = load i64, ptr %i.n, align 8, !tbaa !11
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef %i.bg, i64 noundef %i.bh)
end_hunk_0
