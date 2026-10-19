Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/RequestHandling?download=true
inline.NumInlined: 5403
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumUnrolled: 32
begin_hunk_0_@l___private_Lean_Data_PersistentHashMap_0__Lean_PersistentHashMap_insertAux_traverse___at___00Lean_PersistentHashMap_insertAux___at___00Lean_PersistentHashMap_insert___at___00Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__0_spec__3_spec__5_spec__34___redArg___boxed:bb.a
  br i1 %i.c, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %0, align 8, !tbaa !12
  br label %lean_dec.exit

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.b, %bb.c, %bb.d
  %i.e = tail call ptr @l___private_Lean_Data_PersistentHashMap_0__Lean_PersistentHashMap_insertAux_traverse___at___00Lean_PersistentHashMap_insertAux___at___00Lean_PersistentHashMap_insert___at___00Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__0_spec__3_spec__5_spec__34___redArg(i64 noundef %.val, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %i.f = load i32, ptr %2, align 4, !tbaa !12     ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.f, !prof !13

bb.e:                                             ; preds = %lean_dec.exit
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %2, align 4, !tbaa !12
  br label %lean_dec_ref.exit10

bb.f:                                             ; preds = %lean_dec.exit
  %.not.i9 = icmp eq i32 %i.f, 0
  br i1 %.not.i9, label %lean_dec_ref.exit10, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #8
  br label %lean_dec_ref.exit10

lean_dec_ref.exit10:                              ; preds = %bb.e, %bb.f, %bb.g
  %i.i = load i32, ptr %1, align 4, !tbaa !12     ; 3 uses
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %lean_dec_ref.exit10
  %i.k = add nsw i32 %i.i, -1
  store i32 %i.k, ptr %1, align 4, !tbaa !12
  br label %lean_dec_ref.exit

bb.i:                                             ; preds = %lean_dec_ref.exit10
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #8
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.h, %bb.i, %bb.j
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_PersistentHashMap_insertAux___at___00Lean_PersistentHashMap_insert___at___00Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__0_spec__3_spec__5___redArg___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val13 = load i64, ptr %i.a, align 8, !tbaa !15
  %i.b = load i32, ptr %1, align 8, !tbaa !12     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %1, align 8, !tbaa !12
  br label %lean_dec.exit12

bb.c:                                             ; preds = %bb.a
  %.not.i.i10 = icmp eq i32 %i.b, 0
  br i1 %.not.i.i10, label %lean_dec.exit12, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #8
  br label %lean_dec.exit12

lean_dec.exit12:                                  ; preds = %bb.b, %bb.c, %bb.d
  %i.e = getelementptr i8, ptr %2, i64 8
  %.val = load i64, ptr %i.e, align 8, !tbaa !15
  %i.f = load i32, ptr %2, align 8, !tbaa !12     ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.f, !prof !13

bb.e:                                             ; preds = %lean_dec.exit12
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %2, align 8, !tbaa !12
  br label %lean_dec.exit

bb.f:                                             ; preds = %lean_dec.exit12
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.e, %bb.f, %bb.g
  %i.i = tail call ptr @l_Lean_PersistentHashMap_insertAux___at___00Lean_PersistentHashMap_insert___at___00Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__0_spec__3_spec__5___redArg(ptr noundef %0, i64 noundef %.val13, i64 noundef %.val, ptr noundef %3, ptr noundef %4)
  ret ptr %i.i
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_PersistentHashMap_insert___at___00Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__0_spec__3___redArg(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @lean_string_hash(ptr noundef %1) #8
  %i.b = tail call ptr @l_Lean_PersistentHashMap_insertAux___at___00Lean_PersistentHashMap_insert___at___00Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__0_spec__3_spec__5___redArg(ptr noundef %0, i64 noundef %i.a, i64 noundef 1, ptr noundef %1, ptr noundef %2)
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__10(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr (...) @l_Lean_initializing() #8 ; 14 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = and i64 %i.b, 1
  %.not.i153 = icmp eq i64 %i.c, 0                ; 3 uses
  br i1 %.not.i153, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 1
  %i.e = trunc i64 %i.d to i32
  br label %lean_obj_tag.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.a, i64 4
  %.val.i = load i32, ptr %i.f, align 4
  %i.g = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.e, %bb.b ], [ %i.g, %bb.c ]
  %i.h = icmp eq i32 %.0.i, 0
  br i1 %i.h, label %bb.d, label %bb.bg

bb.d:                                             ; preds = %lean_obj_tag.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !10   ; 11 uses
  %.val152 = load i32, ptr %i.a, align 8, !tbaa !12
  %i.k = icmp eq i32 %.val152, 1                  ; 4 uses
  %.pre = ptrtoint ptr %i.j to i64                ; 4 uses
  br i1 %i.k, label %lean_dec.exit151, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = and i64 %.pre, 1
  %.not.i121 = icmp eq i64 %i.l, 0
  br i1 %.not.i121, label %bb.f, label %lean_inc.exit122

bb.f:                                             ; preds = %bb.e
  %.val.i.i = load i32, ptr %i.j, align 4, !tbaa !12 ; 3 uses
  %i.m = icmp sgt i32 %.val.i.i, 0
  br i1 %i.m, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.n = add nuw i32 %.val.i.i, 1
  store i32 %i.n, ptr %i.j, align 4, !tbaa !12
  br label %lean_inc.exit122

bb.h:                                             ; preds = %bb.f
  %.not.i.i154 = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i154, label %lean_inc.exit122, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = atomicrmw sub ptr %i.j, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit122

lean_inc.exit122:                                 ; preds = %bb.i, %bb.h, %bb.g, %bb.e
  br i1 %.not.i153, label %bb.j, label %lean_dec.exit151

bb.j:                                             ; preds = %lean_inc.exit122
  %i.p = load i32, ptr %i.a, align 8, !tbaa !12   ; 3 uses
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %bb.j
  %i.r = add nsw i32 %i.p, -1
  store i32 %i.r, ptr %i.a, align 8, !tbaa !12
  br label %lean_dec.exit151

bb.l:                                             ; preds = %bb.j
  %.not.i.i149 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i149, label %lean_dec.exit151, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #8
  br label %lean_dec.exit151

lean_dec.exit151:                                 ; preds = %bb.d, %lean_inc.exit122, %bb.m, %bb.l, %bb.k
  %.0107 = phi ptr [ inttoptr (i64 1 to ptr), %bb.k ], [ inttoptr (i64 1 to ptr), %lean_inc.exit122 ], [ inttoptr (i64 1 to ptr), %bb.m ], [ inttoptr (i64 1 to ptr), %bb.l ], [ %i.a, %bb.d ] ; 5 uses
  %i.s = and i64 %.pre, 510
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.n, label %bb.af

bb.n:                                             ; preds = %lean_dec.exit151
  %i.u = and i64 %.pre, 1
  %.not.i144 = icmp eq i64 %i.u, 0
  br i1 %.not.i144, label %bb.o, label %lean_dec.exit147

bb.o:                                             ; preds = %bb.n
  %i.v = load i32, ptr %i.j, align 512, !tbaa !12 ; 3 uses
  %i.w = icmp sgt i32 %i.v, 1
  br i1 %i.w, label %bb.p, label %bb.q, !prof !13

bb.p:                                             ; preds = %bb.o
  %i.x = add nsw i32 %i.v, -1
  store i32 %i.x, ptr %i.j, align 512, !tbaa !12
  br label %lean_dec.exit147

bb.q:                                             ; preds = %bb.o
  %.not.i.i145 = icmp eq i32 %i.v, 0
  br i1 %.not.i.i145, label %lean_dec.exit147, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #8
  br label %lean_dec.exit147

lean_dec.exit147:                                 ; preds = %bb.p, %bb.q, %bb.r, %bb.n
  %i.y = ptrtoint ptr %2 to i64
  %i.z = and i64 %i.y, 1
  %.not.i140 = icmp eq i64 %i.z, 0
  br i1 %.not.i140, label %bb.s, label %lean_dec.exit143

bb.s:                                             ; preds = %lean_dec.exit147
  %i.aa = load i32, ptr %2, align 4, !tbaa !12    ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 1
  br i1 %i.ab, label %bb.t, label %bb.u, !prof !13

bb.t:                                             ; preds = %bb.s
  %i.ac = add nsw i32 %i.aa, -1
  store i32 %i.ac, ptr %2, align 4, !tbaa !12
  br label %lean_dec.exit143

bb.u:                                             ; preds = %bb.s
  %.not.i.i141 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i141, label %lean_dec.exit143, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #8
  br label %lean_dec.exit143

lean_dec.exit143:                                 ; preds = %bb.t, %bb.u, %bb.v, %lean_dec.exit147
  %i.ad = load i32, ptr %1, align 4, !tbaa !12    ; 3 uses
  %i.ae = icmp sgt i32 %i.ad, 1
  br i1 %i.ae, label %bb.w, label %bb.x, !prof !13

bb.w:                                             ; preds = %lean_dec.exit143
  %i.af = add nsw i32 %i.ad, -1
  store i32 %i.af, ptr %1, align 4, !tbaa !12
  br label %lean_dec_ref.exit119

bb.x:                                             ; preds = %lean_dec.exit143
  %.not.i118 = icmp eq i32 %i.ad, 0
  br i1 %.not.i118, label %lean_dec_ref.exit119, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #8
  br label %lean_dec_ref.exit119

lean_dec_ref.exit119:                             ; preds = %bb.w, %bb.x, %bb.y
  %i.ag = tail call ptr @lean_string_append(ptr noundef nonnull @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__10___closed__0_value, ptr noundef %0) #8
  %i.ah = load i32, ptr %0, align 4, !tbaa !12    ; 3 uses
  %i.ai = icmp sgt i32 %i.ah, 1
  br i1 %i.ai, label %bb.z, label %bb.aa, !prof !13

bb.z:                                             ; preds = %lean_dec_ref.exit119
  %i.aj = add nsw i32 %i.ah, -1
  store i32 %i.aj, ptr %0, align 4, !tbaa !12
  br label %lean_dec_ref.exit117

bb.aa:                                            ; preds = %lean_dec_ref.exit119
  %.not.i116 = icmp eq i32 %i.ah, 0
  br i1 %.not.i116, label %lean_dec_ref.exit117, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec_ref.exit117

lean_dec_ref.exit117:                             ; preds = %bb.z, %bb.aa, %bb.ab
  %i.ak = tail call ptr @lean_string_append(ptr noundef %i.ag, ptr noundef nonnull @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__10___closed__1_value) #8
  %i.al = tail call ptr @lean_mk_io_user_error(ptr noundef %i.ak) #8 ; 2 uses
  br i1 %i.k, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %lean_dec_ref.exit117
  %i.am = getelementptr inbounds nuw i8, ptr %.0107, i64 4 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = and i32 %i.an, 16777215
  %i.ap = or disjoint i32 %i.ao, 16777216
  store i32 %i.ap, ptr %i.am, align 4
  br label %lean_dec.exit.sink.split

bb.ad:                                            ; preds = %lean_dec_ref.exit117
  tail call void @lean_inc_heartbeat() #8
  %i.aq = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 4 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.ae, label %lean_alloc_ctor.exit

bb.ae:                                            ; preds = %bb.ad
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.ad
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store i32 1, ptr %i.aq, align 4, !tbaa !12
  store i32 16842768, ptr %i.as, align 4
  br label %lean_dec.exit.sink.split

bb.af:                                            ; preds = %lean_dec.exit151
  %i.at = load ptr, ptr @l_Lean_Server_requestHandlers, align 8, !tbaa !10 ; 3 uses
  %i.au = tail call ptr @lean_st_ref_get(ptr noundef %i.at) #8 ; 5 uses
  %i.av = tail call i64 @lean_string_hash(ptr noundef %0) #8
  %i.aw = tail call zeroext range(i8 0, 2) i8 @l_Lean_PersistentHashMap_containsAux___at___00Lean_PersistentHashMap_contains___at___00Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__0_spec__2_spec__3___redArg(ptr noundef %i.au, i64 noundef %i.av, ptr noundef %0)
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = and i64 %i.ax, 1
  %.not.i136 = icmp eq i64 %i.ay, 0
  br i1 %.not.i136, label %bb.ag, label %lean_dec.exit139

bb.ag:                                            ; preds = %bb.af
  %i.az = load i32, ptr %i.au, align 4, !tbaa !12 ; 3 uses
  %i.ba = icmp sgt i32 %i.az, 1
  br i1 %i.ba, label %bb.ah, label %bb.ai, !prof !13

bb.ah:                                            ; preds = %bb.ag
  %i.bb = add nsw i32 %i.az, -1
  store i32 %i.bb, ptr %i.au, align 4, !tbaa !12
  br label %lean_dec.exit139

bb.ai:                                            ; preds = %bb.ag
  %.not.i.i137 = icmp eq i32 %i.az, 0
  br i1 %.not.i.i137, label %lean_dec.exit139, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.au) #8
  br label %lean_dec.exit139

lean_dec.exit139:                                 ; preds = %bb.ah, %bb.ai, %bb.aj, %bb.af
  %i.bc = icmp eq i8 %i.aw, 0
  br i1 %i.bc, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %lean_dec.exit139
  %i.bd = tail call ptr @lean_st_ref_take(ptr noundef %i.at) #8
  %i.be = tail call ptr @lean_alloc_object(i64 noundef 40) #8 ; 8 uses
  store i32 1, ptr %i.be, align 4, !tbaa !12
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = and i32 %i.bg, 65535
  %i.bi = or disjoint i32 %i.bh, -184549376
  store i32 %i.bi, ptr %i.bf, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__10___lam__1___boxed, ptr %i.bj, align 8, !tbaa !10
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i16 3, ptr %i.bk, align 8, !tbaa !17
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 18
  store i16 2, ptr %i.bl, align 2, !tbaa !17
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr %2, ptr %i.bm, align 8, !tbaa !10
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  store ptr %i.j, ptr %i.bn, align 8, !tbaa !10
  %i.bo = tail call ptr @lean_alloc_object(i64 noundef 40) #8 ; 8 uses
  store i32 1, ptr %i.bo, align 4, !tbaa !12
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = and i32 %i.bq, 65535
  %i.bs = or disjoint i32 %i.br, -184549376
  store i32 %i.bs, ptr %i.bp, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__10___lam__2___boxed, ptr %i.bt, align 8, !tbaa !10
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store i16 5, ptr %i.bu, align 8, !tbaa !17
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 18
  store i16 2, ptr %i.bv, align 2, !tbaa !17
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store ptr %1, ptr %i.bw, align 8, !tbaa !10
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  store ptr %i.be, ptr %i.bx, align 8, !tbaa !10
  tail call void @lean_inc_heartbeat() #8
  %i.by = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #8 ; 6 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.al, label %lean_alloc_ctor.exit155

bb.al:                                            ; preds = %bb.ak
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit155:                          ; preds = %bb.ak
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  store i32 1, ptr %i.by, align 4, !tbaa !12
  store i32 131096, ptr %i.ca, align 4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__10___closed__2_value, ptr %i.cb, align 8, !tbaa !10
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store ptr %i.bo, ptr %i.cc, align 8, !tbaa !10
  %i.cd = tail call i64 @lean_string_hash(ptr noundef %0) #8
  %i.ce = tail call ptr @l_Lean_PersistentHashMap_insertAux___at___00Lean_PersistentHashMap_insert___at___00Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__0_spec__3_spec__5___redArg(ptr noundef %i.bd, i64 noundef %i.cd, i64 noundef 1, ptr noundef %0, ptr noundef nonnull %i.by)
  %i.cf = tail call ptr @lean_st_ref_set(ptr noundef %i.at, ptr noundef %i.ce) #8 ; 2 uses
  br i1 %i.k, label %lean_dec.exit.sink.split, label %bb.am

bb.am:                                            ; preds = %lean_alloc_ctor.exit155
  tail call void @lean_inc_heartbeat() #8
  %i.cg = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 4 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.an, label %lean_alloc_ctor.exit156

bb.an:                                            ; preds = %bb.am
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

end_hunk_0
begin_hunk_1_@l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__8___lam__0:bb.a
lean_dec.exit54:                                  ; preds = %lean_inc.exit, %bb.y, %bb.x, %bb.w, %bb.p
  %.043 = phi ptr [ %i.a, %bb.p ], [ inttoptr (i64 1 to ptr), %bb.w ], [ inttoptr (i64 1 to ptr), %bb.x ], [ inttoptr (i64 1 to ptr), %bb.y ], [ inttoptr (i64 1 to ptr), %lean_inc.exit ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !10 ; 7 uses
  %.val.i.i65 = load i32, ptr %i.ae, align 4, !tbaa !12 ; 3 uses
  %i.af = icmp sgt i32 %.val.i.i65, 0
  br i1 %i.af, label %bb.z, label %bb.aa, !prof !13

bb.z:                                             ; preds = %lean_dec.exit54
  %i.ag = add nuw i32 %.val.i.i65, 1
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !12
  br label %lean_inc_ref.exit67

bb.aa:                                            ; preds = %lean_dec.exit54
  %.not.i.i66 = icmp eq i32 %.val.i.i65, 0
  br i1 %.not.i.i66, label %lean_inc_ref.exit67, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ah = atomicrmw sub ptr %i.ae, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit67

lean_inc_ref.exit67:                              ; preds = %bb.ab, %bb.aa, %bb.z
  %i.ai = load i32, ptr %i.j, align 8, !tbaa !12  ; 3 uses
  %i.aj = icmp sgt i32 %i.ai, 1
  br i1 %i.aj, label %bb.ac, label %bb.ad, !prof !13

bb.ac:                                            ; preds = %lean_inc_ref.exit67
  %i.ak = add nsw i32 %i.ai, -1
  store i32 %i.ak, ptr %i.j, align 8, !tbaa !12
  br label %lean_dec.exit

bb.ad:                                            ; preds = %lean_inc_ref.exit67
  %.not.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.ac, %bb.ad, %bb.ae
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !10 ; 5 uses
  %.val.i.i68 = load i32, ptr %i.am, align 4, !tbaa !12 ; 3 uses
  %i.an = icmp sgt i32 %.val.i.i68, 0
  br i1 %i.an, label %bb.af, label %bb.ag, !prof !13

bb.af:                                            ; preds = %lean_dec.exit
  %i.ao = add nuw i32 %.val.i.i68, 1
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !12
  br label %lean_inc_ref.exit70

bb.ag:                                            ; preds = %lean_dec.exit
  %.not.i.i69 = icmp eq i32 %.val.i.i68, 0
  br i1 %.not.i.i69, label %lean_inc_ref.exit70, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ap = atomicrmw sub ptr %i.am, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit70

lean_inc_ref.exit70:                              ; preds = %bb.af, %bb.ag, %bb.ah
  %i.aq = load i32, ptr %i.ae, align 8, !tbaa !12 ; 3 uses
  %i.ar = icmp sgt i32 %i.aq, 1
  br i1 %i.ar, label %bb.ai, label %bb.aj, !prof !13

bb.ai:                                            ; preds = %lean_inc_ref.exit70
  %i.as = add nsw i32 %i.aq, -1
  store i32 %i.as, ptr %i.ae, align 8, !tbaa !12
  br label %lean_dec_ref.exit

bb.aj:                                            ; preds = %lean_inc_ref.exit70
  %.not.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ae) #8
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.ai, %bb.aj, %bb.ak
  br i1 %i.k, label %lean_dec.exit58.sink.split, label %bb.al

bb.al:                                            ; preds = %lean_dec_ref.exit
  tail call void @lean_inc_heartbeat() #8
  %i.at = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.am, label %lean_dec.exit58.sink.split.sink.split

bb.am:                                            ; preds = %bb.al
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_dec.exit58.sink.split.sink.split:            ; preds = %bb.al, %bb.n
  %.sink86 = phi ptr [ %i.t, %bb.n ], [ %i.at, %bb.al ] ; 3 uses
  %.sink83 = phi i32 [ 65552, %bb.n ], [ 16842768, %bb.al ]
  %.sink.ph = phi ptr [ %i.j, %bb.n ], [ %i.am, %bb.al ]
  %i.av = getelementptr inbounds nuw i8, ptr %.sink86, i64 4
  store i32 1, ptr %.sink86, align 4, !tbaa !12
  store i32 %.sink83, ptr %i.av, align 4
  br label %lean_dec.exit58.sink.split

lean_dec.exit58.sink.split:                       ; preds = %lean_dec.exit58.sink.split.sink.split, %lean_dec_ref.exit
  %.sink82 = phi ptr [ %.043, %lean_dec_ref.exit ], [ %.sink86, %lean_dec.exit58.sink.split.sink.split ] ; 2 uses
  %.sink = phi ptr [ %i.am, %lean_dec_ref.exit ], [ %.sink.ph, %lean_dec.exit58.sink.split.sink.split ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.sink82, i64 8
  store ptr %.sink, ptr %i.aw, align 8, !tbaa !10
  br label %lean_dec.exit58

lean_dec.exit58:                                  ; preds = %lean_dec.exit58.sink.split, %bb.d
  %.2 = phi ptr [ %i.a, %bb.d ], [ %.sink82, %lean_dec.exit58.sink.split ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__8(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr (...) @l_Lean_initializing() #8 ; 14 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = and i64 %i.b, 1
  %.not.i153 = icmp eq i64 %i.c, 0                ; 3 uses
  br i1 %.not.i153, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 1
  %i.e = trunc i64 %i.d to i32
  br label %lean_obj_tag.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.a, i64 4
  %.val.i = load i32, ptr %i.f, align 4
  %i.g = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.e, %bb.b ], [ %i.g, %bb.c ]
  %i.h = icmp eq i32 %.0.i, 0
  br i1 %i.h, label %bb.d, label %bb.bg

bb.d:                                             ; preds = %lean_obj_tag.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !10   ; 11 uses
  %.val152 = load i32, ptr %i.a, align 8, !tbaa !12
  %i.k = icmp eq i32 %.val152, 1                  ; 4 uses
  %.pre = ptrtoint ptr %i.j to i64                ; 4 uses
  br i1 %i.k, label %lean_dec.exit151, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = and i64 %.pre, 1
  %.not.i121 = icmp eq i64 %i.l, 0
  br i1 %.not.i121, label %bb.f, label %lean_inc.exit122

bb.f:                                             ; preds = %bb.e
  %.val.i.i = load i32, ptr %i.j, align 4, !tbaa !12 ; 3 uses
  %i.m = icmp sgt i32 %.val.i.i, 0
  br i1 %i.m, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.n = add nuw i32 %.val.i.i, 1
  store i32 %i.n, ptr %i.j, align 4, !tbaa !12
  br label %lean_inc.exit122

bb.h:                                             ; preds = %bb.f
  %.not.i.i154 = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i154, label %lean_inc.exit122, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = atomicrmw sub ptr %i.j, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit122

lean_inc.exit122:                                 ; preds = %bb.i, %bb.h, %bb.g, %bb.e
  br i1 %.not.i153, label %bb.j, label %lean_dec.exit151

bb.j:                                             ; preds = %lean_inc.exit122
  %i.p = load i32, ptr %i.a, align 8, !tbaa !12   ; 3 uses
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %bb.j
  %i.r = add nsw i32 %i.p, -1
  store i32 %i.r, ptr %i.a, align 8, !tbaa !12
  br label %lean_dec.exit151

bb.l:                                             ; preds = %bb.j
  %.not.i.i149 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i149, label %lean_dec.exit151, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #8
  br label %lean_dec.exit151

lean_dec.exit151:                                 ; preds = %bb.d, %lean_inc.exit122, %bb.m, %bb.l, %bb.k
  %.0107 = phi ptr [ inttoptr (i64 1 to ptr), %bb.k ], [ inttoptr (i64 1 to ptr), %lean_inc.exit122 ], [ inttoptr (i64 1 to ptr), %bb.m ], [ inttoptr (i64 1 to ptr), %bb.l ], [ %i.a, %bb.d ] ; 5 uses
  %i.s = and i64 %.pre, 510
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.n, label %bb.af

bb.n:                                             ; preds = %lean_dec.exit151
  %i.u = and i64 %.pre, 1
  %.not.i144 = icmp eq i64 %i.u, 0
  br i1 %.not.i144, label %bb.o, label %lean_dec.exit147

bb.o:                                             ; preds = %bb.n
  %i.v = load i32, ptr %i.j, align 512, !tbaa !12 ; 3 uses
  %i.w = icmp sgt i32 %i.v, 1
  br i1 %i.w, label %bb.p, label %bb.q, !prof !13

bb.p:                                             ; preds = %bb.o
  %i.x = add nsw i32 %i.v, -1
  store i32 %i.x, ptr %i.j, align 512, !tbaa !12
  br label %lean_dec.exit147

bb.q:                                             ; preds = %bb.o
  %.not.i.i145 = icmp eq i32 %i.v, 0
  br i1 %.not.i.i145, label %lean_dec.exit147, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #8
  br label %lean_dec.exit147

lean_dec.exit147:                                 ; preds = %bb.p, %bb.q, %bb.r, %bb.n
  %i.y = ptrtoint ptr %2 to i64
  %i.z = and i64 %i.y, 1
  %.not.i140 = icmp eq i64 %i.z, 0
  br i1 %.not.i140, label %bb.s, label %lean_dec.exit143

bb.s:                                             ; preds = %lean_dec.exit147
  %i.aa = load i32, ptr %2, align 4, !tbaa !12    ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 1
  br i1 %i.ab, label %bb.t, label %bb.u, !prof !13

bb.t:                                             ; preds = %bb.s
  %i.ac = add nsw i32 %i.aa, -1
  store i32 %i.ac, ptr %2, align 4, !tbaa !12
  br label %lean_dec.exit143

bb.u:                                             ; preds = %bb.s
  %.not.i.i141 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i141, label %lean_dec.exit143, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #8
  br label %lean_dec.exit143

lean_dec.exit143:                                 ; preds = %bb.t, %bb.u, %bb.v, %lean_dec.exit147
  %i.ad = load i32, ptr %1, align 4, !tbaa !12    ; 3 uses
  %i.ae = icmp sgt i32 %i.ad, 1
  br i1 %i.ae, label %bb.w, label %bb.x, !prof !13

bb.w:                                             ; preds = %lean_dec.exit143
  %i.af = add nsw i32 %i.ad, -1
  store i32 %i.af, ptr %1, align 4, !tbaa !12
  br label %lean_dec_ref.exit119

bb.x:                                             ; preds = %lean_dec.exit143
  %.not.i118 = icmp eq i32 %i.ad, 0
  br i1 %.not.i118, label %lean_dec_ref.exit119, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #8
  br label %lean_dec_ref.exit119

lean_dec_ref.exit119:                             ; preds = %bb.w, %bb.x, %bb.y
  %i.ag = tail call ptr @lean_string_append(ptr noundef nonnull @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__10___closed__0_value, ptr noundef %0) #8
  %i.ah = load i32, ptr %0, align 4, !tbaa !12    ; 3 uses
  %i.ai = icmp sgt i32 %i.ah, 1
  br i1 %i.ai, label %bb.z, label %bb.aa, !prof !13

bb.z:                                             ; preds = %lean_dec_ref.exit119
  %i.aj = add nsw i32 %i.ah, -1
  store i32 %i.aj, ptr %0, align 4, !tbaa !12
  br label %lean_dec_ref.exit117

bb.aa:                                            ; preds = %lean_dec_ref.exit119
  %.not.i116 = icmp eq i32 %i.ah, 0
  br i1 %.not.i116, label %lean_dec_ref.exit117, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec_ref.exit117

lean_dec_ref.exit117:                             ; preds = %bb.z, %bb.aa, %bb.ab
  %i.ak = tail call ptr @lean_string_append(ptr noundef %i.ag, ptr noundef nonnull @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__10___closed__1_value) #8
  %i.al = tail call ptr @lean_mk_io_user_error(ptr noundef %i.ak) #8 ; 2 uses
  br i1 %i.k, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %lean_dec_ref.exit117
  %i.am = getelementptr inbounds nuw i8, ptr %.0107, i64 4 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = and i32 %i.an, 16777215
  %i.ap = or disjoint i32 %i.ao, 16777216
  store i32 %i.ap, ptr %i.am, align 4
  br label %lean_dec.exit.sink.split

bb.ad:                                            ; preds = %lean_dec_ref.exit117
  tail call void @lean_inc_heartbeat() #8
  %i.aq = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 4 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.ae, label %lean_alloc_ctor.exit

bb.ae:                                            ; preds = %bb.ad
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.ad
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store i32 1, ptr %i.aq, align 4, !tbaa !12
  store i32 16842768, ptr %i.as, align 4
  br label %lean_dec.exit.sink.split

bb.af:                                            ; preds = %lean_dec.exit151
  %i.at = load ptr, ptr @l_Lean_Server_requestHandlers, align 8, !tbaa !10 ; 3 uses
  %i.au = tail call ptr @lean_st_ref_get(ptr noundef %i.at) #8 ; 5 uses
  %i.av = tail call i64 @lean_string_hash(ptr noundef %0) #8
  %i.aw = tail call zeroext range(i8 0, 2) i8 @l_Lean_PersistentHashMap_containsAux___at___00Lean_PersistentHashMap_contains___at___00Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__0_spec__2_spec__3___redArg(ptr noundef %i.au, i64 noundef %i.av, ptr noundef %0)
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = and i64 %i.ax, 1
  %.not.i136 = icmp eq i64 %i.ay, 0
  br i1 %.not.i136, label %bb.ag, label %lean_dec.exit139

bb.ag:                                            ; preds = %bb.af
  %i.az = load i32, ptr %i.au, align 4, !tbaa !12 ; 3 uses
  %i.ba = icmp sgt i32 %i.az, 1
  br i1 %i.ba, label %bb.ah, label %bb.ai, !prof !13

bb.ah:                                            ; preds = %bb.ag
  %i.bb = add nsw i32 %i.az, -1
  store i32 %i.bb, ptr %i.au, align 4, !tbaa !12
  br label %lean_dec.exit139

bb.ai:                                            ; preds = %bb.ag
  %.not.i.i137 = icmp eq i32 %i.az, 0
  br i1 %.not.i.i137, label %lean_dec.exit139, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.au) #8
  br label %lean_dec.exit139

lean_dec.exit139:                                 ; preds = %bb.ah, %bb.ai, %bb.aj, %bb.af
  %i.bc = icmp eq i8 %i.aw, 0
  br i1 %i.bc, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %lean_dec.exit139
  %i.bd = tail call ptr @lean_st_ref_take(ptr noundef %i.at) #8
  %i.be = tail call ptr @lean_alloc_object(i64 noundef 40) #8 ; 8 uses
  store i32 1, ptr %i.be, align 4, !tbaa !12
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = and i32 %i.bg, 65535
  %i.bi = or disjoint i32 %i.bh, -184549376
  store i32 %i.bi, ptr %i.bf, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__8___lam__1___boxed, ptr %i.bj, align 8, !tbaa !10
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i16 3, ptr %i.bk, align 8, !tbaa !17
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 18
  store i16 2, ptr %i.bl, align 2, !tbaa !17
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr %2, ptr %i.bm, align 8, !tbaa !10
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  store ptr %i.j, ptr %i.bn, align 8, !tbaa !10
  %i.bo = tail call ptr @lean_alloc_object(i64 noundef 40) #8 ; 8 uses
  store i32 1, ptr %i.bo, align 4, !tbaa !12
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = and i32 %i.bq, 65535
  %i.bs = or disjoint i32 %i.br, -184549376
  store i32 %i.bs, ptr %i.bp, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__8___lam__2___boxed, ptr %i.bt, align 8, !tbaa !10
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store i16 5, ptr %i.bu, align 8, !tbaa !17
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 18
  store i16 2, ptr %i.bv, align 2, !tbaa !17
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store ptr %1, ptr %i.bw, align 8, !tbaa !10
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  store ptr %i.be, ptr %i.bx, align 8, !tbaa !10
  tail call void @lean_inc_heartbeat() #8
  %i.by = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #8 ; 6 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.al, label %lean_alloc_ctor.exit155

bb.al:                                            ; preds = %bb.ak
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit155:                          ; preds = %bb.ak
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  store i32 1, ptr %i.by, align 4, !tbaa !12
  store i32 131096, ptr %i.ca, align 4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__8___closed__0_value, ptr %i.cb, align 8, !tbaa !10
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store ptr %i.bo, ptr %i.cc, align 8, !tbaa !10
  %i.cd = tail call i64 @lean_string_hash(ptr noundef %0) #8
  %i.ce = tail call ptr @l_Lean_PersistentHashMap_insertAux___at___00Lean_PersistentHashMap_insert___at___00Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__0_spec__3_spec__5___redArg(ptr noundef %i.bd, i64 noundef %i.cd, i64 noundef 1, ptr noundef %0, ptr noundef nonnull %i.by)
  %i.cf = tail call ptr @lean_st_ref_set(ptr noundef %i.at, ptr noundef %i.ce) #8 ; 2 uses
  br i1 %i.k, label %lean_dec.exit.sink.split, label %bb.am

bb.am:                                            ; preds = %lean_alloc_ctor.exit155
  tail call void @lean_inc_heartbeat() #8
  %i.cg = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 4 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.an, label %lean_alloc_ctor.exit156

bb.an:                                            ; preds = %bb.am
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

end_hunk_1
begin_hunk_2_@l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__11___lam__1:bb.a

bb.bf:                                            ; preds = %bb.be
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_inc.exit87, %bb.bf, %bb.be, %bb.bd, %lean_dec.exit98
  %.079 = phi ptr [ %2, %lean_dec.exit98 ], [ inttoptr (i64 1 to ptr), %bb.bd ], [ inttoptr (i64 1 to ptr), %bb.be ], [ inttoptr (i64 1 to ptr), %bb.bf ], [ inttoptr (i64 1 to ptr), %lean_inc.exit87 ]
  %i.cb = tail call ptr @l_Option_toJson___at___00Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__11_spec__45(ptr noundef %i.br) ; 6 uses
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = and i64 %i.cc, 1
  %.not.i = icmp eq i64 %i.cd, 0
  br i1 %.not.i, label %bb.bg, label %lean_inc.exit

bb.bg:                                            ; preds = %lean_dec.exit
  %.val.i.i133 = load i32, ptr %i.cb, align 4, !tbaa !12 ; 3 uses
  %i.ce = icmp sgt i32 %.val.i.i133, 0
  br i1 %i.ce, label %bb.bh, label %bb.bi, !prof !13

bb.bh:                                            ; preds = %bb.bg
  %i.cf = add nuw i32 %.val.i.i133, 1
  store i32 %i.cf, ptr %i.cb, align 4, !tbaa !12
  br label %lean_inc.exit

bb.bi:                                            ; preds = %bb.bg
  %.not.i.i134 = icmp eq i32 %.val.i.i133, 0
  br i1 %.not.i.i134, label %lean_inc.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.cg = atomicrmw sub ptr %i.cb, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.bj, %bb.bi, %bb.bh, %lean_dec.exit
  tail call void @lean_inc_heartbeat() #8
  %i.ch = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 5 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.bk, label %lean_alloc_ctor.exit136

bb.bk:                                            ; preds = %lean_inc.exit
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit136:                          ; preds = %lean_inc.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  store i32 1, ptr %i.ch, align 4, !tbaa !12
  store i32 16842768, ptr %i.cj, align 4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr %i.cb, ptr %i.ck, align 8, !tbaa !10
  %i.cl = tail call ptr @l_Lean_Json_compress(ptr noundef %i.cb) #8
  tail call void @lean_inc_heartbeat() #8
  %i.cm = tail call noalias ptr @mi_malloc_small(i64 noundef 32) #8 ; 8 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.bl, label %lean_alloc_ctor.exit138

bb.bl:                                            ; preds = %lean_alloc_ctor.exit136
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit138:                          ; preds = %lean_alloc_ctor.exit136
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 24 ; 2 uses
  store i64 0, ptr %i.cp, align 8, !tbaa !15
  store i32 1, ptr %i.cm, align 8, !tbaa !12
  store i32 131104, ptr %i.co, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr %i.ch, ptr %i.cq, align 8, !tbaa !10
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store ptr %i.cl, ptr %i.cr, align 8, !tbaa !10
  store i8 %1, ptr %i.cp, align 8, !tbaa !21
  br i1 %i.bs, label %lean_dec.exit106.sink.split, label %bb.bm

bb.bm:                                            ; preds = %lean_alloc_ctor.exit138
  tail call void @lean_inc_heartbeat() #8
  %i.cs = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %bb.bn, label %lean_dec.exit106.sink.split.sink.split

bb.bn:                                            ; preds = %bb.bm
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_dec.exit106.sink.split.sink.split:           ; preds = %bb.bm, %bb.ar, %bb.r
  %.sink163 = phi ptr [ %i.bl, %bb.ar ], [ %i.x, %bb.r ], [ %i.cs, %bb.bm ] ; 3 uses
  %.sink160 = phi i32 [ 16842768, %bb.ar ], [ 65552, %bb.r ], [ 16842768, %bb.bm ]
  %.sink.ph = phi ptr [ %i.bf, %bb.ar ], [ %i.n, %bb.r ], [ %i.cm, %bb.bm ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.sink163, i64 4
  store i32 1, ptr %.sink163, align 4, !tbaa !12
  store i32 %.sink160, ptr %i.cu, align 4
  br label %lean_dec.exit106.sink.split

lean_dec.exit106.sink.split:                      ; preds = %lean_dec.exit106.sink.split.sink.split, %lean_alloc_ctor.exit138, %lean_alloc_ctor.exit128
  %.sink159 = phi ptr [ %.079, %lean_alloc_ctor.exit138 ], [ %.082, %lean_alloc_ctor.exit128 ], [ %.sink163, %lean_dec.exit106.sink.split.sink.split ] ; 2 uses
  %.sink = phi ptr [ %i.cm, %lean_alloc_ctor.exit138 ], [ %i.bf, %lean_alloc_ctor.exit128 ], [ %.sink.ph, %lean_dec.exit106.sink.split.sink.split ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.sink159, i64 8
  store ptr %.sink, ptr %i.cv, align 8, !tbaa !10
  br label %lean_dec.exit106

lean_dec.exit106:                                 ; preds = %lean_dec.exit106.sink.split, %lean_dec.exit110
  %.3 = phi ptr [ %2, %lean_dec.exit110 ], [ %.sink159, %lean_dec.exit106.sink.split ]
  ret ptr %.3
}

; Function Attrs: nounwind uwtable
define noundef ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__11___lam__1___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  %i.d = tail call ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__11___lam__1(ptr noundef %0, i8 noundef zeroext %i.c, ptr noundef %2)
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__11(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr (...) @l_Lean_initializing() #8 ; 14 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = and i64 %i.b, 1
  %.not.i153 = icmp eq i64 %i.c, 0                ; 3 uses
  br i1 %.not.i153, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 1
  %i.e = trunc i64 %i.d to i32
  br label %lean_obj_tag.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.a, i64 4
  %.val.i = load i32, ptr %i.f, align 4
  %i.g = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.e, %bb.b ], [ %i.g, %bb.c ]
  %i.h = icmp eq i32 %.0.i, 0
  br i1 %i.h, label %bb.d, label %bb.bg

bb.d:                                             ; preds = %lean_obj_tag.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !10   ; 11 uses
  %.val152 = load i32, ptr %i.a, align 8, !tbaa !12
  %i.k = icmp eq i32 %.val152, 1                  ; 4 uses
  %.pre = ptrtoint ptr %i.j to i64                ; 4 uses
  br i1 %i.k, label %lean_dec.exit151, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = and i64 %.pre, 1
  %.not.i121 = icmp eq i64 %i.l, 0
  br i1 %.not.i121, label %bb.f, label %lean_inc.exit122

bb.f:                                             ; preds = %bb.e
  %.val.i.i = load i32, ptr %i.j, align 4, !tbaa !12 ; 3 uses
  %i.m = icmp sgt i32 %.val.i.i, 0
  br i1 %i.m, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.n = add nuw i32 %.val.i.i, 1
  store i32 %i.n, ptr %i.j, align 4, !tbaa !12
  br label %lean_inc.exit122

bb.h:                                             ; preds = %bb.f
  %.not.i.i154 = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i154, label %lean_inc.exit122, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = atomicrmw sub ptr %i.j, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit122

lean_inc.exit122:                                 ; preds = %bb.i, %bb.h, %bb.g, %bb.e
  br i1 %.not.i153, label %bb.j, label %lean_dec.exit151

bb.j:                                             ; preds = %lean_inc.exit122
  %i.p = load i32, ptr %i.a, align 8, !tbaa !12   ; 3 uses
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %bb.j
  %i.r = add nsw i32 %i.p, -1
  store i32 %i.r, ptr %i.a, align 8, !tbaa !12
  br label %lean_dec.exit151

bb.l:                                             ; preds = %bb.j
  %.not.i.i149 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i149, label %lean_dec.exit151, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #8
  br label %lean_dec.exit151

lean_dec.exit151:                                 ; preds = %bb.d, %lean_inc.exit122, %bb.m, %bb.l, %bb.k
  %.0107 = phi ptr [ inttoptr (i64 1 to ptr), %bb.k ], [ inttoptr (i64 1 to ptr), %lean_inc.exit122 ], [ inttoptr (i64 1 to ptr), %bb.m ], [ inttoptr (i64 1 to ptr), %bb.l ], [ %i.a, %bb.d ] ; 5 uses
  %i.s = and i64 %.pre, 510
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.n, label %bb.af

bb.n:                                             ; preds = %lean_dec.exit151
  %i.u = and i64 %.pre, 1
  %.not.i144 = icmp eq i64 %i.u, 0
  br i1 %.not.i144, label %bb.o, label %lean_dec.exit147

bb.o:                                             ; preds = %bb.n
  %i.v = load i32, ptr %i.j, align 512, !tbaa !12 ; 3 uses
  %i.w = icmp sgt i32 %i.v, 1
  br i1 %i.w, label %bb.p, label %bb.q, !prof !13

bb.p:                                             ; preds = %bb.o
  %i.x = add nsw i32 %i.v, -1
  store i32 %i.x, ptr %i.j, align 512, !tbaa !12
  br label %lean_dec.exit147

bb.q:                                             ; preds = %bb.o
  %.not.i.i145 = icmp eq i32 %i.v, 0
  br i1 %.not.i.i145, label %lean_dec.exit147, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #8
  br label %lean_dec.exit147

lean_dec.exit147:                                 ; preds = %bb.p, %bb.q, %bb.r, %bb.n
  %i.y = ptrtoint ptr %2 to i64
  %i.z = and i64 %i.y, 1
  %.not.i140 = icmp eq i64 %i.z, 0
  br i1 %.not.i140, label %bb.s, label %lean_dec.exit143

bb.s:                                             ; preds = %lean_dec.exit147
  %i.aa = load i32, ptr %2, align 4, !tbaa !12    ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 1
  br i1 %i.ab, label %bb.t, label %bb.u, !prof !13

bb.t:                                             ; preds = %bb.s
  %i.ac = add nsw i32 %i.aa, -1
  store i32 %i.ac, ptr %2, align 4, !tbaa !12
  br label %lean_dec.exit143

bb.u:                                             ; preds = %bb.s
  %.not.i.i141 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i141, label %lean_dec.exit143, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #8
  br label %lean_dec.exit143

lean_dec.exit143:                                 ; preds = %bb.t, %bb.u, %bb.v, %lean_dec.exit147
  %i.ad = load i32, ptr %1, align 4, !tbaa !12    ; 3 uses
  %i.ae = icmp sgt i32 %i.ad, 1
  br i1 %i.ae, label %bb.w, label %bb.x, !prof !13

bb.w:                                             ; preds = %lean_dec.exit143
  %i.af = add nsw i32 %i.ad, -1
  store i32 %i.af, ptr %1, align 4, !tbaa !12
  br label %lean_dec_ref.exit119

bb.x:                                             ; preds = %lean_dec.exit143
  %.not.i118 = icmp eq i32 %i.ad, 0
  br i1 %.not.i118, label %lean_dec_ref.exit119, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #8
  br label %lean_dec_ref.exit119

lean_dec_ref.exit119:                             ; preds = %bb.w, %bb.x, %bb.y
  %i.ag = tail call ptr @lean_string_append(ptr noundef nonnull @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__10___closed__0_value, ptr noundef %0) #8
  %i.ah = load i32, ptr %0, align 4, !tbaa !12    ; 3 uses
  %i.ai = icmp sgt i32 %i.ah, 1
  br i1 %i.ai, label %bb.z, label %bb.aa, !prof !13

bb.z:                                             ; preds = %lean_dec_ref.exit119
  %i.aj = add nsw i32 %i.ah, -1
  store i32 %i.aj, ptr %0, align 4, !tbaa !12
  br label %lean_dec_ref.exit117

bb.aa:                                            ; preds = %lean_dec_ref.exit119
  %.not.i116 = icmp eq i32 %i.ah, 0
  br i1 %.not.i116, label %lean_dec_ref.exit117, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec_ref.exit117

lean_dec_ref.exit117:                             ; preds = %bb.z, %bb.aa, %bb.ab
  %i.ak = tail call ptr @lean_string_append(ptr noundef %i.ag, ptr noundef nonnull @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__10___closed__1_value) #8
  %i.al = tail call ptr @lean_mk_io_user_error(ptr noundef %i.ak) #8 ; 2 uses
  br i1 %i.k, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %lean_dec_ref.exit117
  %i.am = getelementptr inbounds nuw i8, ptr %.0107, i64 4 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = and i32 %i.an, 16777215
  %i.ap = or disjoint i32 %i.ao, 16777216
  store i32 %i.ap, ptr %i.am, align 4
  br label %lean_dec.exit.sink.split

bb.ad:                                            ; preds = %lean_dec_ref.exit117
  tail call void @lean_inc_heartbeat() #8
  %i.aq = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 4 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.ae, label %lean_alloc_ctor.exit

bb.ae:                                            ; preds = %bb.ad
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.ad
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store i32 1, ptr %i.aq, align 4, !tbaa !12
  store i32 16842768, ptr %i.as, align 4
  br label %lean_dec.exit.sink.split

bb.af:                                            ; preds = %lean_dec.exit151
  %i.at = load ptr, ptr @l_Lean_Server_requestHandlers, align 8, !tbaa !10 ; 3 uses
  %i.au = tail call ptr @lean_st_ref_get(ptr noundef %i.at) #8 ; 5 uses
  %i.av = tail call i64 @lean_string_hash(ptr noundef %0) #8
  %i.aw = tail call zeroext range(i8 0, 2) i8 @l_Lean_PersistentHashMap_containsAux___at___00Lean_PersistentHashMap_contains___at___00Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__0_spec__2_spec__3___redArg(ptr noundef %i.au, i64 noundef %i.av, ptr noundef %0)
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = and i64 %i.ax, 1
  %.not.i136 = icmp eq i64 %i.ay, 0
  br i1 %.not.i136, label %bb.ag, label %lean_dec.exit139

bb.ag:                                            ; preds = %bb.af
  %i.az = load i32, ptr %i.au, align 4, !tbaa !12 ; 3 uses
  %i.ba = icmp sgt i32 %i.az, 1
  br i1 %i.ba, label %bb.ah, label %bb.ai, !prof !13

bb.ah:                                            ; preds = %bb.ag
  %i.bb = add nsw i32 %i.az, -1
  store i32 %i.bb, ptr %i.au, align 4, !tbaa !12
  br label %lean_dec.exit139

bb.ai:                                            ; preds = %bb.ag
  %.not.i.i137 = icmp eq i32 %i.az, 0
  br i1 %.not.i.i137, label %lean_dec.exit139, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.au) #8
  br label %lean_dec.exit139

lean_dec.exit139:                                 ; preds = %bb.ah, %bb.ai, %bb.aj, %bb.af
  %i.bc = icmp eq i8 %i.aw, 0
  br i1 %i.bc, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %lean_dec.exit139
  %i.bd = tail call ptr @lean_st_ref_take(ptr noundef %i.at) #8
  %i.be = tail call ptr @lean_alloc_object(i64 noundef 40) #8 ; 8 uses
  store i32 1, ptr %i.be, align 4, !tbaa !12
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = and i32 %i.bg, 65535
  %i.bi = or disjoint i32 %i.bh, -184549376
  store i32 %i.bi, ptr %i.bf, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__11___lam__1___boxed, ptr %i.bj, align 8, !tbaa !10
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i16 3, ptr %i.bk, align 8, !tbaa !17
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 18
  store i16 2, ptr %i.bl, align 2, !tbaa !17
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr %2, ptr %i.bm, align 8, !tbaa !10
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  store ptr %i.j, ptr %i.bn, align 8, !tbaa !10
  %i.bo = tail call ptr @lean_alloc_object(i64 noundef 40) #8 ; 8 uses
  store i32 1, ptr %i.bo, align 4, !tbaa !12
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = and i32 %i.bq, 65535
  %i.bs = or disjoint i32 %i.br, -184549376
  store i32 %i.bs, ptr %i.bp, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__11___lam__2___boxed, ptr %i.bt, align 8, !tbaa !10
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store i16 5, ptr %i.bu, align 8, !tbaa !17
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 18
  store i16 2, ptr %i.bv, align 2, !tbaa !17
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store ptr %1, ptr %i.bw, align 8, !tbaa !10
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  store ptr %i.be, ptr %i.bx, align 8, !tbaa !10
  tail call void @lean_inc_heartbeat() #8
  %i.by = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #8 ; 6 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.al, label %lean_alloc_ctor.exit155

bb.al:                                            ; preds = %bb.ak
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit155:                          ; preds = %bb.ak
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  store i32 1, ptr %i.by, align 4, !tbaa !12
  store i32 131096, ptr %i.ca, align 4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__11___closed__0_value, ptr %i.cb, align 8, !tbaa !10
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store ptr %i.bo, ptr %i.cc, align 8, !tbaa !10
  %i.cd = tail call i64 @lean_string_hash(ptr noundef %0) #8
  %i.ce = tail call ptr @l_Lean_PersistentHashMap_insertAux___at___00Lean_PersistentHashMap_insert___at___00Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__0_spec__3_spec__5___redArg(ptr noundef %i.bd, i64 noundef %i.cd, i64 noundef 1, ptr noundef %0, ptr noundef nonnull %i.by)
  %i.cf = tail call ptr @lean_st_ref_set(ptr noundef %i.at, ptr noundef %i.ce) #8 ; 2 uses
  br i1 %i.k, label %lean_dec.exit.sink.split, label %bb.am

bb.am:                                            ; preds = %lean_alloc_ctor.exit155
  tail call void @lean_inc_heartbeat() #8
  %i.cg = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 4 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.an, label %lean_alloc_ctor.exit156

bb.an:                                            ; preds = %bb.am
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

end_hunk_2
begin_hunk_3_@l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__9___lam__1:bb.a
  store i32 %i.ca, ptr %2, align 8, !tbaa !12
  br label %lean_dec.exit

bb.be:                                            ; preds = %bb.bc
  %.not.i.i = icmp eq i32 %i.by, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_inc.exit87, %bb.bf, %bb.be, %bb.bd, %lean_dec.exit98
  %.079 = phi ptr [ %2, %lean_dec.exit98 ], [ inttoptr (i64 1 to ptr), %bb.bd ], [ inttoptr (i64 1 to ptr), %bb.be ], [ inttoptr (i64 1 to ptr), %bb.bf ], [ inttoptr (i64 1 to ptr), %lean_inc.exit87 ]
  %i.cb = getelementptr i8, ptr %i.br, i64 8
  %.val.i133 = load i64, ptr %i.cb, align 8, !tbaa !15
  %i.cc = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_mapMUnsafe_map___at___00Array_toJson___at___00Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__9_spec__37_spec__44(i64 noundef %.val.i133, i64 noundef 0, ptr noundef %i.br)
  tail call void @lean_inc_heartbeat() #8
  %i.cd = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 7 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %bb.bg, label %l_Array_toJson___at___00Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__9_spec__37.exit

bb.bg:                                            ; preds = %lean_dec.exit
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

l_Array_toJson___at___00Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__9_spec__37.exit: ; preds = %lean_dec.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  store i32 1, ptr %i.cd, align 4, !tbaa !12
  store i32 67174416, ptr %i.cf, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr %i.cc, ptr %i.cg, align 8, !tbaa !10
  store i32 2, ptr %i.cd, align 8, !tbaa !12
  tail call void @lean_inc_heartbeat() #8
  %i.ch = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 5 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.bh, label %lean_alloc_ctor.exit137

bb.bh:                                            ; preds = %l_Array_toJson___at___00Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__9_spec__37.exit
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit137:                          ; preds = %l_Array_toJson___at___00Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__9_spec__37.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  store i32 1, ptr %i.ch, align 4, !tbaa !12
  store i32 16842768, ptr %i.cj, align 4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr %i.cd, ptr %i.ck, align 8, !tbaa !10
  %i.cl = tail call ptr @l_Lean_Json_compress(ptr noundef nonnull %i.cd) #8
  tail call void @lean_inc_heartbeat() #8
  %i.cm = tail call noalias ptr @mi_malloc_small(i64 noundef 32) #8 ; 8 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.bi, label %lean_alloc_ctor.exit139

bb.bi:                                            ; preds = %lean_alloc_ctor.exit137
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit139:                          ; preds = %lean_alloc_ctor.exit137
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 24 ; 2 uses
  store i64 0, ptr %i.cp, align 8, !tbaa !15
  store i32 1, ptr %i.cm, align 8, !tbaa !12
  store i32 131104, ptr %i.co, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr %i.ch, ptr %i.cq, align 8, !tbaa !10
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store ptr %i.cl, ptr %i.cr, align 8, !tbaa !10
  store i8 %1, ptr %i.cp, align 8, !tbaa !21
  br i1 %i.bs, label %lean_dec.exit106.sink.split, label %bb.bj

bb.bj:                                            ; preds = %lean_alloc_ctor.exit139
  tail call void @lean_inc_heartbeat() #8
  %i.cs = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %bb.bk, label %lean_dec.exit106.sink.split.sink.split

bb.bk:                                            ; preds = %bb.bj
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_dec.exit106.sink.split.sink.split:           ; preds = %bb.bj, %bb.ar, %bb.r
  %.sink165 = phi ptr [ %i.bl, %bb.ar ], [ %i.x, %bb.r ], [ %i.cs, %bb.bj ] ; 3 uses
  %.sink162 = phi i32 [ 16842768, %bb.ar ], [ 65552, %bb.r ], [ 16842768, %bb.bj ]
  %.sink.ph = phi ptr [ %i.bf, %bb.ar ], [ %i.n, %bb.r ], [ %i.cm, %bb.bj ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.sink165, i64 4
  store i32 1, ptr %.sink165, align 4, !tbaa !12
  store i32 %.sink162, ptr %i.cu, align 4
  br label %lean_dec.exit106.sink.split

lean_dec.exit106.sink.split:                      ; preds = %lean_dec.exit106.sink.split.sink.split, %lean_alloc_ctor.exit139, %lean_alloc_ctor.exit128
  %.sink161 = phi ptr [ %.079, %lean_alloc_ctor.exit139 ], [ %.082, %lean_alloc_ctor.exit128 ], [ %.sink165, %lean_dec.exit106.sink.split.sink.split ] ; 2 uses
  %.sink = phi ptr [ %i.cm, %lean_alloc_ctor.exit139 ], [ %i.bf, %lean_alloc_ctor.exit128 ], [ %.sink.ph, %lean_dec.exit106.sink.split.sink.split ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.sink161, i64 8
  store ptr %.sink, ptr %i.cv, align 8, !tbaa !10
  br label %lean_dec.exit106

lean_dec.exit106:                                 ; preds = %lean_dec.exit106.sink.split, %lean_dec.exit110
  %.3 = phi ptr [ %2, %lean_dec.exit110 ], [ %.sink161, %lean_dec.exit106.sink.split ]
  ret ptr %.3
}

; Function Attrs: nounwind uwtable
define noundef ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__9___lam__1___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  %i.d = tail call ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__9___lam__1(ptr noundef %0, i8 noundef zeroext %i.c, ptr noundef %2)
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__9(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr (...) @l_Lean_initializing() #8 ; 14 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = and i64 %i.b, 1
  %.not.i153 = icmp eq i64 %i.c, 0                ; 3 uses
  br i1 %.not.i153, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 1
  %i.e = trunc i64 %i.d to i32
  br label %lean_obj_tag.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.a, i64 4
  %.val.i = load i32, ptr %i.f, align 4
  %i.g = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.e, %bb.b ], [ %i.g, %bb.c ]
  %i.h = icmp eq i32 %.0.i, 0
  br i1 %i.h, label %bb.d, label %bb.bg

bb.d:                                             ; preds = %lean_obj_tag.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !10   ; 11 uses
  %.val152 = load i32, ptr %i.a, align 8, !tbaa !12
  %i.k = icmp eq i32 %.val152, 1                  ; 4 uses
  %.pre = ptrtoint ptr %i.j to i64                ; 4 uses
  br i1 %i.k, label %lean_dec.exit151, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = and i64 %.pre, 1
  %.not.i121 = icmp eq i64 %i.l, 0
  br i1 %.not.i121, label %bb.f, label %lean_inc.exit122

bb.f:                                             ; preds = %bb.e
  %.val.i.i = load i32, ptr %i.j, align 4, !tbaa !12 ; 3 uses
  %i.m = icmp sgt i32 %.val.i.i, 0
  br i1 %i.m, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.n = add nuw i32 %.val.i.i, 1
  store i32 %i.n, ptr %i.j, align 4, !tbaa !12
  br label %lean_inc.exit122

bb.h:                                             ; preds = %bb.f
  %.not.i.i154 = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i154, label %lean_inc.exit122, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = atomicrmw sub ptr %i.j, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit122

lean_inc.exit122:                                 ; preds = %bb.i, %bb.h, %bb.g, %bb.e
  br i1 %.not.i153, label %bb.j, label %lean_dec.exit151

bb.j:                                             ; preds = %lean_inc.exit122
  %i.p = load i32, ptr %i.a, align 8, !tbaa !12   ; 3 uses
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %bb.j
  %i.r = add nsw i32 %i.p, -1
  store i32 %i.r, ptr %i.a, align 8, !tbaa !12
  br label %lean_dec.exit151

bb.l:                                             ; preds = %bb.j
  %.not.i.i149 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i149, label %lean_dec.exit151, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #8
  br label %lean_dec.exit151

lean_dec.exit151:                                 ; preds = %bb.d, %lean_inc.exit122, %bb.m, %bb.l, %bb.k
  %.0107 = phi ptr [ inttoptr (i64 1 to ptr), %bb.k ], [ inttoptr (i64 1 to ptr), %lean_inc.exit122 ], [ inttoptr (i64 1 to ptr), %bb.m ], [ inttoptr (i64 1 to ptr), %bb.l ], [ %i.a, %bb.d ] ; 5 uses
  %i.s = and i64 %.pre, 510
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.n, label %bb.af

bb.n:                                             ; preds = %lean_dec.exit151
  %i.u = and i64 %.pre, 1
  %.not.i144 = icmp eq i64 %i.u, 0
  br i1 %.not.i144, label %bb.o, label %lean_dec.exit147

bb.o:                                             ; preds = %bb.n
  %i.v = load i32, ptr %i.j, align 512, !tbaa !12 ; 3 uses
  %i.w = icmp sgt i32 %i.v, 1
  br i1 %i.w, label %bb.p, label %bb.q, !prof !13

bb.p:                                             ; preds = %bb.o
  %i.x = add nsw i32 %i.v, -1
  store i32 %i.x, ptr %i.j, align 512, !tbaa !12
  br label %lean_dec.exit147

bb.q:                                             ; preds = %bb.o
  %.not.i.i145 = icmp eq i32 %i.v, 0
  br i1 %.not.i.i145, label %lean_dec.exit147, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #8
  br label %lean_dec.exit147

lean_dec.exit147:                                 ; preds = %bb.p, %bb.q, %bb.r, %bb.n
  %i.y = ptrtoint ptr %2 to i64
  %i.z = and i64 %i.y, 1
  %.not.i140 = icmp eq i64 %i.z, 0
  br i1 %.not.i140, label %bb.s, label %lean_dec.exit143

bb.s:                                             ; preds = %lean_dec.exit147
  %i.aa = load i32, ptr %2, align 4, !tbaa !12    ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 1
  br i1 %i.ab, label %bb.t, label %bb.u, !prof !13

bb.t:                                             ; preds = %bb.s
  %i.ac = add nsw i32 %i.aa, -1
  store i32 %i.ac, ptr %2, align 4, !tbaa !12
  br label %lean_dec.exit143

bb.u:                                             ; preds = %bb.s
  %.not.i.i141 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i141, label %lean_dec.exit143, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #8
  br label %lean_dec.exit143

lean_dec.exit143:                                 ; preds = %bb.t, %bb.u, %bb.v, %lean_dec.exit147
  %i.ad = load i32, ptr %1, align 4, !tbaa !12    ; 3 uses
  %i.ae = icmp sgt i32 %i.ad, 1
  br i1 %i.ae, label %bb.w, label %bb.x, !prof !13

bb.w:                                             ; preds = %lean_dec.exit143
  %i.af = add nsw i32 %i.ad, -1
  store i32 %i.af, ptr %1, align 4, !tbaa !12
  br label %lean_dec_ref.exit119

bb.x:                                             ; preds = %lean_dec.exit143
  %.not.i118 = icmp eq i32 %i.ad, 0
  br i1 %.not.i118, label %lean_dec_ref.exit119, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #8
  br label %lean_dec_ref.exit119

lean_dec_ref.exit119:                             ; preds = %bb.w, %bb.x, %bb.y
  %i.ag = tail call ptr @lean_string_append(ptr noundef nonnull @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__10___closed__0_value, ptr noundef %0) #8
  %i.ah = load i32, ptr %0, align 4, !tbaa !12    ; 3 uses
  %i.ai = icmp sgt i32 %i.ah, 1
  br i1 %i.ai, label %bb.z, label %bb.aa, !prof !13

bb.z:                                             ; preds = %lean_dec_ref.exit119
  %i.aj = add nsw i32 %i.ah, -1
  store i32 %i.aj, ptr %0, align 4, !tbaa !12
  br label %lean_dec_ref.exit117

bb.aa:                                            ; preds = %lean_dec_ref.exit119
  %.not.i116 = icmp eq i32 %i.ah, 0
  br i1 %.not.i116, label %lean_dec_ref.exit117, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec_ref.exit117

lean_dec_ref.exit117:                             ; preds = %bb.z, %bb.aa, %bb.ab
  %i.ak = tail call ptr @lean_string_append(ptr noundef %i.ag, ptr noundef nonnull @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__10___closed__1_value) #8
  %i.al = tail call ptr @lean_mk_io_user_error(ptr noundef %i.ak) #8 ; 2 uses
  br i1 %i.k, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %lean_dec_ref.exit117
  %i.am = getelementptr inbounds nuw i8, ptr %.0107, i64 4 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = and i32 %i.an, 16777215
  %i.ap = or disjoint i32 %i.ao, 16777216
  store i32 %i.ap, ptr %i.am, align 4
  br label %lean_dec.exit.sink.split

bb.ad:                                            ; preds = %lean_dec_ref.exit117
  tail call void @lean_inc_heartbeat() #8
  %i.aq = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 4 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.ae, label %lean_alloc_ctor.exit

bb.ae:                                            ; preds = %bb.ad
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.ad
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store i32 1, ptr %i.aq, align 4, !tbaa !12
  store i32 16842768, ptr %i.as, align 4
  br label %lean_dec.exit.sink.split

bb.af:                                            ; preds = %lean_dec.exit151
  %i.at = load ptr, ptr @l_Lean_Server_requestHandlers, align 8, !tbaa !10 ; 3 uses
  %i.au = tail call ptr @lean_st_ref_get(ptr noundef %i.at) #8 ; 5 uses
  %i.av = tail call i64 @lean_string_hash(ptr noundef %0) #8
  %i.aw = tail call zeroext range(i8 0, 2) i8 @l_Lean_PersistentHashMap_containsAux___at___00Lean_PersistentHashMap_contains___at___00Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__0_spec__2_spec__3___redArg(ptr noundef %i.au, i64 noundef %i.av, ptr noundef %0)
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = and i64 %i.ax, 1
  %.not.i136 = icmp eq i64 %i.ay, 0
  br i1 %.not.i136, label %bb.ag, label %lean_dec.exit139

bb.ag:                                            ; preds = %bb.af
  %i.az = load i32, ptr %i.au, align 4, !tbaa !12 ; 3 uses
  %i.ba = icmp sgt i32 %i.az, 1
  br i1 %i.ba, label %bb.ah, label %bb.ai, !prof !13

bb.ah:                                            ; preds = %bb.ag
  %i.bb = add nsw i32 %i.az, -1
  store i32 %i.bb, ptr %i.au, align 4, !tbaa !12
  br label %lean_dec.exit139

bb.ai:                                            ; preds = %bb.ag
  %.not.i.i137 = icmp eq i32 %i.az, 0
  br i1 %.not.i.i137, label %lean_dec.exit139, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.au) #8
  br label %lean_dec.exit139

lean_dec.exit139:                                 ; preds = %bb.ah, %bb.ai, %bb.aj, %bb.af
  %i.bc = icmp eq i8 %i.aw, 0
  br i1 %i.bc, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %lean_dec.exit139
  %i.bd = tail call ptr @lean_st_ref_take(ptr noundef %i.at) #8
  %i.be = tail call ptr @lean_alloc_object(i64 noundef 40) #8 ; 8 uses
  store i32 1, ptr %i.be, align 4, !tbaa !12
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = and i32 %i.bg, 65535
  %i.bi = or disjoint i32 %i.bh, -184549376
  store i32 %i.bi, ptr %i.bf, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__9___lam__1___boxed, ptr %i.bj, align 8, !tbaa !10
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i16 3, ptr %i.bk, align 8, !tbaa !17
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 18
  store i16 2, ptr %i.bl, align 2, !tbaa !17
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr %2, ptr %i.bm, align 8, !tbaa !10
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  store ptr %i.j, ptr %i.bn, align 8, !tbaa !10
  %i.bo = tail call ptr @lean_alloc_object(i64 noundef 40) #8 ; 8 uses
  store i32 1, ptr %i.bo, align 4, !tbaa !12
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = and i32 %i.bq, 65535
  %i.bs = or disjoint i32 %i.br, -184549376
  store i32 %i.bs, ptr %i.bp, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__9___lam__2___boxed, ptr %i.bt, align 8, !tbaa !10
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store i16 5, ptr %i.bu, align 8, !tbaa !17
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 18
  store i16 2, ptr %i.bv, align 2, !tbaa !17
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store ptr %1, ptr %i.bw, align 8, !tbaa !10
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  store ptr %i.be, ptr %i.bx, align 8, !tbaa !10
  tail call void @lean_inc_heartbeat() #8
  %i.by = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #8 ; 6 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.al, label %lean_alloc_ctor.exit155

bb.al:                                            ; preds = %bb.ak
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit155:                          ; preds = %bb.ak
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  store i32 1, ptr %i.by, align 4, !tbaa !12
  store i32 131096, ptr %i.ca, align 4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__9___closed__0_value, ptr %i.cb, align 8, !tbaa !10
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store ptr %i.bo, ptr %i.cc, align 8, !tbaa !10
  %i.cd = tail call i64 @lean_string_hash(ptr noundef %0) #8
  %i.ce = tail call ptr @l_Lean_PersistentHashMap_insertAux___at___00Lean_PersistentHashMap_insert___at___00Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__0_spec__3_spec__5___redArg(ptr noundef %i.bd, i64 noundef %i.cd, i64 noundef 1, ptr noundef %0, ptr noundef nonnull %i.by)
  %i.cf = tail call ptr @lean_st_ref_set(ptr noundef %i.at, ptr noundef %i.ce) #8 ; 2 uses
  br i1 %i.k, label %lean_dec.exit.sink.split, label %bb.am

bb.am:                                            ; preds = %lean_alloc_ctor.exit155
  tail call void @lean_inc_heartbeat() #8
  %i.cg = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 4 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.an, label %lean_alloc_ctor.exit156

bb.an:                                            ; preds = %bb.am
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

end_hunk_3
begin_hunk_4_@l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__3___lam__1:bb.a

bb.bf:                                            ; preds = %bb.be
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_inc.exit87, %bb.bf, %bb.be, %bb.bd, %lean_dec.exit98
  %.079 = phi ptr [ %2, %lean_dec.exit98 ], [ inttoptr (i64 1 to ptr), %bb.bd ], [ inttoptr (i64 1 to ptr), %bb.be ], [ inttoptr (i64 1 to ptr), %bb.bf ], [ inttoptr (i64 1 to ptr), %lean_inc.exit87 ]
  %i.cb = tail call ptr @l_Option_toJson___at___00Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__3_spec__13(ptr noundef %i.br) ; 6 uses
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = and i64 %i.cc, 1
  %.not.i = icmp eq i64 %i.cd, 0
  br i1 %.not.i, label %bb.bg, label %lean_inc.exit

bb.bg:                                            ; preds = %lean_dec.exit
  %.val.i.i133 = load i32, ptr %i.cb, align 4, !tbaa !12 ; 3 uses
  %i.ce = icmp sgt i32 %.val.i.i133, 0
  br i1 %i.ce, label %bb.bh, label %bb.bi, !prof !13

bb.bh:                                            ; preds = %bb.bg
  %i.cf = add nuw i32 %.val.i.i133, 1
  store i32 %i.cf, ptr %i.cb, align 4, !tbaa !12
  br label %lean_inc.exit

bb.bi:                                            ; preds = %bb.bg
  %.not.i.i134 = icmp eq i32 %.val.i.i133, 0
  br i1 %.not.i.i134, label %lean_inc.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.cg = atomicrmw sub ptr %i.cb, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.bj, %bb.bi, %bb.bh, %lean_dec.exit
  tail call void @lean_inc_heartbeat() #8
  %i.ch = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 5 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.bk, label %lean_alloc_ctor.exit136

bb.bk:                                            ; preds = %lean_inc.exit
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit136:                          ; preds = %lean_inc.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  store i32 1, ptr %i.ch, align 4, !tbaa !12
  store i32 16842768, ptr %i.cj, align 4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr %i.cb, ptr %i.ck, align 8, !tbaa !10
  %i.cl = tail call ptr @l_Lean_Json_compress(ptr noundef %i.cb) #8
  tail call void @lean_inc_heartbeat() #8
  %i.cm = tail call noalias ptr @mi_malloc_small(i64 noundef 32) #8 ; 8 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.bl, label %lean_alloc_ctor.exit138

bb.bl:                                            ; preds = %lean_alloc_ctor.exit136
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit138:                          ; preds = %lean_alloc_ctor.exit136
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 24 ; 2 uses
  store i64 0, ptr %i.cp, align 8, !tbaa !15
  store i32 1, ptr %i.cm, align 8, !tbaa !12
  store i32 131104, ptr %i.co, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr %i.ch, ptr %i.cq, align 8, !tbaa !10
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store ptr %i.cl, ptr %i.cr, align 8, !tbaa !10
  store i8 %1, ptr %i.cp, align 8, !tbaa !21
  br i1 %i.bs, label %lean_dec.exit106.sink.split, label %bb.bm

bb.bm:                                            ; preds = %lean_alloc_ctor.exit138
  tail call void @lean_inc_heartbeat() #8
  %i.cs = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %bb.bn, label %lean_dec.exit106.sink.split.sink.split

bb.bn:                                            ; preds = %bb.bm
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_dec.exit106.sink.split.sink.split:           ; preds = %bb.bm, %bb.ar, %bb.r
  %.sink163 = phi ptr [ %i.bl, %bb.ar ], [ %i.x, %bb.r ], [ %i.cs, %bb.bm ] ; 3 uses
  %.sink160 = phi i32 [ 16842768, %bb.ar ], [ 65552, %bb.r ], [ 16842768, %bb.bm ]
  %.sink.ph = phi ptr [ %i.bf, %bb.ar ], [ %i.n, %bb.r ], [ %i.cm, %bb.bm ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.sink163, i64 4
  store i32 1, ptr %.sink163, align 4, !tbaa !12
  store i32 %.sink160, ptr %i.cu, align 4
  br label %lean_dec.exit106.sink.split

lean_dec.exit106.sink.split:                      ; preds = %lean_dec.exit106.sink.split.sink.split, %lean_alloc_ctor.exit138, %lean_alloc_ctor.exit128
  %.sink159 = phi ptr [ %.079, %lean_alloc_ctor.exit138 ], [ %.082, %lean_alloc_ctor.exit128 ], [ %.sink163, %lean_dec.exit106.sink.split.sink.split ] ; 2 uses
  %.sink = phi ptr [ %i.cm, %lean_alloc_ctor.exit138 ], [ %i.bf, %lean_alloc_ctor.exit128 ], [ %.sink.ph, %lean_dec.exit106.sink.split.sink.split ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.sink159, i64 8
  store ptr %.sink, ptr %i.cv, align 8, !tbaa !10
  br label %lean_dec.exit106

lean_dec.exit106:                                 ; preds = %lean_dec.exit106.sink.split, %lean_dec.exit110
  %.3 = phi ptr [ %2, %lean_dec.exit110 ], [ %.sink159, %lean_dec.exit106.sink.split ]
  ret ptr %.3
}

; Function Attrs: nounwind uwtable
define noundef ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__3___lam__1___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  %i.d = tail call ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__3___lam__1(ptr noundef %0, i8 noundef zeroext %i.c, ptr noundef %2)
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__3(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr (...) @l_Lean_initializing() #8 ; 14 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = and i64 %i.b, 1
  %.not.i153 = icmp eq i64 %i.c, 0                ; 3 uses
  br i1 %.not.i153, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 1
  %i.e = trunc i64 %i.d to i32
  br label %lean_obj_tag.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.a, i64 4
  %.val.i = load i32, ptr %i.f, align 4
  %i.g = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.e, %bb.b ], [ %i.g, %bb.c ]
  %i.h = icmp eq i32 %.0.i, 0
  br i1 %i.h, label %bb.d, label %bb.bg

bb.d:                                             ; preds = %lean_obj_tag.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !10   ; 11 uses
  %.val152 = load i32, ptr %i.a, align 8, !tbaa !12
  %i.k = icmp eq i32 %.val152, 1                  ; 4 uses
  %.pre = ptrtoint ptr %i.j to i64                ; 4 uses
  br i1 %i.k, label %lean_dec.exit151, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = and i64 %.pre, 1
  %.not.i121 = icmp eq i64 %i.l, 0
  br i1 %.not.i121, label %bb.f, label %lean_inc.exit122

bb.f:                                             ; preds = %bb.e
  %.val.i.i = load i32, ptr %i.j, align 4, !tbaa !12 ; 3 uses
  %i.m = icmp sgt i32 %.val.i.i, 0
  br i1 %i.m, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.n = add nuw i32 %.val.i.i, 1
  store i32 %i.n, ptr %i.j, align 4, !tbaa !12
  br label %lean_inc.exit122

bb.h:                                             ; preds = %bb.f
  %.not.i.i154 = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i154, label %lean_inc.exit122, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = atomicrmw sub ptr %i.j, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit122

lean_inc.exit122:                                 ; preds = %bb.i, %bb.h, %bb.g, %bb.e
  br i1 %.not.i153, label %bb.j, label %lean_dec.exit151

bb.j:                                             ; preds = %lean_inc.exit122
  %i.p = load i32, ptr %i.a, align 8, !tbaa !12   ; 3 uses
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %bb.j
  %i.r = add nsw i32 %i.p, -1
  store i32 %i.r, ptr %i.a, align 8, !tbaa !12
  br label %lean_dec.exit151

bb.l:                                             ; preds = %bb.j
  %.not.i.i149 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i149, label %lean_dec.exit151, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #8
  br label %lean_dec.exit151

lean_dec.exit151:                                 ; preds = %bb.d, %lean_inc.exit122, %bb.m, %bb.l, %bb.k
  %.0107 = phi ptr [ inttoptr (i64 1 to ptr), %bb.k ], [ inttoptr (i64 1 to ptr), %lean_inc.exit122 ], [ inttoptr (i64 1 to ptr), %bb.m ], [ inttoptr (i64 1 to ptr), %bb.l ], [ %i.a, %bb.d ] ; 5 uses
  %i.s = and i64 %.pre, 510
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.n, label %bb.af

bb.n:                                             ; preds = %lean_dec.exit151
  %i.u = and i64 %.pre, 1
  %.not.i144 = icmp eq i64 %i.u, 0
  br i1 %.not.i144, label %bb.o, label %lean_dec.exit147

bb.o:                                             ; preds = %bb.n
  %i.v = load i32, ptr %i.j, align 512, !tbaa !12 ; 3 uses
  %i.w = icmp sgt i32 %i.v, 1
  br i1 %i.w, label %bb.p, label %bb.q, !prof !13

bb.p:                                             ; preds = %bb.o
  %i.x = add nsw i32 %i.v, -1
  store i32 %i.x, ptr %i.j, align 512, !tbaa !12
  br label %lean_dec.exit147

bb.q:                                             ; preds = %bb.o
  %.not.i.i145 = icmp eq i32 %i.v, 0
  br i1 %.not.i.i145, label %lean_dec.exit147, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #8
  br label %lean_dec.exit147

lean_dec.exit147:                                 ; preds = %bb.p, %bb.q, %bb.r, %bb.n
  %i.y = ptrtoint ptr %2 to i64
  %i.z = and i64 %i.y, 1
  %.not.i140 = icmp eq i64 %i.z, 0
  br i1 %.not.i140, label %bb.s, label %lean_dec.exit143

bb.s:                                             ; preds = %lean_dec.exit147
  %i.aa = load i32, ptr %2, align 4, !tbaa !12    ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 1
  br i1 %i.ab, label %bb.t, label %bb.u, !prof !13

bb.t:                                             ; preds = %bb.s
  %i.ac = add nsw i32 %i.aa, -1
  store i32 %i.ac, ptr %2, align 4, !tbaa !12
  br label %lean_dec.exit143

bb.u:                                             ; preds = %bb.s
  %.not.i.i141 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i141, label %lean_dec.exit143, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #8
  br label %lean_dec.exit143

lean_dec.exit143:                                 ; preds = %bb.t, %bb.u, %bb.v, %lean_dec.exit147
  %i.ad = load i32, ptr %1, align 4, !tbaa !12    ; 3 uses
  %i.ae = icmp sgt i32 %i.ad, 1
  br i1 %i.ae, label %bb.w, label %bb.x, !prof !13

bb.w:                                             ; preds = %lean_dec.exit143
  %i.af = add nsw i32 %i.ad, -1
  store i32 %i.af, ptr %1, align 4, !tbaa !12
  br label %lean_dec_ref.exit119

bb.x:                                             ; preds = %lean_dec.exit143
  %.not.i118 = icmp eq i32 %i.ad, 0
  br i1 %.not.i118, label %lean_dec_ref.exit119, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #8
  br label %lean_dec_ref.exit119

lean_dec_ref.exit119:                             ; preds = %bb.w, %bb.x, %bb.y
  %i.ag = tail call ptr @lean_string_append(ptr noundef nonnull @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__10___closed__0_value, ptr noundef %0) #8
  %i.ah = load i32, ptr %0, align 4, !tbaa !12    ; 3 uses
  %i.ai = icmp sgt i32 %i.ah, 1
  br i1 %i.ai, label %bb.z, label %bb.aa, !prof !13

bb.z:                                             ; preds = %lean_dec_ref.exit119
  %i.aj = add nsw i32 %i.ah, -1
  store i32 %i.aj, ptr %0, align 4, !tbaa !12
  br label %lean_dec_ref.exit117

bb.aa:                                            ; preds = %lean_dec_ref.exit119
  %.not.i116 = icmp eq i32 %i.ah, 0
  br i1 %.not.i116, label %lean_dec_ref.exit117, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec_ref.exit117

lean_dec_ref.exit117:                             ; preds = %bb.z, %bb.aa, %bb.ab
  %i.ak = tail call ptr @lean_string_append(ptr noundef %i.ag, ptr noundef nonnull @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__10___closed__1_value) #8
  %i.al = tail call ptr @lean_mk_io_user_error(ptr noundef %i.ak) #8 ; 2 uses
  br i1 %i.k, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %lean_dec_ref.exit117
  %i.am = getelementptr inbounds nuw i8, ptr %.0107, i64 4 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = and i32 %i.an, 16777215
  %i.ap = or disjoint i32 %i.ao, 16777216
  store i32 %i.ap, ptr %i.am, align 4
  br label %lean_dec.exit.sink.split

bb.ad:                                            ; preds = %lean_dec_ref.exit117
  tail call void @lean_inc_heartbeat() #8
  %i.aq = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 4 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.ae, label %lean_alloc_ctor.exit

bb.ae:                                            ; preds = %bb.ad
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.ad
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store i32 1, ptr %i.aq, align 4, !tbaa !12
  store i32 16842768, ptr %i.as, align 4
  br label %lean_dec.exit.sink.split

bb.af:                                            ; preds = %lean_dec.exit151
  %i.at = load ptr, ptr @l_Lean_Server_requestHandlers, align 8, !tbaa !10 ; 3 uses
  %i.au = tail call ptr @lean_st_ref_get(ptr noundef %i.at) #8 ; 5 uses
  %i.av = tail call i64 @lean_string_hash(ptr noundef %0) #8
  %i.aw = tail call zeroext range(i8 0, 2) i8 @l_Lean_PersistentHashMap_containsAux___at___00Lean_PersistentHashMap_contains___at___00Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__0_spec__2_spec__3___redArg(ptr noundef %i.au, i64 noundef %i.av, ptr noundef %0)
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = and i64 %i.ax, 1
  %.not.i136 = icmp eq i64 %i.ay, 0
  br i1 %.not.i136, label %bb.ag, label %lean_dec.exit139

bb.ag:                                            ; preds = %bb.af
  %i.az = load i32, ptr %i.au, align 4, !tbaa !12 ; 3 uses
  %i.ba = icmp sgt i32 %i.az, 1
  br i1 %i.ba, label %bb.ah, label %bb.ai, !prof !13

bb.ah:                                            ; preds = %bb.ag
  %i.bb = add nsw i32 %i.az, -1
  store i32 %i.bb, ptr %i.au, align 4, !tbaa !12
  br label %lean_dec.exit139

bb.ai:                                            ; preds = %bb.ag
  %.not.i.i137 = icmp eq i32 %i.az, 0
  br i1 %.not.i.i137, label %lean_dec.exit139, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.au) #8
  br label %lean_dec.exit139

lean_dec.exit139:                                 ; preds = %bb.ah, %bb.ai, %bb.aj, %bb.af
  %i.bc = icmp eq i8 %i.aw, 0
  br i1 %i.bc, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %lean_dec.exit139
  %i.bd = tail call ptr @lean_st_ref_take(ptr noundef %i.at) #8
  %i.be = tail call ptr @lean_alloc_object(i64 noundef 40) #8 ; 8 uses
  store i32 1, ptr %i.be, align 4, !tbaa !12
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = and i32 %i.bg, 65535
  %i.bi = or disjoint i32 %i.bh, -184549376
  store i32 %i.bi, ptr %i.bf, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__3___lam__1___boxed, ptr %i.bj, align 8, !tbaa !10
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i16 3, ptr %i.bk, align 8, !tbaa !17
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 18
  store i16 2, ptr %i.bl, align 2, !tbaa !17
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr %2, ptr %i.bm, align 8, !tbaa !10
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  store ptr %i.j, ptr %i.bn, align 8, !tbaa !10
  %i.bo = tail call ptr @lean_alloc_object(i64 noundef 40) #8 ; 8 uses
  store i32 1, ptr %i.bo, align 4, !tbaa !12
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = and i32 %i.bq, 65535
  %i.bs = or disjoint i32 %i.br, -184549376
  store i32 %i.bs, ptr %i.bp, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__3___lam__2___boxed, ptr %i.bt, align 8, !tbaa !10
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store i16 5, ptr %i.bu, align 8, !tbaa !17
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 18
  store i16 2, ptr %i.bv, align 2, !tbaa !17
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store ptr %1, ptr %i.bw, align 8, !tbaa !10
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  store ptr %i.be, ptr %i.bx, align 8, !tbaa !10
  tail call void @lean_inc_heartbeat() #8
  %i.by = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #8 ; 6 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.al, label %lean_alloc_ctor.exit155

bb.al:                                            ; preds = %bb.ak
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit155:                          ; preds = %bb.ak
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  store i32 1, ptr %i.by, align 4, !tbaa !12
  store i32 131096, ptr %i.ca, align 4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__3___closed__0_value, ptr %i.cb, align 8, !tbaa !10
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store ptr %i.bo, ptr %i.cc, align 8, !tbaa !10
  %i.cd = tail call i64 @lean_string_hash(ptr noundef %0) #8
  %i.ce = tail call ptr @l_Lean_PersistentHashMap_insertAux___at___00Lean_PersistentHashMap_insert___at___00Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__0_spec__3_spec__5___redArg(ptr noundef %i.bd, i64 noundef %i.cd, i64 noundef 1, ptr noundef %0, ptr noundef nonnull %i.by)
  %i.cf = tail call ptr @lean_st_ref_set(ptr noundef %i.at, ptr noundef %i.ce) #8 ; 2 uses
  br i1 %i.k, label %lean_dec.exit.sink.split, label %bb.am

bb.am:                                            ; preds = %lean_alloc_ctor.exit155
  tail call void @lean_inc_heartbeat() #8
  %i.cg = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 4 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.an, label %lean_alloc_ctor.exit156

bb.an:                                            ; preds = %bb.am
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

end_hunk_4
begin_hunk_5_@l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__2___lam__2:bb.a
  store i32 %i.bx, ptr %0, align 4, !tbaa !12
  br label %lean_dec_ref.exit

bb.bc:                                            ; preds = %lean_dec_ref.exit74
  %.not.i = icmp eq i32 %i.bv, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.bb, %bb.bc, %bb.bd
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !10 ; 5 uses
  %.val = load i32, ptr %i.a, align 8, !tbaa !12
  %i.ca = icmp eq i32 %.val, 1
  br i1 %i.ca, label %lean_dec.exit88, label %bb.be

bb.be:                                            ; preds = %lean_dec_ref.exit
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = and i64 %i.cb, 1
  %.not.i77 = icmp eq i64 %i.cc, 0
  br i1 %.not.i77, label %bb.bf, label %lean_inc.exit

bb.bf:                                            ; preds = %bb.be
  %.val.i.i114 = load i32, ptr %i.bz, align 4, !tbaa !12 ; 3 uses
  %i.cd = icmp sgt i32 %.val.i.i114, 0
  br i1 %i.cd, label %bb.bg, label %bb.bh, !prof !13

bb.bg:                                            ; preds = %bb.bf
  %i.ce = add nuw i32 %.val.i.i114, 1
  store i32 %i.ce, ptr %i.bz, align 4, !tbaa !12
  br label %lean_inc.exit

bb.bh:                                            ; preds = %bb.bf
  %.not.i.i115 = icmp eq i32 %.val.i.i114, 0
  br i1 %.not.i.i115, label %lean_inc.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.cf = atomicrmw sub ptr %i.bz, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.be
  br i1 %.not.i95, label %bb.bj, label %bb.bn

bb.bj:                                            ; preds = %lean_inc.exit
  %i.cg = load i32, ptr %i.a, align 8, !tbaa !12  ; 3 uses
  %i.ch = icmp sgt i32 %i.cg, 1
  br i1 %i.ch, label %bb.bk, label %bb.bl, !prof !13

bb.bk:                                            ; preds = %bb.bj
  %i.ci = add nsw i32 %i.cg, -1
  store i32 %i.ci, ptr %i.a, align 8, !tbaa !12
  br label %bb.bn

bb.bl:                                            ; preds = %bb.bj
  %.not.i.i = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #8
  br label %bb.bn

bb.bn:                                            ; preds = %lean_inc.exit, %bb.bm, %bb.bl, %bb.bk
  tail call void @lean_inc_heartbeat() #8
  %i.cj = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 5 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.bo, label %lean_alloc_ctor.exit117

bb.bo:                                            ; preds = %bb.bn
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit117:                          ; preds = %bb.bn
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  store i32 1, ptr %i.cj, align 4, !tbaa !12
  store i32 16842768, ptr %i.cl, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %i.bz, ptr %i.cm, align 8, !tbaa !10
  br label %lean_dec.exit88

lean_dec.exit88:                                  ; preds = %lean_dec_ref.exit, %lean_dec_ref.exit76, %lean_alloc_ctor.exit117, %bb.af, %lean_alloc_ctor.exit, %lean_alloc_ctor.exit113
  %.4 = phi ptr [ %i.ab, %lean_dec_ref.exit76 ], [ %i.aw, %lean_alloc_ctor.exit ], [ %i.ab, %bb.af ], [ %i.bo, %lean_alloc_ctor.exit113 ], [ %i.cj, %lean_alloc_ctor.exit117 ], [ %i.a, %lean_dec_ref.exit ]
  ret ptr %.4
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__2___lam__2___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__2___lam__2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %i.b = load i32, ptr %3, align 4, !tbaa !12     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %3, align 4, !tbaa !12
  br label %lean_dec_ref.exit

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #8
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.b, %bb.c, %bb.d
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__2(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr (...) @l_Lean_initializing() #8 ; 14 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = and i64 %i.b, 1
  %.not.i153 = icmp eq i64 %i.c, 0                ; 3 uses
  br i1 %.not.i153, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 1
  %i.e = trunc i64 %i.d to i32
  br label %lean_obj_tag.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.a, i64 4
  %.val.i = load i32, ptr %i.f, align 4
  %i.g = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.e, %bb.b ], [ %i.g, %bb.c ]
  %i.h = icmp eq i32 %.0.i, 0
  br i1 %i.h, label %bb.d, label %bb.bg

bb.d:                                             ; preds = %lean_obj_tag.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !10   ; 11 uses
  %.val152 = load i32, ptr %i.a, align 8, !tbaa !12
  %i.k = icmp eq i32 %.val152, 1                  ; 4 uses
  %.pre = ptrtoint ptr %i.j to i64                ; 4 uses
  br i1 %i.k, label %lean_dec.exit151, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = and i64 %.pre, 1
  %.not.i121 = icmp eq i64 %i.l, 0
  br i1 %.not.i121, label %bb.f, label %lean_inc.exit122

bb.f:                                             ; preds = %bb.e
  %.val.i.i = load i32, ptr %i.j, align 4, !tbaa !12 ; 3 uses
  %i.m = icmp sgt i32 %.val.i.i, 0
  br i1 %i.m, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.n = add nuw i32 %.val.i.i, 1
  store i32 %i.n, ptr %i.j, align 4, !tbaa !12
  br label %lean_inc.exit122

bb.h:                                             ; preds = %bb.f
  %.not.i.i154 = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i154, label %lean_inc.exit122, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = atomicrmw sub ptr %i.j, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit122

lean_inc.exit122:                                 ; preds = %bb.i, %bb.h, %bb.g, %bb.e
  br i1 %.not.i153, label %bb.j, label %lean_dec.exit151

bb.j:                                             ; preds = %lean_inc.exit122
  %i.p = load i32, ptr %i.a, align 8, !tbaa !12   ; 3 uses
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %bb.j
  %i.r = add nsw i32 %i.p, -1
  store i32 %i.r, ptr %i.a, align 8, !tbaa !12
  br label %lean_dec.exit151

bb.l:                                             ; preds = %bb.j
  %.not.i.i149 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i149, label %lean_dec.exit151, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #8
  br label %lean_dec.exit151

lean_dec.exit151:                                 ; preds = %bb.d, %lean_inc.exit122, %bb.m, %bb.l, %bb.k
  %.0107 = phi ptr [ inttoptr (i64 1 to ptr), %bb.k ], [ inttoptr (i64 1 to ptr), %lean_inc.exit122 ], [ inttoptr (i64 1 to ptr), %bb.m ], [ inttoptr (i64 1 to ptr), %bb.l ], [ %i.a, %bb.d ] ; 5 uses
  %i.s = and i64 %.pre, 510
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.n, label %bb.af

bb.n:                                             ; preds = %lean_dec.exit151
  %i.u = and i64 %.pre, 1
  %.not.i144 = icmp eq i64 %i.u, 0
  br i1 %.not.i144, label %bb.o, label %lean_dec.exit147

bb.o:                                             ; preds = %bb.n
  %i.v = load i32, ptr %i.j, align 512, !tbaa !12 ; 3 uses
  %i.w = icmp sgt i32 %i.v, 1
  br i1 %i.w, label %bb.p, label %bb.q, !prof !13

bb.p:                                             ; preds = %bb.o
  %i.x = add nsw i32 %i.v, -1
  store i32 %i.x, ptr %i.j, align 512, !tbaa !12
  br label %lean_dec.exit147

bb.q:                                             ; preds = %bb.o
  %.not.i.i145 = icmp eq i32 %i.v, 0
  br i1 %.not.i.i145, label %lean_dec.exit147, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #8
  br label %lean_dec.exit147

lean_dec.exit147:                                 ; preds = %bb.p, %bb.q, %bb.r, %bb.n
  %i.y = ptrtoint ptr %2 to i64
  %i.z = and i64 %i.y, 1
  %.not.i140 = icmp eq i64 %i.z, 0
  br i1 %.not.i140, label %bb.s, label %lean_dec.exit143

bb.s:                                             ; preds = %lean_dec.exit147
  %i.aa = load i32, ptr %2, align 4, !tbaa !12    ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 1
  br i1 %i.ab, label %bb.t, label %bb.u, !prof !13

bb.t:                                             ; preds = %bb.s
  %i.ac = add nsw i32 %i.aa, -1
  store i32 %i.ac, ptr %2, align 4, !tbaa !12
  br label %lean_dec.exit143

bb.u:                                             ; preds = %bb.s
  %.not.i.i141 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i141, label %lean_dec.exit143, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #8
  br label %lean_dec.exit143

lean_dec.exit143:                                 ; preds = %bb.t, %bb.u, %bb.v, %lean_dec.exit147
  %i.ad = load i32, ptr %1, align 4, !tbaa !12    ; 3 uses
  %i.ae = icmp sgt i32 %i.ad, 1
  br i1 %i.ae, label %bb.w, label %bb.x, !prof !13

bb.w:                                             ; preds = %lean_dec.exit143
  %i.af = add nsw i32 %i.ad, -1
  store i32 %i.af, ptr %1, align 4, !tbaa !12
  br label %lean_dec_ref.exit119

bb.x:                                             ; preds = %lean_dec.exit143
  %.not.i118 = icmp eq i32 %i.ad, 0
  br i1 %.not.i118, label %lean_dec_ref.exit119, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #8
  br label %lean_dec_ref.exit119

lean_dec_ref.exit119:                             ; preds = %bb.w, %bb.x, %bb.y
  %i.ag = tail call ptr @lean_string_append(ptr noundef nonnull @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__10___closed__0_value, ptr noundef %0) #8
  %i.ah = load i32, ptr %0, align 4, !tbaa !12    ; 3 uses
  %i.ai = icmp sgt i32 %i.ah, 1
  br i1 %i.ai, label %bb.z, label %bb.aa, !prof !13

bb.z:                                             ; preds = %lean_dec_ref.exit119
  %i.aj = add nsw i32 %i.ah, -1
  store i32 %i.aj, ptr %0, align 4, !tbaa !12
  br label %lean_dec_ref.exit117

bb.aa:                                            ; preds = %lean_dec_ref.exit119
  %.not.i116 = icmp eq i32 %i.ah, 0
  br i1 %.not.i116, label %lean_dec_ref.exit117, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec_ref.exit117

lean_dec_ref.exit117:                             ; preds = %bb.z, %bb.aa, %bb.ab
  %i.ak = tail call ptr @lean_string_append(ptr noundef %i.ag, ptr noundef nonnull @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__10___closed__1_value) #8
  %i.al = tail call ptr @lean_mk_io_user_error(ptr noundef %i.ak) #8 ; 2 uses
  br i1 %i.k, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %lean_dec_ref.exit117
  %i.am = getelementptr inbounds nuw i8, ptr %.0107, i64 4 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = and i32 %i.an, 16777215
  %i.ap = or disjoint i32 %i.ao, 16777216
  store i32 %i.ap, ptr %i.am, align 4
  br label %lean_dec.exit.sink.split

bb.ad:                                            ; preds = %lean_dec_ref.exit117
  tail call void @lean_inc_heartbeat() #8
  %i.aq = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 4 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.ae, label %lean_alloc_ctor.exit

bb.ae:                                            ; preds = %bb.ad
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.ad
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store i32 1, ptr %i.aq, align 4, !tbaa !12
  store i32 16842768, ptr %i.as, align 4
  br label %lean_dec.exit.sink.split

bb.af:                                            ; preds = %lean_dec.exit151
  %i.at = load ptr, ptr @l_Lean_Server_requestHandlers, align 8, !tbaa !10 ; 3 uses
  %i.au = tail call ptr @lean_st_ref_get(ptr noundef %i.at) #8 ; 5 uses
  %i.av = tail call i64 @lean_string_hash(ptr noundef %0) #8
  %i.aw = tail call zeroext range(i8 0, 2) i8 @l_Lean_PersistentHashMap_containsAux___at___00Lean_PersistentHashMap_contains___at___00Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__0_spec__2_spec__3___redArg(ptr noundef %i.au, i64 noundef %i.av, ptr noundef %0)
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = and i64 %i.ax, 1
  %.not.i136 = icmp eq i64 %i.ay, 0
  br i1 %.not.i136, label %bb.ag, label %lean_dec.exit139

bb.ag:                                            ; preds = %bb.af
  %i.az = load i32, ptr %i.au, align 4, !tbaa !12 ; 3 uses
  %i.ba = icmp sgt i32 %i.az, 1
  br i1 %i.ba, label %bb.ah, label %bb.ai, !prof !13

bb.ah:                                            ; preds = %bb.ag
  %i.bb = add nsw i32 %i.az, -1
  store i32 %i.bb, ptr %i.au, align 4, !tbaa !12
  br label %lean_dec.exit139

bb.ai:                                            ; preds = %bb.ag
  %.not.i.i137 = icmp eq i32 %i.az, 0
  br i1 %.not.i.i137, label %lean_dec.exit139, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.au) #8
  br label %lean_dec.exit139

lean_dec.exit139:                                 ; preds = %bb.ah, %bb.ai, %bb.aj, %bb.af
  %i.bc = icmp eq i8 %i.aw, 0
  br i1 %i.bc, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %lean_dec.exit139
  %i.bd = tail call ptr @lean_st_ref_take(ptr noundef %i.at) #8
  %i.be = tail call ptr @lean_alloc_object(i64 noundef 40) #8 ; 8 uses
  store i32 1, ptr %i.be, align 4, !tbaa !12
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = and i32 %i.bg, 65535
  %i.bi = or disjoint i32 %i.bh, -184549376
  store i32 %i.bi, ptr %i.bf, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__2___lam__1___boxed, ptr %i.bj, align 8, !tbaa !10
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i16 3, ptr %i.bk, align 8, !tbaa !17
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 18
  store i16 2, ptr %i.bl, align 2, !tbaa !17
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr %2, ptr %i.bm, align 8, !tbaa !10
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  store ptr %i.j, ptr %i.bn, align 8, !tbaa !10
  %i.bo = tail call ptr @lean_alloc_object(i64 noundef 40) #8 ; 8 uses
  store i32 1, ptr %i.bo, align 4, !tbaa !12
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = and i32 %i.bq, 65535
  %i.bs = or disjoint i32 %i.br, -184549376
  store i32 %i.bs, ptr %i.bp, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__2___lam__2___boxed, ptr %i.bt, align 8, !tbaa !10
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store i16 5, ptr %i.bu, align 8, !tbaa !17
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 18
  store i16 2, ptr %i.bv, align 2, !tbaa !17
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store ptr %1, ptr %i.bw, align 8, !tbaa !10
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  store ptr %i.be, ptr %i.bx, align 8, !tbaa !10
  tail call void @lean_inc_heartbeat() #8
  %i.by = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #8 ; 6 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.al, label %lean_alloc_ctor.exit155

bb.al:                                            ; preds = %bb.ak
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit155:                          ; preds = %bb.ak
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  store i32 1, ptr %i.by, align 4, !tbaa !12
  store i32 131096, ptr %i.ca, align 4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__2___closed__0_value, ptr %i.cb, align 8, !tbaa !10
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store ptr %i.bo, ptr %i.cc, align 8, !tbaa !10
  %i.cd = tail call i64 @lean_string_hash(ptr noundef %0) #8
  %i.ce = tail call ptr @l_Lean_PersistentHashMap_insertAux___at___00Lean_PersistentHashMap_insert___at___00Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__0_spec__3_spec__5___redArg(ptr noundef %i.bd, i64 noundef %i.cd, i64 noundef 1, ptr noundef %0, ptr noundef nonnull %i.by)
  %i.cf = tail call ptr @lean_st_ref_set(ptr noundef %i.at, ptr noundef %i.ce) #8 ; 2 uses
  br i1 %i.k, label %lean_dec.exit.sink.split, label %bb.am

bb.am:                                            ; preds = %lean_alloc_ctor.exit155
  tail call void @lean_inc_heartbeat() #8
  %i.cg = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 4 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.an, label %lean_alloc_ctor.exit156

bb.an:                                            ; preds = %bb.am
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

end_hunk_5
begin_hunk_6_@l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__7___lam__0:bb.a
  %.not.i.i48 = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i48, label %lean_inc.exit40, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = atomicrmw sub ptr %i.j, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit40

lean_inc.exit40:                                  ; preds = %bb.i, %bb.h, %bb.g, %bb.e
  br i1 %.not.i47, label %bb.j, label %bb.n

bb.j:                                             ; preds = %lean_inc.exit40
  %i.q = load i32, ptr %i.a, align 8, !tbaa !12   ; 3 uses
  %i.r = icmp sgt i32 %i.q, 1
  br i1 %i.r, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %bb.j
  %i.s = add nsw i32 %i.q, -1
  store i32 %i.s, ptr %i.a, align 8, !tbaa !12
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %.not.i.i43 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i43, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #8
  br label %bb.n

bb.n:                                             ; preds = %lean_inc.exit40, %bb.m, %bb.l, %bb.k
  tail call void @lean_inc_heartbeat() #8
  %i.t = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %lean_dec.exit45.sink.split

bb.o:                                             ; preds = %bb.n
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

bb.p:                                             ; preds = %lean_obj_tag.exit
  br i1 %i.k, label %lean_dec.exit45, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.v = ptrtoint ptr %i.j to i64
  %i.w = and i64 %i.v, 1
  %.not.i = icmp eq i64 %i.w, 0
  br i1 %.not.i, label %bb.r, label %lean_inc.exit

bb.r:                                             ; preds = %bb.q
  %.val.i.i49 = load i32, ptr %i.j, align 4, !tbaa !12 ; 3 uses
  %i.x = icmp sgt i32 %.val.i.i49, 0
  br i1 %i.x, label %bb.s, label %bb.t, !prof !13

bb.s:                                             ; preds = %bb.r
  %i.y = add nuw i32 %.val.i.i49, 1
  store i32 %i.y, ptr %i.j, align 4, !tbaa !12
  br label %lean_inc.exit

bb.t:                                             ; preds = %bb.r
  %.not.i.i50 = icmp eq i32 %.val.i.i49, 0
  br i1 %.not.i.i50, label %lean_inc.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.z = atomicrmw sub ptr %i.j, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.u, %bb.t, %bb.s, %bb.q
  br i1 %.not.i47, label %bb.v, label %bb.z

bb.v:                                             ; preds = %lean_inc.exit
  %i.aa = load i32, ptr %i.a, align 8, !tbaa !12  ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 1
  br i1 %i.ab, label %bb.w, label %bb.x, !prof !13

bb.w:                                             ; preds = %bb.v
  %i.ac = add nsw i32 %i.aa, -1
  store i32 %i.ac, ptr %i.a, align 8, !tbaa !12
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %.not.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #8
  br label %bb.z

bb.z:                                             ; preds = %lean_inc.exit, %bb.y, %bb.x, %bb.w
  tail call void @lean_inc_heartbeat() #8
  %i.ad = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.aa, label %lean_dec.exit45.sink.split

bb.aa:                                            ; preds = %bb.z
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_dec.exit45.sink.split:                       ; preds = %bb.z, %bb.n
  %.sink62 = phi ptr [ %i.t, %bb.n ], [ %i.ad, %bb.z ] ; 4 uses
  %.sink = phi i32 [ 65552, %bb.n ], [ 16842768, %bb.z ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sink62, i64 4
  store i32 1, ptr %.sink62, align 4, !tbaa !12
  store i32 %.sink, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %.sink62, i64 8
  store ptr %i.j, ptr %i.ag, align 8, !tbaa !10
  br label %lean_dec.exit45

lean_dec.exit45:                                  ; preds = %lean_dec.exit45.sink.split, %bb.p, %bb.d
  %.2 = phi ptr [ %i.a, %bb.d ], [ %i.a, %bb.p ], [ %.sink62, %lean_dec.exit45.sink.split ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__7(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr (...) @l_Lean_initializing() #8 ; 14 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = and i64 %i.b, 1
  %.not.i153 = icmp eq i64 %i.c, 0                ; 3 uses
  br i1 %.not.i153, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 1
  %i.e = trunc i64 %i.d to i32
  br label %lean_obj_tag.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.a, i64 4
  %.val.i = load i32, ptr %i.f, align 4
  %i.g = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.e, %bb.b ], [ %i.g, %bb.c ]
  %i.h = icmp eq i32 %.0.i, 0
  br i1 %i.h, label %bb.d, label %bb.bg

bb.d:                                             ; preds = %lean_obj_tag.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !10   ; 11 uses
  %.val152 = load i32, ptr %i.a, align 8, !tbaa !12
  %i.k = icmp eq i32 %.val152, 1                  ; 4 uses
  %.pre = ptrtoint ptr %i.j to i64                ; 4 uses
  br i1 %i.k, label %lean_dec.exit151, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = and i64 %.pre, 1
  %.not.i121 = icmp eq i64 %i.l, 0
  br i1 %.not.i121, label %bb.f, label %lean_inc.exit122

bb.f:                                             ; preds = %bb.e
  %.val.i.i = load i32, ptr %i.j, align 4, !tbaa !12 ; 3 uses
  %i.m = icmp sgt i32 %.val.i.i, 0
  br i1 %i.m, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.n = add nuw i32 %.val.i.i, 1
  store i32 %i.n, ptr %i.j, align 4, !tbaa !12
  br label %lean_inc.exit122

bb.h:                                             ; preds = %bb.f
  %.not.i.i154 = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i154, label %lean_inc.exit122, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = atomicrmw sub ptr %i.j, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit122

lean_inc.exit122:                                 ; preds = %bb.i, %bb.h, %bb.g, %bb.e
  br i1 %.not.i153, label %bb.j, label %lean_dec.exit151

bb.j:                                             ; preds = %lean_inc.exit122
  %i.p = load i32, ptr %i.a, align 8, !tbaa !12   ; 3 uses
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %bb.j
  %i.r = add nsw i32 %i.p, -1
  store i32 %i.r, ptr %i.a, align 8, !tbaa !12
  br label %lean_dec.exit151

bb.l:                                             ; preds = %bb.j
  %.not.i.i149 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i149, label %lean_dec.exit151, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #8
  br label %lean_dec.exit151

lean_dec.exit151:                                 ; preds = %bb.d, %lean_inc.exit122, %bb.m, %bb.l, %bb.k
  %.0107 = phi ptr [ inttoptr (i64 1 to ptr), %bb.k ], [ inttoptr (i64 1 to ptr), %lean_inc.exit122 ], [ inttoptr (i64 1 to ptr), %bb.m ], [ inttoptr (i64 1 to ptr), %bb.l ], [ %i.a, %bb.d ] ; 5 uses
  %i.s = and i64 %.pre, 510
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.n, label %bb.af

bb.n:                                             ; preds = %lean_dec.exit151
  %i.u = and i64 %.pre, 1
  %.not.i144 = icmp eq i64 %i.u, 0
  br i1 %.not.i144, label %bb.o, label %lean_dec.exit147

bb.o:                                             ; preds = %bb.n
  %i.v = load i32, ptr %i.j, align 512, !tbaa !12 ; 3 uses
  %i.w = icmp sgt i32 %i.v, 1
  br i1 %i.w, label %bb.p, label %bb.q, !prof !13

bb.p:                                             ; preds = %bb.o
  %i.x = add nsw i32 %i.v, -1
  store i32 %i.x, ptr %i.j, align 512, !tbaa !12
  br label %lean_dec.exit147

bb.q:                                             ; preds = %bb.o
  %.not.i.i145 = icmp eq i32 %i.v, 0
  br i1 %.not.i.i145, label %lean_dec.exit147, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #8
  br label %lean_dec.exit147

lean_dec.exit147:                                 ; preds = %bb.p, %bb.q, %bb.r, %bb.n
  %i.y = ptrtoint ptr %2 to i64
  %i.z = and i64 %i.y, 1
  %.not.i140 = icmp eq i64 %i.z, 0
  br i1 %.not.i140, label %bb.s, label %lean_dec.exit143

bb.s:                                             ; preds = %lean_dec.exit147
  %i.aa = load i32, ptr %2, align 4, !tbaa !12    ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 1
  br i1 %i.ab, label %bb.t, label %bb.u, !prof !13

bb.t:                                             ; preds = %bb.s
  %i.ac = add nsw i32 %i.aa, -1
  store i32 %i.ac, ptr %2, align 4, !tbaa !12
  br label %lean_dec.exit143

bb.u:                                             ; preds = %bb.s
  %.not.i.i141 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i141, label %lean_dec.exit143, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #8
  br label %lean_dec.exit143

lean_dec.exit143:                                 ; preds = %bb.t, %bb.u, %bb.v, %lean_dec.exit147
  %i.ad = load i32, ptr %1, align 4, !tbaa !12    ; 3 uses
  %i.ae = icmp sgt i32 %i.ad, 1
  br i1 %i.ae, label %bb.w, label %bb.x, !prof !13

bb.w:                                             ; preds = %lean_dec.exit143
  %i.af = add nsw i32 %i.ad, -1
  store i32 %i.af, ptr %1, align 4, !tbaa !12
  br label %lean_dec_ref.exit119

bb.x:                                             ; preds = %lean_dec.exit143
  %.not.i118 = icmp eq i32 %i.ad, 0
  br i1 %.not.i118, label %lean_dec_ref.exit119, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #8
  br label %lean_dec_ref.exit119

lean_dec_ref.exit119:                             ; preds = %bb.w, %bb.x, %bb.y
  %i.ag = tail call ptr @lean_string_append(ptr noundef nonnull @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__10___closed__0_value, ptr noundef %0) #8
  %i.ah = load i32, ptr %0, align 4, !tbaa !12    ; 3 uses
  %i.ai = icmp sgt i32 %i.ah, 1
  br i1 %i.ai, label %bb.z, label %bb.aa, !prof !13

bb.z:                                             ; preds = %lean_dec_ref.exit119
  %i.aj = add nsw i32 %i.ah, -1
  store i32 %i.aj, ptr %0, align 4, !tbaa !12
  br label %lean_dec_ref.exit117

bb.aa:                                            ; preds = %lean_dec_ref.exit119
  %.not.i116 = icmp eq i32 %i.ah, 0
  br i1 %.not.i116, label %lean_dec_ref.exit117, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec_ref.exit117

lean_dec_ref.exit117:                             ; preds = %bb.z, %bb.aa, %bb.ab
  %i.ak = tail call ptr @lean_string_append(ptr noundef %i.ag, ptr noundef nonnull @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__10___closed__1_value) #8
  %i.al = tail call ptr @lean_mk_io_user_error(ptr noundef %i.ak) #8 ; 2 uses
  br i1 %i.k, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %lean_dec_ref.exit117
  %i.am = getelementptr inbounds nuw i8, ptr %.0107, i64 4 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = and i32 %i.an, 16777215
  %i.ap = or disjoint i32 %i.ao, 16777216
  store i32 %i.ap, ptr %i.am, align 4
  br label %lean_dec.exit.sink.split

bb.ad:                                            ; preds = %lean_dec_ref.exit117
  tail call void @lean_inc_heartbeat() #8
  %i.aq = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 4 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.ae, label %lean_alloc_ctor.exit

bb.ae:                                            ; preds = %bb.ad
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.ad
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store i32 1, ptr %i.aq, align 4, !tbaa !12
  store i32 16842768, ptr %i.as, align 4
  br label %lean_dec.exit.sink.split

bb.af:                                            ; preds = %lean_dec.exit151
  %i.at = load ptr, ptr @l_Lean_Server_requestHandlers, align 8, !tbaa !10 ; 3 uses
  %i.au = tail call ptr @lean_st_ref_get(ptr noundef %i.at) #8 ; 5 uses
  %i.av = tail call i64 @lean_string_hash(ptr noundef %0) #8
  %i.aw = tail call zeroext range(i8 0, 2) i8 @l_Lean_PersistentHashMap_containsAux___at___00Lean_PersistentHashMap_contains___at___00Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__0_spec__2_spec__3___redArg(ptr noundef %i.au, i64 noundef %i.av, ptr noundef %0)
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = and i64 %i.ax, 1
  %.not.i136 = icmp eq i64 %i.ay, 0
  br i1 %.not.i136, label %bb.ag, label %lean_dec.exit139

bb.ag:                                            ; preds = %bb.af
  %i.az = load i32, ptr %i.au, align 4, !tbaa !12 ; 3 uses
  %i.ba = icmp sgt i32 %i.az, 1
  br i1 %i.ba, label %bb.ah, label %bb.ai, !prof !13

bb.ah:                                            ; preds = %bb.ag
  %i.bb = add nsw i32 %i.az, -1
  store i32 %i.bb, ptr %i.au, align 4, !tbaa !12
  br label %lean_dec.exit139

bb.ai:                                            ; preds = %bb.ag
  %.not.i.i137 = icmp eq i32 %i.az, 0
  br i1 %.not.i.i137, label %lean_dec.exit139, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.au) #8
  br label %lean_dec.exit139

lean_dec.exit139:                                 ; preds = %bb.ah, %bb.ai, %bb.aj, %bb.af
  %i.bc = icmp eq i8 %i.aw, 0
  br i1 %i.bc, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %lean_dec.exit139
  %i.bd = tail call ptr @lean_st_ref_take(ptr noundef %i.at) #8
  %i.be = tail call ptr @lean_alloc_object(i64 noundef 40) #8 ; 8 uses
  store i32 1, ptr %i.be, align 4, !tbaa !12
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = and i32 %i.bg, 65535
  %i.bi = or disjoint i32 %i.bh, -184549376
  store i32 %i.bi, ptr %i.bf, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__7___lam__1___boxed, ptr %i.bj, align 8, !tbaa !10
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i16 3, ptr %i.bk, align 8, !tbaa !17
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 18
  store i16 2, ptr %i.bl, align 2, !tbaa !17
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr %2, ptr %i.bm, align 8, !tbaa !10
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  store ptr %i.j, ptr %i.bn, align 8, !tbaa !10
  %i.bo = tail call ptr @lean_alloc_object(i64 noundef 40) #8 ; 8 uses
  store i32 1, ptr %i.bo, align 4, !tbaa !12
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = and i32 %i.bq, 65535
  %i.bs = or disjoint i32 %i.br, -184549376
  store i32 %i.bs, ptr %i.bp, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__7___lam__2___boxed, ptr %i.bt, align 8, !tbaa !10
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store i16 5, ptr %i.bu, align 8, !tbaa !17
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 18
  store i16 2, ptr %i.bv, align 2, !tbaa !17
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store ptr %1, ptr %i.bw, align 8, !tbaa !10
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  store ptr %i.be, ptr %i.bx, align 8, !tbaa !10
  tail call void @lean_inc_heartbeat() #8
  %i.by = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #8 ; 6 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.al, label %lean_alloc_ctor.exit155

bb.al:                                            ; preds = %bb.ak
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit155:                          ; preds = %bb.ak
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  store i32 1, ptr %i.by, align 4, !tbaa !12
  store i32 131096, ptr %i.ca, align 4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__7___closed__0_value, ptr %i.cb, align 8, !tbaa !10
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store ptr %i.bo, ptr %i.cc, align 8, !tbaa !10
  %i.cd = tail call i64 @lean_string_hash(ptr noundef %0) #8
  %i.ce = tail call ptr @l_Lean_PersistentHashMap_insertAux___at___00Lean_PersistentHashMap_insert___at___00Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__0_spec__3_spec__5___redArg(ptr noundef %i.bd, i64 noundef %i.cd, i64 noundef 1, ptr noundef %0, ptr noundef nonnull %i.by)
  %i.cf = tail call ptr @lean_st_ref_set(ptr noundef %i.at, ptr noundef %i.ce) #8 ; 2 uses
  br i1 %i.k, label %lean_dec.exit.sink.split, label %bb.am

bb.am:                                            ; preds = %lean_alloc_ctor.exit155
  tail call void @lean_inc_heartbeat() #8
  %i.cg = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 4 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.an, label %lean_alloc_ctor.exit156

bb.an:                                            ; preds = %bb.am
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

end_hunk_6
begin_hunk_7_@l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__0___lam__1:bb.a

lean_alloc_ctor.exit131:                          ; preds = %lean_obj_once.exit129
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 24 ; 2 uses
  store i64 0, ptr %i.cl, align 8, !tbaa !15
  store i32 1, ptr %i.ci, align 8, !tbaa !12
  store i32 131104, ptr %i.ck, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %.0.i127, ptr %i.cm, align 8, !tbaa !10
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store ptr %.0.i128, ptr %i.cn, align 8, !tbaa !10
  store i8 %1, ptr %i.cl, align 8, !tbaa !21
  br i1 %i.bq, label %lean_dec.exit103.sink.split, label %bb.bm

bb.bm:                                            ; preds = %lean_alloc_ctor.exit131
  tail call void @lean_inc_heartbeat() #8
  %i.co = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 2 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %bb.bn, label %lean_dec.exit103.sink.split.sink.split

bb.bn:                                            ; preds = %bb.bm
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_dec.exit103.sink.split.sink.split:           ; preds = %bb.bm, %bb.ar, %bb.r
  %.sink154 = phi ptr [ %i.bl, %bb.ar ], [ %i.x, %bb.r ], [ %i.co, %bb.bm ] ; 3 uses
  %.sink151 = phi i32 [ 16842768, %bb.ar ], [ 65552, %bb.r ], [ 16842768, %bb.bm ]
  %.sink.ph = phi ptr [ %i.bf, %bb.ar ], [ %i.n, %bb.r ], [ %i.ci, %bb.bm ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.sink154, i64 4
  store i32 1, ptr %.sink154, align 4, !tbaa !12
  store i32 %.sink151, ptr %i.cq, align 4
  br label %lean_dec.exit103.sink.split

lean_dec.exit103.sink.split:                      ; preds = %lean_dec.exit103.sink.split.sink.split, %lean_alloc_ctor.exit131, %lean_alloc_ctor.exit125
  %.076.sink = phi ptr [ %.080, %lean_alloc_ctor.exit125 ], [ %.076, %lean_alloc_ctor.exit131 ], [ %.sink154, %lean_dec.exit103.sink.split.sink.split ] ; 2 uses
  %.sink = phi ptr [ %i.bf, %lean_alloc_ctor.exit125 ], [ %i.ci, %lean_alloc_ctor.exit131 ], [ %.sink.ph, %lean_dec.exit103.sink.split.sink.split ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.076.sink, i64 8
  store ptr %.sink, ptr %i.cr, align 8, !tbaa !10
  br label %lean_dec.exit103

lean_dec.exit103:                                 ; preds = %lean_dec.exit103.sink.split, %lean_dec.exit107
  %.4 = phi ptr [ %2, %lean_dec.exit107 ], [ %.076.sink, %lean_dec.exit103.sink.split ]
  ret ptr %.4
}

; Function Attrs: nounwind uwtable
define internal noalias nonnull ptr @_init_l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__0___lam__1___closed__1() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__0___lam__1___closed__0_once seq_cst, align 4, !tbaa !23
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__0___lam__1___closed__0, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__0___lam__1___closed__0, ptr noundef nonnull @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__0___lam__1___closed__0_once, ptr noundef nonnull @_init_l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__0___lam__1___closed__0) #8
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  tail call void @lean_inc_heartbeat() #8
  %i.e = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %lean_alloc_ctor.exit

bb.d:                                             ; preds = %lean_obj_once.exit
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_obj_once.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 1, ptr %i.e, align 4, !tbaa !12
  store i32 16842768, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.0.i, ptr %i.h, align 8, !tbaa !10
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__0___lam__1___closed__2() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__0___lam__1___closed__0_once seq_cst, align 4, !tbaa !23
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__0___lam__1___closed__0, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__0___lam__1___closed__0, ptr noundef nonnull @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__0___lam__1___closed__0_once, ptr noundef nonnull @_init_l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__0___lam__1___closed__0) #8
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  %i.e = tail call ptr @l_Lean_Json_compress(ptr noundef %.0.i) #8
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define noundef ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__0___lam__1___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  %i.d = tail call ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__0___lam__1(ptr noundef %0, i8 noundef zeroext %i.c, ptr noundef %2)
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__0(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr (...) @l_Lean_initializing() #8 ; 14 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = and i64 %i.b, 1
  %.not.i153 = icmp eq i64 %i.c, 0                ; 3 uses
  br i1 %.not.i153, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 1
  %i.e = trunc i64 %i.d to i32
  br label %lean_obj_tag.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.a, i64 4
  %.val.i = load i32, ptr %i.f, align 4
  %i.g = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.e, %bb.b ], [ %i.g, %bb.c ]
  %i.h = icmp eq i32 %.0.i, 0
  br i1 %i.h, label %bb.d, label %bb.bg

bb.d:                                             ; preds = %lean_obj_tag.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !10   ; 11 uses
  %.val152 = load i32, ptr %i.a, align 8, !tbaa !12
  %i.k = icmp eq i32 %.val152, 1                  ; 4 uses
  %.pre = ptrtoint ptr %i.j to i64                ; 4 uses
  br i1 %i.k, label %lean_dec.exit151, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = and i64 %.pre, 1
  %.not.i121 = icmp eq i64 %i.l, 0
  br i1 %.not.i121, label %bb.f, label %lean_inc.exit122

bb.f:                                             ; preds = %bb.e
  %.val.i.i = load i32, ptr %i.j, align 4, !tbaa !12 ; 3 uses
  %i.m = icmp sgt i32 %.val.i.i, 0
  br i1 %i.m, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.n = add nuw i32 %.val.i.i, 1
  store i32 %i.n, ptr %i.j, align 4, !tbaa !12
  br label %lean_inc.exit122

bb.h:                                             ; preds = %bb.f
  %.not.i.i154 = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i154, label %lean_inc.exit122, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = atomicrmw sub ptr %i.j, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit122

lean_inc.exit122:                                 ; preds = %bb.i, %bb.h, %bb.g, %bb.e
  br i1 %.not.i153, label %bb.j, label %lean_dec.exit151

bb.j:                                             ; preds = %lean_inc.exit122
  %i.p = load i32, ptr %i.a, align 8, !tbaa !12   ; 3 uses
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %bb.j
  %i.r = add nsw i32 %i.p, -1
  store i32 %i.r, ptr %i.a, align 8, !tbaa !12
  br label %lean_dec.exit151

bb.l:                                             ; preds = %bb.j
  %.not.i.i149 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i149, label %lean_dec.exit151, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #8
  br label %lean_dec.exit151

lean_dec.exit151:                                 ; preds = %bb.d, %lean_inc.exit122, %bb.m, %bb.l, %bb.k
  %.0107 = phi ptr [ inttoptr (i64 1 to ptr), %bb.k ], [ inttoptr (i64 1 to ptr), %lean_inc.exit122 ], [ inttoptr (i64 1 to ptr), %bb.m ], [ inttoptr (i64 1 to ptr), %bb.l ], [ %i.a, %bb.d ] ; 5 uses
  %i.s = and i64 %.pre, 510
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.n, label %bb.af

bb.n:                                             ; preds = %lean_dec.exit151
  %i.u = and i64 %.pre, 1
  %.not.i144 = icmp eq i64 %i.u, 0
  br i1 %.not.i144, label %bb.o, label %lean_dec.exit147

bb.o:                                             ; preds = %bb.n
  %i.v = load i32, ptr %i.j, align 512, !tbaa !12 ; 3 uses
  %i.w = icmp sgt i32 %i.v, 1
  br i1 %i.w, label %bb.p, label %bb.q, !prof !13

bb.p:                                             ; preds = %bb.o
  %i.x = add nsw i32 %i.v, -1
  store i32 %i.x, ptr %i.j, align 512, !tbaa !12
  br label %lean_dec.exit147

bb.q:                                             ; preds = %bb.o
  %.not.i.i145 = icmp eq i32 %i.v, 0
  br i1 %.not.i.i145, label %lean_dec.exit147, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #8
  br label %lean_dec.exit147

lean_dec.exit147:                                 ; preds = %bb.p, %bb.q, %bb.r, %bb.n
  %i.y = ptrtoint ptr %2 to i64
  %i.z = and i64 %i.y, 1
  %.not.i140 = icmp eq i64 %i.z, 0
  br i1 %.not.i140, label %bb.s, label %lean_dec.exit143

bb.s:                                             ; preds = %lean_dec.exit147
  %i.aa = load i32, ptr %2, align 4, !tbaa !12    ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 1
  br i1 %i.ab, label %bb.t, label %bb.u, !prof !13

bb.t:                                             ; preds = %bb.s
  %i.ac = add nsw i32 %i.aa, -1
  store i32 %i.ac, ptr %2, align 4, !tbaa !12
  br label %lean_dec.exit143

bb.u:                                             ; preds = %bb.s
  %.not.i.i141 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i141, label %lean_dec.exit143, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #8
  br label %lean_dec.exit143

lean_dec.exit143:                                 ; preds = %bb.t, %bb.u, %bb.v, %lean_dec.exit147
  %i.ad = load i32, ptr %1, align 4, !tbaa !12    ; 3 uses
  %i.ae = icmp sgt i32 %i.ad, 1
  br i1 %i.ae, label %bb.w, label %bb.x, !prof !13

bb.w:                                             ; preds = %lean_dec.exit143
  %i.af = add nsw i32 %i.ad, -1
  store i32 %i.af, ptr %1, align 4, !tbaa !12
  br label %lean_dec_ref.exit119

bb.x:                                             ; preds = %lean_dec.exit143
  %.not.i118 = icmp eq i32 %i.ad, 0
  br i1 %.not.i118, label %lean_dec_ref.exit119, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #8
  br label %lean_dec_ref.exit119

lean_dec_ref.exit119:                             ; preds = %bb.w, %bb.x, %bb.y
  %i.ag = tail call ptr @lean_string_append(ptr noundef nonnull @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__10___closed__0_value, ptr noundef %0) #8
  %i.ah = load i32, ptr %0, align 4, !tbaa !12    ; 3 uses
  %i.ai = icmp sgt i32 %i.ah, 1
  br i1 %i.ai, label %bb.z, label %bb.aa, !prof !13

bb.z:                                             ; preds = %lean_dec_ref.exit119
  %i.aj = add nsw i32 %i.ah, -1
  store i32 %i.aj, ptr %0, align 4, !tbaa !12
  br label %lean_dec_ref.exit117

bb.aa:                                            ; preds = %lean_dec_ref.exit119
  %.not.i116 = icmp eq i32 %i.ah, 0
  br i1 %.not.i116, label %lean_dec_ref.exit117, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec_ref.exit117

lean_dec_ref.exit117:                             ; preds = %bb.z, %bb.aa, %bb.ab
  %i.ak = tail call ptr @lean_string_append(ptr noundef %i.ag, ptr noundef nonnull @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__10___closed__1_value) #8
  %i.al = tail call ptr @lean_mk_io_user_error(ptr noundef %i.ak) #8 ; 2 uses
  br i1 %i.k, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %lean_dec_ref.exit117
  %i.am = getelementptr inbounds nuw i8, ptr %.0107, i64 4 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = and i32 %i.an, 16777215
  %i.ap = or disjoint i32 %i.ao, 16777216
  store i32 %i.ap, ptr %i.am, align 4
  br label %lean_dec.exit.sink.split

bb.ad:                                            ; preds = %lean_dec_ref.exit117
  tail call void @lean_inc_heartbeat() #8
  %i.aq = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 4 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.ae, label %lean_alloc_ctor.exit

bb.ae:                                            ; preds = %bb.ad
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.ad
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store i32 1, ptr %i.aq, align 4, !tbaa !12
  store i32 16842768, ptr %i.as, align 4
  br label %lean_dec.exit.sink.split

bb.af:                                            ; preds = %lean_dec.exit151
  %i.at = load ptr, ptr @l_Lean_Server_requestHandlers, align 8, !tbaa !10 ; 3 uses
  %i.au = tail call ptr @lean_st_ref_get(ptr noundef %i.at) #8 ; 5 uses
  %i.av = tail call i64 @lean_string_hash(ptr noundef %0) #8
  %i.aw = tail call zeroext range(i8 0, 2) i8 @l_Lean_PersistentHashMap_containsAux___at___00Lean_PersistentHashMap_contains___at___00Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__0_spec__2_spec__3___redArg(ptr noundef %i.au, i64 noundef %i.av, ptr noundef %0)
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = and i64 %i.ax, 1
  %.not.i136 = icmp eq i64 %i.ay, 0
  br i1 %.not.i136, label %bb.ag, label %lean_dec.exit139

bb.ag:                                            ; preds = %bb.af
  %i.az = load i32, ptr %i.au, align 4, !tbaa !12 ; 3 uses
  %i.ba = icmp sgt i32 %i.az, 1
  br i1 %i.ba, label %bb.ah, label %bb.ai, !prof !13

bb.ah:                                            ; preds = %bb.ag
  %i.bb = add nsw i32 %i.az, -1
  store i32 %i.bb, ptr %i.au, align 4, !tbaa !12
  br label %lean_dec.exit139

bb.ai:                                            ; preds = %bb.ag
  %.not.i.i137 = icmp eq i32 %i.az, 0
  br i1 %.not.i.i137, label %lean_dec.exit139, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.au) #8
  br label %lean_dec.exit139

