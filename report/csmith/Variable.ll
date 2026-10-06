Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/csmith/original/Variable?download=true
inline.NumInlined: 1390
inline.NumDeleted: 503
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN8Variable20GetMaxArrayDimensionERKSt6vectorIPS_SaIS1_EE:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef i64 %i.q(ptr noundef nonnull align 8 dereferenceable(288) %i.f)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %.lr.ph
  %.2 = phi i64 [ %.01011, %.lr.ph ], [ %i.r, %bb.c ], [ %.01011, %bb.b ] ; 2 uses
  %i.s = add nuw i64 %.012, 1                     ; 2 uses
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !90
  %i.u = load ptr, ptr %0, align 8, !tbaa !91     ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3
  %i.z = icmp ult i64 %i.s, %i.y
  br i1 %i.z, label %.lr.ph, label %._crit_edge, !llvm.loop !8
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z23OutputArrayInitializersRKSt6vectorIP8VariableSaIS1_EERSoi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90
  %i.c = load ptr, ptr %0, align 8, !tbaa !91     ; 2 uses
  %.not.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i, label %_ZN8Variable20GetMaxArrayDimensionERKSt6vectorIPS_SaIS1_EE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.d
  %i.d = phi ptr [ %i.u, %bb.d ], [ %i.c, %bb.a ]
  %.012.i = phi i64 [ %i.s, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %.01011.i = phi i64 [ %.2.i, %bb.d ], [ 0, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.012.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.h = load i8, ptr %i.g, align 8, !tbaa !97, !range !98, !noundef !99
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !96
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef i64 %i.l(ptr noundef nonnull align 8 dereferenceable(288) %i.f), !inline_history !248
  %i.n = icmp ugt i64 %i.m, %.01011.i
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !96
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef i64 %i.q(ptr noundef nonnull align 8 dereferenceable(288) %i.f), !inline_history !248
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph.i
  %.2.i = phi i64 [ %.01011.i, %.lr.ph.i ], [ %i.r, %bb.c ], [ %.01011.i, %bb.b ] ; 3 uses
  %i.s = add nuw i64 %.012.i, 1                   ; 2 uses
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !90
  %i.u = load ptr, ptr %0, align 8, !tbaa !91     ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3
  %i.z = icmp ult i64 %i.s, %i.y
  br i1 %i.z, label %.lr.ph.i, label %_ZN8Variable20GetMaxArrayDimensionERKSt6vectorIPS_SaIS1_EE.exit, !llvm.loop !8

_ZN8Variable20GetMaxArrayDimensionERKSt6vectorIPS_SaIS1_EE.exit: ; preds = %bb.d
  %.not = icmp eq i64 %.2.i, 0
  br i1 %.not, label %_ZN8Variable20GetMaxArrayDimensionERKSt6vectorIPS_SaIS1_EE.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN8Variable20GetMaxArrayDimensionERKSt6vectorIPS_SaIS1_EE.exit
  %i.aa = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN8Variable13new_ctrl_varsEv() ; 2 uses
  tail call void @_Z19OutputArrayCtrlVarsRKSt6vectorIPK8VariableSaIS2_EERSomi(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.2.i, i32 noundef %2)
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !90
  %i.ac = load ptr, ptr %0, align 8, !tbaa !91    ; 2 uses
  %.not22 = icmp eq ptr %i.ab, %i.ac
  br i1 %.not22, label %_ZN8Variable20GetMaxArrayDimensionERKSt6vectorIPS_SaIS1_EE.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.h
  %i.ad = phi ptr [ %i.ao, %bb.h ], [ %i.ac, %bb.e ]
  %.021 = phi i64 [ %i.am, %bb.h ], [ 0, %bb.e ]  ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.021
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !48 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 96
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !97, !range !98, !noundef !99
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.lr.ph
  %i.aj = tail call noundef zeroext i1 @_ZNK13ArrayVariable19no_loop_initializerEv(ptr noundef nonnull align 8 dereferenceable(288) %i.af)
  br i1 %i.aj, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !116
  tail call void @_ZNK13ArrayVariable11output_initERSoPK10ExpressionRKSt6vectorIPK8VariableSaIS7_EEi(ptr noundef nonnull align 8 dereferenceable(288) %i.af, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i32 noundef %2)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %.lr.ph
  %i.am = add nuw i64 %.021, 1                    ; 2 uses
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !90
  %i.ao = load ptr, ptr %0, align 8, !tbaa !91    ; 2 uses
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 3
  %i.at = icmp ult i64 %i.am, %i.as
  br i1 %i.at, label %.lr.ph, label %_ZN8Variable20GetMaxArrayDimensionERKSt6vectorIPS_SaIS1_EE.exit.thread, !llvm.loop !247

_ZN8Variable20GetMaxArrayDimensionERKSt6vectorIPS_SaIS1_EE.exit.thread: ; preds = %bb.h, %bb.e, %bb.a, %_ZN8Variable20GetMaxArrayDimensionERKSt6vectorIPS_SaIS1_EE.exit
  ret void
}

declare noundef zeroext i1 @_ZNK13ArrayVariable19no_loop_initializerEv(ptr noundef nonnull align 8 dereferenceable(288)) local_unnamed_addr #4

declare void @_ZNK13ArrayVariable11output_initERSoPK10ExpressionRKSt6vectorIPK8VariableSaIS7_EEi(ptr noundef nonnull align 8 dereferenceable(288), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local void @_Z21OutputVolatileAddressRKSt6vectorIP8VariableSaIS1_EERSoiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.8", align 8     ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %0, align 8, !tbaa !124    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !124  ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c
  %.pre = load ptr, ptr %4, align 8, !tbaa !38    ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre12 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !40 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.pre, %.pre12
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %.pre, %._crit_edge ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !41 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !35
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %.pre12
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !38
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %._crit_edge
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %.pre, %._crit_edge ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !39
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #23
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %bb.a, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.08.011 = phi ptr [ %i.s, %bb.c ], [ %i.a, %bb.a ] ; 2 uses
  %i.q = load ptr, ptr %.sroa.08.011, align 8, !tbaa !48
  %i.r = invoke noundef i32 @_ZNK8Variable23output_volatile_addressERSoiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EE(ptr noundef nonnull align 8 dereferenceable(200) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.08.011, i64 8 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.c
  br i1 %i.t, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %i.u
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZNK8Variable23output_volatile_addressERSoiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::vector.105", align 8   ; 11 uses
  %8 = alloca %"class.std::vector.28", align 8    ; 14 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.a, ptr %6, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !34
  store i8 0, ptr %i.a, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !65
  invoke void @_ZNK4Type22get_type_sizeof_stringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %tailrecurse.i unwind label %bb.n

tailrecurse.i:                                    ; preds = %bb.a, %tailrecurse.i
  %.tr.i = phi ptr [ %i.f, %tailrecurse.i ], [ %0, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.tr.i, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !89   ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.b, label %tailrecurse.i

bb.b:                                             ; preds = %tailrecurse.i
  %i.g = getelementptr inbounds nuw i8, ptr %.tr.i, i64 96
  %i.h = load i8, ptr %i.g, align 8, !tbaa !97, !range !98, !noundef !99
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZNK8Variable10is_virtualEv.exit, label %_ZNK8Variable10is_virtualEv.exit.thread

_ZNK8Variable10is_virtualEv.exit:                 ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.tr.i, i64 200
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !108
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %_ZNK8Variable10is_virtualEv.exit.thread

bb.c:                                             ; preds = %_ZNK8Variable10is_virtualEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !255)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !138, !noalias !255 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !139, !noalias !255 ; 4 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r                       ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false), !alias.scope !255
  %.not.i.i.i.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not.i.i.i.i.i, label %.thread1.i, label %bb.d

.thread1.i:                                       ; preds = %bb.c
  %i.t = getelementptr inbounds i8, ptr null, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 0, ptr %8, align 8
  store ptr %i.t, ptr %i.u, align 8, !tbaa !140, !alias.scope !255
  br label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.v = icmp ugt i64 %i.s, 9223372036854775804
  br i1 %i.v, label %.noexc.i.i.i, label %bb.e, !prof !93

.noexc.i.i.i:                                     ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #24
          to label %.noexc40 unwind label %bb.o   ; 4 uses

.noexc40:                                         ; preds = %bb.e
  store ptr %i.w, ptr %8, align 8, !tbaa !139, !alias.scope !255
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.s ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.x, ptr %i.y, align 8, !tbaa !140, !alias.scope !255
  %i.z = icmp samesign ugt i64 %i.s, 4
  br i1 %i.z, label %bb.f, label %bb.g, !prof !141

bb.f:                                             ; preds = %.noexc40
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.w, ptr align 4 %i.p, i64 %i.s, i1 false), !noalias !255
  br label %bb.i

bb.g:                                             ; preds = %.noexc40
  %i.aa = icmp eq i64 %i.s, 4
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = load i32, ptr %i.p, align 4, !tbaa !117, !noalias !255
  store i32 %i.ab, ptr %i.w, align 4, !tbaa !117, !noalias !255
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %.thread1.i
  %i.ac = phi ptr [ %i.x, %bb.f ], [ %i.x, %bb.g ], [ %i.x, %bb.h ], [ %i.t, %.thread1.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !138, !alias.scope !255
  %i.ae = invoke noundef i32 @_Z20expand_within_rangesRKSt6vectorIjSaIjEERS_IS_IiSaIiEESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.j unwind label %bb.p       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.af = load ptr, ptr %8, align 8, !tbaa !139   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !140
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ak) #23
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !144 ; 2 uses
  %i.an = load ptr, ptr %7, align 8, !tbaa !145   ; 3 uses
  %.not82 = icmp eq ptr %i.am, %i.an
  br i1 %.not82, label %._crit_edge, label %.lr.ph80

._crit_edge:                                      ; preds = %bb.s, %_ZNSt6vectorIjSaIjEED2Ev.exit
  %.lcssa75 = phi ptr [ %i.am, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.bp, %bb.s ] ; 2 uses
  %.lcssa = phi ptr [ %i.an, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.bq, %bb.s ] ; 3 uses
  %.not4.i.i.i = icmp eq ptr %.lcssa, %.lcssa75
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.au, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i ], [ %.lcssa, %._crit_edge ] ; 3 uses
  %i.ao = load ptr, ptr %.05.i.i.i, align 8, !tbaa !146 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !147
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #23
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i:  ; preds = %bb.l, %.lr.ph.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i41 = icmp eq ptr %i.au, %.lcssa75
  br i1 %.not.i.i.i41, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !9

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !145
  br label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %._crit_edge
  %i.av = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %.lcssa, %._crit_edge ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !148
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ba) #23
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %.loopexit

