Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/TermElabM?download=true
inline.NumInlined: 15151
inline.NumDeleted: 104
loop-unroll.NumCompletelyUnrolled: 92
loop-unroll.NumUnrolled: 92
begin_hunk_0_@l_Lean_withDeclNameForAuxNaming___at___00Lean_Elab_Term_withDeclName_spec__0___redArg___boxed:bb.a
  br label %lean_dec_ref.exit27

bb.n:                                             ; preds = %lean_dec.exit16
  %.not.i26 = icmp eq i32 %i.o, 0
  br i1 %.not.i26, label %lean_dec_ref.exit27, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #9
  br label %lean_dec_ref.exit27

lean_dec_ref.exit27:                              ; preds = %bb.m, %bb.n, %bb.o
  %i.r = ptrtoint ptr %3 to i64
  %i.s = and i64 %i.r, 1
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %bb.p, label %lean_dec.exit

bb.p:                                             ; preds = %lean_dec_ref.exit27
  %i.t = load i32, ptr %3, align 4, !tbaa !10     ; 3 uses
  %i.u = icmp sgt i32 %i.t, 1
  br i1 %i.u, label %bb.q, label %bb.r, !prof !11

bb.q:                                             ; preds = %bb.p
  %i.v = add nsw i32 %i.t, -1
  store i32 %i.v, ptr %3, align 4, !tbaa !10
  br label %lean_dec.exit

bb.r:                                             ; preds = %bb.p
  %.not.i22 = icmp eq i32 %i.t, 0
  br i1 %.not.i22, label %lean_dec.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #9
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.s, %bb.r, %bb.q, %lean_dec_ref.exit27
  %i.w = load i32, ptr %2, align 4, !tbaa !10     ; 3 uses
  %i.x = icmp sgt i32 %i.w, 1
  br i1 %i.x, label %bb.t, label %bb.u, !prof !11

bb.t:                                             ; preds = %lean_dec.exit
  %i.y = add nsw i32 %i.w, -1
  store i32 %i.y, ptr %2, align 4, !tbaa !10
  br label %lean_dec_ref.exit25

bb.u:                                             ; preds = %lean_dec.exit
  %.not.i24 = icmp eq i32 %i.w, 0
  br i1 %.not.i24, label %lean_dec_ref.exit25, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #9
  br label %lean_dec_ref.exit25

lean_dec_ref.exit25:                              ; preds = %bb.t, %bb.u, %bb.v
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_withDeclNameForAuxNaming___at___00Lean_Elab_Term_withDeclName_spec__0(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_withDeclNameForAuxNaming___at___00Lean_Elab_Term_withDeclName_spec__0___redArg(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_withDeclNameForAuxNaming___at___00Lean_Elab_Term_withDeclName_spec__0___boxed(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr nofree readnone captures(none) %9) #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_withDeclNameForAuxNaming___at___00Lean_Elab_Term_withDeclName_spec__0___redArg(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8)
  %i.b = ptrtoint ptr %8 to i64
  %i.c = and i64 %i.b, 1
  %.not.i18 = icmp eq i64 %i.c, 0
  br i1 %.not.i18, label %bb.b, label %lean_dec.exit19

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %8, align 4, !tbaa !10     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %8, align 4, !tbaa !10
  br label %lean_dec.exit19

bb.d:                                             ; preds = %bb.b
  %.not.i20 = icmp eq i32 %i.d, 0
  br i1 %.not.i20, label %lean_dec.exit19, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %8) #9
  br label %lean_dec.exit19

lean_dec.exit19:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.g = load i32, ptr %7, align 4, !tbaa !10     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %lean_dec.exit19
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %7, align 4, !tbaa !10
  br label %lean_dec_ref.exit30

bb.g:                                             ; preds = %lean_dec.exit19
  %.not.i29 = icmp eq i32 %i.g, 0
  br i1 %.not.i29, label %lean_dec_ref.exit30, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %7) #9
  br label %lean_dec_ref.exit30

lean_dec_ref.exit30:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.j = ptrtoint ptr %6 to i64
  %i.k = and i64 %i.j, 1
  %.not.i16 = icmp eq i64 %i.k, 0
  br i1 %.not.i16, label %bb.i, label %lean_dec.exit17

bb.i:                                             ; preds = %lean_dec_ref.exit30
  %i.l = load i32, ptr %6, align 4, !tbaa !10     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.j, label %bb.k, !prof !11

bb.j:                                             ; preds = %bb.i
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %6, align 4, !tbaa !10
  br label %lean_dec.exit17

bb.k:                                             ; preds = %bb.i
  %.not.i21 = icmp eq i32 %i.l, 0
  br i1 %.not.i21, label %lean_dec.exit17, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %6) #9
  br label %lean_dec.exit17

lean_dec.exit17:                                  ; preds = %bb.l, %bb.k, %bb.j, %lean_dec_ref.exit30
  %i.o = load i32, ptr %5, align 4, !tbaa !10     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.m, label %bb.n, !prof !11

bb.m:                                             ; preds = %lean_dec.exit17
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %5, align 4, !tbaa !10
  br label %lean_dec_ref.exit28

bb.n:                                             ; preds = %lean_dec.exit17
  %.not.i27 = icmp eq i32 %i.o, 0
  br i1 %.not.i27, label %lean_dec_ref.exit28, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #9
  br label %lean_dec_ref.exit28

lean_dec_ref.exit28:                              ; preds = %bb.m, %bb.n, %bb.o
  %i.r = ptrtoint ptr %4 to i64
  %i.s = and i64 %i.r, 1
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %bb.p, label %lean_dec.exit

bb.p:                                             ; preds = %lean_dec_ref.exit28
  %i.t = load i32, ptr %4, align 4, !tbaa !10     ; 3 uses
  %i.u = icmp sgt i32 %i.t, 1
  br i1 %i.u, label %bb.q, label %bb.r, !prof !11

bb.q:                                             ; preds = %bb.p
  %i.v = add nsw i32 %i.t, -1
  store i32 %i.v, ptr %4, align 4, !tbaa !10
  br label %lean_dec.exit

bb.r:                                             ; preds = %bb.p
  %.not.i23 = icmp eq i32 %i.t, 0
  br i1 %.not.i23, label %lean_dec.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #9
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.s, %bb.r, %bb.q, %lean_dec_ref.exit28
  %i.w = load i32, ptr %3, align 4, !tbaa !10     ; 3 uses
  %i.x = icmp sgt i32 %i.w, 1
  br i1 %i.x, label %bb.t, label %bb.u, !prof !11

bb.t:                                             ; preds = %lean_dec.exit
  %i.y = add nsw i32 %i.w, -1
  store i32 %i.y, ptr %3, align 4, !tbaa !10
  br label %lean_dec_ref.exit26

bb.u:                                             ; preds = %lean_dec.exit
  %.not.i25 = icmp eq i32 %i.w, 0
  br i1 %.not.i25, label %lean_dec_ref.exit26, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #9
  br label %lean_dec_ref.exit26

