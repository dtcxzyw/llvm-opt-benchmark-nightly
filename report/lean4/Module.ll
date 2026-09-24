Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/Module?download=true
inline.NumInlined: 13703
inline.NumDeleted: 115
loop-unroll.NumCompletelyUnrolled: 126
loop-unroll.NumUnrolled: 126
begin_hunk_0_@l_Option_instBEq_beq___at___00__private_Lake_Build_Common_0__Lake_checkHashUpToDate_x27___at___00Lake_SavedTrace_replayIfUpToDate_x27___at___00__private_Lake_Build_Module_0__Lake_Module_recBuildLean_fetchCore_spec__0_spec__0_spec__1:bb.a
  %.val = load i64, ptr %i.y, align 8, !tbaa !15
  %i.z = icmp eq i64 %.val13, %.val
  br label %bb.k

bb.k:                                             ; preds = %lean_obj_tag.exit21, %lean_obj_tag.exit17, %bb.j
  %.0.shrunk = phi i1 [ %i.n, %lean_obj_tag.exit17 ], [ %i.z, %bb.j ], [ false, %lean_obj_tag.exit21 ]
  %.0 = zext i1 %.0.shrunk to i8
  ret i8 %.0
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Option_instBEq_beq___at___00__private_Lake_Build_Common_0__Lake_checkHashUpToDate_x27___at___00Lake_SavedTrace_replayIfUpToDate_x27___at___00__private_Lake_Build_Module_0__Lake_Module_recBuildLean_fetchCore_spec__0_spec__0_spec__1___boxed(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0                 ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %lean_obj_tag.exit.i

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 4
  %.val.i.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i.i, 24
  br label %lean_obj_tag.exit.i

lean_obj_tag.exit.i:                              ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  %i.g = icmp eq i32 %.0.i.i, 0
  %i.h = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.i = and i64 %i.h, 1
  %.not.i14.i = icmp eq i64 %i.i, 0               ; 3 uses
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %lean_obj_tag.exit.i
  br i1 %.not.i14.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = lshr i64 %i.h, 1
  %i.k = trunc i64 %i.j to i32
  br label %lean_obj_tag.exit17.i

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %1, i64 4
  %.val.i16.i = load i32, ptr %i.l, align 4
  %i.m = lshr i32 %.val.i16.i, 24
  br label %lean_obj_tag.exit17.i

lean_obj_tag.exit17.i:                            ; preds = %bb.f, %bb.e
  %.0.i15.i = phi i32 [ %i.k, %bb.e ], [ %i.m, %bb.f ]
  %i.n = icmp eq i32 %.0.i15.i, 0
  br label %l_Option_instBEq_beq___at___00__private_Lake_Build_Common_0__Lake_checkHashUpToDate_x27___at___00Lake_SavedTrace_replayIfUpToDate_x27___at___00__private_Lake_Build_Module_0__Lake_Module_recBuildLean_fetchCore_spec__0_spec__0_spec__1.exit

bb.g:                                             ; preds = %lean_obj_tag.exit.i
  br i1 %.not.i14.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = lshr i64 %i.h, 1
  %i.p = trunc i64 %i.o to i32
  br label %lean_obj_tag.exit21.i

bb.i:                                             ; preds = %bb.g
  %i.q = getelementptr i8, ptr %1, i64 4
  %.val.i20.i = load i32, ptr %i.q, align 4
  %i.r = lshr i32 %.val.i20.i, 24
  br label %lean_obj_tag.exit21.i

lean_obj_tag.exit21.i:                            ; preds = %bb.i, %bb.h
  %.0.i19.i = phi i32 [ %i.p, %bb.h ], [ %i.r, %bb.i ]
  %i.s = icmp eq i32 %.0.i19.i, 0
  br i1 %i.s, label %l_Option_instBEq_beq___at___00__private_Lake_Build_Common_0__Lake_checkHashUpToDate_x27___at___00Lake_SavedTrace_replayIfUpToDate_x27___at___00__private_Lake_Build_Module_0__Lake_Module_recBuildLean_fetchCore_spec__0_spec__0_spec__1.exit, label %bb.j

bb.j:                                             ; preds = %lean_obj_tag.exit21.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !10
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !10
  %i.x = getelementptr i8, ptr %i.u, i64 8
  %.val13.i = load i64, ptr %i.x, align 8, !tbaa !15
  %i.y = getelementptr i8, ptr %i.w, i64 8
  %.val.i = load i64, ptr %i.y, align 8, !tbaa !15
  %i.z = icmp eq i64 %.val13.i, %.val.i
  br label %l_Option_instBEq_beq___at___00__private_Lake_Build_Common_0__Lake_checkHashUpToDate_x27___at___00Lake_SavedTrace_replayIfUpToDate_x27___at___00__private_Lake_Build_Module_0__Lake_Module_recBuildLean_fetchCore_spec__0_spec__0_spec__1.exit

l_Option_instBEq_beq___at___00__private_Lake_Build_Common_0__Lake_checkHashUpToDate_x27___at___00Lake_SavedTrace_replayIfUpToDate_x27___at___00__private_Lake_Build_Module_0__Lake_Module_recBuildLean_fetchCore_spec__0_spec__0_spec__1.exit: ; preds = %lean_obj_tag.exit17.i, %lean_obj_tag.exit21.i, %bb.j
  %.0.shrunk.i = phi i1 [ %i.n, %lean_obj_tag.exit17.i ], [ %i.z, %bb.j ], [ false, %lean_obj_tag.exit21.i ]
  br i1 %.not.i14.i, label %bb.k, label %lean_dec.exit6

bb.k:                                             ; preds = %l_Option_instBEq_beq___at___00__private_Lake_Build_Common_0__Lake_checkHashUpToDate_x27___at___00Lake_SavedTrace_replayIfUpToDate_x27___at___00__private_Lake_Build_Module_0__Lake_Module_recBuildLean_fetchCore_spec__0_spec__0_spec__1.exit
  %i.aa = load i32, ptr %1, align 4, !tbaa !12    ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 1
  br i1 %i.ab, label %bb.l, label %bb.m, !prof !13

bb.l:                                             ; preds = %bb.k
  %i.ac = add nsw i32 %i.aa, -1
  store i32 %i.ac, ptr %1, align 4, !tbaa !12
  br label %lean_dec.exit6

bb.m:                                             ; preds = %bb.k
  %.not.i7 = icmp eq i32 %i.aa, 0
  br i1 %.not.i7, label %lean_dec.exit6, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #9
  br label %lean_dec.exit6

lean_dec.exit6:                                   ; preds = %bb.n, %bb.m, %bb.l, %l_Option_instBEq_beq___at___00__private_Lake_Build_Common_0__Lake_checkHashUpToDate_x27___at___00Lake_SavedTrace_replayIfUpToDate_x27___at___00__private_Lake_Build_Module_0__Lake_Module_recBuildLean_fetchCore_spec__0_spec__0_spec__1.exit
  br i1 %.not.i.i, label %bb.o, label %lean_dec.exit

bb.o:                                             ; preds = %lean_dec.exit6
  %i.ad = load i32, ptr %0, align 4, !tbaa !12    ; 3 uses
  %i.ae = icmp sgt i32 %i.ad, 1
  br i1 %i.ae, label %bb.p, label %bb.q, !prof !13

bb.p:                                             ; preds = %bb.o
  %i.af = add nsw i32 %i.ad, -1
  store i32 %i.af, ptr %0, align 4, !tbaa !12
  br label %lean_dec.exit

bb.q:                                             ; preds = %bb.o
  %.not.i8 = icmp eq i32 %i.ad, 0
  br i1 %.not.i8, label %lean_dec.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #9
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.r, %bb.q, %bb.p, %lean_dec.exit6
  %i.ag = select i1 %.0.shrunk.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 1 to ptr)
  ret ptr %i.ag
}