bb.n:                                             ; preds = %_ZNK8Variable8is_constEv.exit.thread.i, %_ZNK8Variable8is_constEv.exit.i, %_ZNK8Variable21is_inside_union_fieldEv.exit.i, %.preheader.i.i, %bb.v, %_ZNK8Variable11is_volatileEv.exit.thread, %bb.a
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.o:                                             ; preds = %bb.e, %.noexc.i.i.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit43

bb.p:                                             ; preds = %bb.i
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = load ptr, ptr %8, align 8, !tbaa !139   ; 3 uses
  %.not.i.i.i42 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i42, label %_ZNSt6vectorIjSaIjEED2Ev.exit43, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !140
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.be to i64
  %i.bj = sub i64 %i.bh, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bj) #23
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit43

_ZNSt6vectorIjSaIjEED2Ev.exit43:                  ; preds = %bb.q, %bb.p, %bb.o
  %.pn35 = phi { ptr, i32 } [ %i.bc, %bb.o ], [ %i.bd, %bb.p ], [ %i.bd, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.u

.lr.ph80:                                         ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.s
  %i.bk = phi ptr [ %i.bq, %bb.s ], [ %i.an, %_ZNSt6vectorIjSaIjEED2Ev.exit ]
  %.02479 = phi i64 [ %i.bo, %bb.s ], [ 0, %_ZNSt6vectorIjSaIjEED2Ev.exit ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.02479
  %i.bm = invoke noundef ptr @_ZNK13ArrayVariable7itemizeERKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %.lr.ph80
  %i.bn = invoke noundef i32 @_ZNK8Variable23output_volatile_addressERSoiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIS6_SaIS6_EE(ptr noundef nonnull align 8 dereferenceable(200) %i.bm, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.s unwind label %bb.t       ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.bo = add nuw i64 %.02479, 1                  ; 2 uses
  %i.bp = load ptr, ptr %i.al, align 8, !tbaa !144 ; 2 uses
  %i.bq = load ptr, ptr %7, align 8, !tbaa !145   ; 3 uses
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = sdiv exact i64 %i.bt, 24
  %i.bv = icmp ult i64 %i.bo, %i.bu
  br i1 %i.bv, label %.lr.ph80, label %._crit_edge, !llvm.loop !251

bb.t:                                             ; preds = %bb.r, %.lr.ph80
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZNSt6vectorIjSaIjEED2Ev.exit43
  %.pn37 = phi { ptr, i32 } [ %i.bw, %bb.t ], [ %.pn35, %_ZNSt6vectorIjSaIjEED2Ev.exit43 ]
  call void @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.ao

_ZNK8Variable10is_virtualEv.exit.thread:          ; preds = %bb.b, %_ZNK8Variable10is_virtualEv.exit
  %i.bx = load ptr, ptr %i.c, align 8, !tbaa !65
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !88
  %switch = icmp ult i32 %i.by, 2
  br i1 %switch, label %bb.v, label %_ZNK8Variable11is_volatileEv.exit.thread71

bb.v:                                             ; preds = %_ZNK8Variable10is_virtualEv.exit.thread
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ca = invoke noundef zeroext i1 @_ZNK12CVQualifiers23is_volatile_after_derefEi(ptr noundef nonnull align 8 dereferenceable(96) %i.bz, i32 noundef 0)
          to label %.noexc44 unwind label %bb.n

.noexc44:                                         ; preds = %bb.v
  br i1 %i.ca, label %_ZNK8Variable11is_volatileEv.exit.thread, label %bb.w

bb.w:                                             ; preds = %.noexc44
  %i.cb = load ptr, ptr %i.c, align 8, !tbaa !65  ; 2 uses
  %.not.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i, label %_ZNK8Variable11is_volatileEv.exit.thread71, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.w
end_hunk_0
begin_hunk_1_@_ZNK8Variable4hashERSo:bb.a
  %i.ae = icmp ult i64 %i.x, %i.ad
  br i1 %i.ae, label %bb.c, label %.loopexit, !llvm.loop !260

bb.g:                                             ; preds = %bb.a
  %i.af = icmp eq i32 %i.c, 0
  br i1 %i.af, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.ag = tail call noundef zeroext i1 @_ZN9CGOptions12compute_hashEv()
  br i1 %i.ag, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !65
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !262
  %i.ak = icmp eq i32 %i.aj, 10
  br i1 %i.ak, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.al = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.31, i64 noundef 28) ; 0 uses
  %i.am = load ptr, ptr %0, align 8, !tbaa !96
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.ap = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.32, i64 noundef 9) ; 0 uses
  %i.aq = load ptr, ptr %0, align 8, !tbaa !96
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 88
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.at = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.33, i64 noundef 4) ; 0 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !41
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !34
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.av, i64 noundef %i.ax) ; 4 uses
  %i.az = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull @.str.34, i64 noundef 21) ; 0 uses
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !96
  %i.bb = getelementptr i8, ptr %i.ba, i64 -24
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds i8, ptr %i.ay, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 240
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !155 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i, label %bb.k, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt16__throw_bad_castv() #26
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !160
  %.not.i1.i.i = icmp eq i8 %i.bh, 0
  br i1 %.not.i1.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 67
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.m:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bf)
  %i.bk = load ptr, ptr %i.bf, align 8, !tbaa !96
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = tail call noundef signext i8 %i.bm(ptr noundef nonnull align 8 dereferenceable(570) %i.bf, i8 noundef signext 10), !inline_history !261
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.l, %bb.m
  %.0.i.i.i = phi i8 [ %i.bj, %bb.l ], [ %i.bn, %bb.m ]
  %i.bo = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, i8 noundef signext %.0.i.i.i)
  br label %.loopexit.sink.split

