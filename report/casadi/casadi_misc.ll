Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/casadi_misc?download=true
inline.NumInlined: 1005
inline.NumDeleted: 431
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev:bb.a
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !41     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !34 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #22
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i:    ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !113

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !41
  br label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !44
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #22
  br label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN6casadi3allERKSt6vectorIbSaIbEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !48   ; 2 uses
  %i.f = icmp eq ptr %i.a, %i.c
  %i.g = icmp eq i32 %i.e, 0
  %.not3.i.not22 = select i1 %i.f, i1 %i.g, i1 false
  br i1 %.not3.i.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt19_Bit_const_iteratorppEv.exit
  %.sroa.7.024 = phi i32 [ %spec.select19, %_ZNSt19_Bit_const_iteratorppEv.exit ], [ 0, %bb.a ] ; 3 uses
  %.sroa.014.023 = phi ptr [ %spec.select, %_ZNSt19_Bit_const_iteratorppEv.exit ], [ %i.a, %bb.a ] ; 2 uses
  %i.h = zext nneg i32 %.sroa.7.024 to i64
  %i.i = shl nuw i64 1, %i.h
  %i.j = load i64, ptr %.sroa.014.023, align 8, !tbaa !20
  %i.k = and i64 %i.j, %i.i
  %.not.not.not = icmp ne i64 %i.k, 0             ; 3 uses
  br i1 %.not.not.not, label %_ZNSt19_Bit_const_iteratorppEv.exit, label %._crit_edge

_ZNSt19_Bit_const_iteratorppEv.exit:              ; preds = %.lr.ph
  %i.l = add i32 %.sroa.7.024, 1
  %i.m = icmp eq i32 %.sroa.7.024, 63             ; 2 uses
  %spec.select.idx = select i1 %i.m, i64 8, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %.sroa.014.023, i64 %spec.select.idx ; 2 uses
  %spec.select19 = select i1 %i.m, i32 0, i32 %i.l ; 2 uses
  %i.n = icmp eq ptr %spec.select, %i.c
  %i.o = icmp eq i32 %spec.select19, %i.e
  %.not3.i.not = select i1 %i.n, i1 %i.o, i1 false
  br i1 %.not3.i.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZNSt19_Bit_const_iteratorppEv.exit, %bb.a
  %.not3.i.not.lcssa = phi i1 [ true, %bb.a ], [ %.not.not.not, %_ZNSt19_Bit_const_iteratorppEv.exit ], [ %.not.not.not, %.lr.ph ]
  ret i1 %.not3.i.not.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN6casadi3anyERKSt6vectorIbSaIbEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !48   ; 2 uses
  %i.f = icmp ne ptr %i.a, %i.c
  %i.g = icmp ne i32 %i.e, 0
  %.not3.i21 = select i1 %i.f, i1 true, i1 %i.g
  br i1 %.not3.i21, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZNSt19_Bit_const_iteratorppEv.exit
  %.sroa.7.023 = phi i32 [ %spec.select20, %_ZNSt19_Bit_const_iteratorppEv.exit ], [ 0, %bb.a ] ; 3 uses
  %.sroa.014.022 = phi ptr [ %spec.select, %_ZNSt19_Bit_const_iteratorppEv.exit ], [ %i.a, %bb.a ] ; 2 uses
  %i.h = zext nneg i32 %.sroa.7.023 to i64
  %i.i = shl nuw i64 1, %i.h
  %i.j = load i64, ptr %.sroa.014.022, align 8, !tbaa !20
  %i.k = and i64 %i.j, %i.i
  %.not.not.not = icmp ne i64 %i.k, 0             ; 3 uses
  br i1 %.not.not.not, label %._crit_edge, label %_ZNSt19_Bit_const_iteratorppEv.exit

