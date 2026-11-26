Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/Resolve?download=true
inline.NumInlined: 5134
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00__private_Lake_Load_Resolve_0__Lake_addDependencyEntries_spec__0___redArg:bb.a
  store ptr %i.bq, ptr %i.ep, align 8, !tbaa !10
  %i.eq = getelementptr inbounds nuw i8, ptr %.sink273, i64 16
  store ptr %i.bp, ptr %i.eq, align 8, !tbaa !10
  %i.er = getelementptr inbounds nuw i8, ptr %.sink273, i64 24
  store ptr %i.bo, ptr %i.er, align 8, !tbaa !10
  %i.es = getelementptr inbounds nuw i8, ptr %.sink273, i64 32
  store ptr %i.bn, ptr %i.es, align 8, !tbaa !10
  br label %lean_dec.exit.sink.split

lean_dec.exit.sink.split:                         ; preds = %lean_dec.exit.sink.split.sink.split, %lean_inc.exit152
  %.sink260 = phi ptr [ %.0143, %lean_inc.exit152 ], [ %.sink273, %lean_dec.exit.sink.split.sink.split ] ; 2 uses
  %.sink = phi ptr [ %.sink257, %lean_inc.exit152 ], [ %.sink.ph, %lean_dec.exit.sink.split.sink.split ]
  %i.et = getelementptr inbounds nuw i8, ptr %.sink260, i64 40
  store ptr %.sink, ptr %i.et, align 8, !tbaa !10
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_dec.exit.sink.split, %lean_inc.exit
  %.0132.sink = phi ptr [ %.0143, %lean_inc.exit ], [ %.sink260, %lean_dec.exit.sink.split ] ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.0132.sink, i64 48
  store i8 1, ptr %i.eu, align 1, !tbaa !16
  %i.ev = tail call ptr @l_Std_DTreeMap_Internal_Impl_insert___at___00Lean_NameMap_insert_spec__0___redArg(ptr noundef %i.bq, ptr noundef nonnull %.0132.sink, ptr noundef %.0119229) #6
  br label %lean_dec.exit.thread

lean_dec.exit.thread:                             ; preds = %lean_dec_ref.exit145, %bb.cd, %bb.cc, %bb.cb, %lean_dec.exit
  %.1124 = phi ptr [ %i.ev, %lean_dec.exit ], [ %.0119229, %bb.cb ], [ %.0119229, %bb.cc ], [ %.0119229, %bb.cd ], [ %.0119229, %lean_dec_ref.exit145 ] ; 2 uses
  %i.ew = add i64 %.0115230, 1                    ; 2 uses
  %.not = icmp eq i64 %i.ew, %3
  br i1 %.not, label %._crit_edge, label %bb.b

bb.cj:                                            ; preds = %lean_alloc_ctor.exit210
  %i.ex = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  store i32 1, ptr %i.el, align 4, !tbaa !12
  store i32 65552, ptr %i.ex, align 4
  %i.ey = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store ptr %i.eg, ptr %i.ey, align 8, !tbaa !10
  ret ptr %i.el
}

declare zeroext i8 @l_Std_DTreeMap_Internal_Impl_contains___at___00Lean_NameMap_contains_spec__0___redArg(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define noalias nonnull ptr @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00__private_Lake_Load_Resolve_0__Lake_addDependencyEntries_spec__0___redArg___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef readnone captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %.val16 = load i64, ptr %i.a, align 8, !tbaa !15
  %i.b = load i32, ptr %2, align 8, !tbaa !12     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %2, align 8, !tbaa !12
  br label %lean_dec.exit15

bb.c:                                             ; preds = %bb.a
  %.not.i.i13 = icmp eq i32 %i.b, 0
  br i1 %.not.i.i13, label %lean_dec.exit15, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #6
  br label %lean_dec.exit15

lean_dec.exit15:                                  ; preds = %bb.b, %bb.c, %bb.d
  %i.e = getelementptr i8, ptr %3, i64 8
  %.val = load i64, ptr %i.e, align 8, !tbaa !15
  %i.f = load i32, ptr %3, align 8, !tbaa !12     ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.f, !prof !13

bb.e:                                             ; preds = %lean_dec.exit15
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %3, align 8, !tbaa !12
  br label %lean_dec.exit

bb.f:                                             ; preds = %lean_dec.exit15
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.e, %bb.f, %bb.g
  %i.i = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00__private_Lake_Load_Resolve_0__Lake_addDependencyEntries_spec__0___redArg(ptr noundef %0, ptr noundef %1, i64 noundef %.val16, i64 noundef %.val, ptr noundef %4, ptr noundef %5)
  %i.j = load i32, ptr %1, align 4, !tbaa !12     ; 3 uses
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %lean_dec.exit
  %i.l = add nsw i32 %i.j, -1
  store i32 %i.l, ptr %1, align 4, !tbaa !12
  br label %lean_dec_ref.exit

bb.i:                                             ; preds = %lean_dec.exit
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.h, %bb.i, %bb.j
  ret ptr %i.i
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lake_Load_Resolve_0__Lake_addDependencyEntries(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !10   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !10   ; 3 uses
  %i.i = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i428 = icmp eq i64 %i.j, 0
  br i1 %.not.i428, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = lshr i64 %i.i, 1
  %i.l = trunc i64 %i.k to i32
  br label %lean_obj_tag.exit

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %i.h, i64 4
  %.val.i = load i32, ptr %i.m, align 4
  %i.n = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.b, %bb.c
  %.0.i429 = phi i32 [ %i.l, %bb.b ], [ %i.n, %bb.c ]
  %i.o = icmp eq i32 %.0.i429, 0
  br i1 %i.o, label %bb.d, label %bb.h

bb.d:                                             ; preds = %lean_obj_tag.exit
  %i.p = load ptr, ptr @l_Lake_defaultManifestFile, align 8, !tbaa !10 ; 3 uses
  %.val.i.i = load i32, ptr %i.d, align 4, !tbaa !12 ; 3 uses
  %i.q = icmp sgt i32 %.val.i.i, 0
  br i1 %i.q, label %bb.e, label %bb.f, !prof !13

bb.e:                                             ; preds = %bb.d
  %i.r = add nuw i32 %.val.i.i, 1
  store i32 %i.r, ptr %i.d, align 4, !tbaa !12
  br label %lean_inc_ref.exit

bb.f:                                             ; preds = %bb.d
  %.not.i.i430 = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i430, label %lean_inc_ref.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = atomicrmw add ptr %i.d, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit

bb.h:                                             ; preds = %lean_obj_tag.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !10   ; 7 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = and i64 %i.v, 1
  %.not.i376 = icmp eq i64 %i.w, 0
  br i1 %.not.i376, label %bb.i, label %lean_inc.exit377

bb.i:                                             ; preds = %bb.h
  %.val.i.i431 = load i32, ptr %i.u, align 4, !tbaa !12 ; 3 uses
  %i.x = icmp sgt i32 %.val.i.i431, 0
  br i1 %i.x, label %bb.j, label %bb.k, !prof !13

bb.j:                                             ; preds = %bb.i
  %i.y = add nuw i32 %.val.i.i431, 1
  store i32 %i.y, ptr %i.u, align 4, !tbaa !12
  br label %lean_inc.exit377

bb.k:                                             ; preds = %bb.i
  %.not.i.i432 = icmp eq i32 %.val.i.i431, 0
  br i1 %.not.i.i432, label %lean_inc.exit377, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = atomicrmw add ptr %i.u, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit377

lean_inc.exit377:                                 ; preds = %bb.l, %bb.k, %bb.j, %bb.h
  %.val.i.i434 = load i32, ptr %i.d, align 4, !tbaa !12 ; 3 uses
  %i.aa = icmp sgt i32 %.val.i.i434, 0
  br i1 %i.aa, label %bb.m, label %bb.n, !prof !13

bb.m:                                             ; preds = %lean_inc.exit377
  %i.ab = add nuw i32 %.val.i.i434, 1
  store i32 %i.ab, ptr %i.d, align 4, !tbaa !12
  br label %lean_inc_ref.exit

bb.n:                                             ; preds = %lean_inc.exit377
  %.not.i.i435 = icmp eq i32 %.val.i.i434, 0
  br i1 %.not.i.i435, label %lean_inc_ref.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = atomicrmw add ptr %i.d, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit

bb.p:                                             ; preds = %.thread
  %i.ad = ptrtoint ptr %i.f to i64
  %i.ae = and i64 %i.ad, 1
  %.not.i374 = icmp eq i64 %i.ae, 0
  br i1 %.not.i374, label %bb.q, label %lean_inc.exit375

bb.q:                                             ; preds = %bb.p
  %.val.i.i441 = load i32, ptr %i.f, align 4, !tbaa !12 ; 3 uses
  %i.af = icmp sgt i32 %.val.i.i441, 0
  br i1 %i.af, label %bb.r, label %bb.s, !prof !13

bb.r:                                             ; preds = %bb.q
  %i.ag = add nuw i32 %.val.i.i441, 1
  store i32 %i.ag, ptr %i.f, align 4, !tbaa !12
  br label %lean_inc.exit375

bb.s:                                             ; preds = %bb.q
  %.not.i.i442 = icmp eq i32 %.val.i.i441, 0
  br i1 %.not.i.i442, label %lean_inc.exit375, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ah = atomicrmw add ptr %i.f, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit375

lean_inc.exit375:                                 ; preds = %bb.t, %bb.s, %bb.r, %bb.p
  %i.ai = load i32, ptr %0, align 8, !tbaa !12    ; 3 uses
  %i.aj = icmp sgt i32 %i.ai, 1
  br i1 %i.aj, label %bb.u, label %bb.v, !prof !13

bb.u:                                             ; preds = %lean_inc.exit375
  %i.ak = add nsw i32 %i.ai, -1
  store i32 %i.ak, ptr %0, align 8, !tbaa !12
  br label %lean_dec_ref.exit362

bb.v:                                             ; preds = %lean_inc.exit375
  %.not.i361 = icmp eq i32 %i.ai, 0
  br i1 %.not.i361, label %lean_dec_ref.exit362, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec_ref.exit362

lean_dec_ref.exit362:                             ; preds = %bb.u, %bb.v, %bb.w
  %i.al = getelementptr inbounds nuw i8, ptr %.2320, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !10 ; 12 uses
  %.3303.val427 = load i32, ptr %.2320, align 8, !tbaa !12
  %i.an = icmp eq i32 %.3303.val427, 1            ; 3 uses
  %.pre567.a = ptrtoint ptr %i.am to i64          ; 2 uses
  %.pre568 = and i64 %.pre567.a, 1                ; 2 uses
  br i1 %i.an, label %lean_dec.exit410, label %bb.x

bb.x:                                             ; preds = %lean_dec_ref.exit362
  %.not.i372 = icmp eq i64 %.pre568, 0
  br i1 %.not.i372, label %bb.y, label %lean_inc.exit373

bb.y:                                             ; preds = %bb.x
  %.val.i.i444 = load i32, ptr %i.am, align 4, !tbaa !12 ; 3 uses
  %i.ao = icmp sgt i32 %.val.i.i444, 0
  br i1 %i.ao, label %bb.z, label %bb.aa, !prof !13

bb.z:                                             ; preds = %bb.y
  %i.ap = add nuw i32 %.val.i.i444, 1
  store i32 %i.ap, ptr %i.am, align 4, !tbaa !12
  br label %lean_inc.exit373

bb.aa:                                            ; preds = %bb.y
  %.not.i.i445 = icmp eq i32 %.val.i.i444, 0
  br i1 %.not.i.i445, label %lean_inc.exit373, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.aq = atomicrmw add ptr %i.am, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit373

lean_inc.exit373:                                 ; preds = %bb.ab, %bb.aa, %bb.z, %bb.x
  br i1 %.not.i437, label %bb.ac, label %lean_dec.exit410

bb.ac:                                            ; preds = %lean_inc.exit373
  %i.ar = load i32, ptr %.2320, align 8, !tbaa !12 ; 3 uses
  %i.as = icmp sgt i32 %i.ar, 1
  br i1 %i.as, label %bb.ad, label %bb.ae, !prof !13

bb.ad:                                            ; preds = %bb.ac
  %i.at = add nsw i32 %i.ar, -1
  store i32 %i.at, ptr %.2320, align 8, !tbaa !12
  br label %lean_dec.exit410

bb.ae:                                            ; preds = %bb.ac
  %.not.i.i408 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i408, label %lean_dec.exit410, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.2320) #6
  br label %lean_dec.exit410

lean_dec.exit410:                                 ; preds = %lean_dec_ref.exit362, %lean_inc.exit373, %bb.af, %bb.ae, %bb.ad
  %.0334 = phi ptr [ inttoptr (i64 1 to ptr), %bb.ad ], [ inttoptr (i64 1 to ptr), %lean_inc.exit373 ], [ inttoptr (i64 1 to ptr), %bb.af ], [ inttoptr (i64 1 to ptr), %bb.ae ], [ %.2320, %lean_dec_ref.exit362 ] ; 4 uses
  %.not.i447 = icmp eq i64 %.pre568, 0
  br i1 %.not.i447, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %lean_dec.exit410
  %i.au = lshr i64 %.pre567.a, 1
  %i.av = trunc i64 %i.au to i32
  br label %lean_obj_tag.exit450

bb.ah:                                            ; preds = %lean_dec.exit410
  %i.aw = getelementptr i8, ptr %i.am, i64 4
  %.val.i449 = load i32, ptr %i.aw, align 4
  %i.ax = lshr i32 %.val.i449, 24
  br label %lean_obj_tag.exit450

lean_obj_tag.exit450:                             ; preds = %bb.ag, %bb.ah
  %.0.i448 = phi i32 [ %i.av, %bb.ag ], [ %i.ax, %bb.ah ]
  %i.ay = icmp eq i32 %.0.i448, 11
  br i1 %i.ay, label %bb.ai, label %bb.bg

bb.ai:                                            ; preds = %lean_obj_tag.exit450
  %.val.i451 = load i32, ptr %i.am, align 4, !tbaa !12 ; 4 uses
  %i.az = icmp eq i32 %.val.i451, 1
  br i1 %i.az, label %.preheader.i, label %bb.ar

.preheader.i:                                     ; preds = %bb.ai
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !10 ; 4 uses
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = and i64 %i.bc, 1
  %.not.i7.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i7.i, label %bb.aj, label %lean_dec.exit.i

bb.aj:                                            ; preds = %.preheader.i
  %i.be = load i32, ptr %i.bb, align 4, !tbaa !12 ; 3 uses
  %i.bf = icmp sgt i32 %i.be, 1
  br i1 %i.bf, label %bb.ak, label %bb.al, !prof !13

bb.ak:                                            ; preds = %bb.aj
  %i.bg = add nsw i32 %i.be, -1
  store i32 %i.bg, ptr %i.bb, align 4, !tbaa !12
  br label %lean_dec.exit.i

bb.al:                                            ; preds = %bb.aj
  %.not.i.i.i = icmp eq i32 %i.be, 0
  br i1 %.not.i.i.i, label %lean_dec.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bb) #6
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.am, %bb.al, %bb.ak, %.preheader.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !10 ; 4 uses
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = and i64 %i.bj, 1
  %.not.i7.i.1 = icmp eq i64 %i.bk, 0
  br i1 %.not.i7.i.1, label %bb.an, label %lean_dec.exit.i.1