bb.n:                                             ; preds = %bb.i
  %i.bp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.35, i64 noundef 20) ; 0 uses
  %i.bq = load ptr, ptr %0, align 8, !tbaa !96
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 88
  %i.bs = load ptr, ptr %i.br, align 8
  tail call void %i.bs(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.bt = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.36, i64 noundef 3) ; 0 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !41
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !34
  %i.by = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.bv, i64 noundef %i.bx) ; 4 uses
  %i.bz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.by, ptr noundef nonnull @.str.34, i64 noundef 21) ; 0 uses
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !96
  %i.cb = getelementptr i8, ptr %i.ca, i64 -24
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds i8, ptr %i.by, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 240
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !155 ; 6 uses
  %.not.i.i.i17 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i17, label %bb.o, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i18

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt16__throw_bad_castv() #26
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i18: ; preds = %bb.n
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 56
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !160
  %.not.i1.i.i19 = icmp eq i8 %i.ch, 0
  br i1 %.not.i1.i.i19, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i18
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 67
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit21

bb.q:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i18
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cf)
  %i.ck = load ptr, ptr %i.cf, align 8, !tbaa !96
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = tail call noundef signext i8 %i.cm(ptr noundef nonnull align 8 dereferenceable(570) %i.cf, i8 noundef signext 10), !inline_history !261
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit21

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit21: ; preds = %bb.p, %bb.q
  %.0.i.i.i20 = phi i8 [ %i.cj, %bb.p ], [ %i.cn, %bb.q ]
  %i.co = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.by, i8 noundef signext %.0.i.i.i20)
  br label %.loopexit.sink.split

bb.r:                                             ; preds = %bb.h
  %i.cp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.37, i64 noundef 4) ; 0 uses
  %i.cq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @_ZN8Variable13sink_var_nameE, i64 noundef 12) ; 0 uses
  %i.cr = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.21, i64 noundef 3) ; 0 uses
  %i.cs = load ptr, ptr %0, align 8, !tbaa !96
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 88
  %i.cu = load ptr, ptr %i.ct, align 8
  tail call void %i.cu(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.cv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.22, i64 noundef 1) ; 0 uses
  %i.cw = load ptr, ptr %1, align 8, !tbaa !96
  %i.cx = getelementptr i8, ptr %i.cw, i64 -24
  %i.cy = load i64, ptr %i.cx, align 8
  %i.cz = getelementptr inbounds i8, ptr %1, i64 %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 240
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !155 ; 6 uses
  %.not.i.i.i22 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i22, label %bb.s, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i23

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt16__throw_bad_castv() #26
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i23: ; preds = %bb.r
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 56
  %i.dd = load i8, ptr %i.dc, align 8, !tbaa !160
  %.not.i1.i.i24 = icmp eq i8 %i.dd, 0
  br i1 %.not.i1.i.i24, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i23
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 67
  %i.df = load i8, ptr %i.de, align 1, !tbaa !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit26

bb.u:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i23
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.db)
  %i.dg = load ptr, ptr %i.db, align 8, !tbaa !96
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 48
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = tail call noundef signext i8 %i.di(ptr noundef nonnull align 8 dereferenceable(570) %i.db, i8 noundef signext 10), !inline_history !261
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit26

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit26: ; preds = %bb.t, %bb.u
  %.0.i.i.i25 = phi i8 [ %i.df, %bb.t ], [ %i.dj, %bb.u ]
  %i.dk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %.0.i.i.i25)
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit26, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit21, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %.sink = phi ptr [ %i.bo, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ %i.co, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit21 ], [ %i.dk, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit26 ]
  %i.dl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %.sink) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %.loopexit.sink.split, %bb.b, %bb.g
  ret void
}

declare noundef ptr @_Z21get_fact_mgr_for_funcPK8Function(ptr noundef) local_unnamed_addr #4

declare noundef ptr @_Z16GetFirstFunctionv() local_unnamed_addr #4