_ZNSt19_Bit_const_iteratorppEv.exit:              ; preds = %.lr.ph
  %i.l = add i32 %.sroa.7.023, 1
  %i.m = icmp eq i32 %.sroa.7.023, 63             ; 2 uses
  %spec.select.idx = select i1 %i.m, i64 8, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %.sroa.014.022, i64 %spec.select.idx ; 2 uses
  %spec.select20 = select i1 %i.m, i32 0, i32 %i.l ; 2 uses
  %i.n = icmp ne ptr %spec.select, %i.c
  %i.o = icmp ne i32 %spec.select20, %i.e
  %.not3.i = select i1 %i.n, i1 true, i1 %i.o
  br i1 %.not3.i, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZNSt19_Bit_const_iteratorppEv.exit, %bb.a
  %.not3.i.lcssa = phi i1 [ false, %bb.a ], [ %.not.not.not, %_ZNSt19_Bit_const_iteratorppEv.exit ], [ %.not.not.not, %.lr.ph ]
  ret i1 %.not3.i.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN6casadi8is_rangeERKSt6vectorIxSaIxEExxx(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = sub nsw i64 %2, %1                       ; 2 uses
  %i.b = sdiv i64 %i.a, %3
  %i.c = srem i64 %i.a, %3
  %i.d = icmp ne i64 %i.c, 0
  %i.e = zext i1 %i.d to i64
  %i.f = add nsw i64 %i.b, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !30   ; 3 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !31     ; 3 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 3
  %.not = icmp eq i64 %i.m, %i.f
  br i1 %.not, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.a
  %.not2728 = icmp eq ptr %i.i, %i.h
  br i1 %.not2728, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.030 = phi i64 [ %i.o, %.lr.ph ], [ %1, %.preheader ] ; 2 uses
  %.sroa.024.029 = phi ptr [ %i.p, %.lr.ph ], [ %i.i, %.preheader ] ; 2 uses
  %i.n = load i64, ptr %.sroa.024.029, align 8, !tbaa !38
  %.not23 = icmp eq i64 %i.n, %.030               ; 2 uses
  %i.o = add nsw i64 %.030, %3
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.024.029, i64 8 ; 2 uses
  %.not27 = icmp ne ptr %i.p, %i.h
  %or.cond.not = select i1 %.not23, i1 %.not27, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.preheader, %bb.a
  %.4 = phi i1 [ false, %bb.a ], [ true, %.preheader ], [ %.not23, %.lr.ph ]
  ret i1 %.4
}

; Function Attrs: mustprogress uwtable
define void @_ZN6casadi5rangeExxxx(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.8") align 8 captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.speculated17 = tail call i64 @llvm.smin.i64(i64 %4, i64 %1) ; 4 uses
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %4, i64 %2)
  %i.a = sub nsw i64 %.sroa.speculated, %.sroa.speculated17 ; 2 uses
  %i.b = sdiv i64 %i.a, %3
  %i.c = srem i64 %i.a, %3
  %i.d = icmp ne i64 %i.c, 0
  %i.e = zext i1 %i.d to i64
  %i.f = add nsw i64 %i.b, %i.e                   ; 5 uses
  %i.g = icmp ugt i64 %i.f, 1152921504606846975
  br i1 %i.g, label %.noexc, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #21
  unreachable

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %.not.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i.i, label %.thread, label %.noexc9

.thread:                                          ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %._crit_edge

.noexc9:                                          ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i
  %i.i = shl nuw nsw i64 %i.f, 3
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #23 ; 8 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !49
  store i64 0, ptr %i.j, align 8, !tbaa !38
  %i.m = getelementptr i8, ptr %i.j, i64 8        ; 3 uses
  %i.n = add nsw i64 %i.f, -1                     ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.lr.ph.preheader, label %bb.b

bb.b:                                             ; preds = %.noexc9
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.n, 3   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.m, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !38
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx.i.i.i.i.i.i.i
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.noexc9, %bb.b
  %.sink = phi ptr [ %i.p, %bb.b ], [ %i.m, %.noexc9 ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.q, align 8, !tbaa !30
  %5 = ptrtoaddr ptr %.sink to i64
  %i.r = ptrtoaddr ptr %i.j to i64
  %i.s = add i64 %5, -8
  %i.t = sub i64 %i.s, %i.r                       ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 24
  br i1 %min.iters.check, label %.lr.ph.preheader42, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.v, 4611686018427387900      ; 4 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %3, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.w = mul i64 %n.vec, %3
  %i.x = add i64 %.sroa.speculated17, %i.w
  %i.y = shl i64 %n.vec, 3
  %i.z = getelementptr i8, ptr %i.j, i64 %i.y
  %i.aa = shl <2 x i64> %broadcast.splat, splat (i64 1) ; 3 uses
  %broadcast.splatinsert38 = insertelement <2 x i64> poison, i64 %.sroa.speculated17, i64 0
  %broadcast.splat39 = shufflevector <2 x i64> %broadcast.splatinsert38, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ab = mul nuw nsw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %induction = add nsw <2 x i64> %broadcast.splat39, %i.ab
  %invariant.op = add <2 x i64> %i.aa, %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next.reass, %vector.body ] ; 3 uses
  %step.add = add nsw <2 x i64> %vec.ind, %i.aa
  %i.ac = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.ac ; 2 uses
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !38
  store <2 x i64> %step.add, ptr %i.ad, align 8, !tbaa !38
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next.reass = add <2 x i64> %vec.ind, %invariant.op
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !114

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader42