bb.an:                                            ; preds = %lean_dec.exit.i
  %i.bl = load i32, ptr %i.bi, align 4, !tbaa !12 ; 3 uses
  %i.bm = icmp sgt i32 %i.bl, 1
  br i1 %i.bm, label %bb.aq, label %bb.ao, !prof !13

bb.ao:                                            ; preds = %bb.an
  %.not.i.i.i.1 = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i.i.1, label %lean_dec.exit.i.1, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bi) #6
  br label %lean_dec.exit.i.1

bb.aq:                                            ; preds = %bb.an
  %i.bn = add nsw i32 %i.bl, -1
  store i32 %i.bn, ptr %i.bi, align 4, !tbaa !12
  br label %lean_dec.exit.i.1

lean_dec.exit.i.1:                                ; preds = %bb.aq, %bb.ap, %bb.ao, %lean_dec.exit.i
  tail call void @lean_free_object(ptr noundef nonnull %i.am) #6
  br label %lean_dec_ref_known.exit

bb.ar:                                            ; preds = %bb.ai
  %i.bo = icmp sgt i32 %.val.i451, 1
  br i1 %i.bo, label %bb.as, label %bb.at, !prof !13

bb.as:                                            ; preds = %bb.ar
  %i.bp = add nsw i32 %.val.i451, -1
  store i32 %i.bp, ptr %i.am, align 4, !tbaa !12
  br label %lean_dec_ref_known.exit

bb.at:                                            ; preds = %bb.ar
  %.not.i.i452 = icmp eq i32 %.val.i451, 0
  br i1 %.not.i.i452, label %lean_dec_ref_known.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.am) #6
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i.1, %bb.as, %bb.at, %bb.au
  %i.bq = tail call ptr @l_Lean_Name_toString(ptr noundef %i.f, i8 noundef zeroext 0) #6
  %i.br = tail call ptr @lean_string_append(ptr noundef %i.bq, ptr noundef nonnull @l___private_Lake_Load_Resolve_0__Lake_addDependencyEntries___closed__0_value) #6
  %i.bs = tail call ptr @lean_string_append(ptr noundef %i.br, ptr noundef nonnull %i.fn) #6
  %i.bt = load i32, ptr %i.fn, align 4, !tbaa !12 ; 3 uses
  %i.bu = icmp sgt i32 %i.bt, 1
  br i1 %i.bu, label %bb.av, label %bb.aw, !prof !13

bb.av:                                            ; preds = %lean_dec_ref_known.exit
  %i.bv = add nsw i32 %i.bt, -1
  store i32 %i.bv, ptr %i.fn, align 4, !tbaa !12
  br label %lean_dec_ref.exit360

bb.aw:                                            ; preds = %lean_dec_ref_known.exit
  %.not.i359 = icmp eq i32 %i.bt, 0
  br i1 %.not.i359, label %lean_dec_ref.exit360, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fn) #6
  br label %lean_dec_ref.exit360

lean_dec_ref.exit360:                             ; preds = %bb.av, %bb.aw, %bb.ax
  tail call void @lean_inc_heartbeat() #6
  %i.bw = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #6 ; 6 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.ay, label %lean_alloc_ctor.exit

bb.ay:                                            ; preds = %lean_dec_ref.exit360
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_dec_ref.exit360
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store i64 2, ptr %i.bz, align 8, !tbaa !15
  store i32 1, ptr %i.bw, align 8, !tbaa !12
  store i32 65560, ptr %i.by, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %i.bs, ptr %i.ca, align 8, !tbaa !10
  %.val.i.i454 = load i32, ptr %2, align 4, !tbaa !12 ; 3 uses
  %i.cb = icmp sgt i32 %.val.i.i454, 0
  br i1 %i.cb, label %bb.az, label %bb.ba, !prof !13

bb.az:                                            ; preds = %lean_alloc_ctor.exit
  %i.cc = add nuw i32 %.val.i.i454, 1
  store i32 %i.cc, ptr %2, align 4, !tbaa !12
  br label %lean_inc_ref.exit456

bb.ba:                                            ; preds = %lean_alloc_ctor.exit
  %.not.i.i455 = icmp eq i32 %.val.i.i454, 0
  br i1 %.not.i.i455, label %lean_inc_ref.exit456, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.cd = atomicrmw add ptr %2, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit456

lean_inc_ref.exit456:                             ; preds = %bb.az, %bb.ba, %bb.bb
  %i.ce = tail call ptr @lean_apply_2(ptr noundef nonnull %2, ptr noundef nonnull %i.bw, ptr noundef nonnull inttoptr (i64 1 to ptr)) #6
  tail call void @lean_inc_heartbeat() #6
  %i.cf = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #6 ; 7 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %bb.bc, label %lean_alloc_ctor.exit457

bb.bc:                                            ; preds = %lean_inc_ref.exit456
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit457:                          ; preds = %lean_inc_ref.exit456
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  store i32 1, ptr %i.cf, align 4, !tbaa !12
  store i32 131096, ptr %i.ch, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr %i.ce, ptr %i.ci, align 8, !tbaa !10
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store ptr %1, ptr %i.cj, align 8, !tbaa !10
  br i1 %i.an, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %lean_alloc_ctor.exit457
  %i.ck = getelementptr inbounds nuw i8, ptr %.0334, i64 8
  store ptr %i.cf, ptr %i.ck, align 8, !tbaa !10
  br label %lean_dec_ref.exit346

bb.be:                                            ; preds = %lean_alloc_ctor.exit457
  tail call void @lean_inc_heartbeat() #6
  %i.cl = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #6 ; 5 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.bf, label %lean_alloc_ctor.exit458

bb.bf:                                            ; preds = %bb.be
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit458:                          ; preds = %bb.be
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  store i32 1, ptr %i.cl, align 4, !tbaa !12
  store i32 65552, ptr %i.cn, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr %i.cf, ptr %i.co, align 8, !tbaa !10
  br label %lean_dec_ref.exit346

bb.bg:                                            ; preds = %lean_obj_tag.exit450
  %i.cp = load i32, ptr %i.fn, align 4, !tbaa !12 ; 3 uses
  %i.cq = icmp sgt i32 %i.cp, 1
  br i1 %i.cq, label %bb.bh, label %bb.bi, !prof !13

bb.bh:                                            ; preds = %bb.bg
  %i.cr = add nsw i32 %i.cp, -1
  store i32 %i.cr, ptr %i.fn, align 4, !tbaa !12
  br label %lean_dec_ref.exit358

bb.bi:                                            ; preds = %bb.bg
  %.not.i357 = icmp eq i32 %i.cp, 0
  br i1 %.not.i357, label %lean_dec_ref.exit358, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fn) #6
  br label %lean_dec_ref.exit358

lean_dec_ref.exit358:                             ; preds = %bb.bh, %bb.bi, %bb.bj
  %i.cs = tail call ptr @l_Lean_Name_toString(ptr noundef %i.f, i8 noundef zeroext 0) #6
  %i.ct = tail call ptr @lean_string_append(ptr noundef %i.cs, ptr noundef nonnull @l___private_Lake_Load_Resolve_0__Lake_addDependencyEntries___closed__1_value) #6
  %i.cu = tail call ptr @lean_io_error_to_string(ptr noundef %i.am) #6 ; 4 uses
  %i.cv = tail call ptr @lean_string_append(ptr noundef %i.ct, ptr noundef %i.cu) #6
  %i.cw = load i32, ptr %i.cu, align 4, !tbaa !12 ; 3 uses
  %i.cx = icmp sgt i32 %i.cw, 1
  br i1 %i.cx, label %bb.bk, label %bb.bl, !prof !13

bb.bk:                                            ; preds = %lean_dec_ref.exit358
  %i.cy = add nsw i32 %i.cw, -1
  store i32 %i.cy, ptr %i.cu, align 4, !tbaa !12
  br label %lean_dec_ref.exit356

bb.bl:                                            ; preds = %lean_dec_ref.exit358
  %.not.i355 = icmp eq i32 %i.cw, 0
  br i1 %.not.i355, label %lean_dec_ref.exit356, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cu) #6
  br label %lean_dec_ref.exit356

lean_dec_ref.exit356:                             ; preds = %bb.bk, %bb.bl, %bb.bm
  tail call void @lean_inc_heartbeat() #6
  %i.cz = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #6 ; 6 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %bb.bn, label %lean_alloc_ctor.exit460

bb.bn:                                            ; preds = %lean_dec_ref.exit356
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit460:                          ; preds = %lean_dec_ref.exit356
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store i64 2, ptr %i.dc, align 8, !tbaa !15
  store i32 1, ptr %i.cz, align 8, !tbaa !12
  store i32 65560, ptr %i.db, align 4
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr %i.cv, ptr %i.dd, align 8, !tbaa !10
  %.val.i.i461 = load i32, ptr %2, align 4, !tbaa !12 ; 3 uses
  %i.de = icmp sgt i32 %.val.i.i461, 0
  br i1 %i.de, label %bb.bo, label %bb.bp, !prof !13

bb.bo:                                            ; preds = %lean_alloc_ctor.exit460
  %i.df = add nuw i32 %.val.i.i461, 1
  store i32 %i.df, ptr %2, align 4, !tbaa !12
  br label %lean_inc_ref.exit463

bb.bp:                                            ; preds = %lean_alloc_ctor.exit460
  %.not.i.i462 = icmp eq i32 %.val.i.i461, 0
  br i1 %.not.i.i462, label %lean_inc_ref.exit463, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.dg = atomicrmw add ptr %2, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit463

lean_inc_ref.exit463:                             ; preds = %bb.bo, %bb.bp, %bb.bq
  %i.dh = tail call ptr @lean_apply_2(ptr noundef nonnull %2, ptr noundef nonnull %i.cz, ptr noundef nonnull inttoptr (i64 1 to ptr)) #6
  tail call void @lean_inc_heartbeat() #6
  %i.di = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #6 ; 7 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %bb.br, label %lean_alloc_ctor.exit464

bb.br:                                            ; preds = %lean_inc_ref.exit463
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit464:                          ; preds = %lean_inc_ref.exit463
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  store i32 1, ptr %i.di, align 4, !tbaa !12
  store i32 131096, ptr %i.dk, align 4
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store ptr %i.dh, ptr %i.dl, align 8, !tbaa !10
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store ptr %1, ptr %i.dm, align 8, !tbaa !10
  br i1 %i.an, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %lean_alloc_ctor.exit464
  %i.dn = getelementptr inbounds nuw i8, ptr %.0334, i64 8
  store ptr %i.di, ptr %i.dn, align 8, !tbaa !10
  br label %lean_dec_ref.exit346

bb.bt:                                            ; preds = %lean_alloc_ctor.exit464
  tail call void @lean_inc_heartbeat() #6
  %i.do = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #6 ; 5 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %bb.bu, label %lean_alloc_ctor.exit465

bb.bu:                                            ; preds = %bb.bt
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit465:                          ; preds = %bb.bt
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  store i32 1, ptr %i.do, align 4, !tbaa !12
  store i32 65552, ptr %i.dq, align 4
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store ptr %i.di, ptr %i.dr, align 8, !tbaa !10
  br label %lean_dec_ref.exit346

bb.bv:                                            ; preds = %.thread
  %i.ds = load i32, ptr %i.fn, align 4, !tbaa !12 ; 3 uses
  %i.dt = icmp sgt i32 %i.ds, 1
  br i1 %i.dt, label %bb.bw, label %bb.bx, !prof !13

bb.bw:                                            ; preds = %bb.bv
  %i.du = add nsw i32 %i.ds, -1
  store i32 %i.du, ptr %i.fn, align 4, !tbaa !12
  br label %lean_dec_ref.exit354

bb.bx:                                            ; preds = %bb.bv
  %.not.i353 = icmp eq i32 %i.ds, 0
  br i1 %.not.i353, label %lean_dec_ref.exit354, label %bb.by

bb.by:                                            ; preds = %bb.bx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fn) #6
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.2320, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !10
  br label %lean_dec_ref.exit354