declare noundef zeroext i1 @_ZN9FactUnion17is_field_readableEPK8VariableiRKSt6vectorIPK4FactSaIS6_EE(ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN9CGOptions12compute_hashEv() local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local void @_Z12HashVariableP8VariablePSo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !96
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK8Variable9to_stringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(200) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.105", align 8   ; 12 uses
  %3 = alloca %"class.std::vector.28", align 8    ; 14 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 18 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 16 uses
  store i64 0, ptr %i.b, align 8, !tbaa !34
  store i8 0, ptr %i.a, align 8, !tbaa !35
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i, %bb.a
  %.tr.i = phi ptr [ %1, %bb.a ], [ %i.d, %tailrecurse.i ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.tr.i, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !89   ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.b, label %tailrecurse.i

bb.b:                                             ; preds = %tailrecurse.i
  %i.e = getelementptr inbounds nuw i8, ptr %.tr.i, i64 96
  %i.f = load i8, ptr %i.e, align 8, !tbaa !97, !range !98, !noundef !99
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZNK8Variable10is_virtualEv.exit, label %_ZNK8Variable10is_virtualEv.exit.thread

_ZNK8Variable10is_virtualEv.exit:                 ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.tr.i, i64 200
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !108
  %i.j = icmp eq ptr %i.i, null
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.l = load i8, ptr %i.k, align 8, !range !98
  %i.m = trunc nuw i8 %i.l to i1
  %or.cond = select i1 %i.j, i1 %i.m, i1 false
  br i1 %or.cond, label %bb.c, label %_ZNK8Variable10is_virtualEv.exit.thread

bb.c:                                             ; preds = %_ZNK8Variable10is_virtualEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !271)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !138, !noalias !271 ; 2 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !139, !noalias !271 ; 4 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s                       ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !alias.scope !271
  %.not.i.i.i.i.i = icmp eq ptr %i.p, %i.q
  br i1 %.not.i.i.i.i.i, label %.thread1.i, label %bb.d

.thread1.i:                                       ; preds = %bb.c
  %i.u = getelementptr inbounds i8, ptr null, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %3, align 8
  store ptr %i.u, ptr %i.v, align 8, !tbaa !140, !alias.scope !271
  br label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.w = icmp ugt i64 %i.t, 9223372036854775804
  br i1 %i.w, label %.noexc.i.i.i, label %bb.e, !prof !93

.noexc.i.i.i:                                     ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc unwind label %bb.v

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #24
          to label %.noexc40 unwind label %bb.v   ; 4 uses

.noexc40:                                         ; preds = %bb.e
  store ptr %i.x, ptr %3, align 8, !tbaa !139, !alias.scope !271
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.t ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !140, !alias.scope !271
  %i.aa = icmp samesign ugt i64 %i.t, 4
  br i1 %i.aa, label %bb.f, label %bb.g, !prof !141

bb.f:                                             ; preds = %.noexc40
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.q, i64 %i.t, i1 false), !noalias !271
  br label %bb.i

bb.g:                                             ; preds = %.noexc40
  %i.ab = icmp eq i64 %i.t, 4
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = load i32, ptr %i.q, align 4, !tbaa !117, !noalias !271
  store i32 %i.ac, ptr %i.x, align 4, !tbaa !117, !noalias !271
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %.thread1.i
  %i.ad = phi ptr [ %i.y, %bb.f ], [ %i.y, %bb.g ], [ %i.y, %bb.h ], [ %i.u, %.thread1.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !138, !alias.scope !271
  %i.af = invoke noundef i32 @_Z20expand_within_rangesRKSt6vectorIjSaIjEERS_IS_IiSaIiEESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.j unwind label %bb.w       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.ag = load ptr, ptr %3, align 8, !tbaa !139   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !140
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #23
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !144 ; 2 uses
  %i.ao = load ptr, ptr %2, align 8, !tbaa !145   ; 3 uses
  %.not128 = icmp eq ptr %i.an, %i.ao
  br i1 %.not128, label %._crit_edge, label %.lr.ph125

.lr.ph125:                                        ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.ar = invoke noundef ptr @_ZNK13ArrayVariable7itemizeERKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(288) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %bb.l unwind label %.loopexit.loopexit.split-lp

bb.l:                                             ; preds = %.lr.ph125
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZNK8Variable9to_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(200) %i.ar)
          to label %bb.m unwind label %.loopexit.split-lp152

bb.m:                                             ; preds = %bb.l
  %i.as = load ptr, ptr %4, align 8, !tbaa !41    ; 3 uses
  %i.at = load i64, ptr %i.ap, align 8, !tbaa !34 ; 6 uses
  %i.au = load i64, ptr %i.b, align 8, !tbaa !34  ; 5 uses
  %i.av = sub i64 9223372036854775807, %i.au
  %i.aw = icmp ult i64 %i.av, %i.at
  br i1 %i.aw, label %.loopexit155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.peel: ; preds = %bb.m
  %i.ax = add i64 %i.au, %i.at                    ; 3 uses
  %i.ay = load ptr, ptr %0, align 8, !tbaa !41    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.a
  br i1 %i.az, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.peel
  %i.ba = load i64, ptr %i.a, align 8, !tbaa !35
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.peel
  %i.bb = icmp ult i64 %i.au, 16
  call void @llvm.assume(i1 %i.bb)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.peel
  %i.bc = phi i64 [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.peel ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.peel ]
  %.not.i.i.i.i.peel = icmp ugt i64 %i.ax, %i.bc
  br i1 %.not.i.i.i.i.peel, label %bb.r, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.peel
  %.not8.i.i.i.i.peel = icmp eq i64 %i.at, 0
  br i1 %.not8.i.i.i.i.peel, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.au ; 2 uses
  %cond.i.i.i.i.peel = icmp eq i64 %i.at, 1
  br i1 %cond.i.i.i.i.peel, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bd, ptr align 1 %i.as, i64 %i.at, i1 false)
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.be = load i8, ptr %i.as, align 1, !tbaa !35
  store i8 %i.be, ptr %i.bd, align 1, !tbaa !35
  br label %bb.s

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.peel
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.au, i64 noundef 0, ptr noundef %i.as, i64 noundef %i.at)
          to label %bb.s unwind label %.loopexit92.loopexit.split-lp

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.n
  store i64 %i.ax, ptr %i.b, align 8, !tbaa !34
  %i.bf = load ptr, ptr %0, align 8, !tbaa !41
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.ax
  store i8 0, ptr %i.bg, align 1, !tbaa !35
  %i.bh = load ptr, ptr %4, align 8, !tbaa !41    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.aq
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %bb.s
  %i.bj = load i64, ptr %i.aq, align 8, !tbaa !35
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.bl = load ptr, ptr %i.am, align 8, !tbaa !144 ; 2 uses
  %i.bm = load ptr, ptr %2, align 8, !tbaa !145   ; 3 uses
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = sdiv exact i64 %i.bp, 24
  %i.br = icmp ugt i64 %i.bq, 1
  br i1 %i.br, label %.peel.next145, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZNSt6vectorIjSaIjEED2Ev.exit
  %.lcssa113 = phi ptr [ %i.an, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel ], [ %i.dw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.lcssa = phi ptr [ %i.ao, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel ], [ %i.dx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %.not4.i.i.i = icmp eq ptr %.lcssa, %.lcssa113
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.by, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i ], [ %.lcssa, %._crit_edge ] ; 3 uses
  %i.bs = load ptr, ptr %.05.i.i.i, align 8, !tbaa !146 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !147
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = sub i64 %i.bv, %i.bw
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bx) #23
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i:  ; preds = %bb.t, %.lr.ph.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i41 = icmp eq ptr %i.by, %.lcssa113
  br i1 %.not.i.i.i41, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !9

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !145
  br label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %._crit_edge
  %i.bz = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %.lcssa, %._crit_edge ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !148
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.bz to i64
  %i.ce = sub i64 %i.cc, %i.cd
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.ce) #23
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, %bb.u
end_hunk_1
begin_hunk_2_@_ZNK8Variable12is_seen_nameERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERKS6_:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.k
  store i8 0, ptr %i.s, align 1, !tbaa !35
  %i.t = load i64, ptr %i.e, align 8, !tbaa !34   ; 5 uses
  %i.u = icmp eq i64 %i.t, 9223372036854775807
  br i1 %i.u, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.68) #26
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.v = add nsw i64 %i.t, 1                      ; 3 uses
  %i.w = load ptr, ptr %3, align 8, !tbaa !41     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.d
  br i1 %i.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.y = icmp ult i64 %i.t, 16
  call void @llvm.assume(i1 %i.y)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.z = load i64, ptr %i.d, align 8, !tbaa !35
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.aa = phi i64 [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.v, %i.aa
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.t
  store i8 91, ptr %i.ab, align 1, !tbaa !35
  br label %bb.k

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.t, i64 noundef 0, ptr noundef nonnull @.str.54, i64 noundef 1)
          to label %bb.k unwind label %.loopexit

