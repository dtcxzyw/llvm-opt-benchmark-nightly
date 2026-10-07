Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/MutualDef?download=true
inline.NumInlined: 17058
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 79
loop-unroll.NumUnrolled: 79
begin_hunk_0_@l_Lean_Option_set___at___00__private_Lean_Elab_MutualDef_0__Lean_Elab_Term_elabMutualDef_finishElab_spec__19___boxed:bb.a
  %i.i = icmp sgt i32 %i.h, 1
  br i1 %i.i, label %bb.f, label %bb.g, !prof !15

bb.f:                                             ; preds = %lean_inc.exit.i
  %i.j = add nsw i32 %i.h, -1
  store i32 %i.j, ptr %1, align 8, !tbaa !14
  br label %l_Lean_Option_set___at___00__private_Lean_Elab_MutualDef_0__Lean_Elab_Term_elabMutualDef_finishElab_spec__19.exit

bb.g:                                             ; preds = %lean_inc.exit.i
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %l_Lean_Option_set___at___00__private_Lean_Elab_MutualDef_0__Lean_Elab_Term_elabMutualDef_finishElab_spec__19.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #9
  br label %l_Lean_Option_set___at___00__private_Lean_Elab_MutualDef_0__Lean_Elab_Term_elabMutualDef_finishElab_spec__19.exit

l_Lean_Option_set___at___00__private_Lean_Elab_MutualDef_0__Lean_Elab_Term_elabMutualDef_finishElab_spec__19.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.k = ptrtoint ptr %2 to i64
  %i.l = lshr i64 %i.k, 1
  %i.m = trunc i64 %i.l to i8
  %i.n = tail call ptr @l_Lean_Options_set___at___00Lean_Option_set___at___00__private_Lean_Elab_MutualDef_0__Lean_Elab_Term_elabMutualDef_finishElab_spec__19_spec__24(ptr noundef %0, ptr noundef %i.b, i8 noundef zeroext %i.m)
  ret ptr %i.n
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Elab_MutualDef_0__Lean_Elab_Term_elabMutualDef_finishElab___lam__3(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr nofree noundef readonly captures(none) %8, ptr noundef %9) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @lean_st_ref_get(ptr noundef %9) #9 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !12   ; 16 uses
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12   ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12   ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12   ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !12   ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !12   ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !12   ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !12   ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !12   ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 104
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !12   ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 121
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 112
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !12 ; 4 uses
  %i.ad = getelementptr i8, ptr %1, i64 8
  %.val347 = load i64, ptr %i.ad, align 8, !tbaa !10 ; 2 uses
  %i.ae = shl i64 %.val347, 1
  %i.af = or disjoint i64 %i.ae, 1
  %i.ag = inttoptr i64 %i.af to ptr               ; 2 uses
  %i.ah = ptrtoint ptr %2 to i64
  %i.ai = and i64 %i.ah, 1
  %.not.i346 = icmp eq i64 %i.ai, 0
  br i1 %.not.i346, label %lean_nat_lt.exit, label %.split, !prof !19

.split:                                           ; preds = %bb.a
  %i.aj = icmp ult ptr %2, %i.ag
  br i1 %i.aj, label %bb.f, label %bb.b

lean_nat_lt.exit:                                 ; preds = %bb.a
  %i.ak = tail call zeroext i1 @lean_nat_big_lt(ptr noundef %2, ptr noundef nonnull %i.ag) #9
  br i1 %i.ak, label %bb.f, label %bb.b

bb.b:                                             ; preds = %.split, %lean_nat_lt.exit
  %.val.i.i = load i32, ptr %i.g, align 4, !tbaa !14 ; 3 uses
  %i.al = icmp sgt i32 %.val.i.i, 0
  br i1 %i.al, label %bb.c, label %bb.d, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.am = add nuw i32 %.val.i.i, 1
  store i32 %i.am, ptr %i.g, align 4, !tbaa !14
  br label %lean_inc_ref.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc_ref.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = atomicrmw sub ptr %i.g, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit

bb.f:                                             ; preds = %.split, %lean_nat_lt.exit
  %i.ao = and i64 %.val347, 9223372036854775807   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.not24.i = icmp eq i64 %3, %i.ao
  br i1 %.not24.i, label %.loopexit, label %.lr.ph.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.aq = add i64 %.01725.i, 1                    ; 2 uses
  %.not.i349 = icmp eq i64 %i.aq, %i.ao
  br i1 %.not.i349, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.g
  %.01725.i = phi i64 [ %i.aq, %bb.g ], [ %3, %bb.f ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.01725.i
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !12
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !12
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 88
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !18
  %i.ax = tail call zeroext i8 @l_Lean_Elab_DefKind_isTheorem(i8 noundef zeroext %i.aw) #9
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %bb.g, label %l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Elab_Term_MutualClosure_getKindForLetRecs_spec__0.exit

.loopexit:                                        ; preds = %bb.g, %bb.f
  %.val.i.i350 = load i32, ptr %i.g, align 4, !tbaa !14 ; 3 uses
  %i.az = icmp sgt i32 %.val.i.i350, 0
  br i1 %i.az, label %bb.h, label %bb.i, !prof !15

bb.h:                                             ; preds = %.loopexit
  %i.ba = add nuw i32 %.val.i.i350, 1
  store i32 %i.ba, ptr %i.g, align 4, !tbaa !14
  br label %lean_inc_ref.exit

bb.i:                                             ; preds = %.loopexit
  %.not.i.i351 = icmp eq i32 %.val.i.i350, 0
  br i1 %.not.i.i351, label %lean_inc_ref.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = atomicrmw sub ptr %i.g, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit

l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Elab_Term_MutualClosure_getKindForLetRecs_spec__0.exit: ; preds = %.lr.ph.i
  %i.bc = load ptr, ptr @l_Lean_ResolveName_backward_privateInPublic, align 8, !tbaa !12 ; 4 uses
  %.val.i.i353 = load i32, ptr %i.g, align 4, !tbaa !14 ; 3 uses
  %i.bd = icmp sgt i32 %.val.i.i353, 0
  br i1 %i.bd, label %bb.k, label %bb.l, !prof !15

bb.k:                                             ; preds = %l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Elab_Term_MutualClosure_getKindForLetRecs_spec__0.exit
  %i.be = add nuw i32 %.val.i.i353, 1
  store i32 %i.be, ptr %i.g, align 4, !tbaa !14
  br label %lean_inc_ref.exit355

bb.l:                                             ; preds = %l___private_Init_Data_Array_Basic_0__Array_anyMUnsafe_any___at___00Lean_Elab_Term_MutualClosure_getKindForLetRecs_spec__0.exit
  %.not.i.i354 = icmp eq i32 %.val.i.i353, 0
  br i1 %.not.i.i354, label %lean_inc_ref.exit355, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = atomicrmw sub ptr %i.g, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit355

lean_inc_ref.exit355:                             ; preds = %bb.k, %bb.l, %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !12 ; 5 uses
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = and i64 %i.bi, 1
  %.not.i6.i = icmp eq i64 %i.bj, 0
  br i1 %.not.i6.i, label %bb.n, label %lean_inc.exit.i

bb.n:                                             ; preds = %lean_inc_ref.exit355
  %.val.i.i.i = load i32, ptr %i.bh, align 4, !tbaa !14 ; 3 uses
  %i.bk = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.bk, label %bb.o, label %bb.p, !prof !15

bb.o:                                             ; preds = %bb.n
  %i.bl = add nuw i32 %.val.i.i.i, 1
  store i32 %i.bl, ptr %i.bh, align 4, !tbaa !14
  br label %lean_inc.exit.i

bb.p:                                             ; preds = %bb.n
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_inc.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bm = atomicrmw sub ptr %i.bh, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit.i

lean_inc.exit.i:                                  ; preds = %bb.q, %bb.p, %bb.o, %lean_inc_ref.exit355
  %i.bn = load i32, ptr %i.bc, align 8, !tbaa !14 ; 3 uses
  %i.bo = icmp sgt i32 %i.bn, 1
  br i1 %i.bo, label %bb.r, label %bb.s, !prof !15

bb.r:                                             ; preds = %lean_inc.exit.i
  %i.bp = add nsw i32 %i.bn, -1
  store i32 %i.bp, ptr %i.bc, align 8, !tbaa !14
  br label %l_Lean_Option_set___at___00__private_Lean_Elab_MutualDef_0__Lean_Elab_Term_elabMutualDef_finishElab_spec__19.exit

bb.s:                                             ; preds = %lean_inc.exit.i
  %.not.i.i356 = icmp eq i32 %i.bn, 0
  br i1 %.not.i.i356, label %l_Lean_Option_set___at___00__private_Lean_Elab_MutualDef_0__Lean_Elab_Term_elabMutualDef_finishElab_spec__19.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bc) #9
  br label %l_Lean_Option_set___at___00__private_Lean_Elab_MutualDef_0__Lean_Elab_Term_elabMutualDef_finishElab_spec__19.exit

l_Lean_Option_set___at___00__private_Lean_Elab_MutualDef_0__Lean_Elab_Term_elabMutualDef_finishElab_spec__19.exit: ; preds = %bb.r, %bb.s, %bb.t
  %i.bq = tail call ptr @l_Lean_Options_set___at___00Lean_Option_set___at___00__private_Lean_Elab_MutualDef_0__Lean_Elab_Term_elabMutualDef_finishElab_spec__19_spec__24(ptr noundef nonnull %i.g, ptr noundef %i.bh, i8 noundef zeroext 0)
  br label %lean_inc_ref.exit

