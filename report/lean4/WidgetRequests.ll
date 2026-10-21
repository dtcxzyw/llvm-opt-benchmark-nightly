Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/WidgetRequests?download=true
inline.NumInlined: 4556
inline.NumDeleted: 100
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@l_Lean_Server_registerBuiltinRpcProcedure___at___00__private_Lean_Server_FileWorker_WidgetRequests_0__Lean_Widget_initFn_00___x40_Lean_Server_FileWorker_WidgetRequests_2425369468____hygCtx___hyg_2__spec__0:bb.a

bb.cc:                                            ; preds = %bb.cb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #10
  br label %lean_dec.exit121

lean_dec.exit121:                                 ; preds = %bb.ca, %bb.cb, %bb.cc, %lean_dec_ref.exit
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !12 ; 5 uses
  %.val = load i32, ptr %i.a, align 8, !tbaa !14
  %i.ed = icmp eq i32 %.val, 1
  br i1 %i.ed, label %lean_dec.exit, label %bb.cd

bb.cd:                                            ; preds = %lean_dec.exit121
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = and i64 %i.ee, 1
  %.not.i110 = icmp eq i64 %i.ef, 0
  br i1 %.not.i110, label %bb.ce, label %lean_inc.exit

bb.ce:                                            ; preds = %bb.cd
  %.val.i.i159 = load i32, ptr %i.ec, align 4, !tbaa !14 ; 3 uses
  %i.eg = icmp sgt i32 %.val.i.i159, 0
  br i1 %i.eg, label %bb.cf, label %bb.cg, !prof !15

bb.cf:                                            ; preds = %bb.ce
  %i.eh = add nuw i32 %.val.i.i159, 1
  store i32 %i.eh, ptr %i.ec, align 4, !tbaa !14
  br label %lean_inc.exit

bb.cg:                                            ; preds = %bb.ce
  %.not.i.i160 = icmp eq i32 %.val.i.i159, 0
  br i1 %.not.i.i160, label %lean_inc.exit, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ei = atomicrmw add ptr %i.ec, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.ch, %bb.cg, %bb.cf, %bb.cd
  br i1 %.not.i143, label %bb.ci, label %bb.cm

bb.ci:                                            ; preds = %lean_inc.exit
  %i.ej = load i32, ptr %i.a, align 8, !tbaa !14  ; 3 uses
  %i.ek = icmp sgt i32 %i.ej, 1
  br i1 %i.ek, label %bb.cj, label %bb.ck, !prof !15

bb.cj:                                            ; preds = %bb.ci
  %i.el = add nsw i32 %i.ej, -1
  store i32 %i.el, ptr %i.a, align 8, !tbaa !14
  br label %bb.cm

bb.ck:                                            ; preds = %bb.ci
  %.not.i.i = icmp eq i32 %i.ej, 0
  br i1 %.not.i.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #10
  br label %bb.cm

bb.cm:                                            ; preds = %lean_inc.exit, %bb.cl, %bb.ck, %bb.cj
  tail call void @lean_inc_heartbeat() #10
  %i.em = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #10 ; 4 uses
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %bb.cn, label %lean_alloc_ctor.exit162

bb.cn:                                            ; preds = %bb.cm
  tail call void @lean_internal_panic_out_of_memory() #11
  unreachable

lean_alloc_ctor.exit162:                          ; preds = %bb.cm
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  store i32 1, ptr %i.em, align 4, !tbaa !14
  store i32 16842768, ptr %i.eo, align 4
  br label %lean_dec.exit.sink.split

