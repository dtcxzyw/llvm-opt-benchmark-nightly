Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/expr?download=true
inline.NumInlined: 628
inline.NumDeleted: 249
begin_hunk_0_@_ZN4lean8mk_arrowERKNS_4exprES2_:bb.a
  br i1 %.not.i.i.i.i10.i, label %_ZN4lean5mk_piERKNS_4nameERKNS_4exprES5_NS_11binder_infoE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.u = atomicrmw add ptr %i.p, i32 -1 monotonic, align 4, !noalias !81 ; 0 uses
  %.pre.i11.i = load ptr, ptr %2, align 8, !tbaa !13, !noalias !81
  br label %_ZN4lean5mk_piERKNS_4nameERKNS_4exprES5_NS_11binder_infoE.exit

_ZN4lean5mk_piERKNS_4nameERKNS_4exprES5_NS_11binder_infoE.exit: ; preds = %_ZNK4lean10object_ref10to_obj_argEv.exit7.i, %bb.k, %bb.l, %bb.m
  %i.v = phi ptr [ %i.p, %_ZNK4lean10object_ref10to_obj_argEv.exit7.i ], [ %i.p, %bb.k ], [ %i.p, %bb.l ], [ %.pre.i11.i, %bb.m ]
  %i.w = tail call ptr @lean_expr_mk_forall(ptr noundef %i.h, ptr noundef %i.o, ptr noundef %i.v, i8 noundef zeroext 0), !noalias !81
  store ptr %i.w, ptr %0, align 8, !tbaa !13, !alias.scope !81
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4lean6mk_letERKNS_4nameERKNS_4exprES5_S5_b(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.lean::expr") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !13     ; 7 uses
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = and i64 %i.b, 1
  %.not.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i, label %bb.b, label %_ZNK4lean10object_ref10to_obj_argEv.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i.i = load i32, ptr %i.a, align 4, !tbaa !15 ; 3 uses
  %i.d = icmp sgt i32 %.val.i.i.i.i, 0
  br i1 %i.d, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw i32 %.val.i.i.i.i, 1
  store i32 %i.e, ptr %i.a, align 4, !tbaa !15
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i.i = icmp eq i32 %.val.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_ZNK4lean10object_ref10to_obj_argEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = atomicrmw add ptr %i.a, i32 -1 monotonic, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !13
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit

_ZNK4lean10object_ref10to_obj_argEv.exit:         ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %i.g = phi ptr [ %i.a, %bb.a ], [ %i.a, %bb.c ], [ %i.a, %bb.d ], [ %.pre.i, %bb.e ]
  %i.h = load ptr, ptr %2, align 8, !tbaa !13     ; 7 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = and i64 %i.i, 1
  %.not.i.i.i4 = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i4, label %bb.f, label %_ZNK4lean10object_ref10to_obj_argEv.exit8

bb.f:                                             ; preds = %_ZNK4lean10object_ref10to_obj_argEv.exit
  %.val.i.i.i.i5 = load i32, ptr %i.h, align 4, !tbaa !15 ; 3 uses
  %i.k = icmp sgt i32 %.val.i.i.i.i5, 0
  br i1 %i.k, label %bb.g, label %bb.h, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.l = add nuw i32 %.val.i.i.i.i5, 1
  store i32 %i.l, ptr %i.h, align 4, !tbaa !15
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit8

bb.h:                                             ; preds = %bb.f
  %.not.i.i.i.i6 = icmp eq i32 %.val.i.i.i.i5, 0
  br i1 %.not.i.i.i.i6, label %_ZNK4lean10object_ref10to_obj_argEv.exit8, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = atomicrmw add ptr %i.h, i32 -1 monotonic, align 4 ; 0 uses
  %.pre.i7 = load ptr, ptr %2, align 8, !tbaa !13
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit8

_ZNK4lean10object_ref10to_obj_argEv.exit8:        ; preds = %_ZNK4lean10object_ref10to_obj_argEv.exit, %bb.g, %bb.h, %bb.i
  %i.n = phi ptr [ %i.h, %_ZNK4lean10object_ref10to_obj_argEv.exit ], [ %i.h, %bb.g ], [ %i.h, %bb.h ], [ %.pre.i7, %bb.i ]
  %i.o = load ptr, ptr %3, align 8, !tbaa !13     ; 7 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = and i64 %i.p, 1
  %.not.i.i.i9 = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i9, label %bb.j, label %_ZNK4lean10object_ref10to_obj_argEv.exit13

bb.j:                                             ; preds = %_ZNK4lean10object_ref10to_obj_argEv.exit8
  %.val.i.i.i.i10 = load i32, ptr %i.o, align 4, !tbaa !15 ; 3 uses
  %i.r = icmp sgt i32 %.val.i.i.i.i10, 0
  br i1 %i.r, label %bb.k, label %bb.l, !prof !16

bb.k:                                             ; preds = %bb.j
  %i.s = add nuw i32 %.val.i.i.i.i10, 1
  store i32 %i.s, ptr %i.o, align 4, !tbaa !15
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit13

bb.l:                                             ; preds = %bb.j
  %.not.i.i.i.i11 = icmp eq i32 %.val.i.i.i.i10, 0
  br i1 %.not.i.i.i.i11, label %_ZNK4lean10object_ref10to_obj_argEv.exit13, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = atomicrmw add ptr %i.o, i32 -1 monotonic, align 4 ; 0 uses
  %.pre.i12 = load ptr, ptr %3, align 8, !tbaa !13
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit13

_ZNK4lean10object_ref10to_obj_argEv.exit13:       ; preds = %_ZNK4lean10object_ref10to_obj_argEv.exit8, %bb.k, %bb.l, %bb.m
  %i.u = phi ptr [ %i.o, %_ZNK4lean10object_ref10to_obj_argEv.exit8 ], [ %i.o, %bb.k ], [ %i.o, %bb.l ], [ %.pre.i12, %bb.m ]
  %i.v = load ptr, ptr %4, align 8, !tbaa !13     ; 7 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = and i64 %i.w, 1
  %.not.i.i.i14 = icmp eq i64 %i.x, 0
  br i1 %.not.i.i.i14, label %bb.n, label %_ZNK4lean10object_ref10to_obj_argEv.exit18

bb.n:                                             ; preds = %_ZNK4lean10object_ref10to_obj_argEv.exit13
  %.val.i.i.i.i15 = load i32, ptr %i.v, align 4, !tbaa !15 ; 3 uses
  %i.y = icmp sgt i32 %.val.i.i.i.i15, 0
  br i1 %i.y, label %bb.o, label %bb.p, !prof !16

bb.o:                                             ; preds = %bb.n
  %i.z = add nuw i32 %.val.i.i.i.i15, 1
  store i32 %i.z, ptr %i.v, align 4, !tbaa !15
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit18

bb.p:                                             ; preds = %bb.n
  %.not.i.i.i.i16 = icmp eq i32 %.val.i.i.i.i15, 0
  br i1 %.not.i.i.i.i16, label %_ZNK4lean10object_ref10to_obj_argEv.exit18, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aa = atomicrmw add ptr %i.v, i32 -1 monotonic, align 4 ; 0 uses
  %.pre.i17 = load ptr, ptr %4, align 8, !tbaa !13
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit18

_ZNK4lean10object_ref10to_obj_argEv.exit18:       ; preds = %_ZNK4lean10object_ref10to_obj_argEv.exit13, %bb.o, %bb.p, %bb.q
  %i.ab = phi ptr [ %i.v, %_ZNK4lean10object_ref10to_obj_argEv.exit13 ], [ %i.v, %bb.o ], [ %i.v, %bb.p ], [ %.pre.i17, %bb.q ]
  %i.ac = zext i1 %5 to i8
  %i.ad = tail call ptr @lean_expr_mk_let(ptr noundef %i.g, ptr noundef %i.n, ptr noundef %i.u, ptr noundef %i.ab, i8 noundef zeroext %i.ac)
  store ptr %i.ad, ptr %0, align 8, !tbaa !13
  ret void
}