lean_dec.exit139:                                 ; preds = %bb.ah, %bb.ai, %bb.aj, %bb.af
  %i.bc = icmp eq i8 %i.aw, 0
  br i1 %i.bc, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %lean_dec.exit139
  %i.bd = tail call ptr @lean_st_ref_take(ptr noundef %i.at) #8
  %i.be = tail call ptr @lean_alloc_object(i64 noundef 40) #8 ; 8 uses
  store i32 1, ptr %i.be, align 4, !tbaa !12
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = and i32 %i.bg, 65535
  %i.bi = or disjoint i32 %i.bh, -184549376
  store i32 %i.bi, ptr %i.bf, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__0___lam__1___boxed, ptr %i.bj, align 8, !tbaa !10
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i16 3, ptr %i.bk, align 8, !tbaa !17
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 18
  store i16 2, ptr %i.bl, align 2, !tbaa !17
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr %2, ptr %i.bm, align 8, !tbaa !10
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  store ptr %i.j, ptr %i.bn, align 8, !tbaa !10
  %i.bo = tail call ptr @lean_alloc_object(i64 noundef 40) #8 ; 8 uses
  store i32 1, ptr %i.bo, align 4, !tbaa !12
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = and i32 %i.bq, 65535
  %i.bs = or disjoint i32 %i.br, -184549376
  store i32 %i.bs, ptr %i.bp, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__0___lam__2___boxed, ptr %i.bt, align 8, !tbaa !10
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store i16 5, ptr %i.bu, align 8, !tbaa !17
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 18
  store i16 2, ptr %i.bv, align 2, !tbaa !17
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store ptr %1, ptr %i.bw, align 8, !tbaa !10
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  store ptr %i.be, ptr %i.bx, align 8, !tbaa !10
  tail call void @lean_inc_heartbeat() #8
  %i.by = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #8 ; 6 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.al, label %lean_alloc_ctor.exit155