lean_dec.exit.sink.split:                         ; preds = %l_Lean_PersistentHashMap_insert___at___00Lean_Server_registerBuiltinRpcProcedure___at___00__private_Lean_Server_FileWorker_WidgetRequests_0__Lean_Widget_initFn_00___x40_Lean_Server_FileWorker_WidgetRequests_1264552272____hygCtx___hyg_2__spec__0_spec__2___redArg.exit, %lean_alloc_ctor.exit157, %bb.bs, %lean_alloc_ctor.exit158, %lean_alloc_ctor.exit, %bb.ag, %lean_alloc_ctor.exit162
  %.sink191 = phi ptr [ %i.em, %lean_alloc_ctor.exit162 ], [ %.099, %bb.ag ], [ %i.ax, %lean_alloc_ctor.exit ], [ %i.dq, %lean_alloc_ctor.exit158 ], [ %.099, %bb.bs ], [ %i.db, %lean_alloc_ctor.exit157 ], [ %.099, %l_Lean_PersistentHashMap_insert___at___00Lean_Server_registerBuiltinRpcProcedure___at___00__private_Lean_Server_FileWorker_WidgetRequests_0__Lean_Widget_initFn_00___x40_Lean_Server_FileWorker_WidgetRequests_1264552272____hygCtx___hyg_2__spec__0_spec__2___redArg.exit ] ; 2 uses
  %.sink = phi ptr [ %i.ec, %lean_alloc_ctor.exit162 ], [ %i.as, %bb.ag ], [ %i.as, %lean_alloc_ctor.exit ], [ %i.dl, %lean_alloc_ctor.exit158 ], [ %i.dl, %bb.bs ], [ %i.da, %lean_alloc_ctor.exit157 ], [ %i.da, %l_Lean_PersistentHashMap_insert___at___00Lean_Server_registerBuiltinRpcProcedure___at___00__private_Lean_Server_FileWorker_WidgetRequests_0__Lean_Widget_initFn_00___x40_Lean_Server_FileWorker_WidgetRequests_1264552272____hygCtx___hyg_2__spec__0_spec__2___redArg.exit ]
  %i.ep = getelementptr inbounds nuw i8, ptr %.sink191, i64 8
  store ptr %.sink, ptr %i.ep, align 8, !tbaa !12
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_dec.exit.sink.split, %lean_dec.exit121
  %.6 = phi ptr [ %i.a, %lean_dec.exit121 ], [ %.sink191, %lean_dec.exit.sink.split ]
  ret ptr %.6
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Server_registerBuiltinRpcProcedure___at___00__private_Lean_Server_FileWorker_WidgetRequests_0__Lean_Widget_initFn_00___x40_Lean_Server_FileWorker_WidgetRequests_2425369468____hygCtx___hyg_2__spec__0___boxed(ptr noundef %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_Server_registerBuiltinRpcProcedure___at___00__private_Lean_Server_FileWorker_WidgetRequests_0__Lean_Widget_initFn_00___x40_Lean_Server_FileWorker_WidgetRequests_2425369468____hygCtx___hyg_2__spec__0(ptr noundef %0, ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Server_FileWorker_WidgetRequests_0__Lean_Widget_initFn_00___x40_Lean_Server_FileWorker_WidgetRequests_2425369468____hygCtx___hyg_2_() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_Server_registerBuiltinRpcProcedure___at___00__private_Lean_Server_FileWorker_WidgetRequests_0__Lean_Widget_initFn_00___x40_Lean_Server_FileWorker_WidgetRequests_2425369468____hygCtx___hyg_2__spec__0(ptr noundef nonnull @l___private_Lean_Server_FileWorker_WidgetRequests_0__Lean_Widget_initFn___closed__1_00___x40_Lean_Server_FileWorker_WidgetRequests_2425369468____hygCtx___hyg_2__value, ptr noundef nonnull @l___private_Lean_Server_FileWorker_WidgetRequests_0__Lean_Widget_initFn___closed__2_00___x40_Lean_Server_FileWorker_WidgetRequests_2425369468____hygCtx___hyg_2__value)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Server_FileWorker_WidgetRequests_0__Lean_Widget_initFn_00___x40_Lean_Server_FileWorker_WidgetRequests_2425369468____hygCtx___hyg_2____boxed(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_Server_registerBuiltinRpcProcedure___at___00__private_Lean_Server_FileWorker_WidgetRequests_0__Lean_Widget_initFn_00___x40_Lean_Server_FileWorker_WidgetRequests_2425369468____hygCtx___hyg_2__spec__0(ptr noundef nonnull @l___private_Lean_Server_FileWorker_WidgetRequests_0__Lean_Widget_initFn___closed__1_00___x40_Lean_Server_FileWorker_WidgetRequests_2425369468____hygCtx___hyg_2__value, ptr noundef nonnull @l___private_Lean_Server_FileWorker_WidgetRequests_0__Lean_Widget_initFn___closed__2_00___x40_Lean_Server_FileWorker_WidgetRequests_2425369468____hygCtx___hyg_2__value)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Init_While_0__whileM_erased___at___00__private_Lean_Server_FileWorker_WidgetRequests_0__Lean_Widget_kmpSearch_buildKMPTable_spec__0___redArg(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.c = ptrtoint ptr %2 to i64
  %i.d = lshr i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d
  %i.f = getelementptr i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %lean_inc.exit50

lean_inc.exit50:                                  ; preds = %lean_inc.exit50.backedge, %bb.a
  %.041 = phi ptr [ %3, %bb.a ], [ %.041.be, %lean_inc.exit50.backedge ] ; 13 uses
  %i.h = load atomic i32, ptr @l___private_Init_While_0__whileM_erased___at___00__private_Lean_Server_FileWorker_WidgetRequests_0__Lean_Widget_kmpSearch_buildKMPTable_spec__0___redArg___closed__0_once seq_cst, align 4, !tbaa !23
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %lean_inc.exit50
  %i.j = load ptr, ptr @l___private_Init_While_0__whileM_erased___at___00__private_Lean_Server_FileWorker_WidgetRequests_0__Lean_Widget_kmpSearch_buildKMPTable_spec__0___redArg___closed__0, align 8, !tbaa !12
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %lean_inc.exit50
  %i.k = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_While_0__whileM_erased___at___00__private_Lean_Server_FileWorker_WidgetRequests_0__Lean_Widget_kmpSearch_buildKMPTable_spec__0___redArg___closed__0, ptr noundef nonnull @l___private_Init_While_0__whileM_erased___at___00__private_Lean_Server_FileWorker_WidgetRequests_0__Lean_Widget_kmpSearch_buildKMPTable_spec__0___redArg___closed__0_once, ptr noundef nonnull @_init_l___private_Init_While_0__whileM_erased___at___00__private_Lean_Server_FileWorker_WidgetRequests_0__Lean_Widget_kmpSearch_buildKMPTable_spec__0___redArg___closed__0) #10
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i69 = phi ptr [ %i.j, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  %i.l = ptrtoint ptr %.0.i69 to i64              ; 2 uses
  %i.m = and i64 %i.l, 1
  %.not.i.i70 = icmp eq i64 %i.m, 0
  br i1 %.not.i.i70, label %lean_int_dec_le.exit, label %bb.d, !prof !21

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.n = ptrtoint ptr %.041 to i64                ; 2 uses
  %i.o = and i64 %i.n, 1
  %.not7.i.i = icmp eq i64 %i.o, 0
  br i1 %.not7.i.i, label %lean_int_dec_le.exit, label %.split, !prof !21

.split:                                           ; preds = %bb.d
  %i.p = lshr i64 %i.l, 1
  %i.q = trunc i64 %i.p to i32
  %i.r = lshr i64 %i.n, 1
  %i.s = trunc i64 %i.r to i32
  %.not103 = icmp sgt i32 %i.q, %i.s
  br i1 %.not103, label %bb.r, label %bb.e

lean_int_dec_le.exit:                             ; preds = %lean_obj_once.exit, %bb.d
  %i.t = tail call zeroext i1 @lean_int_big_le(ptr noundef %.0.i69, ptr noundef %.041) #10
  br i1 %i.t, label %bb.e, label %bb.r

bb.e:                                             ; preds = %.split, %lean_int_dec_le.exit
  %i.u = tail call ptr @l_Int_toNat(ptr noundef %.041) #10 ; 9 uses
  %.val = load i64, ptr %i.a, align 8, !tbaa !10
  %i.v = shl i64 %.val, 1
  %i.w = or disjoint i64 %i.v, 1
  %i.x = inttoptr i64 %i.w to ptr                 ; 2 uses
  %i.y = ptrtoint ptr %i.u to i64                 ; 3 uses
  %i.z = and i64 %i.y, 1
  %.not.i68 = icmp eq i64 %i.z, 0
  br i1 %.not.i68, label %lean_nat_lt.exit, label %lean_nat_lt.exit.thread, !prof !21

lean_nat_lt.exit:                                 ; preds = %bb.e
  %i.aa = tail call zeroext i1 @lean_nat_big_lt(ptr noundef %i.u, ptr noundef nonnull %i.x) #10
  br i1 %i.aa, label %bb.n, label %bb.f

lean_nat_lt.exit.thread:                          ; preds = %bb.e
  %.not = icmp ult ptr %i.u, %i.x
  br i1 %.not, label %.thread78, label %lean_dec.exit63

.thread78:                                        ; preds = %lean_nat_lt.exit.thread
  %i.ab = lshr i64 %i.y, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !24
  br label %lean_dec.exit59

bb.f:                                             ; preds = %lean_nat_lt.exit
  %i.ae = load i32, ptr %i.u, align 4, !tbaa !14  ; 3 uses
  %i.af = icmp sgt i32 %i.ae, 1
  br i1 %i.af, label %bb.g, label %bb.h, !prof !15

bb.g:                                             ; preds = %bb.f
  %i.ag = add nsw i32 %i.ae, -1
  store i32 %i.ag, ptr %i.u, align 4, !tbaa !14
  br label %lean_dec.exit63

bb.h:                                             ; preds = %bb.f
  %.not.i.i65 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i65, label %lean_dec.exit63, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.u) #10
  br label %lean_dec.exit63

lean_dec.exit63:                                  ; preds = %lean_nat_lt.exit.thread, %bb.g, %bb.h, %bb.i
  %i.ah = load i8, ptr @l_instInhabitedUInt8, align 1, !tbaa !24
  %i.ai = zext i8 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 1
  %i.ak = or disjoint i64 %i.aj, 1
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = tail call ptr @l_outOfBounds___redArg(ptr noundef nonnull %i.al) #10 ; 4 uses
  %i.an = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ao = lshr i64 %i.an, 1
  %i.ap = trunc i64 %i.ao to i8                   ; 4 uses
  %i.aq = and i64 %i.an, 1
  %.not.i56 = icmp eq i64 %i.aq, 0
  br i1 %.not.i56, label %bb.j, label %lean_dec.exit59

bb.j:                                             ; preds = %lean_dec.exit63
  %i.ar = load i32, ptr %i.am, align 4, !tbaa !14 ; 3 uses
  %i.as = icmp sgt i32 %i.ar, 1
  br i1 %i.as, label %bb.k, label %bb.l, !prof !15

bb.k:                                             ; preds = %bb.j
  %i.at = add nsw i32 %i.ar, -1
  store i32 %i.at, ptr %i.am, align 4, !tbaa !14
  br label %lean_dec.exit59

bb.l:                                             ; preds = %bb.j
  %.not.i.i57 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i57, label %lean_dec.exit59, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.am) #10
  br label %lean_dec.exit59

bb.n:                                             ; preds = %lean_nat_lt.exit
  %i.au = lshr exact i64 %i.y, 1
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !24  ; 3 uses
  %i.ax = load i32, ptr %i.u, align 4, !tbaa !14  ; 3 uses
  %i.ay = icmp sgt i32 %i.ax, 1
  br i1 %i.ay, label %bb.o, label %bb.p, !prof !15

bb.o:                                             ; preds = %bb.n
  %i.az = add nsw i32 %i.ax, -1
  store i32 %i.az, ptr %i.u, align 4, !tbaa !14
  br label %lean_dec.exit59

bb.p:                                             ; preds = %bb.n
  %.not.i.i53 = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i53, label %lean_dec.exit59, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.u) #10
  br label %lean_dec.exit59

bb.r:                                             ; preds = %.split, %lean_int_dec_le.exit
  %i.ba = ptrtoint ptr %.041 to i64
  %i.bb = and i64 %i.ba, 1
  %.not.i49 = icmp eq i64 %i.bb, 0
  br i1 %.not.i49, label %bb.s, label %lean_inc.exit.thread

bb.s:                                             ; preds = %bb.r
  %.val.i.i = load i32, ptr %.041, align 4, !tbaa !14 ; 3 uses
  %i.bc = icmp sgt i32 %.val.i.i, 0
  br i1 %i.bc, label %bb.t, label %bb.u, !prof !15

bb.t:                                             ; preds = %bb.s
  %i.bd = add nuw i32 %.val.i.i, 1
  store i32 %i.bd, ptr %.041, align 4, !tbaa !14
  br label %lean_inc.exit.thread

bb.u:                                             ; preds = %bb.s
  %.not.i.i71 = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i71, label %lean_inc.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.be = atomicrmw add ptr %.041, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit.thread

lean_inc.exit:                                    ; preds = %lean_dec.exit59
  %i.bf = load ptr, ptr @l_Int_instInhabited, align 8, !tbaa !12 ; 5 uses
  %i.bg = tail call ptr @l_Int_toNat(ptr noundef %.041) #10 ; 4 uses
  %i.bh = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bi = and i64 %i.bh, 1
  %.not.i72 = icmp eq i64 %i.bi, 0                ; 2 uses
  br i1 %.not.i72, label %.thread.i, label %bb.w

bb.w:                                             ; preds = %lean_inc.exit
  %i.bj = lshr i64 %i.bh, 1                       ; 2 uses
  %.val.i = load i64, ptr %i.f, align 8, !tbaa !10
  %i.bk = icmp ult i64 %i.bj, %.val.i
  br i1 %i.bk, label %lean_array_get_borrowed.exit.thread, label %.thread.i

lean_array_get_borrowed.exit.thread:              ; preds = %bb.w
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.bj
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !12
  br label %lean_inc.exit50.backedge

lean_inc.exit50.backedge:                         ; preds = %lean_array_get_borrowed.exit.thread, %lean_array_get_borrowed.exit, %bb.ae, %bb.ad, %bb.ac
  %.041.be = phi ptr [ %i.bm, %lean_array_get_borrowed.exit.thread ], [ %i.bs, %lean_array_get_borrowed.exit ], [ %i.bs, %bb.ae ], [ %i.bs, %bb.ad ], [ %i.bs, %bb.ac ]
  br label %lean_inc.exit50

.thread.i:                                        ; preds = %bb.w, %lean_inc.exit
  %i.bn = ptrtoint ptr %i.bf to i64
  %i.bo = and i64 %i.bn, 1
  %.not.i.i73 = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i73, label %bb.x, label %lean_array_get_borrowed.exit

bb.x:                                             ; preds = %.thread.i
  %.val.i.i.i = load i32, ptr %i.bf, align 4, !tbaa !14 ; 3 uses
  %i.bp = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.bp, label %bb.y, label %bb.z, !prof !15

bb.y:                                             ; preds = %bb.x
  %i.bq = add nuw i32 %.val.i.i.i, 1
  store i32 %i.bq, ptr %i.bf, align 4, !tbaa !14
  br label %lean_array_get_borrowed.exit

bb.z:                                             ; preds = %bb.x
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_array_get_borrowed.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.br = atomicrmw add ptr %i.bf, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_array_get_borrowed.exit

lean_array_get_borrowed.exit:                     ; preds = %.thread.i, %bb.y, %bb.z, %bb.aa
  %i.bs = tail call ptr @lean_array_get_panic(ptr noundef %i.bf) #10 ; 4 uses
  br i1 %.not.i72, label %bb.ab, label %lean_inc.exit50.backedge

bb.ab:                                            ; preds = %lean_array_get_borrowed.exit
  %i.bt = load i32, ptr %i.bg, align 4, !tbaa !14 ; 3 uses
  %i.bu = icmp sgt i32 %i.bt, 1
  br i1 %i.bu, label %bb.ac, label %bb.ad, !prof !15

bb.ac:                                            ; preds = %bb.ab
  %i.bv = add nsw i32 %i.bt, -1
  store i32 %i.bv, ptr %i.bg, align 4, !tbaa !14
  br label %lean_inc.exit50.backedge

bb.ad:                                            ; preds = %bb.ab
  %.not.i.i = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i, label %lean_inc.exit50.backedge, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bg) #10
  br label %lean_inc.exit50.backedge

lean_dec.exit59:                                  ; preds = %.thread78, %bb.q, %bb.p, %bb.o, %lean_dec.exit63, %bb.m, %bb.l, %bb.k
  %.048 = phi i8 [ %i.ap, %lean_dec.exit63 ], [ %i.ap, %bb.k ], [ %i.ap, %bb.l ], [ %i.ap, %bb.m ], [ %i.ad, %.thread78 ], [ %i.aw, %bb.o ], [ %i.aw, %bb.q ], [ %i.aw, %bb.p ]
  %i.bw = load i8, ptr %i.e, align 1, !tbaa !24
  %.not87 = icmp eq i8 %.048, %i.bw
  br i1 %.not87, label %bb.af, label %lean_inc.exit

bb.af:                                            ; preds = %lean_dec.exit59
  %i.bx = ptrtoint ptr %.041 to i64
  %i.by = and i64 %i.bx, 1
  %.not.i = icmp eq i64 %i.by, 0
  br i1 %.not.i, label %bb.ag, label %lean_inc.exit.thread

bb.ag:                                            ; preds = %bb.af
  %.val.i.i74 = load i32, ptr %.041, align 4, !tbaa !14 ; 3 uses
  %i.bz = icmp sgt i32 %.val.i.i74, 0
  br i1 %i.bz, label %bb.ah, label %bb.ai, !prof !15

bb.ah:                                            ; preds = %bb.ag
  %i.ca = add nuw i32 %.val.i.i74, 1
  store i32 %i.ca, ptr %.041, align 4, !tbaa !14
  br label %lean_inc.exit.thread

bb.ai:                                            ; preds = %bb.ag
  %.not.i.i75 = icmp eq i32 %.val.i.i74, 0
  br i1 %.not.i.i75, label %lean_inc.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cb = atomicrmw add ptr %.041, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit.thread