.lr.ph.preheader42:                               ; preds = %.lr.ph.preheader, %middle.block
  %.029.ph = phi i64 [ %.sroa.speculated17, %.lr.ph.preheader ], [ %i.x, %middle.block ]
  %.sroa.010.028.ph = phi ptr [ %i.j, %.lr.ph.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %.thread
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader42, %.lr.ph
  %.029 = phi i64 [ %i.af, %.lr.ph ], [ %.029.ph, %.lr.ph.preheader42 ] ; 2 uses
  %.sroa.010.028 = phi ptr [ %i.ag, %.lr.ph ], [ %.sroa.010.028.ph, %.lr.ph.preheader42 ] ; 2 uses
  store i64 %.029, ptr %.sroa.010.028, align 8, !tbaa !38
  %i.af = add nsw i64 %.029, %3
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.010.028, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ag, %.sink
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !115
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN6casadi17is_equally_spacedERKSt6vectorIdSaIdEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !119    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 3                   ; 2 uses
  %i.h = icmp ult i64 %i.g, 3
  br i1 %i.h, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.j = load double, ptr %i.i, align 8, !tbaa !121
  %i.k = load double, ptr %i.c, align 8, !tbaa !121 ; 2 uses
  %i.l = fsub double %i.j, %i.k
  %i.m = fmul double %i.l, f0x3D06849B86A12B9B
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = load double, ptr %i.n, align 8, !tbaa !121
  %i.p = fsub double %i.o, %i.k
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.01517 = phi i64 [ 2, %bb.b ], [ %i.y, %bb.c ] ; 2 uses
  %i.q = getelementptr [8 x i8], ptr %i.c, i64 %.01517 ; 2 uses
  %i.r = load double, ptr %i.q, align 8, !tbaa !121
  %i.s = getelementptr i8, ptr %i.q, i64 -8
  %i.t = load double, ptr %i.s, align 8, !tbaa !121
  %i.u = fsub double %i.r, %i.t
  %i.v = fsub double %i.u, %i.p
  %i.w = tail call double @llvm.fabs.f64(double %i.v)
  %i.x = fcmp ule double %i.w, %i.m               ; 2 uses
  %i.y = add nuw i64 %.01517, 1                   ; 2 uses
  %exitcond.not = icmp ne i64 %i.y, %i.g
  %or.cond.not = select i1 %i.x, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %bb.c, label %.critedge, !llvm.loop !116

.critedge:                                        ; preds = %bb.c, %bb.a
  %.2 = phi i1 [ true, %bb.a ], [ %i.x, %bb.c ]
  ret i1 %.2
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #6

; Function Attrs: mustprogress uwtable
define void @_ZN6casadi5rangeEx(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.8") align 8 captures(none) %0, i64 noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  %i.a = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.a, label %.noexc.i, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i:                                         ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #21, !noalias !126
  unreachable

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not.i.i.i.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i.i.i.i, label %.thread.i, label %.noexc9.i

.thread.i:                                        ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !alias.scope !126
  br label %_ZN6casadi5rangeExxxx.exit

.noexc9.i:                                        ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.c = shl nuw nsw i64 %1, 3
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #23, !noalias !126 ; 8 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !31, !alias.scope !126
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !49, !alias.scope !126
  store i64 0, ptr %i.d, align 8, !tbaa !38, !noalias !126
  %i.g = getelementptr i8, ptr %i.d, i64 8        ; 3 uses
  %i.h = add nsw i64 %1, -1                       ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.preheader.i, label %bb.b

bb.b:                                             ; preds = %.noexc9.i
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.h, 3 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.g, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !38, !noalias !126
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i.i.i.i.i.i.i.i
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.noexc9.i, %bb.b
  %storemerge = phi ptr [ %i.j, %bb.b ], [ %i.g, %.noexc9.i ] ; 3 uses
  store ptr %storemerge, ptr %i.b, align 8, !tbaa !30, !alias.scope !126
  %i.k = ptrtoaddr ptr %storemerge to i64
  %2 = ptrtoaddr ptr %i.d to i64
  %i.l = add i64 %i.k, -8
  %i.m = sub i64 %i.l, %2                         ; 2 uses
  %i.n = lshr i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.m, 24
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.o, 4611686018427387900      ; 4 uses
  %i.p = shl i64 %n.vec, 3
  %i.q = getelementptr i8, ptr %i.d, i64 %i.p
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.r = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.r ; 2 uses
  %i.s = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !38, !noalias !126
  store <2 x i64> %step.add, ptr %i.s, align 8, !tbaa !38, !noalias !126
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !124

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %_ZN6casadi5rangeExxxx.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.029.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.sroa.010.028.i.ph = phi ptr [ %i.d, %.lr.ph.preheader.i ], [ %i.q, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.029.i = phi i64 [ %i.u, %.lr.ph.i ], [ %.029.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.010.028.i = phi ptr [ %i.v, %.lr.ph.i ], [ %.sroa.010.028.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  store i64 %.029.i, ptr %.sroa.010.028.i, align 8, !tbaa !38, !noalias !126
  %i.u = add nuw nsw i64 %.029.i, 1
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.010.028.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.v, %storemerge
  br i1 %.not.i, label %_ZN6casadi5rangeExxxx.exit, label %.lr.ph.i, !llvm.loop !125

_ZN6casadi5rangeExxxx.exit:                       ; preds = %.lr.ph.i, %middle.block, %.thread.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6casadi10complementERKSt6vectorIxSaIxEEx(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.8") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::allocator", align 1    ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator", align 1   ; 3 uses
  %12 = alloca %"class.std::vector", align 8      ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !36     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36   ; 5 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_ZN6casadi8in_rangeIxEEbRKSt6vectorIT_SaIS2_EEx.exit.thread77, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %.not9.i.i.i.i = icmp eq ptr %i.e, %i.c
  %i.f = load i64, ptr %i.a, align 8, !tbaa !38   ; 4 uses
  br i1 %.not9.i.i.i.i, label %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEET_S8_S8_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %i.g = phi i64 [ %i.l, %.lr.ph.i.i.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.h = phi ptr [ %i.k, %.lr.ph.i.i.i.i ], [ %i.e, %bb.b ] ; 3 uses
  %.sroa.02.010.i.i.i.i = phi ptr [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.a, %bb.b ]
  %i.i = load i64, ptr %i.h, align 8, !tbaa !38   ; 2 uses
  %i.j = icmp slt i64 %i.g, %i.i
  %spec.select.i.i.i.i = select i1 %i.j, ptr %i.h, ptr %.sroa.02.010.i.i.i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.c
  %i.l = tail call i64 @llvm.smax.i64(i64 %i.g, i64 %i.i)
  br i1 %.not.i.i.i.i, label %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEET_S8_S8_.exit.thread.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEET_S8_S8_.exit.i.i: ; preds = %bb.b
  %.not.i.i = icmp slt i64 %i.f, %2
  br i1 %.not.i.i, label %_ZN6casadi8in_rangeIxEEbRKSt6vectorIT_SaIS2_EEx.exit, label %_ZN6casadi8in_rangeIxEEbRKSt6vectorIT_SaIS2_EEx.exit.thread

_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEET_S8_S8_.exit.thread.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.m = load i64, ptr %spec.select.i.i.i.i, align 8, !tbaa !38
  %.not23.i.i = icmp slt i64 %i.m, %2
  br i1 %.not23.i.i, label %.lr.ph.i.i16.i.i, label %_ZN6casadi8in_rangeIxEEbRKSt6vectorIT_SaIS2_EEx.exit.thread

.lr.ph.i.i16.i.i:                                 ; preds = %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEET_S8_S8_.exit.thread.i.i, %.lr.ph.i.i16.i.i
  %i.n = phi i64 [ %i.s, %.lr.ph.i.i16.i.i ], [ %i.f, %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEET_S8_S8_.exit.thread.i.i ] ; 2 uses
  %i.o = phi ptr [ %i.r, %.lr.ph.i.i16.i.i ], [ %i.e, %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEET_S8_S8_.exit.thread.i.i ] ; 3 uses
  %.sroa.02.010.i.i17.i.i = phi ptr [ %spec.select.i.i18.i.i, %.lr.ph.i.i16.i.i ], [ %i.a, %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEET_S8_S8_.exit.thread.i.i ]
  %i.p = load i64, ptr %i.o, align 8, !tbaa !38   ; 2 uses
  %i.q = icmp slt i64 %i.p, %i.n
  %spec.select.i.i18.i.i = select i1 %i.q, ptr %i.o, ptr %.sroa.02.010.i.i17.i.i ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %.not.i.i19.i.i = icmp eq ptr %i.r, %i.c
  %i.s = tail call i64 @llvm.smin.i64(i64 %i.p, i64 %i.n)
  br i1 %.not.i.i19.i.i, label %_ZSt11min_elementIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEET_S8_S8_.exit.loopexit.i.i, label %.lr.ph.i.i16.i.i, !llvm.loop !2

_ZSt11min_elementIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEET_S8_S8_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i16.i.i
  %.pre.i.i = load i64, ptr %spec.select.i.i18.i.i, align 8, !tbaa !38
  br label %_ZN6casadi8in_rangeIxEEbRKSt6vectorIT_SaIS2_EEx.exit

_ZN6casadi8in_rangeIxEEbRKSt6vectorIT_SaIS2_EEx.exit: ; preds = %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEET_S8_S8_.exit.i.i, %_ZSt11min_elementIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEET_S8_S8_.exit.loopexit.i.i
  %i.t = phi i64 [ %i.f, %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEET_S8_S8_.exit.i.i ], [ %.pre.i.i, %_ZSt11min_elementIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEET_S8_S8_.exit.loopexit.i.i ]
  %i.u = icmp sgt i64 %i.t, -1
  br i1 %i.u, label %_ZN6casadi8in_rangeIxEEbRKSt6vectorIT_SaIS2_EEx.exit.thread77, label %_ZN6casadi8in_rangeIxEEbRKSt6vectorIT_SaIS2_EEx.exit.thread

_ZN6casadi8in_rangeIxEEbRKSt6vectorIT_SaIS2_EEx.exit.thread: ; preds = %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEET_S8_S8_.exit.thread.i.i, %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEET_S8_S8_.exit.i.i, %_ZN6casadi8in_rangeIxEEbRKSt6vectorIT_SaIS2_EEx.exit
  %i.v = tail call ptr @__cxa_allocate_exception(i64 40) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.thread

bb.c:                                             ; preds = %_ZN6casadi8in_rangeIxEEbRKSt6vectorIT_SaIS2_EEx.exit.thread
  invoke void @_ZN6casadi9trim_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.1)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull @.str.7, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false), !alias.scope !132
  invoke void @_ZN6casadi6fmtstrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN6casadi15CasadiExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTIN6casadi15CasadiExceptionE, ptr nonnull @_ZN6casadi15CasadiExceptionD2Ev) #21
          to label %bb.ac unwind label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.thread: ; preds = %_ZN6casadi8in_rangeIxEEbRKSt6vectorIT_SaIS2_EEx.exit.thread
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.k:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

bb.l:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

bb.m:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

bb.n:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

bb.o:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.p:                                             ; preds = %bb.j, %bb.i
  %.012 = phi i1 [ false, %bb.j ], [ true, %bb.i ] ; 2 uses
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6casadi18invert_permutationERKSt6vectorIxSaIxEE:bb.a
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ck, 3  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.cj, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !38
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.w

bb.w:                                             ; preds = %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc55, %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i
  %i.cn = phi ptr [ null, %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i ], [ %i.cg, %.noexc55 ], [ %i.cg, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 5 uses
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIxSaIxEEC2EmRKS0_.exit.thread.i ], [ %i.cj, %.noexc55 ], [ %i.cm, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ]
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.co, align 8, !tbaa !30
  %i.cp = load ptr, ptr %i.b, align 8, !tbaa !30  ; 2 uses
  %i.cq = load ptr, ptr %1, align 8, !tbaa !31    ; 7 uses
  %.not = icmp eq ptr %i.cp, %i.cq
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.w
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = ashr exact i64 %i.ct, 3                 ; 3 uses
  %xtraiter = and i64 %i.cu, 3                    ; 3 uses
  %i.cv = icmp ult i64 %i.cu, 4
  br i1 %i.cv, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.cu, -4
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.lr.ph.new
  %.070 = phi i64 [ 0, %.lr.ph.new ], [ %i.dl, %bb.x ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.x ]
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %.070
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !38
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.cx
  store i64 %.070, ptr %i.cy, align 8, !tbaa !38
  %i.cz = or disjoint i64 %.070, 1                ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cz
  %i.db = load i64, ptr %i.da, align 8, !tbaa !38
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.db
  store i64 %i.cz, ptr %i.dc, align 8, !tbaa !38
  %i.dd = or disjoint i64 %.070, 2                ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.dd
  %i.df = load i64, ptr %i.de, align 8, !tbaa !38
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.df
  store i64 %i.dd, ptr %i.dg, align 8, !tbaa !38
  %i.dh = or disjoint i64 %.070, 3                ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.dh
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !38
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.dj
  store i64 %i.dh, ptr %i.dk, align 8, !tbaa !38
  %i.dl = add nuw nsw i64 %.070, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.x, !llvm.loop !148

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.x
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.070.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.dl, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod90 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod90)
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.epil.preheader
  %.070.epil = phi i64 [ %.070.epil.init, %.epil.preheader ], [ %i.dp, %bb.y ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.y ]
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %.070.epil
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !38
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.dn
  store i64 %.070.epil, ptr %i.do, align 8, !tbaa !38
  %i.dp = add nuw nsw i64 %.070.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.y, !llvm.loop !149

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.y, %bb.w
  ret void

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %bb.u
  %.pn35 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52 ], [ %.pn.pn.pn.pn.pn.pn.pn58, %bb.u ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ]
  resume { ptr, i32 } %.pn35

bb.aa:                                            ; preds = %bb.n
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6casadi22tensor_permute_mappingERKSt6vectorIxSaIxEES4_(ptr dead_on_unwind noalias nofree writable sret(%"class.std::vector.8") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !31     ; 11 uses
  %.not.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i, label %.thread175, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 3 uses
  %xtraiter = and i64 %i.g, 7                     ; 3 uses
  %i.h = icmp ult i64 %i.g, 8
  br i1 %i.h, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.g, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %.08.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %i.an, %.lr.ph.i ] ; 9 uses
  %.067.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %i.am, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.08.i
  %i.j = load i64, ptr %i.i, align 8, !tbaa !38
  %i.k = mul nsw i64 %i.j, %.067.i
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.08.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !38
  %i.o = mul nsw i64 %i.n, %i.k
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.08.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !38
  %i.s = mul nsw i64 %i.r, %i.o
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.08.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !38
  %i.w = mul nsw i64 %i.v, %i.s
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.08.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load i64, ptr %i.y, align 8, !tbaa !38
  %i.aa = mul nsw i64 %i.z, %i.w
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.08.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !38
  %i.ae = mul nsw i64 %i.ad, %i.aa
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.08.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !38
  %i.ai = mul nsw i64 %i.ah, %i.ae
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.08.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !38
  %i.am = mul nsw i64 %i.al, %i.ai                ; 3 uses
  %i.an = add nuw nsw i64 %.08.i, 8               ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit.unr-lcssa, label %.lr.ph.i, !llvm.loop !151

_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit.unr-lcssa, %.lr.ph.preheader.i
  %.08.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.an, %_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit.unr-lcssa ]
  %.067.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %i.am, %_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit.unr-lcssa ]
  %lcmp.mod388 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod388)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i64 [ %i.ar, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.067.i.epil = phi i64 [ %i.aq, %.lr.ph.i.epil ], [ %.067.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.08.i.epil
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !38
  %i.aq = mul nsw i64 %i.ap, %.067.i.epil         ; 2 uses
  %i.ar = add nuw nsw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit, label %.lr.ph.i.epil, !llvm.loop !152

_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit: ; preds = %.lr.ph.i.epil, %_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit.unr-lcssa
  %.lcssa386 = phi i64 [ %i.am, %_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit.unr-lcssa ], [ %i.aq, %.lr.ph.i.epil ] ; 7 uses
  %i.as = icmp eq i64 %.lcssa386, 0
  br i1 %i.as, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %_ZN6casadi5rangeEx.exit

bb.c:                                             ; preds = %_ZN6casadi7productIxEET_RKSt6vectorIS1_SaIS1_EE.exit
  %i.at = icmp eq i64 %i.f, 8
  br i1 %i.at, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  %i.au = icmp ugt i64 %.lcssa386, 1152921504606846975
  br i1 %i.au, label %.noexc.i.i, label %.noexc9.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #21, !noalias !173
  unreachable

.noexc9.i.i:                                      ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = shl nuw nsw i64 %.lcssa386, 3
  %i.ax = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #23, !noalias !173 ; 8 uses
  store ptr %i.ax, ptr %0, align 8, !tbaa !31, !alias.scope !173
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.lcssa386
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !49, !alias.scope !173
  store i64 0, ptr %i.ax, align 8, !tbaa !38, !noalias !173
  %i.ba = getelementptr i8, ptr %i.ax, i64 8      ; 3 uses
  %i.bb = add nsw i64 %.lcssa386, -1              ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %.lr.ph.preheader.i.i, label %bb.e

bb.e:                                             ; preds = %.noexc9.i.i
  %.idx.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bb, 3 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ba, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !38, !noalias !173
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.idx.i.i.i.i.i.i.i.i.i
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.e, %.noexc9.i.i
  %storemerge.i = phi ptr [ %i.bd, %bb.e ], [ %i.ba, %.noexc9.i.i ] ; 3 uses
  store ptr %storemerge.i, ptr %i.av, align 8, !tbaa !30, !alias.scope !173
  %i.be = ptrtoaddr ptr %storemerge.i to i64
  %3 = ptrtoaddr ptr %i.ax to i64
  %i.bf = add i64 %i.be, -8
  %i.bg = sub i64 %i.bf, %3                       ; 2 uses
  %i.bh = lshr i64 %i.bg, 3
  %i.bi = add nuw nsw i64 %i.bh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bg, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %i.bi, 4611686018427387900     ; 4 uses
  %i.bj = shl i64 %n.vec, 3
  %i.bk = getelementptr i8, ptr %i.ax, i64 %i.bj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.bl = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ax, i64 %i.bl ; 2 uses
  %i.bm = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !38, !noalias !173
  store <2 x i64> %step.add, ptr %i.bm, align 8, !tbaa !38, !noalias !173
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !157

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bi, %n.vec
  br i1 %cmp.n, label %_ZN6casadi5rangeEx.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %.029.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ]
  %.sroa.010.028.i.i.ph = phi ptr [ %i.ax, %.lr.ph.preheader.i.i ], [ %i.bk, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.029.i.i = phi i64 [ %i.bo, %.lr.ph.i.i ], [ %.029.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.010.028.i.i = phi ptr [ %i.bp, %.lr.ph.i.i ], [ %.sroa.010.028.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  store i64 %.029.i.i, ptr %.sroa.010.028.i.i, align 8, !tbaa !38, !noalias !173
  %i.bo = add nuw nsw i64 %.029.i.i, 1
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.010.028.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bp, %storemerge.i
  br i1 %.not.i.i, label %_ZN6casadi5rangeEx.exit, label %.lr.ph.i.i, !llvm.loop !158

bb.f:                                             ; preds = %bb.c
  %i.bq = icmp ugt i64 %.lcssa386, 1152921504606846975
  br i1 %i.bq, label %.noexc, label %.thread175

.noexc:                                           ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #21
  unreachable

.thread175:                                       ; preds = %bb.a, %bb.f
  %.in = phi i64 [ %i.f, %bb.f ], [ 0, %bb.a ]    ; 8 uses
  %.06.lcssa.i168170177 = phi i64 [ %.lcssa386, %bb.f ], [ 1, %bb.a ] ; 4 uses
  %i.br = ashr exact i64 %.in, 3                  ; 8 uses
  %i.bs = shl nuw nsw i64 %.06.lcssa.i168170177, 3
  %i.bt = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bs) #23 ; 7 uses
  store ptr %i.bt, ptr %0, align 8, !tbaa !31
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.06.lcssa.i168170177
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !49
  store i64 0, ptr %i.bt, align 8, !tbaa !38
  %i.bw = getelementptr i8, ptr %i.bt, i64 8      ; 3 uses
  %i.bx = add nsw i64 %.06.lcssa.i168170177, -1   ; 2 uses
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %bb.g, label %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.thread175
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bx, 3  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bw, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !38
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.g

bb.g:                                             ; preds = %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.thread175
  %.0.i.i.i.i.i = phi ptr [ %i.bz, %_ZSt6fill_nIPxmxET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.bw, %.thread175 ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.ca, align 8, !tbaa !30
  %i.cb = icmp eq i64 %.in, 0
  br i1 %i.cb, label %_ZN6casadi5rangeEx.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cc = add nsw i64 %i.br, 1                    ; 4 uses
  %i.cd = icmp ugt i64 %i.cc, 1152921504606846975
  br i1 %i.cd, label %bb.i, label %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i83

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #21
          to label %.noexc86 unwind label %bb.m

.noexc86:                                         ; preds = %bb.i
  unreachable

_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i83: ; preds = %bb.h
  %.not.i.i.i.i84 = icmp eq i64 %i.cc, 0
  br i1 %.not.i.i.i.i84, label %_ZNSt6vectorIxSaIxEEC2EmRKxRKS0_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i83
  %i.ce = shl nuw nsw i64 %i.cc, 3                ; 2 uses
  %i.cf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ce) #23
          to label %.noexc87 unwind label %bb.m   ; 5 uses

.noexc87:                                         ; preds = %bb.j
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ce
  %i.ch = lshr i64 %.in, 3
  %i.ci = add nuw nsw i64 %i.ch, 1
  %xtraiter389 = and i64 %i.ci, 7                 ; 2 uses
  %lcmp.mod390.not = icmp eq i64 %xtraiter389, 0
  br i1 %lcmp.mod390.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.noexc87, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.06.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.cf, %.noexc87 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.noexc87 ]
  store i64 1, ptr %.06.i.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !38
  %i.cj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter389
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !159

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.noexc87
  %.06.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.cf, %.noexc87 ], [ %i.cj, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.ck = icmp ult i64 %.in, 56
  br i1 %i.ck, label %_ZNSt6vectorIxSaIxEEC2EmRKxRKS0_.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  store i64 1, ptr %.06.i.i.i.i.i.i.i.i.i, align 8, !tbaa !38
  %i.cl = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 8
  store i64 1, ptr %i.cl, align 8, !tbaa !38
  %i.cm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 16
  store i64 1, ptr %i.cm, align 8, !tbaa !38
  %i.cn = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 24
  store i64 1, ptr %i.cn, align 8, !tbaa !38
  %i.co = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 32
  store i64 1, ptr %i.co, align 8, !tbaa !38
  %i.cp = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 40
  store i64 1, ptr %i.cp, align 8, !tbaa !38
  %i.cq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 48
  store i64 1, ptr %i.cq, align 8, !tbaa !38
  %i.cr = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 56
  store i64 1, ptr %i.cr, align 8, !tbaa !38
  %i.cs = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.7 = icmp eq ptr %i.cs, %i.cg
  br i1 %.not.i.i.i.i.i.i.i.i.i.7, label %_ZNSt6vectorIxSaIxEEC2EmRKxRKS0_.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !160

_ZNSt6vectorIxSaIxEEC2EmRKxRKS0_.exit.loopexit:   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cc
  %i.cu = ptrtoint ptr %i.ct to i64
  br label %_ZNSt6vectorIxSaIxEEC2EmRKxRKS0_.exit

_ZNSt6vectorIxSaIxEEC2EmRKxRKS0_.exit:            ; preds = %_ZNSt6vectorIxSaIxEEC2EmRKxRKS0_.exit.loopexit, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i83
  %.sroa.13164.0 = phi i64 [ 0, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i83 ], [ %i.cu, %_ZNSt6vectorIxSaIxEEC2EmRKxRKS0_.exit.loopexit ] ; 2 uses
  %.sroa.0158.0 = phi ptr [ null, %_ZNSt6vectorIxSaIxEE17_S_check_init_lenEmRKS0_.exit.i83 ], [ %i.cf, %_ZNSt6vectorIxSaIxEEC2EmRKxRKS0_.exit.loopexit ] ; 16 uses
  %i.cv = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.cw = load ptr, ptr %1, align 8, !tbaa !31    ; 7 uses
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = ashr exact i64 %i.cz, 3                 ; 3 uses
  %i.db = icmp ugt i64 %i.da, 1
  br i1 %i.db, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIxSaIxEEC2EmRKxRKS0_.exit
  %.pre = load i64, ptr %.sroa.0158.0, align 8, !tbaa !38 ; 2 uses
  %i.dc = add nsw i64 %i.da, -1                   ; 2 uses
  %i.dd = add nsw i64 %i.da, -2
  %xtraiter391 = and i64 %i.dc, 3                 ; 3 uses
  %i.de = icmp ult i64 %i.dd, 3
  br i1 %i.de, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter395 = and i64 %i.dc, -4
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod393.not = icmp eq i64 %xtraiter391, 0
  br i1 %lcmp.mod393.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi i64 [ %.pre, %.lr.ph.preheader ], [ %i.ey, %._crit_edge.loopexit.unr-lcssa ]
  %.065202.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %i.fa, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod394 = icmp ne i64 %xtraiter391, 0
  tail call void @llvm.assume(i1 %lcmp.mod394)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %i.df = phi i64 [ %i.dj, %.lr.ph.epil ], [ %.epil.init, %.lr.ph.epil.preheader ]
  %.065202.epil = phi i64 [ %i.dl, %.lr.ph.epil ], [ %.065202.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter392 = phi i64 [ %epil.iter392.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.dg = getelementptr [8 x i8], ptr %i.cw, i64 %.065202.epil
  %i.dh = getelementptr i8, ptr %i.dg, i64 -8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !38
  %i.dj = mul nsw i64 %i.di, %i.df                ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0158.0, i64 %.065202.epil
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !38
  %i.dl = add nuw nsw i64 %.065202.epil, 1
  %epil.iter392.next = add i64 %epil.iter392, 1   ; 2 uses
  %epil.iter392.cmp.not = icmp eq i64 %epil.iter392.next, %xtraiter391
  br i1 %epil.iter392.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !161
end_hunk_1