bb.al:                                            ; preds = %bb.ak
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit155:                          ; preds = %bb.ak
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  store i32 1, ptr %i.by, align 4, !tbaa !12
  store i32 131096, ptr %i.ca, align 4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__0___closed__0_value, ptr %i.cb, align 8, !tbaa !10
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store ptr %i.bo, ptr %i.cc, align 8, !tbaa !10
  %i.cd = tail call i64 @lean_string_hash(ptr noundef %0) #8
  %i.ce = tail call ptr @l_Lean_PersistentHashMap_insertAux___at___00Lean_PersistentHashMap_insert___at___00Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__0_spec__3_spec__5___redArg(ptr noundef %i.bd, i64 noundef %i.cd, i64 noundef 1, ptr noundef %0, ptr noundef nonnull %i.by)
  %i.cf = tail call ptr @lean_st_ref_set(ptr noundef %i.at, ptr noundef %i.ce) #8 ; 2 uses
  br i1 %i.k, label %lean_dec.exit.sink.split, label %bb.am

bb.am:                                            ; preds = %lean_alloc_ctor.exit155
  tail call void @lean_inc_heartbeat() #8
  %i.cg = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 4 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.an, label %lean_alloc_ctor.exit156

bb.an:                                            ; preds = %bb.am
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

end_hunk_7
begin_hunk_8_@l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__4___lam__2:bb.a
  store i32 %i.bx, ptr %0, align 4, !tbaa !12
  br label %lean_dec_ref.exit