lean_dec_ref.exit26:                              ; preds = %bb.t, %bb.u, %bb.v
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define noalias nonnull ptr @l_Lean_Elab_withSaveParentDeclInfoContext___at___00Lean_Elab_Term_withDeclName_spec__1___redArg___lam__0(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4, ptr nofree readnone captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 15 uses
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.d = and i64 %i.c, 1
  %.not.i.i = icmp eq i64 %i.d, 0                 ; 3 uses
  br i1 %.not.i.i, label %bb.b, label %lean_inc.exit.i

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %i.b, align 4, !tbaa !10 ; 3 uses
  %i.e = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.e, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i32 %.val.i.i.i, 1
  store i32 %i.f, ptr %i.b, align 4, !tbaa !10
  br label %lean_inc.exit.i

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_inc.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = atomicrmw add ptr %i.b, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit.i

lean_inc.exit.i:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  tail call void @lean_inc_heartbeat() #9
  %i.h = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #9 ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %lean_inc.exit.i
  tail call void @lean_internal_panic_out_of_memory() #10
  unreachable

bb.g:                                             ; preds = %lean_inc.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 1, ptr %i.h, align 4, !tbaa !10
  store i32 65552, ptr %i.j, align 4
  %6 = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.b, ptr %6, align 8, !tbaa !13
  br i1 %.not.i.i, label %lean_obj_tag.exit, label %lean_obj_tag.exit.thread

lean_obj_tag.exit:                                ; preds = %bb.g
  %i.k = getelementptr i8, ptr %i.b, i64 4
  %.val.i = load i32, ptr %i.k, align 4
  %.mask = and i32 %.val.i, -16777216
  %i.l = icmp eq i32 %.mask, 16777216
  br i1 %i.l, label %bb.h, label %bb.v

lean_obj_tag.exit.thread:                         ; preds = %bb.g
  %i.m = and i64 %i.c, 8589934590
  %i.n = icmp eq i64 %i.m, 2
  br i1 %i.n, label %bb.h, label %lean_dec.exit

bb.h:                                             ; preds = %lean_obj_tag.exit.thread, %lean_obj_tag.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !13   ; 5 uses
  %.val = load i32, ptr %i.b, align 8, !tbaa !10
  %i.q = icmp eq i32 %.val, 1                     ; 2 uses
  br i1 %i.q, label %lean_dec.exit57, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = and i64 %i.r, 1
  %.not.i60 = icmp eq i64 %i.s, 0
  br i1 %.not.i60, label %bb.j, label %lean_inc.exit

bb.j:                                             ; preds = %bb.i
  %.val.i.i71 = load i32, ptr %i.p, align 4, !tbaa !10 ; 3 uses
  %i.t = icmp sgt i32 %.val.i.i71, 0
  br i1 %i.t, label %bb.k, label %bb.l, !prof !11

bb.k:                                             ; preds = %bb.j
  %i.u = add nuw i32 %.val.i.i71, 1
  store i32 %i.u, ptr %i.p, align 4, !tbaa !10
  br label %lean_inc.exit

bb.l:                                             ; preds = %bb.j
  %.not.i.i72 = icmp eq i32 %.val.i.i71, 0
  br i1 %.not.i.i72, label %lean_inc.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = atomicrmw add ptr %i.p, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.m, %bb.l, %bb.k, %bb.i
  br i1 %.not.i.i, label %bb.n, label %lean_dec.exit57

bb.n:                                             ; preds = %lean_inc.exit
  %i.w = load i32, ptr %i.b, align 8, !tbaa !10   ; 3 uses
  %i.x = icmp sgt i32 %i.w, 1
  br i1 %i.x, label %bb.o, label %bb.p, !prof !11

bb.o:                                             ; preds = %bb.n
  %i.y = add nsw i32 %i.w, -1
  store i32 %i.y, ptr %i.b, align 8, !tbaa !10
  br label %lean_dec.exit57

bb.p:                                             ; preds = %bb.n
  %.not.i64 = icmp eq i32 %i.w, 0
  br i1 %.not.i64, label %lean_dec.exit57, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.b) #9
  br label %lean_dec.exit57

lean_dec.exit57:                                  ; preds = %lean_inc.exit, %bb.o, %bb.p, %bb.q, %bb.h
  %.053 = phi ptr [ %i.b, %bb.h ], [ inttoptr (i64 1 to ptr), %bb.q ], [ inttoptr (i64 1 to ptr), %bb.p ], [ inttoptr (i64 1 to ptr), %bb.o ], [ inttoptr (i64 1 to ptr), %lean_inc.exit ] ; 2 uses
  tail call void @lean_inc_heartbeat() #9
  %i.z = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #9 ; 6 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.r, label %lean_alloc_ctor.exit

bb.r:                                             ; preds = %lean_dec.exit57
  tail call void @lean_internal_panic_out_of_memory() #10
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_dec.exit57
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 1, ptr %i.z, align 4, !tbaa !10
  store i32 16842768, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.p, ptr %i.ac, align 8, !tbaa !13
  br i1 %i.q, label %bb.s, label %bb.t

bb.s:                                             ; preds = %lean_alloc_ctor.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %.053, i64 8
  store ptr %i.z, ptr %i.ad, align 8, !tbaa !13
  br label %lean_dec.exit

bb.t:                                             ; preds = %lean_alloc_ctor.exit
  tail call void @lean_inc_heartbeat() #9
  %i.ae = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #9 ; 5 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.u, label %lean_alloc_ctor.exit74

bb.u:                                             ; preds = %bb.t
  tail call void @lean_internal_panic_out_of_memory() #10
  unreachable

lean_alloc_ctor.exit74:                           ; preds = %bb.t
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i32 1, ptr %i.ae, align 4, !tbaa !10
  store i32 16842768, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.z, ptr %i.ah, align 8, !tbaa !13
  br label %lean_dec.exit

bb.v:                                             ; preds = %lean_obj_tag.exit
  %i.ai = load i32, ptr %i.b, align 4, !tbaa !10  ; 3 uses
  %i.aj = icmp sgt i32 %i.ai, 1
  br i1 %i.aj, label %bb.w, label %bb.x, !prof !11

bb.w:                                             ; preds = %bb.v
  %i.ak = add nsw i32 %i.ai, -1
  store i32 %i.ak, ptr %i.b, align 4, !tbaa !10
  br label %lean_dec.exit

bb.x:                                             ; preds = %bb.v
  %.not.i66 = icmp eq i32 %i.ai, 0
  br i1 %.not.i66, label %lean_dec.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.b) #9
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_obj_tag.exit.thread, %bb.y, %bb.x, %bb.w, %lean_alloc_ctor.exit74, %bb.s
  %storemerge = phi ptr [ %i.ae, %lean_alloc_ctor.exit74 ], [ %.053, %bb.s ], [ inttoptr (i64 1 to ptr), %bb.y ], [ inttoptr (i64 1 to ptr), %lean_obj_tag.exit.thread ], [ inttoptr (i64 1 to ptr), %bb.w ], [ inttoptr (i64 1 to ptr), %bb.x ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !13
  ret ptr %i.h
}

; Function Attrs: nounwind uwtable
define noalias nonnull ptr @l_Lean_Elab_withSaveParentDeclInfoContext___at___00Lean_Elab_Term_withDeclName_spec__1___redArg___lam__0___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree readnone captures(none) %6) #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_Elab_withSaveParentDeclInfoContext___at___00Lean_Elab_Term_withDeclName_spec__1___redArg___lam__0(ptr noundef %0, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison)
  %i.b = ptrtoint ptr %5 to i64
  %i.c = and i64 %i.b, 1
  %.not.i15 = icmp eq i64 %i.c, 0
  br i1 %.not.i15, label %bb.b, label %lean_dec.exit16

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %5, align 4, !tbaa !10     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %5, align 4, !tbaa !10
  br label %lean_dec.exit16

