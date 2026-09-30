Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmScriptGenerator?download=true
inline.NumInlined: 325
inline.NumDeleted: 149
begin_hunk_0_@_ZNK23cmScriptGeneratorQuoted3strB5cxx11Ev:bb.a
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.aq, %bb.f ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.p, %bb.d ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #5 align 2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define dso_local void @_ZN17cmScriptGeneratorC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EE(ptr noundef nonnull align 8 dereferenceable(105) initializes((0, 8)) %0, ptr noundef align 8 %1, ptr nofree noundef align 8 captures(none) %2) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV17cmScriptGenerator, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !24
  %i.c = load ptr, ptr %1, align 8, !tbaa !26     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !27   ; 2 uses
  %i.h = icmp ult i64 %i.g, 16
  tail call void @llvm.assume(i1 %i.h)
  %i.i = add nuw nsw i64 %i.g, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.c, ptr %i.a, align 8, !tbaa !26
  %i.j = load i64, ptr %i.d, align 8, !tbaa !16
  store i64 %i.j, ptr %i.b, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !27
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %i.m, align 8, !tbaa !27
  store ptr %i.d, ptr %1, align 8, !tbaa !26
  store i64 0, ptr %i.k, align 8, !tbaa !27
  store i8 0, ptr %i.d, align 8, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load <2 x ptr>, ptr %2, align 8, !tbaa !29
  store <2 x ptr> %i.o, ptr %i.n, align 8, !tbaa !29
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !31
  store ptr %i.r, ptr %i.p, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.u, align 8, !tbaa !27
  store i8 0, ptr %i.t, align 8, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr null, ptr %i.v, align 8, !tbaa !38
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 0, ptr %i.w, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN17cmScriptGeneratorD2Ev(ptr nofree noundef nonnull align 8 captures(address) dead_on_return(105) dereferenceable(105) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV17cmScriptGenerator, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !16
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !65   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !66   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.p, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %i.k = load ptr, ptr %.05.i.i.i, align 8, !tbaa !26 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !16
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #17
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, %i.j
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !64

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.g, align 8, !tbaa !65
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.q = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !31
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #17
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !26   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !16
  %i.ab = add i64 %i.aa, 1
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN17cmScriptGeneratorD0Ev(ptr noundef nonnull align 8 dereferenceable(105) initializes((0, 8)) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN17cmScriptGeneratorD2Ev(ptr noundef nonnull align 8 dead_on_return(105) dereferenceable(105) %0) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 112) #17
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17cmScriptGenerator8GenerateERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS6_SaIS6_EE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr %3, ptr %i.b, align 8, !tbaa !38
  %i.c = load ptr, ptr %0, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.f, align 8, !tbaa !27
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !26
  store i8 0, ptr %i.g, align 1, !tbaa !16
  store ptr null, ptr %i.b, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17cmScriptGenerator5QuoteESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%class.cmScriptGeneratorQuoted) align 8 captures(none) %0, i64 %1, ptr %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.a, %bb.b
  %.0111420.i.i = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 %.0111420.i.i
  %i.b = load i8, ptr %i.a, align 1, !tbaa !16
  switch i8 %i.b, label %bb.b [
    i8 34, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit
    i8 36, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit
    i8 92, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit
  ]

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.c = add nuw i64 %.0111420.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.c, %1
  br i1 %exitcond.not.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, !llvm.loop !67

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.d = icmp eq i64 %.0111420.i.i, -1
  br i1 %i.d, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %1
  %i.i = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.j = ptrtoint ptr %2 to i64                   ; 2 uses
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i: ; preds = %bb.p, %bb.c
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.p ], [ 0, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr %i.e, ptr %4, align 8, !tbaa !24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %indvars.iv.i, i8 noundef signext 61)
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.10, i64 noundef 1)
          to label %.noexc.i unwind label %bb.k   ; 6 uses