bb.k:                                             ; preds = %bb.i, %bb.j
  store i64 %i.v, ptr %i.e, align 8, !tbaa !34
  %i.ac = load ptr, ptr %3, align 8, !tbaa !41
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.v
  store i8 0, ptr %i.ad, align 1, !tbaa !35
  %i.ae = load i64, ptr %i.e, align 8, !tbaa !34  ; 3 uses
  %i.af = load i64, ptr %i.f, align 8, !tbaa !34  ; 2 uses
  %spec.select.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ae, i64 %i.af) ; 2 uses
  %i.ag = icmp eq i64 %spec.select.i.i, 0
  %.pre.pre = load ptr, ptr %3, align 8, !tbaa !41 ; 3 uses
  br i1 %i.ag, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i:     ; preds = %bb.k
  %i.ah = load ptr, ptr %2, align 8, !tbaa !41
  %bcmp = call i32 @bcmp(ptr %i.ah, ptr %.pre.pre, i64 %spec.select.i.i)
  %.not.i = icmp eq i32 %bcmp, 0
  br i1 %.not.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i, %bb.k
  %i.ai = icmp ule i64 %i.ae, %i.af
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i
  %.0.i = phi i1 [ false, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i ], [ %i.ai, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i ] ; 3 uses
  %i.aj = icmp eq ptr %.pre.pre, %i.d
  br i1 %i.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit
  %i.ak = icmp ult i64 %i.ae, 16
  call void @llvm.assume(i1 %i.ak)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit
  %i.al = load i64, ptr %i.d, align 8, !tbaa !35
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %.pre.pre, i64 noundef %i.am) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br i1 %.0.i, label %._crit_edge, label %bb.b