; Function Attrs: nounwind uwtable
define noundef nonnull ptr @l___private_Lake_Build_Common_0__Lake_checkHashUpToDate_x27___at___00Lake_SavedTrace_replayIfUpToDate_x27___at___00__private_Lake_Build_Module_0__Lake_Module_recBuildLean_fetchCore_spec__0_spec__0___redArg(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15
  tail call void @lean_inc_heartbeat() #9
  %i.c = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #9 ; 8 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %lean_box_uint64.exit

bb.b:                                             ; preds = %bb.a
  tail call void @lean_internal_panic_out_of_memory() #10
  unreachable

lean_box_uint64.exit:                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 1, ptr %i.c, align 4, !tbaa !12
  store i32 16, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i64 %i.b, ptr %i.f, align 8, !tbaa !15
  tail call void @lean_inc_heartbeat() #9
  %i.g = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #9 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %lean_alloc_ctor.exit

bb.c:                                             ; preds = %lean_box_uint64.exit
  tail call void @lean_internal_panic_out_of_memory() #10
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_box_uint64.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 1, ptr %i.g, align 4, !tbaa !12
  store i32 16842768, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.c, ptr %i.j, align 8, !tbaa !10
  %i.k = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not.i14.i58 = icmp eq i64 %i.l, 0
  br i1 %.not.i14.i58, label %bb.e, label %bb.d

bb.d:                                             ; preds = %lean_alloc_ctor.exit
  %i.m = lshr i64 %i.k, 1
  %i.n = trunc i64 %i.m to i32
  br label %lean_obj_tag.exit21.i

bb.e:                                             ; preds = %lean_alloc_ctor.exit
  %i.o = getelementptr i8, ptr %3, i64 4
  %.val.i20.i = load i32, ptr %i.o, align 4
  %i.p = lshr i32 %.val.i20.i, 24
  br label %lean_obj_tag.exit21.i

lean_obj_tag.exit21.i:                            ; preds = %bb.e, %bb.d
  %.0.i19.i = phi i32 [ %i.n, %bb.d ], [ %i.p, %bb.e ]
  %i.q = icmp eq i32 %.0.i19.i, 0
  br i1 %i.q, label %.preheader.i, label %bb.f

bb.f:                                             ; preds = %lean_obj_tag.exit21.i
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !10
  %.val13.i = load i64, ptr %i.f, align 8, !tbaa !15
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %.val.i = load i64, ptr %i.t, align 8, !tbaa !15
  %i.u = icmp eq i64 %.val13.i, %.val.i
  br label %.preheader.i

.preheader.i:                                     ; preds = %lean_obj_tag.exit21.i, %bb.f
  %.0.shrunk.i = phi i1 [ false, %lean_obj_tag.exit21.i ], [ %i.u, %bb.f ]
  %i.v = load i32, ptr %i.c, align 8, !tbaa !12   ; 3 uses
  %i.w = icmp sgt i32 %i.v, 1
  br i1 %i.w, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %.preheader.i
  %i.x = add nsw i32 %i.v, -1
  store i32 %i.x, ptr %i.c, align 8, !tbaa !12
  br label %lean_dec.exit.i

bb.h:                                             ; preds = %.preheader.i
  %.not.i7.i = icmp eq i32 %i.v, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.c) #9
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.i, %bb.h, %bb.g
  tail call void @lean_free_object(ptr noundef nonnull %i.g) #9
  br i1 %.0.shrunk.i, label %bb.u, label %bb.j