bb.u:                                             ; preds = %11, %10, %bb.fr
  %.0215 = phi i8 [ %i.me, %10 ], [ %i.me, %bb.fr ], [ 0, %11 ]
  %i.br = load ptr, ptr @l_Lean_maxRecDepth, align 8, !tbaa !12
  %i.bs = tail call ptr @l_Lean_Option_get___at___00__private_Lean_Util_Trace_0__Lean_withTraceNode_postCallback___at___00__private_Lean_Elab_MutualDef_0__Lean_Elab_Term_elabHeaders_spec__6_spec__11(ptr noundef %.1254, ptr noundef %i.br)
  %.val.i.i357 = load i32, ptr %i.ac, align 4, !tbaa !14 ; 3 uses
  %i.bt = icmp sgt i32 %.val.i.i357, 0
  br i1 %i.bt, label %bb.v, label %bb.w, !prof !15

bb.v:                                             ; preds = %bb.u
  %i.bu = add nuw i32 %.val.i.i357, 1
  store i32 %i.bu, ptr %i.ac, align 4, !tbaa !14
  br label %lean_inc_ref.exit359

bb.w:                                             ; preds = %bb.u
  %.not.i.i358 = icmp eq i32 %.val.i.i357, 0
  br i1 %.not.i.i358, label %lean_inc_ref.exit359, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bv = atomicrmw sub ptr %i.ac, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit359

lean_inc_ref.exit359:                             ; preds = %bb.v, %bb.w, %bb.x
  %i.bw = ptrtoint ptr %i.y to i64
  %i.bx = and i64 %i.bw, 1
  %.not.i344 = icmp eq i64 %i.bx, 0
  br i1 %.not.i344, label %bb.y, label %lean_inc.exit345

bb.y:                                             ; preds = %lean_inc_ref.exit359
  %.val.i.i360 = load i32, ptr %i.y, align 4, !tbaa !14 ; 3 uses
  %i.by = icmp sgt i32 %.val.i.i360, 0
  br i1 %i.by, label %bb.z, label %bb.aa, !prof !15

bb.z:                                             ; preds = %bb.y
  %i.bz = add nuw i32 %.val.i.i360, 1
  store i32 %i.bz, ptr %i.y, align 4, !tbaa !14
  br label %lean_inc.exit345

bb.aa:                                            ; preds = %bb.y
  %.not.i.i361 = icmp eq i32 %.val.i.i360, 0
  br i1 %.not.i.i361, label %lean_inc.exit345, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ca = atomicrmw sub ptr %i.y, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit345

lean_inc.exit345:                                 ; preds = %bb.ab, %bb.aa, %bb.z, %lean_inc_ref.exit359
  %i.cb = ptrtoint ptr %i.w to i64
  %i.cc = and i64 %i.cb, 1
  %.not.i342 = icmp eq i64 %i.cc, 0
  br i1 %.not.i342, label %bb.ac, label %lean_inc.exit343

bb.ac:                                            ; preds = %lean_inc.exit345
  %.val.i.i363 = load i32, ptr %i.w, align 4, !tbaa !14 ; 3 uses
  %i.cd = icmp sgt i32 %.val.i.i363, 0
  br i1 %i.cd, label %bb.ad, label %bb.ae, !prof !15

bb.ad:                                            ; preds = %bb.ac
  %i.ce = add nuw i32 %.val.i.i363, 1
  store i32 %i.ce, ptr %i.w, align 4, !tbaa !14
  br label %lean_inc.exit343

bb.ae:                                            ; preds = %bb.ac
  %.not.i.i364 = icmp eq i32 %.val.i.i363, 0
  br i1 %.not.i.i364, label %lean_inc.exit343, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cf = atomicrmw sub ptr %i.w, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit343

lean_inc.exit343:                                 ; preds = %bb.af, %bb.ae, %bb.ad, %lean_inc.exit345
  %i.cg = ptrtoint ptr %i.u to i64
  %i.ch = and i64 %i.cg, 1
  %.not.i340 = icmp eq i64 %i.ch, 0
  br i1 %.not.i340, label %bb.ag, label %lean_inc.exit341

bb.ag:                                            ; preds = %lean_inc.exit343
  %.val.i.i366 = load i32, ptr %i.u, align 4, !tbaa !14 ; 3 uses
  %i.ci = icmp sgt i32 %.val.i.i366, 0
  br i1 %i.ci, label %bb.ah, label %bb.ai, !prof !15

bb.ah:                                            ; preds = %bb.ag
  %i.cj = add nuw i32 %.val.i.i366, 1
  store i32 %i.cj, ptr %i.u, align 4, !tbaa !14
  br label %lean_inc.exit341

bb.ai:                                            ; preds = %bb.ag
  %.not.i.i367 = icmp eq i32 %.val.i.i366, 0
  br i1 %.not.i.i367, label %lean_inc.exit341, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ck = atomicrmw sub ptr %i.u, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit341

lean_inc.exit341:                                 ; preds = %bb.aj, %bb.ai, %bb.ah, %lean_inc.exit343
  %i.cl = ptrtoint ptr %i.s to i64
  %i.cm = and i64 %i.cl, 1
  %.not.i338 = icmp eq i64 %i.cm, 0
  br i1 %.not.i338, label %bb.ak, label %lean_inc.exit339

bb.ak:                                            ; preds = %lean_inc.exit341
  %.val.i.i369 = load i32, ptr %i.s, align 4, !tbaa !14 ; 3 uses
  %i.cn = icmp sgt i32 %.val.i.i369, 0
  br i1 %i.cn, label %bb.al, label %bb.am, !prof !15

bb.al:                                            ; preds = %bb.ak
  %i.co = add nuw i32 %.val.i.i369, 1
  store i32 %i.co, ptr %i.s, align 4, !tbaa !14
  br label %lean_inc.exit339

bb.am:                                            ; preds = %bb.ak
  %.not.i.i370 = icmp eq i32 %.val.i.i369, 0
  br i1 %.not.i.i370, label %lean_inc.exit339, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cp = atomicrmw sub ptr %i.s, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit339

lean_inc.exit339:                                 ; preds = %bb.an, %bb.am, %bb.al, %lean_inc.exit341
  %i.cq = ptrtoint ptr %i.q to i64
  %i.cr = and i64 %i.cq, 1
  %.not.i336 = icmp eq i64 %i.cr, 0
  br i1 %.not.i336, label %bb.ao, label %lean_inc.exit337

bb.ao:                                            ; preds = %lean_inc.exit339
  %.val.i.i372 = load i32, ptr %i.q, align 4, !tbaa !14 ; 3 uses
  %i.cs = icmp sgt i32 %.val.i.i372, 0
  br i1 %i.cs, label %bb.ap, label %bb.aq, !prof !15

bb.ap:                                            ; preds = %bb.ao
  %i.ct = add nuw i32 %.val.i.i372, 1
  store i32 %i.ct, ptr %i.q, align 4, !tbaa !14
  br label %lean_inc.exit337

bb.aq:                                            ; preds = %bb.ao
  %.not.i.i373 = icmp eq i32 %.val.i.i372, 0
  br i1 %.not.i.i373, label %lean_inc.exit337, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cu = atomicrmw sub ptr %i.q, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit337

lean_inc.exit337:                                 ; preds = %bb.ar, %bb.aq, %bb.ap, %lean_inc.exit339
  %i.cv = ptrtoint ptr %i.o to i64
  %i.cw = and i64 %i.cv, 1
  %.not.i334 = icmp eq i64 %i.cw, 0
  br i1 %.not.i334, label %bb.as, label %lean_inc.exit335

bb.as:                                            ; preds = %lean_inc.exit337
  %.val.i.i375 = load i32, ptr %i.o, align 4, !tbaa !14 ; 3 uses
  %i.cx = icmp sgt i32 %.val.i.i375, 0
  br i1 %i.cx, label %bb.at, label %bb.au, !prof !15

bb.at:                                            ; preds = %bb.as
  %i.cy = add nuw i32 %.val.i.i375, 1
  store i32 %i.cy, ptr %i.o, align 4, !tbaa !14
  br label %lean_inc.exit335

bb.au:                                            ; preds = %bb.as
  %.not.i.i376 = icmp eq i32 %.val.i.i375, 0
  br i1 %.not.i.i376, label %lean_inc.exit335, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cz = atomicrmw sub ptr %i.o, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit335

lean_inc.exit335:                                 ; preds = %bb.av, %bb.au, %bb.at, %lean_inc.exit337
  %i.da = ptrtoint ptr %i.m to i64
  %i.db = and i64 %i.da, 1
  %.not.i332 = icmp eq i64 %i.db, 0
  br i1 %.not.i332, label %bb.aw, label %lean_inc.exit333

bb.aw:                                            ; preds = %lean_inc.exit335
  %.val.i.i378 = load i32, ptr %i.m, align 4, !tbaa !14 ; 3 uses
  %i.dc = icmp sgt i32 %.val.i.i378, 0
  br i1 %i.dc, label %bb.ax, label %bb.ay, !prof !15

bb.ax:                                            ; preds = %bb.aw
  %i.dd = add nuw i32 %.val.i.i378, 1
  store i32 %i.dd, ptr %i.m, align 4, !tbaa !14
  br label %lean_inc.exit333

bb.ay:                                            ; preds = %bb.aw
  %.not.i.i379 = icmp eq i32 %.val.i.i378, 0
  br i1 %.not.i.i379, label %lean_inc.exit333, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.de = atomicrmw sub ptr %i.m, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit333