bb.bc:                                            ; preds = %lean_dec_ref.exit74
  %.not.i = icmp eq i32 %i.bv, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.bb, %bb.bc, %bb.bd
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !10 ; 5 uses
  %.val = load i32, ptr %i.a, align 8, !tbaa !12
  %i.ca = icmp eq i32 %.val, 1
  br i1 %i.ca, label %lean_dec.exit88, label %bb.be

bb.be:                                            ; preds = %lean_dec_ref.exit
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = and i64 %i.cb, 1
  %.not.i77 = icmp eq i64 %i.cc, 0
  br i1 %.not.i77, label %bb.bf, label %lean_inc.exit

bb.bf:                                            ; preds = %bb.be
  %.val.i.i114 = load i32, ptr %i.bz, align 4, !tbaa !12 ; 3 uses
  %i.cd = icmp sgt i32 %.val.i.i114, 0
  br i1 %i.cd, label %bb.bg, label %bb.bh, !prof !13

bb.bg:                                            ; preds = %bb.bf
  %i.ce = add nuw i32 %.val.i.i114, 1
  store i32 %i.ce, ptr %i.bz, align 4, !tbaa !12
  br label %lean_inc.exit

bb.bh:                                            ; preds = %bb.bf
  %.not.i.i115 = icmp eq i32 %.val.i.i114, 0
  br i1 %.not.i.i115, label %lean_inc.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.cf = atomicrmw sub ptr %i.bz, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.be
  br i1 %.not.i95, label %bb.bj, label %bb.bn