bb.j:                                             ; preds = %lean_dec.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !10
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !16
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.ad = load i32, ptr %1, align 4, !tbaa !12    ; 3 uses
  %i.ae = icmp sgt i32 %i.ad, 1
  br i1 %i.ae, label %bb.l, label %bb.m, !prof !13

bb.l:                                             ; preds = %bb.k
  %i.af = add nsw i32 %i.ad, -1
  store i32 %i.af, ptr %1, align 4, !tbaa !12
  br label %lean_dec_ref.exit

bb.m:                                             ; preds = %bb.k
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #9
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.l, %bb.m, %bb.n
  tail call void @lean_inc_heartbeat() #9
  %i.ag = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #9 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.o, label %lean_alloc_ctor.exit52

bb.o:                                             ; preds = %lean_dec_ref.exit
  tail call void @lean_internal_panic_out_of_memory() #10
  unreachable

bb.p:                                             ; preds = %bb.j
  %i.ai = tail call zeroext i8 @l_Lake_MTime_checkUpToDate___at___00Lake_SavedTrace_replayIfUpToDate_x27___at___00__private_Lake_Build_Module_0__Lake_Module_recBuildLean_fetchCore_spec__0_spec__1(ptr noundef %0, ptr noundef %1, ptr noundef %4)
  %i.aj = icmp eq i8 %i.ai, 0
  tail call void @lean_inc_heartbeat() #9
  %i.ak = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #9 ; 3 uses
  %i.al = icmp eq ptr %i.ak, null                 ; 2 uses
  br i1 %i.aj, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  br i1 %i.al, label %bb.r, label %lean_alloc_ctor.exit52

bb.r:                                             ; preds = %bb.q
  tail call void @lean_internal_panic_out_of_memory() #10
  unreachable

bb.s:                                             ; preds = %bb.p
  br i1 %i.al, label %bb.t, label %lean_alloc_ctor.exit52

bb.t:                                             ; preds = %bb.s
  tail call void @lean_internal_panic_out_of_memory() #10
  unreachable

bb.u:                                             ; preds = %lean_dec.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.an = load i8, ptr %i.am, align 1, !tbaa !16
  %i.ao = tail call zeroext i8 @l_Lake_Module_checkExists(ptr noundef %1, i8 noundef zeroext %i.an)
  %i.ap = icmp eq i8 %i.ao, 0
  tail call void @lean_inc_heartbeat() #9
  %i.aq = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #9 ; 3 uses
  %i.ar = icmp eq ptr %i.aq, null                 ; 2 uses
  br i1 %i.ap, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  br i1 %i.ar, label %bb.w, label %lean_alloc_ctor.exit52

bb.w:                                             ; preds = %bb.v
  tail call void @lean_internal_panic_out_of_memory() #10
  unreachable

bb.x:                                             ; preds = %bb.u
  br i1 %i.ar, label %bb.y, label %lean_alloc_ctor.exit52

bb.y:                                             ; preds = %bb.x
  tail call void @lean_internal_panic_out_of_memory() #10
  unreachable