lean_inc.exit.thread:                             ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.af, %bb.r, %bb.v, %bb.u, %bb.t
  ret ptr %.041
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_init_l___private_Init_While_0__whileM_erased___at___00__private_Lean_Server_FileWorker_WidgetRequests_0__Lean_Widget_kmpSearch_buildKMPTable_spec__0___redArg___closed__0() #4 {
bb.a:
  ret ptr inttoptr (i64 1 to ptr)
}

declare ptr @l_Int_toNat(ptr noundef) local_unnamed_addr #2

declare ptr @l_outOfBounds___redArg(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @l___private_Init_While_0__whileM_erased___at___00__private_Lean_Server_FileWorker_WidgetRequests_0__Lean_Widget_kmpSearch_buildKMPTable_spec__0___redArg___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l___private_Init_While_0__whileM_erased___at___00__private_Lean_Server_FileWorker_WidgetRequests_0__Lean_Widget_kmpSearch_buildKMPTable_spec__0___redArg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %i.b = ptrtoint ptr %3 to i64
  %i.c = and i64 %i.b, 1
  %.not.i12 = icmp eq i64 %i.c, 0
  br i1 %.not.i12, label %bb.b, label %lean_dec.exit15

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %3, align 4, !tbaa !14     ; 3 uses
end_hunk_0
begin_hunk_1_@l___private_Init_While_0__whileM_erased___at___00__private_Lean_Server_FileWorker_WidgetRequests_0__Lean_Widget_kmpSearch_buildKMPTable_spec__0___boxed:bb.a
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %0, align 4, !tbaa !14
  br label %lean_dec_ref.exit

bb.n:                                             ; preds = %lean_dec_ref.exit11
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #10
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.m, %bb.n, %bb.o
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Server_FileWorker_WidgetRequests_0__Lean_Widget_kmpSearch_buildKMPTable_spec__1(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef readnone captures(none) %6) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Server_FileWorker_WidgetRequests_0__Lean_Widget_kmpSearch_buildKMPTable_spec__1___redArg(ptr noundef %0, ptr noundef %1, ptr noundef %4, ptr noundef %5)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Server_FileWorker_WidgetRequests_0__Lean_Widget_kmpSearch_buildKMPTable_spec__1___boxed(ptr noundef %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef readnone captures(none) %6) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Server_FileWorker_WidgetRequests_0__Lean_Widget_kmpSearch_buildKMPTable_spec__1___redArg(ptr noundef %0, ptr noundef readonly %1, ptr noundef %4, ptr noundef %5)
  %i.b = load i32, ptr %1, align 4, !tbaa !14     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %1, align 4, !tbaa !14
  br label %lean_dec_ref.exit

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #10
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.b, %bb.c, %bb.d
  %i.e = ptrtoint ptr %0 to i64
  %i.f = and i64 %i.e, 1
  %.not.i10 = icmp eq i64 %i.f, 0
  br i1 %.not.i10, label %bb.e, label %lean_dec.exit

bb.e:                                             ; preds = %lean_dec_ref.exit
  %i.g = load i32, ptr %0, align 4, !tbaa !14     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.g, !prof !15

bb.f:                                             ; preds = %bb.e
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %0, align 4, !tbaa !14
  br label %lean_dec.exit

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #10
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.f, %bb.g, %bb.h, %lean_dec_ref.exit
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Nat_cast___at___00__private_Lean_Server_FileWorker_WidgetRequests_0__Lean_Widget_kmpSearch_spec__2(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  %i.c = icmp ult ptr %0, inttoptr (i64 4294967296 to ptr)
  %or.cond.i = or i1 %i.c, %.not.i
  br i1 %or.cond.i, label %lean_nat_to_int.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.a, 1
  %i.e = tail call ptr @lean_big_size_t_to_int(i64 noundef %i.d) #10
  br label %lean_nat_to_int.exit

lean_nat_to_int.exit:                             ; preds = %bb.a, %bb.b
  %.1.i = phi ptr [ %0, %bb.a ], [ %i.e, %bb.b ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Init_While_0__whileM_erased___at___00__private_Lean_Server_FileWorker_WidgetRequests_0__Lean_Widget_kmpSearch_spec__1___redArg(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64
  %i.b = and i64 %i.a, 1
  %.not.i70 = icmp eq i64 %i.b, 0
  %i.c = icmp eq ptr %3, inttoptr (i64 1 to ptr)
  %i.d = ptrtoint ptr %2 to i64
  %i.e = lshr i64 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.e
  %i.h = getelementptr i8, ptr %4, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %lean_inc.exit.backedge, %bb.a
  %.044 = phi ptr [ %5, %bb.a ], [ %.044.be, %lean_inc.exit.backedge ] ; 9 uses
  %i.l = load atomic i32, ptr @l___private_Init_While_0__whileM_erased___at___00__private_Lean_Server_FileWorker_WidgetRequests_0__Lean_Widget_kmpSearch_buildKMPTable_spec__0___redArg___closed__0_once seq_cst, align 4, !tbaa !23
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %lean_inc.exit
  %i.n = load ptr, ptr @l___private_Init_While_0__whileM_erased___at___00__private_Lean_Server_FileWorker_WidgetRequests_0__Lean_Widget_kmpSearch_buildKMPTable_spec__0___redArg___closed__0, align 8, !tbaa !12
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %lean_inc.exit
  %i.o = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_While_0__whileM_erased___at___00__private_Lean_Server_FileWorker_WidgetRequests_0__Lean_Widget_kmpSearch_buildKMPTable_spec__0___redArg___closed__0, ptr noundef nonnull @l___private_Init_While_0__whileM_erased___at___00__private_Lean_Server_FileWorker_WidgetRequests_0__Lean_Widget_kmpSearch_buildKMPTable_spec__0___redArg___closed__0_once, ptr noundef nonnull @_init_l___private_Init_While_0__whileM_erased___at___00__private_Lean_Server_FileWorker_WidgetRequests_0__Lean_Widget_kmpSearch_buildKMPTable_spec__0___redArg___closed__0) #10
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i73 = phi ptr [ %i.n, %bb.b ], [ %i.o, %bb.c ] ; 2 uses
  %i.p = ptrtoint ptr %.0.i73 to i64              ; 2 uses
  %i.q = and i64 %i.p, 1
  %.not.i.i74 = icmp eq i64 %i.q, 0
  br i1 %.not.i.i74, label %lean_int_dec_le.exit, label %bb.d, !prof !21

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.r = ptrtoint ptr %.044 to i64                ; 2 uses
  %i.s = and i64 %i.r, 1
  %.not7.i.i = icmp eq i64 %i.s, 0
  br i1 %.not7.i.i, label %lean_int_dec_le.exit, label %.split, !prof !21

.split:                                           ; preds = %bb.d
  %i.t = lshr i64 %i.p, 1
  %i.u = trunc i64 %i.t to i32
  %i.v = lshr i64 %i.r, 1
  %i.w = trunc i64 %i.v to i32
  %.not94 = icmp sgt i32 %i.u, %i.w
  br i1 %.not94, label %.critedge, label %bb.e

lean_int_dec_le.exit:                             ; preds = %lean_obj_once.exit, %bb.d
  %i.x = tail call zeroext i1 @lean_int_big_le(ptr noundef %.0.i73, ptr noundef %.044) #10
  br i1 %i.x, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.split, %lean_int_dec_le.exit
  br i1 %.not.i70, label %.critedge.i71, label %lean_nat_eq.exit, !prof !21

.critedge.i71:                                    ; preds = %bb.e
  %i.y = tail call zeroext i1 @lean_nat_big_eq(ptr noundef %3, ptr noundef nonnull inttoptr (i64 1 to ptr)) #10
  br label %lean_nat_eq.exit

lean_nat_eq.exit:                                 ; preds = %bb.e, %.critedge.i71
  %.0.i72 = phi i1 [ %i.y, %.critedge.i71 ], [ %i.c, %bb.e ]
  %i.z = load i8, ptr %i.g, align 1, !tbaa !24
  %i.aa = tail call ptr @l_Int_toNat(ptr noundef %.044) #10 ; 9 uses
  %.val = load i64, ptr %i.h, align 8, !tbaa !10
  %i.ab = shl i64 %.val, 1
  %i.ac = or disjoint i64 %i.ab, 1
  %i.ad = inttoptr i64 %i.ac to ptr               ; 2 uses
  %i.ae = ptrtoint ptr %i.aa to i64               ; 3 uses
  %i.af = and i64 %i.ae, 1
  %.not.i69 = icmp eq i64 %i.af, 0
  br i1 %.not.i69, label %lean_nat_lt.exit, label %lean_nat_lt.exit.thread, !prof !21

lean_nat_lt.exit:                                 ; preds = %lean_nat_eq.exit
  %i.ag = tail call zeroext i1 @lean_nat_big_lt(ptr noundef %i.aa, ptr noundef nonnull %i.ad) #10
  br i1 %i.ag, label %bb.n, label %bb.f

lean_nat_lt.exit.thread:                          ; preds = %lean_nat_eq.exit
  %.not = icmp ult ptr %i.aa, %i.ad
  br i1 %.not, label %.thread79, label %lean_dec.exit64

.thread79:                                        ; preds = %lean_nat_lt.exit.thread
  %i.ah = lshr i64 %i.ae, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !24
  br label %lean_dec.exit60

bb.f:                                             ; preds = %lean_nat_lt.exit
  %i.ak = load i32, ptr %i.aa, align 4, !tbaa !14 ; 3 uses
  %i.al = icmp sgt i32 %i.ak, 1
  br i1 %i.al, label %bb.g, label %bb.h, !prof !15

bb.g:                                             ; preds = %bb.f
  %i.am = add nsw i32 %i.ak, -1
  store i32 %i.am, ptr %i.aa, align 4, !tbaa !14
  br label %lean_dec.exit64

bb.h:                                             ; preds = %bb.f
  %.not.i.i66 = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i66, label %lean_dec.exit64, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aa) #10
  br label %lean_dec.exit64

lean_dec.exit64:                                  ; preds = %lean_nat_lt.exit.thread, %bb.g, %bb.h, %bb.i
  %i.an = load i8, ptr @l_instInhabitedUInt8, align 1, !tbaa !24
  %i.ao = zext i8 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.ao, 1
  %i.aq = or disjoint i64 %i.ap, 1
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = tail call ptr @l_outOfBounds___redArg(ptr noundef nonnull %i.ar) #10 ; 4 uses
  %i.at = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.au = lshr i64 %i.at, 1
  %i.av = trunc i64 %i.au to i8                   ; 4 uses
  %i.aw = and i64 %i.at, 1
  %.not.i57 = icmp eq i64 %i.aw, 0
  br i1 %.not.i57, label %bb.j, label %lean_dec.exit60

bb.j:                                             ; preds = %lean_dec.exit64
  %i.ax = load i32, ptr %i.as, align 4, !tbaa !14 ; 3 uses
  %i.ay = icmp sgt i32 %i.ax, 1
  br i1 %i.ay, label %bb.k, label %bb.l, !prof !15

bb.k:                                             ; preds = %bb.j
  %i.az = add nsw i32 %i.ax, -1
  store i32 %i.az, ptr %i.as, align 4, !tbaa !14
  br label %lean_dec.exit60

bb.l:                                             ; preds = %bb.j
  %.not.i.i58 = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i58, label %lean_dec.exit60, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.as) #10
  br label %lean_dec.exit60

bb.n:                                             ; preds = %lean_nat_lt.exit
  %i.ba = lshr exact i64 %i.ae, 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !24  ; 3 uses
  %i.bd = load i32, ptr %i.aa, align 4, !tbaa !14 ; 3 uses
  %i.be = icmp sgt i32 %i.bd, 1
  br i1 %i.be, label %bb.o, label %bb.p, !prof !15

bb.o:                                             ; preds = %bb.n
  %i.bf = add nsw i32 %i.bd, -1
  store i32 %i.bf, ptr %i.aa, align 4, !tbaa !14
  br label %lean_dec.exit60

bb.p:                                             ; preds = %bb.n
  %.not.i.i54 = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i54, label %lean_dec.exit60, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aa) #10
  br label %lean_dec.exit60

