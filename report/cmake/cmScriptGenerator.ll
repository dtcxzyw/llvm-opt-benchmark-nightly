inline.NumInlined: 325
inline.NumDeleted: 149
begin_hunk_0_@_ZN17cmScriptGeneratorC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EE:bb.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN17cmScriptGeneratorD2Ev(ptr nofree noundef nonnull align 8 captures(address) dead_on_return(105) dereferenceable(105) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV17cmScriptGenerator, i64 16), ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !15
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !58   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !59   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.p, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %i.k = load ptr, ptr %.05.i.i.i, align 8, !tbaa !31 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !15
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #17
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, %i.j
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !60

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.g, align 8, !tbaa !58
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.q = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !48
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #17
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !31   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !15
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
  store ptr %3, ptr %i.b, align 8, !tbaa !50
  %i.c = load ptr, ptr %0, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.f, align 8, !tbaa !33
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !31
  store i8 0, ptr %i.g, align 1, !tbaa !15
  store ptr null, ptr %i.b, align 8, !tbaa !50
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
  %i.b = load i8, ptr %i.a, align 1, !tbaa !15
  switch i8 %i.b, label %bb.b [
    i8 34, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit
    i8 36, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit
    i8 92, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit
  ]

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.c = add nuw i64 %.0111420.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.c, %1
  br i1 %exitcond.not.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

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

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i: ; preds = %bb.o, %bb.c
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.o ], [ 0, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr %i.e, ptr %4, align 8, !tbaa !29
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %indvars.iv.i, i8 noundef signext 61)
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.10, i64 noundef 1)
          to label %.noexc.i unwind label %bb.j   ; 6 uses