bb.d:                                             ; preds = %bb.b
  %.not.i17 = icmp eq i32 %i.d, 0
  br i1 %.not.i17, label %lean_dec.exit16, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #9
  br label %lean_dec.exit16

lean_dec.exit16:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.g = load i32, ptr %4, align 4, !tbaa !10     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %lean_dec.exit16
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %4, align 4, !tbaa !10
  br label %lean_dec_ref.exit27

bb.g:                                             ; preds = %lean_dec.exit16
  %.not.i26 = icmp eq i32 %i.g, 0
  br i1 %.not.i26, label %lean_dec_ref.exit27, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #9
  br label %lean_dec_ref.exit27

lean_dec_ref.exit27:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.j = ptrtoint ptr %3 to i64
  %i.k = and i64 %i.j, 1
  %.not.i13 = icmp eq i64 %i.k, 0
  br i1 %.not.i13, label %bb.i, label %lean_dec.exit14

bb.i:                                             ; preds = %lean_dec_ref.exit27
  %i.l = load i32, ptr %3, align 4, !tbaa !10     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.j, label %bb.k, !prof !11

bb.j:                                             ; preds = %bb.i
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %3, align 4, !tbaa !10
  br label %lean_dec.exit14

bb.k:                                             ; preds = %bb.i
  %.not.i18 = icmp eq i32 %i.l, 0
  br i1 %.not.i18, label %lean_dec.exit14, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #9
  br label %lean_dec.exit14

lean_dec.exit14:                                  ; preds = %bb.l, %bb.k, %bb.j, %lean_dec_ref.exit27
  %i.o = load i32, ptr %2, align 4, !tbaa !10     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.m, label %bb.n, !prof !11

bb.m:                                             ; preds = %lean_dec.exit14
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %2, align 4, !tbaa !10
  br label %lean_dec_ref.exit25

bb.n:                                             ; preds = %lean_dec.exit14
  %.not.i24 = icmp eq i32 %i.o, 0
  br i1 %.not.i24, label %lean_dec_ref.exit25, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #9
  br label %lean_dec_ref.exit25

lean_dec_ref.exit25:                              ; preds = %bb.m, %bb.n, %bb.o
  %i.r = ptrtoint ptr %1 to i64
  %i.s = and i64 %i.r, 1
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %bb.p, label %lean_dec.exit

bb.p:                                             ; preds = %lean_dec_ref.exit25
  %i.t = load i32, ptr %1, align 4, !tbaa !10     ; 3 uses
  %i.u = icmp sgt i32 %i.t, 1
  br i1 %i.u, label %bb.q, label %bb.r, !prof !11

bb.q:                                             ; preds = %bb.p
  %i.v = add nsw i32 %i.t, -1
  store i32 %i.v, ptr %1, align 4, !tbaa !10
  br label %lean_dec.exit

bb.r:                                             ; preds = %bb.p
  %.not.i20 = icmp eq i32 %i.t, 0
  br i1 %.not.i20, label %lean_dec.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #9
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.s, %bb.r, %bb.q, %lean_dec_ref.exit25
  %i.w = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.x = icmp sgt i32 %i.w, 1
  br i1 %i.x, label %bb.t, label %bb.u, !prof !11

bb.t:                                             ; preds = %lean_dec.exit
  %i.y = add nsw i32 %i.w, -1
  store i32 %i.y, ptr %0, align 4, !tbaa !10
  br label %lean_dec_ref.exit23

bb.u:                                             ; preds = %lean_dec.exit
  %.not.i22 = icmp eq i32 %i.w, 0
  br i1 %.not.i22, label %lean_dec_ref.exit23, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #9
  br label %lean_dec_ref.exit23

lean_dec_ref.exit23:                              ; preds = %bb.t, %bb.u, %bb.v
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Init_Data_Array_Basic_0__Array_mapMUnsafe_map___at___00Lean_PersistentArray_mapM___at___00__private_Lean_Elab_InfoTree_Main_0__Lean_Elab_withSavedPartialInfoContext___at___00Lean_Elab_withSaveParentDeclInfoContext___at___00Lean_Elab_Term_withDeclName_spec__1_spec__1_spec__3_spec__5(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) local_unnamed_addr #1 {
bb.a:
  %.not175 = icmp ult i64 %3, %2
  br i1 %.not175, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %10 to i64
  %i.c = and i64 %i.b, 1
  %.not.i95 = icmp eq i64 %i.c, 0
  %i.d = ptrtoint ptr %8 to i64
  %i.e = and i64 %i.d, 1
  %.not.i93 = icmp eq i64 %i.e, 0
  %i.f = ptrtoint ptr %6 to i64
  %i.g = and i64 %i.f, 1
  %.not.i91 = icmp eq i64 %i.g, 0
  br label %bb.f

._crit_edge:                                      ; preds = %lean_dec.exit, %bb.a
  %.077.lcssa = phi ptr [ %4, %bb.a ], [ %.0.i.i153, %lean_dec.exit ]
  %i.h = load i32, ptr %1, align 4, !tbaa !10     ; 3 uses
  %i.i = icmp sgt i32 %i.h, 1
  br i1 %i.i, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %._crit_edge
  %i.j = add nsw i32 %i.h, -1
  store i32 %i.j, ptr %1, align 4, !tbaa !10
  br label %lean_dec_ref.exit103

bb.c:                                             ; preds = %._crit_edge
  %.not.i102 = icmp eq i32 %i.h, 0
  br i1 %.not.i102, label %lean_dec_ref.exit103, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #9
  br label %lean_dec_ref.exit103

lean_dec_ref.exit103:                             ; preds = %bb.b, %bb.c, %bb.d
  tail call void @lean_inc_heartbeat() #9
  %i.k = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #9 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %lean_dec_ref.exit103
  tail call void @lean_internal_panic_out_of_memory() #10
  unreachable

bb.f:                                             ; preds = %.lr.ph, %lean_dec.exit
  %.073177 = phi i64 [ %3, %.lr.ph ], [ %i.cz, %lean_dec.exit ] ; 4 uses
  %.077176 = phi ptr [ %4, %.lr.ph ], [ %.0.i.i153, %lean_dec.exit ] ; 7 uses
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !13
  %.val.i.i = load i32, ptr %1, align 4, !tbaa !10 ; 3 uses
  %i.n = icmp sgt i32 %.val.i.i, 0
  br i1 %i.n, label %bb.g, label %bb.h, !prof !11

bb.g:                                             ; preds = %bb.f
  %i.o = add nuw i32 %.val.i.i, 1
  store i32 %i.o, ptr %1, align 4, !tbaa !10
  br label %lean_inc_ref.exit

bb.h:                                             ; preds = %bb.f
  %.not.i.i = icmp eq i32 %.val.i.i, 0