lean_dec.exit60:                                  ; preds = %.thread79, %bb.q, %bb.p, %bb.o, %lean_dec.exit64, %bb.m, %bb.l, %bb.k
  %.051 = phi i8 [ %i.av, %lean_dec.exit64 ], [ %i.av, %bb.k ], [ %i.av, %bb.l ], [ %i.av, %bb.m ], [ %i.aj, %.thread79 ], [ %i.bc, %bb.o ], [ %i.bc, %bb.q ], [ %i.bc, %bb.p ]
  %.not84 = icmp ne i8 %i.z, %.051
  %.046.not = select i1 %.not84, i1 true, i1 %.0.i72
  br i1 %.046.not, label %bb.v, label %.critedge

.critedge:                                        ; preds = %.split, %lean_int_dec_le.exit, %lean_dec.exit60
  %i.bg = ptrtoint ptr %.044 to i64
  %i.bh = and i64 %i.bg, 1
  %.not.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i, label %bb.r, label %bb.af

bb.r:                                             ; preds = %.critedge
  %.val.i.i = load i32, ptr %.044, align 4, !tbaa !14 ; 3 uses
  %i.bi = icmp sgt i32 %.val.i.i, 0
  br i1 %i.bi, label %bb.s, label %bb.t, !prof !15

bb.s:                                             ; preds = %bb.r
  %i.bj = add nuw i32 %.val.i.i, 1
  store i32 %i.bj, ptr %.044, align 4, !tbaa !14
  br label %bb.af

bb.t:                                             ; preds = %bb.r
  %.not.i.i75 = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i75, label %bb.af, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bk = atomicrmw add ptr %.044, i32 -1 monotonic, align 4 ; 0 uses
  br label %bb.af

bb.v:                                             ; preds = %lean_dec.exit60
  %i.bl = load ptr, ptr @l_Int_instInhabited, align 8, !tbaa !12 ; 5 uses
  %i.bm = tail call ptr @l_Int_toNat(ptr noundef %.044) #10 ; 4 uses
  %i.bn = ptrtoint ptr %i.bm to i64               ; 2 uses
  %i.bo = and i64 %i.bn, 1
  %.not.i76 = icmp eq i64 %i.bo, 0                ; 2 uses
  br i1 %.not.i76, label %.thread.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bp = lshr i64 %i.bn, 1                       ; 2 uses
  %.val.i = load i64, ptr %i.j, align 8, !tbaa !10
  %i.bq = icmp ult i64 %i.bp, %.val.i
  br i1 %i.bq, label %lean_array_get_borrowed.exit.thread, label %.thread.i

lean_array_get_borrowed.exit.thread:              ; preds = %bb.w
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bp
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !12
  br label %lean_inc.exit.backedge

lean_inc.exit.backedge:                           ; preds = %lean_array_get_borrowed.exit.thread, %lean_array_get_borrowed.exit, %bb.ae, %bb.ad, %bb.ac
  %.044.be = phi ptr [ %i.bs, %lean_array_get_borrowed.exit.thread ], [ %i.by, %lean_array_get_borrowed.exit ], [ %i.by, %bb.ae ], [ %i.by, %bb.ad ], [ %i.by, %bb.ac ]
  br label %lean_inc.exit

.thread.i:                                        ; preds = %bb.w, %bb.v
  %i.bt = ptrtoint ptr %i.bl to i64
  %i.bu = and i64 %i.bt, 1
  %.not.i.i77 = icmp eq i64 %i.bu, 0
  br i1 %.not.i.i77, label %bb.x, label %lean_array_get_borrowed.exit

bb.x:                                             ; preds = %.thread.i
  %.val.i.i.i = load i32, ptr %i.bl, align 4, !tbaa !14 ; 3 uses
  %i.bv = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.bv, label %bb.y, label %bb.z, !prof !15

bb.y:                                             ; preds = %bb.x
  %i.bw = add nuw i32 %.val.i.i.i, 1
  store i32 %i.bw, ptr %i.bl, align 4, !tbaa !14
  br label %lean_array_get_borrowed.exit

bb.z:                                             ; preds = %bb.x
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_array_get_borrowed.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bx = atomicrmw add ptr %i.bl, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_array_get_borrowed.exit

lean_array_get_borrowed.exit:                     ; preds = %.thread.i, %bb.y, %bb.z, %bb.aa
  %i.by = tail call ptr @lean_array_get_panic(ptr noundef %i.bl) #10 ; 4 uses
  br i1 %.not.i76, label %bb.ab, label %lean_inc.exit.backedge

bb.ab:                                            ; preds = %lean_array_get_borrowed.exit
  %i.bz = load i32, ptr %i.bm, align 4, !tbaa !14 ; 3 uses
  %i.ca = icmp sgt i32 %i.bz, 1
  br i1 %i.ca, label %bb.ac, label %bb.ad, !prof !15

bb.ac:                                            ; preds = %bb.ab
  %i.cb = add nsw i32 %i.bz, -1
  store i32 %i.cb, ptr %i.bm, align 4, !tbaa !14
  br label %lean_inc.exit.backedge

bb.ad:                                            ; preds = %bb.ab
  %.not.i.i = icmp eq i32 %i.bz, 0
  br i1 %.not.i.i, label %lean_inc.exit.backedge, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bm) #10
  br label %lean_inc.exit.backedge

bb.af:                                            ; preds = %.critedge, %bb.u, %bb.t, %bb.s
  ret ptr %.044
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Init_While_0__whileM_erased___at___00__private_Lean_Server_FileWorker_WidgetRequests_0__Lean_Widget_kmpSearch_spec__1___redArg___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l___private_Init_While_0__whileM_erased___at___00__private_Lean_Server_FileWorker_WidgetRequests_0__Lean_Widget_kmpSearch_spec__1___redArg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  %i.b = ptrtoint ptr %5 to i64
  %i.c = and i64 %i.b, 1
  %.not.i22 = icmp eq i64 %i.c, 0
  br i1 %.not.i22, label %bb.b, label %lean_dec.exit25

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %5, align 4, !tbaa !14     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %5, align 4, !tbaa !14
  br label %lean_dec.exit25

bb.d:                                             ; preds = %bb.b
  %.not.i.i23 = icmp eq i32 %i.d, 0
  br i1 %.not.i.i23, label %lean_dec.exit25, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #10
  br label %lean_dec.exit25

lean_dec.exit25:                                  ; preds = %bb.c, %bb.d, %bb.e, %bb.a
  %i.g = load i32, ptr %4, align 4, !tbaa !14     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.g, !prof !15

bb.f:                                             ; preds = %lean_dec.exit25
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %4, align 4, !tbaa !14
  br label %lean_dec_ref.exit16

bb.g:                                             ; preds = %lean_dec.exit25
  %.not.i15 = icmp eq i32 %i.g, 0
  br i1 %.not.i15, label %lean_dec_ref.exit16, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #10
  br label %lean_dec_ref.exit16

end_hunk_1
begin_hunk_2_@l___private_Lean_Server_FileWorker_WidgetRequests_0__Lean_Widget_highlightStringMatches_x3f___redArg___lam__0___boxed:bb.a
bb.q:                                             ; preds = %lean_dec.exit
  %i.y = add nsw i32 %i.w, -1
  store i32 %i.y, ptr %0, align 4, !tbaa !14
  br label %lean_dec_ref.exit

bb.r:                                             ; preds = %lean_dec.exit
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #10
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.q, %bb.r, %bb.s
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Server_FileWorker_WidgetRequests_0__Lean_Widget_highlightStringMatches_x3f___redArg___lam__1(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr noundef %6, i8 noundef zeroext %7, ptr noundef %8, ptr noundef %9, ptr nofree readnone captures(none) %10, ptr noundef %11) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %8 to i64                   ; 3 uses
  %.not.i246 = trunc i64 %i.a to i1               ; 5 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = and i64 %i.b, 1
  %i.d = and i64 %i.c, %i.a
  %or.cond.not = icmp eq i64 %i.d, 0
  br i1 %or.cond.not, label %lean_nat_lt.exit, label %.split, !prof !25

.split:                                           ; preds = %bb.a
  %i.e = icmp ult ptr %8, %0
  br i1 %i.e, label %bb.q, label %bb.b

lean_nat_lt.exit:                                 ; preds = %bb.a
  %i.f = tail call zeroext i1 @lean_nat_big_lt(ptr noundef %8, ptr noundef %0) #10
  br i1 %i.f, label %bb.q, label %bb.b

bb.b:                                             ; preds = %.split, %lean_nat_lt.exit
  %i.g = load i32, ptr %11, align 4, !tbaa !14    ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %bb.d, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %11, align 4, !tbaa !14
  br label %lean_dec_ref.exit171

bb.d:                                             ; preds = %bb.b
  %.not.i170 = icmp eq i32 %i.g, 0
  br i1 %.not.i170, label %lean_dec_ref.exit171, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %11) #10
  br label %lean_dec_ref.exit171

lean_dec_ref.exit171:                             ; preds = %bb.c, %bb.d, %bb.e
  br i1 %.not.i246, label %lean_dec.exit245, label %bb.f

bb.f:                                             ; preds = %lean_dec_ref.exit171
  %i.j = load i32, ptr %8, align 4, !tbaa !14     ; 3 uses
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %bb.g, label %bb.h, !prof !15

bb.g:                                             ; preds = %bb.f
  %i.l = add nsw i32 %i.j, -1
  store i32 %i.l, ptr %8, align 4, !tbaa !14
  br label %lean_dec.exit245

bb.h:                                             ; preds = %bb.f
  %.not.i.i243 = icmp eq i32 %i.j, 0
  br i1 %.not.i.i243, label %lean_dec.exit245, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %8) #10
  br label %lean_dec.exit245

lean_dec.exit245:                                 ; preds = %bb.g, %bb.h, %bb.i, %lean_dec_ref.exit171
  %i.m = ptrtoint ptr %6 to i64
  %i.n = and i64 %i.m, 1
  %.not.i238 = icmp eq i64 %i.n, 0
  br i1 %.not.i238, label %bb.j, label %lean_dec.exit241