.loopexit:                                        ; preds = %bb.j
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp:                               ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.an = load ptr, ptr %3, align 8, !tbaa !41    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.d
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.l
  %i.ap = load i64, ptr %i.d, align 8, !tbaa !35
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %lpad.phi

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b, %bb.a
  %.lcssa22 = phi i1 [ false, %bb.a ], [ %.0.i, %bb.b ], [ %.0.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  ret i1 %.lcssa22
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK8Variable17is_valid_volatileEv(ptr noundef nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #3 align 2 {
bb.a:
  br label %tailrecurse.outer

tailrecurse.outer:                                ; preds = %.preheader.i, %bb.a
  %.tr.ph = phi ptr [ %0, %bb.a ], [ %i.k, %.preheader.i ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.tr.ph, i64 64
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.outer, %.preheader.i.preheader
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %_ZNK8Variable14is_union_fieldEv.exit.i, %tailrecurse
  %.tr.i = phi ptr [ %.tr.ph, %tailrecurse ], [ %i.c, %_ZNK8Variable14is_union_fieldEv.exit.i ]
  %i.b = getelementptr inbounds nuw i8, ptr %.tr.i, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !89   ; 3 uses
  %.not.i.not.not.i.not = icmp eq ptr %i.c, null
  br i1 %.not.i.not.not.i.not, label %_ZNK8Variable21is_inside_union_fieldEv.exit, label %_ZNK8Variable14is_union_fieldEv.exit.i

_ZNK8Variable14is_union_fieldEv.exit.i:           ; preds = %tailrecurse.i
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !65
  %i.f = load i32, ptr %i.e, align 8, !tbaa !88
  %i.g = icmp eq i32 %i.f, 2
  br i1 %i.g, label %.preheader.i.preheader, label %tailrecurse.i

.preheader.i.preheader:                           ; preds = %_ZNK8Variable14is_union_fieldEv.exit.i
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !65
  %i.i = load i32, ptr %i.h, align 8, !tbaa !88
  %.not7.i6 = icmp eq i32 %i.i, 2
  br i1 %.not7.i6, label %tailrecurse, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.08.i7 = phi ptr [ %i.k, %.preheader.i ], [ %.tr.ph, %.preheader.i.preheader ]
  %i.j = getelementptr inbounds nuw i8, ptr %.08.i7, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !89, !nonnull !99, !noundef !99 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !65
  %i.n = load i32, ptr %i.m, align 8, !tbaa !88
  %.not7.i = icmp eq i32 %i.n, 2
  br i1 %.not7.i, label %tailrecurse.outer, label %.preheader.i

_ZNK8Variable21is_inside_union_fieldEv.exit:      ; preds = %tailrecurse.i
  %i.o = getelementptr inbounds nuw i8, ptr %.tr.ph, i64 104
  %i.p = tail call noundef zeroext i1 @_ZNK12CVQualifiers20is_const_after_derefEi(ptr noundef nonnull align 8 dereferenceable(96) %i.o, i32 noundef 0)
  br i1 %i.p, label %_ZNK8Variable8is_constEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK8Variable21is_inside_union_fieldEv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %.tr.ph, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !65   ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %_ZNK8Variable8is_constEv.exit.thread4, label %_ZNK8Variable8is_constEv.exit

_ZNK8Variable8is_constEv.exit:                    ; preds = %bb.b
  %i.s = tail call noundef zeroext i1 @_ZNK4Type21is_const_struct_unionEv(ptr noundef nonnull align 8 dereferenceable(136) %i.r)
  br i1 %i.s, label %_ZNK8Variable8is_constEv.exit.thread, label %_ZNK8Variable8is_constEv.exit.thread4

_ZNK8Variable8is_constEv.exit.thread:             ; preds = %_ZNK8Variable21is_inside_union_fieldEv.exit, %_ZNK8Variable8is_constEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %.tr.ph, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !116  ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !96
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 112
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef zeroext i1 %i.x(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i32 noundef 0)
  br i1 %i.y, label %_ZNK8Variable8is_constEv.exit.thread4, label %bb.c

bb.c:                                             ; preds = %_ZNK8Variable8is_constEv.exit.thread
  %i.z = getelementptr inbounds nuw i8, ptr %.tr.ph, i64 64
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !65
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !88
  %.not = icmp ne i32 %i.ab, 1
  br label %_ZNK8Variable8is_constEv.exit.thread4

_ZNK8Variable8is_constEv.exit.thread4:            ; preds = %bb.b, %bb.c, %_ZNK8Variable8is_constEv.exit, %_ZNK8Variable8is_constEv.exit.thread
  %.0 = phi i1 [ true, %bb.b ], [ true, %_ZNK8Variable8is_constEv.exit ], [ %.not, %bb.c ], [ true, %_ZNK8Variable8is_constEv.exit.thread ]
  ret i1 %.0
}

declare void @_ZNK4Type22get_type_sizeof_stringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZNK8Variable23output_addressable_nameERSoi(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.105", align 8   ; 11 uses
  %4 = alloca %"class.std::vector.28", align 8    ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i, %bb.a
  %.tr.i = phi ptr [ %0, %bb.a ], [ %i.b, %tailrecurse.i ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.tr.i, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %tailrecurse.i

bb.b:                                             ; preds = %tailrecurse.i
  %i.c = getelementptr inbounds nuw i8, ptr %.tr.i, i64 96
  %i.d = load i8, ptr %i.c, align 8, !tbaa !97, !range !98, !noundef !99
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_ZNK8Variable10is_virtualEv.exit, label %_ZNK8Variable10is_virtualEv.exit.thread

_ZNK8Variable10is_virtualEv.exit:                 ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.tr.i, i64 200
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !108
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %_ZNK8Variable10is_virtualEv.exit.thread

bb.c:                                             ; preds = %_ZNK8Variable10is_virtualEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !138, !noalias !323 ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !139, !noalias !323 ; 4 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !alias.scope !323
  %.not.i.i.i.i.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i.i.i.i.i, label %.thread1.i, label %bb.d

.thread1.i:                                       ; preds = %bb.c
  %i.p = getelementptr inbounds i8, ptr null, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %4, align 8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !140, !alias.scope !323
  br label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.r = icmp ugt i64 %i.o, 9223372036854775804
  br i1 %i.r, label %.noexc.i.i.i, label %bb.e, !prof !93

.noexc.i.i.i:                                     ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24
          to label %.noexc44 unwind label %bb.n   ; 4 uses

.noexc44:                                         ; preds = %bb.e
  store ptr %i.s, ptr %4, align 8, !tbaa !139, !alias.scope !323
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.o ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.t, ptr %i.u, align 8, !tbaa !140, !alias.scope !323
  %i.v = icmp samesign ugt i64 %i.o, 4
  br i1 %i.v, label %bb.f, label %bb.g, !prof !141

bb.f:                                             ; preds = %.noexc44
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.s, ptr align 4 %i.l, i64 %i.o, i1 false), !noalias !323
  br label %bb.i

bb.g:                                             ; preds = %.noexc44
  %i.w = icmp eq i64 %i.o, 4
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = load i32, ptr %i.l, align 4, !tbaa !117, !noalias !323
  store i32 %i.x, ptr %i.s, align 4, !tbaa !117, !noalias !323
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %.thread1.i
  %i.y = phi ptr [ %i.t, %bb.f ], [ %i.t, %bb.g ], [ %i.t, %bb.h ], [ %i.p, %.thread1.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.y, ptr %i.z, align 8, !tbaa !138, !alias.scope !323
  %i.aa = invoke noundef i32 @_Z20expand_within_rangesRKSt6vectorIjSaIjEERS_IS_IiSaIiEESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.j unwind label %bb.o       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.ab = load ptr, ptr %4, align 8, !tbaa !139   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !140
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #23
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !144 ; 2 uses
  %i.aj = load ptr, ptr %3, align 8, !tbaa !145   ; 3 uses
  %.not105 = icmp eq ptr %i.ai, %i.aj
  br i1 %.not105, label %._crit_edge, label %.lr.ph103

._crit_edge:                                      ; preds = %bb.r, %_ZNSt6vectorIjSaIjEED2Ev.exit
  %.lcssa98 = phi ptr [ %i.ai, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.bk, %bb.r ] ; 2 uses
  %.lcssa = phi ptr [ %i.aj, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.bl, %bb.r ] ; 3 uses
  %.not4.i.i.i = icmp eq ptr %.lcssa, %.lcssa98
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.aq, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i ], [ %.lcssa, %._crit_edge ] ; 3 uses
  %i.ak = load ptr, ptr %.05.i.i.i, align 8, !tbaa !146 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !147
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #23
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i:  ; preds = %bb.l, %.lr.ph.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i45 = icmp eq ptr %i.aq, %.lcssa98
  br i1 %.not.i.i.i45, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !9

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !145
  br label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %._crit_edge
  %i.ar = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %.lcssa, %._crit_edge ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !148
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.aw) #23
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.loopexit

bb.n:                                             ; preds = %bb.e, %.noexc.i.i.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit47

bb.o:                                             ; preds = %bb.i
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = load ptr, ptr %4, align 8, !tbaa !139   ; 3 uses
  %.not.i.i.i46 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i46, label %_ZNSt6vectorIjSaIjEED2Ev.exit47, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !140
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.az to i64
  %i.be = sub i64 %i.bc, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.be) #23
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit47

_ZNSt6vectorIjSaIjEED2Ev.exit47:                  ; preds = %bb.p, %bb.o, %bb.n
  %.pn39 = phi { ptr, i32 } [ %i.ax, %bb.n ], [ %i.ay, %bb.o ], [ %i.ay, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.t

.lr.ph103:                                        ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.r
  %i.bf = phi ptr [ %i.bl, %bb.r ], [ %i.aj, %_ZNSt6vectorIjSaIjEED2Ev.exit ]
  %.019102 = phi i64 [ %i.bj, %bb.r ], [ 0, %_ZNSt6vectorIjSaIjEED2Ev.exit ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.bf, i64 %.019102
  %i.bh = invoke noundef ptr @_ZNK13ArrayVariable7itemizeERKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %.lr.ph103
  %i.bi = invoke noundef i32 @_ZNK8Variable23output_addressable_nameERSoi(ptr noundef nonnull align 8 dereferenceable(200) %i.bh, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2)
          to label %bb.r unwind label %bb.s       ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.bj = add nuw i64 %.019102, 1                 ; 2 uses
  %i.bk = load ptr, ptr %i.ah, align 8, !tbaa !144 ; 2 uses
  %i.bl = load ptr, ptr %3, align 8, !tbaa !145   ; 3 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = sdiv exact i64 %i.bo, 24
  %i.bq = icmp ult i64 %i.bj, %i.bp
  br i1 %i.bq, label %.lr.ph103, label %._crit_edge, !llvm.loop !321

bb.s:                                             ; preds = %bb.q, %.lr.ph103
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNSt6vectorIjSaIjEED2Ev.exit47
  %.pn41 = phi { ptr, i32 } [ %i.br, %bb.s ], [ %.pn39, %_ZNSt6vectorIjSaIjEED2Ev.exit47 ]
  call void @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.ba

_ZNK8Variable10is_virtualEv.exit.thread:          ; preds = %bb.b, %_ZNK8Variable10is_virtualEv.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !65
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !88
  switch i32 %i.bu, label %.loopexit [
    i32 0, label %._crit_edge.i.i
    i32 1, label %._crit_edge.i.i
    i32 3, label %bb.ax
    i32 2, label %bb.ax
  ]

._crit_edge.i.i:                                  ; preds = %_ZNK8Variable10is_virtualEv.exit.thread, %_ZNK8Variable10is_virtualEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 10 uses
  store ptr %i.bv, ptr %5, align 8, !tbaa !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.bv, ptr noundef nonnull align 1 dereferenceable(10) @.str.55, i64 10, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store i64 10, ptr %i.bw, align 8, !tbaa !34
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 26
  store i8 0, ptr %i.bx, align 2, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNK8Variable9to_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(200) %0)
          to label %bb.u unwind label %bb.ap

bb.u:                                             ; preds = %._crit_edge.i.i
end_hunk_2
begin_hunk_3_@_ZNK8Variable23output_addressable_nameERSoi:bb.a
          to label %bb.am unwind label %bb.at

bb.am:                                            ; preds = %bb.ak, %bb.aj, %bb.ah, %bb.al
  store i64 %i.dn, ptr %i.df, align 8, !tbaa !34
  %i.dv = load ptr, ptr %7, align 8, !tbaa !41
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dn
  store i8 0, ptr %i.dw, align 1, !tbaa !35
  %i.dx = load ptr, ptr %8, align 8, !tbaa !41    ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.dz = icmp eq ptr %i.dx, %i.dy
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %bb.am
  %i.ea = load i64, ptr %i.dy, align 8, !tbaa !35
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.eb) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  invoke void @_Z16output_print_strRSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_i(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %2)
          to label %bb.an unwind label %bb.au

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  invoke void @_Z8outputlnRSo(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.ao unwind label %bb.au

bb.ao:                                            ; preds = %bb.an
  %i.ec = load ptr, ptr %7, align 8, !tbaa !41    ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.de
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %bb.ao
  %i.ee = load i64, ptr %i.de, align 8, !tbaa !35
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.ef) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.eg = load ptr, ptr %5, align 8, !tbaa !41    ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.bv
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  %i.ei = load i64, ptr %i.bv, align 8, !tbaa !35
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ej) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %.loopexit