end_hunk_0
begin_hunk_1_@l_Lean_Elab_Term_getInfoTreeWithContext_x3f___redArg:bb.a
  %i.bp = icmp sgt i32 %i.bo, 1
  br i1 %i.bp, label %bb.am, label %bb.an, !prof !11

bb.am:                                            ; preds = %lean_dec_ref.exit90
  %i.bq = add nsw i32 %i.bo, -1
  store i32 %i.bq, ptr %i.p, align 4, !tbaa !10
  br label %lean_dec_ref.exit88

bb.an:                                            ; preds = %lean_dec_ref.exit90
  %.not.i87 = icmp eq i32 %i.bo, 0
  br i1 %.not.i87, label %lean_dec_ref.exit88, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.p) #9
  br label %lean_dec_ref.exit88

lean_dec_ref.exit88:                              ; preds = %bb.am, %bb.an, %bb.ao
  %i.br = load atomic i32, ptr @l_Lean_Elab_Term_getInfoTreeWithContext_x3f___redArg___closed__2_once seq_cst, align 4, !tbaa !16
  %i.bs = icmp eq i32 %i.br, 1
  br i1 %i.bs, label %bb.ap, label %bb.aq, !prof !11

bb.ap:                                            ; preds = %lean_dec_ref.exit88
  %i.bt = load ptr, ptr @l_Lean_Elab_Term_getInfoTreeWithContext_x3f___redArg___closed__2, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.aq:                                            ; preds = %lean_dec_ref.exit88
  %i.bu = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Elab_Term_getInfoTreeWithContext_x3f___redArg___closed__2, ptr noundef nonnull @l_Lean_Elab_Term_getInfoTreeWithContext_x3f___redArg___closed__2_once, ptr noundef nonnull @_init_l_Lean_Elab_Term_getInfoTreeWithContext_x3f___redArg___closed__2) #9
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.ap, %bb.aq
  %.0.i114 = phi ptr [ %i.bt, %bb.ap ], [ %i.bu, %bb.aq ]
  %i.bv = ptrtoint ptr %i.bh to i64
  %i.bw = and i64 %i.bv, 1
  %.not.i78 = icmp eq i64 %i.bw, 0
  br i1 %.not.i78, label %bb.ar, label %lean_inc.exit79

bb.ar:                                            ; preds = %lean_obj_once.exit
  %.val.i.i115 = load i32, ptr %i.bh, align 4, !tbaa !10 ; 3 uses
  %i.bx = icmp sgt i32 %.val.i.i115, 0
  br i1 %i.bx, label %bb.as, label %bb.at, !prof !11

bb.as:                                            ; preds = %bb.ar
  %i.by = add nuw i32 %.val.i.i115, 1
  store i32 %i.by, ptr %i.bh, align 4, !tbaa !10
  br label %lean_inc.exit79

bb.at:                                            ; preds = %bb.ar
  %.not.i.i116 = icmp eq i32 %.val.i.i115, 0
  br i1 %.not.i.i116, label %lean_inc.exit79, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.bz = atomicrmw add ptr %i.bh, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit79

lean_inc.exit79:                                  ; preds = %bb.au, %bb.at, %bb.as, %lean_obj_once.exit
  %i.ca = ptrtoint ptr %i.bf to i64
  %i.cb = and i64 %i.ca, 1
  %.not.i77 = icmp eq i64 %i.cb, 0
  br i1 %.not.i77, label %bb.av, label %lean_inc.exit

bb.av:                                            ; preds = %lean_inc.exit79
  %.val.i.i118 = load i32, ptr %i.bf, align 4, !tbaa !10 ; 3 uses
  %i.cc = icmp sgt i32 %.val.i.i118, 0
  br i1 %i.cc, label %bb.aw, label %bb.ax, !prof !11

bb.aw:                                            ; preds = %bb.av
  %i.cd = add nuw i32 %.val.i.i118, 1
  store i32 %i.cd, ptr %i.bf, align 4, !tbaa !10
  br label %lean_inc.exit

bb.ax:                                            ; preds = %bb.av
  %.not.i.i119 = icmp eq i32 %.val.i.i118, 0
  br i1 %.not.i.i119, label %lean_inc.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ce = atomicrmw add ptr %i.bf, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.ay, %bb.ax, %bb.aw, %lean_inc.exit79
  %.val.i.i121 = load i32, ptr %i.bd, align 4, !tbaa !10 ; 3 uses
  %i.cf = icmp sgt i32 %.val.i.i121, 0
  br i1 %i.cf, label %bb.az, label %bb.ba, !prof !11

bb.az:                                            ; preds = %lean_inc.exit
  %i.cg = add nuw i32 %.val.i.i121, 1
  store i32 %i.cg, ptr %i.bd, align 4, !tbaa !10
  br label %lean_inc_ref.exit123

bb.ba:                                            ; preds = %lean_inc.exit
  %.not.i.i122 = icmp eq i32 %.val.i.i121, 0
  br i1 %.not.i.i122, label %lean_inc_ref.exit123, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ch = atomicrmw add ptr %i.bd, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit123

lean_inc_ref.exit123:                             ; preds = %bb.az, %bb.ba, %bb.bb
  %.val.i.i124 = load i32, ptr %i.bb, align 4, !tbaa !10 ; 3 uses
  %i.ci = icmp sgt i32 %.val.i.i124, 0
  br i1 %i.ci, label %bb.bc, label %bb.bd, !prof !11

bb.bc:                                            ; preds = %lean_inc_ref.exit123
  %i.cj = add nuw i32 %.val.i.i124, 1
  store i32 %i.cj, ptr %i.bb, align 4, !tbaa !10
  br label %lean_inc_ref.exit126

bb.bd:                                            ; preds = %lean_inc_ref.exit123
  %.not.i.i125 = icmp eq i32 %.val.i.i124, 0
  br i1 %.not.i.i125, label %lean_inc_ref.exit126, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ck = atomicrmw add ptr %i.bb, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit126

lean_inc_ref.exit126:                             ; preds = %bb.bc, %bb.bd, %bb.be
  tail call void @lean_inc_heartbeat() #9
  %i.cl = tail call noalias ptr @mi_malloc_small(i64 noundef 72) #9 ; 12 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.bf, label %lean_alloc_ctor.exit127

bb.bf:                                            ; preds = %lean_inc_ref.exit126
  tail call void @lean_internal_panic_out_of_memory() #10
  unreachable

lean_alloc_ctor.exit127:                          ; preds = %lean_inc_ref.exit126
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  store i32 1, ptr %i.cl, align 4, !tbaa !10
  store i32 524360, ptr %i.cn, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr %i.ao, ptr %i.co, align 8, !tbaa !13
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.cp, align 8, !tbaa !13
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store ptr %i.bb, ptr %i.cq, align 8, !tbaa !13
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  store ptr %.0.i114, ptr %i.cr, align 8, !tbaa !13
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  store ptr %i.bd, ptr %i.cs, align 8, !tbaa !13
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  store ptr %i.bf, ptr %i.ct, align 8, !tbaa !13
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cl, i64 56
  store ptr %i.bh, ptr %i.cu, align 8, !tbaa !13
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cl, i64 64
  store ptr %i.at, ptr %i.cv, align 8, !tbaa !13
  tail call void @lean_inc_heartbeat() #9
  %i.cw = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #9 ; 5 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %bb.bg, label %lean_alloc_ctor.exit128