bb.bj:                                            ; preds = %lean_inc.exit
  %i.cg = load i32, ptr %i.a, align 8, !tbaa !12  ; 3 uses
  %i.ch = icmp sgt i32 %i.cg, 1
  br i1 %i.ch, label %bb.bk, label %bb.bl, !prof !13

bb.bk:                                            ; preds = %bb.bj
  %i.ci = add nsw i32 %i.cg, -1
  store i32 %i.ci, ptr %i.a, align 8, !tbaa !12
  br label %bb.bn

bb.bl:                                            ; preds = %bb.bj
  %.not.i.i = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #8
  br label %bb.bn

bb.bn:                                            ; preds = %lean_inc.exit, %bb.bm, %bb.bl, %bb.bk
  tail call void @lean_inc_heartbeat() #8
  %i.cj = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 5 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.bo, label %lean_alloc_ctor.exit117

bb.bo:                                            ; preds = %bb.bn
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit117:                          ; preds = %bb.bn
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  store i32 1, ptr %i.cj, align 4, !tbaa !12
  store i32 16842768, ptr %i.cl, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %i.bz, ptr %i.cm, align 8, !tbaa !10
  br label %lean_dec.exit88

lean_dec.exit88:                                  ; preds = %lean_dec_ref.exit, %lean_dec_ref.exit76, %lean_alloc_ctor.exit117, %bb.af, %lean_alloc_ctor.exit, %lean_alloc_ctor.exit113
  %.4 = phi ptr [ %i.ab, %lean_dec_ref.exit76 ], [ %i.aw, %lean_alloc_ctor.exit ], [ %i.ab, %bb.af ], [ %i.bo, %lean_alloc_ctor.exit113 ], [ %i.cj, %lean_alloc_ctor.exit117 ], [ %i.a, %lean_dec_ref.exit ]
  ret ptr %.4
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__4___lam__2___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__4___lam__2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %i.b = load i32, ptr %3, align 4, !tbaa !12     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %3, align 4, !tbaa !12
  br label %lean_dec_ref.exit

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #8
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.b, %bb.c, %bb.d
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__4(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr (...) @l_Lean_initializing() #8 ; 14 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = and i64 %i.b, 1
  %.not.i153 = icmp eq i64 %i.c, 0                ; 3 uses
  br i1 %.not.i153, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 1
  %i.e = trunc i64 %i.d to i32
  br label %lean_obj_tag.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.a, i64 4
  %.val.i = load i32, ptr %i.f, align 4
  %i.g = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.e, %bb.b ], [ %i.g, %bb.c ]
  %i.h = icmp eq i32 %.0.i, 0
  br i1 %i.h, label %bb.d, label %bb.bg