lean_dec_ref.exit354:                             ; preds = %bb.bw, %bb.bx, %bb.by
  %i.dv = phi ptr [ %i.ga, %bb.bw ], [ %i.ga, %bb.bx ], [ %.pre, %bb.by ] ; 8 uses
  %.3303.val = load i32, ptr %.2320, align 4, !tbaa !12
  %i.dw = icmp eq i32 %.3303.val, 1               ; 2 uses
  br i1 %i.dw, label %lean_dec.exit406, label %bb.bz

bb.bz:                                            ; preds = %lean_dec_ref.exit354
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = and i64 %i.dx, 1
  %.not.i370 = icmp eq i64 %i.dy, 0
  br i1 %.not.i370, label %bb.ca, label %lean_inc.exit371

bb.ca:                                            ; preds = %bb.bz
  %.val.i.i466 = load i32, ptr %i.dv, align 4, !tbaa !12 ; 3 uses
  %i.dz = icmp sgt i32 %.val.i.i466, 0
  br i1 %i.dz, label %bb.cb, label %bb.cc, !prof !13

bb.cb:                                            ; preds = %bb.ca
  %i.ea = add nuw i32 %.val.i.i466, 1
  store i32 %i.ea, ptr %i.dv, align 4, !tbaa !12
  br label %lean_inc.exit371

bb.cc:                                            ; preds = %bb.ca
  %.not.i.i467 = icmp eq i32 %.val.i.i466, 0
  br i1 %.not.i.i467, label %lean_inc.exit371, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.eb = atomicrmw add ptr %i.dv, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit371

lean_inc.exit371:                                 ; preds = %bb.cd, %bb.cc, %bb.cb, %bb.bz
  br i1 %.not.i437, label %bb.ce, label %lean_dec.exit406

bb.ce:                                            ; preds = %lean_inc.exit371
  %i.ec = load i32, ptr %.2320, align 4, !tbaa !12 ; 3 uses
  %i.ed = icmp sgt i32 %i.ec, 1
  br i1 %i.ed, label %bb.cf, label %bb.cg, !prof !13

bb.cf:                                            ; preds = %bb.ce
  %i.ee = add nsw i32 %i.ec, -1
  store i32 %i.ee, ptr %.2320, align 4, !tbaa !12
  br label %lean_dec.exit406

bb.cg:                                            ; preds = %bb.ce
  %.not.i.i404 = icmp eq i32 %i.ec, 0
  br i1 %.not.i.i404, label %lean_dec.exit406, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.2320) #6
  br label %lean_dec.exit406

lean_dec.exit406:                                 ; preds = %lean_inc.exit371, %bb.ch, %bb.cg, %bb.cf, %lean_dec_ref.exit354
  %.0323 = phi ptr [ %.2320, %lean_dec_ref.exit354 ], [ inttoptr (i64 1 to ptr), %bb.cf ], [ inttoptr (i64 1 to ptr), %bb.cg ], [ inttoptr (i64 1 to ptr), %bb.ch ], [ inttoptr (i64 1 to ptr), %lean_inc.exit371 ] ; 5 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !10 ; 11 uses
  %.val.i.i469 = load i32, ptr %i.eg, align 4, !tbaa !12 ; 3 uses
  %i.eh = icmp sgt i32 %.val.i.i469, 0
  br i1 %i.eh, label %bb.ci, label %bb.cj, !prof !13

bb.ci:                                            ; preds = %lean_dec.exit406
  %i.ei = add nuw i32 %.val.i.i469, 1
  store i32 %i.ei, ptr %i.eg, align 4, !tbaa !12
  br label %lean_inc_ref.exit471

bb.cj:                                            ; preds = %lean_dec.exit406
  %.not.i.i470 = icmp eq i32 %.val.i.i469, 0
  br i1 %.not.i.i470, label %lean_inc_ref.exit471, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ej = atomicrmw add ptr %i.eg, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit471

lean_inc_ref.exit471:                             ; preds = %bb.ck, %bb.cj, %bb.ci
  %i.ek = load i32, ptr %i.dv, align 8, !tbaa !12 ; 3 uses
  %i.el = icmp sgt i32 %i.ek, 1
  br i1 %i.el, label %bb.cl, label %bb.cm, !prof !13

bb.cl:                                            ; preds = %lean_inc_ref.exit471
  %i.em = add nsw i32 %i.ek, -1
  store i32 %i.em, ptr %i.dv, align 8, !tbaa !12
  br label %lean_nat_lt.exit

bb.cm:                                            ; preds = %lean_inc_ref.exit471
  %.not.i.i400 = icmp eq i32 %i.ek, 0
  br i1 %.not.i.i400, label %lean_nat_lt.exit, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dv) #6
  br label %lean_nat_lt.exit

lean_nat_lt.exit:                                 ; preds = %bb.cn, %bb.cm, %bb.cl
  %i.en = getelementptr i8, ptr %i.eg, i64 8
  %.val = load i64, ptr %i.en, align 8, !tbaa !15
  %.mask = and i64 %.val, 9223372036854775807     ; 2 uses
  %.not = icmp eq i64 %.mask, 0
  br i1 %.not, label %bb.co, label %bb.cz

bb.co:                                            ; preds = %lean_nat_lt.exit
  %i.eo = load i32, ptr %i.eg, align 8, !tbaa !12 ; 3 uses
  %i.ep = icmp sgt i32 %i.eo, 1
  br i1 %i.ep, label %bb.cp, label %bb.cq, !prof !13

bb.cp:                                            ; preds = %bb.co
  %i.eq = add nsw i32 %i.eo, -1
  store i32 %i.eq, ptr %i.eg, align 8, !tbaa !12
  br label %lean_dec_ref.exit352

bb.cq:                                            ; preds = %bb.co
  %.not.i351 = icmp eq i32 %i.eo, 0
  br i1 %.not.i351, label %lean_dec_ref.exit352, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.eg) #6
  br label %lean_dec_ref.exit352

lean_dec_ref.exit352:                             ; preds = %bb.cp, %bb.cq, %bb.cr
  %i.er = load i32, ptr %0, align 8, !tbaa !12    ; 3 uses
  %i.es = icmp sgt i32 %i.er, 1
  br i1 %i.es, label %bb.cs, label %bb.ct, !prof !13

bb.cs:                                            ; preds = %lean_dec_ref.exit352
  %i.et = add nsw i32 %i.er, -1
  store i32 %i.et, ptr %0, align 8, !tbaa !12
  br label %lean_dec_ref.exit350

bb.ct:                                            ; preds = %lean_dec_ref.exit352
  %.not.i349 = icmp eq i32 %i.er, 0
  br i1 %.not.i349, label %lean_dec_ref.exit350, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec_ref.exit350

lean_dec_ref.exit350:                             ; preds = %bb.cs, %bb.ct, %bb.cu
  tail call void @lean_inc_heartbeat() #6
  %i.eu = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #6 ; 7 uses
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %bb.cv, label %lean_alloc_ctor.exit472

bb.cv:                                            ; preds = %lean_dec_ref.exit350
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit472:                          ; preds = %lean_dec_ref.exit350
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  store i32 1, ptr %i.eu, align 4, !tbaa !12
  store i32 131096, ptr %i.ew, align 4
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.ex, align 8, !tbaa !10
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store ptr %1, ptr %i.ey, align 8, !tbaa !10
  br i1 %i.dw, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %lean_alloc_ctor.exit472
  %i.ez = getelementptr inbounds nuw i8, ptr %.0323, i64 4 ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4
  %i.fb = and i32 %i.fa, 16777215
  store i32 %i.fb, ptr %i.ez, align 4
  %i.fc = getelementptr inbounds nuw i8, ptr %.0323, i64 8
  store ptr %i.eu, ptr %i.fc, align 8, !tbaa !10
  br label %lean_dec_ref.exit346

bb.cx:                                            ; preds = %lean_alloc_ctor.exit472
  tail call void @lean_inc_heartbeat() #6
  %i.fd = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #6 ; 5 uses
  %i.fe = icmp eq ptr %i.fd, null
  br i1 %i.fe, label %bb.cy, label %lean_alloc_ctor.exit473

bb.cy:                                            ; preds = %bb.cx
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit473:                          ; preds = %bb.cx
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  store i32 1, ptr %i.fd, align 4, !tbaa !12
  store i32 65552, ptr %i.ff, align 4
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store ptr %i.eu, ptr %i.fg, align 8, !tbaa !10
  br label %lean_dec_ref.exit346

bb.cz:                                            ; preds = %lean_nat_lt.exit
  %i.fh = ptrtoint ptr %.0323 to i64
  %i.fi = and i64 %i.fh, 1
  %.not.i476 = icmp eq i64 %i.fi, 0
  br i1 %.not.i476, label %bb.da, label %lean_del_object.exit477

bb.da:                                            ; preds = %bb.cz
  tail call void @lean_free_object(ptr noundef nonnull %.0323) #6
  br label %lean_del_object.exit477

lean_del_object.exit477:                          ; preds = %bb.cz, %bb.da
  %i.fj = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00__private_Lake_Load_Resolve_0__Lake_addDependencyEntries_spec__0___redArg(ptr noundef nonnull %0, ptr noundef nonnull %i.eg, i64 noundef 0, i64 noundef %.mask, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef %1) ; 3 uses
  %i.fk = load i32, ptr %i.eg, align 8, !tbaa !12 ; 3 uses
  %i.fl = icmp sgt i32 %i.fk, 1
  br i1 %i.fl, label %bb.db, label %bb.dc, !prof !13

bb.db:                                            ; preds = %lean_del_object.exit477
  %i.fm = add nsw i32 %i.fk, -1
  store i32 %i.fm, ptr %i.eg, align 8, !tbaa !12
  br label %lean_dec_ref.exit346

bb.dc:                                            ; preds = %lean_del_object.exit477
  %.not.i345 = icmp eq i32 %i.fk, 0
  br i1 %.not.i345, label %lean_dec_ref.exit346, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.eg) #6
  br label %lean_dec_ref.exit346

lean_inc_ref.exit:                                ; preds = %bb.o, %bb.n, %bb.m, %bb.g, %bb.f, %bb.e
  %.sink = phi ptr [ %i.p, %bb.g ], [ %i.p, %bb.e ], [ %i.p, %bb.f ], [ %i.u, %bb.m ], [ %i.u, %bb.n ], [ %i.u, %bb.o ]
  %i.fn = tail call ptr @l_Lake_joinRelative(ptr noundef nonnull %i.d, ptr noundef %.sink) #6 ; 14 uses
  %.val.i.i536 = load i32, ptr %i.fn, align 4, !tbaa !12 ; 3 uses
  %i.fo = icmp sgt i32 %.val.i.i536, 0
  br i1 %i.fo, label %bb.de, label %bb.df, !prof !13

bb.de:                                            ; preds = %lean_inc_ref.exit
  %i.fp = add nuw i32 %.val.i.i536, 1
  store i32 %i.fp, ptr %i.fn, align 4, !tbaa !12
  br label %lean_inc_ref.exit538

bb.df:                                            ; preds = %lean_inc_ref.exit
  %.not.i.i537 = icmp eq i32 %.val.i.i536, 0
  br i1 %.not.i.i537, label %lean_inc_ref.exit538, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.fq = atomicrmw add ptr %i.fn, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit538

lean_inc_ref.exit538:                             ; preds = %bb.de, %bb.df, %bb.dg
  %i.fr = tail call ptr @l_Lake_Manifest_load(ptr noundef nonnull %i.fn) #6 ; 14 uses
  %i.fs = ptrtoint ptr %i.fr to i64               ; 2 uses
  %i.ft = and i64 %i.fs, 1
  %.not.i539 = icmp eq i64 %i.ft, 0               ; 3 uses
  br i1 %.not.i539, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %lean_inc_ref.exit538
  %i.fu = lshr i64 %i.fs, 1
  %i.fv = trunc i64 %i.fu to i32
  br label %lean_obj_tag.exit542

bb.di:                                            ; preds = %lean_inc_ref.exit538
  %i.fw = getelementptr i8, ptr %i.fr, i64 4
  %.val.i541 = load i32, ptr %i.fw, align 4
  %i.fx = lshr i32 %.val.i541, 24
  br label %lean_obj_tag.exit542

lean_obj_tag.exit542:                             ; preds = %bb.dh, %bb.di
  %.0.i540 = phi i32 [ %i.fv, %bb.dh ], [ %i.fx, %bb.di ]
  %i.fy = icmp eq i32 %.0.i540, 0
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !10 ; 12 uses
  %.val424 = load i32, ptr %i.fr, align 8, !tbaa !12
  %i.gb = icmp eq i32 %.val424, 1                 ; 2 uses
  br i1 %i.fy, label %bb.dj, label %bb.dv

bb.dj:                                            ; preds = %lean_obj_tag.exit542
  br i1 %i.gb, label %lean_dec.exit382, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.gc = ptrtoint ptr %i.ga to i64
  %i.gd = and i64 %i.gc, 1
  %.not.i364 = icmp eq i64 %i.gd, 0
  br i1 %.not.i364, label %bb.dl, label %lean_inc.exit365

bb.dl:                                            ; preds = %bb.dk
  %.val.i.i543 = load i32, ptr %i.ga, align 4, !tbaa !12 ; 3 uses
  %i.ge = icmp sgt i32 %.val.i.i543, 0
  br i1 %i.ge, label %bb.dm, label %bb.dn, !prof !13

bb.dm:                                            ; preds = %bb.dl
  %i.gf = add nuw i32 %.val.i.i543, 1
  store i32 %i.gf, ptr %i.ga, align 4, !tbaa !12
  br label %lean_inc.exit365

bb.dn:                                            ; preds = %bb.dl
  %.not.i.i544 = icmp eq i32 %.val.i.i543, 0
  br i1 %.not.i.i544, label %lean_inc.exit365, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.gg = atomicrmw add ptr %i.ga, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit365