lean_inc.exit333:                                 ; preds = %bb.az, %bb.ay, %bb.ax, %lean_inc.exit335
  %i.df = ptrtoint ptr %i.k to i64
  %i.dg = and i64 %i.df, 1
  %.not.i330 = icmp eq i64 %i.dg, 0
  br i1 %.not.i330, label %bb.ba, label %lean_inc.exit331

bb.ba:                                            ; preds = %lean_inc.exit333
  %.val.i.i381 = load i32, ptr %i.k, align 4, !tbaa !14 ; 3 uses
  %i.dh = icmp sgt i32 %.val.i.i381, 0
  br i1 %i.dh, label %bb.bb, label %bb.bc, !prof !15

bb.bb:                                            ; preds = %bb.ba
  %i.di = add nuw i32 %.val.i.i381, 1
  store i32 %i.di, ptr %i.k, align 4, !tbaa !14
  br label %lean_inc.exit331

bb.bc:                                            ; preds = %bb.ba
  %.not.i.i382 = icmp eq i32 %.val.i.i381, 0
  br i1 %.not.i.i382, label %lean_inc.exit331, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.dj = atomicrmw sub ptr %i.k, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit331

lean_inc.exit331:                                 ; preds = %bb.bd, %bb.bc, %bb.bb, %lean_inc.exit333
  %i.dk = ptrtoint ptr %i.i to i64
  %i.dl = and i64 %i.dk, 1
  %.not.i328 = icmp eq i64 %i.dl, 0
  br i1 %.not.i328, label %bb.be, label %lean_inc.exit329

bb.be:                                            ; preds = %lean_inc.exit331
  %.val.i.i384 = load i32, ptr %i.i, align 4, !tbaa !14 ; 3 uses
  %i.dm = icmp sgt i32 %.val.i.i384, 0
  br i1 %i.dm, label %bb.bf, label %bb.bg, !prof !15

bb.bf:                                            ; preds = %bb.be
  %i.dn = add nuw i32 %.val.i.i384, 1
  store i32 %i.dn, ptr %i.i, align 4, !tbaa !14
  br label %lean_inc.exit329

bb.bg:                                            ; preds = %bb.be
  %.not.i.i385 = icmp eq i32 %.val.i.i384, 0
  br i1 %.not.i.i385, label %lean_inc.exit329, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.do = atomicrmw sub ptr %i.i, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit329

lean_inc.exit329:                                 ; preds = %bb.bh, %bb.bg, %bb.bf, %lean_inc.exit331
  %.val.i.i387 = load i32, ptr %i.e, align 4, !tbaa !14 ; 3 uses
  %i.dp = icmp sgt i32 %.val.i.i387, 0
  br i1 %i.dp, label %bb.bi, label %bb.bj, !prof !15

bb.bi:                                            ; preds = %lean_inc.exit329
  %i.dq = add nuw i32 %.val.i.i387, 1
  store i32 %i.dq, ptr %i.e, align 4, !tbaa !14
  br label %lean_inc_ref.exit389

bb.bj:                                            ; preds = %lean_inc.exit329
  %.not.i.i388 = icmp eq i32 %.val.i.i387, 0
  br i1 %.not.i.i388, label %lean_inc_ref.exit389, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.dr = atomicrmw sub ptr %i.e, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit389

lean_inc_ref.exit389:                             ; preds = %bb.bi, %bb.bj, %bb.bk
  %.val.i.i390 = load i32, ptr %i.c, align 4, !tbaa !14 ; 3 uses
  %i.ds = icmp sgt i32 %.val.i.i390, 0
  br i1 %i.ds, label %bb.bl, label %bb.bm, !prof !15

bb.bl:                                            ; preds = %lean_inc_ref.exit389
  %i.dt = add nuw i32 %.val.i.i390, 1
  store i32 %i.dt, ptr %i.c, align 4, !tbaa !14
  br label %lean_inc_ref.exit392

bb.bm:                                            ; preds = %lean_inc_ref.exit389
  %.not.i.i391 = icmp eq i32 %.val.i.i390, 0
  br i1 %.not.i.i391, label %lean_inc_ref.exit392, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.du = atomicrmw sub ptr %i.c, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit392

lean_inc_ref.exit392:                             ; preds = %bb.bl, %bb.bm, %bb.bn
  tail call void @lean_inc_heartbeat() #9
  %i.dv = tail call noalias ptr @mi_malloc_small(i64 noundef 128) #9 ; 37 uses
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %bb.bo, label %lean_alloc_ctor.exit

bb.bo:                                            ; preds = %lean_inc_ref.exit392
  tail call void @lean_internal_panic_out_of_memory() #10
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_inc_ref.exit392
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 120 ; 2 uses
  store i64 0, ptr %i.dy, align 8, !tbaa !10
  store i32 1, ptr %i.dv, align 8, !tbaa !14
  store i32 917632, ptr %i.dx, align 4
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 2 uses
  store ptr %i.c, ptr %i.dz, align 8, !tbaa !12
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  store ptr %i.e, ptr %i.ea, align 8, !tbaa !12
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  store ptr %.1254, ptr %i.eb, align 8, !tbaa !12
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  store ptr %i.i, ptr %i.ec, align 8, !tbaa !12
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dv, i64 40
  store ptr %i.bs, ptr %i.ed, align 8, !tbaa !12
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dv, i64 48
  store ptr %i.k, ptr %i.ee, align 8, !tbaa !12
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dv, i64 56
  store ptr %i.m, ptr %i.ef, align 8, !tbaa !12
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dv, i64 64
  store ptr %i.o, ptr %i.eg, align 8, !tbaa !12
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dv, i64 72
  store ptr %i.q, ptr %i.eh, align 8, !tbaa !12
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dv, i64 80
  store ptr %i.s, ptr %i.ei, align 8, !tbaa !12
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dv, i64 88
  store ptr %i.u, ptr %i.ej, align 8, !tbaa !12
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dv, i64 96
  store ptr %i.w, ptr %i.ek, align 8, !tbaa !12
  %i.el = getelementptr inbounds nuw i8, ptr %i.dv, i64 104
  store ptr %i.y, ptr %i.el, align 8, !tbaa !12
  %i.em = getelementptr inbounds nuw i8, ptr %i.dv, i64 112
  store ptr %i.ac, ptr %i.em, align 8, !tbaa !12
  store i8 %.0215, ptr %i.dy, align 8, !tbaa !18
  %i.en = getelementptr inbounds nuw i8, ptr %i.dv, i64 121
  store i8 %i.aa, ptr %i.en, align 1, !tbaa !18
  %i.eo = tail call ptr @l___private_Lean_Elab_InfoTree_Main_0__Lean_Elab_withSavedPartialInfoContext___at___00Lean_Elab_withSaveInfoContext___at___00__private_Lean_Elab_MutualDef_0__Lean_Elab_Term_elabMutualDef_finishElab_spec__18_spec__22___redArg(ptr noundef %0, ptr noundef nonnull @l_Lean_Elab_withSaveInfoContext___at___00__private_Lean_Elab_MutualDef_0__Lean_Elab_Term_elabMutualDef_finishElab_spec__18___redArg___closed__0_value, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %i.dv, ptr noundef %9)
  %.val.i = load i32, ptr %i.dv, align 8, !tbaa !14 ; 4 uses
  %i.ep = icmp eq i32 %.val.i, 1
  br i1 %i.ep, label %.preheader.i.preheader, label %bb.dt

.preheader.i.preheader:                           ; preds = %lean_alloc_ctor.exit
  %i.eq = load ptr, ptr %i.dz, align 8, !tbaa !12 ; 4 uses
  %i.er = ptrtoint ptr %i.eq to i64
  %i.es = and i64 %i.er, 1
  %.not.i.i394 = icmp eq i64 %i.es, 0
  br i1 %.not.i.i394, label %bb.bp, label %lean_dec.exit.i

bb.bp:                                            ; preds = %.preheader.i.preheader
  %i.et = load i32, ptr %i.eq, align 4, !tbaa !14 ; 3 uses
  %i.eu = icmp sgt i32 %i.et, 1
  br i1 %i.eu, label %bb.bq, label %bb.br, !prof !15

bb.bq:                                            ; preds = %bb.bp
  %i.ev = add nsw i32 %i.et, -1
  store i32 %i.ev, ptr %i.eq, align 4, !tbaa !14
  br label %lean_dec.exit.i

bb.br:                                            ; preds = %bb.bp
  %.not.i7.i = icmp eq i32 %i.et, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.eq) #9
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.bs, %bb.br, %bb.bq, %.preheader.i.preheader
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !12 ; 4 uses
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = and i64 %i.ey, 1
  %.not.i.i394.1 = icmp eq i64 %i.ez, 0
  br i1 %.not.i.i394.1, label %bb.bt, label %lean_dec.exit.i.1

bb.bt:                                            ; preds = %lean_dec.exit.i
  %i.fa = load i32, ptr %i.ex, align 4, !tbaa !14 ; 3 uses
  %i.fb = icmp sgt i32 %i.fa, 1
  br i1 %i.fb, label %bb.bw, label %bb.bu, !prof !15

bb.bu:                                            ; preds = %bb.bt
  %.not.i7.i.1 = icmp eq i32 %i.fa, 0
  br i1 %.not.i7.i.1, label %lean_dec.exit.i.1, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ex) #9
  br label %lean_dec.exit.i.1