bb.j:                                             ; preds = %lean_dec.exit245
  %i.o = load i32, ptr %6, align 4, !tbaa !14     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.k, label %bb.l, !prof !15

bb.k:                                             ; preds = %bb.j
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %6, align 4, !tbaa !14
  br label %lean_dec.exit241

bb.l:                                             ; preds = %bb.j
  %.not.i.i239 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i239, label %lean_dec.exit241, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %6) #10
  br label %lean_dec.exit241

lean_dec.exit241:                                 ; preds = %bb.k, %bb.l, %bb.m, %lean_dec.exit245
  %i.r = load i32, ptr %2, align 4, !tbaa !14     ; 3 uses
  %i.s = icmp sgt i32 %i.r, 1
  br i1 %i.s, label %bb.n, label %bb.o, !prof !15

bb.n:                                             ; preds = %lean_dec.exit241
  %i.t = add nsw i32 %i.r, -1
  store i32 %i.t, ptr %2, align 4, !tbaa !14
  br label %lean_dec_ref.exit169

bb.o:                                             ; preds = %lean_dec.exit241
  %.not.i168 = icmp eq i32 %i.r, 0
  br i1 %.not.i168, label %lean_dec_ref.exit169, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #10
  br label %lean_dec_ref.exit169

bb.q:                                             ; preds = %.split, %lean_nat_lt.exit
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !12   ; 11 uses
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !12   ; 10 uses
  %.val256 = load i32, ptr %9, align 8, !tbaa !14
  %i.y = icmp eq i32 %.val256, 1                  ; 3 uses
  br i1 %i.y, label %lean_dec.exit237, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = and i64 %i.z, 1
  %.not.i183 = icmp eq i64 %i.aa, 0
  br i1 %.not.i183, label %bb.s, label %lean_inc.exit184

bb.s:                                             ; preds = %bb.r
  %.val.i.i = load i32, ptr %i.w, align 4, !tbaa !14 ; 3 uses
  %i.ab = icmp sgt i32 %.val.i.i, 0
  br i1 %i.ab, label %bb.t, label %bb.u, !prof !15

bb.t:                                             ; preds = %bb.s
  %i.ac = add nuw i32 %.val.i.i, 1
  store i32 %i.ac, ptr %i.w, align 4, !tbaa !14
  br label %lean_inc.exit184

bb.u:                                             ; preds = %bb.s
  %.not.i.i258 = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i258, label %lean_inc.exit184, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ad = atomicrmw add ptr %i.w, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit184

lean_inc.exit184:                                 ; preds = %bb.v, %bb.u, %bb.t, %bb.r
  %i.ae = ptrtoint ptr %i.x to i64
  %i.af = and i64 %i.ae, 1
  %.not.i181 = icmp eq i64 %i.af, 0
  br i1 %.not.i181, label %bb.w, label %lean_inc.exit182

bb.w:                                             ; preds = %lean_inc.exit184
  %.val.i.i259 = load i32, ptr %i.x, align 4, !tbaa !14 ; 3 uses
  %i.ag = icmp sgt i32 %.val.i.i259, 0
  br i1 %i.ag, label %bb.x, label %bb.y, !prof !15

bb.x:                                             ; preds = %bb.w
  %i.ah = add nuw i32 %.val.i.i259, 1
  store i32 %i.ah, ptr %i.x, align 4, !tbaa !14
  br label %lean_inc.exit182

bb.y:                                             ; preds = %bb.w
  %.not.i.i260 = icmp eq i32 %.val.i.i259, 0
  br i1 %.not.i.i260, label %lean_inc.exit182, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ai = atomicrmw add ptr %i.x, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit182

lean_inc.exit182:                                 ; preds = %lean_inc.exit184, %bb.x, %bb.y, %bb.z
  %i.aj = load i32, ptr %9, align 8, !tbaa !14    ; 3 uses
  %i.ak = icmp sgt i32 %i.aj, 1
  br i1 %i.ak, label %bb.aa, label %bb.ab, !prof !15

bb.aa:                                            ; preds = %lean_inc.exit182
  %i.al = add nsw i32 %i.aj, -1
  store i32 %i.al, ptr %9, align 8, !tbaa !14
  br label %lean_dec.exit237

bb.ab:                                            ; preds = %lean_inc.exit182
  %.not.i.i235 = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i235, label %lean_dec.exit237, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %9) #10
  br label %lean_dec.exit237

lean_dec.exit237:                                 ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.q
  %.0153 = phi ptr [ %9, %bb.q ], [ inttoptr (i64 1 to ptr), %bb.aa ], [ inttoptr (i64 1 to ptr), %bb.ab ], [ inttoptr (i64 1 to ptr), %bb.ac ] ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !12 ; 8 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !12 ; 12 uses
  %.val = load i32, ptr %i.w, align 8, !tbaa !14
  %i.aq = icmp eq i32 %.val, 1                    ; 3 uses
  %.pre = ptrtoint ptr %i.ap to i64               ; 2 uses
  br i1 %i.aq, label %lean_dec.exit237._crit_edge, label %bb.ad

bb.ad:                                            ; preds = %lean_dec.exit237
  %12 = and i64 %.pre, 1
  %.not.i179 = icmp eq i64 %12, 0
  br i1 %.not.i179, label %bb.ae, label %lean_inc.exit180

bb.ae:                                            ; preds = %bb.ad
  %.val.i.i262 = load i32, ptr %i.ap, align 4, !tbaa !14 ; 3 uses
  %i.ar = icmp sgt i32 %.val.i.i262, 0
  br i1 %i.ar, label %bb.af, label %bb.ag, !prof !15

bb.af:                                            ; preds = %bb.ae
  %i.as = add nuw i32 %.val.i.i262, 1
  store i32 %i.as, ptr %i.ap, align 4, !tbaa !14
  br label %lean_inc.exit180

bb.ag:                                            ; preds = %bb.ae
  %.not.i.i263 = icmp eq i32 %.val.i.i262, 0
  br i1 %.not.i.i263, label %lean_inc.exit180, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.at = atomicrmw add ptr %i.ap, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit180

lean_inc.exit180:                                 ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ad
  %i.au = ptrtoint ptr %i.an to i64
  %i.av = and i64 %i.au, 1
  %.not.i177 = icmp eq i64 %i.av, 0
  br i1 %.not.i177, label %bb.ai, label %lean_inc.exit178

bb.ai:                                            ; preds = %lean_inc.exit180
  %.val.i.i265 = load i32, ptr %i.an, align 4, !tbaa !14 ; 3 uses
  %i.aw = icmp sgt i32 %.val.i.i265, 0
  br i1 %i.aw, label %bb.aj, label %bb.ak, !prof !15

bb.aj:                                            ; preds = %bb.ai
  %i.ax = add nuw i32 %.val.i.i265, 1
  store i32 %i.ax, ptr %i.an, align 4, !tbaa !14
  br label %lean_inc.exit178

bb.ak:                                            ; preds = %bb.ai
  %.not.i.i266 = icmp eq i32 %.val.i.i265, 0
  br i1 %.not.i.i266, label %lean_inc.exit178, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ay = atomicrmw add ptr %i.an, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit178

lean_inc.exit178:                                 ; preds = %lean_inc.exit180, %bb.aj, %bb.ak, %bb.al
  %i.az = load i32, ptr %i.w, align 8, !tbaa !14  ; 3 uses
  %i.ba = icmp sgt i32 %i.az, 1
  br i1 %i.ba, label %bb.am, label %bb.an, !prof !15

bb.am:                                            ; preds = %lean_inc.exit178
  %i.bb = add nsw i32 %i.az, -1
  store i32 %i.bb, ptr %i.w, align 8, !tbaa !14
  br label %lean_dec.exit237._crit_edge

bb.an:                                            ; preds = %lean_inc.exit178
  %.not.i.i231 = icmp eq i32 %i.az, 0
  br i1 %.not.i.i231, label %lean_dec.exit237._crit_edge, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.w) #10
  br label %lean_dec.exit237._crit_edge

lean_dec.exit237._crit_edge:                      ; preds = %lean_dec.exit237, %bb.am, %bb.an, %bb.ao
  %.0157 = phi ptr [ %i.w, %lean_dec.exit237 ], [ inttoptr (i64 1 to ptr), %bb.am ], [ inttoptr (i64 1 to ptr), %bb.an ], [ inttoptr (i64 1 to ptr), %bb.ao ] ; 4 uses
  %i.bc = getelementptr i8, ptr %1, i64 8
  %.val257 = load i64, ptr %i.bc, align 8, !tbaa !10
  %i.bd = shl i64 %.val257, 1
  %i.be = add i64 %i.bd, -1
  %i.bf = inttoptr i64 %i.be to ptr               ; 4 uses
  %13 = and i64 %.pre, 1
  %.not = icmp eq i64 %13, 0                      ; 2 uses
  br i1 %.not, label %lean_nat_le.exit, label %.split358, !prof !21

.split358:                                        ; preds = %lean_dec.exit237._crit_edge
  %.not365 = icmp ult ptr %i.ap, %i.bf
  br i1 %.not365, label %bb.ap, label %bb.dh

lean_nat_le.exit:                                 ; preds = %lean_dec.exit237._crit_edge
  %i.bg = tail call zeroext i1 @lean_nat_big_le(ptr noundef nonnull %i.bf, ptr noundef %i.ap) #10
  br i1 %i.bg, label %bb.dh, label %bb.ap

bb.ap:                                            ; preds = %.split358, %lean_nat_le.exit
  br i1 %.not.i246, label %lean_inc.exit176, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.val.i.i268 = load i32, ptr %8, align 4, !tbaa !14 ; 3 uses
  %i.bh = icmp sgt i32 %.val.i.i268, 0
  br i1 %i.bh, label %bb.ar, label %bb.as, !prof !15

bb.ar:                                            ; preds = %bb.aq
  %i.bi = add nuw i32 %.val.i.i268, 1
  store i32 %i.bi, ptr %8, align 4, !tbaa !14
  br label %lean_inc.exit176

bb.as:                                            ; preds = %bb.aq
  %.not.i.i269 = icmp eq i32 %.val.i.i268, 0
  br i1 %.not.i.i269, label %lean_inc.exit176, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.bj = atomicrmw add ptr %8, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit176

lean_inc.exit176:                                 ; preds = %bb.at, %bb.as, %bb.ar, %bb.ap
  %i.bk = tail call ptr @lean_apply_1(ptr noundef %2, ptr noundef %8) #10 ; 4 uses
  %i.bl = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.bm = and i64 %i.bl, 1
  %.not.i271 = icmp eq i64 %i.bm, 0
  br i1 %.not.i271, label %bb.av, label %bb.au

bb.au:                                            ; preds = %lean_inc.exit176
  %i.bn = lshr i64 %i.bl, 1                       ; 2 uses
  %i.bo = getelementptr i8, ptr %3, i64 8
  %.val.i = load i64, ptr %i.bo, align 8, !tbaa !10
  %i.bp = icmp ult i64 %i.bn, %.val.i
  br i1 %i.bp, label %lean_array_get_borrowed.exit.thread, label %lean_array_get_borrowed.exit