lean_inc.exit365:                                 ; preds = %bb.do, %bb.dn, %bb.dm, %bb.dk
  br i1 %.not.i539, label %bb.dp, label %bb.dt

bb.dp:                                            ; preds = %lean_inc.exit365
  %i.gh = load i32, ptr %i.fr, align 8, !tbaa !12 ; 3 uses
  %i.gi = icmp sgt i32 %i.gh, 1
  br i1 %i.gi, label %bb.dq, label %bb.dr, !prof !13

bb.dq:                                            ; preds = %bb.dp
  %i.gj = add nsw i32 %i.gh, -1
  store i32 %i.gj, ptr %i.fr, align 8, !tbaa !12
  br label %bb.dt

bb.dr:                                            ; preds = %bb.dp
  %.not.i.i380 = icmp eq i32 %i.gh, 0
  br i1 %.not.i.i380, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fr) #6
  br label %bb.dt

lean_dec.exit382:                                 ; preds = %bb.dj
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fr, i64 4 ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4
  %i.gm = and i32 %i.gl, 16777215
  %i.gn = or disjoint i32 %i.gm, 16777216         ; 2 uses
  store i32 %i.gn, ptr %i.gk, align 4
  br label %.thread

bb.dt:                                            ; preds = %lean_inc.exit365, %bb.ds, %bb.dr, %bb.dq
  tail call void @lean_inc_heartbeat() #6
  %i.go = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #6 ; 5 uses
  %i.gp = icmp eq ptr %i.go, null
  br i1 %i.gp, label %bb.du, label %lean_alloc_ctor.exit546

bb.du:                                            ; preds = %bb.dt
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit546:                          ; preds = %bb.dt
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  store i32 1, ptr %i.go, align 4, !tbaa !12
  store i32 16842768, ptr %i.gq, align 4
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  store ptr %i.ga, ptr %i.gr, align 8, !tbaa !10
  br label %.thread

bb.dv:                                            ; preds = %lean_obj_tag.exit542
  br i1 %i.gb, label %lean_dec.exit, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.gs = ptrtoint ptr %i.ga to i64
  %i.gt = and i64 %i.gs, 1
  %.not.i363 = icmp eq i64 %i.gt, 0
  br i1 %.not.i363, label %bb.dx, label %lean_inc.exit

bb.dx:                                            ; preds = %bb.dw
  %.val.i.i547 = load i32, ptr %i.ga, align 4, !tbaa !12 ; 3 uses
  %i.gu = icmp sgt i32 %.val.i.i547, 0
  br i1 %i.gu, label %bb.dy, label %bb.dz, !prof !13

bb.dy:                                            ; preds = %bb.dx
  %i.gv = add nuw i32 %.val.i.i547, 1
  store i32 %i.gv, ptr %i.ga, align 4, !tbaa !12
  br label %lean_inc.exit

bb.dz:                                            ; preds = %bb.dx
  %.not.i.i548 = icmp eq i32 %.val.i.i547, 0
  br i1 %.not.i.i548, label %lean_inc.exit, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.gw = atomicrmw add ptr %i.ga, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.ea, %bb.dz, %bb.dy, %bb.dw
  br i1 %.not.i539, label %bb.eb, label %bb.ef

bb.eb:                                            ; preds = %lean_inc.exit
  %i.gx = load i32, ptr %i.fr, align 8, !tbaa !12 ; 3 uses
  %i.gy = icmp sgt i32 %i.gx, 1
  br i1 %i.gy, label %bb.ec, label %bb.ed, !prof !13

bb.ec:                                            ; preds = %bb.eb
  %i.gz = add nsw i32 %i.gx, -1
  store i32 %i.gz, ptr %i.fr, align 8, !tbaa !12
  br label %bb.ef

bb.ed:                                            ; preds = %bb.eb
  %.not.i.i = icmp eq i32 %i.gx, 0
  br i1 %.not.i.i, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fr) #6
  br label %bb.ef

lean_dec.exit:                                    ; preds = %bb.dv
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fr, i64 4 ; 2 uses
  %i.hb = load i32, ptr %i.ha, align 4
  %i.hc = and i32 %i.hb, 16777215                 ; 2 uses
  store i32 %i.hc, ptr %i.ha, align 4
  br label %.thread

bb.ef:                                            ; preds = %lean_inc.exit, %bb.ee, %bb.ed, %bb.ec
  tail call void @lean_inc_heartbeat() #6
  %i.hd = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #6 ; 5 uses
  %i.he = icmp eq ptr %i.hd, null
  br i1 %i.he, label %bb.eg, label %lean_alloc_ctor.exit550

bb.eg:                                            ; preds = %bb.ef
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit550:                          ; preds = %bb.ef
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 4
  store i32 1, ptr %i.hd, align 4, !tbaa !12
  store i32 65552, ptr %i.hf, align 4
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  store ptr %i.ga, ptr %i.hg, align 8, !tbaa !10
  br label %.thread

.thread:                                          ; preds = %lean_alloc_ctor.exit550, %lean_dec.exit, %lean_alloc_ctor.exit546, %lean_dec.exit382
  %.val.i439 = phi i32 [ 16842768, %lean_alloc_ctor.exit546 ], [ %i.gn, %lean_dec.exit382 ], [ %i.hc, %lean_dec.exit ], [ 65552, %lean_alloc_ctor.exit550 ]
  %.2320 = phi ptr [ %i.go, %lean_alloc_ctor.exit546 ], [ %i.fr, %lean_dec.exit382 ], [ %i.fr, %lean_dec.exit ], [ %i.hd, %lean_alloc_ctor.exit550 ] ; 13 uses
  %i.hh = ptrtoint ptr %.2320 to i64              ; 2 uses
  %i.hi = and i64 %i.hh, 1
  %.not.i437 = icmp eq i64 %i.hi, 0               ; 3 uses
  %3 = lshr i64 %i.hh, 1
  %4 = trunc i64 %3 to i32
  %5 = lshr i32 %.val.i439, 24
  %.0.i438 = select i1 %.not.i437, i32 %5, i32 %4
  %i.hj = icmp eq i32 %.0.i438, 0
  br i1 %i.hj, label %bb.p, label %bb.bv