bb.bw:                                            ; preds = %bb.bt
  %i.fc = add nsw i32 %i.fa, -1
  store i32 %i.fc, ptr %i.ex, align 4, !tbaa !14
  br label %lean_dec.exit.i.1

lean_dec.exit.i.1:                                ; preds = %bb.bw, %bb.bv, %bb.bu, %lean_dec.exit.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !12 ; 4 uses
  %i.ff = ptrtoint ptr %i.fe to i64
  %i.fg = and i64 %i.ff, 1
  %.not.i.i394.2 = icmp eq i64 %i.fg, 0
  br i1 %.not.i.i394.2, label %bb.bx, label %lean_dec.exit.i.2

bb.bx:                                            ; preds = %lean_dec.exit.i.1
  %i.fh = load i32, ptr %i.fe, align 4, !tbaa !14 ; 3 uses
  %i.fi = icmp sgt i32 %i.fh, 1
  br i1 %i.fi, label %bb.ca, label %bb.by, !prof !15

bb.by:                                            ; preds = %bb.bx
  %.not.i7.i.2 = icmp eq i32 %i.fh, 0
  br i1 %.not.i7.i.2, label %lean_dec.exit.i.2, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fe) #9
  br label %lean_dec.exit.i.2

bb.ca:                                            ; preds = %bb.bx
  %i.fj = add nsw i32 %i.fh, -1
  store i32 %i.fj, ptr %i.fe, align 4, !tbaa !14
  br label %lean_dec.exit.i.2

lean_dec.exit.i.2:                                ; preds = %bb.ca, %bb.bz, %bb.by, %lean_dec.exit.i.1
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !12 ; 4 uses
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = and i64 %i.fm, 1
  %.not.i.i394.3 = icmp eq i64 %i.fn, 0
  br i1 %.not.i.i394.3, label %bb.cb, label %lean_dec.exit.i.3

bb.cb:                                            ; preds = %lean_dec.exit.i.2
  %i.fo = load i32, ptr %i.fl, align 4, !tbaa !14 ; 3 uses
  %i.fp = icmp sgt i32 %i.fo, 1
  br i1 %i.fp, label %bb.ce, label %bb.cc, !prof !15

bb.cc:                                            ; preds = %bb.cb
  %.not.i7.i.3 = icmp eq i32 %i.fo, 0
  br i1 %.not.i7.i.3, label %lean_dec.exit.i.3, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fl) #9
  br label %lean_dec.exit.i.3

bb.ce:                                            ; preds = %bb.cb
  %i.fq = add nsw i32 %i.fo, -1
  store i32 %i.fq, ptr %i.fl, align 4, !tbaa !14
  br label %lean_dec.exit.i.3

lean_dec.exit.i.3:                                ; preds = %bb.ce, %bb.cd, %bb.cc, %lean_dec.exit.i.2
  %i.fr = getelementptr inbounds nuw i8, ptr %i.dv, i64 40
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !12 ; 4 uses
  %i.ft = ptrtoint ptr %i.fs to i64
  %i.fu = and i64 %i.ft, 1
  %.not.i.i394.4 = icmp eq i64 %i.fu, 0
  br i1 %.not.i.i394.4, label %bb.cf, label %lean_dec.exit.i.4

bb.cf:                                            ; preds = %lean_dec.exit.i.3
  %i.fv = load i32, ptr %i.fs, align 4, !tbaa !14 ; 3 uses
  %i.fw = icmp sgt i32 %i.fv, 1
  br i1 %i.fw, label %bb.ci, label %bb.cg, !prof !15

bb.cg:                                            ; preds = %bb.cf
  %.not.i7.i.4 = icmp eq i32 %i.fv, 0
  br i1 %.not.i7.i.4, label %lean_dec.exit.i.4, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fs) #9
  br label %lean_dec.exit.i.4

bb.ci:                                            ; preds = %bb.cf
  %i.fx = add nsw i32 %i.fv, -1
  store i32 %i.fx, ptr %i.fs, align 4, !tbaa !14
  br label %lean_dec.exit.i.4

lean_dec.exit.i.4:                                ; preds = %bb.ci, %bb.ch, %bb.cg, %lean_dec.exit.i.3
  %i.fy = getelementptr inbounds nuw i8, ptr %i.dv, i64 48
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !12 ; 4 uses
  %i.ga = ptrtoint ptr %i.fz to i64
  %i.gb = and i64 %i.ga, 1
  %.not.i.i394.5 = icmp eq i64 %i.gb, 0
  br i1 %.not.i.i394.5, label %bb.cj, label %lean_dec.exit.i.5

bb.cj:                                            ; preds = %lean_dec.exit.i.4
  %i.gc = load i32, ptr %i.fz, align 4, !tbaa !14 ; 3 uses
  %i.gd = icmp sgt i32 %i.gc, 1
  br i1 %i.gd, label %bb.cm, label %bb.ck, !prof !15

bb.ck:                                            ; preds = %bb.cj
  %.not.i7.i.5 = icmp eq i32 %i.gc, 0
  br i1 %.not.i7.i.5, label %lean_dec.exit.i.5, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fz) #9
  br label %lean_dec.exit.i.5

bb.cm:                                            ; preds = %bb.cj
  %i.ge = add nsw i32 %i.gc, -1
  store i32 %i.ge, ptr %i.fz, align 4, !tbaa !14
  br label %lean_dec.exit.i.5

lean_dec.exit.i.5:                                ; preds = %bb.cm, %bb.cl, %bb.ck, %lean_dec.exit.i.4
  %i.gf = getelementptr inbounds nuw i8, ptr %i.dv, i64 56
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !12 ; 4 uses
  %i.gh = ptrtoint ptr %i.gg to i64
  %i.gi = and i64 %i.gh, 1
  %.not.i.i394.6 = icmp eq i64 %i.gi, 0
  br i1 %.not.i.i394.6, label %bb.cn, label %lean_dec.exit.i.6

bb.cn:                                            ; preds = %lean_dec.exit.i.5
  %i.gj = load i32, ptr %i.gg, align 4, !tbaa !14 ; 3 uses
  %i.gk = icmp sgt i32 %i.gj, 1
  br i1 %i.gk, label %bb.cq, label %bb.co, !prof !15

bb.co:                                            ; preds = %bb.cn
  %.not.i7.i.6 = icmp eq i32 %i.gj, 0
  br i1 %.not.i7.i.6, label %lean_dec.exit.i.6, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gg) #9
  br label %lean_dec.exit.i.6

bb.cq:                                            ; preds = %bb.cn
  %i.gl = add nsw i32 %i.gj, -1
  store i32 %i.gl, ptr %i.gg, align 4, !tbaa !14
  br label %lean_dec.exit.i.6

lean_dec.exit.i.6:                                ; preds = %bb.cq, %bb.cp, %bb.co, %lean_dec.exit.i.5
  %i.gm = getelementptr inbounds nuw i8, ptr %i.dv, i64 64
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !12 ; 4 uses
  %i.go = ptrtoint ptr %i.gn to i64
  %i.gp = and i64 %i.go, 1
  %.not.i.i394.7 = icmp eq i64 %i.gp, 0
  br i1 %.not.i.i394.7, label %bb.cr, label %lean_dec.exit.i.7

bb.cr:                                            ; preds = %lean_dec.exit.i.6
  %i.gq = load i32, ptr %i.gn, align 4, !tbaa !14 ; 3 uses
  %i.gr = icmp sgt i32 %i.gq, 1
  br i1 %i.gr, label %bb.cu, label %bb.cs, !prof !15

bb.cs:                                            ; preds = %bb.cr
  %.not.i7.i.7 = icmp eq i32 %i.gq, 0
  br i1 %.not.i7.i.7, label %lean_dec.exit.i.7, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gn) #9
  br label %lean_dec.exit.i.7

bb.cu:                                            ; preds = %bb.cr
  %i.gs = add nsw i32 %i.gq, -1
  store i32 %i.gs, ptr %i.gn, align 4, !tbaa !14
  br label %lean_dec.exit.i.7

lean_dec.exit.i.7:                                ; preds = %bb.cu, %bb.ct, %bb.cs, %lean_dec.exit.i.6
  %i.gt = getelementptr inbounds nuw i8, ptr %i.dv, i64 72
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !12 ; 4 uses
  %i.gv = ptrtoint ptr %i.gu to i64
  %i.gw = and i64 %i.gv, 1
  %.not.i.i394.8 = icmp eq i64 %i.gw, 0
  br i1 %.not.i.i394.8, label %bb.cv, label %lean_dec.exit.i.8

bb.cv:                                            ; preds = %lean_dec.exit.i.7
  %i.gx = load i32, ptr %i.gu, align 4, !tbaa !14 ; 3 uses
  %i.gy = icmp sgt i32 %i.gx, 1
  br i1 %i.gy, label %bb.cy, label %bb.cw, !prof !15

bb.cw:                                            ; preds = %bb.cv
  %.not.i7.i.8 = icmp eq i32 %i.gx, 0
  br i1 %.not.i7.i.8, label %lean_dec.exit.i.8, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gu) #9
  br label %lean_dec.exit.i.8

bb.cy:                                            ; preds = %bb.cv
  %i.gz = add nsw i32 %i.gx, -1
  store i32 %i.gz, ptr %i.gu, align 4, !tbaa !14
  br label %lean_dec.exit.i.8