.noexc.i:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  store ptr %i.f, ptr %3, align 8, !tbaa !29, !alias.scope !62
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !31   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 5 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.d:                                             ; preds = %.noexc.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !33   ; 3 uses
  %i.q = icmp ult i64 %i.p, 16
  call void @llvm.assume(i1 %i.q)
  %i.r = add nuw nsw i64 %i.p, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(1) %i.m, i64 %i.r, i1 false)
  br label %bb.e

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.noexc.i
  store ptr %i.l, ptr %3, align 8, !tbaa !31, !alias.scope !62
  %i.s = load i64, ptr %i.m, align 8, !tbaa !15
  store i64 %i.s, ptr %i.f, align 8, !tbaa !15, !alias.scope !62
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !33
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.d
  %i.t = phi i64 [ %i.p, %bb.d ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.t, ptr %i.g, align 8, !tbaa !33, !alias.scope !62
  store ptr %i.m, ptr %i.k, align 8, !tbaa !31
  store i64 0, ptr %i.u, align 8, !tbaa !33
  store i8 0, ptr %i.m, align 8, !tbaa !15
  %i.v = load ptr, ptr %4, align 8, !tbaa !31     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.e
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.i: ; preds = %bb.e
  %i.x = load i64, ptr %i.e, align 8, !tbaa !15
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.z = load ptr, ptr %3, align 8, !tbaa !31     ; 5 uses
  %i.aa = load i64, ptr %i.g, align 8, !tbaa !33  ; 11 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit45.thread.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.not2531.i.i.i = icmp ult i64 %1, %i.aa
  br i1 %.not2531.i.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit45.thread.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f
  %i.ac = load i8, ptr %i.z, align 1, !tbaa !15
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
  br i1 %.not25.i.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit45.thread.i, label %bb.g, !llvm.loop !65

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %i.ak = ptrtoint ptr %i.af to i64
  %i.al = sub i64 %i.ak, %i.j                     ; 2 uses
  %.not62.i = icmp eq i64 %i.al, -1
  br i1 %.not62.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit45.thread.i, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.i
  %invariant.op75 = sub i64 1, %i.aa
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.preheader, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit45.i
  %.02063.i = phi i64 [ %i.bg, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit45.i ], [ %i.al, %.lr.ph.split.i.preheader ] ; 2 uses
  %i.am = add i64 %.02063.i, %i.aa                ; 2 uses
  %i.an = icmp eq i64 %i.am, %1
  br i1 %i.an, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit45.thread.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.i
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 %i.am
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !15
  %i.aq = icmp eq i8 %i.ap, 93
  br i1 %i.aq, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit45.thread.i, label %bb.k

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = load ptr, ptr %4, align 8, !tbaa !31    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.e
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.i: ; preds = %bb.j
  %i.au = load i64, ptr %i.e, align 8, !tbaa !15
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  resume { ptr, i32 } %i.ar

bb.k:                                             ; preds = %bb.i
  %i.aw = add nuw i64 %.02063.i, 1                ; 3 uses
  %.not.i.i32.i = icmp ult i64 %i.aw, %1
  br i1 %.not.i.i32.i, label %bb.l, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit45.thread.i

bb.l:                                             ; preds = %bb.k
  %i.ax = sub nuw i64 %1, %i.aw                   ; 2 uses
  %.not2531.i.i34.i = icmp ult i64 %i.ax, %i.aa
  br i1 %.not2531.i.i34.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit45.thread.i, label %.lr.ph.i.i35.i

.lr.ph.i.i35.i:                                   ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 %i.aw
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.lr.ph.i.i35.i
  %.033.i.i36.i = phi i64 [ %i.ax, %.lr.ph.i.i35.i ], [ %i.be, %bb.n ]
  %.02032.i.i37.i = phi ptr [ %i.ay, %.lr.ph.i.i35.i ], [ %i.bc, %bb.n ]
  %.reass.reass.i.reass.reass.i39.reass.reass.i.reass.reass.reass = add i64 %.033.i.i36.i, %invariant.op75 ; 2 uses
  %i.az = icmp eq i64 %.reass.reass.i.reass.reass.i39.reass.reass.i.reass.reass.reass, 0
  br i1 %i.az, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit45.thread.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i40.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i40.i: ; preds = %bb.m
  %i.ba = call ptr @memchr(ptr noundef nonnull %.02032.i.i37.i, i32 noundef %i.ad, i64 noundef %.reass.reass.i.reass.reass.i39.reass.reass.i.reass.reass.reass) #16 ; 4 uses
  %.not26.i.i41.i = icmp eq ptr %i.ba, null
  br i1 %.not26.i.i41.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit45.thread.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i42.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i42.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i40.i
  %bcmp.i.i43.i = call i32 @bcmp(ptr nonnull %i.ba, ptr nonnull %i.z, i64 %i.aa)
  %i.bb = icmp eq i32 %bcmp.i.i43.i, 0
  br i1 %i.bb, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit45.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i42.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 1 ; 2 uses
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.i, %i.bd                     ; 2 uses
  %.not25.i.i44.i = icmp ult i64 %i.be, %i.aa
  br i1 %.not25.i.i44.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit45.thread.i, label %bb.m, !llvm.loop !65

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit45.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i42.i
  %i.bf = ptrtoint ptr %i.ba to i64
  %i.bg = sub i64 %i.bf, %i.j                     ; 2 uses
  %.not.i = icmp eq i64 %i.bg, -1
  br i1 %.not.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit45.thread.i, label %.lr.ph.split.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit45.thread.i: ; preds = %bb.h, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, %bb.g, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit45.i, %bb.l, %bb.k, %bb.i, %.lr.ph.split.i, %bb.n, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i40.i, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.i, %bb.f
  %.not.lcssa.i = phi i1 [ true, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.i ], [ true, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit45.i ], [ true, %bb.n ], [ true, %bb.f ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ true, %bb.m ], [ true, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i40.i ], [ true, %bb.k ], [ true, %bb.l ], [ false, %.lr.ph.split.i ], [ false, %bb.i ], [ true, %bb.g ], [ true, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i ], [ true, %bb.h ]
  %i.bh = icmp eq ptr %i.z, %i.f
  br i1 %i.bh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i47.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i47.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit45.thread.i
  %i.bi = icmp ult i64 %i.aa, 16
  call void @llvm.assume(i1 %i.bi)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit45.thread.i
  %i.bj = load i64, ptr %i.f, align 8, !tbaa !15
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.bk) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i47.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br i1 %.not.lcssa.i, label %_ZN12_GLOBAL__N_121RequiredBracketLengthESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i, !llvm.loop !66