lean_dec_ref.exit346:                             ; preds = %bb.dd, %bb.dc, %bb.db, %bb.cw, %lean_alloc_ctor.exit473, %bb.bd, %lean_alloc_ctor.exit458, %bb.bs, %lean_alloc_ctor.exit465
  %.13 = phi ptr [ %i.fj, %bb.dd ], [ %i.do, %lean_alloc_ctor.exit465 ], [ %i.cl, %lean_alloc_ctor.exit458 ], [ %.0334, %bb.bd ], [ %.0334, %bb.bs ], [ %i.fd, %lean_alloc_ctor.exit473 ], [ %.0323, %bb.cw ], [ %i.fj, %bb.db ], [ %i.fj, %bb.dc ]
  ret ptr %.13
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lake_Load_Resolve_0__Lake_addDependencyEntries___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l___private_Lake_Load_Resolve_0__Lake_addDependencyEntries(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %i.b = load i32, ptr %2, align 4, !tbaa !12     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %2, align 4, !tbaa !12
  br label %lean_dec_ref.exit

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #6
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.b, %bb.c, %bb.d
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define noalias nonnull ptr @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00__private_Lake_Load_Resolve_0__Lake_addDependencyEntries_spec__0(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef readnone captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00__private_Lake_Load_Resolve_0__Lake_addDependencyEntries_spec__0___redArg(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define noalias nonnull ptr @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00__private_Lake_Load_Resolve_0__Lake_addDependencyEntries_spec__0___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef readnone captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %.val20 = load i64, ptr %i.a, align 8, !tbaa !15
  %i.b = load i32, ptr %2, align 8, !tbaa !12     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %2, align 8, !tbaa !12
  br label %lean_dec.exit19

bb.c:                                             ; preds = %bb.a
  %.not.i.i17 = icmp eq i32 %i.b, 0
  br i1 %.not.i.i17, label %lean_dec.exit19, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #6
  br label %lean_dec.exit19

lean_dec.exit19:                                  ; preds = %bb.b, %bb.c, %bb.d
  %i.e = getelementptr i8, ptr %3, i64 8
  %.val = load i64, ptr %i.e, align 8, !tbaa !15
  %i.f = load i32, ptr %3, align 8, !tbaa !12     ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.f, !prof !13

bb.e:                                             ; preds = %lean_dec.exit19
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %3, align 8, !tbaa !12
  br label %lean_dec.exit

bb.f:                                             ; preds = %lean_dec.exit19
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.e, %bb.f, %bb.g
  %i.i = tail call noalias nonnull ptr @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00__private_Lake_Load_Resolve_0__Lake_addDependencyEntries_spec__0___redArg(ptr noundef %0, ptr noundef readonly %1, i64 noundef %.val20, i64 noundef %.val, ptr noundef %4, ptr noundef %5)
  %i.j = load i32, ptr %6, align 4, !tbaa !12     ; 3 uses
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %lean_dec.exit
  %i.l = add nsw i32 %i.j, -1
  store i32 %i.l, ptr %6, align 4, !tbaa !12
  br label %lean_dec_ref.exit14

bb.i:                                             ; preds = %lean_dec.exit
  %.not.i13 = icmp eq i32 %i.j, 0
  br i1 %.not.i13, label %lean_dec_ref.exit14, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %6) #6
  br label %lean_dec_ref.exit14

lean_dec_ref.exit14:                              ; preds = %bb.h, %bb.i, %bb.j
  %i.m = load i32, ptr %1, align 4, !tbaa !12     ; 3 uses
  %i.n = icmp sgt i32 %i.m, 1
  br i1 %i.n, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %lean_dec_ref.exit14
  %i.o = add nsw i32 %i.m, -1
  store i32 %i.o, ptr %1, align 4, !tbaa !12
  br label %lean_dec_ref.exit

bb.l:                                             ; preds = %lean_dec_ref.exit14
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.k, %bb.l, %bb.m
  ret ptr %i.i
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lake_Load_Resolve_0__Lake_updateAndMaterializeDep(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.c = tail call ptr @l_Std_DTreeMap_Internal_Impl_Const_get_x3f___at___00Lean_NameMap_find_x3f_spec__0___redArg(ptr noundef %3, ptr noundef %i.b) #6 ; 10 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 1
  %.not.i260 = icmp eq i64 %i.e, 0
  br i1 %.not.i260, label %lean_obj_tag.exit, label %lean_obj_tag.exit.thread

lean_obj_tag.exit:                                ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 4
  %.val.i = load i32, ptr %i.f, align 4
  %.mask = and i32 %.val.i, -16777216
  %i.g = icmp eq i32 %.mask, 16777216
  br i1 %i.g, label %bb.b, label %bb.ci

lean_obj_tag.exit.thread:                         ; preds = %bb.a
  %i.h = and i64 %i.d, 8589934590
  %i.i = icmp eq i64 %i.h, 2
  br i1 %i.i, label %bb.b, label %lean_dec.exit239

bb.b:                                             ; preds = %lean_obj_tag.exit.thread, %lean_obj_tag.exit
  %i.j = load i32, ptr %2, align 8, !tbaa !12     ; 3 uses
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.l = add nsw i32 %i.j, -1
  store i32 %i.l, ptr %2, align 8, !tbaa !12
  br label %lean_dec_ref.exit205

bb.d:                                             ; preds = %bb.b
  %.not.i204 = icmp eq i32 %i.j, 0
  br i1 %.not.i204, label %lean_dec_ref.exit205, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #6
  br label %lean_dec_ref.exit205

lean_dec_ref.exit205:                             ; preds = %bb.c, %bb.d, %bb.e
  %i.m = load i32, ptr %1, align 4, !tbaa !12     ; 3 uses
  %i.n = icmp sgt i32 %i.m, 1
  br i1 %i.n, label %bb.f, label %bb.g, !prof !13

bb.f:                                             ; preds = %lean_dec_ref.exit205
  %i.o = add nsw i32 %i.m, -1
  store i32 %i.o, ptr %1, align 4, !tbaa !12
  br label %lean_dec_ref.exit203

bb.g:                                             ; preds = %lean_dec_ref.exit205
  %.not.i202 = icmp eq i32 %i.m, 0
  br i1 %.not.i202, label %lean_dec_ref.exit203, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec_ref.exit203

lean_dec_ref.exit203:                             ; preds = %bb.f, %bb.g, %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !10   ; 5 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = and i64 %i.r, 1
  %.not.i217 = icmp eq i64 %i.s, 0
  br i1 %.not.i217, label %bb.i, label %lean_inc.exit218

bb.i:                                             ; preds = %lean_dec_ref.exit203
  %.val.i.i = load i32, ptr %i.q, align 4, !tbaa !12 ; 3 uses
  %i.t = icmp sgt i32 %.val.i.i, 0
  br i1 %i.t, label %bb.j, label %bb.k, !prof !13

bb.j:                                             ; preds = %bb.i
  %i.u = add nuw i32 %.val.i.i, 1
  store i32 %i.u, ptr %i.q, align 4, !tbaa !12
  br label %lean_inc.exit218

bb.k:                                             ; preds = %bb.i
  %.not.i.i262 = icmp eq i32 %.val.i.i, 0
end_hunk_0
begin_hunk_1_@l___private_Lake_Load_Resolve_0__Lake_updateAndMaterializeDep___at___00__private_Lake_Load_Resolve_0__Lake_Workspace_updateAndMaterializeCore___elam__0_spec__0:bb.a
  %.val = load i32, ptr %i.gp, align 8, !tbaa !12
  %i.ij = icmp eq i32 %.val, 1
  br i1 %i.ij, label %lean_dec.exit243, label %bb.fi

bb.fi:                                            ; preds = %lean_dec.exit223
  %i.ik = ptrtoint ptr %i.ii to i64
  %i.il = and i64 %i.ik, 1
  %.not.i206 = icmp eq i64 %i.il, 0
  br i1 %.not.i206, label %bb.fj, label %lean_inc.exit

bb.fj:                                            ; preds = %bb.fi
  %.val.i.i334 = load i32, ptr %i.ii, align 4, !tbaa !12 ; 3 uses
  %i.im = icmp sgt i32 %.val.i.i334, 0
  br i1 %i.im, label %bb.fk, label %bb.fl, !prof !13

bb.fk:                                            ; preds = %bb.fj
  %i.in = add nuw i32 %.val.i.i334, 1
  store i32 %i.in, ptr %i.ii, align 4, !tbaa !12
  br label %lean_inc.exit

bb.fl:                                            ; preds = %bb.fj
  %.not.i.i335 = icmp eq i32 %.val.i.i334, 0
  br i1 %.not.i.i335, label %lean_inc.exit, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.io = atomicrmw add ptr %i.ii, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.fm, %bb.fl, %bb.fk, %bb.fi
  br i1 %.not.i319, label %bb.fn, label %bb.fr

bb.fn:                                            ; preds = %lean_inc.exit
  %i.ip = load i32, ptr %i.gp, align 8, !tbaa !12 ; 3 uses
  %i.iq = icmp sgt i32 %i.ip, 1
  br i1 %i.iq, label %bb.fo, label %bb.fp, !prof !13

bb.fo:                                            ; preds = %bb.fn
  %i.ir = add nsw i32 %i.ip, -1
  store i32 %i.ir, ptr %i.gp, align 8, !tbaa !12
  br label %bb.fr

bb.fp:                                            ; preds = %bb.fn
  %.not.i.i = icmp eq i32 %i.ip, 0
  br i1 %.not.i.i, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gp) #6
  br label %bb.fr

bb.fr:                                            ; preds = %lean_inc.exit, %bb.fq, %bb.fp, %bb.fo
  tail call void @lean_inc_heartbeat() #6
  %i.is = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #6 ; 2 uses
  %i.it = icmp eq ptr %i.is, null
  br i1 %i.it, label %bb.fs, label %lean_dec.exit243.sink.split.sink.split

bb.fs:                                            ; preds = %bb.fr
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_dec.exit243.sink.split.sink.split:           ; preds = %bb.fr, %bb.fb, %bb.cg, %bb.bq
  %.sink394 = phi ptr [ %i.cz, %bb.bq ], [ %i.dr, %bb.cg ], [ %i.ia, %bb.fb ], [ %i.is, %bb.fr ] ; 3 uses
  %.sink391 = phi i32 [ 65552, %bb.bq ], [ 16842768, %bb.cg ], [ 65552, %bb.fb ], [ 16842768, %bb.fr ]
  %.sink.ph = phi ptr [ %i.cu, %bb.bq ], [ %i.dh, %bb.cg ], [ %i.hv, %bb.fb ], [ %i.ii, %bb.fr ]
  %i.iu = getelementptr inbounds nuw i8, ptr %.sink394, i64 4
  store i32 1, ptr %.sink394, align 4, !tbaa !12
  store i32 %.sink391, ptr %i.iu, align 4
  br label %lean_dec.exit243.sink.split

lean_dec.exit243.sink.split:                      ; preds = %lean_dec.exit243.sink.split.sink.split, %lean_alloc_ctor.exit332, %lean_alloc_ctor.exit
  %.0176.sink = phi ptr [ %.0187, %lean_alloc_ctor.exit ], [ %.0176, %lean_alloc_ctor.exit332 ], [ %.sink394, %lean_dec.exit243.sink.split.sink.split ] ; 2 uses
  %.sink = phi ptr [ %i.cu, %lean_alloc_ctor.exit ], [ %i.hv, %lean_alloc_ctor.exit332 ], [ %.sink.ph, %lean_dec.exit243.sink.split.sink.split ]
  %i.iv = getelementptr inbounds nuw i8, ptr %.0176.sink, i64 8
  store ptr %.sink, ptr %i.iv, align 8, !tbaa !10
  br label %lean_dec.exit243

lean_dec.exit243:                                 ; preds = %lean_dec.exit243.sink.split, %lean_dec.exit223, %lean_dec.exit247
  %.6 = phi ptr [ %i.by, %lean_dec.exit247 ], [ %i.gp, %lean_dec.exit223 ], [ %.0176.sink, %lean_dec.exit243.sink.split ]
  ret ptr %.6
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lake_Load_Resolve_0__Lake_updateAndMaterializeDep___at___00__private_Lake_Load_Resolve_0__Lake_Workspace_updateAndMaterializeCore___elam__0_spec__0___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readnone captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l___private_Lake_Load_Resolve_0__Lake_updateAndMaterializeDep___at___00__private_Lake_Load_Resolve_0__Lake_Workspace_updateAndMaterializeCore___elam__0_spec__0(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %i.b = load i32, ptr %0, align 4, !tbaa !12     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %0, align 4, !tbaa !12
  br label %lean_dec_ref.exit

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.b, %bb.c, %bb.d
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lake_Load_Resolve_0__Lake_addDependencyEntries___at___00__private_Lake_Load_Resolve_0__Lake_Workspace_updateAndMaterializeCore___elam__0_spec__1(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !10   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !10   ; 3 uses
  %i.i = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i435 = icmp eq i64 %i.j, 0
  br i1 %.not.i435, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = lshr i64 %i.i, 1
  %i.l = trunc i64 %i.k to i32
  br label %lean_obj_tag.exit

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %i.h, i64 4
  %.val.i = load i32, ptr %i.m, align 4
  %i.n = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.b, %bb.c
  %.0.i436 = phi i32 [ %i.l, %bb.b ], [ %i.n, %bb.c ]
  %i.o = icmp eq i32 %.0.i436, 0
  br i1 %i.o, label %bb.d, label %bb.h

bb.d:                                             ; preds = %lean_obj_tag.exit
  %i.p = load ptr, ptr @l_Lake_defaultManifestFile, align 8, !tbaa !10 ; 3 uses
  %.val.i.i = load i32, ptr %i.d, align 4, !tbaa !12 ; 3 uses
  %i.q = icmp sgt i32 %.val.i.i, 0
  br i1 %i.q, label %bb.e, label %bb.f, !prof !13

bb.e:                                             ; preds = %bb.d
  %i.r = add nuw i32 %.val.i.i, 1
  store i32 %i.r, ptr %i.d, align 4, !tbaa !12
  br label %lean_inc_ref.exit

bb.f:                                             ; preds = %bb.d
  %.not.i.i437 = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i437, label %lean_inc_ref.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = atomicrmw add ptr %i.d, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit

bb.h:                                             ; preds = %lean_obj_tag.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !10   ; 7 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = and i64 %i.v, 1
  %.not.i383 = icmp eq i64 %i.w, 0
  br i1 %.not.i383, label %bb.i, label %lean_inc.exit384

bb.i:                                             ; preds = %bb.h
  %.val.i.i438 = load i32, ptr %i.u, align 4, !tbaa !12 ; 3 uses
  %i.x = icmp sgt i32 %.val.i.i438, 0
  br i1 %i.x, label %bb.j, label %bb.k, !prof !13

bb.j:                                             ; preds = %bb.i
  %i.y = add nuw i32 %.val.i.i438, 1
  store i32 %i.y, ptr %i.u, align 4, !tbaa !12
  br label %lean_inc.exit384

bb.k:                                             ; preds = %bb.i
  %.not.i.i439 = icmp eq i32 %.val.i.i438, 0
  br i1 %.not.i.i439, label %lean_inc.exit384, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = atomicrmw add ptr %i.u, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit384

lean_inc.exit384:                                 ; preds = %bb.l, %bb.k, %bb.j, %bb.h
  %.val.i.i441 = load i32, ptr %i.d, align 4, !tbaa !12 ; 3 uses
  %i.aa = icmp sgt i32 %.val.i.i441, 0
  br i1 %i.aa, label %bb.m, label %bb.n, !prof !13

bb.m:                                             ; preds = %lean_inc.exit384
  %i.ab = add nuw i32 %.val.i.i441, 1
  store i32 %i.ab, ptr %i.d, align 4, !tbaa !12
  br label %lean_inc_ref.exit

bb.n:                                             ; preds = %lean_inc.exit384
  %.not.i.i442 = icmp eq i32 %.val.i.i441, 0
  br i1 %.not.i.i442, label %lean_inc_ref.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = atomicrmw add ptr %i.d, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit

bb.p:                                             ; preds = %.thread
  %i.ad = ptrtoint ptr %i.f to i64
  %i.ae = and i64 %i.ad, 1
  %.not.i381 = icmp eq i64 %i.ae, 0
  br i1 %.not.i381, label %bb.q, label %lean_inc.exit382

bb.q:                                             ; preds = %bb.p
  %.val.i.i448 = load i32, ptr %i.f, align 4, !tbaa !12 ; 3 uses
  %i.af = icmp sgt i32 %.val.i.i448, 0
  br i1 %i.af, label %bb.r, label %bb.s, !prof !13

bb.r:                                             ; preds = %bb.q
  %i.ag = add nuw i32 %.val.i.i448, 1
  store i32 %i.ag, ptr %i.f, align 4, !tbaa !12
  br label %lean_inc.exit382

bb.s:                                             ; preds = %bb.q
  %.not.i.i449 = icmp eq i32 %.val.i.i448, 0
  br i1 %.not.i.i449, label %lean_inc.exit382, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ah = atomicrmw add ptr %i.f, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit382

lean_inc.exit382:                                 ; preds = %bb.t, %bb.s, %bb.r, %bb.p
  %i.ai = load i32, ptr %1, align 8, !tbaa !12    ; 3 uses
  %i.aj = icmp sgt i32 %i.ai, 1
  br i1 %i.aj, label %bb.u, label %bb.v, !prof !13

bb.u:                                             ; preds = %lean_inc.exit382
  %i.ak = add nsw i32 %i.ai, -1
  store i32 %i.ak, ptr %1, align 8, !tbaa !12
  br label %lean_dec_ref.exit369

bb.v:                                             ; preds = %lean_inc.exit382
  %.not.i368 = icmp eq i32 %i.ai, 0
  br i1 %.not.i368, label %lean_dec_ref.exit369, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec_ref.exit369

lean_dec_ref.exit369:                             ; preds = %bb.u, %bb.v, %bb.w
  %i.al = getelementptr inbounds nuw i8, ptr %.2321, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !10 ; 12 uses
  %.3304.val434 = load i32, ptr %.2321, align 8, !tbaa !12
  %i.an = icmp eq i32 %.3304.val434, 1            ; 3 uses
  %.pre = ptrtoint ptr %i.am to i64               ; 2 uses
  %.pre568 = and i64 %.pre, 1                     ; 2 uses
  br i1 %i.an, label %lean_dec.exit417, label %bb.x

bb.x:                                             ; preds = %lean_dec_ref.exit369
  %.not.i379 = icmp eq i64 %.pre568, 0
  br i1 %.not.i379, label %bb.y, label %lean_inc.exit380

bb.y:                                             ; preds = %bb.x
  %.val.i.i451 = load i32, ptr %i.am, align 4, !tbaa !12 ; 3 uses
  %i.ao = icmp sgt i32 %.val.i.i451, 0
  br i1 %i.ao, label %bb.z, label %bb.aa, !prof !13

bb.z:                                             ; preds = %bb.y
  %i.ap = add nuw i32 %.val.i.i451, 1
  store i32 %i.ap, ptr %i.am, align 4, !tbaa !12
  br label %lean_inc.exit380

bb.aa:                                            ; preds = %bb.y
  %.not.i.i452 = icmp eq i32 %.val.i.i451, 0
  br i1 %.not.i.i452, label %lean_inc.exit380, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.aq = atomicrmw add ptr %i.am, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit380

lean_inc.exit380:                                 ; preds = %bb.ab, %bb.aa, %bb.z, %bb.x
  br i1 %.not.i444, label %bb.ac, label %lean_dec.exit417

bb.ac:                                            ; preds = %lean_inc.exit380
  %i.ar = load i32, ptr %.2321, align 8, !tbaa !12 ; 3 uses
  %i.as = icmp sgt i32 %i.ar, 1
  br i1 %i.as, label %bb.ad, label %bb.ae, !prof !13

bb.ad:                                            ; preds = %bb.ac
  %i.at = add nsw i32 %i.ar, -1
  store i32 %i.at, ptr %.2321, align 8, !tbaa !12
  br label %lean_dec.exit417

bb.ae:                                            ; preds = %bb.ac
  %.not.i.i415 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i415, label %lean_dec.exit417, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.2321) #6
  br label %lean_dec.exit417

lean_dec.exit417:                                 ; preds = %lean_dec_ref.exit369, %lean_inc.exit380, %bb.af, %bb.ae, %bb.ad
  %.0335 = phi ptr [ inttoptr (i64 1 to ptr), %bb.ad ], [ inttoptr (i64 1 to ptr), %lean_inc.exit380 ], [ inttoptr (i64 1 to ptr), %bb.af ], [ inttoptr (i64 1 to ptr), %bb.ae ], [ %.2321, %lean_dec_ref.exit369 ] ; 4 uses
  %.not.i454 = icmp eq i64 %.pre568, 0
  br i1 %.not.i454, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %lean_dec.exit417
  %i.au = lshr i64 %.pre, 1
  %i.av = trunc i64 %i.au to i32
  br label %lean_obj_tag.exit457

bb.ah:                                            ; preds = %lean_dec.exit417
  %i.aw = getelementptr i8, ptr %i.am, i64 4
  %.val.i456 = load i32, ptr %i.aw, align 4
  %i.ax = lshr i32 %.val.i456, 24
  br label %lean_obj_tag.exit457

lean_obj_tag.exit457:                             ; preds = %bb.ag, %bb.ah
  %.0.i455 = phi i32 [ %i.av, %bb.ag ], [ %i.ax, %bb.ah ]
  %i.ay = icmp eq i32 %.0.i455, 11
  br i1 %i.ay, label %bb.ai, label %bb.bd

bb.ai:                                            ; preds = %lean_obj_tag.exit457
  %.val.i458 = load i32, ptr %i.am, align 4, !tbaa !12 ; 4 uses
  %i.az = icmp eq i32 %.val.i458, 1
  br i1 %i.az, label %.preheader.i, label %bb.ar

.preheader.i:                                     ; preds = %bb.ai
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !10 ; 4 uses
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = and i64 %i.bc, 1
  %.not.i7.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i7.i, label %bb.aj, label %lean_dec.exit.i

bb.aj:                                            ; preds = %.preheader.i
  %i.be = load i32, ptr %i.bb, align 4, !tbaa !12 ; 3 uses
  %i.bf = icmp sgt i32 %i.be, 1
  br i1 %i.bf, label %bb.ak, label %bb.al, !prof !13

bb.ak:                                            ; preds = %bb.aj
  %i.bg = add nsw i32 %i.be, -1
  store i32 %i.bg, ptr %i.bb, align 4, !tbaa !12
  br label %lean_dec.exit.i

bb.al:                                            ; preds = %bb.aj
  %.not.i.i.i = icmp eq i32 %i.be, 0
  br i1 %.not.i.i.i, label %lean_dec.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bb) #6
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.am, %bb.al, %bb.ak, %.preheader.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !10 ; 4 uses
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = and i64 %i.bj, 1
  %.not.i7.i.1 = icmp eq i64 %i.bk, 0
  br i1 %.not.i7.i.1, label %bb.an, label %lean_dec.exit.i.1

bb.an:                                            ; preds = %lean_dec.exit.i
  %i.bl = load i32, ptr %i.bi, align 4, !tbaa !12 ; 3 uses
  %i.bm = icmp sgt i32 %i.bl, 1
  br i1 %i.bm, label %bb.aq, label %bb.ao, !prof !13

bb.ao:                                            ; preds = %bb.an
  %.not.i.i.i.1 = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i.i.1, label %lean_dec.exit.i.1, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bi) #6
  br label %lean_dec.exit.i.1

bb.aq:                                            ; preds = %bb.an
  %i.bn = add nsw i32 %i.bl, -1
  store i32 %i.bn, ptr %i.bi, align 4, !tbaa !12
  br label %lean_dec.exit.i.1

lean_dec.exit.i.1:                                ; preds = %bb.aq, %bb.ap, %bb.ao, %lean_dec.exit.i
  tail call void @lean_free_object(ptr noundef nonnull %i.am) #6
  br label %lean_dec_ref_known.exit

bb.ar:                                            ; preds = %bb.ai
  %i.bo = icmp sgt i32 %.val.i458, 1
  br i1 %i.bo, label %bb.as, label %bb.at, !prof !13

bb.as:                                            ; preds = %bb.ar
  %i.bp = add nsw i32 %.val.i458, -1
  store i32 %i.bp, ptr %i.am, align 4, !tbaa !12
  br label %lean_dec_ref_known.exit

bb.at:                                            ; preds = %bb.ar
  %.not.i.i459 = icmp eq i32 %.val.i458, 0
  br i1 %.not.i.i459, label %lean_dec_ref_known.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.am) #6
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i.1, %bb.as, %bb.at, %bb.au
  %i.bq = tail call ptr @l_Lean_Name_toString(ptr noundef %i.f, i8 noundef zeroext 0) #6
  %i.br = tail call ptr @lean_string_append(ptr noundef %i.bq, ptr noundef nonnull @l___private_Lake_Load_Resolve_0__Lake_addDependencyEntries___closed__0_value) #6
  %i.bs = tail call ptr @lean_string_append(ptr noundef %i.br, ptr noundef nonnull %i.fl) #6
  %i.bt = load i32, ptr %i.fl, align 4, !tbaa !12 ; 3 uses
  %i.bu = icmp sgt i32 %i.bt, 1
  br i1 %i.bu, label %bb.av, label %bb.aw, !prof !13