lean_dec.exit.i.8:                                ; preds = %bb.cy, %bb.cx, %bb.cw, %lean_dec.exit.i.7
  %i.ha = getelementptr inbounds nuw i8, ptr %i.dv, i64 80
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !12 ; 4 uses
  %i.hc = ptrtoint ptr %i.hb to i64
  %i.hd = and i64 %i.hc, 1
  %.not.i.i394.9 = icmp eq i64 %i.hd, 0
  br i1 %.not.i.i394.9, label %bb.cz, label %lean_dec.exit.i.9

bb.cz:                                            ; preds = %lean_dec.exit.i.8
  %i.he = load i32, ptr %i.hb, align 4, !tbaa !14 ; 3 uses
  %i.hf = icmp sgt i32 %i.he, 1
  br i1 %i.hf, label %bb.dc, label %bb.da, !prof !15

bb.da:                                            ; preds = %bb.cz
  %.not.i7.i.9 = icmp eq i32 %i.he, 0
  br i1 %.not.i7.i.9, label %lean_dec.exit.i.9, label %bb.db

bb.db:                                            ; preds = %bb.da
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.hb) #9
  br label %lean_dec.exit.i.9

bb.dc:                                            ; preds = %bb.cz
  %i.hg = add nsw i32 %i.he, -1
  store i32 %i.hg, ptr %i.hb, align 4, !tbaa !14
  br label %lean_dec.exit.i.9

lean_dec.exit.i.9:                                ; preds = %bb.dc, %bb.db, %bb.da, %lean_dec.exit.i.8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.dv, i64 88
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !12 ; 4 uses
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = and i64 %i.hj, 1
  %.not.i.i394.10 = icmp eq i64 %i.hk, 0
  br i1 %.not.i.i394.10, label %bb.dd, label %lean_dec.exit.i.10

bb.dd:                                            ; preds = %lean_dec.exit.i.9
  %i.hl = load i32, ptr %i.hi, align 4, !tbaa !14 ; 3 uses
  %i.hm = icmp sgt i32 %i.hl, 1
  br i1 %i.hm, label %bb.dg, label %bb.de, !prof !15

bb.de:                                            ; preds = %bb.dd
  %.not.i7.i.10 = icmp eq i32 %i.hl, 0
  br i1 %.not.i7.i.10, label %lean_dec.exit.i.10, label %bb.df

bb.df:                                            ; preds = %bb.de
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.hi) #9
  br label %lean_dec.exit.i.10

bb.dg:                                            ; preds = %bb.dd
  %i.hn = add nsw i32 %i.hl, -1
  store i32 %i.hn, ptr %i.hi, align 4, !tbaa !14
  br label %lean_dec.exit.i.10

lean_dec.exit.i.10:                               ; preds = %bb.dg, %bb.df, %bb.de, %lean_dec.exit.i.9
  %i.ho = getelementptr inbounds nuw i8, ptr %i.dv, i64 96
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !12 ; 4 uses
  %i.hq = ptrtoint ptr %i.hp to i64
  %i.hr = and i64 %i.hq, 1
  %.not.i.i394.11 = icmp eq i64 %i.hr, 0
  br i1 %.not.i.i394.11, label %bb.dh, label %lean_dec.exit.i.11

bb.dh:                                            ; preds = %lean_dec.exit.i.10
  %i.hs = load i32, ptr %i.hp, align 4, !tbaa !14 ; 3 uses
  %i.ht = icmp sgt i32 %i.hs, 1
  br i1 %i.ht, label %bb.dk, label %bb.di, !prof !15

bb.di:                                            ; preds = %bb.dh
  %.not.i7.i.11 = icmp eq i32 %i.hs, 0
  br i1 %.not.i7.i.11, label %lean_dec.exit.i.11, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.hp) #9
  br label %lean_dec.exit.i.11

bb.dk:                                            ; preds = %bb.dh
  %i.hu = add nsw i32 %i.hs, -1
  store i32 %i.hu, ptr %i.hp, align 4, !tbaa !14
  br label %lean_dec.exit.i.11

lean_dec.exit.i.11:                               ; preds = %bb.dk, %bb.dj, %bb.di, %lean_dec.exit.i.10
  %i.hv = getelementptr inbounds nuw i8, ptr %i.dv, i64 104
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !12 ; 4 uses
  %i.hx = ptrtoint ptr %i.hw to i64
  %i.hy = and i64 %i.hx, 1
  %.not.i.i394.12 = icmp eq i64 %i.hy, 0
  br i1 %.not.i.i394.12, label %bb.dl, label %lean_dec.exit.i.12

bb.dl:                                            ; preds = %lean_dec.exit.i.11
  %i.hz = load i32, ptr %i.hw, align 4, !tbaa !14 ; 3 uses
  %i.ia = icmp sgt i32 %i.hz, 1
  br i1 %i.ia, label %bb.do, label %bb.dm, !prof !15

bb.dm:                                            ; preds = %bb.dl
  %.not.i7.i.12 = icmp eq i32 %i.hz, 0
  br i1 %.not.i7.i.12, label %lean_dec.exit.i.12, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.hw) #9
  br label %lean_dec.exit.i.12

bb.do:                                            ; preds = %bb.dl
  %i.ib = add nsw i32 %i.hz, -1
  store i32 %i.ib, ptr %i.hw, align 4, !tbaa !14
  br label %lean_dec.exit.i.12

lean_dec.exit.i.12:                               ; preds = %bb.do, %bb.dn, %bb.dm, %lean_dec.exit.i.11
  %i.ic = getelementptr inbounds nuw i8, ptr %i.dv, i64 112
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !12 ; 4 uses
  %i.ie = ptrtoint ptr %i.id to i64
  %i.if = and i64 %i.ie, 1
  %.not.i.i394.13 = icmp eq i64 %i.if, 0
  br i1 %.not.i.i394.13, label %bb.dp, label %lean_dec.exit.i.13

bb.dp:                                            ; preds = %lean_dec.exit.i.12
  %i.ig = load i32, ptr %i.id, align 4, !tbaa !14 ; 3 uses
  %i.ih = icmp sgt i32 %i.ig, 1
  br i1 %i.ih, label %bb.ds, label %bb.dq, !prof !15

bb.dq:                                            ; preds = %bb.dp
  %.not.i7.i.13 = icmp eq i32 %i.ig, 0
  br i1 %.not.i7.i.13, label %lean_dec.exit.i.13, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.id) #9
  br label %lean_dec.exit.i.13

bb.ds:                                            ; preds = %bb.dp
  %i.ii = add nsw i32 %i.ig, -1
  store i32 %i.ii, ptr %i.id, align 4, !tbaa !14
  br label %lean_dec.exit.i.13

lean_dec.exit.i.13:                               ; preds = %bb.ds, %bb.dr, %bb.dq, %lean_dec.exit.i.12
  tail call void @lean_free_object(ptr noundef nonnull %i.dv) #9
  br label %lean_dec_ref_known.exit

bb.dt:                                            ; preds = %lean_alloc_ctor.exit
  %i.ij = icmp sgt i32 %.val.i, 1
  br i1 %i.ij, label %bb.du, label %bb.dv, !prof !15

bb.du:                                            ; preds = %bb.dt
  %i.ik = add nsw i32 %.val.i, -1
  store i32 %i.ik, ptr %i.dv, align 8, !tbaa !14
  br label %lean_dec_ref_known.exit

bb.dv:                                            ; preds = %bb.dt
  %.not.i8.i = icmp eq i32 %.val.i, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dv) #9
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i.13, %bb.du, %bb.dv, %bb.dw
  ret ptr %i.eo

10:                                               ; preds = %lean_dec_ref.exit312
  br i1 %i.mk, label %.thread445, label %bb.u

.thread445:                                       ; preds = %11, %10
  %i.il = tail call ptr @lean_st_ref_take(ptr noundef %9) #9 ; 17 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !12 ; 5 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !12 ; 5 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.il, i64 24
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !12 ; 5 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.il, i64 32
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !12 ; 5 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.il, i64 40
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !12 ; 5 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.il, i64 56
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !12 ; 5 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.il, i64 64
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !12 ; 5 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.il, i64 72
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !12 ; 5 uses
  %.val = load i32, ptr %i.il, align 8, !tbaa !14
  %i.jc = icmp eq i32 %.val, 1                    ; 2 uses
  br i1 %i.jc, label %bb.dx, label %bb.ec

bb.dx:                                            ; preds = %.thread445
  %i.jd = getelementptr inbounds nuw i8, ptr %i.il, i64 48
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !12 ; 4 uses
  %i.jf = ptrtoint ptr %i.je to i64
  %i.jg = and i64 %i.jf, 1
  %.not.i304 = icmp eq i64 %i.jg, 0
  br i1 %.not.i304, label %bb.dy, label %lean_dec.exit305

bb.dy:                                            ; preds = %bb.dx
  %i.jh = load i32, ptr %i.je, align 4, !tbaa !14 ; 3 uses
  %i.ji = icmp sgt i32 %i.jh, 1
  br i1 %i.ji, label %bb.dz, label %bb.ea, !prof !15

bb.dz:                                            ; preds = %bb.dy
  %i.jj = add nsw i32 %i.jh, -1
  store i32 %i.jj, ptr %i.je, align 4, !tbaa !14
  br label %lean_dec.exit305

bb.ea:                                            ; preds = %bb.dy
  %.not.i306 = icmp eq i32 %i.jh, 0
  br i1 %.not.i306, label %lean_dec.exit305, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.je) #9
  br label %lean_dec.exit305