bb.ap:                                            ; preds = %._crit_edge.i.i
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

bb.aq:                                            ; preds = %bb.aa, %bb.v
  %i.el = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.em = load ptr, ptr %6, align 8, !tbaa !41    ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %bb.aq
  %i.ep = load i64, ptr %i.en, align 8, !tbaa !35
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.eq) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83, %bb.ap
  %.pn = phi { ptr, i32 } [ %i.ek, %bb.ap ], [ %i.el, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83 ], [ %i.el, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.aw

bb.ar:                                            ; preds = %bb.ae, %bb.ac
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.as:                                            ; preds = %._crit_edge.i.i56
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

bb.at:                                            ; preds = %bb.al, %bb.ag
  %i.et = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eu = load ptr, ptr %8, align 8, !tbaa !41    ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ew = icmp eq ptr %i.eu, %i.ev
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %bb.at
  %i.ex = load i64, ptr %i.ev, align 8, !tbaa !35
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ey) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86, %bb.as
  %.pn32 = phi { ptr, i32 } [ %i.es, %bb.as ], [ %i.et, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86 ], [ %i.et, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.av

bb.au:                                            ; preds = %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88
  %.pn34 = phi { ptr, i32 } [ %i.ez, %bb.au ], [ %.pn32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ]
  %i.fa = load ptr, ptr %7, align 8, !tbaa !41    ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.de
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %bb.av
  %i.fc = load i64, ptr %i.de, align 8, !tbaa !35
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.aw

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %bb.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85
  %.pn34.pn.pn = phi { ptr, i32 } [ %.pn34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ], [ %i.er, %bb.ar ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ]
  %i.fe = load ptr, ptr %5, align 8, !tbaa !41    ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.bv
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %bb.aw
  %i.fg = load i64, ptr %i.bv, align 8, !tbaa !35
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ba

bb.ax:                                            ; preds = %_ZNK8Variable10is_virtualEv.exit.thread, %_ZNK8Variable10is_virtualEv.exit.thread
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !90 ; 2 uses
  %i.fl = load ptr, ptr %i.fi, align 8, !tbaa !91 ; 2 uses
  %.not = icmp eq ptr %i.fk, %i.fl
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ax, %bb.az
  %i.fm = phi ptr [ %i.fx, %bb.az ], [ %i.fl, %bb.ax ] ; 2 uses
  %i.fn = phi ptr [ %i.fy, %bb.az ], [ %i.fk, %bb.ax ]
  %.0100 = phi i64 [ %i.fz, %bb.az ], [ 0, %bb.ax ] ; 2 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %.0100
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !48 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 83
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !121, !range !98, !noundef !99
  %i.fs = trunc nuw i8 %i.fr to i1
  br i1 %i.fs, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph
  %i.ft = tail call noundef i32 @_ZNK8Variable23output_addressable_nameERSoi(ptr noundef nonnull align 8 dereferenceable(200) %i.fp, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) ; 0 uses
  %i.fu = load ptr, ptr %i.bs, align 8, !tbaa !65
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !88
  %i.fw = icmp eq i32 %i.fv, 2
  br i1 %i.fw, label %.loopexit, label %._crit_edge108

._crit_edge108:                                   ; preds = %bb.ay
  %.pre = load ptr, ptr %i.fj, align 8, !tbaa !90
  %.pre109 = load ptr, ptr %i.fi, align 8, !tbaa !91
  br label %bb.az

bb.az:                                            ; preds = %._crit_edge108, %.lr.ph
  %i.fx = phi ptr [ %.pre109, %._crit_edge108 ], [ %i.fm, %.lr.ph ] ; 2 uses
  %i.fy = phi ptr [ %.pre, %._crit_edge108 ], [ %i.fn, %.lr.ph ] ; 2 uses
  %i.fz = add nuw i64 %.0100, 1                   ; 2 uses
  %i.ga = ptrtoint ptr %i.fy to i64
  %i.gb = ptrtoint ptr %i.fx to i64
  %i.gc = sub i64 %i.ga, %i.gb
  %i.gd = ashr exact i64 %i.gc, 3
  %i.ge = icmp ult i64 %i.fz, %i.gd
  br i1 %i.ge, label %.lr.ph, label %.loopexit, !llvm.loop !322

.loopexit:                                        ; preds = %bb.ay, %bb.az, %bb.ax, %_ZNK8Variable10is_virtualEv.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit
  ret i32 0

bb.ba:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, %bb.t
  %.pn41.pn = phi { ptr, i32 } [ %.pn41, %bb.t ], [ %.pn34.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ]
  resume { ptr, i32 } %.pn41.pn
}