bb.av:                                            ; preds = %lean_dec_ref_known.exit
  %i.bv = add nsw i32 %i.bt, -1
  store i32 %i.bv, ptr %i.fl, align 4, !tbaa !12
  br label %lean_dec_ref.exit367

bb.aw:                                            ; preds = %lean_dec_ref_known.exit
  %.not.i366 = icmp eq i32 %i.bt, 0
  br i1 %.not.i366, label %lean_dec_ref.exit367, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fl) #6
  br label %lean_dec_ref.exit367

lean_dec_ref.exit367:                             ; preds = %bb.av, %bb.aw, %bb.ax
  tail call void @lean_inc_heartbeat() #6
  %i.bw = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #6 ; 6 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.ay, label %lean_alloc_ctor.exit

bb.ay:                                            ; preds = %lean_dec_ref.exit367
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_dec_ref.exit367
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store i64 2, ptr %i.bz, align 8, !tbaa !15
  store i32 1, ptr %i.bw, align 8, !tbaa !12
  store i32 65560, ptr %i.by, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %i.bs, ptr %i.ca, align 8, !tbaa !10
  %i.cb = tail call ptr @lean_apply_2(ptr noundef %0, ptr noundef nonnull %i.bw, ptr noundef nonnull inttoptr (i64 1 to ptr)) #6
  tail call void @lean_inc_heartbeat() #6
  %i.cc = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #6 ; 7 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.az, label %lean_alloc_ctor.exit461

bb.az:                                            ; preds = %lean_alloc_ctor.exit
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit461:                          ; preds = %lean_alloc_ctor.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  store i32 1, ptr %i.cc, align 4, !tbaa !12
  store i32 131096, ptr %i.ce, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store ptr %i.cb, ptr %i.cf, align 8, !tbaa !10
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store ptr %2, ptr %i.cg, align 8, !tbaa !10
  br i1 %i.an, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %lean_alloc_ctor.exit461
  %i.ch = getelementptr inbounds nuw i8, ptr %.0335, i64 8
  store ptr %i.cc, ptr %i.ch, align 8, !tbaa !10
  br label %lean_dec_ref.exit351

bb.bb:                                            ; preds = %lean_alloc_ctor.exit461
  tail call void @lean_inc_heartbeat() #6
  %i.ci = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #6 ; 5 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.bc, label %lean_alloc_ctor.exit462

bb.bc:                                            ; preds = %bb.bb
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit462:                          ; preds = %bb.bb
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  store i32 1, ptr %i.ci, align 4, !tbaa !12
  store i32 65552, ptr %i.ck, align 4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %i.cc, ptr %i.cl, align 8, !tbaa !10
  br label %lean_dec_ref.exit351

bb.bd:                                            ; preds = %lean_obj_tag.exit457
  %i.cm = load i32, ptr %i.fl, align 4, !tbaa !12 ; 3 uses
  %i.cn = icmp sgt i32 %i.cm, 1
  br i1 %i.cn, label %bb.be, label %bb.bf, !prof !13

bb.be:                                            ; preds = %bb.bd
  %i.co = add nsw i32 %i.cm, -1
  store i32 %i.co, ptr %i.fl, align 4, !tbaa !12
  br label %lean_dec_ref.exit365

bb.bf:                                            ; preds = %bb.bd
  %.not.i364 = icmp eq i32 %i.cm, 0
  br i1 %.not.i364, label %lean_dec_ref.exit365, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fl) #6
  br label %lean_dec_ref.exit365

lean_dec_ref.exit365:                             ; preds = %bb.be, %bb.bf, %bb.bg
  %i.cp = tail call ptr @l_Lean_Name_toString(ptr noundef %i.f, i8 noundef zeroext 0) #6
  %i.cq = tail call ptr @lean_string_append(ptr noundef %i.cp, ptr noundef nonnull @l___private_Lake_Load_Resolve_0__Lake_addDependencyEntries___closed__1_value) #6
  %i.cr = tail call ptr @lean_io_error_to_string(ptr noundef %i.am) #6 ; 4 uses
  %i.cs = tail call ptr @lean_string_append(ptr noundef %i.cq, ptr noundef %i.cr) #6
  %i.ct = load i32, ptr %i.cr, align 4, !tbaa !12 ; 3 uses
  %i.cu = icmp sgt i32 %i.ct, 1
  br i1 %i.cu, label %bb.bh, label %bb.bi, !prof !13

bb.bh:                                            ; preds = %lean_dec_ref.exit365
  %i.cv = add nsw i32 %i.ct, -1
  store i32 %i.cv, ptr %i.cr, align 4, !tbaa !12
  br label %lean_dec_ref.exit363

bb.bi:                                            ; preds = %lean_dec_ref.exit365
  %.not.i362 = icmp eq i32 %i.ct, 0
  br i1 %.not.i362, label %lean_dec_ref.exit363, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cr) #6
  br label %lean_dec_ref.exit363

lean_dec_ref.exit363:                             ; preds = %bb.bh, %bb.bi, %bb.bj
  tail call void @lean_inc_heartbeat() #6
  %i.cw = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #6 ; 6 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %bb.bk, label %lean_alloc_ctor.exit464

bb.bk:                                            ; preds = %lean_dec_ref.exit363
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit464:                          ; preds = %lean_dec_ref.exit363
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store i64 2, ptr %i.cz, align 8, !tbaa !15
  store i32 1, ptr %i.cw, align 8, !tbaa !12
  store i32 65560, ptr %i.cy, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store ptr %i.cs, ptr %i.da, align 8, !tbaa !10
  %i.db = tail call ptr @lean_apply_2(ptr noundef %0, ptr noundef nonnull %i.cw, ptr noundef nonnull inttoptr (i64 1 to ptr)) #6
  tail call void @lean_inc_heartbeat() #6
  %i.dc = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #6 ; 7 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.bl, label %lean_alloc_ctor.exit465

bb.bl:                                            ; preds = %lean_alloc_ctor.exit464
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit465:                          ; preds = %lean_alloc_ctor.exit464
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  store i32 1, ptr %i.dc, align 4, !tbaa !12
  store i32 131096, ptr %i.de, align 4
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store ptr %i.db, ptr %i.df, align 8, !tbaa !10
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store ptr %2, ptr %i.dg, align 8, !tbaa !10
  br i1 %i.an, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %lean_alloc_ctor.exit465
  %i.dh = getelementptr inbounds nuw i8, ptr %.0335, i64 8
  store ptr %i.dc, ptr %i.dh, align 8, !tbaa !10
  br label %lean_dec_ref.exit351

bb.bn:                                            ; preds = %lean_alloc_ctor.exit465
  tail call void @lean_inc_heartbeat() #6
  %i.di = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #6 ; 5 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %bb.bo, label %lean_alloc_ctor.exit466

bb.bo:                                            ; preds = %bb.bn
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit466:                          ; preds = %bb.bn
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  store i32 1, ptr %i.di, align 4, !tbaa !12
  store i32 65552, ptr %i.dk, align 4
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store ptr %i.dc, ptr %i.dl, align 8, !tbaa !10
  br label %lean_dec_ref.exit351

bb.bp:                                            ; preds = %.thread
  %i.dm = load i32, ptr %i.fl, align 4, !tbaa !12 ; 3 uses
  %i.dn = icmp sgt i32 %i.dm, 1
  br i1 %i.dn, label %bb.bq, label %bb.br, !prof !13

bb.bq:                                            ; preds = %bb.bp
  %i.do = add nsw i32 %i.dm, -1
  store i32 %i.do, ptr %i.fl, align 4, !tbaa !12
  br label %lean_dec_ref.exit361

bb.br:                                            ; preds = %bb.bp
  %.not.i360 = icmp eq i32 %i.dm, 0
  br i1 %.not.i360, label %lean_dec_ref.exit361, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fl) #6
  br label %lean_dec_ref.exit361

lean_dec_ref.exit361:                             ; preds = %bb.bq, %bb.br, %bb.bs
  %i.dp = load i32, ptr %0, align 4, !tbaa !12    ; 3 uses
  %i.dq = icmp sgt i32 %i.dp, 1
  br i1 %i.dq, label %bb.bt, label %bb.bu, !prof !13

bb.bt:                                            ; preds = %lean_dec_ref.exit361
  %i.dr = add nsw i32 %i.dp, -1
  store i32 %i.dr, ptr %0, align 4, !tbaa !12
  br label %lean_dec_ref.exit359

bb.bu:                                            ; preds = %lean_dec_ref.exit361
  %.not.i358 = icmp eq i32 %i.dp, 0
  br i1 %.not.i358, label %lean_dec_ref.exit359, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec_ref.exit359

lean_dec_ref.exit359:                             ; preds = %bb.bt, %bb.bu, %bb.bv
  %i.ds = getelementptr inbounds nuw i8, ptr %.2321, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !10 ; 8 uses
  %.3304.val = load i32, ptr %.2321, align 8, !tbaa !12
  %i.du = icmp eq i32 %.3304.val, 1               ; 2 uses
  br i1 %i.du, label %lean_dec.exit413, label %bb.bw

bb.bw:                                            ; preds = %lean_dec_ref.exit359
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = and i64 %i.dv, 1
  %.not.i377 = icmp eq i64 %i.dw, 0
  br i1 %.not.i377, label %bb.bx, label %lean_inc.exit378

bb.bx:                                            ; preds = %bb.bw
  %.val.i.i467 = load i32, ptr %i.dt, align 4, !tbaa !12 ; 3 uses
  %i.dx = icmp sgt i32 %.val.i.i467, 0
  br i1 %i.dx, label %bb.by, label %bb.bz, !prof !13

