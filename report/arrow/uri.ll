Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/uri?download=true
inline.NumInlined: 924
inline.NumDeleted: 458
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK5arrow4util3Uri9port_textB5cxx11Ev:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i: ; preds = %bb.c
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #23 ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !19, !alias.scope !96
  store i64 %.sroa.0.0.i.i, ptr %i.h, align 8, !tbaa !17, !alias.scope !96
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, %bb.a
  %i.n = phi ptr [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i ], [ %i.h, %bb.a ] ; 3 uses
  switch i64 %.sroa.0.0.i.i, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZN5arrow4util12_GLOBAL__N_117TextRangeToStringB5cxx11ERK19UriTextRangeStructA.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.o = load i8, ptr %.sroa.3.0.i.i, align 1, !tbaa !17, !noalias !96
  store i8 %i.o, ptr %i.n, align 1, !tbaa !17
  br label %_ZN5arrow4util12_GLOBAL__N_117TextRangeToStringB5cxx11ERK19UriTextRangeStructA.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %.sroa.3.0.i.i, i64 %.sroa.0.0.i.i, i1 false)
  br label %_ZN5arrow4util12_GLOBAL__N_117TextRangeToStringB5cxx11ERK19UriTextRangeStructA.exit

_ZN5arrow4util12_GLOBAL__N_117TextRangeToStringB5cxx11ERK19UriTextRangeStructA.exit: ; preds = %._crit_edge.i.i.i.i.i, %bb.d, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.i.i, ptr %i.p, align 8, !tbaa !16, !alias.scope !96
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.0.0.i.i
  store i8 0, ptr %i.q, align 1, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK5arrow4util3Uri4portEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !42
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.c = load i32, ptr %i.b, align 8, !tbaa !40
  ret i32 %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow4util3Uri8usernameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !42     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val = load ptr, ptr %i.b, align 8, !tbaa !43  ; 5 uses
  %i.c = getelementptr i8, ptr %i.a, i64 24
  %.val3 = load ptr, ptr %i.c, align 8
  %i.d = icmp eq ptr %.val, null                  ; 2 uses
  %i.e = ptrtoint ptr %.val3 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub i64 %i.e, %i.f                       ; 5 uses
  %.not1112 = icmp eq i64 %i.g, 0
  %.not11 = select i1 %i.d, i1 true, i1 %.not1112
  br i1 %.not11, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.a
  %i.h = tail call ptr @memchr(ptr noundef nonnull %.val, i32 noundef 58, i64 noundef %i.g) #25 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %.val to i64
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %.not = icmp eq i64 %i.k, -1
  br i1 %.not, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.k)
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.a, %bb.b, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit
  %.sroa.0.0 = phi i64 [ %i.g, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit ], [ %.sroa.speculated.i, %bb.b ], [ 0, %bb.a ], [ %i.g, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ]
  %.sroa.3.0.i = select i1 %i.d, ptr @.str.2, ptr %.val
  tail call void @_ZN5arrow4util11UriUnescapeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %.sroa.0.0, ptr nonnull %.sroa.3.0.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow4util3Uri8passwordB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !42     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val = load ptr, ptr %i.b, align 8, !tbaa !43  ; 6 uses
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
  br i1 %.not.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %.val to i64
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %i.l = icmp eq i64 %i.k, -1
  br i1 %i.l, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread, label %bb.b

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.a, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.n, align 8, !tbaa !16
  store i8 0, ptr %i.m, align 8, !tbaa !17
  br label %bb.d