.noexc.i:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  store ptr %i.f, ptr %3, align 8, !tbaa !24, !alias.scope !72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !26   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 5 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.d:                                             ; preds = %.noexc.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !27   ; 3 uses
  %i.q = icmp ult i64 %i.p, 16
  call void @llvm.assume(i1 %i.q)
  %i.r = add nuw nsw i64 %i.p, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(1) %i.m, i64 %i.r, i1 false)
  br label %bb.e

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.noexc.i
  store ptr %i.l, ptr %3, align 8, !tbaa !26, !alias.scope !72
  %i.s = load i64, ptr %i.m, align 8, !tbaa !16
  store i64 %i.s, ptr %i.f, align 8, !tbaa !16, !alias.scope !72
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !27
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.d
  %i.t = phi i64 [ %i.p, %bb.d ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.t, ptr %i.g, align 8, !tbaa !27, !alias.scope !72
  store ptr %i.m, ptr %i.k, align 8, !tbaa !26
  store i64 0, ptr %i.u, align 8, !tbaa !27
  store i8 0, ptr %i.m, align 8, !tbaa !16
  %i.v = load ptr, ptr %4, align 8, !tbaa !26     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.e
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.i: ; preds = %bb.e
  %i.x = load i64, ptr %i.e, align 8, !tbaa !16
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.z = load ptr, ptr %3, align 8, !tbaa !26     ; 5 uses
  %i.aa = load i64, ptr %i.g, align 8, !tbaa !27  ; 11 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.split.us.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.not2531.i.i.i = icmp ult i64 %1, %i.aa
  br i1 %.not2531.i.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit45.thread.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f
  %i.ac = load i8, ptr %i.z, align 1, !tbaa !16
  %i.ad = sext i8 %i.ac to i32                    ; 2 uses
  %invariant.op = sub i64 1, %i.aa
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i.i
  %.033.i.i.i = phi i64 [ %1, %.lr.ph.i.i.i ], [ %i.aj, %bb.h ]
  %.02032.i.i.i = phi ptr [ %2, %.lr.ph.i.i.i ], [ %i.ah, %bb.h ]
  %.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.reass = add i64 %.033.i.i.i, %invariant.op ; 2 uses
  %i.ae = icmp eq i64 %.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.reass, 0
  br i1 %i.ae, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit45.thread.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i:   ; preds = %bb.g
  %i.af = call ptr @memchr(ptr noundef %.02032.i.i.i, i32 noundef %i.ad, i64 noundef %.reass.reass.i.reass.reass.i.reass.reass.i.reass.reass.reass) #16 ; 4 uses
  %.not26.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not26.i.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit45.thread.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull %i.af, ptr nonnull %i.z, i64 %i.aa)
  %i.ag = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ag, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 2 uses
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.i, %i.ai                     ; 2 uses
  %.not25.i.i.i = icmp ult i64 %i.aj, %i.aa
  br i1 %.not25.i.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit45.thread.i, label %bb.g, !llvm.loop !70

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %i.ak = ptrtoint ptr %i.af to i64
  %i.al = sub i64 %i.ak, %i.j                     ; 2 uses
  %.not62.i = icmp eq i64 %i.al, -1
  br i1 %.not62.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit45.thread.i, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.i
  %invariant.op75 = sub i64 1, %i.aa
  br label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit45.us.i
  %.02063.us.i = phi i64 [ %i.aq, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit45.us.i ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 3 uses
  %i.am = icmp eq i64 %.02063.us.i, %1
  br i1 %i.am, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit45.thread.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.us.i
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 %.02063.us.i
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !16
  %i.ap = icmp eq i8 %i.ao, 93
  br i1 %i.ap, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit45.thread.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit45.us.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit45.us.i: ; preds = %bb.i
  %i.aq = add nuw i64 %.02063.us.i, 1             ; 2 uses
  %.not.us114.i = icmp eq i64 %i.aq, -1
  br i1 %.not.us114.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit45.thread.i, label %.lr.ph.split.us.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.preheader, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit45.i
  %.02063.i = phi i64 [ %i.bl, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit45.i ], [ %i.al, %.lr.ph.split.i.preheader ] ; 2 uses
  %i.ar = add i64 %.02063.i, %i.aa                ; 2 uses
  %i.as = icmp eq i64 %i.ar, %1
  br i1 %i.as, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit45.thread.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split.i
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 %i.ar
  %i.au = load i8, ptr %i.at, align 1, !tbaa !16
  %i.av = icmp eq i8 %i.au, 93
  br i1 %i.av, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit45.thread.i, label %bb.l

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = load ptr, ptr %4, align 8, !tbaa !26    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.e
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.i: ; preds = %bb.k
  %i.az = load i64, ptr %i.e, align 8, !tbaa !16
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  resume { ptr, i32 } %i.aw

bb.l:                                             ; preds = %bb.j
  %i.bb = add nuw i64 %.02063.i, 1                ; 3 uses
  %.not.i.i32.i = icmp ult i64 %i.bb, %1
  br i1 %.not.i.i32.i, label %bb.m, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit45.thread.i

bb.m:                                             ; preds = %bb.l
  %i.bc = sub nuw i64 %1, %i.bb                   ; 2 uses
  %.not2531.i.i34.i = icmp ult i64 %i.bc, %i.aa
  br i1 %.not2531.i.i34.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit45.thread.i, label %.lr.ph.i.i35.i

.lr.ph.i.i35.i:                                   ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 %i.bb
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.lr.ph.i.i35.i
  %.033.i.i36.i = phi i64 [ %i.bc, %.lr.ph.i.i35.i ], [ %i.bj, %bb.o ]
  %.02032.i.i37.i = phi ptr [ %i.bd, %.lr.ph.i.i35.i ], [ %i.bh, %bb.o ]
  %.reass.reass.i.reass.reass.i39.reass.reass.i.reass.reass.reass = add i64 %.033.i.i36.i, %invariant.op75 ; 2 uses
  %i.be = icmp eq i64 %.reass.reass.i.reass.reass.i39.reass.reass.i.reass.reass.reass, 0
  br i1 %i.be, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit45.thread.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i40.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i40.i: ; preds = %bb.n
  %i.bf = call ptr @memchr(ptr noundef nonnull %.02032.i.i37.i, i32 noundef %i.ad, i64 noundef %.reass.reass.i.reass.reass.i39.reass.reass.i.reass.reass.reass) #16 ; 4 uses
  %.not26.i.i41.i = icmp eq ptr %i.bf, null
  br i1 %.not26.i.i41.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit45.thread.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i42.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i42.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i40.i
  %bcmp.i.i43.i = call i32 @bcmp(ptr nonnull %i.bf, ptr nonnull %i.z, i64 %i.aa)
  %i.bg = icmp eq i32 %bcmp.i.i43.i, 0
  br i1 %i.bg, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit45.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i42.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 1 ; 2 uses
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.i, %i.bi                     ; 2 uses
  %.not25.i.i44.i = icmp ult i64 %i.bj, %i.aa
  br i1 %.not25.i.i44.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit45.thread.i, label %bb.n, !llvm.loop !70

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit45.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i42.i
  %i.bk = ptrtoint ptr %i.bf to i64
  %i.bl = sub i64 %i.bk, %i.j                     ; 2 uses
  %.not.i = icmp eq i64 %i.bl, -1
  br i1 %.not.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit45.thread.i, label %.lr.ph.split.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit45.thread.i: ; preds = %bb.h, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, %bb.g, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit45.i, %bb.m, %bb.l, %bb.j, %.lr.ph.split.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit45.us.i, %bb.i, %.lr.ph.split.us.i, %bb.o, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i40.i, %bb.n, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.i, %bb.f
  %.not.lcssa.i = phi i1 [ true, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.i ], [ true, %bb.o ], [ false, %bb.i ], [ true, %bb.f ], [ true, %bb.l ], [ true, %bb.n ], [ true, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i40.i ], [ true, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit45.us.i ], [ false, %.lr.ph.split.us.i ], [ false, %.lr.ph.split.i ], [ false, %bb.j ], [ true, %bb.m ], [ true, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit45.i ], [ true, %bb.g ], [ true, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i ], [ true, %bb.h ]
  %i.bm = icmp eq ptr %i.z, %i.f
  br i1 %i.bm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i47.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i47.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit45.thread.i
  %i.bn = icmp ult i64 %i.aa, 16
  call void @llvm.assume(i1 %i.bn)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit45.thread.i
  %i.bo = load i64, ptr %i.f, align 8, !tbaa !16
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.bp) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i47.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br i1 %.not.lcssa.i, label %_ZN12_GLOBAL__N_121RequiredBracketLengthESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i, !llvm.loop !71