bb.bg:                                            ; preds = %lean_alloc_ctor.exit127
  tail call void @lean_internal_panic_out_of_memory() #10
  unreachable

lean_alloc_ctor.exit128:                          ; preds = %lean_alloc_ctor.exit127
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  store i32 1, ptr %i.cw, align 4, !tbaa !10
  store i32 65552, ptr %i.cy, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store ptr %i.cl, ptr %i.cz, align 8, !tbaa !13
  tail call void @lean_inc_heartbeat() #9
  %i.da = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #9 ; 6 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %bb.bh, label %lean_alloc_ctor.exit129

bb.bh:                                            ; preds = %lean_alloc_ctor.exit128
  tail call void @lean_internal_panic_out_of_memory() #10
  unreachable

lean_alloc_ctor.exit129:                          ; preds = %lean_alloc_ctor.exit128
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  store i32 1, ptr %i.da, align 4, !tbaa !10
  store i32 131096, ptr %i.dc, align 4
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store ptr %i.cw, ptr %i.dd, align 8, !tbaa !13
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store ptr %i.bn, ptr %i.de, align 8, !tbaa !13
  tail call void @lean_inc_heartbeat() #9
  %i.df = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #9 ; 5 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %bb.bi, label %lean_alloc_ctor.exit130

bb.bi:                                            ; preds = %lean_alloc_ctor.exit129
  tail call void @lean_internal_panic_out_of_memory() #10
  unreachable

lean_alloc_ctor.exit130:                          ; preds = %lean_alloc_ctor.exit129
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  store i32 1, ptr %i.df, align 4, !tbaa !10
  store i32 16842768, ptr %i.dh, align 4
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store ptr %i.da, ptr %i.di, align 8, !tbaa !13
  tail call void @lean_inc_heartbeat() #9
  %i.dj = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #9 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %bb.bj, label %lean_alloc_ctor.exit

bb.bj:                                            ; preds = %lean_alloc_ctor.exit130
  tail call void @lean_internal_panic_out_of_memory() #10
  unreachable

bb.bk:                                            ; preds = %lean_nat_lt.exit, %.split.a
  %i.dl = load i32, ptr %i.p, align 4, !tbaa !10  ; 3 uses
  %i.dm = icmp sgt i32 %i.dl, 1
  br i1 %i.dm, label %bb.bl, label %bb.bm, !prof !11

bb.bl:                                            ; preds = %bb.bk
  %i.dn = add nsw i32 %i.dl, -1
  store i32 %i.dn, ptr %i.p, align 4, !tbaa !10
  br label %lean_dec_ref.exit86

bb.bm:                                            ; preds = %bb.bk
  %.not.i85 = icmp eq i32 %i.dl, 0
  br i1 %.not.i85, label %lean_dec_ref.exit86, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.p) #9
  br label %lean_dec_ref.exit86

lean_dec_ref.exit86:                              ; preds = %bb.bl, %bb.bm, %bb.bn
  %i.do = load i32, ptr %i.l, align 8, !tbaa !10  ; 3 uses
  %i.dp = icmp sgt i32 %i.do, 1
  br i1 %i.dp, label %bb.bo, label %bb.bp, !prof !11

bb.bo:                                            ; preds = %lean_dec_ref.exit86
  %i.dq = add nsw i32 %i.do, -1
  store i32 %i.dq, ptr %i.l, align 8, !tbaa !10
  br label %lean_dec_ref.exit84

bb.bp:                                            ; preds = %lean_dec_ref.exit86
  %.not.i83 = icmp eq i32 %i.do, 0
  br i1 %.not.i83, label %lean_dec_ref.exit84, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.l) #9
  br label %lean_dec_ref.exit84

lean_dec_ref.exit84:                              ; preds = %bb.bo, %bb.bp, %bb.bq
  %i.dr = load atomic i32, ptr @l_Lean_Elab_Term_getInfoTreeWithContext_x3f___redArg___closed__5_once seq_cst, align 4, !tbaa !16
  %i.ds = icmp eq i32 %i.dr, 1
  br i1 %i.ds, label %bb.br, label %bb.bs, !prof !11

bb.br:                                            ; preds = %lean_dec_ref.exit84
  %i.dt = load ptr, ptr @l_Lean_Elab_Term_getInfoTreeWithContext_x3f___redArg___closed__5, align 8, !tbaa !13
  br label %lean_obj_once.exit133

bb.bs:                                            ; preds = %lean_dec_ref.exit84
  %i.du = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Elab_Term_getInfoTreeWithContext_x3f___redArg___closed__5, ptr noundef nonnull @l_Lean_Elab_Term_getInfoTreeWithContext_x3f___redArg___closed__5_once, ptr noundef nonnull @_init_l_Lean_Elab_Term_getInfoTreeWithContext_x3f___redArg___closed__5) #9
  br label %lean_obj_once.exit133

lean_obj_once.exit133:                            ; preds = %bb.br, %bb.bs
  %.0.i132 = phi ptr [ %i.dt, %bb.br ], [ %i.du, %bb.bs ]
  %i.dv = tail call ptr @lean_panic_fn_borrowed(ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef %.0.i132) #9
  tail call void @lean_inc_heartbeat() #9
  %i.dw = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #9 ; 2 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %bb.bt, label %lean_alloc_ctor.exit

bb.bt:                                            ; preds = %lean_obj_once.exit133
  tail call void @lean_internal_panic_out_of_memory() #10
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_obj_once.exit133, %lean_alloc_ctor.exit130, %lean_dec_ref.exit92
  %.sink165 = phi ptr [ %i.dj, %lean_alloc_ctor.exit130 ], [ %i.ak, %lean_dec_ref.exit92 ], [ %i.dw, %lean_obj_once.exit133 ] ; 4 uses
  %.sink = phi ptr [ %i.df, %lean_alloc_ctor.exit130 ], [ inttoptr (i64 1 to ptr), %lean_dec_ref.exit92 ], [ %i.dv, %lean_obj_once.exit133 ]
  %i.dy = getelementptr inbounds nuw i8, ptr %.sink165, i64 4
  store i32 1, ptr %.sink165, align 4, !tbaa !10
  store i32 65552, ptr %i.dy, align 4
  %i.dz = getelementptr inbounds nuw i8, ptr %.sink165, i64 8
  store ptr %.sink, ptr %i.dz, align 8, !tbaa !13
  ret ptr %.sink165
}

declare ptr @l_Lean_PersistentArray_get_x21___redArg(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noalias nonnull ptr @_init_l_Lean_Elab_Term_getInfoTreeWithContext_x3f___redArg___closed__2() #1 {
bb.a:
  %i.a = load atomic i32, ptr @l_Lean_Elab_Term_getInfoTreeWithContext_x3f___redArg___closed__1_once seq_cst, align 4, !tbaa !16
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Lean_Elab_Term_getInfoTreeWithContext_x3f___redArg___closed__1, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Elab_Term_getInfoTreeWithContext_x3f___redArg___closed__1, ptr noundef nonnull @l_Lean_Elab_Term_getInfoTreeWithContext_x3f___redArg___closed__1_once, ptr noundef nonnull @_init_l_Lean_Elab_Term_getInfoTreeWithContext_x3f___redArg___closed__1) #9
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 6 uses
  tail call void @lean_inc_heartbeat() #9
  %i.e = tail call noalias ptr @mi_malloc_small(i64 noundef 88) #9 ; 11 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %lean_alloc_ctor.exit