lean_alloc_ctor.exit52:                           ; preds = %bb.x, %bb.v, %bb.s, %bb.q, %lean_dec_ref.exit
  %.sink74 = phi ptr [ %i.ak, %bb.s ], [ %i.aq, %bb.v ], [ %i.ag, %lean_dec_ref.exit ], [ %i.ak, %bb.q ], [ %i.aq, %bb.x ] ; 5 uses
  %.sink = phi ptr [ inttoptr (i64 3 to ptr), %bb.s ], [ inttoptr (i64 1 to ptr), %bb.v ], [ inttoptr (i64 1 to ptr), %lean_dec_ref.exit ], [ inttoptr (i64 1 to ptr), %bb.q ], [ inttoptr (i64 5 to ptr), %bb.x ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sink74, i64 4
  store i32 1, ptr %.sink74, align 4, !tbaa !12
  store i32 131096, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %.sink74, i64 8
  store ptr %.sink, ptr %i.at, align 8, !tbaa !10
  %i.au = getelementptr inbounds nuw i8, ptr %.sink74, i64 16
  store ptr %6, ptr %i.au, align 8, !tbaa !10
  ret ptr %.sink74
}

; Function Attrs: nounwind uwtable
define noundef nonnull ptr @l___private_Lake_Build_Common_0__Lake_checkHashUpToDate_x27___at___00Lake_SavedTrace_replayIfUpToDate_x27___at___00__private_Lake_Build_Module_0__Lake_Module_recBuildLean_fetchCore_spec__0_spec__0___redArg___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef readnone captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l___private_Lake_Build_Common_0__Lake_checkHashUpToDate_x27___at___00Lake_SavedTrace_replayIfUpToDate_x27___at___00__private_Lake_Build_Module_0__Lake_Module_recBuildLean_fetchCore_spec__0_spec__0___redArg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  %i.b = load i32, ptr %5, align 4, !tbaa !12     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %5, align 4, !tbaa !12
  br label %lean_dec_ref.exit21

bb.c:                                             ; preds = %bb.a
  %.not.i20 = icmp eq i32 %i.b, 0
  br i1 %.not.i20, label %lean_dec_ref.exit21, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #9
  br label %lean_dec_ref.exit21

lean_dec_ref.exit21:                              ; preds = %bb.b, %bb.c, %bb.d
  %i.e = load i32, ptr %4, align 4, !tbaa !12     ; 3 uses
  %i.f = icmp sgt i32 %i.e, 1
  br i1 %i.f, label %bb.e, label %bb.f, !prof !13

bb.e:                                             ; preds = %lean_dec_ref.exit21
  %i.g = add nsw i32 %i.e, -1
  store i32 %i.g, ptr %4, align 4, !tbaa !12
  br label %lean_dec_ref.exit19

bb.f:                                             ; preds = %lean_dec_ref.exit21
  %.not.i18 = icmp eq i32 %i.e, 0
  br i1 %.not.i18, label %lean_dec_ref.exit19, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #9
  br label %lean_dec_ref.exit19

lean_dec_ref.exit19:                              ; preds = %bb.e, %bb.f, %bb.g
  %i.h = ptrtoint ptr %3 to i64
  %i.i = and i64 %i.h, 1
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %bb.h, label %lean_dec.exit

bb.h:                                             ; preds = %lean_dec_ref.exit19
  %i.j = load i32, ptr %3, align 4, !tbaa !12     ; 3 uses
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %bb.i, label %bb.j, !prof !13

bb.i:                                             ; preds = %bb.h
  %i.l = add nsw i32 %i.j, -1
  store i32 %i.l, ptr %3, align 4, !tbaa !12
  br label %lean_dec.exit

bb.j:                                             ; preds = %bb.h
  %.not.i13 = icmp eq i32 %i.j, 0
  br i1 %.not.i13, label %lean_dec.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #9
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.k, %bb.j, %bb.i, %lean_dec_ref.exit19
  %i.m = load i32, ptr %2, align 4, !tbaa !12     ; 3 uses
  %i.n = icmp sgt i32 %i.m, 1
  br i1 %i.n, label %bb.l, label %bb.m, !prof !13

bb.l:                                             ; preds = %lean_dec.exit
  %i.o = add nsw i32 %i.m, -1
  store i32 %i.o, ptr %2, align 4, !tbaa !12
  br label %lean_dec_ref.exit17

bb.m:                                             ; preds = %lean_dec.exit
  %.not.i16 = icmp eq i32 %i.m, 0
  br i1 %.not.i16, label %lean_dec_ref.exit17, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #9
  br label %lean_dec_ref.exit17

lean_dec_ref.exit17:                              ; preds = %bb.l, %bb.m, %bb.n
  %i.p = load i32, ptr %0, align 4, !tbaa !12     ; 3 uses
end_hunk_0