bb.d:                                             ; preds = %lean_obj_tag.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !10   ; 11 uses
  %.val152 = load i32, ptr %i.a, align 8, !tbaa !12
  %i.k = icmp eq i32 %.val152, 1                  ; 4 uses
  %.pre = ptrtoint ptr %i.j to i64                ; 4 uses
  br i1 %i.k, label %lean_dec.exit151, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = and i64 %.pre, 1
  %.not.i121 = icmp eq i64 %i.l, 0
  br i1 %.not.i121, label %bb.f, label %lean_inc.exit122

bb.f:                                             ; preds = %bb.e
  %.val.i.i = load i32, ptr %i.j, align 4, !tbaa !12 ; 3 uses
  %i.m = icmp sgt i32 %.val.i.i, 0
  br i1 %i.m, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.n = add nuw i32 %.val.i.i, 1
  store i32 %i.n, ptr %i.j, align 4, !tbaa !12
  br label %lean_inc.exit122

bb.h:                                             ; preds = %bb.f
  %.not.i.i154 = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i154, label %lean_inc.exit122, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = atomicrmw sub ptr %i.j, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit122

lean_inc.exit122:                                 ; preds = %bb.i, %bb.h, %bb.g, %bb.e
  br i1 %.not.i153, label %bb.j, label %lean_dec.exit151

bb.j:                                             ; preds = %lean_inc.exit122
  %i.p = load i32, ptr %i.a, align 8, !tbaa !12   ; 3 uses
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %bb.j
  %i.r = add nsw i32 %i.p, -1
  store i32 %i.r, ptr %i.a, align 8, !tbaa !12
  br label %lean_dec.exit151

bb.l:                                             ; preds = %bb.j
  %.not.i.i149 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i149, label %lean_dec.exit151, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #8
  br label %lean_dec.exit151

lean_dec.exit151:                                 ; preds = %bb.d, %lean_inc.exit122, %bb.m, %bb.l, %bb.k
  %.0107 = phi ptr [ inttoptr (i64 1 to ptr), %bb.k ], [ inttoptr (i64 1 to ptr), %lean_inc.exit122 ], [ inttoptr (i64 1 to ptr), %bb.m ], [ inttoptr (i64 1 to ptr), %bb.l ], [ %i.a, %bb.d ] ; 5 uses
  %i.s = and i64 %.pre, 510
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.n, label %bb.af

bb.n:                                             ; preds = %lean_dec.exit151
  %i.u = and i64 %.pre, 1
  %.not.i144 = icmp eq i64 %i.u, 0
  br i1 %.not.i144, label %bb.o, label %lean_dec.exit147

bb.o:                                             ; preds = %bb.n
  %i.v = load i32, ptr %i.j, align 512, !tbaa !12 ; 3 uses
  %i.w = icmp sgt i32 %i.v, 1
  br i1 %i.w, label %bb.p, label %bb.q, !prof !13

bb.p:                                             ; preds = %bb.o
  %i.x = add nsw i32 %i.v, -1
  store i32 %i.x, ptr %i.j, align 512, !tbaa !12
  br label %lean_dec.exit147

bb.q:                                             ; preds = %bb.o
  %.not.i.i145 = icmp eq i32 %i.v, 0
  br i1 %.not.i.i145, label %lean_dec.exit147, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #8
  br label %lean_dec.exit147

lean_dec.exit147:                                 ; preds = %bb.p, %bb.q, %bb.r, %bb.n
  %i.y = ptrtoint ptr %2 to i64
  %i.z = and i64 %i.y, 1
  %.not.i140 = icmp eq i64 %i.z, 0
  br i1 %.not.i140, label %bb.s, label %lean_dec.exit143

bb.s:                                             ; preds = %lean_dec.exit147
  %i.aa = load i32, ptr %2, align 4, !tbaa !12    ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 1
  br i1 %i.ab, label %bb.t, label %bb.u, !prof !13

bb.t:                                             ; preds = %bb.s
  %i.ac = add nsw i32 %i.aa, -1
  store i32 %i.ac, ptr %2, align 4, !tbaa !12
  br label %lean_dec.exit143

bb.u:                                             ; preds = %bb.s
  %.not.i.i141 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i141, label %lean_dec.exit143, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #8
  br label %lean_dec.exit143

lean_dec.exit143:                                 ; preds = %bb.t, %bb.u, %bb.v, %lean_dec.exit147
  %i.ad = load i32, ptr %1, align 4, !tbaa !12    ; 3 uses
  %i.ae = icmp sgt i32 %i.ad, 1
  br i1 %i.ae, label %bb.w, label %bb.x, !prof !13

bb.w:                                             ; preds = %lean_dec.exit143
  %i.af = add nsw i32 %i.ad, -1
  store i32 %i.af, ptr %1, align 4, !tbaa !12
  br label %lean_dec_ref.exit119

bb.x:                                             ; preds = %lean_dec.exit143
  %.not.i118 = icmp eq i32 %i.ad, 0
  br i1 %.not.i118, label %lean_dec_ref.exit119, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #8
  br label %lean_dec_ref.exit119

lean_dec_ref.exit119:                             ; preds = %bb.w, %bb.x, %bb.y
  %i.ag = tail call ptr @lean_string_append(ptr noundef nonnull @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__10___closed__0_value, ptr noundef %0) #8
  %i.ah = load i32, ptr %0, align 4, !tbaa !12    ; 3 uses
  %i.ai = icmp sgt i32 %i.ah, 1
  br i1 %i.ai, label %bb.z, label %bb.aa, !prof !13

bb.z:                                             ; preds = %lean_dec_ref.exit119
  %i.aj = add nsw i32 %i.ah, -1
  store i32 %i.aj, ptr %0, align 4, !tbaa !12
  br label %lean_dec_ref.exit117

bb.aa:                                            ; preds = %lean_dec_ref.exit119
  %.not.i116 = icmp eq i32 %i.ah, 0
  br i1 %.not.i116, label %lean_dec_ref.exit117, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec_ref.exit117

lean_dec_ref.exit117:                             ; preds = %bb.z, %bb.aa, %bb.ab
  %i.ak = tail call ptr @lean_string_append(ptr noundef %i.ag, ptr noundef nonnull @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__10___closed__1_value) #8
  %i.al = tail call ptr @lean_mk_io_user_error(ptr noundef %i.ak) #8 ; 2 uses
  br i1 %i.k, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %lean_dec_ref.exit117
  %i.am = getelementptr inbounds nuw i8, ptr %.0107, i64 4 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = and i32 %i.an, 16777215
  %i.ap = or disjoint i32 %i.ao, 16777216
  store i32 %i.ap, ptr %i.am, align 4
  br label %lean_dec.exit.sink.split

bb.ad:                                            ; preds = %lean_dec_ref.exit117
  tail call void @lean_inc_heartbeat() #8
  %i.aq = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 4 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.ae, label %lean_alloc_ctor.exit

bb.ae:                                            ; preds = %bb.ad
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.ad
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store i32 1, ptr %i.aq, align 4, !tbaa !12
  store i32 16842768, ptr %i.as, align 4
  br label %lean_dec.exit.sink.split

bb.af:                                            ; preds = %lean_dec.exit151
  %i.at = load ptr, ptr @l_Lean_Server_requestHandlers, align 8, !tbaa !10 ; 3 uses
  %i.au = tail call ptr @lean_st_ref_get(ptr noundef %i.at) #8 ; 5 uses
  %i.av = tail call i64 @lean_string_hash(ptr noundef %0) #8
  %i.aw = tail call zeroext range(i8 0, 2) i8 @l_Lean_PersistentHashMap_containsAux___at___00Lean_PersistentHashMap_contains___at___00Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__0_spec__2_spec__3___redArg(ptr noundef %i.au, i64 noundef %i.av, ptr noundef %0)
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = and i64 %i.ax, 1
  %.not.i136 = icmp eq i64 %i.ay, 0
  br i1 %.not.i136, label %bb.ag, label %lean_dec.exit139

bb.ag:                                            ; preds = %bb.af
  %i.az = load i32, ptr %i.au, align 4, !tbaa !12 ; 3 uses
  %i.ba = icmp sgt i32 %i.az, 1
  br i1 %i.ba, label %bb.ah, label %bb.ai, !prof !13

bb.ah:                                            ; preds = %bb.ag
  %i.bb = add nsw i32 %i.az, -1
  store i32 %i.bb, ptr %i.au, align 4, !tbaa !12
  br label %lean_dec.exit139

bb.ai:                                            ; preds = %bb.ag
  %.not.i.i137 = icmp eq i32 %i.az, 0
  br i1 %.not.i.i137, label %lean_dec.exit139, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.au) #8
  br label %lean_dec.exit139

lean_dec.exit139:                                 ; preds = %bb.ah, %bb.ai, %bb.aj, %bb.af
  %i.bc = icmp eq i8 %i.aw, 0
  br i1 %i.bc, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %lean_dec.exit139
  %i.bd = tail call ptr @lean_st_ref_take(ptr noundef %i.at) #8
  %i.be = tail call ptr @lean_alloc_object(i64 noundef 40) #8 ; 8 uses
  store i32 1, ptr %i.be, align 4, !tbaa !12
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = and i32 %i.bg, 65535
  %i.bi = or disjoint i32 %i.bh, -184549376
  store i32 %i.bi, ptr %i.bf, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__4___lam__1___boxed, ptr %i.bj, align 8, !tbaa !10
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i16 3, ptr %i.bk, align 8, !tbaa !17
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 18
  store i16 2, ptr %i.bl, align 2, !tbaa !17
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr %2, ptr %i.bm, align 8, !tbaa !10
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  store ptr %i.j, ptr %i.bn, align 8, !tbaa !10
  %i.bo = tail call ptr @lean_alloc_object(i64 noundef 40) #8 ; 8 uses
  store i32 1, ptr %i.bo, align 4, !tbaa !12
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = and i32 %i.bq, 65535
  %i.bs = or disjoint i32 %i.br, -184549376
  store i32 %i.bs, ptr %i.bp, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__4___lam__2___boxed, ptr %i.bt, align 8, !tbaa !10
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store i16 5, ptr %i.bu, align 8, !tbaa !17
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 18
  store i16 2, ptr %i.bv, align 2, !tbaa !17
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store ptr %1, ptr %i.bw, align 8, !tbaa !10
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  store ptr %i.be, ptr %i.bx, align 8, !tbaa !10
  tail call void @lean_inc_heartbeat() #8
  %i.by = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #8 ; 6 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.al, label %lean_alloc_ctor.exit155

bb.al:                                            ; preds = %bb.ak
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit155:                          ; preds = %bb.ak
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  store i32 1, ptr %i.by, align 4, !tbaa !12
  store i32 131096, ptr %i.ca, align 4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__4___closed__0_value, ptr %i.cb, align 8, !tbaa !10
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store ptr %i.bo, ptr %i.cc, align 8, !tbaa !10
  %i.cd = tail call i64 @lean_string_hash(ptr noundef %0) #8
  %i.ce = tail call ptr @l_Lean_PersistentHashMap_insertAux___at___00Lean_PersistentHashMap_insert___at___00Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__0_spec__3_spec__5___redArg(ptr noundef %i.bd, i64 noundef %i.cd, i64 noundef 1, ptr noundef %0, ptr noundef nonnull %i.by)
  %i.cf = tail call ptr @lean_st_ref_set(ptr noundef %i.at, ptr noundef %i.ce) #8 ; 2 uses
  br i1 %i.k, label %lean_dec.exit.sink.split, label %bb.am

bb.am:                                            ; preds = %lean_alloc_ctor.exit155
  tail call void @lean_inc_heartbeat() #8
  %i.cg = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 4 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.an, label %lean_alloc_ctor.exit156

bb.an:                                            ; preds = %bb.am
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

end_hunk_8
begin_hunk_9_@l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__6___lam__1:bb.a
  store i32 %i.ca, ptr %2, align 8, !tbaa !12
  br label %lean_dec.exit

bb.be:                                            ; preds = %bb.bc
  %.not.i.i = icmp eq i32 %i.by, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_inc.exit87, %bb.bf, %bb.be, %bb.bd, %lean_dec.exit98
  %.079 = phi ptr [ %2, %lean_dec.exit98 ], [ inttoptr (i64 1 to ptr), %bb.bd ], [ inttoptr (i64 1 to ptr), %bb.be ], [ inttoptr (i64 1 to ptr), %bb.bf ], [ inttoptr (i64 1 to ptr), %lean_inc.exit87 ]
  %i.cb = getelementptr i8, ptr %i.br, i64 8
  %.val.i133 = load i64, ptr %i.cb, align 8, !tbaa !15
  %i.cc = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_mapMUnsafe_map___at___00Array_toJson___at___00Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__6_spec__25_spec__30(i64 noundef %.val.i133, i64 noundef 0, ptr noundef %i.br)
  tail call void @lean_inc_heartbeat() #8
  %i.cd = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 7 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %bb.bg, label %l_Array_toJson___at___00Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__6_spec__25.exit