bb.d:                                             ; preds = %lean_obj_once.exit
  tail call void @lean_internal_panic_out_of_memory() #10
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_obj_once.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 1, ptr %i.e, align 4, !tbaa !10
  store i32 655448, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store <4 x ptr> <ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 1 to ptr)>, ptr %i.h, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %.0.i, ptr %i.i, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %.0.i, ptr %i.j, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr %.0.i, ptr %i.k, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store ptr %.0.i, ptr %i.l, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store ptr %.0.i, ptr %i.m, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store ptr %.0.i, ptr %i.n, align 8, !tbaa !13
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Lean_Elab_Term_getInfoTreeWithContext_x3f___redArg___closed__5() #1 {
bb.a:
  %i.a = tail call ptr @l_mkPanicMessageWithDecl(ptr noundef nonnull @l_Lean_Elab_Term_getFVarLocalDecl_x21___closed__0_value, ptr noundef nonnull @l_Lean_Elab_Term_getInfoTreeWithContext_x3f___redArg___closed__3_value, ptr noundef nonnull inttoptr (i64 1519 to ptr), ptr noundef nonnull inttoptr (i64 23 to ptr), ptr noundef nonnull @l_Lean_Elab_Term_getInfoTreeWithContext_x3f___redArg___closed__4_value) #9
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define noalias noundef nonnull ptr @l_Lean_Elab_Term_getInfoTreeWithContext_x3f___redArg___boxed(ptr noundef %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_Elab_Term_getInfoTreeWithContext_x3f___redArg(ptr noundef %0, ptr noundef %1)
  %i.b = ptrtoint ptr %1 to i64
  %i.c = and i64 %i.b, 1
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !10     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %1, align 4, !tbaa !10
  br label %lean_dec.exit

bb.d:                                             ; preds = %bb.b
  %.not.i5 = icmp eq i32 %i.d, 0
  br i1 %.not.i5, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #9
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.g = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %lean_dec.exit
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %0, align 4, !tbaa !10
  br label %lean_dec_ref.exit7

bb.g:                                             ; preds = %lean_dec.exit
  %.not.i6 = icmp eq i32 %i.g, 0
  br i1 %.not.i6, label %lean_dec_ref.exit7, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #9
  br label %lean_dec_ref.exit7

lean_dec_ref.exit7:                               ; preds = %bb.f, %bb.g, %bb.h
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define noalias noundef nonnull ptr @l_Lean_Elab_Term_getInfoTreeWithContext_x3f(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_Elab_Term_getInfoTreeWithContext_x3f___redArg(ptr noundef %4, ptr noundef %5)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define noalias noundef nonnull ptr @l_Lean_Elab_Term_getInfoTreeWithContext_x3f___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef readnone captures(none) %6) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias noundef nonnull ptr @l_Lean_Elab_Term_getInfoTreeWithContext_x3f___redArg(ptr noundef readonly %4, ptr noundef %5)
  %i.b = ptrtoint ptr %5 to i64
  %i.c = and i64 %i.b, 1
  %.not.i15 = icmp eq i64 %i.c, 0
  br i1 %.not.i15, label %bb.b, label %lean_dec.exit16

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %5, align 4, !tbaa !10     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %5, align 4, !tbaa !10
end_hunk_1
begin_hunk_2_@l___private_Lean_Util_Trace_0__Lean_getResetTraces___at___00__private_Lean_Elab_Term_TermElabM_0__Lean_Elab_Term_applyAttributesCore_spec__2___redArg:bb.a
  store i32 %i.bd, ptr %i.ad, align 4, !tbaa !10
  br label %lean_inc.exit107

bb.ac:                                            ; preds = %bb.aa
  %.not.i.i139 = icmp eq i32 %.val.i.i138, 0
  br i1 %.not.i.i139, label %lean_inc.exit107, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.be = atomicrmw add ptr %i.ad, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit107

lean_inc.exit107:                                 ; preds = %bb.ad, %bb.ac, %bb.ab, %lean_inc.exit109
  %i.bf = ptrtoint ptr %i.u to i64
  %i.bg = and i64 %i.bf, 1
  %.not.i104 = icmp eq i64 %i.bg, 0
  br i1 %.not.i104, label %bb.ae, label %lean_inc.exit105

bb.ae:                                            ; preds = %lean_inc.exit107
  %.val.i.i141 = load i32, ptr %i.u, align 4, !tbaa !10 ; 3 uses
  %i.bh = icmp sgt i32 %.val.i.i141, 0
  br i1 %i.bh, label %bb.af, label %bb.ag, !prof !11

bb.af:                                            ; preds = %bb.ae
  %i.bi = add nuw i32 %.val.i.i141, 1
  store i32 %i.bi, ptr %i.u, align 4, !tbaa !10
  br label %lean_inc.exit105

bb.ag:                                            ; preds = %bb.ae
  %.not.i.i142 = icmp eq i32 %.val.i.i141, 0
  br i1 %.not.i.i142, label %lean_inc.exit105, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bj = atomicrmw add ptr %i.u, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit105

lean_inc.exit105:                                 ; preds = %bb.ah, %bb.ag, %bb.af, %lean_inc.exit107
  %i.bk = ptrtoint ptr %i.ab to i64
  %i.bl = and i64 %i.bk, 1
  %.not.i102 = icmp eq i64 %i.bl, 0
  br i1 %.not.i102, label %bb.ai, label %lean_inc.exit103

bb.ai:                                            ; preds = %lean_inc.exit105
  %.val.i.i144 = load i32, ptr %i.ab, align 4, !tbaa !10 ; 3 uses
  %i.bm = icmp sgt i32 %.val.i.i144, 0
  br i1 %i.bm, label %bb.aj, label %bb.ak, !prof !11

bb.aj:                                            ; preds = %bb.ai
  %i.bn = add nuw i32 %.val.i.i144, 1
  store i32 %i.bn, ptr %i.ab, align 4, !tbaa !10
  br label %lean_inc.exit103

bb.ak:                                            ; preds = %bb.ai
  %.not.i.i145 = icmp eq i32 %.val.i.i144, 0
  br i1 %.not.i.i145, label %lean_inc.exit103, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bo = atomicrmw add ptr %i.ab, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit103

lean_inc.exit103:                                 ; preds = %bb.al, %bb.ak, %bb.aj, %lean_inc.exit105
  %i.bp = ptrtoint ptr %i.z to i64
  %i.bq = and i64 %i.bp, 1
  %.not.i100 = icmp eq i64 %i.bq, 0
  br i1 %.not.i100, label %bb.am, label %lean_inc.exit101

bb.am:                                            ; preds = %lean_inc.exit103
  %.val.i.i147 = load i32, ptr %i.z, align 4, !tbaa !10 ; 3 uses
  %i.br = icmp sgt i32 %.val.i.i147, 0
  br i1 %i.br, label %bb.an, label %bb.ao, !prof !11

bb.an:                                            ; preds = %bb.am
  %i.bs = add nuw i32 %.val.i.i147, 1
  store i32 %i.bs, ptr %i.z, align 4, !tbaa !10
  br label %lean_inc.exit101

bb.ao:                                            ; preds = %bb.am
  %.not.i.i148 = icmp eq i32 %.val.i.i147, 0
  br i1 %.not.i.i148, label %lean_inc.exit101, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.bt = atomicrmw add ptr %i.z, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit101

lean_inc.exit101:                                 ; preds = %bb.ap, %bb.ao, %bb.an, %lean_inc.exit103
  %i.bu = ptrtoint ptr %i.x to i64
  %i.bv = and i64 %i.bu, 1
  %.not.i98 = icmp eq i64 %i.bv, 0
  br i1 %.not.i98, label %bb.aq, label %lean_inc.exit99

bb.aq:                                            ; preds = %lean_inc.exit101
  %.val.i.i150 = load i32, ptr %i.x, align 4, !tbaa !10 ; 3 uses
  %i.bw = icmp sgt i32 %.val.i.i150, 0
  br i1 %i.bw, label %bb.ar, label %bb.as, !prof !11

bb.ar:                                            ; preds = %bb.aq
  %i.bx = add nuw i32 %.val.i.i150, 1
  store i32 %i.bx, ptr %i.x, align 4, !tbaa !10
  br label %lean_inc.exit99

bb.as:                                            ; preds = %bb.aq
  %.not.i.i151 = icmp eq i32 %.val.i.i150, 0
  br i1 %.not.i.i151, label %lean_inc.exit99, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.by = atomicrmw add ptr %i.x, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit99

lean_inc.exit99:                                  ; preds = %bb.at, %bb.as, %bb.ar, %lean_inc.exit101
  %i.bz = ptrtoint ptr %i.v to i64
  %i.ca = and i64 %i.bz, 1
  %.not.i97 = icmp eq i64 %i.ca, 0
  br i1 %.not.i97, label %bb.au, label %lean_inc.exit

bb.au:                                            ; preds = %lean_inc.exit99
  %.val.i.i153 = load i32, ptr %i.v, align 4, !tbaa !10 ; 3 uses
  %i.cb = icmp sgt i32 %.val.i.i153, 0
  br i1 %i.cb, label %bb.av, label %bb.aw, !prof !11

bb.av:                                            ; preds = %bb.au
  %i.cc = add nuw i32 %.val.i.i153, 1
  store i32 %i.cc, ptr %i.v, align 4, !tbaa !10
  br label %lean_inc.exit

bb.aw:                                            ; preds = %bb.au
  %.not.i.i154 = icmp eq i32 %.val.i.i153, 0
  br i1 %.not.i.i154, label %lean_inc.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.cd = atomicrmw add ptr %i.v, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %lean_inc.exit99, %bb.av, %bb.aw, %bb.ax
  %i.ce = load i32, ptr %i.r, align 8, !tbaa !10  ; 3 uses
  %i.cf = icmp sgt i32 %i.ce, 1
  br i1 %i.cf, label %bb.ay, label %bb.az, !prof !11

bb.ay:                                            ; preds = %lean_inc.exit
  %i.cg = add nsw i32 %i.ce, -1
  store i32 %i.cg, ptr %i.r, align 8, !tbaa !10
  br label %lean_dec.exit94

bb.az:                                            ; preds = %lean_inc.exit
  %.not.i115 = icmp eq i32 %i.ce, 0
  br i1 %.not.i115, label %lean_dec.exit94, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.r) #9
  br label %lean_dec.exit94