bb.by:                                            ; preds = %bb.bx
  %i.dy = add nuw i32 %.val.i.i467, 1
  store i32 %i.dy, ptr %i.dt, align 4, !tbaa !12
  br label %lean_inc.exit378

bb.bz:                                            ; preds = %bb.bx
  %.not.i.i468 = icmp eq i32 %.val.i.i467, 0
  br i1 %.not.i.i468, label %lean_inc.exit378, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.dz = atomicrmw add ptr %i.dt, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit378

lean_inc.exit378:                                 ; preds = %bb.ca, %bb.bz, %bb.by, %bb.bw
  br i1 %.not.i444, label %bb.cb, label %lean_dec.exit413

bb.cb:                                            ; preds = %lean_inc.exit378
  %i.ea = load i32, ptr %.2321, align 8, !tbaa !12 ; 3 uses
  %i.eb = icmp sgt i32 %i.ea, 1
  br i1 %i.eb, label %bb.cc, label %bb.cd, !prof !13

bb.cc:                                            ; preds = %bb.cb
  %i.ec = add nsw i32 %i.ea, -1
  store i32 %i.ec, ptr %.2321, align 8, !tbaa !12
  br label %lean_dec.exit413

bb.cd:                                            ; preds = %bb.cb
  %.not.i.i411 = icmp eq i32 %i.ea, 0
  br i1 %.not.i.i411, label %lean_dec.exit413, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.2321) #6
  br label %lean_dec.exit413

lean_dec.exit413:                                 ; preds = %lean_inc.exit378, %bb.ce, %bb.cd, %bb.cc, %lean_dec_ref.exit359
  %.0324 = phi ptr [ %.2321, %lean_dec_ref.exit359 ], [ inttoptr (i64 1 to ptr), %bb.cc ], [ inttoptr (i64 1 to ptr), %bb.cd ], [ inttoptr (i64 1 to ptr), %bb.ce ], [ inttoptr (i64 1 to ptr), %lean_inc.exit378 ] ; 5 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !10 ; 11 uses
  %.val.i.i470 = load i32, ptr %i.ee, align 4, !tbaa !12 ; 3 uses
  %i.ef = icmp sgt i32 %.val.i.i470, 0
  br i1 %i.ef, label %bb.cf, label %bb.cg, !prof !13

bb.cf:                                            ; preds = %lean_dec.exit413
  %i.eg = add nuw i32 %.val.i.i470, 1
  store i32 %i.eg, ptr %i.ee, align 4, !tbaa !12
  br label %lean_inc_ref.exit472

bb.cg:                                            ; preds = %lean_dec.exit413
  %.not.i.i471 = icmp eq i32 %.val.i.i470, 0
  br i1 %.not.i.i471, label %lean_inc_ref.exit472, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.eh = atomicrmw add ptr %i.ee, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit472

lean_inc_ref.exit472:                             ; preds = %bb.ch, %bb.cg, %bb.cf
  %i.ei = load i32, ptr %i.dt, align 8, !tbaa !12 ; 3 uses
  %i.ej = icmp sgt i32 %i.ei, 1
  br i1 %i.ej, label %bb.ci, label %bb.cj, !prof !13

bb.ci:                                            ; preds = %lean_inc_ref.exit472
  %i.ek = add nsw i32 %i.ei, -1
  store i32 %i.ek, ptr %i.dt, align 8, !tbaa !12
  br label %lean_nat_lt.exit

bb.cj:                                            ; preds = %lean_inc_ref.exit472
  %.not.i.i407 = icmp eq i32 %i.ei, 0
  br i1 %.not.i.i407, label %lean_nat_lt.exit, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dt) #6
  br label %lean_nat_lt.exit

lean_nat_lt.exit:                                 ; preds = %bb.ck, %bb.cj, %bb.ci
  %i.el = getelementptr i8, ptr %i.ee, i64 8
  %.val = load i64, ptr %i.el, align 8, !tbaa !15
  %.mask = and i64 %.val, 9223372036854775807     ; 2 uses
  %.not = icmp eq i64 %.mask, 0
  br i1 %.not, label %bb.cl, label %bb.cw

bb.cl:                                            ; preds = %lean_nat_lt.exit
  %i.em = load i32, ptr %i.ee, align 8, !tbaa !12 ; 3 uses
  %i.en = icmp sgt i32 %i.em, 1
  br i1 %i.en, label %bb.cm, label %bb.cn, !prof !13

bb.cm:                                            ; preds = %bb.cl
  %i.eo = add nsw i32 %i.em, -1
  store i32 %i.eo, ptr %i.ee, align 8, !tbaa !12
  br label %lean_dec_ref.exit357

bb.cn:                                            ; preds = %bb.cl
  %.not.i356 = icmp eq i32 %i.em, 0
  br i1 %.not.i356, label %lean_dec_ref.exit357, label %bb.co

bb.co:                                            ; preds = %bb.cn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ee) #6
  br label %lean_dec_ref.exit357

lean_dec_ref.exit357:                             ; preds = %bb.cm, %bb.cn, %bb.co
  %i.ep = load i32, ptr %1, align 8, !tbaa !12    ; 3 uses
  %i.eq = icmp sgt i32 %i.ep, 1
  br i1 %i.eq, label %bb.cp, label %bb.cq, !prof !13

bb.cp:                                            ; preds = %lean_dec_ref.exit357
  %i.er = add nsw i32 %i.ep, -1
  store i32 %i.er, ptr %1, align 8, !tbaa !12
  br label %lean_dec_ref.exit355

bb.cq:                                            ; preds = %lean_dec_ref.exit357
  %.not.i354 = icmp eq i32 %i.ep, 0
  br i1 %.not.i354, label %lean_dec_ref.exit355, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec_ref.exit355

lean_dec_ref.exit355:                             ; preds = %bb.cp, %bb.cq, %bb.cr
  tail call void @lean_inc_heartbeat() #6
  %i.es = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #6 ; 7 uses
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %bb.cs, label %lean_alloc_ctor.exit473

bb.cs:                                            ; preds = %lean_dec_ref.exit355
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit473:                          ; preds = %lean_dec_ref.exit355
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  store i32 1, ptr %i.es, align 4, !tbaa !12
  store i32 131096, ptr %i.eu, align 4
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.ev, align 8, !tbaa !10
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  store ptr %2, ptr %i.ew, align 8, !tbaa !10
  br i1 %i.du, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %lean_alloc_ctor.exit473
  %i.ex = getelementptr inbounds nuw i8, ptr %.0324, i64 4 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4
  %i.ez = and i32 %i.ey, 16777215
  store i32 %i.ez, ptr %i.ex, align 4
  %i.fa = getelementptr inbounds nuw i8, ptr %.0324, i64 8
  store ptr %i.es, ptr %i.fa, align 8, !tbaa !10
  br label %lean_dec_ref.exit351

bb.cu:                                            ; preds = %lean_alloc_ctor.exit473
  tail call void @lean_inc_heartbeat() #6
  %i.fb = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #6 ; 5 uses
  %i.fc = icmp eq ptr %i.fb, null
  br i1 %i.fc, label %bb.cv, label %lean_alloc_ctor.exit474

bb.cv:                                            ; preds = %bb.cu
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit474:                          ; preds = %bb.cu
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  store i32 1, ptr %i.fb, align 4, !tbaa !12
  store i32 65552, ptr %i.fd, align 4
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store ptr %i.es, ptr %i.fe, align 8, !tbaa !10
  br label %lean_dec_ref.exit351

bb.cw:                                            ; preds = %lean_nat_lt.exit
  %i.ff = ptrtoint ptr %.0324 to i64
  %i.fg = and i64 %i.ff, 1
  %.not.i477 = icmp eq i64 %i.fg, 0
  br i1 %.not.i477, label %bb.cx, label %lean_del_object.exit478

bb.cx:                                            ; preds = %bb.cw
  tail call void @lean_free_object(ptr noundef nonnull %.0324) #6
  br label %lean_del_object.exit478

lean_del_object.exit478:                          ; preds = %bb.cw, %bb.cx
  %i.fh = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00__private_Lake_Load_Resolve_0__Lake_addDependencyEntries_spec__0___redArg(ptr noundef nonnull %1, ptr noundef nonnull %i.ee, i64 noundef 0, i64 noundef %.mask, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef %2) ; 3 uses
  %i.fi = load i32, ptr %i.ee, align 8, !tbaa !12 ; 3 uses
  %i.fj = icmp sgt i32 %i.fi, 1
  br i1 %i.fj, label %bb.cy, label %bb.cz, !prof !13

bb.cy:                                            ; preds = %lean_del_object.exit478
  %i.fk = add nsw i32 %i.fi, -1
  store i32 %i.fk, ptr %i.ee, align 8, !tbaa !12
  br label %lean_dec_ref.exit351

bb.cz:                                            ; preds = %lean_del_object.exit478
  %.not.i350 = icmp eq i32 %i.fi, 0
  br i1 %.not.i350, label %lean_dec_ref.exit351, label %bb.da

bb.da:                                            ; preds = %bb.cz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ee) #6
  br label %lean_dec_ref.exit351

lean_inc_ref.exit:                                ; preds = %bb.o, %bb.n, %bb.m, %bb.g, %bb.f, %bb.e
  %.sink = phi ptr [ %i.p, %bb.g ], [ %i.p, %bb.e ], [ %i.p, %bb.f ], [ %i.u, %bb.m ], [ %i.u, %bb.n ], [ %i.u, %bb.o ]
  %i.fl = tail call ptr @l_Lake_joinRelative(ptr noundef nonnull %i.d, ptr noundef %.sink) #6 ; 14 uses
  %.val.i.i537 = load i32, ptr %i.fl, align 4, !tbaa !12 ; 3 uses
  %i.fm = icmp sgt i32 %.val.i.i537, 0
  br i1 %i.fm, label %bb.db, label %bb.dc, !prof !13

bb.db:                                            ; preds = %lean_inc_ref.exit
  %i.fn = add nuw i32 %.val.i.i537, 1
  store i32 %i.fn, ptr %i.fl, align 4, !tbaa !12
  br label %lean_inc_ref.exit539

bb.dc:                                            ; preds = %lean_inc_ref.exit
  %.not.i.i538 = icmp eq i32 %.val.i.i537, 0
  br i1 %.not.i.i538, label %lean_inc_ref.exit539, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.fo = atomicrmw add ptr %i.fl, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit539

lean_inc_ref.exit539:                             ; preds = %bb.db, %bb.dc, %bb.dd
  %i.fp = tail call ptr @l_Lake_Manifest_load(ptr noundef nonnull %i.fl) #6 ; 14 uses
  %i.fq = ptrtoint ptr %i.fp to i64               ; 2 uses
  %i.fr = and i64 %i.fq, 1
  %.not.i540 = icmp eq i64 %i.fr, 0               ; 3 uses
  br i1 %.not.i540, label %bb.df, label %bb.de

bb.de:                                            ; preds = %lean_inc_ref.exit539
  %i.fs = lshr i64 %i.fq, 1
  %i.ft = trunc i64 %i.fs to i32
  br label %lean_obj_tag.exit543

bb.df:                                            ; preds = %lean_inc_ref.exit539
  %i.fu = getelementptr i8, ptr %i.fp, i64 4
  %.val.i542 = load i32, ptr %i.fu, align 4
  %i.fv = lshr i32 %.val.i542, 24
  br label %lean_obj_tag.exit543

lean_obj_tag.exit543:                             ; preds = %bb.de, %bb.df
  %.0.i541 = phi i32 [ %i.ft, %bb.de ], [ %i.fv, %bb.df ]
  %i.fw = icmp eq i32 %.0.i541, 0
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !10 ; 10 uses
  %.val431 = load i32, ptr %i.fp, align 8, !tbaa !12
  %i.fz = icmp eq i32 %.val431, 1                 ; 2 uses
  br i1 %i.fw, label %bb.dg, label %bb.ds

bb.dg:                                            ; preds = %lean_obj_tag.exit543
  br i1 %i.fz, label %lean_dec.exit389, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.ga = ptrtoint ptr %i.fy to i64
  %i.gb = and i64 %i.ga, 1
  %.not.i371 = icmp eq i64 %i.gb, 0
  br i1 %.not.i371, label %bb.di, label %lean_inc.exit372

bb.di:                                            ; preds = %bb.dh
  %.val.i.i544 = load i32, ptr %i.fy, align 4, !tbaa !12 ; 3 uses
  %i.gc = icmp sgt i32 %.val.i.i544, 0
  br i1 %i.gc, label %bb.dj, label %bb.dk, !prof !13

bb.dj:                                            ; preds = %bb.di
  %i.gd = add nuw i32 %.val.i.i544, 1
  store i32 %i.gd, ptr %i.fy, align 4, !tbaa !12
  br label %lean_inc.exit372

bb.dk:                                            ; preds = %bb.di
  %.not.i.i545 = icmp eq i32 %.val.i.i544, 0
  br i1 %.not.i.i545, label %lean_inc.exit372, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.ge = atomicrmw add ptr %i.fy, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit372

lean_inc.exit372:                                 ; preds = %bb.dl, %bb.dk, %bb.dj, %bb.dh
  br i1 %.not.i540, label %bb.dm, label %bb.dq

bb.dm:                                            ; preds = %lean_inc.exit372
  %i.gf = load i32, ptr %i.fp, align 8, !tbaa !12 ; 3 uses
  %i.gg = icmp sgt i32 %i.gf, 1
  br i1 %i.gg, label %bb.dn, label %bb.do, !prof !13

bb.dn:                                            ; preds = %bb.dm
  %i.gh = add nsw i32 %i.gf, -1
  store i32 %i.gh, ptr %i.fp, align 8, !tbaa !12
  br label %bb.dq