bb.ec:                                            ; preds = %.thread445
  %i.jk = ptrtoint ptr %i.jb to i64
  %i.jl = and i64 %i.jk, 1
  %.not.i326 = icmp eq i64 %i.jl, 0
  br i1 %.not.i326, label %bb.ed, label %lean_inc.exit327

bb.ed:                                            ; preds = %bb.ec
  %.val.i.i395 = load i32, ptr %i.jb, align 4, !tbaa !14 ; 3 uses
  %i.jm = icmp sgt i32 %.val.i.i395, 0
  br i1 %i.jm, label %bb.ee, label %bb.ef, !prof !15

bb.ee:                                            ; preds = %bb.ed
  %i.jn = add nuw i32 %.val.i.i395, 1
  store i32 %i.jn, ptr %i.jb, align 4, !tbaa !14
  br label %lean_inc.exit327

bb.ef:                                            ; preds = %bb.ed
  %.not.i.i396 = icmp eq i32 %.val.i.i395, 0
  br i1 %.not.i.i396, label %lean_inc.exit327, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.jo = atomicrmw sub ptr %i.jb, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit327

lean_inc.exit327:                                 ; preds = %bb.eg, %bb.ef, %bb.ee, %bb.ec
  %i.jp = ptrtoint ptr %i.iz to i64
  %i.jq = and i64 %i.jp, 1
  %.not.i324 = icmp eq i64 %i.jq, 0
  br i1 %.not.i324, label %bb.eh, label %lean_inc.exit325

bb.eh:                                            ; preds = %lean_inc.exit327
  %.val.i.i398 = load i32, ptr %i.iz, align 4, !tbaa !14 ; 3 uses
  %i.jr = icmp sgt i32 %.val.i.i398, 0
  br i1 %i.jr, label %bb.ei, label %bb.ej, !prof !15

bb.ei:                                            ; preds = %bb.eh
  %i.js = add nuw i32 %.val.i.i398, 1
  store i32 %i.js, ptr %i.iz, align 4, !tbaa !14
  br label %lean_inc.exit325

bb.ej:                                            ; preds = %bb.eh
  %.not.i.i399 = icmp eq i32 %.val.i.i398, 0
  br i1 %.not.i.i399, label %lean_inc.exit325, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.jt = atomicrmw sub ptr %i.iz, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit325

lean_inc.exit325:                                 ; preds = %bb.ek, %bb.ej, %bb.ei, %lean_inc.exit327
  %i.ju = ptrtoint ptr %i.ix to i64
  %i.jv = and i64 %i.ju, 1
  %.not.i322 = icmp eq i64 %i.jv, 0
  br i1 %.not.i322, label %bb.el, label %lean_inc.exit323

bb.el:                                            ; preds = %lean_inc.exit325
  %.val.i.i401 = load i32, ptr %i.ix, align 4, !tbaa !14 ; 3 uses
  %i.jw = icmp sgt i32 %.val.i.i401, 0
  br i1 %i.jw, label %bb.em, label %bb.en, !prof !15

bb.em:                                            ; preds = %bb.el
  %i.jx = add nuw i32 %.val.i.i401, 1
  store i32 %i.jx, ptr %i.ix, align 4, !tbaa !14
  br label %lean_inc.exit323

bb.en:                                            ; preds = %bb.el
  %.not.i.i402 = icmp eq i32 %.val.i.i401, 0
  br i1 %.not.i.i402, label %lean_inc.exit323, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.jy = atomicrmw sub ptr %i.ix, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit323

lean_inc.exit323:                                 ; preds = %bb.eo, %bb.en, %bb.em, %lean_inc.exit325
  %i.jz = ptrtoint ptr %i.iv to i64
  %i.ka = and i64 %i.jz, 1
  %.not.i320 = icmp eq i64 %i.ka, 0
  br i1 %.not.i320, label %bb.ep, label %lean_inc.exit321

bb.ep:                                            ; preds = %lean_inc.exit323
  %.val.i.i404 = load i32, ptr %i.iv, align 4, !tbaa !14 ; 3 uses
  %i.kb = icmp sgt i32 %.val.i.i404, 0
  br i1 %i.kb, label %bb.eq, label %bb.er, !prof !15

bb.eq:                                            ; preds = %bb.ep
  %i.kc = add nuw i32 %.val.i.i404, 1
  store i32 %i.kc, ptr %i.iv, align 4, !tbaa !14
  br label %lean_inc.exit321

bb.er:                                            ; preds = %bb.ep
  %.not.i.i405 = icmp eq i32 %.val.i.i404, 0
  br i1 %.not.i.i405, label %lean_inc.exit321, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.kd = atomicrmw sub ptr %i.iv, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit321

lean_inc.exit321:                                 ; preds = %bb.es, %bb.er, %bb.eq, %lean_inc.exit323
  %i.ke = ptrtoint ptr %i.it to i64
  %i.kf = and i64 %i.ke, 1
  %.not.i318 = icmp eq i64 %i.kf, 0
  br i1 %.not.i318, label %bb.et, label %lean_inc.exit319

bb.et:                                            ; preds = %lean_inc.exit321
  %.val.i.i407 = load i32, ptr %i.it, align 4, !tbaa !14 ; 3 uses
  %i.kg = icmp sgt i32 %.val.i.i407, 0
  br i1 %i.kg, label %bb.eu, label %bb.ev, !prof !15

bb.eu:                                            ; preds = %bb.et
  %i.kh = add nuw i32 %.val.i.i407, 1
  store i32 %i.kh, ptr %i.it, align 4, !tbaa !14
  br label %lean_inc.exit319

bb.ev:                                            ; preds = %bb.et
  %.not.i.i408 = icmp eq i32 %.val.i.i407, 0
  br i1 %.not.i.i408, label %lean_inc.exit319, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.ki = atomicrmw sub ptr %i.it, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit319

lean_inc.exit319:                                 ; preds = %bb.ew, %bb.ev, %bb.eu, %lean_inc.exit321
  %i.kj = ptrtoint ptr %i.ir to i64
  %i.kk = and i64 %i.kj, 1
  %.not.i316 = icmp eq i64 %i.kk, 0
  br i1 %.not.i316, label %bb.ex, label %lean_inc.exit317

bb.ex:                                            ; preds = %lean_inc.exit319
  %.val.i.i410 = load i32, ptr %i.ir, align 4, !tbaa !14 ; 3 uses
  %i.kl = icmp sgt i32 %.val.i.i410, 0
  br i1 %i.kl, label %bb.ey, label %bb.ez, !prof !15

bb.ey:                                            ; preds = %bb.ex
  %i.km = add nuw i32 %.val.i.i410, 1
  store i32 %i.km, ptr %i.ir, align 4, !tbaa !14
  br label %lean_inc.exit317

bb.ez:                                            ; preds = %bb.ex
  %.not.i.i411 = icmp eq i32 %.val.i.i410, 0
  br i1 %.not.i.i411, label %lean_inc.exit317, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.kn = atomicrmw sub ptr %i.ir, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit317

lean_inc.exit317:                                 ; preds = %bb.fa, %bb.ez, %bb.ey, %lean_inc.exit319
  %i.ko = ptrtoint ptr %i.ip to i64
  %i.kp = and i64 %i.ko, 1
  %.not.i314 = icmp eq i64 %i.kp, 0
  br i1 %.not.i314, label %bb.fb, label %lean_inc.exit315

bb.fb:                                            ; preds = %lean_inc.exit317
  %.val.i.i413 = load i32, ptr %i.ip, align 4, !tbaa !14 ; 3 uses
  %i.kq = icmp sgt i32 %.val.i.i413, 0
  br i1 %i.kq, label %bb.fc, label %bb.fd, !prof !15

bb.fc:                                            ; preds = %bb.fb
  %i.kr = add nuw i32 %.val.i.i413, 1
  store i32 %i.kr, ptr %i.ip, align 4, !tbaa !14
  br label %lean_inc.exit315

bb.fd:                                            ; preds = %bb.fb
  %.not.i.i414 = icmp eq i32 %.val.i.i413, 0
  br i1 %.not.i.i414, label %lean_inc.exit315, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.ks = atomicrmw sub ptr %i.ip, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit315

lean_inc.exit315:                                 ; preds = %bb.fe, %bb.fd, %bb.fc, %lean_inc.exit317
  %i.kt = ptrtoint ptr %i.in to i64
  %i.ku = and i64 %i.kt, 1
  %.not.i313 = icmp eq i64 %i.ku, 0
  br i1 %.not.i313, label %bb.ff, label %lean_inc.exit

bb.ff:                                            ; preds = %lean_inc.exit315
  %.val.i.i416 = load i32, ptr %i.in, align 4, !tbaa !14 ; 3 uses
  %i.kv = icmp sgt i32 %.val.i.i416, 0
  br i1 %i.kv, label %bb.fg, label %bb.fh, !prof !15

bb.fg:                                            ; preds = %bb.ff
  %i.kw = add nuw i32 %.val.i.i416, 1
  store i32 %i.kw, ptr %i.in, align 4, !tbaa !14
  br label %lean_inc.exit

bb.fh:                                            ; preds = %bb.ff
  %.not.i.i417 = icmp eq i32 %.val.i.i416, 0
  br i1 %.not.i.i417, label %lean_inc.exit, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.kx = atomicrmw sub ptr %i.in, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %lean_inc.exit315, %bb.fg, %bb.fh, %bb.fi
  %i.ky = load i32, ptr %i.il, align 8, !tbaa !14 ; 3 uses
  %i.kz = icmp sgt i32 %i.ky, 1
  br i1 %i.kz, label %bb.fj, label %bb.fk, !prof !15