bb.bg:                                            ; preds = %lean_dec.exit
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

l_Array_toJson___at___00Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__6_spec__25.exit: ; preds = %lean_dec.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  store i32 1, ptr %i.cd, align 4, !tbaa !12
  store i32 67174416, ptr %i.cf, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr %i.cc, ptr %i.cg, align 8, !tbaa !10
  store i32 2, ptr %i.cd, align 8, !tbaa !12
  tail call void @lean_inc_heartbeat() #8
  %i.ch = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 5 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.bh, label %lean_alloc_ctor.exit137

bb.bh:                                            ; preds = %l_Array_toJson___at___00Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__6_spec__25.exit
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit137:                          ; preds = %l_Array_toJson___at___00Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__6_spec__25.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  store i32 1, ptr %i.ch, align 4, !tbaa !12
  store i32 16842768, ptr %i.cj, align 4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr %i.cd, ptr %i.ck, align 8, !tbaa !10
  %i.cl = tail call ptr @l_Lean_Json_compress(ptr noundef nonnull %i.cd) #8
  tail call void @lean_inc_heartbeat() #8
  %i.cm = tail call noalias ptr @mi_malloc_small(i64 noundef 32) #8 ; 8 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.bi, label %lean_alloc_ctor.exit139

bb.bi:                                            ; preds = %lean_alloc_ctor.exit137
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit139:                          ; preds = %lean_alloc_ctor.exit137
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 24 ; 2 uses
  store i64 0, ptr %i.cp, align 8, !tbaa !15
  store i32 1, ptr %i.cm, align 8, !tbaa !12
  store i32 131104, ptr %i.co, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr %i.ch, ptr %i.cq, align 8, !tbaa !10
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store ptr %i.cl, ptr %i.cr, align 8, !tbaa !10
  store i8 %1, ptr %i.cp, align 8, !tbaa !21
  br i1 %i.bs, label %lean_dec.exit106.sink.split, label %bb.bj

bb.bj:                                            ; preds = %lean_alloc_ctor.exit139
  tail call void @lean_inc_heartbeat() #8
  %i.cs = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %bb.bk, label %lean_dec.exit106.sink.split.sink.split

bb.bk:                                            ; preds = %bb.bj
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_dec.exit106.sink.split.sink.split:           ; preds = %bb.bj, %bb.ar, %bb.r
  %.sink165 = phi ptr [ %i.bl, %bb.ar ], [ %i.x, %bb.r ], [ %i.cs, %bb.bj ] ; 3 uses
  %.sink162 = phi i32 [ 16842768, %bb.ar ], [ 65552, %bb.r ], [ 16842768, %bb.bj ]
  %.sink.ph = phi ptr [ %i.bf, %bb.ar ], [ %i.n, %bb.r ], [ %i.cm, %bb.bj ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.sink165, i64 4
  store i32 1, ptr %.sink165, align 4, !tbaa !12
  store i32 %.sink162, ptr %i.cu, align 4
  br label %lean_dec.exit106.sink.split

lean_dec.exit106.sink.split:                      ; preds = %lean_dec.exit106.sink.split.sink.split, %lean_alloc_ctor.exit139, %lean_alloc_ctor.exit128
  %.sink161 = phi ptr [ %.079, %lean_alloc_ctor.exit139 ], [ %.082, %lean_alloc_ctor.exit128 ], [ %.sink165, %lean_dec.exit106.sink.split.sink.split ] ; 2 uses
  %.sink = phi ptr [ %i.cm, %lean_alloc_ctor.exit139 ], [ %i.bf, %lean_alloc_ctor.exit128 ], [ %.sink.ph, %lean_dec.exit106.sink.split.sink.split ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.sink161, i64 8
  store ptr %.sink, ptr %i.cv, align 8, !tbaa !10
  br label %lean_dec.exit106

lean_dec.exit106:                                 ; preds = %lean_dec.exit106.sink.split, %lean_dec.exit110
  %.3 = phi ptr [ %2, %lean_dec.exit110 ], [ %.sink161, %lean_dec.exit106.sink.split ]
  ret ptr %.3
}

; Function Attrs: nounwind uwtable
define noundef ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__6___lam__1___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  %i.d = tail call ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__6___lam__1(ptr noundef %0, i8 noundef zeroext %i.c, ptr noundef %2)
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__6(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr (...) @l_Lean_initializing() #8 ; 14 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = and i64 %i.b, 1
  %.not.i153 = icmp eq i64 %i.c, 0                ; 3 uses
  br i1 %.not.i153, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 1
  %i.e = trunc i64 %i.d to i32
  br label %lean_obj_tag.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.a, i64 4
  %.val.i = load i32, ptr %i.f, align 4
  %i.g = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.e, %bb.b ], [ %i.g, %bb.c ]
  %i.h = icmp eq i32 %.0.i, 0
  br i1 %i.h, label %bb.d, label %bb.bg

bb.d:                                             ; preds = %lean_obj_tag.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !10   ; 11 uses
  %.val152 = load i32, ptr %i.a, align 8, !tbaa !12
  %i.k = icmp eq i32 %.val152, 1                  ; 4 uses
  %.pre = ptrtoint ptr %i.j to i64                ; 4 uses
  br i1 %i.k, label %lean_dec.exit151, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = and i64 %.pre, 1
  %.not.i121 = icmp eq i64 %i.l, 0
  br i1 %.not.i121, label %bb.f, label %lean_inc.exit122

bb.f:                                             ; preds = %bb.e
  %.val.i.i = load i32, ptr %i.j, align 4, !tbaa !12 ; 3 uses
  %i.m = icmp sgt i32 %.val.i.i, 0
  br i1 %i.m, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.n = add nuw i32 %.val.i.i, 1
  store i32 %i.n, ptr %i.j, align 4, !tbaa !12
  br label %lean_inc.exit122

bb.h:                                             ; preds = %bb.f
  %.not.i.i154 = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i154, label %lean_inc.exit122, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = atomicrmw sub ptr %i.j, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit122

lean_inc.exit122:                                 ; preds = %bb.i, %bb.h, %bb.g, %bb.e
  br i1 %.not.i153, label %bb.j, label %lean_dec.exit151

bb.j:                                             ; preds = %lean_inc.exit122
  %i.p = load i32, ptr %i.a, align 8, !tbaa !12   ; 3 uses
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %bb.j
  %i.r = add nsw i32 %i.p, -1
  store i32 %i.r, ptr %i.a, align 8, !tbaa !12
  br label %lean_dec.exit151

bb.l:                                             ; preds = %bb.j
  %.not.i.i149 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i149, label %lean_dec.exit151, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #8
  br label %lean_dec.exit151

lean_dec.exit151:                                 ; preds = %bb.d, %lean_inc.exit122, %bb.m, %bb.l, %bb.k
  %.0107 = phi ptr [ inttoptr (i64 1 to ptr), %bb.k ], [ inttoptr (i64 1 to ptr), %lean_inc.exit122 ], [ inttoptr (i64 1 to ptr), %bb.m ], [ inttoptr (i64 1 to ptr), %bb.l ], [ %i.a, %bb.d ] ; 5 uses
  %i.s = and i64 %.pre, 510
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.n, label %bb.af

bb.n:                                             ; preds = %lean_dec.exit151
  %i.u = and i64 %.pre, 1
  %.not.i144 = icmp eq i64 %i.u, 0
  br i1 %.not.i144, label %bb.o, label %lean_dec.exit147

bb.o:                                             ; preds = %bb.n
  %i.v = load i32, ptr %i.j, align 512, !tbaa !12 ; 3 uses
  %i.w = icmp sgt i32 %i.v, 1
  br i1 %i.w, label %bb.p, label %bb.q, !prof !13

bb.p:                                             ; preds = %bb.o
  %i.x = add nsw i32 %i.v, -1
  store i32 %i.x, ptr %i.j, align 512, !tbaa !12
  br label %lean_dec.exit147

bb.q:                                             ; preds = %bb.o
  %.not.i.i145 = icmp eq i32 %i.v, 0
  br i1 %.not.i.i145, label %lean_dec.exit147, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #8
  br label %lean_dec.exit147

lean_dec.exit147:                                 ; preds = %bb.p, %bb.q, %bb.r, %bb.n
  %i.y = ptrtoint ptr %2 to i64
  %i.z = and i64 %i.y, 1
  %.not.i140 = icmp eq i64 %i.z, 0
  br i1 %.not.i140, label %bb.s, label %lean_dec.exit143

bb.s:                                             ; preds = %lean_dec.exit147
  %i.aa = load i32, ptr %2, align 4, !tbaa !12    ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 1
  br i1 %i.ab, label %bb.t, label %bb.u, !prof !13

bb.t:                                             ; preds = %bb.s
  %i.ac = add nsw i32 %i.aa, -1
  store i32 %i.ac, ptr %2, align 4, !tbaa !12
  br label %lean_dec.exit143

bb.u:                                             ; preds = %bb.s
  %.not.i.i141 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i141, label %lean_dec.exit143, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #8
  br label %lean_dec.exit143

lean_dec.exit143:                                 ; preds = %bb.t, %bb.u, %bb.v, %lean_dec.exit147
  %i.ad = load i32, ptr %1, align 4, !tbaa !12    ; 3 uses
  %i.ae = icmp sgt i32 %i.ad, 1
  br i1 %i.ae, label %bb.w, label %bb.x, !prof !13

bb.w:                                             ; preds = %lean_dec.exit143
  %i.af = add nsw i32 %i.ad, -1
  store i32 %i.af, ptr %1, align 4, !tbaa !12
  br label %lean_dec_ref.exit119

bb.x:                                             ; preds = %lean_dec.exit143
  %.not.i118 = icmp eq i32 %i.ad, 0
  br i1 %.not.i118, label %lean_dec_ref.exit119, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #8
  br label %lean_dec_ref.exit119

lean_dec_ref.exit119:                             ; preds = %bb.w, %bb.x, %bb.y
  %i.ag = tail call ptr @lean_string_append(ptr noundef nonnull @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__10___closed__0_value, ptr noundef %0) #8
  %i.ah = load i32, ptr %0, align 4, !tbaa !12    ; 3 uses
  %i.ai = icmp sgt i32 %i.ah, 1
  br i1 %i.ai, label %bb.z, label %bb.aa, !prof !13

bb.z:                                             ; preds = %lean_dec_ref.exit119
  %i.aj = add nsw i32 %i.ah, -1
  store i32 %i.aj, ptr %0, align 4, !tbaa !12
  br label %lean_dec_ref.exit117

bb.aa:                                            ; preds = %lean_dec_ref.exit119
  %.not.i116 = icmp eq i32 %i.ah, 0
  br i1 %.not.i116, label %lean_dec_ref.exit117, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec_ref.exit117

lean_dec_ref.exit117:                             ; preds = %bb.z, %bb.aa, %bb.ab
  %i.ak = tail call ptr @lean_string_append(ptr noundef %i.ag, ptr noundef nonnull @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__10___closed__1_value) #8
  %i.al = tail call ptr @lean_mk_io_user_error(ptr noundef %i.ak) #8 ; 2 uses
  br i1 %i.k, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %lean_dec_ref.exit117
  %i.am = getelementptr inbounds nuw i8, ptr %.0107, i64 4 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = and i32 %i.an, 16777215
  %i.ap = or disjoint i32 %i.ao, 16777216
  store i32 %i.ap, ptr %i.am, align 4
  br label %lean_dec.exit.sink.split

bb.ad:                                            ; preds = %lean_dec_ref.exit117
  tail call void @lean_inc_heartbeat() #8
  %i.aq = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 4 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.ae, label %lean_alloc_ctor.exit

bb.ae:                                            ; preds = %bb.ad
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.ad
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store i32 1, ptr %i.aq, align 4, !tbaa !12
  store i32 16842768, ptr %i.as, align 4
  br label %lean_dec.exit.sink.split

bb.af:                                            ; preds = %lean_dec.exit151
  %i.at = load ptr, ptr @l_Lean_Server_requestHandlers, align 8, !tbaa !10 ; 3 uses
  %i.au = tail call ptr @lean_st_ref_get(ptr noundef %i.at) #8 ; 5 uses
  %i.av = tail call i64 @lean_string_hash(ptr noundef %0) #8
  %i.aw = tail call zeroext range(i8 0, 2) i8 @l_Lean_PersistentHashMap_containsAux___at___00Lean_PersistentHashMap_contains___at___00Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__0_spec__2_spec__3___redArg(ptr noundef %i.au, i64 noundef %i.av, ptr noundef %0)
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = and i64 %i.ax, 1
  %.not.i136 = icmp eq i64 %i.ay, 0
  br i1 %.not.i136, label %bb.ag, label %lean_dec.exit139

bb.ag:                                            ; preds = %bb.af
  %i.az = load i32, ptr %i.au, align 4, !tbaa !12 ; 3 uses
  %i.ba = icmp sgt i32 %i.az, 1
  br i1 %i.ba, label %bb.ah, label %bb.ai, !prof !13

bb.ah:                                            ; preds = %bb.ag
  %i.bb = add nsw i32 %i.az, -1
  store i32 %i.bb, ptr %i.au, align 4, !tbaa !12
  br label %lean_dec.exit139

bb.ai:                                            ; preds = %bb.ag
  %.not.i.i137 = icmp eq i32 %i.az, 0
  br i1 %.not.i.i137, label %lean_dec.exit139, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.au) #8
  br label %lean_dec.exit139

lean_dec.exit139:                                 ; preds = %bb.ah, %bb.ai, %bb.aj, %bb.af
  %i.bc = icmp eq i8 %i.aw, 0
  br i1 %i.bc, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %lean_dec.exit139
  %i.bd = tail call ptr @lean_st_ref_take(ptr noundef %i.at) #8
  %i.be = tail call ptr @lean_alloc_object(i64 noundef 40) #8 ; 8 uses
  store i32 1, ptr %i.be, align 4, !tbaa !12
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = and i32 %i.bg, 65535
  %i.bi = or disjoint i32 %i.bh, -184549376
  store i32 %i.bi, ptr %i.bf, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__6___lam__1___boxed, ptr %i.bj, align 8, !tbaa !10
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i16 3, ptr %i.bk, align 8, !tbaa !17
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 18
  store i16 2, ptr %i.bl, align 2, !tbaa !17
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr %2, ptr %i.bm, align 8, !tbaa !10
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  store ptr %i.j, ptr %i.bn, align 8, !tbaa !10
  %i.bo = tail call ptr @lean_alloc_object(i64 noundef 40) #8 ; 8 uses
  store i32 1, ptr %i.bo, align 4, !tbaa !12
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = and i32 %i.bq, 65535
  %i.bs = or disjoint i32 %i.br, -184549376
  store i32 %i.bs, ptr %i.bp, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__6___lam__2___boxed, ptr %i.bt, align 8, !tbaa !10
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store i16 5, ptr %i.bu, align 8, !tbaa !17
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 18
  store i16 2, ptr %i.bv, align 2, !tbaa !17
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store ptr %1, ptr %i.bw, align 8, !tbaa !10
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  store ptr %i.be, ptr %i.bx, align 8, !tbaa !10
  tail call void @lean_inc_heartbeat() #8
  %i.by = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #8 ; 6 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.al, label %lean_alloc_ctor.exit155

bb.al:                                            ; preds = %bb.ak
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit155:                          ; preds = %bb.ak
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  store i32 1, ptr %i.by, align 4, !tbaa !12
  store i32 131096, ptr %i.ca, align 4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__6___closed__0_value, ptr %i.cb, align 8, !tbaa !10
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store ptr %i.bo, ptr %i.cc, align 8, !tbaa !10
  %i.cd = tail call i64 @lean_string_hash(ptr noundef %0) #8
  %i.ce = tail call ptr @l_Lean_PersistentHashMap_insertAux___at___00Lean_PersistentHashMap_insert___at___00Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__0_spec__3_spec__5___redArg(ptr noundef %i.bd, i64 noundef %i.cd, i64 noundef 1, ptr noundef %0, ptr noundef nonnull %i.by)
  %i.cf = tail call ptr @lean_st_ref_set(ptr noundef %i.at, ptr noundef %i.ce) #8 ; 2 uses
  br i1 %i.k, label %lean_dec.exit.sink.split, label %bb.am

bb.am:                                            ; preds = %lean_alloc_ctor.exit155
  tail call void @lean_inc_heartbeat() #8
  %i.cg = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 4 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.an, label %lean_alloc_ctor.exit156

bb.an:                                            ; preds = %bb.am
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

end_hunk_9
begin_hunk_10_@l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__5___lam__1:bb.a
  store i32 %i.ca, ptr %2, align 8, !tbaa !12
  br label %lean_dec.exit

bb.be:                                            ; preds = %bb.bc
  %.not.i.i = icmp eq i32 %i.by, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_inc.exit87, %bb.bf, %bb.be, %bb.bd, %lean_dec.exit98
  %.079 = phi ptr [ %2, %lean_dec.exit98 ], [ inttoptr (i64 1 to ptr), %bb.bd ], [ inttoptr (i64 1 to ptr), %bb.be ], [ inttoptr (i64 1 to ptr), %bb.bf ], [ inttoptr (i64 1 to ptr), %lean_inc.exit87 ]
  %i.cb = getelementptr i8, ptr %i.br, i64 8
  %.val.i133 = load i64, ptr %i.cb, align 8, !tbaa !15
  %i.cc = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_mapMUnsafe_map___at___00Array_toJson___at___00Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__5_spec__21_spec__25(i64 noundef %.val.i133, i64 noundef 0, ptr noundef %i.br)
  tail call void @lean_inc_heartbeat() #8
  %i.cd = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 7 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %bb.bg, label %l_Array_toJson___at___00Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__5_spec__21.exit

bb.bg:                                            ; preds = %lean_dec.exit
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

l_Array_toJson___at___00Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__5_spec__21.exit: ; preds = %lean_dec.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  store i32 1, ptr %i.cd, align 4, !tbaa !12
  store i32 67174416, ptr %i.cf, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr %i.cc, ptr %i.cg, align 8, !tbaa !10
  store i32 2, ptr %i.cd, align 8, !tbaa !12
  tail call void @lean_inc_heartbeat() #8
  %i.ch = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 5 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.bh, label %lean_alloc_ctor.exit137

bb.bh:                                            ; preds = %l_Array_toJson___at___00Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__5_spec__21.exit
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit137:                          ; preds = %l_Array_toJson___at___00Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__5_spec__21.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  store i32 1, ptr %i.ch, align 4, !tbaa !12
  store i32 16842768, ptr %i.cj, align 4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr %i.cd, ptr %i.ck, align 8, !tbaa !10
  %i.cl = tail call ptr @l_Lean_Json_compress(ptr noundef nonnull %i.cd) #8
  tail call void @lean_inc_heartbeat() #8
  %i.cm = tail call noalias ptr @mi_malloc_small(i64 noundef 32) #8 ; 8 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.bi, label %lean_alloc_ctor.exit139

bb.bi:                                            ; preds = %lean_alloc_ctor.exit137
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit139:                          ; preds = %lean_alloc_ctor.exit137
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 24 ; 2 uses
  store i64 0, ptr %i.cp, align 8, !tbaa !15
  store i32 1, ptr %i.cm, align 8, !tbaa !12
  store i32 131104, ptr %i.co, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr %i.ch, ptr %i.cq, align 8, !tbaa !10
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store ptr %i.cl, ptr %i.cr, align 8, !tbaa !10
  store i8 %1, ptr %i.cp, align 8, !tbaa !21
  br i1 %i.bs, label %lean_dec.exit106.sink.split, label %bb.bj

bb.bj:                                            ; preds = %lean_alloc_ctor.exit139
  tail call void @lean_inc_heartbeat() #8
  %i.cs = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %bb.bk, label %lean_dec.exit106.sink.split.sink.split