bb.do:                                            ; preds = %bb.dm
  %.not.i.i387 = icmp eq i32 %i.gf, 0
  br i1 %.not.i.i387, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fp) #6
  br label %bb.dq

lean_dec.exit389:                                 ; preds = %bb.dg
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fp, i64 4 ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4
  %i.gk = and i32 %i.gj, 16777215
  %i.gl = or disjoint i32 %i.gk, 16777216         ; 2 uses
  store i32 %i.gl, ptr %i.gi, align 4
  br label %.thread

bb.dq:                                            ; preds = %lean_inc.exit372, %bb.dp, %bb.do, %bb.dn
  tail call void @lean_inc_heartbeat() #6
  %i.gm = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #6 ; 5 uses
  %i.gn = icmp eq ptr %i.gm, null
  br i1 %i.gn, label %bb.dr, label %lean_alloc_ctor.exit547

bb.dr:                                            ; preds = %bb.dq
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit547:                          ; preds = %bb.dq
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 4
  store i32 1, ptr %i.gm, align 4, !tbaa !12
  store i32 16842768, ptr %i.go, align 4
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  store ptr %i.fy, ptr %i.gp, align 8, !tbaa !10
  br label %.thread

bb.ds:                                            ; preds = %lean_obj_tag.exit543
  br i1 %i.fz, label %lean_dec.exit, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.gq = ptrtoint ptr %i.fy to i64
  %i.gr = and i64 %i.gq, 1
  %.not.i370 = icmp eq i64 %i.gr, 0
  br i1 %.not.i370, label %bb.du, label %lean_inc.exit

bb.du:                                            ; preds = %bb.dt
  %.val.i.i548 = load i32, ptr %i.fy, align 4, !tbaa !12 ; 3 uses
  %i.gs = icmp sgt i32 %.val.i.i548, 0
  br i1 %i.gs, label %bb.dv, label %bb.dw, !prof !13

bb.dv:                                            ; preds = %bb.du
  %i.gt = add nuw i32 %.val.i.i548, 1
  store i32 %i.gt, ptr %i.fy, align 4, !tbaa !12
  br label %lean_inc.exit

bb.dw:                                            ; preds = %bb.du
  %.not.i.i549 = icmp eq i32 %.val.i.i548, 0
  br i1 %.not.i.i549, label %lean_inc.exit, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.gu = atomicrmw add ptr %i.fy, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.dx, %bb.dw, %bb.dv, %bb.dt
  br i1 %.not.i540, label %bb.dy, label %bb.ec

bb.dy:                                            ; preds = %lean_inc.exit
  %i.gv = load i32, ptr %i.fp, align 8, !tbaa !12 ; 3 uses
  %i.gw = icmp sgt i32 %i.gv, 1
  br i1 %i.gw, label %bb.dz, label %bb.ea, !prof !13

bb.dz:                                            ; preds = %bb.dy
  %i.gx = add nsw i32 %i.gv, -1
  store i32 %i.gx, ptr %i.fp, align 8, !tbaa !12
  br label %bb.ec

bb.ea:                                            ; preds = %bb.dy
  %.not.i.i = icmp eq i32 %i.gv, 0
  br i1 %.not.i.i, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fp) #6
  br label %bb.ec

lean_dec.exit:                                    ; preds = %bb.ds
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fp, i64 4 ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 4
  %i.ha = and i32 %i.gz, 16777215                 ; 2 uses
  store i32 %i.ha, ptr %i.gy, align 4
  br label %.thread

bb.ec:                                            ; preds = %lean_inc.exit, %bb.eb, %bb.ea, %bb.dz
  tail call void @lean_inc_heartbeat() #6
  %i.hb = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #6 ; 5 uses
  %i.hc = icmp eq ptr %i.hb, null
  br i1 %i.hc, label %bb.ed, label %lean_alloc_ctor.exit551

bb.ed:                                            ; preds = %bb.ec
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit551:                          ; preds = %bb.ec
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  store i32 1, ptr %i.hb, align 4, !tbaa !12
  store i32 65552, ptr %i.hd, align 4
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  store ptr %i.fy, ptr %i.he, align 8, !tbaa !10
  br label %.thread

.thread:                                          ; preds = %lean_alloc_ctor.exit551, %lean_dec.exit, %lean_alloc_ctor.exit547, %lean_dec.exit389
  %.val.i446 = phi i32 [ 16842768, %lean_alloc_ctor.exit547 ], [ %i.gl, %lean_dec.exit389 ], [ %i.ha, %lean_dec.exit ], [ 65552, %lean_alloc_ctor.exit551 ]
  %.2321 = phi ptr [ %i.gm, %lean_alloc_ctor.exit547 ], [ %i.fp, %lean_dec.exit389 ], [ %i.fp, %lean_dec.exit ], [ %i.hb, %lean_alloc_ctor.exit551 ] ; 13 uses
  %i.hf = ptrtoint ptr %.2321 to i64              ; 2 uses
  %i.hg = and i64 %i.hf, 1
  %.not.i444 = icmp eq i64 %i.hg, 0               ; 3 uses
  %3 = lshr i64 %i.hf, 1
  %4 = trunc i64 %3 to i32
  %5 = lshr i32 %.val.i446, 24
  %.0.i445 = select i1 %.not.i444, i32 %5, i32 %4
  %i.hh = icmp eq i32 %.0.i445, 0
  br i1 %i.hh, label %bb.p, label %bb.bp

lean_dec_ref.exit351:                             ; preds = %bb.da, %bb.cz, %bb.cy, %bb.ct, %lean_alloc_ctor.exit474, %bb.ba, %lean_alloc_ctor.exit462, %bb.bm, %lean_alloc_ctor.exit466
  %.13 = phi ptr [ %i.fh, %bb.da ], [ %i.di, %lean_alloc_ctor.exit466 ], [ %i.ci, %lean_alloc_ctor.exit462 ], [ %.0335, %bb.ba ], [ %.0335, %bb.bm ], [ %i.fb, %lean_alloc_ctor.exit474 ], [ %.0324, %bb.ct ], [ %i.fh, %bb.cy ], [ %i.fh, %bb.cz ]
  ret ptr %.13
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lake_Load_Resolve_0__Lake_addDependencyEntries___at___00__private_Lake_Load_Resolve_0__Lake_Workspace_updateAndMaterializeCore___elam__0_spec__1___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l___private_Lake_Load_Resolve_0__Lake_addDependencyEntries___at___00__private_Lake_Load_Resolve_0__Lake_Workspace_updateAndMaterializeCore___elam__0_spec__1(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lake_Load_Resolve_0__Lake_Workspace_updateAndMaterializeCore___elam__0(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l___private_Lake_Load_Resolve_0__Lake_updateAndMaterializeDep___at___00__private_Lake_Load_Resolve_0__Lake_Workspace_updateAndMaterializeCore___elam__0_spec__0(ptr noundef %4, ptr noundef %2, ptr noundef %0, ptr noundef %1, ptr noundef %3) ; 10 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = and i64 %i.b, 1
  %.not.i118 = icmp eq i64 %i.c, 0
  br i1 %.not.i118, label %bb.c, label %bb.b

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
  br i1 %i.h, label %bb.d, label %bb.bx

bb.d:                                             ; preds = %lean_obj_tag.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !10   ; 9 uses
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = and i64 %i.k, 1
  %.not.i93 = icmp eq i64 %i.l, 0                 ; 2 uses
  br i1 %.not.i93, label %bb.e, label %lean_inc.exit94

bb.e:                                             ; preds = %bb.d
  %.val.i.i = load i32, ptr %i.j, align 4, !tbaa !12 ; 3 uses
  %i.m = icmp sgt i32 %.val.i.i, 0
  br i1 %i.m, label %bb.f, label %bb.g, !prof !13

bb.f:                                             ; preds = %bb.e
  %i.n = add nuw i32 %.val.i.i, 1
  store i32 %i.n, ptr %i.j, align 4, !tbaa !12
  br label %lean_inc.exit94

bb.g:                                             ; preds = %bb.e
  %.not.i.i119 = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i119, label %lean_inc.exit94, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = atomicrmw add ptr %i.j, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit94

lean_inc.exit94:                                  ; preds = %bb.h, %bb.g, %bb.f, %bb.d
  %.val.i120 = load i32, ptr %i.a, align 8, !tbaa !12 ; 4 uses
  %i.p = icmp eq i32 %.val.i120, 1
  br i1 %i.p, label %.preheader.i, label %bb.m

.preheader.i:                                     ; preds = %lean_inc.exit94
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !10   ; 4 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = and i64 %i.r, 1
  %.not.i7.i = icmp eq i64 %i.s, 0
  br i1 %.not.i7.i, label %bb.i, label %lean_dec.exit.i

bb.i:                                             ; preds = %.preheader.i
  %i.t = load i32, ptr %i.q, align 4, !tbaa !12   ; 3 uses
  %i.u = icmp sgt i32 %i.t, 1
  br i1 %i.u, label %bb.j, label %bb.k, !prof !13

bb.j:                                             ; preds = %bb.i
  %i.v = add nsw i32 %i.t, -1
  store i32 %i.v, ptr %i.q, align 4, !tbaa !12
  br label %lean_dec.exit.i

bb.k:                                             ; preds = %bb.i
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %lean_dec.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.q) #6
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.l, %bb.k, %bb.j, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %i.a) #6
  br label %lean_dec_ref_known.exit

bb.m:                                             ; preds = %lean_inc.exit94
  %i.w = icmp sgt i32 %.val.i120, 1
  br i1 %i.w, label %bb.n, label %bb.o, !prof !13

bb.n:                                             ; preds = %bb.m
  %i.x = add nsw i32 %.val.i120, -1
  store i32 %i.x, ptr %i.a, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit

bb.o:                                             ; preds = %bb.m
  %.not.i.i121 = icmp eq i32 %.val.i120, 0
  br i1 %.not.i.i121, label %lean_dec_ref_known.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #6
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.n, %bb.o, %bb.p
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !10   ; 10 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = and i64 %i.aa, 1
  %.not.i123 = icmp eq i64 %i.ab, 0               ; 2 uses
  br i1 %.not.i123, label %bb.q, label %lean_inc_n.exit

bb.q:                                             ; preds = %lean_dec_ref_known.exit
  %.val.i.i124 = load i32, ptr %i.z, align 4, !tbaa !12 ; 3 uses
  %i.ac = icmp sgt i32 %.val.i.i124, 0
  br i1 %i.ac, label %bb.r, label %bb.s, !prof !13

bb.r:                                             ; preds = %bb.q
  %i.ad = add nuw i32 %.val.i.i124, 2
  store i32 %i.ad, ptr %i.z, align 4, !tbaa !12
  br label %lean_inc_n.exit

bb.s:                                             ; preds = %bb.q
  %.not.i.i125 = icmp eq i32 %.val.i.i124, 0
  br i1 %.not.i.i125, label %lean_inc_n.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ae = atomicrmw add ptr %i.z, i32 -2 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit

lean_inc_n.exit:                                  ; preds = %lean_dec_ref_known.exit, %bb.r, %bb.s, %bb.t
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !10 ; 5 uses
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = and i64 %i.ah, 1
  %.not.i91 = icmp eq i64 %i.ai, 0
  br i1 %.not.i91, label %bb.u, label %lean_inc.exit92

bb.u:                                             ; preds = %lean_inc_n.exit
  %.val.i.i126 = load i32, ptr %i.ag, align 4, !tbaa !12 ; 3 uses
  %i.aj = icmp sgt i32 %.val.i.i126, 0
  br i1 %i.aj, label %bb.v, label %bb.w, !prof !13

bb.v:                                             ; preds = %bb.u
  %i.ak = add nuw i32 %.val.i.i126, 1
  store i32 %i.ak, ptr %i.ag, align 4, !tbaa !12
  br label %lean_inc.exit92

bb.w:                                             ; preds = %bb.u
  %.not.i.i127 = icmp eq i32 %.val.i.i126, 0
  br i1 %.not.i.i127, label %lean_inc.exit92, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.al = atomicrmw add ptr %i.ag, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit92

lean_inc.exit92:                                  ; preds = %bb.x, %bb.w, %bb.v, %lean_inc_n.exit
  br i1 %.not.i93, label %bb.y, label %lean_dec.exit115

bb.y:                                             ; preds = %lean_inc.exit92
  %i.am = load i32, ptr %i.j, align 8, !tbaa !12  ; 3 uses
  %i.an = icmp sgt i32 %i.am, 1
  br i1 %i.an, label %bb.z, label %bb.aa, !prof !13

bb.z:                                             ; preds = %bb.y
  %i.ao = add nsw i32 %i.am, -1
  store i32 %i.ao, ptr %i.j, align 8, !tbaa !12
  br label %lean_dec.exit115

bb.aa:                                            ; preds = %bb.y
  %.not.i.i113 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i113, label %lean_dec.exit115, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #6
  br label %lean_dec.exit115

lean_dec.exit115:                                 ; preds = %bb.z, %bb.aa, %bb.ab, %lean_inc.exit92
  %i.ap = tail call ptr @l___private_Lake_Load_Resolve_0__Lake_addDependencyEntries___at___00__private_Lake_Load_Resolve_0__Lake_Workspace_updateAndMaterializeCore___elam__0_spec__1(ptr noundef %4, ptr noundef %i.z, ptr noundef %i.ag) ; 14 uses
  %i.aq = ptrtoint ptr %i.ap to i64               ; 2 uses
  %i.ar = and i64 %i.aq, 1
  %.not.i129 = icmp eq i64 %i.ar, 0               ; 3 uses
  br i1 %.not.i129, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %lean_dec.exit115
  %i.as = lshr i64 %i.aq, 1
  %i.at = trunc i64 %i.as to i32
  br label %lean_obj_tag.exit132

end_hunk_1