lean_dec.exit94:                                  ; preds = %bb.ay, %bb.az, %bb.ba, %lean_dec_ref.exit124
  %.090 = phi ptr [ %i.r, %lean_dec_ref.exit124 ], [ inttoptr (i64 1 to ptr), %bb.ba ], [ inttoptr (i64 1 to ptr), %bb.az ], [ inttoptr (i64 1 to ptr), %bb.ay ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !18
  %.val = load i32, ptr %i.u, align 8, !tbaa !10  ; 4 uses
  %i.cj = icmp eq i32 %.val, 1                    ; 2 uses
  br i1 %i.cj, label %bb.bb, label %bb.bg

bb.bb:                                            ; preds = %lean_dec.exit94
  %i.ck = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !13 ; 4 uses
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = and i64 %i.cm, 1
  %.not.i91 = icmp eq i64 %i.cn, 0
  br i1 %.not.i91, label %bb.bc, label %lean_dec_ref.exit122

bb.bc:                                            ; preds = %bb.bb
  %i.co = load i32, ptr %i.cl, align 4, !tbaa !10 ; 3 uses
  %i.cp = icmp sgt i32 %i.co, 1
  br i1 %i.cp, label %bb.bd, label %bb.be, !prof !11

bb.bd:                                            ; preds = %bb.bc
  %i.cq = add nsw i32 %i.co, -1
  store i32 %i.cq, ptr %i.cl, align 4, !tbaa !10
  br label %lean_dec_ref.exit122

bb.be:                                            ; preds = %bb.bc
  %.not.i117 = icmp eq i32 %i.co, 0
  br i1 %.not.i117, label %lean_dec_ref.exit122, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cl) #9
  br label %lean_dec_ref.exit122

bb.bg:                                            ; preds = %lean_dec.exit94
  %i.cr = icmp sgt i32 %.val, 1
  br i1 %i.cr, label %bb.bh, label %bb.bi, !prof !11

bb.bh:                                            ; preds = %bb.bg
  %i.cs = add nsw i32 %.val, -1
  store i32 %i.cs, ptr %i.u, align 8, !tbaa !10
  br label %lean_dec_ref.exit122

bb.bi:                                            ; preds = %bb.bg
  %.not.i119 = icmp eq i32 %.val, 0
  br i1 %.not.i119, label %lean_dec_ref.exit122, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.u) #9
  br label %lean_dec_ref.exit122

lean_dec_ref.exit122:                             ; preds = %bb.bh, %bb.bi, %bb.bj, %bb.bb, %bb.bd, %bb.be, %bb.bf
  %.088 = phi ptr [ %i.u, %bb.bb ], [ %i.u, %bb.bf ], [ %i.u, %bb.be ], [ %i.u, %bb.bd ], [ inttoptr (i64 1 to ptr), %bb.bj ], [ inttoptr (i64 1 to ptr), %bb.bi ], [ inttoptr (i64 1 to ptr), %bb.bh ] ; 2 uses
  %i.ct = tail call ptr @lean_alloc_object(i64 noundef 280) #9 ; 5 uses
  store i32 1, ptr %i.ct, align 4, !tbaa !10
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4
  %i.cw = and i32 %i.cv, 65535
  %i.cx = or disjoint i32 %i.cw, -167772160
  store i32 %i.cx, ptr %i.cu, align 4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store i64 0, ptr %i.cy, align 8, !tbaa !18
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store i64 32, ptr %i.cz, align 8, !tbaa !18
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ct) #9
  %i.da = load atomic i32, ptr @l_Lean_Elab_Tactic_instInhabitedTacticFinishedSnapshot___closed__2_once seq_cst, align 4, !tbaa !16
  %i.db = icmp eq i32 %i.da, 1
  br i1 %i.db, label %bb.bk, label %bb.bl, !prof !11