lean_array_get_borrowed.exit.thread:              ; preds = %bb.au
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bn
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !12
  br label %lean_dec.exit229

lean_array_get_borrowed.exit:                     ; preds = %bb.au
  %i.bt = tail call ptr @lean_array_get_panic(ptr noundef nonnull inttoptr (i64 1 to ptr)) #10
  br label %lean_dec.exit229

bb.av:                                            ; preds = %lean_inc.exit176
  %i.bu = tail call ptr @lean_array_get_panic(ptr noundef nonnull inttoptr (i64 1 to ptr)) #10 ; 3 uses
  %i.bv = load i32, ptr %i.bk, align 4, !tbaa !14 ; 3 uses
  %i.bw = icmp sgt i32 %i.bv, 1
  br i1 %i.bw, label %bb.aw, label %bb.ax, !prof !15

bb.aw:                                            ; preds = %bb.av
  %i.bx = add nsw i32 %i.bv, -1
  store i32 %i.bx, ptr %i.bk, align 4, !tbaa !14
  br label %lean_dec.exit229

bb.ax:                                            ; preds = %bb.av
  %.not.i.i227 = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i227, label %lean_dec.exit229, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bk) #10
  br label %lean_dec.exit229

lean_dec.exit229:                                 ; preds = %lean_array_get_borrowed.exit, %lean_array_get_borrowed.exit.thread, %bb.aw, %bb.ax, %bb.ay
  %.1.i272360 = phi ptr [ %i.bs, %lean_array_get_borrowed.exit.thread ], [ %i.bu, %bb.aw ], [ %i.bu, %bb.ax ], [ %i.bu, %bb.ay ], [ %i.bt, %lean_array_get_borrowed.exit ] ; 4 uses
  %i.by = ptrtoint ptr %.1.i272360 to i64         ; 2 uses
  %i.bz = and i64 %i.by, 1
  %.not.i159 = icmp eq i64 %i.bz, 0
  br i1 %.not.i159, label %.critedge.i160, label %bb.az, !prof !21

bb.az:                                            ; preds = %lean_dec.exit229
  %i.ca = ptrtoint ptr %4 to i64                  ; 2 uses
  %i.cb = and i64 %i.ca, 1
  %.not301 = icmp eq i64 %i.cb, 0
  br i1 %.not301, label %.critedge.i160, label %bb.ba, !prof !21

bb.ba:                                            ; preds = %bb.az
  %i.cc = lshr i64 %i.by, 1                       ; 2 uses
  %i.cd = lshr i64 %i.ca, 1                       ; 2 uses
  %i.ce = icmp samesign ult i64 %i.cc, %i.cd
  br i1 %i.ce, label %lean_nat_sub.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.cf = sub nuw nsw i64 %i.cc, %i.cd
  %i.cg = shl nuw i64 %i.cf, 1
  %i.ch = or disjoint i64 %i.cg, 1
  %i.ci = inttoptr i64 %i.ch to ptr
  br label %lean_nat_sub.exit

.critedge.i160:                                   ; preds = %bb.az, %lean_dec.exit229
  %i.cj = tail call ptr @lean_nat_big_sub(ptr noundef %.1.i272360, ptr noundef %4) #10
  br label %lean_nat_sub.exit

lean_nat_sub.exit:                                ; preds = %.critedge.i160, %bb.bb, %bb.ba
  %.1.i = phi ptr [ %i.cj, %.critedge.i160 ], [ %i.ci, %bb.bb ], [ inttoptr (i64 1 to ptr), %bb.ba ] ; 15 uses
  %i.ck = ptrtoint ptr %.1.i to i64
  %i.cl = and i64 %i.ck, 1
  %.not302 = icmp eq i64 %i.cl, 0                 ; 3 uses
  br i1 %.not302, label %lean_nat_le.exit255, label %.split362, !prof !21

.split362:                                        ; preds = %lean_nat_sub.exit
  %.not366 = icmp ult ptr %.1.i, %i.bf
  br i1 %.not366, label %bb.bc, label %lean_dec.exit205

lean_nat_le.exit255:                              ; preds = %lean_nat_sub.exit
  %i.cm = tail call zeroext i1 @lean_nat_big_le(ptr noundef nonnull %i.bf, ptr noundef %.1.i) #10
  br i1 %i.cm, label %bb.cm, label %bb.bc

bb.bc:                                            ; preds = %.split362, %lean_nat_le.exit255
  %i.cn = ptrtoint ptr %.0157 to i64
  %i.co = and i64 %i.cn, 1
  %.not.i273 = icmp eq i64 %i.co, 0
  br i1 %.not.i273, label %bb.bd, label %lean_del_object.exit

bb.bd:                                            ; preds = %bb.bc
  tail call void @lean_free_object(ptr noundef nonnull %.0157) #10
  br label %lean_del_object.exit

lean_del_object.exit:                             ; preds = %bb.bc, %bb.bd
  %i.cp = ptrtoint ptr %.0153 to i64
  %i.cq = and i64 %i.cp, 1
  %.not.i274 = icmp eq i64 %i.cq, 0
  br i1 %.not.i274, label %bb.be, label %lean_del_object.exit275

bb.be:                                            ; preds = %lean_del_object.exit
  tail call void @lean_free_object(ptr noundef nonnull %.0153) #10
  br label %lean_del_object.exit275

lean_del_object.exit275:                          ; preds = %lean_del_object.exit, %bb.be
  %i.cr = ptrtoint ptr %i.x to i64
  %i.cs = and i64 %i.cr, 1
  %.not.i222 = icmp eq i64 %i.cs, 0
  br i1 %.not.i222, label %bb.bf, label %lean_dec.exit225

bb.bf:                                            ; preds = %lean_del_object.exit275
  %i.ct = load i32, ptr %i.x, align 4, !tbaa !14  ; 3 uses
  %i.cu = icmp sgt i32 %i.ct, 1
  br i1 %i.cu, label %bb.bg, label %bb.bh, !prof !15

bb.bg:                                            ; preds = %bb.bf
  %i.cv = add nsw i32 %i.ct, -1
  store i32 %i.cv, ptr %i.x, align 4, !tbaa !14
  br label %lean_dec.exit225

bb.bh:                                            ; preds = %bb.bf
  %.not.i.i223 = icmp eq i32 %i.ct, 0
  br i1 %.not.i.i223, label %lean_dec.exit225, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.x) #10
  br label %lean_dec.exit225

lean_dec.exit225:                                 ; preds = %bb.bg, %bb.bh, %bb.bi, %lean_del_object.exit275
  %i.cw = tail call ptr @l___private_Lean_Server_FileWorker_WidgetRequests_0__Lean_Widget_highlightStringMatches_x3f_nonMatch_x3f___redArg(ptr noundef nonnull %1, ptr noundef %i.ap, ptr noundef %.1.i) ; 10 uses
  br i1 %.not, label %bb.bj, label %lean_dec.exit221

bb.bj:                                            ; preds = %lean_dec.exit225
  %i.cx = load i32, ptr %i.ap, align 4, !tbaa !14 ; 3 uses
  %i.cy = icmp sgt i32 %i.cx, 1
  br i1 %i.cy, label %bb.bk, label %bb.bl, !prof !15

bb.bk:                                            ; preds = %bb.bj
  %i.cz = add nsw i32 %i.cx, -1
  store i32 %i.cz, ptr %i.ap, align 4, !tbaa !14
  br label %lean_dec.exit221

bb.bl:                                            ; preds = %bb.bj
  %.not.i.i219 = icmp eq i32 %i.cx, 0
  br i1 %.not.i.i219, label %lean_dec.exit221, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ap) #10
  br label %lean_dec.exit221

lean_dec.exit221:                                 ; preds = %bb.bk, %bb.bl, %bb.bm, %lean_dec.exit225
  %i.da = ptrtoint ptr %i.cw to i64               ; 2 uses
  %i.db = and i64 %i.da, 1
  %.not.i276 = icmp eq i64 %i.db, 0
  br i1 %.not.i276, label %lean_obj_tag.exit, label %lean_obj_tag.exit.thread

lean_obj_tag.exit:                                ; preds = %lean_dec.exit221
  %i.dc = getelementptr i8, ptr %i.cw, i64 4
  %.val.i278 = load i32, ptr %i.dc, align 4
  %.mask = and i32 %.val.i278, -16777216
  %i.dd = icmp eq i32 %.mask, 16777216
  br i1 %i.dd, label %bb.bn, label %bb.ce

lean_obj_tag.exit.thread:                         ; preds = %lean_dec.exit221
  %i.de = and i64 %i.da, 8589934590
end_hunk_2
begin_hunk_3_@l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Server_FileWorker_WidgetRequests_0__Lean_Widget_highlightStringMatches_x3f___at___00__private_Lean_Server_FileWorker_WidgetRequests_0__Lean_Widget_advanceTaggedTextHighlightState_spec__0_spec__0___redArg___lam__0___boxed:bb.a
  br i1 %i.u, label %bb.n, label %bb.o, !prof !15

bb.n:                                             ; preds = %bb.m
  %i.v = add nsw i32 %i.t, -1
  store i32 %i.v, ptr %1, align 4, !tbaa !14
  br label %lean_dec.exit

bb.o:                                             ; preds = %bb.m
  %.not.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #10
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.n, %bb.o, %bb.p, %lean_dec.exit21
  %i.w = load i32, ptr %0, align 4, !tbaa !14     ; 3 uses
  %i.x = icmp sgt i32 %i.w, 1
  br i1 %i.x, label %bb.q, label %bb.r, !prof !15

bb.q:                                             ; preds = %lean_dec.exit
  %i.y = add nsw i32 %i.w, -1
  store i32 %i.y, ptr %0, align 4, !tbaa !14
  br label %lean_dec_ref.exit