bb.b:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit
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
define void @_ZNK5arrow4util3Uri4pathB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 26 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !42     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 249
  %i.d = load i8, ptr %i.c, align 1, !tbaa !47, !range !45, !noundef !46
  %i.e = trunc nuw i8 %i.d to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  br i1 %i.e, label %bb.b, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.3, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b, %bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !102  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !102  ; 3 uses
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %._crit_edge, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17.peel

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %.sroa.0.0.copyload.peel = load i64, ptr %i.h, align 8, !tbaa !48
  %.sroa.2.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.2.0.copyload.peel = load ptr, ptr %.sroa.2.0..sroa_idx.peel, align 8, !tbaa !49
  invoke void @_ZN5arrow4util11UriUnescapeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i64 %.sroa.0.0.copyload.peel, ptr %.sroa.2.0.copyload.peel)
          to label %bb.c unwind label %.loopexit.split-lp30.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17.peel
  %i.o = load ptr, ptr %3, align 8, !tbaa !19
  %i.p = load i64, ptr %i.m, align 8, !tbaa !16
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef %i.o, i64 noundef %i.p)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel unwind label %.loopexit.split-lp34.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel: ; preds = %bb.c
  %i.r = load ptr, ptr %3, align 8, !tbaa !19     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.n
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel
  %i.t = load i64, ptr %i.n, align 8, !tbaa !17
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.j
  br i1 %i.w, label %._crit_edge, label %.peel.next

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !104)
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !106, !noalias !107 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i: ; preds = %._crit_edge
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %5 = load ptr, ptr %4, align 8, !tbaa !108, !noalias !107 ; 2 uses
  %6 = icmp ugt ptr %i.z, %5
  %.08.i9.i.i = select i1 %6, ptr %i.z, ptr %5    ; 2 uses
  %.not.i.i = icmp eq ptr %.08.i9.i.i, null
  br i1 %.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !109, !noalias !107
  %i.ad = ptrtoint ptr %.08.i9.i.i to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !16, !noalias !107
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !19, !noalias !107
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.af
  store i8 0, ptr %i.ai, align 1, !tbaa !17, !noalias !107
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i, %._crit_edge
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.ak, ptr %0, align 8, !tbaa !13, !alias.scope !107
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !19, !noalias !107 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 7 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !16, !noalias !107 ; 3 uses
  %i.aq = icmp ult i64 %i.ap, 16
  call void @llvm.assume(i1 %i.aq)
  %i.ar = add nuw nsw i64 %i.ap, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ak, ptr noundef nonnull align 8 dereferenceable(1) %i.am, i64 %i.ar, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.al, ptr %0, align 8, !tbaa !19, !alias.scope !107
  %i.as = load i64, ptr %i.am, align 8, !tbaa !17, !noalias !107
  store i64 %i.as, ptr %i.ak, align 8, !tbaa !17, !alias.scope !107
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 104
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !16, !noalias !107
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.d
  %i.at = phi i64 [ %i.ap, %bb.d ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.at, ptr %i.av, align 8, !tbaa !16, !alias.scope !107
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !19, !noalias !107
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.au, i8 0, i64 9, i1 false), !noalias !107
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.x, ptr noundef nonnull %i.am, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %0, align 8, !tbaa !19, !alias.scope !107 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.ak
  br i1 %i.ay, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.az = load i64, ptr %i.ak, align 8, !tbaa !17, !alias.scope !107
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #24
  br label %.body

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.021.024 = phi ptr [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel ] ; 3 uses
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.3, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17: ; preds = %.peel.next
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %.sroa.0.0.copyload = load i64, ptr %.sroa.021.024, align 8, !tbaa !48
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.021.024, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !49
  invoke void @_ZN5arrow4util11UriUnescapeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload)
          to label %bb.f unwind label %.loopexit.split-lp30.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17
  %i.bc = load ptr, ptr %3, align 8, !tbaa !19
  %i.bd = load i64, ptr %i.m, align 8, !tbaa !16
  %i.be = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef %i.bc, i64 noundef %i.bd)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit.split-lp34.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.f
  %i.bf = load ptr, ptr %3, align 8, !tbaa !19    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.n
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.bh = load i64, ptr %i.n, align 8, !tbaa !17
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.021.024, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.j
  br i1 %i.bk, label %._crit_edge, label %.peel.next, !llvm.loop !101

.loopexit.split-lp30.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit17.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

.loopexit.split-lp34.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.f, %bb.c
  %lpad.loopexit.split-lp63 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bl = load ptr, ptr %3, align 8, !tbaa !19    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.n
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %.loopexit.split-lp34.loopexit.split-lp.loopexit.split-lp
  %i.bn = load i64, ptr %i.n, align 8, !tbaa !17
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %.loopexit.split-lp34.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp30.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp30.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp63, %.loopexit.split-lp34.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.body

_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.bp = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bp, ptr %2, align 8, !tbaa !53
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.br = getelementptr i8, ptr %i.bp, i64 -24
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = getelementptr inbounds i8, ptr %2, i64 %i.bs
  store ptr %i.bq, ptr %i.bt, align 8, !tbaa !53
  %i.bu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !53
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.x, align 8, !tbaa !53
  %i.bw = load ptr, ptr %i.aj, align 8, !tbaa !19 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.am
  br i1 %i.bx, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.by = load i64, ptr %i.am, align 8, !tbaa !17
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #24
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.x, align 8, !tbaa !53
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ca) #25
  %i.cb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.cb, ptr %2, align 8, !tbaa !53
  %i.cc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.cd = getelementptr i8, ptr %i.cb, i64 -24
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds i8, ptr %2, i64 %i.ce
  store ptr %i.cc, ptr %i.cf, align 8, !tbaa !53
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.cg, align 8, !tbaa !112
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ch) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.peel.next, %bb.b
  %lpad.loopexit.split-lp59 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp59, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.aw, %bb.e ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #6 align 2

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow4util3Uri12query_stringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !42     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %.val = load ptr, ptr %i.b, align 8, !tbaa !43  ; 3 uses
  %i.c = getelementptr i8, ptr %i.a, i64 120
  %.val1 = load ptr, ptr %i.c, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %i.d = icmp eq ptr %.val, null                  ; 2 uses
  %i.e = ptrtoint ptr %.val1 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub i64 %i.e, %i.f
  %.sroa.3.0.i.i = select i1 %i.d, ptr @.str.2, ptr %.val ; 2 uses
  %.sroa.0.0.i.i = select i1 %i.d, i64 0, i64 %i.g ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !13, !alias.scope !115
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
  br i1 %i.l, label %.noexc9.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, !prof !20

.noexc9.i.i.i.i:                                  ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #22
end_hunk_0