bb.bk:                                            ; preds = %bb.bj
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_dec.exit106.sink.split.sink.split:           ; preds = %bb.bj, %bb.ar, %bb.r
  %.sink165 = phi ptr [ %i.bl, %bb.ar ], [ %i.x, %bb.r ], [ %i.cs, %bb.bj ] ; 3 uses
  %.sink162 = phi i32 [ 16842768, %bb.ar ], [ 65552, %bb.r ], [ 16842768, %bb.bj ]
  %.sink.ph = phi ptr [ %i.bf, %bb.ar ], [ %i.n, %bb.r ], [ %i.cm, %bb.bj ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.sink165, i64 4
  store i32 1, ptr %.sink165, align 4, !tbaa !12
  store i32 %.sink162, ptr %i.cu, align 4
  br label %lean_dec.exit106.sink.split

lean_dec.exit106.sink.split:                      ; preds = %lean_dec.exit106.sink.split.sink.split, %lean_alloc_ctor.exit139, %lean_alloc_ctor.exit128
  %.sink161 = phi ptr [ %.079, %lean_alloc_ctor.exit139 ], [ %.082, %lean_alloc_ctor.exit128 ], [ %.sink165, %lean_dec.exit106.sink.split.sink.split ] ; 2 uses
  %.sink = phi ptr [ %i.cm, %lean_alloc_ctor.exit139 ], [ %i.bf, %lean_alloc_ctor.exit128 ], [ %.sink.ph, %lean_dec.exit106.sink.split.sink.split ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.sink161, i64 8
  store ptr %.sink, ptr %i.cv, align 8, !tbaa !10
  br label %lean_dec.exit106

lean_dec.exit106:                                 ; preds = %lean_dec.exit106.sink.split, %lean_dec.exit110
  %.3 = phi ptr [ %2, %lean_dec.exit110 ], [ %.sink161, %lean_dec.exit106.sink.split ]
  ret ptr %.3
}

; Function Attrs: nounwind uwtable
define noundef ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__5___lam__1___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  %i.d = tail call ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__5___lam__1(ptr noundef %0, i8 noundef zeroext %i.c, ptr noundef %2)
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__5(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr (...) @l_Lean_initializing() #8 ; 14 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = and i64 %i.b, 1
  %.not.i153 = icmp eq i64 %i.c, 0                ; 3 uses
  br i1 %.not.i153, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 1
  %i.e = trunc i64 %i.d to i32
  br label %lean_obj_tag.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.a, i64 4
  %.val.i = load i32, ptr %i.f, align 4
  %i.g = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.e, %bb.b ], [ %i.g, %bb.c ]
  %i.h = icmp eq i32 %.0.i, 0
  br i1 %i.h, label %bb.d, label %bb.bg

bb.d:                                             ; preds = %lean_obj_tag.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !10   ; 11 uses
  %.val152 = load i32, ptr %i.a, align 8, !tbaa !12
  %i.k = icmp eq i32 %.val152, 1                  ; 4 uses
  %.pre = ptrtoint ptr %i.j to i64                ; 4 uses
  br i1 %i.k, label %lean_dec.exit151, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = and i64 %.pre, 1
  %.not.i121 = icmp eq i64 %i.l, 0
  br i1 %.not.i121, label %bb.f, label %lean_inc.exit122

bb.f:                                             ; preds = %bb.e
  %.val.i.i = load i32, ptr %i.j, align 4, !tbaa !12 ; 3 uses
  %i.m = icmp sgt i32 %.val.i.i, 0
  br i1 %i.m, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.n = add nuw i32 %.val.i.i, 1
  store i32 %i.n, ptr %i.j, align 4, !tbaa !12
  br label %lean_inc.exit122

bb.h:                                             ; preds = %bb.f
  %.not.i.i154 = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i154, label %lean_inc.exit122, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = atomicrmw sub ptr %i.j, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit122

lean_inc.exit122:                                 ; preds = %bb.i, %bb.h, %bb.g, %bb.e
  br i1 %.not.i153, label %bb.j, label %lean_dec.exit151

bb.j:                                             ; preds = %lean_inc.exit122
  %i.p = load i32, ptr %i.a, align 8, !tbaa !12   ; 3 uses
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %bb.j
  %i.r = add nsw i32 %i.p, -1
  store i32 %i.r, ptr %i.a, align 8, !tbaa !12
  br label %lean_dec.exit151

bb.l:                                             ; preds = %bb.j
  %.not.i.i149 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i149, label %lean_dec.exit151, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #8
  br label %lean_dec.exit151

lean_dec.exit151:                                 ; preds = %bb.d, %lean_inc.exit122, %bb.m, %bb.l, %bb.k
  %.0107 = phi ptr [ inttoptr (i64 1 to ptr), %bb.k ], [ inttoptr (i64 1 to ptr), %lean_inc.exit122 ], [ inttoptr (i64 1 to ptr), %bb.m ], [ inttoptr (i64 1 to ptr), %bb.l ], [ %i.a, %bb.d ] ; 5 uses
  %i.s = and i64 %.pre, 510
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.n, label %bb.af

bb.n:                                             ; preds = %lean_dec.exit151
  %i.u = and i64 %.pre, 1
  %.not.i144 = icmp eq i64 %i.u, 0
  br i1 %.not.i144, label %bb.o, label %lean_dec.exit147

bb.o:                                             ; preds = %bb.n
  %i.v = load i32, ptr %i.j, align 512, !tbaa !12 ; 3 uses
  %i.w = icmp sgt i32 %i.v, 1
  br i1 %i.w, label %bb.p, label %bb.q, !prof !13

bb.p:                                             ; preds = %bb.o
  %i.x = add nsw i32 %i.v, -1
  store i32 %i.x, ptr %i.j, align 512, !tbaa !12
  br label %lean_dec.exit147

bb.q:                                             ; preds = %bb.o
  %.not.i.i145 = icmp eq i32 %i.v, 0
  br i1 %.not.i.i145, label %lean_dec.exit147, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #8
  br label %lean_dec.exit147

lean_dec.exit147:                                 ; preds = %bb.p, %bb.q, %bb.r, %bb.n
  %i.y = ptrtoint ptr %2 to i64
  %i.z = and i64 %i.y, 1
  %.not.i140 = icmp eq i64 %i.z, 0
  br i1 %.not.i140, label %bb.s, label %lean_dec.exit143

bb.s:                                             ; preds = %lean_dec.exit147
  %i.aa = load i32, ptr %2, align 4, !tbaa !12    ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 1
  br i1 %i.ab, label %bb.t, label %bb.u, !prof !13

bb.t:                                             ; preds = %bb.s
  %i.ac = add nsw i32 %i.aa, -1
  store i32 %i.ac, ptr %2, align 4, !tbaa !12
  br label %lean_dec.exit143

bb.u:                                             ; preds = %bb.s
  %.not.i.i141 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i141, label %lean_dec.exit143, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #8
  br label %lean_dec.exit143

lean_dec.exit143:                                 ; preds = %bb.t, %bb.u, %bb.v, %lean_dec.exit147
  %i.ad = load i32, ptr %1, align 4, !tbaa !12    ; 3 uses
  %i.ae = icmp sgt i32 %i.ad, 1
  br i1 %i.ae, label %bb.w, label %bb.x, !prof !13

bb.w:                                             ; preds = %lean_dec.exit143
  %i.af = add nsw i32 %i.ad, -1
  store i32 %i.af, ptr %1, align 4, !tbaa !12
  br label %lean_dec_ref.exit119

bb.x:                                             ; preds = %lean_dec.exit143
  %.not.i118 = icmp eq i32 %i.ad, 0
  br i1 %.not.i118, label %lean_dec_ref.exit119, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #8
  br label %lean_dec_ref.exit119

lean_dec_ref.exit119:                             ; preds = %bb.w, %bb.x, %bb.y
  %i.ag = tail call ptr @lean_string_append(ptr noundef nonnull @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__10___closed__0_value, ptr noundef %0) #8
  %i.ah = load i32, ptr %0, align 4, !tbaa !12    ; 3 uses
  %i.ai = icmp sgt i32 %i.ah, 1
  br i1 %i.ai, label %bb.z, label %bb.aa, !prof !13

bb.z:                                             ; preds = %lean_dec_ref.exit119
  %i.aj = add nsw i32 %i.ah, -1
  store i32 %i.aj, ptr %0, align 4, !tbaa !12
  br label %lean_dec_ref.exit117

bb.aa:                                            ; preds = %lean_dec_ref.exit119
  %.not.i116 = icmp eq i32 %i.ah, 0
  br i1 %.not.i116, label %lean_dec_ref.exit117, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec_ref.exit117

lean_dec_ref.exit117:                             ; preds = %bb.z, %bb.aa, %bb.ab
  %i.ak = tail call ptr @lean_string_append(ptr noundef %i.ag, ptr noundef nonnull @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__10___closed__1_value) #8
  %i.al = tail call ptr @lean_mk_io_user_error(ptr noundef %i.ak) #8 ; 2 uses
  br i1 %i.k, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %lean_dec_ref.exit117
  %i.am = getelementptr inbounds nuw i8, ptr %.0107, i64 4 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = and i32 %i.an, 16777215
  %i.ap = or disjoint i32 %i.ao, 16777216
  store i32 %i.ap, ptr %i.am, align 4
  br label %lean_dec.exit.sink.split

bb.ad:                                            ; preds = %lean_dec_ref.exit117
  tail call void @lean_inc_heartbeat() #8
  %i.aq = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 4 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.ae, label %lean_alloc_ctor.exit

bb.ae:                                            ; preds = %bb.ad
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.ad
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store i32 1, ptr %i.aq, align 4, !tbaa !12
  store i32 16842768, ptr %i.as, align 4
  br label %lean_dec.exit.sink.split

bb.af:                                            ; preds = %lean_dec.exit151
  %i.at = load ptr, ptr @l_Lean_Server_requestHandlers, align 8, !tbaa !10 ; 3 uses
  %i.au = tail call ptr @lean_st_ref_get(ptr noundef %i.at) #8 ; 5 uses
  %i.av = tail call i64 @lean_string_hash(ptr noundef %0) #8
  %i.aw = tail call zeroext range(i8 0, 2) i8 @l_Lean_PersistentHashMap_containsAux___at___00Lean_PersistentHashMap_contains___at___00Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__0_spec__2_spec__3___redArg(ptr noundef %i.au, i64 noundef %i.av, ptr noundef %0)
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = and i64 %i.ax, 1
  %.not.i136 = icmp eq i64 %i.ay, 0
  br i1 %.not.i136, label %bb.ag, label %lean_dec.exit139

bb.ag:                                            ; preds = %bb.af
  %i.az = load i32, ptr %i.au, align 4, !tbaa !12 ; 3 uses
  %i.ba = icmp sgt i32 %i.az, 1
  br i1 %i.ba, label %bb.ah, label %bb.ai, !prof !13

bb.ah:                                            ; preds = %bb.ag
  %i.bb = add nsw i32 %i.az, -1
  store i32 %i.bb, ptr %i.au, align 4, !tbaa !12
  br label %lean_dec.exit139

bb.ai:                                            ; preds = %bb.ag
  %.not.i.i137 = icmp eq i32 %i.az, 0
  br i1 %.not.i.i137, label %lean_dec.exit139, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.au) #8
  br label %lean_dec.exit139

lean_dec.exit139:                                 ; preds = %bb.ah, %bb.ai, %bb.aj, %bb.af
  %i.bc = icmp eq i8 %i.aw, 0
  br i1 %i.bc, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %lean_dec.exit139
  %i.bd = tail call ptr @lean_st_ref_take(ptr noundef %i.at) #8
  %i.be = tail call ptr @lean_alloc_object(i64 noundef 40) #8 ; 8 uses
  store i32 1, ptr %i.be, align 4, !tbaa !12
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = and i32 %i.bg, 65535
  %i.bi = or disjoint i32 %i.bh, -184549376
  store i32 %i.bi, ptr %i.bf, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__5___lam__1___boxed, ptr %i.bj, align 8, !tbaa !10
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i16 3, ptr %i.bk, align 8, !tbaa !17
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 18
  store i16 2, ptr %i.bl, align 2, !tbaa !17
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr %2, ptr %i.bm, align 8, !tbaa !10
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  store ptr %i.j, ptr %i.bn, align 8, !tbaa !10
  %i.bo = tail call ptr @lean_alloc_object(i64 noundef 40) #8 ; 8 uses
  store i32 1, ptr %i.bo, align 4, !tbaa !12
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = and i32 %i.bq, 65535
  %i.bs = or disjoint i32 %i.br, -184549376
  store i32 %i.bs, ptr %i.bp, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__5___lam__2___boxed, ptr %i.bt, align 8, !tbaa !10
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store i16 5, ptr %i.bu, align 8, !tbaa !17
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 18
  store i16 2, ptr %i.bv, align 2, !tbaa !17
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store ptr %1, ptr %i.bw, align 8, !tbaa !10
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  store ptr %i.be, ptr %i.bx, align 8, !tbaa !10
  tail call void @lean_inc_heartbeat() #8
  %i.by = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #8 ; 6 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.al, label %lean_alloc_ctor.exit155

bb.al:                                            ; preds = %bb.ak
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit155:                          ; preds = %bb.ak
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  store i32 1, ptr %i.by, align 4, !tbaa !12
  store i32 131096, ptr %i.ca, align 4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__5___closed__0_value, ptr %i.cb, align 8, !tbaa !10
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store ptr %i.bo, ptr %i.cc, align 8, !tbaa !10
  %i.cd = tail call i64 @lean_string_hash(ptr noundef %0) #8
  %i.ce = tail call ptr @l_Lean_PersistentHashMap_insertAux___at___00Lean_PersistentHashMap_insert___at___00Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__0_spec__3_spec__5___redArg(ptr noundef %i.bd, i64 noundef %i.cd, i64 noundef 1, ptr noundef %0, ptr noundef nonnull %i.by)
  %i.cf = tail call ptr @lean_st_ref_set(ptr noundef %i.at, ptr noundef %i.ce) #8 ; 2 uses
  br i1 %i.k, label %lean_dec.exit.sink.split, label %bb.am

bb.am:                                            ; preds = %lean_alloc_ctor.exit155
  tail call void @lean_inc_heartbeat() #8
  %i.cg = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 4 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.an, label %lean_alloc_ctor.exit156

bb.an:                                            ; preds = %bb.am
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

end_hunk_10
begin_hunk_11_@l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__1___lam__2:bb.a
  store i32 %i.bx, ptr %0, align 4, !tbaa !12
  br label %lean_dec_ref.exit

bb.bc:                                            ; preds = %lean_dec_ref.exit74
  %.not.i = icmp eq i32 %i.bv, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.bb, %bb.bc, %bb.bd
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !10 ; 5 uses
  %.val = load i32, ptr %i.a, align 8, !tbaa !12
  %i.ca = icmp eq i32 %.val, 1
  br i1 %i.ca, label %lean_dec.exit88, label %bb.be

bb.be:                                            ; preds = %lean_dec_ref.exit
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = and i64 %i.cb, 1
  %.not.i77 = icmp eq i64 %i.cc, 0
  br i1 %.not.i77, label %bb.bf, label %lean_inc.exit

bb.bf:                                            ; preds = %bb.be
  %.val.i.i114 = load i32, ptr %i.bz, align 4, !tbaa !12 ; 3 uses
  %i.cd = icmp sgt i32 %.val.i.i114, 0
  br i1 %i.cd, label %bb.bg, label %bb.bh, !prof !13

bb.bg:                                            ; preds = %bb.bf
  %i.ce = add nuw i32 %.val.i.i114, 1
  store i32 %i.ce, ptr %i.bz, align 4, !tbaa !12
  br label %lean_inc.exit

bb.bh:                                            ; preds = %bb.bf
  %.not.i.i115 = icmp eq i32 %.val.i.i114, 0
  br i1 %.not.i.i115, label %lean_inc.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.cf = atomicrmw sub ptr %i.bz, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.be
  br i1 %.not.i95, label %bb.bj, label %bb.bn

bb.bj:                                            ; preds = %lean_inc.exit
  %i.cg = load i32, ptr %i.a, align 8, !tbaa !12  ; 3 uses
  %i.ch = icmp sgt i32 %i.cg, 1
  br i1 %i.ch, label %bb.bk, label %bb.bl, !prof !13

bb.bk:                                            ; preds = %bb.bj
  %i.ci = add nsw i32 %i.cg, -1
  store i32 %i.ci, ptr %i.a, align 8, !tbaa !12
  br label %bb.bn

bb.bl:                                            ; preds = %bb.bj
  %.not.i.i = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #8
  br label %bb.bn

bb.bn:                                            ; preds = %lean_inc.exit, %bb.bm, %bb.bl, %bb.bk
  tail call void @lean_inc_heartbeat() #8
  %i.cj = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 5 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.bo, label %lean_alloc_ctor.exit117

bb.bo:                                            ; preds = %bb.bn
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit117:                          ; preds = %bb.bn
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  store i32 1, ptr %i.cj, align 4, !tbaa !12
  store i32 16842768, ptr %i.cl, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %i.bz, ptr %i.cm, align 8, !tbaa !10
  br label %lean_dec.exit88

lean_dec.exit88:                                  ; preds = %lean_dec_ref.exit, %lean_dec_ref.exit76, %lean_alloc_ctor.exit117, %bb.af, %lean_alloc_ctor.exit, %lean_alloc_ctor.exit113
  %.4 = phi ptr [ %i.ab, %lean_dec_ref.exit76 ], [ %i.aw, %lean_alloc_ctor.exit ], [ %i.ab, %bb.af ], [ %i.bo, %lean_alloc_ctor.exit113 ], [ %i.cj, %lean_alloc_ctor.exit117 ], [ %i.a, %lean_dec_ref.exit ]
  ret ptr %.4
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__1___lam__2___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__1___lam__2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %i.b = load i32, ptr %3, align 4, !tbaa !12     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %3, align 4, !tbaa !12
  br label %lean_dec_ref.exit

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #8
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.b, %bb.c, %bb.d
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__1(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr (...) @l_Lean_initializing() #8 ; 14 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = and i64 %i.b, 1
  %.not.i153 = icmp eq i64 %i.c, 0                ; 3 uses
  br i1 %.not.i153, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 1
  %i.e = trunc i64 %i.d to i32
  br label %lean_obj_tag.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.a, i64 4
  %.val.i = load i32, ptr %i.f, align 4
  %i.g = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.e, %bb.b ], [ %i.g, %bb.c ]
  %i.h = icmp eq i32 %.0.i, 0
  br i1 %i.h, label %bb.d, label %bb.bg

bb.d:                                             ; preds = %lean_obj_tag.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !10   ; 11 uses
  %.val152 = load i32, ptr %i.a, align 8, !tbaa !12
  %i.k = icmp eq i32 %.val152, 1                  ; 4 uses
  %.pre = ptrtoint ptr %i.j to i64                ; 4 uses
  br i1 %i.k, label %lean_dec.exit151, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = and i64 %.pre, 1
  %.not.i121 = icmp eq i64 %i.l, 0
  br i1 %.not.i121, label %bb.f, label %lean_inc.exit122

bb.f:                                             ; preds = %bb.e
  %.val.i.i = load i32, ptr %i.j, align 4, !tbaa !12 ; 3 uses
  %i.m = icmp sgt i32 %.val.i.i, 0
  br i1 %i.m, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.n = add nuw i32 %.val.i.i, 1
  store i32 %i.n, ptr %i.j, align 4, !tbaa !12
  br label %lean_inc.exit122

bb.h:                                             ; preds = %bb.f
  %.not.i.i154 = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i154, label %lean_inc.exit122, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = atomicrmw sub ptr %i.j, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit122

lean_inc.exit122:                                 ; preds = %bb.i, %bb.h, %bb.g, %bb.e
  br i1 %.not.i153, label %bb.j, label %lean_dec.exit151

bb.j:                                             ; preds = %lean_inc.exit122
  %i.p = load i32, ptr %i.a, align 8, !tbaa !12   ; 3 uses
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %bb.j
  %i.r = add nsw i32 %i.p, -1
  store i32 %i.r, ptr %i.a, align 8, !tbaa !12
  br label %lean_dec.exit151

bb.l:                                             ; preds = %bb.j
  %.not.i.i149 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i149, label %lean_dec.exit151, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #8
  br label %lean_dec.exit151

lean_dec.exit151:                                 ; preds = %bb.d, %lean_inc.exit122, %bb.m, %bb.l, %bb.k
  %.0107 = phi ptr [ inttoptr (i64 1 to ptr), %bb.k ], [ inttoptr (i64 1 to ptr), %lean_inc.exit122 ], [ inttoptr (i64 1 to ptr), %bb.m ], [ inttoptr (i64 1 to ptr), %bb.l ], [ %i.a, %bb.d ] ; 5 uses
  %i.s = and i64 %.pre, 510
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.n, label %bb.af

bb.n:                                             ; preds = %lean_dec.exit151
  %i.u = and i64 %.pre, 1
  %.not.i144 = icmp eq i64 %i.u, 0
  br i1 %.not.i144, label %bb.o, label %lean_dec.exit147

bb.o:                                             ; preds = %bb.n
  %i.v = load i32, ptr %i.j, align 512, !tbaa !12 ; 3 uses
  %i.w = icmp sgt i32 %i.v, 1
  br i1 %i.w, label %bb.p, label %bb.q, !prof !13

bb.p:                                             ; preds = %bb.o
  %i.x = add nsw i32 %i.v, -1
  store i32 %i.x, ptr %i.j, align 512, !tbaa !12
  br label %lean_dec.exit147

bb.q:                                             ; preds = %bb.o
  %.not.i.i145 = icmp eq i32 %i.v, 0
  br i1 %.not.i.i145, label %lean_dec.exit147, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #8
  br label %lean_dec.exit147

lean_dec.exit147:                                 ; preds = %bb.p, %bb.q, %bb.r, %bb.n
  %i.y = ptrtoint ptr %2 to i64
  %i.z = and i64 %i.y, 1
  %.not.i140 = icmp eq i64 %i.z, 0
  br i1 %.not.i140, label %bb.s, label %lean_dec.exit143

bb.s:                                             ; preds = %lean_dec.exit147
  %i.aa = load i32, ptr %2, align 4, !tbaa !12    ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 1
  br i1 %i.ab, label %bb.t, label %bb.u, !prof !13

bb.t:                                             ; preds = %bb.s
  %i.ac = add nsw i32 %i.aa, -1
  store i32 %i.ac, ptr %2, align 4, !tbaa !12
  br label %lean_dec.exit143

bb.u:                                             ; preds = %bb.s
  %.not.i.i141 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i141, label %lean_dec.exit143, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #8
  br label %lean_dec.exit143

lean_dec.exit143:                                 ; preds = %bb.t, %bb.u, %bb.v, %lean_dec.exit147
  %i.ad = load i32, ptr %1, align 4, !tbaa !12    ; 3 uses
  %i.ae = icmp sgt i32 %i.ad, 1
  br i1 %i.ae, label %bb.w, label %bb.x, !prof !13

bb.w:                                             ; preds = %lean_dec.exit143
  %i.af = add nsw i32 %i.ad, -1
  store i32 %i.af, ptr %1, align 4, !tbaa !12
  br label %lean_dec_ref.exit119

bb.x:                                             ; preds = %lean_dec.exit143
  %.not.i118 = icmp eq i32 %i.ad, 0
  br i1 %.not.i118, label %lean_dec_ref.exit119, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #8
  br label %lean_dec_ref.exit119

lean_dec_ref.exit119:                             ; preds = %bb.w, %bb.x, %bb.y
  %i.ag = tail call ptr @lean_string_append(ptr noundef nonnull @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__10___closed__0_value, ptr noundef %0) #8
  %i.ah = load i32, ptr %0, align 4, !tbaa !12    ; 3 uses
  %i.ai = icmp sgt i32 %i.ah, 1
  br i1 %i.ai, label %bb.z, label %bb.aa, !prof !13

bb.z:                                             ; preds = %lean_dec_ref.exit119
  %i.aj = add nsw i32 %i.ah, -1
  store i32 %i.aj, ptr %0, align 4, !tbaa !12
  br label %lean_dec_ref.exit117

bb.aa:                                            ; preds = %lean_dec_ref.exit119
  %.not.i116 = icmp eq i32 %i.ah, 0
  br i1 %.not.i116, label %lean_dec_ref.exit117, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec_ref.exit117

lean_dec_ref.exit117:                             ; preds = %bb.z, %bb.aa, %bb.ab
  %i.ak = tail call ptr @lean_string_append(ptr noundef %i.ag, ptr noundef nonnull @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__10___closed__1_value) #8
  %i.al = tail call ptr @lean_mk_io_user_error(ptr noundef %i.ak) #8 ; 2 uses
  br i1 %i.k, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %lean_dec_ref.exit117
  %i.am = getelementptr inbounds nuw i8, ptr %.0107, i64 4 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = and i32 %i.an, 16777215
  %i.ap = or disjoint i32 %i.ao, 16777216
  store i32 %i.ap, ptr %i.am, align 4
  br label %lean_dec.exit.sink.split

bb.ad:                                            ; preds = %lean_dec_ref.exit117
  tail call void @lean_inc_heartbeat() #8
  %i.aq = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 4 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.ae, label %lean_alloc_ctor.exit

bb.ae:                                            ; preds = %bb.ad
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.ad
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store i32 1, ptr %i.aq, align 4, !tbaa !12
  store i32 16842768, ptr %i.as, align 4
  br label %lean_dec.exit.sink.split

bb.af:                                            ; preds = %lean_dec.exit151
  %i.at = load ptr, ptr @l_Lean_Server_requestHandlers, align 8, !tbaa !10 ; 3 uses
  %i.au = tail call ptr @lean_st_ref_get(ptr noundef %i.at) #8 ; 5 uses
  %i.av = tail call i64 @lean_string_hash(ptr noundef %0) #8
  %i.aw = tail call zeroext range(i8 0, 2) i8 @l_Lean_PersistentHashMap_containsAux___at___00Lean_PersistentHashMap_contains___at___00Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__0_spec__2_spec__3___redArg(ptr noundef %i.au, i64 noundef %i.av, ptr noundef %0)
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = and i64 %i.ax, 1
  %.not.i136 = icmp eq i64 %i.ay, 0
  br i1 %.not.i136, label %bb.ag, label %lean_dec.exit139

bb.ag:                                            ; preds = %bb.af
  %i.az = load i32, ptr %i.au, align 4, !tbaa !12 ; 3 uses
  %i.ba = icmp sgt i32 %i.az, 1
  br i1 %i.ba, label %bb.ah, label %bb.ai, !prof !13

bb.ah:                                            ; preds = %bb.ag
  %i.bb = add nsw i32 %i.az, -1
  store i32 %i.bb, ptr %i.au, align 4, !tbaa !12
  br label %lean_dec.exit139

bb.ai:                                            ; preds = %bb.ag
  %.not.i.i137 = icmp eq i32 %i.az, 0
  br i1 %.not.i.i137, label %lean_dec.exit139, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.au) #8
  br label %lean_dec.exit139

lean_dec.exit139:                                 ; preds = %bb.ah, %bb.ai, %bb.aj, %bb.af
  %i.bc = icmp eq i8 %i.aw, 0
  br i1 %i.bc, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %lean_dec.exit139
  %i.bd = tail call ptr @lean_st_ref_take(ptr noundef %i.at) #8
  %i.be = tail call ptr @lean_alloc_object(i64 noundef 40) #8 ; 8 uses
  store i32 1, ptr %i.be, align 4, !tbaa !12
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = and i32 %i.bg, 65535
  %i.bi = or disjoint i32 %i.bh, -184549376
  store i32 %i.bi, ptr %i.bf, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__1___lam__1___boxed, ptr %i.bj, align 8, !tbaa !10
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i16 3, ptr %i.bk, align 8, !tbaa !17
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 18
  store i16 2, ptr %i.bl, align 2, !tbaa !17
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr %2, ptr %i.bm, align 8, !tbaa !10
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  store ptr %i.j, ptr %i.bn, align 8, !tbaa !10
  %i.bo = tail call ptr @lean_alloc_object(i64 noundef 40) #8 ; 8 uses
  store i32 1, ptr %i.bo, align 4, !tbaa !12
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = and i32 %i.bq, 65535
  %i.bs = or disjoint i32 %i.br, -184549376
  store i32 %i.bs, ptr %i.bp, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__1___lam__2___boxed, ptr %i.bt, align 8, !tbaa !10
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store i16 5, ptr %i.bu, align 8, !tbaa !17
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 18
  store i16 2, ptr %i.bv, align 2, !tbaa !17
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store ptr %1, ptr %i.bw, align 8, !tbaa !10
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  store ptr %i.be, ptr %i.bx, align 8, !tbaa !10
  tail call void @lean_inc_heartbeat() #8
  %i.by = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #8 ; 6 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.al, label %lean_alloc_ctor.exit155

bb.al:                                            ; preds = %bb.ak
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit155:                          ; preds = %bb.ak
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  store i32 1, ptr %i.by, align 4, !tbaa !12
  store i32 131096, ptr %i.ca, align 4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr @l_Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__1___closed__0_value, ptr %i.cb, align 8, !tbaa !10
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store ptr %i.bo, ptr %i.cc, align 8, !tbaa !10
  %i.cd = tail call i64 @lean_string_hash(ptr noundef %0) #8
  %i.ce = tail call ptr @l_Lean_PersistentHashMap_insertAux___at___00Lean_PersistentHashMap_insert___at___00Lean_Server_registerLspRequestHandler___at___00__private_Lean_Server_FileWorker_RequestHandling_0__Lean_Server_FileWorker_initFn_00___x40_Lean_Server_FileWorker_RequestHandling_1490364749____hygCtx___hyg_2__spec__0_spec__3_spec__5___redArg(ptr noundef %i.bd, i64 noundef %i.cd, i64 noundef 1, ptr noundef %0, ptr noundef nonnull %i.by)
  %i.cf = tail call ptr @lean_st_ref_set(ptr noundef %i.at, ptr noundef %i.ce) #8 ; 2 uses
  br i1 %i.k, label %lean_dec.exit.sink.split, label %bb.am

bb.am:                                            ; preds = %lean_alloc_ctor.exit155
  tail call void @lean_inc_heartbeat() #8
  %i.cg = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 4 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.an, label %lean_alloc_ctor.exit156

bb.an:                                            ; preds = %bb.am
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

end_hunk_11