_ZN12_GLOBAL__N_121RequiredBracketLengthESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i
  %i.bl = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit.thread: ; preds = %bb.b, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit, %bb.a, %_ZN12_GLOBAL__N_121RequiredBracketLengthESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %.sink = phi i32 [ %i.bl, %_ZN12_GLOBAL__N_121RequiredBracketLengthESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ -1, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEPKcm.exit ], [ -1, %bb.a ], [ -1, %bb.b ]
  store i64 %1, ptr %0, align 8, !tbaa !27
  %.sroa.2.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.2.0..sroa_idx.i5, align 8, !tbaa !28
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sink, ptr %i.bm, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17cmScriptGenerator16CreateConfigTestERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(105) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca [2 x %"struct.std::pair"], align 8  ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16, !noalias !67
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31, !noalias !67
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !33, !noalias !67
  store i64 %i.d, ptr %3, align 8, !tbaa !27, !alias.scope !70, !noalias !67
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.b, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !28, !alias.scope !70, !noalias !67
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.e, align 8, !tbaa !73, !alias.scope !70, !noalias !67
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 12, ptr %i.f, align 8, !tbaa !27, !alias.scope !75, !noalias !67
  %.sroa.4.0..sroa_idx.i9.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr @.str.1, ptr %.sroa.4.0..sroa_idx.i9.i, align 8, !tbaa !28, !alias.scope !75, !noalias !67
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.g, align 8, !tbaa !73, !alias.scope !75, !noalias !67
  call void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull %3, i64 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16, !noalias !67
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !33
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %2, align 8, !tbaa !31
  invoke fastcc void @_ZL29cmScriptGeneratorEncodeConfigRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS4_(ptr %.val, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.e, %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %0, align 8, !tbaa !31     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.o = load i64, ptr %i.m, align 8, !tbaa !15
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.k

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !33
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
  %i.a = load i8, ptr %.0.val, align 1, !tbaa !15 ; 2 uses
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
  %i.f = load i64, ptr %i.b, align 8, !tbaa !33
  %i.g = icmp eq i64 %i.f, 4611686018427387903
  br i1 %i.g, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #18
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %bb.c
  %i.h = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.13, i64 noundef 1) ; 0 uses
  %i.i = load i8, ptr %.02, align 1, !tbaa !15
  %i.j = add i8 %i.i, -32
  %i.k = load i64, ptr %i.b, align 8, !tbaa !33   ; 4 uses
  %i.l = add i64 %i.k, 1                          ; 3 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !31     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.c
  br i1 %i.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.o = icmp ult i64 %i.k, 16
  tail call void @llvm.assume(i1 %i.o)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.p = load i64, ptr %i.c, align 8, !tbaa !15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.q = phi i64 [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.r = icmp ugt i64 %i.l, %i.q
  br i1 %i.r, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.k, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %bb.e
  %i.s = phi ptr [ %.pre.i.i, %bb.e ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.k
  store i8 %i.j, ptr %i.t, align 1, !tbaa !15
  store i64 %i.l, ptr %i.b, align 8, !tbaa !33
  %i.u = load ptr, ptr %0, align 8, !tbaa !31
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.l
  store i8 0, ptr %i.v, align 1, !tbaa !15
  %i.w = load i8, ptr %.02, align 1, !tbaa !15
  %i.x = load i64, ptr %i.b, align 8, !tbaa !33   ; 4 uses
  %i.y = add i64 %i.x, 1                          ; 3 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !31     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.c
  br i1 %i.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit
  %i.ab = icmp ult i64 %i.x, 16
  tail call void @llvm.assume(i1 %i.ab)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !15
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i26: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i28
  %i.ad = phi i64 [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i28 ]
  %i.ae = icmp ugt i64 %i.y, %i.ad
  br i1 %i.ae, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit29

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i26
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.x, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i27 = load ptr, ptr %0, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit29
end_hunk_0