bb.r:                                             ; preds = %lean_dec.exit
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #10
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.q, %bb.r, %bb.s
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define ptr @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Server_FileWorker_WidgetRequests_0__Lean_Widget_highlightStringMatches_x3f___at___00__private_Lean_Server_FileWorker_WidgetRequests_0__Lean_Widget_advanceTaggedTextHighlightState_spec__0_spec__0___redArg(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not = icmp eq i64 %i.b, 0
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = getelementptr i8, ptr %2, i64 8
  %i.e = getelementptr i8, ptr %3, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.g = ptrtoint ptr %4 to i64                   ; 2 uses
  %i.h = lshr i64 %i.g, 1                         ; 2 uses
  %i.i = ptrtoint ptr %6 to i64
  %i.j = and i64 %i.i, 1
  %.not.i183 = icmp eq i64 %i.j, 0                ; 6 uses
  %invariant.op = and i64 %i.g, 1
  br label %lean_dec.exit265

lean_dec.exit265:                                 ; preds = %lean_dec.exit265.backedge, %bb.a
  %.0149 = phi ptr [ %8, %bb.a ], [ %i.hm, %lean_dec.exit265.backedge ] ; 11 uses
  %.0147 = phi ptr [ %7, %bb.a ], [ %.0147.be, %lean_dec.exit265.backedge ] ; 21 uses
  %i.k = ptrtoint ptr %.0147 to i64               ; 3 uses
  %i.l = and i64 %i.k, 1
  %.not.i270 = icmp eq i64 %i.l, 0                ; 6 uses
  br i1 %.not.i270, label %lean_nat_lt.exit, label %bb.b, !prof !21

bb.b:                                             ; preds = %lean_dec.exit265
  br i1 %.not, label %lean_nat_lt.exit.thread364, label %lean_nat_lt.exit.thread, !prof !21

lean_nat_lt.exit:                                 ; preds = %lean_dec.exit265
  %i.m = tail call zeroext i1 @lean_nat_big_lt(ptr noundef %.0147, ptr noundef %0) #10
  br i1 %i.m, label %bb.k, label %bb.c

lean_nat_lt.exit.thread364:                       ; preds = %bb.b
  %i.n = tail call zeroext i1 @lean_nat_big_lt(ptr noundef %.0147, ptr noundef %0) #10
  br i1 %i.n, label %bb.k, label %lean_dec.exit269

lean_nat_lt.exit.thread:                          ; preds = %bb.b
  %.not366 = icmp ult ptr %.0147, %0
  br i1 %.not366, label %bb.k, label %lean_dec.exit269

bb.c:                                             ; preds = %lean_nat_lt.exit
  %i.o = load i32, ptr %.0147, align 4, !tbaa !14 ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.d, label %bb.e, !prof !15

bb.d:                                             ; preds = %bb.c
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %.0147, align 4, !tbaa !14
  br label %lean_dec.exit269

bb.e:                                             ; preds = %bb.c
  %.not.i.i267 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i267, label %lean_dec.exit269, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0147) #10
  br label %lean_dec.exit269

lean_dec.exit269:                                 ; preds = %lean_nat_lt.exit.thread364, %lean_nat_lt.exit.thread, %bb.d, %bb.e, %bb.f
  br i1 %.not.i183, label %bb.g, label %bb.fq

bb.g:                                             ; preds = %lean_dec.exit269
  %i.r = load i32, ptr %6, align 4, !tbaa !14     ; 3 uses
  %i.s = icmp sgt i32 %i.r, 1
  br i1 %i.s, label %bb.h, label %bb.i, !prof !15

bb.h:                                             ; preds = %bb.g
  %i.t = add nsw i32 %i.r, -1
  store i32 %i.t, ptr %6, align 4, !tbaa !14
  br label %bb.fq

bb.i:                                             ; preds = %bb.g
  %.not.i.i263 = icmp eq i32 %i.r, 0
  br i1 %.not.i.i263, label %bb.fq, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %6) #10
  br label %bb.fq

bb.k:                                             ; preds = %lean_nat_lt.exit.thread364, %lean_nat_lt.exit.thread, %lean_nat_lt.exit
  %i.u = getelementptr inbounds nuw i8, ptr %.0149, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %.0149, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !12   ; 11 uses
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !12   ; 10 uses
  %.0149.val = load i32, ptr %.0149, align 8, !tbaa !14
  %i.y = icmp eq i32 %.0149.val, 1                ; 3 uses
  br i1 %i.y, label %lean_dec.exit261, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = and i64 %i.z, 1
  %.not.i195 = icmp eq i64 %i.aa, 0
  br i1 %.not.i195, label %bb.m, label %lean_inc.exit196

bb.m:                                             ; preds = %bb.l
  %.val.i.i = load i32, ptr %i.w, align 4, !tbaa !14 ; 3 uses
  %i.ab = icmp sgt i32 %.val.i.i, 0
  br i1 %i.ab, label %bb.n, label %bb.o, !prof !15

bb.n:                                             ; preds = %bb.m
  %i.ac = add nuw i32 %.val.i.i, 1
  store i32 %i.ac, ptr %i.w, align 4, !tbaa !14
  br label %lean_inc.exit196

bb.o:                                             ; preds = %bb.m
  %.not.i.i282 = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i282, label %lean_inc.exit196, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ad = atomicrmw add ptr %i.w, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit196

lean_inc.exit196:                                 ; preds = %bb.p, %bb.o, %bb.n, %bb.l
  %i.ae = ptrtoint ptr %i.x to i64
  %i.af = and i64 %i.ae, 1
  %.not.i193 = icmp eq i64 %i.af, 0
  br i1 %.not.i193, label %bb.q, label %lean_inc.exit194

bb.q:                                             ; preds = %lean_inc.exit196
  %.val.i.i283 = load i32, ptr %i.x, align 4, !tbaa !14 ; 3 uses
  %i.ag = icmp sgt i32 %.val.i.i283, 0
  br i1 %i.ag, label %bb.r, label %bb.s, !prof !15

bb.r:                                             ; preds = %bb.q
  %i.ah = add nuw i32 %.val.i.i283, 1
  store i32 %i.ah, ptr %i.x, align 4, !tbaa !14
  br label %lean_inc.exit194

bb.s:                                             ; preds = %bb.q
  %.not.i.i284 = icmp eq i32 %.val.i.i283, 0
  br i1 %.not.i.i284, label %lean_inc.exit194, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ai = atomicrmw add ptr %i.x, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit194

lean_inc.exit194:                                 ; preds = %lean_inc.exit196, %bb.r, %bb.s, %bb.t
  %i.aj = load i32, ptr %.0149, align 8, !tbaa !14 ; 3 uses
  %i.ak = icmp sgt i32 %i.aj, 1
  br i1 %i.ak, label %bb.u, label %bb.v, !prof !15

bb.u:                                             ; preds = %lean_inc.exit194
  %i.al = add nsw i32 %i.aj, -1
  store i32 %i.al, ptr %.0149, align 8, !tbaa !14
  br label %lean_dec.exit261

bb.v:                                             ; preds = %lean_inc.exit194
  %.not.i.i259 = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i259, label %lean_dec.exit261, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0149) #10
  br label %lean_dec.exit261

lean_dec.exit261:                                 ; preds = %bb.w, %bb.v, %bb.u, %bb.k
  %.0166 = phi ptr [ %.0149, %bb.k ], [ inttoptr (i64 1 to ptr), %bb.u ], [ inttoptr (i64 1 to ptr), %bb.v ], [ inttoptr (i64 1 to ptr), %bb.w ] ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !12 ; 8 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !12 ; 12 uses
  %.val = load i32, ptr %i.w, align 8, !tbaa !14
  %i.aq = icmp eq i32 %.val, 1                    ; 3 uses
  %.pre = ptrtoint ptr %i.ap to i64               ; 2 uses
  br i1 %i.aq, label %lean_dec.exit261._crit_edge, label %bb.x

bb.x:                                             ; preds = %lean_dec.exit261
  %9 = and i64 %.pre, 1
  %.not.i191 = icmp eq i64 %9, 0
  br i1 %.not.i191, label %bb.y, label %lean_inc.exit192

bb.y:                                             ; preds = %bb.x
  %.val.i.i286 = load i32, ptr %i.ap, align 4, !tbaa !14 ; 3 uses
  %i.ar = icmp sgt i32 %.val.i.i286, 0
  br i1 %i.ar, label %bb.z, label %bb.aa, !prof !15

bb.z:                                             ; preds = %bb.y
  %i.as = add nuw i32 %.val.i.i286, 1
  store i32 %i.as, ptr %i.ap, align 4, !tbaa !14
  br label %lean_inc.exit192

bb.aa:                                            ; preds = %bb.y
  %.not.i.i287 = icmp eq i32 %.val.i.i286, 0
  br i1 %.not.i.i287, label %lean_inc.exit192, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.at = atomicrmw add ptr %i.ap, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit192

lean_inc.exit192:                                 ; preds = %bb.ab, %bb.aa, %bb.z, %bb.x
  %i.au = ptrtoint ptr %i.an to i64
  %i.av = and i64 %i.au, 1
  %.not.i189 = icmp eq i64 %i.av, 0
  br i1 %.not.i189, label %bb.ac, label %lean_inc.exit190

bb.ac:                                            ; preds = %lean_inc.exit192
  %.val.i.i289 = load i32, ptr %i.an, align 4, !tbaa !14 ; 3 uses
  %i.aw = icmp sgt i32 %.val.i.i289, 0
  br i1 %i.aw, label %bb.ad, label %bb.ae, !prof !15

bb.ad:                                            ; preds = %bb.ac
  %i.ax = add nuw i32 %.val.i.i289, 1
  store i32 %i.ax, ptr %i.an, align 4, !tbaa !14
  br label %lean_inc.exit190

bb.ae:                                            ; preds = %bb.ac
  %.not.i.i290 = icmp eq i32 %.val.i.i289, 0
  br i1 %.not.i.i290, label %lean_inc.exit190, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ay = atomicrmw add ptr %i.an, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit190

lean_inc.exit190:                                 ; preds = %lean_inc.exit192, %bb.ad, %bb.ae, %bb.af
  %i.az = load i32, ptr %i.w, align 8, !tbaa !14  ; 3 uses
  %i.ba = icmp sgt i32 %i.az, 1
  br i1 %i.ba, label %bb.ag, label %bb.ah, !prof !15

bb.ag:                                            ; preds = %lean_inc.exit190
  %i.bb = add nsw i32 %i.az, -1
  store i32 %i.bb, ptr %i.w, align 8, !tbaa !14
  br label %lean_dec.exit261._crit_edge

bb.ah:                                            ; preds = %lean_inc.exit190
  %.not.i.i255 = icmp eq i32 %i.az, 0
  br i1 %.not.i.i255, label %lean_dec.exit261._crit_edge, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.w) #10
  br label %lean_dec.exit261._crit_edge

lean_dec.exit261._crit_edge:                      ; preds = %lean_dec.exit261, %bb.ag, %bb.ah, %bb.ai
  %.0168 = phi ptr [ %i.w, %lean_dec.exit261 ], [ inttoptr (i64 1 to ptr), %bb.ag ], [ inttoptr (i64 1 to ptr), %bb.ah ], [ inttoptr (i64 1 to ptr), %bb.ai ] ; 4 uses
  %.val281 = load i64, ptr %i.c, align 8, !tbaa !10
  %i.bc = shl i64 %.val281, 1
  %i.bd = add i64 %i.bc, -1
  %i.be = inttoptr i64 %i.bd to ptr               ; 4 uses
  %10 = and i64 %.pre, 1
  %.not367 = icmp eq i64 %10, 0                   ; 2 uses
  br i1 %.not367, label %lean_nat_le.exit, label %.split, !prof !21

.split:                                           ; preds = %lean_dec.exit261._crit_edge
  %.not549 = icmp ult ptr %i.ap, %i.be
  br i1 %.not549, label %bb.aj, label %bb.dj

lean_nat_le.exit:                                 ; preds = %lean_dec.exit261._crit_edge
  %i.bf = tail call zeroext i1 @lean_nat_big_le(ptr noundef nonnull %i.be, ptr noundef %i.ap) #10
  br i1 %i.bf, label %bb.dj, label %bb.aj