declare void @_Z16output_print_strRSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_i(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZNK8Variable17output_value_dumpERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.105", align 8   ; 11 uses
  %5 = alloca %"class.std::vector.28", align 8    ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i, %bb.a
  %.tr.i = phi ptr [ %0, %bb.a ], [ %i.b, %tailrecurse.i ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.tr.i, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %tailrecurse.i

bb.b:                                             ; preds = %tailrecurse.i
  %i.c = getelementptr inbounds nuw i8, ptr %.tr.i, i64 96
  %i.d = load i8, ptr %i.c, align 8, !tbaa !97, !range !98, !noundef !99
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_ZNK8Variable10is_virtualEv.exit, label %_ZNK8Variable10is_virtualEv.exit.thread

_ZNK8Variable10is_virtualEv.exit:                 ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.tr.i, i64 200
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !108
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %_ZNK8Variable10is_virtualEv.exit.thread

bb.c:                                             ; preds = %_ZNK8Variable10is_virtualEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !138, !noalias !335 ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !139, !noalias !335 ; 4 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !alias.scope !335
  %.not.i.i.i.i.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i.i.i.i.i, label %.thread1.i, label %bb.d

.thread1.i:                                       ; preds = %bb.c
  %i.p = getelementptr inbounds i8, ptr null, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %5, align 8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !140, !alias.scope !335
  br label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.r = icmp ugt i64 %i.o, 9223372036854775804
  br i1 %i.r, label %.noexc.i.i.i, label %bb.e, !prof !93

.noexc.i.i.i:                                     ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24
          to label %.noexc53 unwind label %bb.n   ; 4 uses

.noexc53:                                         ; preds = %bb.e
  store ptr %i.s, ptr %5, align 8, !tbaa !139, !alias.scope !335
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.o ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.t, ptr %i.u, align 8, !tbaa !140, !alias.scope !335
  %i.v = icmp samesign ugt i64 %i.o, 4
  br i1 %i.v, label %bb.f, label %bb.g, !prof !141

bb.f:                                             ; preds = %.noexc53
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.s, ptr align 4 %i.l, i64 %i.o, i1 false), !noalias !335
  br label %bb.i

bb.g:                                             ; preds = %.noexc53
  %i.w = icmp eq i64 %i.o, 4
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = load i32, ptr %i.l, align 4, !tbaa !117, !noalias !335
  store i32 %i.x, ptr %i.s, align 4, !tbaa !117, !noalias !335
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %.thread1.i
  %i.y = phi ptr [ %i.t, %bb.f ], [ %i.t, %bb.g ], [ %i.t, %bb.h ], [ %i.p, %.thread1.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.y, ptr %i.z, align 8, !tbaa !138, !alias.scope !335
  %i.aa = invoke noundef i32 @_Z20expand_within_rangesRKSt6vectorIjSaIjEERS_IS_IiSaIiEESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.j unwind label %bb.o       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.ab = load ptr, ptr %5, align 8, !tbaa !139   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !140
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #23
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !144 ; 2 uses
  %i.aj = load ptr, ptr %4, align 8, !tbaa !145   ; 3 uses
  %.not128 = icmp eq ptr %i.ai, %i.aj
  br i1 %.not128, label %._crit_edge, label %.lr.ph125

._crit_edge:                                      ; preds = %bb.r, %_ZNSt6vectorIjSaIjEED2Ev.exit
  %.lcssa119 = phi ptr [ %i.ai, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.bk, %bb.r ] ; 2 uses
  %.lcssa = phi ptr [ %i.aj, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.bl, %bb.r ] ; 3 uses
  %.not4.i.i.i = icmp eq ptr %.lcssa, %.lcssa119
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.aq, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i ], [ %.lcssa, %._crit_edge ] ; 3 uses
  %i.ak = load ptr, ptr %.05.i.i.i, align 8, !tbaa !146 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !147
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #23
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i:  ; preds = %bb.l, %.lr.ph.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i54 = icmp eq ptr %i.aq, %.lcssa119
  br i1 %.not.i.i.i54, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !9

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !145
  br label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %._crit_edge
  %i.ar = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %.lcssa, %._crit_edge ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !148
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.aw) #23
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %.loopexit

bb.n:                                             ; preds = %bb.e, %.noexc.i.i.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit56

bb.o:                                             ; preds = %bb.i
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = load ptr, ptr %5, align 8, !tbaa !139   ; 3 uses
  %.not.i.i.i55 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i55, label %_ZNSt6vectorIjSaIjEED2Ev.exit56, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !140
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.az to i64
  %i.be = sub i64 %i.bc, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.be) #23
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit56

_ZNSt6vectorIjSaIjEED2Ev.exit56:                  ; preds = %bb.p, %bb.o, %bb.n
  %.pn48 = phi { ptr, i32 } [ %i.ax, %bb.n ], [ %i.ay, %bb.o ], [ %i.ay, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.t

.lr.ph125:                                        ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.r
  %i.bf = phi ptr [ %i.bl, %bb.r ], [ %i.aj, %_ZNSt6vectorIjSaIjEED2Ev.exit ]
  %.030124 = phi i64 [ %i.bj, %bb.r ], [ 0, %_ZNSt6vectorIjSaIjEED2Ev.exit ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.bf, i64 %.030124
  %i.bh = invoke noundef ptr @_ZNK13ArrayVariable7itemizeERKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %.lr.ph125
  %i.bi = invoke noundef i32 @_ZNK8Variable17output_value_dumpERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(200) %i.bh, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3)
          to label %bb.r unwind label %bb.s       ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.bj = add nuw i64 %.030124, 1                 ; 2 uses
  %i.bk = load ptr, ptr %i.ah, align 8, !tbaa !144 ; 2 uses
  %i.bl = load ptr, ptr %4, align 8, !tbaa !145   ; 3 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = sdiv exact i64 %i.bo, 24
  %i.bq = icmp ult i64 %i.bj, %i.bp
  br i1 %i.bq, label %.lr.ph125, label %._crit_edge, !llvm.loop !326

bb.s:                                             ; preds = %bb.q, %.lr.ph125
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNSt6vectorIjSaIjEED2Ev.exit56
  %.pn50 = phi { ptr, i32 } [ %i.br, %bb.s ], [ %.pn48, %_ZNSt6vectorIjSaIjEED2Ev.exit56 ]
  call void @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.av

_ZNK8Variable10is_virtualEv.exit.thread:          ; preds = %bb.b, %_ZNK8Variable10is_virtualEv.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !65
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !88
  switch i32 %i.bu, label %.loopexit [
    i32 0, label %bb.u
    i32 3, label %.preheader
    i32 2, label %bb.as
  ]

.preheader:                                       ; preds = %_ZNK8Variable10is_virtualEv.exit.thread
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !90
  %i.by = load ptr, ptr %i.bv, align 8, !tbaa !91 ; 2 uses
  %.not127 = icmp eq ptr %i.bx, %i.by
  br i1 %.not127, label %.loopexit, label %.lr.ph123

bb.u:                                             ; preds = %_ZNK8Variable10is_virtualEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @_ZNK8Variable9to_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(200) %0)
end_hunk_3