declare ptr @lean_expr_mk_let(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4lean7mk_PropEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.lean::expr") align 8 captures(none) initializes((0, 8)) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr @_ZN4leanL6g_PropE, align 8, !tbaa !29
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 5 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !13
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = and i64 %i.c, 1
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN4lean4exprC2ERKS0_.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i.i.i = load i32, ptr %i.b, align 4, !tbaa !15 ; 3 uses
  %i.e = icmp sgt i32 %.val.i.i.i.i.i, 0
  br i1 %i.e, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i32 %.val.i.i.i.i.i, 1
  store i32 %i.f, ptr %i.b, align 4, !tbaa !15
  br label %_ZN4lean4exprC2ERKS0_.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4lean4exprC2ERKS0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = atomicrmw add ptr %i.b, i32 -1 monotonic, align 4 ; 0 uses
  br label %_ZN4lean4exprC2ERKS0_.exit

_ZN4lean4exprC2ERKS0_.exit:                       ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4lean7mk_TypeEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.lean::expr") align 8 captures(none) initializes((0, 8)) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr @_ZN4leanL7g_Type0E, align 8, !tbaa !29
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 5 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !13
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = and i64 %i.c, 1
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN4lean4exprC2ERKS0_.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i.i.i = load i32, ptr %i.b, align 4, !tbaa !15 ; 3 uses
  %i.e = icmp sgt i32 %.val.i.i.i.i.i, 0
  br i1 %i.e, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i32 %.val.i.i.i.i.i, 1
  store i32 %i.f, ptr %i.b, align 4, !tbaa !15
  br label %_ZN4lean4exprC2ERKS0_.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4lean4exprC2ERKS0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = atomicrmw add ptr %i.b, i32 -1 monotonic, align 4 ; 0 uses
  br label %_ZN4lean4exprC2ERKS0_.exit

_ZN4lean4exprC2ERKS0_.exit:                       ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4lean6mk_appERKNS_4exprEjPS1_(ptr dead_on_unwind noalias writable sret(%"class.lean::expr") align 8 initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !13     ; 6 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !13
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = and i64 %i.b, 1
  %.not.i.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN4lean4exprC2ERKS0_.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i.i.i = load i32, ptr %i.a, align 4, !tbaa !15 ; 3 uses
  %i.d = icmp sgt i32 %.val.i.i.i.i.i, 0
  br i1 %i.d, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw i32 %.val.i.i.i.i.i, 1
  store i32 %i.e, ptr %i.a, align 4, !tbaa !15
  br label %_ZN4lean4exprC2ERKS0_.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4lean4exprC2ERKS0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = atomicrmw add ptr %i.a, i32 -1 monotonic, align 4 ; 0 uses
  br label %_ZN4lean4exprC2ERKS0_.exit

_ZN4lean4exprC2ERKS0_.exit:                       ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4lean4exprC2ERKS0_.exit
  %wide.trip.count = zext i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4lean10object_refD2Ev.exit
  %4 = phi ptr [ %i.a, %.lr.ph.preheader ], [ %i.t, %_ZN4lean10object_refD2Ev.exit ] ; 8 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN4lean10object_refD2Ev.exit ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv ; 2 uses
  %i.h = ptrtoint ptr %4 to i64
  %i.i = and i64 %i.h, 1
  %.not.i.i.i.i8 = icmp eq i64 %i.i, 0            ; 2 uses
  br i1 %.not.i.i.i.i8, label %bb.f, label %_ZNK4lean10object_ref10to_obj_argEv.exit.i

bb.f:                                             ; preds = %.lr.ph
  %.val.i.i.i.i.i9 = load i32, ptr %4, align 4, !tbaa !15, !noalias !85 ; 3 uses
  %i.j = icmp sgt i32 %.val.i.i.i.i.i9, 0
  br i1 %i.j, label %bb.g, label %bb.h, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.k = add nuw i32 %.val.i.i.i.i.i9, 1
  store i32 %i.k, ptr %4, align 4, !tbaa !15, !noalias !85
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit.i

bb.h:                                             ; preds = %bb.f
  %.not.i.i.i.i.i10 = icmp eq i32 %.val.i.i.i.i.i9, 0
  br i1 %.not.i.i.i.i.i10, label %_ZNK4lean10object_ref10to_obj_argEv.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = atomicrmw add ptr %4, i32 -1 monotonic, align 4, !noalias !85 ; 0 uses
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit.i

_ZNK4lean10object_ref10to_obj_argEv.exit.i:       ; preds = %bb.i, %bb.h, %bb.g, %.lr.ph
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !13, !noalias !85 ; 7 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = and i64 %i.n, 1
  %.not.i.i.i2.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i2.i, label %bb.j, label %_ZNK4lean10object_ref10to_obj_argEv.exit6.i

bb.j:                                             ; preds = %_ZNK4lean10object_ref10to_obj_argEv.exit.i
  %.val.i.i.i.i3.i = load i32, ptr %i.m, align 4, !tbaa !15, !noalias !85 ; 3 uses
  %i.p = icmp sgt i32 %.val.i.i.i.i3.i, 0
  br i1 %i.p, label %bb.k, label %bb.l, !prof !16

bb.k:                                             ; preds = %bb.j
  %i.q = add nuw i32 %.val.i.i.i.i3.i, 1
  store i32 %i.q, ptr %i.m, align 4, !tbaa !15, !noalias !85
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit6.i

bb.l:                                             ; preds = %bb.j
  %.not.i.i.i.i4.i = icmp eq i32 %.val.i.i.i.i3.i, 0
  br i1 %.not.i.i.i.i4.i, label %_ZNK4lean10object_ref10to_obj_argEv.exit6.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.r = atomicrmw add ptr %i.m, i32 -1 monotonic, align 4, !noalias !85 ; 0 uses
  %.pre.i5.i = load ptr, ptr %i.g, align 8, !tbaa !13, !noalias !85
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit6.i

_ZNK4lean10object_ref10to_obj_argEv.exit6.i:      ; preds = %bb.m, %bb.l, %bb.k, %_ZNK4lean10object_ref10to_obj_argEv.exit.i
  %i.s = phi ptr [ %i.m, %_ZNK4lean10object_ref10to_obj_argEv.exit.i ], [ %i.m, %bb.k ], [ %i.m, %bb.l ], [ %.pre.i5.i, %bb.m ]
  %i.t = invoke ptr @lean_expr_mk_app(ptr noundef %4, ptr noundef %i.s)
          to label %_ZN4lean6mk_appERKNS_4exprES2_.exit unwind label %bb.s ; 2 uses

_ZN4lean6mk_appERKNS_4exprES2_.exit:              ; preds = %_ZNK4lean10object_ref10to_obj_argEv.exit6.i
  br i1 %.not.i.i.i.i8, label %bb.n, label %_ZN4lean10object_refD2Ev.exit

bb.n:                                             ; preds = %_ZN4lean6mk_appERKNS_4exprES2_.exit
  %i.u = load i32, ptr %4, align 4, !tbaa !15     ; 3 uses
  %i.v = icmp sgt i32 %i.u, 1
  br i1 %i.v, label %bb.o, label %bb.p, !prof !16

bb.o:                                             ; preds = %bb.n
  %i.w = add nsw i32 %i.u, -1
  store i32 %i.w, ptr %4, align 4, !tbaa !15
  br label %_ZN4lean10object_refD2Ev.exit

bb.p:                                             ; preds = %bb.n
  %.not.i1.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i1.i.i.i, label %_ZN4lean10object_refD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %4)
          to label %_ZN4lean10object_refD2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #22
  unreachable

_ZN4lean10object_refD2Ev.exit:                    ; preds = %bb.q, %bb.p, %bb.o, %_ZN4lean6mk_appERKNS_4exprES2_.exit
  store ptr %i.t, ptr %0, align 8, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !84

bb.s:                                             ; preds = %_ZNK4lean10object_ref10to_obj_argEv.exit6.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #19
  resume { ptr, i32 } %i.z

._crit_edge:                                      ; preds = %_ZN4lean10object_refD2Ev.exit, %_ZN4lean4exprC2ERKS0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4lean6mk_appEjPKNS_4exprE(ptr dead_on_unwind noalias writable sret(%"class.lean::expr") align 8 initializes((0, 8)) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.lean::expr", align 8        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  %i.b = load ptr, ptr %2, align 8, !tbaa !13, !noalias !88 ; 7 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = and i64 %i.c, 1
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZNK4lean10object_ref10to_obj_argEv.exit.i

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i.i.i = load i32, ptr %i.b, align 4, !tbaa !15, !noalias !88 ; 3 uses
  %i.e = icmp sgt i32 %.val.i.i.i.i.i, 0
  br i1 %i.e, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i32 %.val.i.i.i.i.i, 1
  store i32 %i.f, ptr %i.b, align 4, !tbaa !15, !noalias !88
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit.i

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK4lean10object_ref10to_obj_argEv.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = atomicrmw add ptr %i.b, i32 -1 monotonic, align 4, !noalias !88 ; 0 uses
  %.pre.i.i = load ptr, ptr %2, align 8, !tbaa !13, !noalias !88
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit.i

_ZNK4lean10object_ref10to_obj_argEv.exit.i:       ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.h = phi ptr [ %i.b, %bb.a ], [ %i.b, %bb.c ], [ %i.b, %bb.d ], [ %.pre.i.i, %bb.e ]
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !13, !noalias !88 ; 7 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = and i64 %i.j, 1
  %.not.i.i.i2.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i2.i, label %bb.f, label %_ZN4lean6mk_appERKNS_4exprES2_.exit

bb.f:                                             ; preds = %_ZNK4lean10object_ref10to_obj_argEv.exit.i
  %.val.i.i.i.i3.i = load i32, ptr %i.i, align 4, !tbaa !15, !noalias !88 ; 3 uses
  %i.l = icmp sgt i32 %.val.i.i.i.i3.i, 0
  br i1 %i.l, label %bb.g, label %bb.h, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.m = add nuw i32 %.val.i.i.i.i3.i, 1
  store i32 %i.m, ptr %i.i, align 4, !tbaa !15, !noalias !88
  br label %_ZN4lean6mk_appERKNS_4exprES2_.exit

bb.h:                                             ; preds = %bb.f
  %.not.i.i.i.i4.i = icmp eq i32 %.val.i.i.i.i3.i, 0
  br i1 %.not.i.i.i.i4.i, label %_ZN4lean6mk_appERKNS_4exprES2_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = atomicrmw add ptr %i.i, i32 -1 monotonic, align 4, !noalias !88 ; 0 uses
  %.pre.i5.i = load ptr, ptr %i.a, align 8, !tbaa !13, !noalias !88
  br label %_ZN4lean6mk_appERKNS_4exprES2_.exit

_ZN4lean6mk_appERKNS_4exprES2_.exit:              ; preds = %_ZNK4lean10object_ref10to_obj_argEv.exit.i, %bb.g, %bb.h, %bb.i
  %i.o = phi ptr [ %i.i, %_ZNK4lean10object_ref10to_obj_argEv.exit.i ], [ %i.i, %bb.g ], [ %i.i, %bb.h ], [ %.pre.i5.i, %bb.i ]
  %i.p = tail call ptr @lean_expr_mk_app(ptr noundef %i.h, ptr noundef %i.o), !noalias !88 ; 5 uses
  store ptr %i.p, ptr %3, align 8, !tbaa !13, !alias.scope !88
  %i.q = add i32 %1, -2
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  invoke void @_ZN4lean6mk_appERKNS_4exprEjPS1_(ptr dead_on_unwind writable sret(%"class.lean::expr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %i.q, ptr noundef nonnull %i.r)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %_ZN4lean6mk_appERKNS_4exprES2_.exit
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = and i64 %i.s, 1
  %.not.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i.i, label %bb.k, label %_ZN4lean10object_refD2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.u = load i32, ptr %i.p, align 4, !tbaa !15   ; 3 uses
  %i.v = icmp sgt i32 %i.u, 1
  br i1 %i.v, label %bb.l, label %bb.m, !prof !16

bb.l:                                             ; preds = %bb.k
  %i.w = add nsw i32 %i.u, -1
  store i32 %i.w, ptr %i.p, align 4, !tbaa !15
  br label %_ZN4lean10object_refD2Ev.exit

bb.m:                                             ; preds = %bb.k
  %.not.i1.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i1.i.i, label %_ZN4lean10object_refD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.p)
          to label %_ZN4lean10object_refD2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #22
  unreachable

_ZN4lean10object_refD2Ev.exit:                    ; preds = %bb.j, %bb.l, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void

bb.p:                                             ; preds = %_ZN4lean6mk_appERKNS_4exprES2_.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %i.z
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4lean6mk_appERKNS_4exprERKNS_4listIS0_EE(ptr dead_on_unwind noalias writable sret(%"class.lean::expr") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.lean::buffer", align 8      ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i64 0, ptr %i.b, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store i64 16, ptr %i.c, align 8, !tbaa !36
  %.sroa.05.08.i = load ptr, ptr %2, align 8, !tbaa !93 ; 2 uses
  %.not9.i = icmp eq ptr %.sroa.05.08.i, null
  br i1 %.not9.i, label %_ZN4lean9to_bufferINS_4exprEEEvRKNS_4listIT_EERNS_6bufferIS3_Lm16EEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN4lean6bufferINS_4exprELm16EE9push_backERKS1_.exit.i
  %i.d = phi i64 [ %i.r, %_ZN4lean6bufferINS_4exprELm16EE9push_backERKS1_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.05.010.i = phi ptr [ %.sroa.05.0.i, %_ZN4lean6bufferINS_4exprELm16EE9push_backERKS1_.exit.i ], [ %.sroa.05.08.i, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.05.010.i, i64 8
  %i.f = load i64, ptr %i.c, align 8, !tbaa !36   ; 2 uses
  %.not.i.i = icmp ult i64 %i.d, %i.f
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = shl i64 %i.f, 1
  invoke void @_ZN4lean6bufferINS_4exprELm16EE12set_capacityEm(ptr noundef nonnull align 8 dereferenceable(152) %3, i64 noundef %i.g)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  %.pre.i.i = load i64, ptr %i.b, align 8, !tbaa !35
  br label %bb.c

bb.c:                                             ; preds = %.noexc, %.lr.ph.i
  %i.h = phi i64 [ %.pre.i.i, %.noexc ], [ %i.d, %.lr.ph.i ] ; 4 uses
  %i.i = load ptr, ptr %3, align 8, !tbaa !34
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.h
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !13   ; 5 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !13
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = and i64 %i.l, 1
  %.not.i.i.i.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %_ZN4lean6bufferINS_4exprELm16EE9push_backERKS1_.exit.i

bb.d:                                             ; preds = %bb.c
  %.val.i.i.i.i.i.i.i = load i32, ptr %i.k, align 4, !tbaa !15 ; 3 uses
  %i.n = icmp sgt i32 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.n, label %bb.e, label %bb.f, !prof !16

bb.e:                                             ; preds = %bb.d
  %i.o = add nuw i32 %.val.i.i.i.i.i.i.i, 1
  store i32 %i.o, ptr %i.k, align 4, !tbaa !15
  br label %_ZN4lean6bufferINS_4exprELm16EE9push_backERKS1_.exit.i

bb.f:                                             ; preds = %bb.d
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4lean6bufferINS_4exprELm16EE9push_backERKS1_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = atomicrmw add ptr %i.k, i32 -1 monotonic, align 4 ; 0 uses
  %.pre2.i.i = load i64, ptr %i.b, align 8, !tbaa !35
  br label %_ZN4lean6bufferINS_4exprELm16EE9push_backERKS1_.exit.i

_ZN4lean6bufferINS_4exprELm16EE9push_backERKS1_.exit.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.c
  %i.q = phi i64 [ %i.h, %bb.c ], [ %i.h, %bb.e ], [ %i.h, %bb.f ], [ %.pre2.i.i, %bb.g ]
  %i.r = add i64 %i.q, 1                          ; 3 uses
  store i64 %i.r, ptr %i.b, align 8, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.05.010.i, i64 16
  %.sroa.05.0.i = load ptr, ptr %i.s, align 8, !tbaa !93 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.05.0.i, null
  br i1 %.not.i, label %_ZN4lean9to_bufferINS_4exprEEEvRKNS_4listIT_EERNS_6bufferIS3_Lm16EEE.exit.loopexit, label %.lr.ph.i

_ZN4lean9to_bufferINS_4exprEEEvRKNS_4listIT_EERNS_6bufferIS3_Lm16EEE.exit.loopexit: ; preds = %_ZN4lean6bufferINS_4exprELm16EE9push_backERKS1_.exit.i
  %.pre = load ptr, ptr %3, align 8, !tbaa !34, !noalias !94
  %i.t = trunc i64 %i.r to i32
  br label %_ZN4lean9to_bufferINS_4exprEEEvRKNS_4listIT_EERNS_6bufferIS3_Lm16EEE.exit

_ZN4lean9to_bufferINS_4exprEEEvRKNS_4listIT_EERNS_6bufferIS3_Lm16EEE.exit: ; preds = %_ZN4lean9to_bufferINS_4exprEEEvRKNS_4listIT_EERNS_6bufferIS3_Lm16EEE.exit.loopexit, %bb.a
  %i.u = phi ptr [ %.pre, %_ZN4lean9to_bufferINS_4exprEEEvRKNS_4listIT_EERNS_6bufferIS3_Lm16EEE.exit.loopexit ], [ %i.a, %bb.a ]
  %i.v = phi i32 [ %i.t, %_ZN4lean9to_bufferINS_4exprEEEvRKNS_4listIT_EERNS_6bufferIS3_Lm16EEE.exit.loopexit ], [ 0, %bb.a ]
  invoke void @_ZN4lean6mk_appERKNS_4exprEjPS1_(ptr dead_on_unwind writable sret(%"class.lean::expr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.v, ptr noundef %i.u)
          to label %_ZN4lean6mk_appERKNS_4exprERKNS_6bufferIS0_Lm16EEE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4lean6mk_appERKNS_4exprERKNS_6bufferIS0_Lm16EEE.exit: ; preds = %_ZN4lean9to_bufferINS_4exprEEEvRKNS_4listIT_EERNS_6bufferIS3_Lm16EEE.exit
  %i.w = load ptr, ptr %3, align 8, !tbaa !34     ; 3 uses
  %i.x = load i64, ptr %i.b, align 8, !tbaa !35   ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.x, 3
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx.i.i.i
  %.not4.i.i.i.i = icmp eq i64 %i.x, 0
  br i1 %.not4.i.i.i.i, label %_ZN4lean6bufferINS_4exprELm16EE16destroy_elementsEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4lean6mk_appERKNS_4exprERKNS_6bufferIS0_Lm16EEE.exit, %_ZZN4lean6bufferINS_4exprELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ah, %_ZZN4lean6bufferINS_4exprELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i.i ], [ %i.w, %_ZN4lean6mk_appERKNS_4exprERKNS_6bufferIS0_Lm16EEE.exit ] ; 2 uses
  %i.z = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !13 ; 4 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = and i64 %i.aa, 1
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.h, label %_ZZN4lean6bufferINS_4exprELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ac = load i32, ptr %i.z, align 4, !tbaa !15  ; 3 uses
  %i.ad = icmp sgt i32 %i.ac, 1
  br i1 %i.ad, label %bb.i, label %bb.j, !prof !16

bb.i:                                             ; preds = %bb.h
  %i.ae = add nsw i32 %i.ac, -1
  store i32 %i.ae, ptr %i.z, align 4, !tbaa !15
  br label %_ZZN4lean6bufferINS_4exprELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %.not.i1.i.i.i.i.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i1.i.i.i.i.i.i.i, label %_ZZN4lean6bufferINS_4exprELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.z)
          to label %_ZZN4lean6bufferINS_4exprELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #22
  unreachable

_ZZN4lean6bufferINS_4exprELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i.i: ; preds = %bb.k, %bb.j, %bb.i, %.lr.ph.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ah, %i.y
  br i1 %.not.i.i.i.i, label %_ZN4lean6bufferINS_4exprELm16EE16destroy_elementsEv.exit.loopexit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZN4lean6bufferINS_4exprELm16EE16destroy_elementsEv.exit.loopexit.i.i: ; preds = %_ZZN4lean6bufferINS_4exprELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i.i
  %.pre.i.i4 = load ptr, ptr %3, align 8, !tbaa !34
  br label %_ZN4lean6bufferINS_4exprELm16EE16destroy_elementsEv.exit.i.i

_ZN4lean6bufferINS_4exprELm16EE16destroy_elementsEv.exit.i.i: ; preds = %_ZN4lean6bufferINS_4exprELm16EE16destroy_elementsEv.exit.loopexit.i.i, %_ZN4lean6mk_appERKNS_4exprERKNS_6bufferIS0_Lm16EEE.exit
  %i.ai = phi ptr [ %.pre.i.i4, %_ZN4lean6bufferINS_4exprELm16EE16destroy_elementsEv.exit.loopexit.i.i ], [ %i.w, %_ZN4lean6mk_appERKNS_4exprERKNS_6bufferIS0_Lm16EEE.exit ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, %i.a
  br i1 %.not.i.i.i, label %_ZN4lean6bufferINS_4exprELm16EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4lean6bufferINS_4exprELm16EE16destroy_elementsEv.exit.i.i
  %i.aj = load i64, ptr %i.c, align 8, !tbaa !36
  %i.ak = shl i64 %i.aj, 3
  call void @_ZdaPvm(ptr noundef %i.ai, i64 noundef %i.ak) #19
  br label %_ZN4lean6bufferINS_4exprELm16EED2Ev.exit

_ZN4lean6bufferINS_4exprELm16EED2Ev.exit:         ; preds = %_ZN4lean6bufferINS_4exprELm16EE16destroy_elementsEv.exit.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.b, %_ZN4lean9to_bufferINS_4exprEEEvRKNS_4listIT_EERNS_6bufferIS3_Lm16EEE.exit
  %lpad.loopexit.split-lp10 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4lean6bufferINS_4exprELm16EED2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %lpad.loopexit.split-lp10
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4lean6bufferINS_4exprELm16EED2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !34     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !35   ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.c, 3
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx.i.i
  %.not4.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not4.i.i.i, label %_ZN4lean6bufferINS_4exprELm16EE16destroy_elementsEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZZN4lean6bufferINS_4exprELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.m, %_ZZN4lean6bufferINS_4exprELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !13 ; 4 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = and i64 %i.f, 1
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.b, label %_ZZN4lean6bufferINS_4exprELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.h = load i32, ptr %i.e, align 4, !tbaa !15   ; 3 uses
  %i.i = icmp sgt i32 %i.h, 1
  br i1 %i.i, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.j = add nsw i32 %i.h, -1
  store i32 %i.j, ptr %i.e, align 4, !tbaa !15
  br label %_ZZN4lean6bufferINS_4exprELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %.not.i1.i.i.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i1.i.i.i.i.i.i, label %_ZZN4lean6bufferINS_4exprELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.e)
          to label %_ZZN4lean6bufferINS_4exprELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #22
  unreachable

_ZZN4lean6bufferINS_4exprELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i: ; preds = %bb.e, %bb.d, %bb.c, %.lr.ph.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, %i.d
  br i1 %.not.i.i.i, label %_ZN4lean6bufferINS_4exprELm16EE16destroy_elementsEv.exit.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZN4lean6bufferINS_4exprELm16EE16destroy_elementsEv.exit.loopexit.i: ; preds = %_ZZN4lean6bufferINS_4exprELm16EE16destroy_elementsEvENKUlRS1_E_clES3_.exit.i.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !34
  br label %_ZN4lean6bufferINS_4exprELm16EE16destroy_elementsEv.exit.i

_ZN4lean6bufferINS_4exprELm16EE16destroy_elementsEv.exit.i: ; preds = %_ZN4lean6bufferINS_4exprELm16EE16destroy_elementsEv.exit.loopexit.i, %bb.a
  %i.n = phi ptr [ %.pre.i, %_ZN4lean6bufferINS_4exprELm16EE16destroy_elementsEv.exit.loopexit.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i, label %_ZN4lean6bufferINS_4exprELm16EE7destroyEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4lean6bufferINS_4exprELm16EE16destroy_elementsEv.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !36
  %i.r = shl i64 %i.q, 3
  tail call void @_ZdaPvm(ptr noundef %i.n, i64 noundef %i.r) #19
  br label %_ZN4lean6bufferINS_4exprELm16EE7destroyEv.exit

_ZN4lean6bufferINS_4exprELm16EE7destroyEv.exit:   ; preds = %bb.g, %_ZN4lean6bufferINS_4exprELm16EE16destroy_elementsEv.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4lean10mk_rev_appERKNS_4exprEjPS1_(ptr dead_on_unwind noalias writable sret(%"class.lean::expr") align 8 initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !13     ; 6 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !13
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = and i64 %i.b, 1
  %.not.i.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN4lean4exprC2ERKS0_.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i.i.i = load i32, ptr %i.a, align 4, !tbaa !15 ; 3 uses
  %i.d = icmp sgt i32 %.val.i.i.i.i.i, 0
  br i1 %i.d, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw i32 %.val.i.i.i.i.i, 1
  store i32 %i.e, ptr %i.a, align 4, !tbaa !15
  br label %_ZN4lean4exprC2ERKS0_.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4lean4exprC2ERKS0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = atomicrmw add ptr %i.a, i32 -1 monotonic, align 4 ; 0 uses
  br label %_ZN4lean4exprC2ERKS0_.exit

_ZN4lean4exprC2ERKS0_.exit:                       ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %.not13 = icmp eq i32 %2, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4lean4exprC2ERKS0_.exit
  %i.g = zext i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4lean10object_refD2Ev.exit
  %4 = phi ptr [ %i.a, %.lr.ph.preheader ], [ %i.v, %_ZN4lean10object_refD2Ev.exit ] ; 8 uses
  %indvars.iv = phi i64 [ %i.g, %.lr.ph.preheader ], [ %i.h, %_ZN4lean10object_refD2Ev.exit ]
  %i.h = add nsw i64 %indvars.iv, -1              ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.h ; 2 uses
  %i.j = ptrtoint ptr %4 to i64
  %i.k = and i64 %i.j, 1
  %.not.i.i.i.i8 = icmp eq i64 %i.k, 0            ; 2 uses
  br i1 %.not.i.i.i.i8, label %bb.f, label %_ZNK4lean10object_ref10to_obj_argEv.exit.i

bb.f:                                             ; preds = %.lr.ph
  %.val.i.i.i.i.i9 = load i32, ptr %4, align 4, !tbaa !15, !noalias !98 ; 3 uses
  %i.l = icmp sgt i32 %.val.i.i.i.i.i9, 0
  br i1 %i.l, label %bb.g, label %bb.h, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.m = add nuw i32 %.val.i.i.i.i.i9, 1
  store i32 %i.m, ptr %4, align 4, !tbaa !15, !noalias !98
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit.i

bb.h:                                             ; preds = %bb.f
  %.not.i.i.i.i.i10 = icmp eq i32 %.val.i.i.i.i.i9, 0
  br i1 %.not.i.i.i.i.i10, label %_ZNK4lean10object_ref10to_obj_argEv.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = atomicrmw add ptr %4, i32 -1 monotonic, align 4, !noalias !98 ; 0 uses
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit.i

_ZNK4lean10object_ref10to_obj_argEv.exit.i:       ; preds = %bb.i, %bb.h, %bb.g, %.lr.ph
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !13, !noalias !98 ; 7 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = and i64 %i.p, 1
  %.not.i.i.i2.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i2.i, label %bb.j, label %_ZNK4lean10object_ref10to_obj_argEv.exit6.i

bb.j:                                             ; preds = %_ZNK4lean10object_ref10to_obj_argEv.exit.i
  %.val.i.i.i.i3.i = load i32, ptr %i.o, align 4, !tbaa !15, !noalias !98 ; 3 uses
  %i.r = icmp sgt i32 %.val.i.i.i.i3.i, 0
  br i1 %i.r, label %bb.k, label %bb.l, !prof !16

bb.k:                                             ; preds = %bb.j
  %i.s = add nuw i32 %.val.i.i.i.i3.i, 1
  store i32 %i.s, ptr %i.o, align 4, !tbaa !15, !noalias !98
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit6.i

bb.l:                                             ; preds = %bb.j
  %.not.i.i.i.i4.i = icmp eq i32 %.val.i.i.i.i3.i, 0
  br i1 %.not.i.i.i.i4.i, label %_ZNK4lean10object_ref10to_obj_argEv.exit6.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = atomicrmw add ptr %i.o, i32 -1 monotonic, align 4, !noalias !98 ; 0 uses
  %.pre.i5.i = load ptr, ptr %i.i, align 8, !tbaa !13, !noalias !98
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit6.i

_ZNK4lean10object_ref10to_obj_argEv.exit6.i:      ; preds = %bb.m, %bb.l, %bb.k, %_ZNK4lean10object_ref10to_obj_argEv.exit.i
  %i.u = phi ptr [ %i.o, %_ZNK4lean10object_ref10to_obj_argEv.exit.i ], [ %i.o, %bb.k ], [ %i.o, %bb.l ], [ %.pre.i5.i, %bb.m ]
  %i.v = invoke ptr @lean_expr_mk_app(ptr noundef %4, ptr noundef %i.u)
          to label %_ZN4lean6mk_appERKNS_4exprES2_.exit unwind label %bb.s ; 2 uses

_ZN4lean6mk_appERKNS_4exprES2_.exit:              ; preds = %_ZNK4lean10object_ref10to_obj_argEv.exit6.i
  br i1 %.not.i.i.i.i8, label %bb.n, label %_ZN4lean10object_refD2Ev.exit

bb.n:                                             ; preds = %_ZN4lean6mk_appERKNS_4exprES2_.exit
  %i.w = load i32, ptr %4, align 4, !tbaa !15     ; 3 uses
  %i.x = icmp sgt i32 %i.w, 1
  br i1 %i.x, label %bb.o, label %bb.p, !prof !16

bb.o:                                             ; preds = %bb.n
  %i.y = add nsw i32 %i.w, -1
  store i32 %i.y, ptr %4, align 4, !tbaa !15
  br label %_ZN4lean10object_refD2Ev.exit

bb.p:                                             ; preds = %bb.n
  %.not.i1.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i1.i.i.i, label %_ZN4lean10object_refD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %4)
          to label %_ZN4lean10object_refD2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #22
  unreachable

_ZN4lean10object_refD2Ev.exit:                    ; preds = %bb.q, %bb.p, %bb.o, %_ZN4lean6mk_appERKNS_4exprES2_.exit
  store ptr %i.v, ptr %0, align 8, !tbaa !13
  %.not.wide = icmp eq i64 %i.h, 0
  br i1 %.not.wide, label %._crit_edge, label %.lr.ph, !llvm.loop !97

bb.s:                                             ; preds = %_ZNK4lean10object_ref10to_obj_argEv.exit6.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #19
  resume { ptr, i32 } %i.ab

._crit_edge:                                      ; preds = %_ZN4lean10object_refD2Ev.exit, %_ZN4lean4exprC2ERKS0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4lean10mk_rev_appEjPKNS_4exprE(ptr dead_on_unwind noalias writable sret(%"class.lean::expr") align 8 initializes((0, 8)) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.lean::expr", align 8        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.b ; 2 uses
  %i.d = add i32 %1, -2                           ; 2 uses
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.e ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !13, !noalias !101 ; 7 uses
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = and i64 %i.h, 1
  %.not.i.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZNK4lean10object_ref10to_obj_argEv.exit.i

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i.i.i = load i32, ptr %i.g, align 4, !tbaa !15, !noalias !101 ; 3 uses
  %i.j = icmp sgt i32 %.val.i.i.i.i.i, 0
  br i1 %i.j, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i32 %.val.i.i.i.i.i, 1
  store i32 %i.k, ptr %i.g, align 4, !tbaa !15, !noalias !101
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit.i

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK4lean10object_ref10to_obj_argEv.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = atomicrmw add ptr %i.g, i32 -1 monotonic, align 4, !noalias !101 ; 0 uses
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !13, !noalias !101
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit.i

_ZNK4lean10object_ref10to_obj_argEv.exit.i:       ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.m = phi ptr [ %i.g, %bb.a ], [ %i.g, %bb.c ], [ %i.g, %bb.d ], [ %.pre.i.i, %bb.e ]
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !13, !noalias !101 ; 7 uses
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = and i64 %i.o, 1
  %.not.i.i.i2.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i2.i, label %bb.f, label %_ZN4lean6mk_appERKNS_4exprES2_.exit

bb.f:                                             ; preds = %_ZNK4lean10object_ref10to_obj_argEv.exit.i
  %.val.i.i.i.i3.i = load i32, ptr %i.n, align 4, !tbaa !15, !noalias !101 ; 3 uses
  %i.q = icmp sgt i32 %.val.i.i.i.i3.i, 0
  br i1 %i.q, label %bb.g, label %bb.h, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.r = add nuw i32 %.val.i.i.i.i3.i, 1
  store i32 %i.r, ptr %i.n, align 4, !tbaa !15, !noalias !101
  br label %_ZN4lean6mk_appERKNS_4exprES2_.exit

bb.h:                                             ; preds = %bb.f
  %.not.i.i.i.i4.i = icmp eq i32 %.val.i.i.i.i3.i, 0
  br i1 %.not.i.i.i.i4.i, label %_ZN4lean6mk_appERKNS_4exprES2_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = atomicrmw add ptr %i.n, i32 -1 monotonic, align 4, !noalias !101 ; 0 uses
  %.pre.i5.i = load ptr, ptr %i.f, align 8, !tbaa !13, !noalias !101
  br label %_ZN4lean6mk_appERKNS_4exprES2_.exit

_ZN4lean6mk_appERKNS_4exprES2_.exit:              ; preds = %_ZNK4lean10object_ref10to_obj_argEv.exit.i, %bb.g, %bb.h, %bb.i
  %i.t = phi ptr [ %i.n, %_ZNK4lean10object_ref10to_obj_argEv.exit.i ], [ %i.n, %bb.g ], [ %i.n, %bb.h ], [ %.pre.i5.i, %bb.i ]
  %i.u = tail call ptr @lean_expr_mk_app(ptr noundef %i.m, ptr noundef %i.t), !noalias !101 ; 5 uses
  store ptr %i.u, ptr %3, align 8, !tbaa !13, !alias.scope !101
  invoke void @_ZN4lean10mk_rev_appERKNS_4exprEjPS1_(ptr dead_on_unwind writable sret(%"class.lean::expr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %i.d, ptr noundef nonnull %2)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %_ZN4lean6mk_appERKNS_4exprES2_.exit
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = and i64 %i.v, 1
  %.not.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i, label %bb.k, label %_ZN4lean10object_refD2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.x = load i32, ptr %i.u, align 4, !tbaa !15   ; 3 uses
  %i.y = icmp sgt i32 %i.x, 1
  br i1 %i.y, label %bb.l, label %bb.m, !prof !16

bb.l:                                             ; preds = %bb.k
  %i.z = add nsw i32 %i.x, -1
  store i32 %i.z, ptr %i.u, align 4, !tbaa !15
  br label %_ZN4lean10object_refD2Ev.exit

bb.m:                                             ; preds = %bb.k
  %.not.i1.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i1.i.i, label %_ZN4lean10object_refD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.u)
          to label %_ZN4lean10object_refD2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #22
  unreachable

_ZN4lean10object_refD2Ev.exit:                    ; preds = %bb.j, %bb.l, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void

bb.p:                                             ; preds = %_ZN4lean6mk_appERKNS_4exprES2_.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %i.ac
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4lean12get_app_argsERKNS_4exprERNS_6bufferIS0_Lm16EEE(ptr nofree noundef nonnull readonly align 8 captures(ret: address, provenance) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(152) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !35   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 4
  %.val.i.i.i.i10 = load i32, ptr %i.d, align 4
  %.mask.i11 = and i32 %.val.i.i.i.i10, -16777216
  %i.e = icmp eq i32 %.mask.i11, 83886080
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4lean6bufferINS_4exprELm16EE9push_backERKS1_.exit
  %i.g = phi i64 [ %i.b, %.lr.ph ], [ %i.v, %_ZN4lean6bufferINS_4exprELm16EE9push_backERKS1_.exit ] ; 2 uses
  %i.h = phi ptr [ %i.c, %.lr.ph ], [ %i.y, %_ZN4lean6bufferINS_4exprELm16EE9push_backERKS1_.exit ]
  %.012 = phi ptr [ %0, %.lr.ph ], [ %i.x, %_ZN4lean6bufferINS_4exprELm16EE9push_backERKS1_.exit ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i64, ptr %i.f, align 8, !tbaa !36   ; 2 uses
  %.not.i = icmp ult i64 %i.g, %i.j
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = shl i64 %i.j, 1
  tail call void @_ZN4lean6bufferINS_4exprELm16EE12set_capacityEm(ptr noundef nonnull align 8 dereferenceable(152) %1, i64 noundef %i.k)
  %.pre.i = load i64, ptr %i.a, align 8, !tbaa !35
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = phi i64 [ %.pre.i, %bb.c ], [ %i.g, %bb.b ] ; 4 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !34
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !13   ; 5 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !13
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = and i64 %i.p, 1
  %.not.i.i.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %_ZN4lean6bufferINS_4exprELm16EE9push_backERKS1_.exit

bb.e:                                             ; preds = %bb.d
  %.val.i.i.i.i.i.i = load i32, ptr %i.o, align 4, !tbaa !15 ; 3 uses
  %i.r = icmp sgt i32 %.val.i.i.i.i.i.i, 0
  br i1 %i.r, label %bb.f, label %bb.g, !prof !16

bb.f:                                             ; preds = %bb.e
  %i.s = add nuw i32 %.val.i.i.i.i.i.i, 1
  store i32 %i.s, ptr %i.o, align 4, !tbaa !15
  br label %_ZN4lean6bufferINS_4exprELm16EE9push_backERKS1_.exit

bb.g:                                             ; preds = %bb.e
  %.not.i.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4lean6bufferINS_4exprELm16EE9push_backERKS1_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = atomicrmw add ptr %i.o, i32 -1 monotonic, align 4 ; 0 uses
  %.pre2.i = load i64, ptr %i.a, align 8, !tbaa !35
  br label %_ZN4lean6bufferINS_4exprELm16EE9push_backERKS1_.exit

_ZN4lean6bufferINS_4exprELm16EE9push_backERKS1_.exit: ; preds = %bb.d, %bb.f, %bb.g, %bb.h
  %i.u = phi i64 [ %i.l, %bb.d ], [ %i.l, %bb.f ], [ %i.l, %bb.g ], [ %.pre2.i, %bb.h ]
  %i.v = add i64 %i.u, 1                          ; 3 uses
  store i64 %i.v, ptr %i.a, align 8, !tbaa !35
  %i.w = load ptr, ptr %.012, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !13   ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 4
  %.val.i.i.i.i = load i32, ptr %i.z, align 4
  %.mask.i = and i32 %.val.i.i.i.i, -16777216
  %i.aa = icmp eq i32 %.mask.i, 83886080
  br i1 %i.aa, label %bb.b, label %._crit_edge, !llvm.loop !102

._crit_edge:                                      ; preds = %_ZN4lean6bufferINS_4exprELm16EE9push_backERKS1_.exit, %bb.a
  %i.ab = phi i64 [ %i.b, %bb.a ], [ %i.v, %_ZN4lean6bufferINS_4exprELm16EE9push_backERKS1_.exit ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.x, %_ZN4lean6bufferINS_4exprELm16EE9push_backERKS1_.exit ]
  %i.ac = and i64 %i.b, 4294967295                ; 2 uses
  %.idx = shl nuw nsw i64 %i.ac, 3                ; 2 uses
  %.idx9 = shl nuw nsw i64 %i.ab, 3
  %i.ad = icmp samesign ne i64 %i.ac, %i.ab
  %i.ae = add nsw i64 %.idx9, -8                  ; 2 uses
  %i.af = icmp slt i64 %.idx, %i.ae
  %or.cond.i.i = select i1 %i.ad, i1 %i.af, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i.preheader, label %_ZSt7reverseIPN4lean4exprEEvT_S3_.exit

.lr.ph.i.i.preheader:                             ; preds = %._crit_edge
  %i.ag = load ptr, ptr %1, align 8, !tbaa !34    ; 2 uses
end_hunk_0