_ZN12_GLOBAL__N_121RequiredBracketLengthESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i
  %i.bq = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread: ; preds = %bb.b, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit, %bb.a, %_ZN12_GLOBAL__N_121RequiredBracketLengthESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %.sink = phi i32 [ %i.bq, %_ZN12_GLOBAL__N_121RequiredBracketLengthESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ -1, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit ], [ -1, %bb.a ], [ -1, %bb.b ]
  store i64 %1, ptr %0, align 8, !tbaa !21
  %.sroa.2.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.2.0..sroa_idx.i5, align 8, !tbaa !22
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sink, ptr %i.br, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17cmScriptGenerator16CreateConfigTestERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(105) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca [2 x %"struct.std::pair"], align 8  ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16, !noalias !79
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26, !noalias !79
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !27, !noalias !79
  store i64 %i.d, ptr %3, align 8, !tbaa !21, !alias.scope !80, !noalias !79
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.b, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !22, !alias.scope !80, !noalias !79
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.e, align 8, !tbaa !42, !alias.scope !80, !noalias !79
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 12, ptr %i.f, align 8, !tbaa !21, !alias.scope !81, !noalias !79
  %.sroa.4.0..sroa_idx.i9.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr @.str.1, ptr %.sroa.4.0..sroa_idx.i9.i, align 8, !tbaa !22, !alias.scope !81, !noalias !79
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.g, align 8, !tbaa !42, !alias.scope !81, !noalias !79
  call void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull %3, i64 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16, !noalias !79
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !27
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %2, align 8, !tbaa !26
  invoke fastcc void @_ZL29cmScriptGeneratorEncodeConfigRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS4_(ptr %.val, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.e, %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.o = load i64, ptr %i.m, align 8, !tbaa !16
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.k

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !27
  %i.s = add i64 %i.r, -4611686018427387901
  %i.t = icmp ult i64 %i.s, 3
  br i1 %i.t, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #18
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.d
  %i.u = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.2, i64 noundef 3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL29cmScriptGeneratorEncodeConfigRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS4_(ptr nofree readonly captures(none) %.0.val, ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %.0.val, align 1, !tbaa !16 ; 2 uses
  %.not1 = icmp eq i8 %i.a, 0
  br i1 %.not1, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.p, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.p
  %i.d = phi i8 [ %i.a, %.lr.ph ], [ %i.cg, %bb.p ] ; 3 uses
  %.02 = phi ptr [ %.0.val, %.lr.ph ], [ %i.cf, %bb.p ] ; 5 uses
  %i.e = add i8 %i.d, -97
  %or.cond = icmp ult i8 %i.e, 26
  br i1 %or.cond, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %i.b, align 8, !tbaa !27
  %i.g = icmp eq i64 %i.f, 4611686018427387903
  br i1 %i.g, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #18
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %bb.c
  %i.h = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.13, i64 noundef 1) ; 0 uses
  %i.i = load i8, ptr %.02, align 1, !tbaa !16
  %i.j = add i8 %i.i, -32
  %i.k = load i64, ptr %i.b, align 8, !tbaa !27   ; 4 uses
  %i.l = add i64 %i.k, 1                          ; 3 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.c
  br i1 %i.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.o = icmp ult i64 %i.k, 16
  tail call void @llvm.assume(i1 %i.o)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.p = load i64, ptr %i.c, align 8, !tbaa !16
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.q = phi i64 [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.r = icmp ugt i64 %i.l, %i.q
  br i1 %i.r, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.k, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %bb.e
  %i.s = phi ptr [ %.pre.i.i, %bb.e ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.k
  store i8 %i.j, ptr %i.t, align 1, !tbaa !16
  store i64 %i.l, ptr %i.b, align 8, !tbaa !27
  %i.u = load ptr, ptr %0, align 8, !tbaa !26
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.l
  store i8 0, ptr %i.v, align 1, !tbaa !16
  %i.w = load i8, ptr %.02, align 1, !tbaa !16
  %i.x = load i64, ptr %i.b, align 8, !tbaa !27   ; 4 uses
  %i.y = add i64 %i.x, 1                          ; 3 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.c
  br i1 %i.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit
  %i.ab = icmp ult i64 %i.x, 16
  tail call void @llvm.assume(i1 %i.ab)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !16
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i26: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i28
  %i.ad = phi i64 [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i28 ]
  %i.ae = icmp ugt i64 %i.y, %i.ad
  br i1 %i.ae, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit29

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i26
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.x, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i27 = load ptr, ptr %0, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit29: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i26, %bb.f
  %i.af = phi ptr [ %.pre.i.i27, %bb.f ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i26 ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.x
  store i8 %i.w, ptr %i.ag, align 1, !tbaa !16
  store i64 %i.y, ptr %i.b, align 8, !tbaa !27
  %i.ah = load ptr, ptr %0, align 8, !tbaa !26
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.y
  store i8 0, ptr %i.ai, align 1, !tbaa !16
  %i.aj = load i64, ptr %i.b, align 8, !tbaa !27
  %i.ak = icmp eq i64 %i.aj, 4611686018427387903
  br i1 %i.ak, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit30

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit29
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #18
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit29
  %i.al = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  br label %bb.p

bb.h:                                             ; preds = %bb.b
  %i.am = add i8 %i.d, -65
  %or.cond24 = icmp ult i8 %i.am, 26
  %i.an = load i64, ptr %i.b, align 8, !tbaa !27  ; 5 uses
  br i1 %or.cond24, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.ao = icmp eq i64 %i.an, 4611686018427387903
  br i1 %i.ao, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit31

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #18
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit31: ; preds = %bb.i
  %i.ap = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.13, i64 noundef 1) ; 0 uses
  %i.aq = load i8, ptr %.02, align 1, !tbaa !16
  %i.ar = load i64, ptr %i.b, align 8, !tbaa !27  ; 4 uses
  %i.as = add i64 %i.ar, 1                        ; 3 uses
  %i.at = load ptr, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.c
  br i1 %i.au, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit31
  %i.av = icmp ult i64 %i.ar, 16
  tail call void @llvm.assume(i1 %i.av)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit31
  %i.aw = load i64, ptr %i.c, align 8, !tbaa !16
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i35
  %i.ax = phi i64 [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i32 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i35 ]
  %i.ay = icmp ugt i64 %i.as, %i.ax
  br i1 %i.ay, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit36

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i33
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ar, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i34 = load ptr, ptr %0, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit36: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i33, %bb.k
  %i.az = phi ptr [ %.pre.i.i34, %bb.k ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i33 ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ar
  store i8 %i.aq, ptr %i.ba, align 1, !tbaa !16
  store i64 %i.as, ptr %i.b, align 8, !tbaa !27
  %i.bb = load ptr, ptr %0, align 8, !tbaa !26
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.as
  store i8 0, ptr %i.bc, align 1, !tbaa !16
  %i.bd = load i8, ptr %.02, align 1, !tbaa !16
  %i.be = add i8 %i.bd, 32
  %i.bf = load i64, ptr %i.b, align 8, !tbaa !27  ; 4 uses
  %i.bg = add i64 %i.bf, 1                        ; 3 uses
  %i.bh = load ptr, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.c
  br i1 %i.bi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit36
  %i.bj = icmp ult i64 %i.bf, 16
  tail call void @llvm.assume(i1 %i.bj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit36
  %i.bk = load i64, ptr %i.c, align 8, !tbaa !16
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i38: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i40
  %i.bl = phi i64 [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i37 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i40 ]
  %i.bm = icmp ugt i64 %i.bg, %i.bl
  br i1 %i.bm, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit41

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i38
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bf, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i39 = load ptr, ptr %0, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit41: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i38, %bb.l
  %i.bn = phi ptr [ %.pre.i.i39, %bb.l ], [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i38 ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bf
  store i8 %i.be, ptr %i.bo, align 1, !tbaa !16
  store i64 %i.bg, ptr %i.b, align 8, !tbaa !27
  %i.bp = load ptr, ptr %0, align 8, !tbaa !26
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bg
  store i8 0, ptr %i.bq, align 1, !tbaa !16
  %i.br = load i64, ptr %i.b, align 8, !tbaa !27
  %i.bs = icmp eq i64 %i.br, 4611686018427387903
  br i1 %i.bs, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit42

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit41
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #18
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit41
  %i.bt = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  br label %bb.p

bb.n:                                             ; preds = %bb.h
  %i.bu = add i64 %i.an, 1                        ; 3 uses
  %i.bv = load ptr, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.c
  br i1 %i.bw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i46: ; preds = %bb.n
  %i.bx = icmp ult i64 %i.an, 16
  tail call void @llvm.assume(i1 %i.bx)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43: ; preds = %bb.n
  %i.by = load i64, ptr %i.c, align 8, !tbaa !16
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i44: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i46
  %i.bz = phi i64 [ %i.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i46 ]
  %i.ca = icmp ugt i64 %i.bu, %i.bz
  br i1 %i.ca, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit47

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i44
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.an, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i45 = load ptr, ptr %0, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit47: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i44, %bb.o
  %i.cb = phi ptr [ %.pre.i.i45, %bb.o ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i44 ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.an
  store i8 %i.d, ptr %i.cc, align 1, !tbaa !16
  store i64 %i.bu, ptr %i.b, align 8, !tbaa !27
  %i.cd = load ptr, ptr %0, align 8, !tbaa !26
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.bu
  store i8 0, ptr %i.ce, align 1, !tbaa !16
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit42
  %i.cf = getelementptr inbounds nuw i8, ptr %.02, i64 1 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !16  ; 2 uses
  %.not = icmp eq i8 %i.cg, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !82
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17cmScriptGenerator16CreateConfigTestERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(105) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca [2 x %"struct.std::pair"], align 8  ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16, !noalias !90
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26, !noalias !90
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !27, !noalias !90
  store i64 %i.d, ptr %3, align 8, !tbaa !21, !alias.scope !91, !noalias !90
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.b, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !22, !alias.scope !91, !noalias !90
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.e, align 8, !tbaa !42, !alias.scope !91, !noalias !90
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 12, ptr %i.f, align 8, !tbaa !21, !alias.scope !92, !noalias !90
  %.sroa.4.0..sroa_idx.i9.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr @.str.1, ptr %.sroa.4.0..sroa_idx.i9.i, align 8, !tbaa !22, !alias.scope !92, !noalias !90
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.g, align 8, !tbaa !42, !alias.scope !92, !noalias !90
  call void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull %3, i64 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16, !noalias !90
  %i.h = load ptr, ptr %2, align 8, !tbaa !29     ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !29   ; 3 uses
  %.not19 = icmp eq ptr %i.h, %i.j
  br i1 %.not19, label %._crit_edge, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i12.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i12.peel: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.3, i64 noundef 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit15.peel unwind label %.loopexit.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit15.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i12.peel
  %.val.peel = load ptr, ptr %i.h, align 8, !tbaa !26
  invoke fastcc void @_ZL29cmScriptGeneratorEncodeConfigRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS4_(ptr %.val.peel, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.b unwind label %.loopexit.loopexit.split-lp

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit15.peel
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %.not.peel = icmp eq ptr %i.m, %i.j
  br i1 %.not.peel, label %._crit_edge, label %.peel.next

._crit_edge:                                      ; preds = %bb.d, %bb.b, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !27
  %i.p = add i64 %i.o, -4611686018427387901
  %i.q = icmp ult i64 %i.p, 3
  br i1 %i.q, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.c:                                             ; preds = %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #18
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %._crit_edge
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.2, i64 noundef 3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %bb.e ; 0 uses

.peel.next:                                       ; preds = %bb.b, %bb.d
  %.sroa.016.020 = phi ptr [ %i.v, %bb.d ], [ %i.m, %bb.b ] ; 2 uses
  %i.s = load i64, ptr %i.k, align 8, !tbaa !27
  %i.t = icmp eq i64 %i.s, 4611686018427387903
  br i1 %i.t, label %.loopexit23, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i12

.loopexit23:                                      ; preds = %.peel.next
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #18
          to label %.noexc13 unwind label %.loopexit.split-lp

.noexc13:                                         ; preds = %.loopexit23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i12: ; preds = %.peel.next
  %i.u = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.4, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit15 unwind label %.loopexit.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i12
  %.val = load ptr, ptr %.sroa.016.020, align 8, !tbaa !26
  invoke fastcc void @_ZL29cmScriptGeneratorEncodeConfigRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS4_(ptr %.val, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.d unwind label %.loopexit.loopexit

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit15
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.016.020, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.v, %i.j
  br i1 %.not, label %._crit_edge, label %.peel.next, !llvm.loop !89

.loopexit.loopexit:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit15
  %lpad.loopexit24 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.loopexit.split-lp:                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i12.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit15.peel
  %lpad.loopexit.split-lp25 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %.loopexit23
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit.loopexit.split-lp, %.loopexit.split-lp, %bb.e
  %.pn = phi { ptr, i32 } [ %i.w, %bb.e ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit24, %.loopexit.loopexit ], [ %lpad.loopexit.split-lp25, %.loopexit.loopexit.split-lp ]
  %i.x = load ptr, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.loopexit
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !16
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17cmScriptGenerator14GenerateScriptERSo(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 0)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17cmScriptGenerator21GenerateScriptConfigsERSo23cmScriptGeneratorIndent(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i8, ptr %i.a, align 8, !tbaa !39, !range !43, !noundef !44
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN17cmScriptGenerator30GenerateScriptActionsPerConfigERSo23cmScriptGeneratorIndent(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN17cmScriptGenerator25GenerateScriptActionsOnceERSo23cmScriptGeneratorIndent(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17cmScriptGenerator30GenerateScriptActionsPerConfigERSo23cmScriptGeneratorIndent(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %.fr50 = freeze i32 %2                          ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !29   ; 3 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.g = icmp sgt i32 %.fr50, 0                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.i = add nsw i32 %.fr50, 2                    ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  br i1 %i.g, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %bb.d
  %.047.us = phi i8 [ %.1.us, %bb.d ], [ 1, %.preheader ] ; 2 uses
  %.sroa.035.046.us = phi ptr [ %i.y, %bb.d ], [ %i.c, %.preheader ] ; 4 uses
  %i.k = call noundef zeroext i1 @_ZN17cmScriptGenerator18GeneratesForConfigERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.035.046.us)
  br i1 %i.k, label %.lr.ph.i.i.preheader.us, label %bb.d

.lr.ph.i.i.preheader.us:                          ; preds = %.preheader.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @_ZN17cmScriptGenerator16CreateConfigTestERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.035.046.us)
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.preheader.us, %.noexc.us
  %.03.i.i.us = phi i32 [ %i.m, %.noexc.us ], [ 0, %.lr.ph.i.i.preheader.us ]
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.14, i64 noundef 1)
          to label %.noexc.us unwind label %.loopexit.split.us ; 0 uses

.noexc.us:                                        ; preds = %.lr.ph.i.i.us
  %i.m = add nuw nsw i32 %.03.i.i.us, 1           ; 2 uses
  %exitcond.not.i.us = icmp eq i32 %i.m, %.fr50
  br i1 %exitcond.not.i.us, label %_ZlsRSo23cmScriptGeneratorIndent.exit.loopexit.us, label %.lr.ph.i.i.us, !llvm.loop !0

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.us: ; preds = %_ZlsRSo23cmScriptGeneratorIndent.exit.loopexit.us
  %i.n = load ptr, ptr %3, align 8, !tbaa !26
  %i.o = load i64, ptr %i.h, align 8, !tbaa !27
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.n, i64 noundef %i.o)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.us unwind label %.loopexit.split-lp.split.us

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.us: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.us
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.6, i64 noundef 2)
          to label %bb.b unwind label %.loopexit.split-lp.split.us ; 0 uses

bb.b:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.us
  %i.r = load ptr, ptr %0, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.t = load ptr, ptr %i.s, align 8
  invoke void %i.t(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.035.046.us, i32 %i.i)
          to label %bb.c unwind label %.loopexit.split-lp.split.us

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %3, align 8, !tbaa !26     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.j
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us: ; preds = %bb.c
  %i.w = load i64, ptr %i.j, align 8, !tbaa !16
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us, %.preheader.split.us
  %.1.us = phi i8 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us ], [ %.047.us, %.preheader.split.us ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.035.046.us, i64 32 ; 2 uses
  %.not.us = icmp eq ptr %i.y, %i.e
  br i1 %.not.us, label %.split.us, label %.preheader.split.us

_ZlsRSo23cmScriptGeneratorIndent.exit.loopexit.us: ; preds = %.noexc.us
  %i.z = trunc nuw i8 %.047.us to i1              ; 2 uses
  %i.aa = select i1 %i.z, ptr @.str.5, ptr @.str.8
  %i.ab = select i1 %i.z, i64 3, i64 7
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.aa, i64 noundef %i.ab)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.us unwind label %.loopexit.split-lp.split.us ; 0 uses

.loopexit.split.us:                               ; preds = %.lr.ph.i.i.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.split.us:                      ; preds = %bb.b, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.us, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.us, %_ZlsRSo23cmScriptGeneratorIndent.exit.loopexit.us
  %lpad.loopexit.split-lp.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN17cmScriptGenerator25GenerateScriptActionsOnceERSo23cmScriptGeneratorIndent(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 %.fr50)
  br label %bb.l

.split.us:                                        ; preds = %bb.h, %bb.d
  %.us-phi49 = phi i8 [ %.1.us, %bb.d ], [ %.1, %bb.h ]
  %i.ad = trunc nuw i8 %.us-phi49 to i1
  br i1 %i.ad, label %bb.l, label %bb.i

.preheader.split:                                 ; preds = %.preheader, %bb.h
  %.047 = phi i8 [ %.1, %bb.h ], [ 1, %.preheader ] ; 2 uses
  %.sroa.035.046 = phi ptr [ %i.ay, %bb.h ], [ %i.c, %.preheader ] ; 4 uses
  %i.ae = call noundef zeroext i1 @_ZN17cmScriptGenerator18GeneratesForConfigERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.035.046)
  br i1 %i.ae, label %_ZlsRSo23cmScriptGeneratorIndent.exit, label %bb.h

_ZlsRSo23cmScriptGeneratorIndent.exit:            ; preds = %.preheader.split
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @_ZN17cmScriptGenerator16CreateConfigTestERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.035.046)
  %i.af = trunc nuw i8 %.047 to i1                ; 2 uses
  %i.ag = select i1 %i.af, ptr @.str.5, ptr @.str.8
  %i.ah = select i1 %i.af, i64 3, i64 7
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.ag, i64 noundef %i.ah)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp.split ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZlsRSo23cmScriptGeneratorIndent.exit
  %i.aj = load ptr, ptr %3, align 8, !tbaa !26
  %i.ak = load i64, ptr %i.h, align 8, !tbaa !27
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.aj, i64 noundef %i.ak)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit.split-lp.split

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull @.str.6, i64 noundef 2)
          to label %bb.f unwind label %.loopexit.split-lp.split ; 0 uses
end_hunk_0
begin_hunk_1_@_ZN17cmScriptGenerator25GenerateScriptActionsOnceERSo23cmScriptGeneratorIndent:bb.a

_ZlsRSo23cmScriptGeneratorIndent.exit17:          ; preds = %.noexc16, %bb.e
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.7, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19 unwind label %.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19: ; preds = %_ZlsRSo23cmScriptGeneratorIndent.exit17
  %i.y = load ptr, ptr %3, align 8, !tbaa !26     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !16
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.f

.loopexit:                                        ; preds = %.lr.ph.i.i13
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph.i.i
  %lpad.loopexit26 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZlsRSo23cmScriptGeneratorIndent.exit17, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZlsRSo23cmScriptGeneratorIndent.exit, %bb.d
  %lpad.loopexit.split-lp27 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit26, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp27, %.loopexit.split-lp.loopexit.split-lp ]
  %i.ad = load ptr, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %.loopexit.split-lp
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !16
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  resume { ptr, i32 } %lpad.phi

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17cmScriptGenerator21GenerateScriptActionsERSo23cmScriptGeneratorIndent(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i8, ptr %i.a, align 8, !tbaa !39, !range !43, !noundef !44
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %0, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i32 %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN17cmScriptGenerator23GenerateScriptForConfigERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE23cmScriptGeneratorIndent(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, i32 %3) unnamed_addr #8 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN17cmScriptGenerator18GeneratesForConfigERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(105) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !24
  %i.h = load ptr, ptr %1, align 8, !tbaa !26     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !27   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.j, ptr %i.a, align 8, !tbaa !21
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.l = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.l, ptr %3, align 8, !tbaa !26
  %i.m = load i64, ptr %i.a, align 8, !tbaa !21
  store i64 %i.m, ptr %i.g, align 8, !tbaa !16
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.n = phi ptr [ %i.l, %.noexc.i ], [ %i.g, %bb.b ] ; 2 uses
  switch i64 %i.j, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.o = load i8, ptr %i.h, align 1, !tbaa !16
  store i8 %i.o, ptr %i.n, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.h, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.p = load i64, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !27
  %i.r = load ptr, ptr %3, align 8, !tbaa !26
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  invoke void @_ZN5cmsys11SystemTools9UpperCaseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 %3)
          to label %bb.e unwind label %bb.o

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.t = load ptr, ptr %3, align 8, !tbaa !26     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.g
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.v = load i64, ptr %i.g, align 8, !tbaa !16
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !29   ; 3 uses
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !29   ; 4 uses
  %i.z = ptrtoint ptr %i.y to i64                 ; 2 uses
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = ashr i64 %i.ab, 7                       ; 2 uses
  %i.ad = icmp sgt i64 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.i
  %.043.i.i.i.i.i = phi i64 [ %i.am, %bb.i ], [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.sroa.032.042.i.i.i.i.i = phi ptr [ %i.al, %bb.i ], [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 6 uses
  %i.ae = invoke fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops10_Iter_predIZN17cmScriptGenerator18GeneratesForConfigERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPS9_St6vectorIS8_SaIS8_EEEEEEbT_"(ptr nonnull readonly %2, ptr %.sroa.032.042.i.i.i.i.i)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.ae, label %.loopexit24, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.032.042.i.i.i.i.i, i64 32 ; 2 uses
  %i.ag = invoke fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops10_Iter_predIZN17cmScriptGenerator18GeneratesForConfigERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPS9_St6vectorIS8_SaIS8_EEEEEEbT_"(ptr nonnull readonly %2, ptr nonnull %i.af)
          to label %.noexc9 unwind label %.loopexit

.noexc9:                                          ; preds = %bb.f
  br i1 %i.ag, label %.loopexit24, label %bb.g

bb.g:                                             ; preds = %.noexc9
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.032.042.i.i.i.i.i, i64 64 ; 2 uses
  %i.ai = invoke fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops10_Iter_predIZN17cmScriptGenerator18GeneratesForConfigERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPS9_St6vectorIS8_SaIS8_EEEEEEbT_"(ptr nonnull readonly %2, ptr nonnull %i.ah)
          to label %.noexc10 unwind label %.loopexit

.noexc10:                                         ; preds = %bb.g
  br i1 %i.ai, label %.loopexit24, label %bb.h

bb.h:                                             ; preds = %.noexc10
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.032.042.i.i.i.i.i, i64 96 ; 2 uses
  %i.ak = invoke fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops10_Iter_predIZN17cmScriptGenerator18GeneratesForConfigERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPS9_St6vectorIS8_SaIS8_EEEEEEbT_"(ptr nonnull readonly %2, ptr nonnull %i.aj)
          to label %.noexc11 unwind label %.loopexit

.noexc11:                                         ; preds = %bb.h
  br i1 %i.ak, label %.loopexit24, label %bb.i

bb.i:                                             ; preds = %.noexc11
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.032.042.i.i.i.i.i, i64 128 ; 3 uses
  %i.am = add nsw i64 %.043.i.i.i.i.i, -1
  %i.an = icmp sgt i64 %.043.i.i.i.i.i, 1
  br i1 %i.an, label %.lr.ph.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !94

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.i
  %.pre.i.i.i.i.i = ptrtoint ptr %i.al to i64
  %.pre44.i.i.i.i.i = sub i64 %i.z, %.pre.i.i.i.i.i
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pre-phi45.i.i.i.i.i = phi i64 [ %.pre44.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %.sroa.032.0.lcssa.i.i.i.i.i = phi ptr [ %i.al, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 5 uses
  %i.ao = ashr exact i64 %.pre-phi45.i.i.i.i.i, 5
  switch i64 %i.ao, label %.loopexit24 [
    i64 3, label %bb.j
    i64 2, label %bb.l
    i64 1, label %bb.n
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ap = invoke fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops10_Iter_predIZN17cmScriptGenerator18GeneratesForConfigERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPS9_St6vectorIS8_SaIS8_EEEEEEbT_"(ptr nonnull readonly %2, ptr %.sroa.032.0.lcssa.i.i.i.i.i)
          to label %.noexc12 unwind label %.loopexit.split-lp

.noexc12:                                         ; preds = %bb.j
  br i1 %i.ap, label %.loopexit24, label %bb.k

bb.k:                                             ; preds = %.noexc12
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i.i, i64 32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i.i.i.i
  %.sroa.032.1.i.i.i.i.i = phi ptr [ %i.aq, %bb.k ], [ %.sroa.032.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.ar = invoke fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops10_Iter_predIZN17cmScriptGenerator18GeneratesForConfigERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPS9_St6vectorIS8_SaIS8_EEEEEEbT_"(ptr nonnull readonly %2, ptr %.sroa.032.1.i.i.i.i.i)
          to label %.noexc13 unwind label %.loopexit.split-lp

.noexc13:                                         ; preds = %bb.l
  br i1 %i.ar, label %.loopexit24, label %bb.m

bb.m:                                             ; preds = %.noexc13
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i.i, i64 32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i.i.i.i
  %.sroa.032.2.i.i.i.i.i = phi ptr [ %i.as, %bb.m ], [ %.sroa.032.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.at = invoke fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops10_Iter_predIZN17cmScriptGenerator18GeneratesForConfigERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPS9_St6vectorIS8_SaIS8_EEEEEEbT_"(ptr nonnull readonly %2, ptr %.sroa.032.2.i.i.i.i.i)
          to label %.noexc14 unwind label %.loopexit.split-lp

.noexc14:                                         ; preds = %bb.n
  %spec.select.i.i.i.i.i = select i1 %i.at, ptr %.sroa.032.2.i.i.i.i.i, ptr %i.y
  br label %.loopexit24

.loopexit24:                                      ; preds = %.noexc11, %.noexc10, %.noexc9, %.noexc, %.noexc14, %.noexc13, %.noexc12, %._crit_edge.i.i.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i.i, %.noexc13 ], [ %spec.select.i.i.i.i.i, %.noexc14 ], [ %i.y, %._crit_edge.i.i.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i.i.i, %.noexc12 ], [ %.sroa.032.042.i.i.i.i.i, %.noexc ], [ %i.af, %.noexc9 ], [ %i.ah, %.noexc10 ], [ %i.aj, %.noexc11 ]
  %i.au = icmp ne ptr %i.y, %.sroa.08.0.in.sroa.speculated.i.i.i.i.i
  %i.av = load ptr, ptr %2, align 8, !tbaa !26    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %.loopexit24
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !16
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %.loopexit24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.q

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = load ptr, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.g
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.o
  %i.bd = load i64, ptr %i.g, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.sink.split

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %bb.f, %bb.g, %bb.h
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %bb.j, %bb.l, %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.be = load ptr, ptr %2, align 8, !tbaa !26    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.p
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.sink.split: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  %.sink34 = phi i64 [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ]
  %.sink = phi ptr [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ], [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ]
  %.pn.ph = phi { ptr, i32 } [ %lpad.phi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ]
  %i.bi = add i64 %.sink34, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bi) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.sink.split, %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.o ], [ %lpad.phi, %bb.p ], [ %.pn.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %.pn

bb.q:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %.0 = phi i1 [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ], [ true, %bb.a ]
  ret i1 %.0
}

declare void @_ZN5cmsys11SystemTools9UpperCaseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef align 8) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17cmScriptGenerator22GenerateScriptNoConfigERSo23cmScriptGeneratorIndent(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 %2) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK17cmScriptGenerator19NeedsScriptNoConfigEv(ptr noundef nonnull align 8 dereferenceable(105) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

declare void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64) local_unnamed_addr #0

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops10_Iter_predIZN17cmScriptGenerator18GeneratesForConfigERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPS9_St6vectorIS8_SaIS8_EEEEEEbT_"(ptr nofree readonly captures(none) %.0.val, ptr nofree readonly captures(none) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.b, align 8, !tbaa !27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %.val1, ptr %i.a, align 8, !tbaa !21
  %i.d = icmp ugt i64 %.val1, 15
  br i1 %i.d, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !26
  %i.f = load i64, ptr %i.a, align 8, !tbaa !21
  store i64 %i.f, ptr %i.c, align 8, !tbaa !16
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.a
  %i.g = phi ptr [ %i.e, %.noexc.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %.val1, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.h = load i8, ptr %.val, align 1, !tbaa !16
  store i8 %i.h, ptr %i.g, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr readonly align 1 %.val, i64 %.val1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !27
  %i.k = load ptr, ptr %2, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  invoke void @_ZN5cmsys11SystemTools9UpperCaseENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 %2)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !27   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !27
  %i.q = icmp eq i64 %i.n, %i.p
  br i1 %i.q, label %bb.e, label %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge.i

._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge.i: ; preds = %bb.d
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !26
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

bb.e:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %i.n, 0
  %.pre1.i = load ptr, ptr %1, align 8, !tbaa !26 ; 3 uses
  br i1 %i.r, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %.0.val, align 8, !tbaa !26
  %bcmp.i.i = call i32 @bcmp(ptr %.pre1.i, ptr %i.s, i64 %i.n)
  %i.t = icmp eq i32 %bcmp.i.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.f, %bb.e, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge.i
  %i.u = phi ptr [ %.pre.i, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge.i ], [ %.pre1.i, %bb.f ], [ %.pre1.i, %bb.e ] ; 2 uses
  %i.v = phi i1 [ false, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge.i ], [ %i.t, %bb.f ], [ true, %bb.e ]
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.u, %i.w
  br i1 %i.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i
  %i.y = icmp ult i64 %i.n, 16
  call void @llvm.assume(i1 %i.y)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i
  %i.z = load i64, ptr %i.w, align 8, !tbaa !16
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.aa) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ab = load ptr, ptr %2, align 8, !tbaa !26    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.c
  br i1 %i.ac, label %"_ZZN17cmScriptGenerator18GeneratesForConfigERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clES7_.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !16
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #17
  br label %"_ZZN17cmScriptGenerator18GeneratesForConfigERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clES7_.exit"

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = load ptr, ptr %2, align 8, !tbaa !26    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.c
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i: ; preds = %bb.g
  %i.ai = load i64, ptr %i.c, align 8, !tbaa !16
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  resume { ptr, i32 } %i.af

"_ZZN17cmScriptGenerator18GeneratesForConfigERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clES7_.exit": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret i1 %i.v
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_cmScriptGenerator.cxx() #11 section ".text.startup" {
bb.a:
  tail call void @_ZN5cmsys18SystemToolsManagerC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZN5cmsysL26SystemToolsManagerInstanceE)
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5cmsys18SystemToolsManagerD1Ev, ptr nonnull @_ZN5cmsysL26SystemToolsManagerInstanceE, ptr nonnull @__dso_handle) #16 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #15

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #16 = { nounwind }
attributes #17 = { builtin nounwind }
attributes #18 = { noreturn }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !40}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"long", !6, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !10, i64 0, !12, i64 8}
!14 = !{!"_ZTS23cmScriptGeneratorQuoted", !13, i64 0, !7, i64 16}
!15 = !{!14, !7, i64 16}
!16 = !{!6, !6, i64 0}
!17 = !{!"vtable pointer", !5, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"p1 _ZTSNSt6locale5_ImplE", !11, i64 0}
!20 = !{!"_ZTSSt6locale", !19, i64 0}
!21 = !{!10, !10, i64 0}
!22 = !{!12, !12, i64 0}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!24 = !{!23, !12, i64 0}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !23, i64 0, !10, i64 8, !6, i64 16}
!26 = !{!25, !12, i64 0}
!27 = !{!25, !10, i64 8}
!28 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !28, i64 0, !28, i64 8, !28, i64 16}
!31 = !{!30, !28, i64 16}
!32 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !30, i64 0}
!33 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !32, i64 0}
!34 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !33, i64 0}
!35 = !{!"p1 _ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !11, i64 0}
!36 = !{!"bool", !6, i64 0}
!37 = !{!"_ZTS17cmScriptGenerator", !25, i64 8, !34, i64 40, !25, i64 64, !35, i64 96, !36, i64 104}
!38 = !{!37, !35, i64 96}
!39 = !{!37, !36, i64 104}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!"_ZTSSt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS2_SaIcEEEE", !13, i64 0, !28, i64 16}
!42 = !{!41, !28, i64 16}
!43 = !{i8 0, i8 2}
!44 = !{}
!45 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!46 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!47 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !11, i64 0}
!48 = !{!"_ZTSNSt8ios_base6_WordsE", !11, i64 0, !10, i64 8}
!49 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !11, i64 0}
!50 = !{!"_ZTSSt8ios_base", !10, i64 8, !10, i64 16, !45, i64 24, !46, i64 28, !46, i64 32, !47, i64 40, !48, i64 48, !6, i64 64, !7, i64 192, !49, i64 200, !20, i64 208}
!51 = !{!50, !10, i64 16}
!52 = distinct !{!52, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!53 = distinct !{!53, !52, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!54 = distinct !{!54, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!55 = distinct !{!55, !54, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!56 = !{!53}
!57 = !{!55}
!58 = !{!55, !53}
!59 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !20, i64 56}
!60 = !{!59, !12, i64 40}
!61 = !{!59, !12, i64 32}
!62 = !{!"_ZTSSi", !10, i64 8}
!63 = !{!62, !10, i64 8}
!64 = distinct !{!64, !40}
!65 = !{!30, !28, i64 0}
!66 = !{!30, !28, i64 8}
!67 = distinct !{!67, !40}
!68 = distinct !{!68, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!69 = distinct !{!69, !68, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!70 = distinct !{!70, !40}
!71 = distinct !{!71, !40}
!72 = !{!69}
!73 = distinct !{!73, !"_Z8cmStrCatIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_KcJEES5_OT_OT0_DpOT1_"}
!74 = distinct !{!74, !73, !"_Z8cmStrCatIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_KcJEES5_OT_OT0_DpOT1_: argument 0"}
!75 = distinct !{!75, !"_ZZ8cmStrCatIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_KcJEES5_OT_OT0_DpOT1_ENKUlRK10cmAlphaNumE_clB5cxx11ESJ_"}
!76 = distinct !{!76, !75, !"_ZZ8cmStrCatIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_KcJEES5_OT_OT0_DpOT1_ENKUlRK10cmAlphaNumE_clB5cxx11ESJ_: argument 0"}
!77 = distinct !{!77, !"_ZZ8cmStrCatIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_KcJEES5_OT_OT0_DpOT1_ENKUlRK10cmAlphaNumE_clB5cxx11ESJ_"}
!78 = distinct !{!78, !77, !"_ZZ8cmStrCatIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_KcJEES5_OT_OT0_DpOT1_ENKUlRK10cmAlphaNumE_clB5cxx11ESJ_: argument 0"}
!79 = !{!74}
!80 = !{!76}
!81 = !{!78}
!82 = distinct !{!82, !40}
!83 = distinct !{!83, !"_Z8cmStrCatIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_KcJEES5_OT_OT0_DpOT1_"}
!84 = distinct !{!84, !83, !"_Z8cmStrCatIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_KcJEES5_OT_OT0_DpOT1_: argument 0"}
!85 = distinct !{!85, !"_ZZ8cmStrCatIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_KcJEES5_OT_OT0_DpOT1_ENKUlRK10cmAlphaNumE_clB5cxx11ESJ_"}
!86 = distinct !{!86, !85, !"_ZZ8cmStrCatIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_KcJEES5_OT_OT0_DpOT1_ENKUlRK10cmAlphaNumE_clB5cxx11ESJ_: argument 0"}
!87 = distinct !{!87, !"_ZZ8cmStrCatIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_KcJEES5_OT_OT0_DpOT1_ENKUlRK10cmAlphaNumE_clB5cxx11ESJ_"}
!88 = distinct !{!88, !87, !"_ZZ8cmStrCatIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_KcJEES5_OT_OT0_DpOT1_ENKUlRK10cmAlphaNumE_clB5cxx11ESJ_: argument 0"}
!89 = distinct !{!89, !93}
!90 = !{!84}
!91 = !{!86}
!92 = !{!88}
!93 = !{!"llvm.loop.peeled.count", i32 1}
!94 = distinct !{!94, !40}
end_hunk_1