bb.aj:                                            ; preds = %.split, %lean_nat_le.exit
  %.val280 = load i64, ptr %i.d, align 8, !tbaa !10 ; 2 uses
  br i1 %.not.i270, label %.critedge.i177, label %bb.ak, !prof !21

bb.ak:                                            ; preds = %bb.aj
  %i.bg = and i64 %.val280, 9223372036854775807   ; 2 uses
  %i.bh = lshr i64 %i.k, 1                        ; 2 uses
  %i.bi = icmp samesign ult i64 %i.bg, %i.bh
  br i1 %i.bi, label %lean_dec.exit253, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bj = sub nuw nsw i64 %i.bg, %i.bh
  %i.bk = shl nuw i64 %i.bj, 1
  %i.bl = or disjoint i64 %i.bk, 1
  %i.bm = inttoptr i64 %i.bl to ptr
  br label %lean_nat_sub.exit179

.critedge.i177:                                   ; preds = %bb.aj
  %i.bn = shl i64 %.val280, 1
  %i.bo = or disjoint i64 %i.bn, 1
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = tail call ptr @lean_nat_big_sub(ptr noundef nonnull %i.bp, ptr noundef %.0147) #10
  br label %lean_nat_sub.exit179

lean_nat_sub.exit179:                             ; preds = %bb.al, %.critedge.i177
  %.1.i178 = phi ptr [ %i.bq, %.critedge.i177 ], [ %i.bm, %bb.al ] ; 6 uses
  %i.br = ptrtoint ptr %.1.i178 to i64            ; 2 uses
  %i.bs = and i64 %i.br, 1
  %.not.i172 = icmp eq i64 %i.bs, 0
  br i1 %.not.i172, label %bb.ao, label %bb.am, !prof !21

bb.am:                                            ; preds = %lean_nat_sub.exit179
  %i.bt = icmp ult ptr %.1.i178, inttoptr (i64 2 to ptr)
  br i1 %i.bt, label %lean_dec.exit253, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bu = add i64 %i.br, -2
  %i.bv = inttoptr i64 %i.bu to ptr
  br label %lean_dec.exit253

bb.ao:                                            ; preds = %lean_nat_sub.exit179
  %i.bw = tail call ptr @lean_nat_big_sub(ptr noundef %.1.i178, ptr noundef nonnull inttoptr (i64 3 to ptr)) #10 ; 3 uses
  %i.bx = load i32, ptr %.1.i178, align 4, !tbaa !14 ; 3 uses
  %i.by = icmp sgt i32 %i.bx, 1
  br i1 %i.by, label %bb.ap, label %bb.aq, !prof !15

bb.ap:                                            ; preds = %bb.ao
  %i.bz = add nsw i32 %i.bx, -1
  store i32 %i.bz, ptr %.1.i178, align 4, !tbaa !14
  br label %lean_dec.exit253

bb.aq:                                            ; preds = %bb.ao
  %.not.i.i251 = icmp eq i32 %i.bx, 0
  br i1 %.not.i.i251, label %lean_dec.exit253, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i178) #10
  br label %lean_dec.exit253

lean_dec.exit253:                                 ; preds = %bb.ak, %bb.an, %bb.am, %bb.ap, %bb.aq, %bb.ar
  %.1.i174350 = phi ptr [ %i.bw, %bb.ap ], [ %i.bw, %bb.ar ], [ %i.bw, %bb.aq ], [ inttoptr (i64 1 to ptr), %bb.am ], [ %i.bv, %bb.an ], [ inttoptr (i64 1 to ptr), %bb.ak ] ; 4 uses
  %i.ca = ptrtoint ptr %.1.i174350 to i64         ; 2 uses
  %i.cb = and i64 %i.ca, 1
  %.not.i292 = icmp eq i64 %i.cb, 0
  br i1 %.not.i292, label %bb.at, label %bb.as

bb.as:                                            ; preds = %lean_dec.exit253
  %i.cc = lshr i64 %i.ca, 1                       ; 2 uses
  %.val.i = load i64, ptr %i.e, align 8, !tbaa !10
  %i.cd = icmp ult i64 %i.cc, %.val.i
  br i1 %i.cd, label %lean_array_get_borrowed.exit.thread, label %lean_array_get_borrowed.exit

lean_array_get_borrowed.exit.thread:              ; preds = %bb.as
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.cc
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !12
  br label %lean_dec.exit249

lean_array_get_borrowed.exit:                     ; preds = %bb.as
  %i.cg = tail call ptr @lean_array_get_panic(ptr noundef nonnull inttoptr (i64 1 to ptr)) #10
  br label %lean_dec.exit249

bb.at:                                            ; preds = %lean_dec.exit253
  %i.ch = tail call ptr @lean_array_get_panic(ptr noundef nonnull inttoptr (i64 1 to ptr)) #10 ; 3 uses
  %i.ci = load i32, ptr %.1.i174350, align 4, !tbaa !14 ; 3 uses
  %i.cj = icmp sgt i32 %i.ci, 1
  br i1 %i.cj, label %bb.au, label %bb.av, !prof !15

bb.au:                                            ; preds = %bb.at
  %i.ck = add nsw i32 %i.ci, -1
  store i32 %i.ck, ptr %.1.i174350, align 4, !tbaa !14
  br label %lean_dec.exit249

bb.av:                                            ; preds = %bb.at
  %.not.i.i247 = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i247, label %lean_dec.exit249, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i174350) #10
  br label %lean_dec.exit249

lean_dec.exit249:                                 ; preds = %lean_array_get_borrowed.exit, %lean_array_get_borrowed.exit.thread, %bb.au, %bb.av, %bb.aw
  %.1.i293496 = phi ptr [ %i.cf, %lean_array_get_borrowed.exit.thread ], [ %i.ch, %bb.au ], [ %i.ch, %bb.av ], [ %i.ch, %bb.aw ], [ %i.cg, %lean_array_get_borrowed.exit ] ; 4 uses
  %i.cl = ptrtoint ptr %.1.i293496 to i64         ; 2 uses
  %.reass = and i64 %invariant.op, %i.cl
  %brmerge.not.not = icmp eq i64 %.reass, 0
  br i1 %brmerge.not.not, label %.critedge.i171, label %bb.ax, !prof !25

bb.ax:                                            ; preds = %lean_dec.exit249
  %i.cm = lshr i64 %i.cl, 1                       ; 2 uses
  %i.cn = icmp samesign ult i64 %i.cm, %i.h
  br i1 %i.cn, label %lean_nat_sub.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.co = sub nuw nsw i64 %i.cm, %i.h
  %i.cp = shl nuw i64 %i.co, 1
  %i.cq = or disjoint i64 %i.cp, 1
  %i.cr = inttoptr i64 %i.cq to ptr
  br label %lean_nat_sub.exit

.critedge.i171:                                   ; preds = %lean_dec.exit249
  %i.cs = tail call ptr @lean_nat_big_sub(ptr noundef %.1.i293496, ptr noundef %4) #10
  br label %lean_nat_sub.exit

lean_nat_sub.exit:                                ; preds = %.critedge.i171, %bb.ay, %bb.ax
  %.1.i = phi ptr [ %i.cs, %.critedge.i171 ], [ %i.cr, %bb.ay ], [ inttoptr (i64 1 to ptr), %bb.ax ] ; 15 uses
  %i.ct = ptrtoint ptr %.1.i to i64
  %i.cu = and i64 %i.ct, 1
  %.not370 = icmp eq i64 %i.cu, 0                 ; 3 uses
  br i1 %.not370, label %lean_nat_le.exit279, label %.split498, !prof !21

.split498:                                        ; preds = %lean_nat_sub.exit
  %.not550 = icmp ult ptr %.1.i, %i.be
  br i1 %.not550, label %bb.az, label %lean_dec.exit225

lean_nat_le.exit279:                              ; preds = %lean_nat_sub.exit
  %i.cv = tail call zeroext i1 @lean_nat_big_le(ptr noundef nonnull %i.be, ptr noundef %.1.i) #10
  br i1 %i.cv, label %bb.cr, label %bb.az

bb.az:                                            ; preds = %.split498, %lean_nat_le.exit279
  %i.cw = ptrtoint ptr %.0168 to i64
  %i.cx = and i64 %i.cw, 1
  %.not.i294 = icmp eq i64 %i.cx, 0
  br i1 %.not.i294, label %bb.ba, label %lean_del_object.exit

bb.ba:                                            ; preds = %bb.az
  tail call void @lean_free_object(ptr noundef nonnull %.0168) #10
  br label %lean_del_object.exit

lean_del_object.exit:                             ; preds = %bb.az, %bb.ba
  %i.cy = ptrtoint ptr %.0166 to i64
  %i.cz = and i64 %i.cy, 1
  %.not.i295 = icmp eq i64 %i.cz, 0
  br i1 %.not.i295, label %bb.bb, label %lean_del_object.exit296

bb.bb:                                            ; preds = %lean_del_object.exit
  tail call void @lean_free_object(ptr noundef nonnull %.0166) #10
  br label %lean_del_object.exit296

lean_del_object.exit296:                          ; preds = %lean_del_object.exit, %bb.bb
  %i.da = ptrtoint ptr %i.x to i64
  %i.db = and i64 %i.da, 1
  %.not.i242 = icmp eq i64 %i.db, 0
  br i1 %.not.i242, label %bb.bc, label %lean_dec.exit245

bb.bc:                                            ; preds = %lean_del_object.exit296
  %i.dc = load i32, ptr %i.x, align 4, !tbaa !14  ; 3 uses
  %i.dd = icmp sgt i32 %i.dc, 1
  br i1 %i.dd, label %bb.bd, label %bb.be, !prof !15

bb.bd:                                            ; preds = %bb.bc
  %i.de = add nsw i32 %i.dc, -1
  store i32 %i.de, ptr %i.x, align 4, !tbaa !14
  br label %lean_dec.exit245

bb.be:                                            ; preds = %bb.bc
  %.not.i.i243 = icmp eq i32 %i.dc, 0
  br i1 %.not.i.i243, label %lean_dec.exit245, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.x) #10
  br label %lean_dec.exit245

lean_dec.exit245:                                 ; preds = %bb.bd, %bb.be, %bb.bf, %lean_del_object.exit296
  %i.df = tail call ptr @l___private_Lean_Server_FileWorker_WidgetRequests_0__Lean_Widget_highlightStringMatches_x3f_nonMatch_x3f___redArg(ptr noundef nonnull %1, ptr noundef %i.ap, ptr noundef %.1.i) ; 10 uses
  br i1 %.not367, label %bb.bg, label %lean_dec.exit241

bb.bg:                                            ; preds = %lean_dec.exit245
  %i.dg = load i32, ptr %i.ap, align 4, !tbaa !14 ; 3 uses
  %i.dh = icmp sgt i32 %i.dg, 1
  br i1 %i.dh, label %bb.bh, label %bb.bi, !prof !15
end_hunk_3