bb.fj:                                            ; preds = %lean_inc.exit
  %i.la = add nsw i32 %i.ky, -1
  store i32 %i.la, ptr %i.il, align 8, !tbaa !14
  br label %lean_dec.exit305

bb.fk:                                            ; preds = %lean_inc.exit
  %.not.i307 = icmp eq i32 %i.ky, 0
  br i1 %.not.i307, label %lean_dec.exit305, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.il) #9
  br label %lean_dec.exit305

lean_dec.exit305:                                 ; preds = %bb.fj, %bb.fk, %bb.fl, %bb.dx, %bb.dz, %bb.ea, %bb.eb
  %.0222 = phi ptr [ %i.il, %bb.dx ], [ %i.il, %bb.eb ], [ %i.il, %bb.ea ], [ %i.il, %bb.dz ], [ inttoptr (i64 1 to ptr), %bb.fl ], [ inttoptr (i64 1 to ptr), %bb.fk ], [ inttoptr (i64 1 to ptr), %bb.fj ] ; 3 uses
  %i.lb = tail call ptr @l_Lean_Kernel_enableDiag(ptr noundef %i.in, i8 noundef zeroext %i.me) #9 ; 2 uses
  %i.lc = load atomic i32, ptr @l___private_Lean_ExtraModUses_0__Lean_recordExtraModUseCore___at___00Lean_recordExtraModUseFromDecl___at___00Lean_Elab_liftMacroM___at___00__private_Lean_Elab_MutualDef_0__Lean_Elab_Term_declValToTerm_spec__1_spec__2_spec__3___redArg___closed__5_once seq_cst, align 4, !tbaa !17
  %i.ld = icmp eq i32 %i.lc, 1
  br i1 %i.ld, label %bb.fm, label %bb.fn, !prof !15

bb.fm:                                            ; preds = %lean_dec.exit305
  %i.le = load ptr, ptr @l___private_Lean_ExtraModUses_0__Lean_recordExtraModUseCore___at___00Lean_recordExtraModUseFromDecl___at___00Lean_Elab_liftMacroM___at___00__private_Lean_Elab_MutualDef_0__Lean_Elab_Term_declValToTerm_spec__1_spec__2_spec__3___redArg___closed__5, align 8, !tbaa !12
  br label %lean_obj_once.exit

bb.fn:                                            ; preds = %lean_dec.exit305
  %i.lf = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_ExtraModUses_0__Lean_recordExtraModUseCore___at___00Lean_recordExtraModUseFromDecl___at___00Lean_Elab_liftMacroM___at___00__private_Lean_Elab_MutualDef_0__Lean_Elab_Term_declValToTerm_spec__1_spec__2_spec__3___redArg___closed__5, ptr noundef nonnull @l___private_Lean_ExtraModUses_0__Lean_recordExtraModUseCore___at___00Lean_recordExtraModUseFromDecl___at___00Lean_Elab_liftMacroM___at___00__private_Lean_Elab_MutualDef_0__Lean_Elab_Term_declValToTerm_spec__1_spec__2_spec__3___redArg___closed__5_once, ptr noundef nonnull @_init_l___private_Lean_ExtraModUses_0__Lean_recordExtraModUseCore___at___00Lean_recordExtraModUseFromDecl___at___00Lean_Elab_liftMacroM___at___00__private_Lean_Elab_MutualDef_0__Lean_Elab_Term_declValToTerm_spec__1_spec__2_spec__3___redArg___closed__5) #9
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.fm, %bb.fn
  %.0.i419 = phi ptr [ %i.le, %bb.fm ], [ %i.lf, %bb.fn ] ; 2 uses
  br i1 %i.jc, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %lean_obj_once.exit
  %i.lg = getelementptr inbounds nuw i8, ptr %.0222, i64 8
  %i.lh = getelementptr inbounds nuw i8, ptr %.0222, i64 48
  store ptr %.0.i419, ptr %i.lh, align 8, !tbaa !12
  store ptr %i.lb, ptr %i.lg, align 8, !tbaa !12
  br label %bb.fr

bb.fp:                                            ; preds = %lean_obj_once.exit
  tail call void @lean_inc_heartbeat() #9
  %i.li = tail call noalias ptr @mi_malloc_small(i64 noundef 80) #9 ; 13 uses
  %i.lj = icmp eq ptr %i.li, null
  br i1 %i.lj, label %bb.fq, label %lean_alloc_ctor.exit420

bb.fq:                                            ; preds = %bb.fp
  tail call void @lean_internal_panic_out_of_memory() #10
  unreachable

lean_alloc_ctor.exit420:                          ; preds = %bb.fp
  %i.lk = getelementptr inbounds nuw i8, ptr %i.li, i64 4
  store i32 1, ptr %i.li, align 4, !tbaa !14
  store i32 589904, ptr %i.lk, align 4
  %i.ll = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  store ptr %i.lb, ptr %i.ll, align 8, !tbaa !12
  %i.lm = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  store ptr %i.ip, ptr %i.lm, align 8, !tbaa !12
  %i.ln = getelementptr inbounds nuw i8, ptr %i.li, i64 24
  store ptr %i.ir, ptr %i.ln, align 8, !tbaa !12
  %i.lo = getelementptr inbounds nuw i8, ptr %i.li, i64 32
  store ptr %i.it, ptr %i.lo, align 8, !tbaa !12
  %i.lp = getelementptr inbounds nuw i8, ptr %i.li, i64 40
  store ptr %i.iv, ptr %i.lp, align 8, !tbaa !12
  %i.lq = getelementptr inbounds nuw i8, ptr %i.li, i64 48
  store ptr %.0.i419, ptr %i.lq, align 8, !tbaa !12
  %i.lr = getelementptr inbounds nuw i8, ptr %i.li, i64 56
  store ptr %i.ix, ptr %i.lr, align 8, !tbaa !12
  %i.ls = getelementptr inbounds nuw i8, ptr %i.li, i64 64
  store ptr %i.iz, ptr %i.ls, align 8, !tbaa !12
  %i.lt = getelementptr inbounds nuw i8, ptr %i.li, i64 72
  store ptr %i.jb, ptr %i.lt, align 8, !tbaa !12
  br label %bb.fr

bb.fr:                                            ; preds = %lean_alloc_ctor.exit420, %bb.fo
  %.0216 = phi ptr [ %.0222, %bb.fo ], [ %i.li, %lean_alloc_ctor.exit420 ]
  %i.lu = tail call ptr @lean_st_ref_set(ptr noundef %9, ptr noundef nonnull %.0216) #9 ; 0 uses
  br label %bb.u

lean_inc_ref.exit:                                ; preds = %bb.j, %bb.i, %bb.h, %bb.e, %bb.d, %bb.c, %l_Lean_Option_set___at___00__private_Lean_Elab_MutualDef_0__Lean_Elab_Term_elabMutualDef_finishElab_spec__19.exit
  %.1254 = phi ptr [ %i.bq, %l_Lean_Option_set___at___00__private_Lean_Elab_MutualDef_0__Lean_Elab_Term_elabMutualDef_finishElab_spec__19.exit ], [ %i.g, %bb.e ], [ %i.g, %bb.c ], [ %i.g, %bb.d ], [ %i.g, %bb.h ], [ %i.g, %bb.i ], [ %i.g, %bb.j ] ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !12 ; 7 uses
  %.val.i.i421 = load i32, ptr %i.lw, align 4, !tbaa !14 ; 3 uses
  %i.lx = icmp sgt i32 %.val.i.i421, 0
  br i1 %i.lx, label %bb.fs, label %bb.ft, !prof !15

bb.fs:                                            ; preds = %lean_inc_ref.exit
  %i.ly = add nuw i32 %.val.i.i421, 1
  store i32 %i.ly, ptr %i.lw, align 4, !tbaa !14
  br label %lean_inc_ref.exit423

bb.ft:                                            ; preds = %lean_inc_ref.exit
  %.not.i.i422 = icmp eq i32 %.val.i.i421, 0
  br i1 %.not.i.i422, label %lean_inc_ref.exit423, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.lz = atomicrmw sub ptr %i.lw, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit423

lean_inc_ref.exit423:                             ; preds = %bb.fu, %bb.ft, %bb.fs
  %i.ma = load i32, ptr %i.a, align 8, !tbaa !14  ; 3 uses
  %i.mb = icmp sgt i32 %i.ma, 1
  br i1 %i.mb, label %bb.fv, label %bb.fw, !prof !15

bb.fv:                                            ; preds = %lean_inc_ref.exit423
  %i.mc = add nsw i32 %i.ma, -1
  store i32 %i.mc, ptr %i.a, align 8, !tbaa !14
  br label %lean_dec.exit

bb.fw:                                            ; preds = %lean_inc_ref.exit423
  %.not.i309 = icmp eq i32 %i.ma, 0
  br i1 %.not.i309, label %lean_dec.exit, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #9
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.fx, %bb.fw, %bb.fv
  %i.md = load ptr, ptr @l_Lean_diagnostics, align 8, !tbaa !12
  %i.me = tail call zeroext i8 @l_Lean_Option_get___at___00Lean_Elab_addMacroStack___at___00Lean_throwError___at___00__private_Lean_Elab_MutualDef_0__Lean_Elab_Term_checkModifiers_spec__0_spec__1_spec__2(ptr noundef %.1254, ptr noundef %i.md) ; 4 uses
  %i.mf = tail call zeroext i8 @l_Lean_Kernel_isDiagnosticsEnabled(ptr noundef nonnull %i.lw) #9
  %i.mg = load i32, ptr %i.lw, align 4, !tbaa !14 ; 3 uses
  %i.mh = icmp sgt i32 %i.mg, 1
  br i1 %i.mh, label %bb.fy, label %bb.fz, !prof !15