bb.bk:                                            ; preds = %lean_dec_ref.exit122
  %i.dc = load ptr, ptr @l_Lean_Elab_Tactic_instInhabitedTacticFinishedSnapshot___closed__2, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.bl:                                            ; preds = %lean_dec_ref.exit122
  %i.dd = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Elab_Tactic_instInhabitedTacticFinishedSnapshot___closed__2, ptr noundef nonnull @l_Lean_Elab_Tactic_instInhabitedTacticFinishedSnapshot___closed__2_once, ptr noundef nonnull @_init_l_Lean_Elab_Tactic_instInhabitedTacticFinishedSnapshot___closed__2) #9
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.bk, %bb.bl
  %.0.i = phi ptr [ %i.dc, %bb.bk ], [ %i.dd, %bb.bl ] ; 2 uses
  br i1 %i.cj, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %lean_obj_once.exit
  %i.de = getelementptr inbounds nuw i8, ptr %.088, i64 8
  store ptr %.0.i, ptr %i.de, align 8, !tbaa !13
  br label %bb.bp

bb.bn:                                            ; preds = %lean_obj_once.exit
  tail call void @lean_inc_heartbeat() #9
  %i.df = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #9 ; 6 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %bb.bo, label %lean_alloc_ctor.exit

bb.bo:                                            ; preds = %bb.bn
  tail call void @lean_internal_panic_out_of_memory() #10
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.bn
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  store i32 1, ptr %i.df, align 4, !tbaa !10
  store i32 65560, ptr %i.dh, align 4
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store ptr %.0.i, ptr %i.di, align 8, !tbaa !13
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  store i64 %i.ci, ptr %i.dj, align 8, !tbaa !18
  br label %bb.bp

bb.bp:                                            ; preds = %lean_alloc_ctor.exit, %bb.bm
  %.086 = phi ptr [ %.088, %bb.bm ], [ %i.df, %lean_alloc_ctor.exit ] ; 2 uses
  br i1 %i.ak, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.dk = getelementptr inbounds nuw i8, ptr %.090, i64 40
  store ptr %.086, ptr %i.dk, align 8, !tbaa !13
  br label %bb.bt

bb.br:                                            ; preds = %bb.bp
  tail call void @lean_inc_heartbeat() #9
  %i.dl = tail call noalias ptr @mi_malloc_small(i64 noundef 80) #9 ; 13 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %bb.bs, label %lean_alloc_ctor.exit156

bb.bs:                                            ; preds = %bb.br
  tail call void @lean_internal_panic_out_of_memory() #10
  unreachable

lean_alloc_ctor.exit156:                          ; preds = %bb.br
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  store i32 1, ptr %i.dl, align 4, !tbaa !10
  store i32 589904, ptr %i.dn, align 4
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store ptr %i.v, ptr %i.do, align 8, !tbaa !13
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store ptr %i.x, ptr %i.dp, align 8, !tbaa !13
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  store ptr %i.z, ptr %i.dq, align 8, !tbaa !13
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  store ptr %i.ab, ptr %i.dr, align 8, !tbaa !13
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 40
  store ptr %.086, ptr %i.ds, align 8, !tbaa !13
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dl, i64 48
  store ptr %i.ad, ptr %i.dt, align 8, !tbaa !13
  %i.du = getelementptr inbounds nuw i8, ptr %i.dl, i64 56
  store ptr %i.af, ptr %i.du, align 8, !tbaa !13
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dl, i64 64
  store ptr %i.ah, ptr %i.dv, align 8, !tbaa !13
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dl, i64 72
  store ptr %i.aj, ptr %i.dw, align 8, !tbaa !13
  br label %bb.bt

bb.bt:                                            ; preds = %lean_alloc_ctor.exit156, %bb.bq
  %.085 = phi ptr [ %.090, %bb.bq ], [ %i.dl, %lean_alloc_ctor.exit156 ]
  %i.dx = tail call ptr @lean_st_ref_set(ptr noundef %0, ptr noundef nonnull %.085) #9 ; 0 uses
  tail call void @lean_inc_heartbeat() #9
  %i.dy = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #9 ; 5 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %bb.bu, label %lean_alloc_ctor.exit157

bb.bu:                                            ; preds = %bb.bt
  tail call void @lean_internal_panic_out_of_memory() #10
  unreachable

lean_alloc_ctor.exit157:                          ; preds = %bb.bt
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  store i32 1, ptr %i.dy, align 4, !tbaa !10
  store i32 65552, ptr %i.ea, align 4
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store ptr %i.k, ptr %i.eb, align 8, !tbaa !13
  ret ptr %i.dy
}

; Function Attrs: nounwind uwtable
define internal noalias nonnull ptr @_init_l_Lean_Elab_Tactic_instInhabitedTacticFinishedSnapshot___closed__2() #1 {
bb.a:
  %i.a = tail call ptr @lean_alloc_object(i64 noundef 280) #9 ; 5 uses
  store i32 1, ptr %i.a, align 4, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 65535
  %i.e = or disjoint i32 %i.d, -167772160
  store i32 %i.e, ptr %i.b, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 32, ptr %i.g, align 8, !tbaa !18
  %i.h = load atomic i32, ptr @l_Lean_Elab_Tactic_instInhabitedTacticFinishedSnapshot___closed__1_once seq_cst, align 4, !tbaa !16
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr @l_Lean_Elab_Tactic_instInhabitedTacticFinishedSnapshot___closed__1, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.k = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Elab_Tactic_instInhabitedTacticFinishedSnapshot___closed__1, ptr noundef nonnull @l_Lean_Elab_Tactic_instInhabitedTacticFinishedSnapshot___closed__1_once, ptr noundef nonnull @_init_l_Lean_Elab_Tactic_instInhabitedTacticFinishedSnapshot___closed__1) #9
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.j, %bb.b ], [ %i.k, %bb.c ]
  tail call void @lean_inc_heartbeat() #9
  %i.l = tail call noalias ptr @mi_malloc_small(i64 noundef 48) #9 ; 9 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %lean_alloc_ctor.exit

bb.d:                                             ; preds = %lean_obj_once.exit
  tail call void @lean_internal_panic_out_of_memory() #10
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_obj_once.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 1, ptr %i.l, align 4, !tbaa !10
  store i32 262192, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %.0.i, ptr %i.o, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.a, ptr %i.p, align 8, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr inttoptr (i64 1 to ptr), ptr %i.q, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.r, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i64 5, ptr %i.s, align 8, !tbaa !18
  ret ptr %i.l
}

; Function Attrs: nounwind uwtable
define noalias nonnull ptr @l___private_Lean_Util_Trace_0__Lean_getResetTraces___at___00__private_Lean_Elab_Term_TermElabM_0__Lean_Elab_Term_applyAttributesCore_spec__2___redArg___boxed(ptr noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l___private_Lean_Util_Trace_0__Lean_getResetTraces___at___00__private_Lean_Elab_Term_TermElabM_0__Lean_Elab_Term_applyAttributesCore_spec__2___redArg(ptr noundef %0)
  %i.b = ptrtoint ptr %0 to i64
  %i.c = and i64 %i.b, 1
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit

bb.d:                                             ; preds = %bb.b
  %.not.i3 = icmp eq i32 %i.d, 0
  br i1 %.not.i3, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #9
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
end_hunk_2