bb.fy:                                            ; preds = %lean_dec.exit
  %i.mi = add nsw i32 %i.mg, -1
  store i32 %i.mi, ptr %i.lw, align 4, !tbaa !14
  br label %lean_dec_ref.exit312

bb.fz:                                            ; preds = %lean_dec.exit
  %.not.i311 = icmp eq i32 %i.mg, 0
  br i1 %.not.i311, label %lean_dec_ref.exit312, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.lw) #9
  br label %lean_dec_ref.exit312

lean_dec_ref.exit312:                             ; preds = %bb.fy, %bb.fz, %bb.ga
  %i.mj = icmp eq i8 %i.mf, 0
  %i.mk = icmp eq i8 %i.me, 0                     ; 2 uses
  br i1 %i.mj, label %11, label %10

11:                                               ; preds = %lean_dec_ref.exit312
  br i1 %i.mk, label %bb.u, label %.thread445
}

declare ptr @l_Lean_Kernel_enableDiag(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i8 @l_Lean_Kernel_isDiagnosticsEnabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Elab_MutualDef_0__Lean_Elab_Term_elabMutualDef_finishElab___lam__3___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr nofree readnone captures(none) %10) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %3, i64 8
  %.val = load i64, ptr %i.a, align 8, !tbaa !10
  %i.b = load i32, ptr %3, align 8, !tbaa !14     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %3, align 8, !tbaa !14
  br label %lean_dec.exit27

bb.c:                                             ; preds = %bb.a
  %.not.i28 = icmp eq i32 %i.b, 0
  br i1 %.not.i28, label %lean_dec.exit27, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #9
  br label %lean_dec.exit27

lean_dec.exit27:                                  ; preds = %bb.d, %bb.c, %bb.b
  %i.e = tail call ptr @l___private_Lean_Elab_MutualDef_0__Lean_Elab_Term_elabMutualDef_finishElab___lam__3(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %.val, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9)
  %i.f = ptrtoint ptr %9 to i64
  %i.g = and i64 %i.f, 1
  %.not.i24 = icmp eq i64 %i.g, 0
  br i1 %.not.i24, label %bb.e, label %lean_dec.exit25

bb.e:                                             ; preds = %lean_dec.exit27
  %i.h = load i32, ptr %9, align 4, !tbaa !14     ; 3 uses
  %i.i = icmp sgt i32 %i.h, 1
  br i1 %i.i, label %bb.f, label %bb.g, !prof !15

bb.f:                                             ; preds = %bb.e
  %i.j = add nsw i32 %i.h, -1
  store i32 %i.j, ptr %9, align 4, !tbaa !14
  br label %lean_dec.exit25

bb.g:                                             ; preds = %bb.e
  %.not.i29 = icmp eq i32 %i.h, 0
  br i1 %.not.i29, label %lean_dec.exit25, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %9) #9
  br label %lean_dec.exit25

lean_dec.exit25:                                  ; preds = %bb.h, %bb.g, %bb.f, %lean_dec.exit27
  %i.k = load i32, ptr %8, align 4, !tbaa !14     ; 3 uses
  %i.l = icmp sgt i32 %i.k, 1
  br i1 %i.l, label %bb.i, label %bb.j, !prof !15

bb.i:                                             ; preds = %lean_dec.exit25
  %i.m = add nsw i32 %i.k, -1
  store i32 %i.m, ptr %8, align 4, !tbaa !14
  br label %lean_dec_ref.exit44

bb.j:                                             ; preds = %lean_dec.exit25
  %.not.i43 = icmp eq i32 %i.k, 0
  br i1 %.not.i43, label %lean_dec_ref.exit44, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %8) #9
  br label %lean_dec_ref.exit44

lean_dec_ref.exit44:                              ; preds = %bb.i, %bb.j, %bb.k
  %i.n = ptrtoint ptr %7 to i64
  %i.o = and i64 %i.n, 1
  %.not.i22 = icmp eq i64 %i.o, 0
  br i1 %.not.i22, label %bb.l, label %lean_dec.exit23

bb.l:                                             ; preds = %lean_dec_ref.exit44
  %i.p = load i32, ptr %7, align 4, !tbaa !14     ; 3 uses
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %bb.m, label %bb.n, !prof !15

bb.m:                                             ; preds = %bb.l
  %i.r = add nsw i32 %i.p, -1
  store i32 %i.r, ptr %7, align 4, !tbaa !14
  br label %lean_dec.exit23

bb.n:                                             ; preds = %bb.l
  %.not.i31 = icmp eq i32 %i.p, 0
  br i1 %.not.i31, label %lean_dec.exit23, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %7) #9
  br label %lean_dec.exit23

lean_dec.exit23:                                  ; preds = %bb.o, %bb.n, %bb.m, %lean_dec_ref.exit44
  %i.s = load i32, ptr %6, align 4, !tbaa !14     ; 3 uses
  %i.t = icmp sgt i32 %i.s, 1
  br i1 %i.t, label %bb.p, label %bb.q, !prof !15

bb.p:                                             ; preds = %lean_dec.exit23
  %i.u = add nsw i32 %i.s, -1
  store i32 %i.u, ptr %6, align 4, !tbaa !14
  br label %lean_dec_ref.exit42

bb.q:                                             ; preds = %lean_dec.exit23
  %.not.i41 = icmp eq i32 %i.s, 0
  br i1 %.not.i41, label %lean_dec_ref.exit42, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %6) #9
  br label %lean_dec_ref.exit42

lean_dec_ref.exit42:                              ; preds = %bb.p, %bb.q, %bb.r
  %i.v = ptrtoint ptr %5 to i64
  %i.w = and i64 %i.v, 1
  %.not.i20 = icmp eq i64 %i.w, 0
  br i1 %.not.i20, label %bb.s, label %lean_dec.exit21

bb.s:                                             ; preds = %lean_dec_ref.exit42
  %i.x = load i32, ptr %5, align 4, !tbaa !14     ; 3 uses
  %i.y = icmp sgt i32 %i.x, 1
  br i1 %i.y, label %bb.t, label %bb.u, !prof !15

bb.t:                                             ; preds = %bb.s
  %i.z = add nsw i32 %i.x, -1
  store i32 %i.z, ptr %5, align 4, !tbaa !14
  br label %lean_dec.exit21

bb.u:                                             ; preds = %bb.s
  %.not.i33 = icmp eq i32 %i.x, 0
  br i1 %.not.i33, label %lean_dec.exit21, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #9
  br label %lean_dec.exit21

lean_dec.exit21:                                  ; preds = %bb.v, %bb.u, %bb.t, %lean_dec_ref.exit42
  %i.aa = load i32, ptr %4, align 4, !tbaa !14    ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 1
  br i1 %i.ab, label %bb.w, label %bb.x, !prof !15

bb.w:                                             ; preds = %lean_dec.exit21
  %i.ac = add nsw i32 %i.aa, -1
  store i32 %i.ac, ptr %4, align 4, !tbaa !14
  br label %lean_dec_ref.exit40

bb.x:                                             ; preds = %lean_dec.exit21
  %.not.i39 = icmp eq i32 %i.aa, 0
  br i1 %.not.i39, label %lean_dec_ref.exit40, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #9
  br label %lean_dec_ref.exit40

lean_dec_ref.exit40:                              ; preds = %bb.w, %bb.x, %bb.y
  %i.ad = ptrtoint ptr %2 to i64
  %i.ae = and i64 %i.ad, 1
  %.not.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i, label %bb.z, label %lean_dec.exit

bb.z:                                             ; preds = %lean_dec_ref.exit40
  %i.af = load i32, ptr %2, align 4, !tbaa !14    ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 1
  br i1 %i.ag, label %bb.aa, label %bb.ab, !prof !15

bb.aa:                                            ; preds = %bb.z
  %i.ah = add nsw i32 %i.af, -1
  store i32 %i.ah, ptr %2, align 4, !tbaa !14
  br label %lean_dec.exit

bb.ab:                                            ; preds = %bb.z
  %.not.i35 = icmp eq i32 %i.af, 0
  br i1 %.not.i35, label %lean_dec.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #9
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.ac, %bb.ab, %bb.aa, %lean_dec_ref.exit40
  %i.ai = load i32, ptr %1, align 4, !tbaa !14    ; 3 uses
  %i.aj = icmp sgt i32 %i.ai, 1
  br i1 %i.aj, label %bb.ad, label %bb.ae, !prof !15

bb.ad:                                            ; preds = %lean_dec.exit
  %i.ak = add nsw i32 %i.ai, -1
  store i32 %i.ak, ptr %1, align 4, !tbaa !14
  br label %lean_dec_ref.exit38

bb.ae:                                            ; preds = %lean_dec.exit
  %.not.i37 = icmp eq i32 %i.ai, 0
  br i1 %.not.i37, label %lean_dec_ref.exit38, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #9
  br label %lean_dec_ref.exit38

lean_dec_ref.exit38:                              ; preds = %bb.ad, %bb.ae, %bb.af
  ret ptr %i.e
}
end_hunk_0
