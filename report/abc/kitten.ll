Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/kitten?download=true
inline.NumInlined: 135
inline.NumDeleted: 59
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@kitten_flip_phases:bb.a
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @kitten_no_ticks_limit(ptr nofree noundef writeonly captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @invalid_api_usage(ptr noundef nonnull @__func__.kitten_no_ticks_limit, ptr noundef nonnull @.str.1)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i64 -1, ptr %i.a, align 8, !tbaa !29
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @kitten_set_ticks_limit(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @invalid_api_usage(ptr noundef nonnull @__func__.kitten_set_ticks_limit, ptr noundef nonnull @.str.1)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4112
  %i.c = load i64, ptr %i.b, align 8, !tbaa !89
  %.0 = tail call i64 @llvm.uadd.sat.i64(i64 %1, i64 %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i64 %.0, ptr %i.d, align 8, !tbaa !29
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @kitten_shuffle_clauses(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @invalid_api_usage(ptr noundef nonnull @__func__.kitten_shuffle_clauses, ptr noundef nonnull @.str.1)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32
  switch i32 %i.b, label %bb.f [
    i32 0, label %bb.g
    i32 10, label %status_to_string.exit
    i32 20, label %bb.d
    i32 21, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  br label %status_to_string.exit

bb.e:                                             ; preds = %bb.c
  br label %status_to_string.exit

bb.f:                                             ; preds = %bb.c
  br label %status_to_string.exit

status_to_string.exit:                            ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi ptr [ @.str.10, %bb.f ], [ @.str.9, %bb.e ], [ @.str.8, %bb.d ], [ @.str.7, %bb.c ]
  tail call void (ptr, ptr, ...) @invalid_api_usage(ptr noundef nonnull @__func__.kitten_shuffle_clauses, ptr noundef nonnull @.str.2, ptr noundef nonnull %.0.i, ptr noundef nonnull @.str.10)
  unreachable

bb.g:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8, !tbaa !90   ; 3 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = trunc i64 %i.e to i32                    ; 3 uses
  %.not12.i = icmp eq i32 %i.f, 0
  br i1 %.not12.i, label %._crit_edge14.i, label %kissat_pick_random.exit.lr.ph.i

._crit_edge14.i:                                  ; preds = %bb.g
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 76
  %.pre15.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !25
  br label %bb.h

kissat_pick_random.exit.lr.ph.i:                  ; preds = %bb.g
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = uitofp i32 %i.f to double
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !91   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.promoted.i = load i64, ptr %i.m, align 8, !tbaa !92
  %.promoted22.i = load i32, ptr %i.l, align 4
  br label %kissat_pick_random.exit.i

._crit_edge.i:                                    ; preds = %enqueue.exit.i
  store i32 %i.aa, ptr %i.l, align 4, !tbaa !25
  store i64 %i.ar, ptr %i.m, align 8, !tbaa !92
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i, %._crit_edge14.i
  %i.n = phi i32 [ %.pre15.i, %._crit_edge14.i ], [ %i.aa, %._crit_edge.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !28
  %i.q = icmp eq i32 %i.p, %i.n
  br i1 %i.q, label %shuffle_queue.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.n, ptr %i.o, align 8, !tbaa !28
  br label %shuffle_queue.exit

kissat_pick_random.exit.i:                        ; preds = %enqueue.exit.i, %kissat_pick_random.exit.lr.ph.i
  %.pre23.i = phi i32 [ %.promoted22.i, %kissat_pick_random.exit.lr.ph.i ], [ %i.aa, %enqueue.exit.i ]
  %i.r = phi i64 [ %.promoted.i, %kissat_pick_random.exit.lr.ph.i ], [ %i.ar, %enqueue.exit.i ] ; 2 uses
  %.013.i = phi i32 [ 0, %kissat_pick_random.exit.lr.ph.i ], [ %i.at, %enqueue.exit.i ]
  %i.s = load i64, ptr %i.g, align 8, !tbaa !39
  %i.t = mul i64 %i.s, 6364136223846793005
  %i.u = add i64 %i.t, 1442695040888963407        ; 2 uses
  store i64 %i.u, ptr %i.g, align 8, !tbaa !39
  %i.v = lshr i64 %i.u, 32
  %i.w = trunc nuw i64 %i.v to i32
  %i.x = uitofp i32 %i.w to double
  %i.y = fmul nnan double %i.x, f0x3DF0000000000000
  %i.z = fmul double %i.y, %i.h
  %i.aa = fptoui double %i.z to i32               ; 6 uses
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.ab ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !94 ; 4 uses
  %i.af = load i32, ptr %i.ac, align 8, !tbaa !95 ; 4 uses
  %i.ag = icmp eq i32 %i.ae, -1
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %kissat_pick_random.exit.i
  store i32 %i.af, ptr %i.k, align 8, !tbaa !24
  br label %bb.l

bb.k:                                             ; preds = %kissat_pick_random.exit.i
  %i.ah = zext i32 %i.ae to i64
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.ah
  store i32 %i.af, ptr %i.ai, align 8, !tbaa !95
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aj = icmp eq i32 %i.af, -1
  br i1 %i.aj, label %dequeue.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = zext i32 %i.af to i64
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store i32 %i.ae, ptr %i.am, align 4, !tbaa !94
  br label %dequeue.exit.i

dequeue.exit.i:                                   ; preds = %bb.m, %bb.l
  %i.an = phi i32 [ %.pre23.i, %bb.m ], [ %i.ae, %bb.l ] ; 3 uses
  %i.ao = icmp eq i32 %i.an, -1
  br i1 %i.ao, label %bb.n, label %bb.o

bb.n:                                             ; preds = %dequeue.exit.i
  store i32 %i.aa, ptr %i.k, align 8, !tbaa !24
  br label %enqueue.exit.i

bb.o:                                             ; preds = %dequeue.exit.i
  %i.ap = zext i32 %i.an to i64
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.ap
  store i32 %i.aa, ptr %i.aq, align 8, !tbaa !95
  br label %enqueue.exit.i

enqueue.exit.i:                                   ; preds = %bb.o, %bb.n
  store i32 %i.an, ptr %i.ad, align 4, !tbaa !94
  store i32 -1, ptr %i.ac, align 8, !tbaa !95
  %i.ar = add i64 %i.r, 1                         ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %i.r, ptr %i.as, align 8, !tbaa !96
  %i.at = add nuw i32 %.013.i, 1                  ; 2 uses
  %.not.i = icmp eq i32 %i.at, %i.f
  br i1 %.not.i, label %._crit_edge.i, label %kissat_pick_random.exit.i, !llvm.loop !164

shuffle_queue.exit:                               ; preds = %bb.h, %bb.i
  %.not7.i = icmp eq i64 %i.d, 0
  br i1 %.not7.i, label %shuffle_katches.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %shuffle_queue.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %shuffle_katches_stack.exit.i, %.lr.ph.i
  %.08.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bw, %shuffle_katches_stack.exit.i ] ; 2 uses
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !97
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %.08.i ; 2 uses
  %.val.i = load ptr, ptr %i.ax, align 8, !tbaa !100 ; 4 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %.val6.i = load ptr, ptr %i.ay, align 8, !tbaa !101 ; 2 uses
  %i.az = ptrtoint ptr %.val6.i to i64
  %i.ba = ptrtoint ptr %.val.i to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 3
  %.not15.i.i.i.a = icmp eq ptr %.val6.i, %.val.i
  br i1 %.not15.i.i.i.a, label %shuffle_katches_stack.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p, %bb.s
  %.016.i.i.i = phi i64 [ %i.bv, %bb.s ], [ 0, %bb.p ] ; 4 uses
  %i.bd = trunc i64 %.016.i.i.i to i32            ; 2 uses
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %kissat_pick_random.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bf = load i64, ptr %i.av, align 8, !tbaa !39
  %i.bg = mul i64 %i.bf, 6364136223846793005
  %i.bh = add i64 %i.bg, 1442695040888963407      ; 2 uses
  store i64 %i.bh, ptr %i.av, align 8, !tbaa !39
  %i.bi = lshr i64 %i.bh, 32
  %i.bj = trunc nuw i64 %i.bi to i32
  %i.bk = uitofp i32 %i.bj to double
  %i.bl = fmul nnan double %i.bk, f0x3DF0000000000000
  %i.bm = uitofp i32 %i.bd to double
  %i.bn = fmul double %i.bl, %i.bm
  %i.bo = fptoui double %i.bn to i32
  %i.bp = zext i32 %i.bo to i64
  br label %kissat_pick_random.exit.i.i.i

kissat_pick_random.exit.i.i.i:                    ; preds = %bb.q, %.lr.ph.i.i.i
  %.0.i.i.i.i = phi i64 [ %i.bp, %bb.q ], [ 0, %.lr.ph.i.i.i ] ; 2 uses
  %i.bq = icmp eq i64 %.016.i.i.i, %.0.i.i.i.i
  br i1 %i.bq, label %bb.s, label %bb.r

bb.r:                                             ; preds = %kissat_pick_random.exit.i.i.i
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %.016.i.i.i ; 2 uses
  %i.bs = load i64, ptr %i.br, align 4
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %.0.i.i.i.i ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 4
  store i64 %i.bu, ptr %i.br, align 4
  store i64 %i.bs, ptr %i.bt, align 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %kissat_pick_random.exit.i.i.i
  %i.bv = add nuw i64 %.016.i.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.bv, %i.bc
  br i1 %.not.i.i.i, label %shuffle_katches_stack.exit.i, label %.lr.ph.i.i.i, !llvm.loop !165

shuffle_katches_stack.exit.i:                     ; preds = %bb.s, %bb.p
  %i.bw = add nuw i64 %.08.i, 1                   ; 2 uses
  %.not.i8 = icmp eq i64 %i.bw, %i.d
  br i1 %.not.i8, label %shuffle_katches.exit, label %bb.p, !llvm.loop !166

shuffle_katches.exit:                             ; preds = %shuffle_katches_stack.exit.i, %shuffle_queue.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 392
  %.val.i10 = load ptr, ptr %i.bx, align 8, !tbaa !102 ; 4 uses
  %i.by = getelementptr i8, ptr %0, i64 400
  %.val2.i = load ptr, ptr %i.by, align 8, !tbaa !103 ; 2 uses
  %i.bz = ptrtoint ptr %.val2.i to i64
  %i.ca = ptrtoint ptr %.val.i10 to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = ashr exact i64 %i.cb, 2
  %.not17.i.i.i = icmp eq ptr %.val2.i, %.val.i10
  br i1 %.not17.i.i.i, label %shuffle_units.exit, label %.lr.ph.i.i.i11

.lr.ph.i.i.i11:                                   ; preds = %shuffle_katches.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.w, %.lr.ph.i.i.i11
  %.018.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i11 ], [ %i.cw, %bb.w ] ; 4 uses
  %i.ce = trunc i64 %.018.i.i.i to i32            ; 2 uses
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %kissat_pick_random.exit.i.i.i12, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cg = load i64, ptr %i.cd, align 8, !tbaa !39
  %i.ch = mul i64 %i.cg, 6364136223846793005
  %i.ci = add i64 %i.ch, 1442695040888963407      ; 2 uses
  store i64 %i.ci, ptr %i.cd, align 8, !tbaa !39
  %i.cj = lshr i64 %i.ci, 32
  %i.ck = trunc nuw i64 %i.cj to i32
  %i.cl = uitofp i32 %i.ck to double
  %i.cm = fmul nnan double %i.cl, f0x3DF0000000000000
  %i.cn = uitofp i32 %i.ce to double
  %i.co = fmul double %i.cm, %i.cn
  %i.cp = fptoui double %i.co to i32
  %i.cq = zext i32 %i.cp to i64
  br label %kissat_pick_random.exit.i.i.i12

kissat_pick_random.exit.i.i.i12:                  ; preds = %bb.u, %bb.t
  %.0.i.i.i.i13 = phi i64 [ %i.cq, %bb.u ], [ 0, %bb.t ] ; 2 uses
  %i.cr = icmp eq i64 %.018.i.i.i, %.0.i.i.i.i13
  br i1 %i.cr, label %bb.w, label %bb.v

bb.v:                                             ; preds = %kissat_pick_random.exit.i.i.i12
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %.val.i10, i64 %.018.i.i.i ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !104
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.val.i10, i64 %.0.i.i.i.i13 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !104
  store i32 %i.cv, ptr %i.cs, align 4, !tbaa !104
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !104
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %kissat_pick_random.exit.i.i.i12
  %i.cw = add nuw i64 %.018.i.i.i, 1              ; 2 uses
  %.not.i.i.i14 = icmp eq i64 %i.cw, %i.cc
  br i1 %.not.i.i.i14, label %shuffle_units.exit, label %bb.t, !llvm.loop !167

shuffle_units.exit:                               ; preds = %bb.w, %shuffle_katches.exit
  ret void
}

; Function Attrs: nounwind uwtable
define noundef i32 @new_learned_klause(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 12 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !105
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !106
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2                   ; 2 uses
  %i.i = icmp ugt i64 %i.h, 4294967294
  br i1 %i.i, label %bb.b, label %new_reference.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @kissat_fatal(ptr noundef nonnull @.str.11) #15
  br label %new_reference.exit

new_reference.exit:                               ; preds = %bb.a, %bb.b
  %i.j = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4112 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !107
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.k, align 8, !tbaa !107
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !108
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !109
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = lshr exact i64 %i.t, 2
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.w = load i8, ptr %i.v, align 4, !tbaa !36, !range !34, !noundef !35
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.c, label %bb.d

bb.c:                                             ; preds = %new_reference.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !110
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !111
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 2
  br label %bb.d

bb.d:                                             ; preds = %new_reference.exit, %bb.c
  %i.ag = phi i64 [ %i.af, %bb.c ], [ 0, %new_reference.exit ] ; 2 uses
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !103 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 5 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !112 ; 2 uses
  %i.ak = icmp eq ptr %i.ah, %i.aj
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @kissat_stack_enlarge(ptr noundef nonnull %i.j, ptr noundef nonnull %i.a, i64 noundef 4) #15
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !103
  %.pre62 = load ptr, ptr %i.ai, align 8, !tbaa !112
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.al = phi ptr [ %.pre62, %bb.e ], [ %i.aj, %bb.d ] ; 2 uses
  %i.am = phi ptr [ %.pre, %bb.e ], [ %i.ah, %bb.d ] ; 2 uses
  %i.an = trunc i64 %i.ag to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 4 ; 3 uses
  store ptr %i.ao, ptr %i.b, align 8, !tbaa !103
  store i32 %i.an, ptr %i.am, align 4, !tbaa !104
  %i.ap = icmp eq ptr %i.ao, %i.al
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aq = load ptr, ptr %0, align 8, !tbaa !23
  tail call void @kissat_stack_enlarge(ptr noundef %i.aq, ptr noundef nonnull %i.a, i64 noundef 4) #15
  %.pre63 = load ptr, ptr %i.b, align 8, !tbaa !103
  %.pre64 = load ptr, ptr %i.ai, align 8, !tbaa !112
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ar = phi ptr [ %.pre64, %bb.g ], [ %i.al, %bb.f ]
  %i.as = phi ptr [ %.pre63, %bb.g ], [ %i.ao, %bb.f ] ; 2 uses
  %i.at = trunc i64 %i.u to i32
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 4 ; 3 uses
  store ptr %i.au, ptr %i.b, align 8, !tbaa !103
  store i32 %i.at, ptr %i.as, align 4, !tbaa !104
  %i.av = icmp eq ptr %i.au, %i.ar
  br i1 %i.av, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aw = load ptr, ptr %0, align 8, !tbaa !23
  tail call void @kissat_stack_enlarge(ptr noundef %i.aw, ptr noundef nonnull %i.a, i64 noundef 4) #15
  %.pre65 = load ptr, ptr %i.b, align 8, !tbaa !103
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ax = phi ptr [ %.pre65, %bb.i ], [ %i.au, %bb.h ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4 ; 3 uses
  store ptr %i.ay, ptr %i.b, align 8, !tbaa !103
  store i32 2, ptr %i.ax, align 4, !tbaa !104
  %i.az = load ptr, ptr %i.n, align 8, !tbaa !109 ; 2 uses
  %i.ba = load ptr, ptr %i.o, align 8, !tbaa !108 ; 2 uses
  %.not57 = icmp eq ptr %i.az, %i.ba
  br i1 %.not57, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %bb.l
  %i.bb = phi ptr [ %i.bi, %bb.l ], [ %i.ay, %bb.j ] ; 2 uses
  %.05458 = phi ptr [ %i.bj, %bb.l ], [ %i.az, %bb.j ] ; 2 uses
  %i.bc = load i32, ptr %.05458, align 4, !tbaa !104
  %i.bd = load ptr, ptr %i.ai, align 8, !tbaa !112
  %i.be = icmp eq ptr %i.bb, %i.bd
  br i1 %i.be, label %bb.k, label %bb.l

.critedge:                                        ; preds = %bb.l, %bb.j
  %i.bf = phi ptr [ %i.ay, %bb.j ], [ %i.bi, %bb.l ]
  %.not55 = icmp eq i64 %i.ag, 0
  br i1 %.not55, label %.critedge2, label %bb.m

bb.k:                                             ; preds = %.lr.ph
  %i.bg = load ptr, ptr %0, align 8, !tbaa !23
  tail call void @kissat_stack_enlarge(ptr noundef %i.bg, ptr noundef nonnull %i.a, i64 noundef 4) #15
  %.pre66 = load ptr, ptr %i.b, align 8, !tbaa !103
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph
  %i.bh = phi ptr [ %.pre66, %bb.k ], [ %i.bb, %.lr.ph ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4 ; 3 uses
  store ptr %i.bi, ptr %i.b, align 8, !tbaa !103
  store i32 %i.bc, ptr %i.bh, align 4, !tbaa !104
  %i.bj = getelementptr inbounds nuw i8, ptr %.05458, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.bj, %i.ba
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !168

bb.m:                                             ; preds = %.critedge
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !111 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !110 ; 2 uses
  %.not5659 = icmp eq ptr %i.bl, %i.bn
  br i1 %.not5659, label %.critedge2, label %.lr.ph61

.lr.ph61:                                         ; preds = %bb.m, %bb.o
  %i.bo = phi ptr [ %i.bu, %bb.o ], [ %i.bf, %bb.m ] ; 2 uses
  %.060 = phi ptr [ %i.bv, %bb.o ], [ %i.bl, %bb.m ] ; 2 uses
  %i.bp = load i32, ptr %.060, align 4, !tbaa !104
  %i.bq = load ptr, ptr %i.ai, align 8, !tbaa !112
  %i.br = icmp eq ptr %i.bo, %i.bq
  br i1 %i.br, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph61
  %i.bs = load ptr, ptr %0, align 8, !tbaa !23
  tail call void @kissat_stack_enlarge(ptr noundef %i.bs, ptr noundef nonnull %i.a, i64 noundef 4) #15
  %.pre67 = load ptr, ptr %i.b, align 8, !tbaa !103
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph61
  %i.bt = phi ptr [ %.pre67, %bb.n ], [ %i.bo, %.lr.ph61 ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4 ; 2 uses
  store ptr %i.bu, ptr %i.b, align 8, !tbaa !103
  store i32 %i.bp, ptr %i.bt, align 4, !tbaa !104
  %i.bv = getelementptr inbounds nuw i8, ptr %.060, i64 4 ; 2 uses
  %.not56 = icmp eq ptr %i.bv, %i.bn
  br i1 %.not56, label %.critedge2, label %.lr.ph61, !llvm.loop !169

.critedge2:                                       ; preds = %bb.o, %bb.m, %.critedge
  %i.bw = trunc i64 %i.h to i32                   ; 2 uses
  tail call fastcc void @connect_new_klause(ptr noundef nonnull %0, i32 noundef %i.bw)
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 1, ptr %i.bx, align 1, !tbaa !33
  ret i32 %i.bw
}

declare void @kissat_stack_enlarge(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @connect_new_klause(ptr noundef %0, i32 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 320
  %.val = load ptr, ptr %i.a, align 8, !tbaa !106
  %i.b = zext i32 %1 to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.b ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !114  ; 2 uses
  switch i32 %i.e, label %bb.g [
    i32 0, label %bb.b
    i32 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !26
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  store i32 %1, ptr %i.f, align 4, !tbaa !26
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !115  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !116
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.o = load ptr, ptr %0, align 8, !tbaa !23
  tail call void @kissat_stack_enlarge(ptr noundef %i.o, ptr noundef nonnull %i.n, i64 noundef 4) #15
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !115
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = phi ptr [ %.pre, %bb.e ], [ %i.j, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store ptr %i.q, ptr %i.i, align 8, !tbaa !115
  store i32 %1, ptr %i.p, align 4, !tbaa !104
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !104
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !97
  %i.v = zext i32 %i.s to i64
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.v ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !104
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !101 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !117
  %i.ad = icmp eq ptr %i.aa, %i.ac
  br i1 %i.ad, label %bb.h, label %watch_klause.exit

bb.h:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr %0, align 8, !tbaa !23
  tail call void @kissat_stack_enlarge(ptr noundef %i.ae, ptr noundef nonnull %i.w, i64 noundef 8) #15
  %.pre.i = load ptr, ptr %i.z, align 8, !tbaa !101
  br label %watch_klause.exit

watch_klause.exit:                                ; preds = %bb.g, %bb.h
  %i.af = phi ptr [ %.pre.i, %bb.h ], [ %i.aa, %bb.g ] ; 3 uses
  %i.ag = and i32 %1, 2147483647                  ; 2 uses
  %i.ah = icmp eq i32 %i.e, 2
  %i.ai = select i1 %i.ah, i32 -2147483648, i32 0
  %i.aj = or disjoint i32 %i.ai, %i.ag
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.ak, ptr %i.z, align 8, !tbaa !101
  store i32 %i.y, ptr %i.af, align 4, !tbaa !104
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store i32 %i.aj, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !40
  %i.al = load i32, ptr %i.x, align 4, !tbaa !104
  %i.am = load ptr, ptr %i.t, align 8, !tbaa !97
  %i.an = zext i32 %i.al to i64
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %i.an ; 3 uses
  %i.ap = load i32, ptr %i.d, align 4, !tbaa !114
  %i.aq = load i32, ptr %i.r, align 4, !tbaa !104
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !101 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !117
  %i.av = icmp eq ptr %i.as, %i.au
  br i1 %i.av, label %bb.i, label %watch_klause.exit22

bb.i:                                             ; preds = %watch_klause.exit
  %i.aw = load ptr, ptr %0, align 8, !tbaa !23
  tail call void @kissat_stack_enlarge(ptr noundef %i.aw, ptr noundef nonnull %i.ao, i64 noundef 8) #15
  %.pre.i21 = load ptr, ptr %i.ar, align 8, !tbaa !101
  br label %watch_klause.exit22

watch_klause.exit22:                              ; preds = %watch_klause.exit, %bb.i
  %i.ax = phi ptr [ %.pre.i21, %bb.i ], [ %i.as, %watch_klause.exit ] ; 3 uses
  %i.ay = icmp eq i32 %i.ap, 2
  %i.az = select i1 %i.ay, i32 -2147483648, i32 0
  %i.ba = or disjoint i32 %i.az, %i.ag
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.bb, ptr %i.ar, align 8, !tbaa !101
  store i32 %i.aq, ptr %i.ax, align 4, !tbaa !104
  %.sroa.4.0..sroa_idx.i20 = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store i32 %i.ba, ptr %.sroa.4.0..sroa_idx.i20, align 4, !tbaa !40
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %watch_klause.exit22, %bb.c, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @kitten_clear(ptr nofree noundef captures(none) initializes((208, 216), (232, 240), (304, 312), (328, 336), (376, 384), (400, 408)) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.b, ptr %i.c, align 8, !tbaa !119
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !120
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.e, ptr %i.f, align 8, !tbaa !121
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !109
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr %i.h, ptr %i.i, align 8, !tbaa !108
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !106
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr %i.k, ptr %i.l, align 8, !tbaa !105
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !122
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 376
  store ptr %i.n, ptr %i.o, align 8, !tbaa !123
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !124
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 400
  store ptr %i.q, ptr %i.r, align 8, !tbaa !115
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load i64, ptr %i.s, align 8, !tbaa !90   ; 4 uses
  %.not42 = icmp eq i64 %i.t, 0
  br i1 %.not42, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !97   ; 5 uses
  %xtraiter = and i64 %i.t, 3                     ; 3 uses
  %i.w = icmp ult i64 %i.t, 4
  br i1 %i.w, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.t, -4
  br label %bb.c

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %.043.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.aw, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod49 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod49)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %.043.epil = phi i64 [ %.043.epil.init, %.epil.preheader ], [ %i.aa, %bb.b ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %.043.epil ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !100
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.y, ptr %i.z, align 8, !tbaa !101
  %i.aa = add nuw i64 %.043.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %bb.b, !llvm.loop !170

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %bb.b, %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !125 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !126 ; 2 uses
  %.not3844 = icmp eq ptr %i.ac, %i.ae
  br i1 %.not3844, label %bb.e, label %.lr.ph45

.lr.ph45:                                         ; preds = %.preheader
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !127
  br label %bb.d

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %.043 = phi i64 [ 0, %.lr.ph.new ], [ %i.aw, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.c ]
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %.043 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !100
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !101
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %.043 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !100
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store ptr %i.am, ptr %i.an, align 8, !tbaa !101
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %.043 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !100
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !101
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %.043 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !100
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 80
  store ptr %i.au, ptr %i.av, align 8, !tbaa !101
  %i.aw = add nuw i64 %.043, 4                    ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.loopexit.unr-lcssa, label %bb.c, !llvm.loop !171

bb.d:                                             ; preds = %.lr.ph45, %bb.d
  %i.ax = phi ptr [ %i.ae, %.lr.ph45 ], [ %i.ay, %bb.d ]
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -4 ; 4 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !104
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ba
  store i32 0, ptr %i.bb, align 4, !tbaa !104
  %.not38 = icmp eq ptr %i.ac, %i.ay
  br i1 %.not38, label %._crit_edge, label %bb.d, !llvm.loop !172

._crit_edge:                                      ; preds = %bb.d
  store ptr %i.ay, ptr %i.ad, align 8, !tbaa !126
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %.preheader
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !38 ; 5 uses
  %i.be = and i64 %i.bd, 8589934590
  %.not39 = icmp eq i64 %i.be, 0
  br i1 %.not39, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.e
  %i.bf = lshr i64 %i.bd, 1
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !37
  %i.bi = and i64 %i.bf, 4294967295               ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bh, i8 0, i64 %i.bi, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !128
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bk, i8 0, i64 %i.bi, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %.not40 = icmp eq i64 %i.bd, 0
  br i1 %.not40, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !129
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bm, i8 0, i64 %i.bd, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !130
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bo, i8 0, i64 %i.bd, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bp, i8 0, i64 88, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 -1, ptr %i.bq, align 8, !tbaa !24
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 -1, ptr %i.br, align 4, !tbaa !25
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 -1, ptr %i.bs, align 4, !tbaa !26
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 -1, ptr %i.bt, align 8, !tbaa !27
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 -1, ptr %i.bu, align 8, !tbaa !28
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i64 -1, ptr %i.bv, align 8, !tbaa !29
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !30 ; 2 uses
  %i.by = add i64 %i.bx, 1
  store i64 %i.by, ptr %i.bw, align 8, !tbaa !30
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.bx, ptr %i.bz, align 8, !tbaa !31
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nounwind uwtable
define void @kitten_release(ptr noundef initializes((184, 192), (208, 216), (232, 240), (256, 264), (280, 288), (304, 312), (328, 336), (352, 360), (376, 384), (400, 408)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !131  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !132
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 2
  tail call void @kissat_dealloc(ptr noundef %i.a, ptr noundef %i.c, i64 noundef %i.i, i64 noundef 4) #15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.j = load ptr, ptr %0, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !118  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !133
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 2
  tail call void @kissat_dealloc(ptr noundef %i.j, ptr noundef %i.l, i64 noundef %i.r, i64 noundef 4) #15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %i.s = load ptr, ptr %0, align 8, !tbaa !23
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !120  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !174
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 2
  tail call void @kissat_dealloc(ptr noundef %i.s, ptr noundef %i.u, i64 noundef %i.aa, i64 noundef 4) #15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %i.ab = load ptr, ptr %0, align 8, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !175 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !176
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 2
  tail call void @kissat_dealloc(ptr noundef %i.ab, ptr noundef %i.ad, i64 noundef %i.aj, i64 noundef 4) #15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false)
  %i.ak = load ptr, ptr %0, align 8, !tbaa !23
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !125 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !134
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 2
  tail call void @kissat_dealloc(ptr noundef %i.ak, ptr noundef %i.am, i64 noundef %i.as, i64 noundef 4) #15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false)
  %i.at = load ptr, ptr %0, align 8, !tbaa !23
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !109 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !135
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 2
  tail call void @kissat_dealloc(ptr noundef %i.at, ptr noundef %i.av, i64 noundef %i.bb, i64 noundef 4) #15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  %i.bc = load ptr, ptr %0, align 8, !tbaa !23
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !106 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !177
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.be to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 2
  tail call void @kissat_dealloc(ptr noundef %i.bc, ptr noundef %i.be, i64 noundef %i.bk, i64 noundef 4) #15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i8 0, i64 24, i1 false)
  %i.bl = load ptr, ptr %0, align 8, !tbaa !23
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !111 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !136
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = ashr exact i64 %i.bs, 2
  tail call void @kissat_dealloc(ptr noundef %i.bl, ptr noundef %i.bn, i64 noundef %i.bt, i64 noundef 4) #15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i8 0, i64 24, i1 false)
  %i.bu = load ptr, ptr %0, align 8, !tbaa !23
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !122 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !137
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bw to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = ashr exact i64 %i.cb, 2
  tail call void @kissat_dealloc(ptr noundef %i.bu, ptr noundef %i.bw, i64 noundef %i.cc, i64 noundef 4) #15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i8 0, i64 24, i1 false)
  %i.cd = load ptr, ptr %0, align 8, !tbaa !23
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !124 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !116
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %i.cf to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = ashr exact i64 %i.ck, 2
  tail call void @kissat_dealloc(ptr noundef %i.cd, ptr noundef %i.cf, i64 noundef %i.cl, i64 noundef 4) #15
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i8 0, i64 24, i1 false)
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !38
  %.not = icmp eq i64 %i.cn, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %.pre = load ptr, ptr %i.co, align 8, !tbaa !97
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.lcssa = phi i64 [ 0, %bb.a ], [ %i.ef, %bb.b ] ; 4 uses
  %i.cp = lshr i64 %.lcssa, 1
  %i.cq = load ptr, ptr %0, align 8, !tbaa !23
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !138
  %i.ct = and i64 %i.cp, 4294967295               ; 4 uses
  tail call void @kissat_dealloc(ptr noundef %i.cq, ptr noundef %i.cs, i64 noundef %i.ct, i64 noundef 1) #15
  %i.cu = load ptr, ptr %0, align 8, !tbaa !23
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !37
  tail call void @kissat_dealloc(ptr noundef %i.cu, ptr noundef %i.cw, i64 noundef %i.ct, i64 noundef 1) #15
  %i.cx = load ptr, ptr %0, align 8, !tbaa !23
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !129
  tail call void @kissat_dealloc(ptr noundef %i.cx, ptr noundef %i.cz, i64 noundef %.lcssa, i64 noundef 1) #15
  %i.da = load ptr, ptr %0, align 8, !tbaa !23
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !130
  tail call void @kissat_dealloc(ptr noundef %i.da, ptr noundef %i.dc, i64 noundef %.lcssa, i64 noundef 1) #15
  %i.dd = load ptr, ptr %0, align 8, !tbaa !23
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !128
  tail call void @kissat_dealloc(ptr noundef %i.dd, ptr noundef %i.df, i64 noundef %i.ct, i64 noundef 8) #15
  %i.dg = load ptr, ptr %0, align 8, !tbaa !23
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !91
  tail call void @kissat_dealloc(ptr noundef %i.dg, ptr noundef %i.di, i64 noundef %i.ct, i64 noundef 16) #15
  %i.dj = load ptr, ptr %0, align 8, !tbaa !23
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !97
  tail call void @kissat_dealloc(ptr noundef %i.dj, ptr noundef %i.dl, i64 noundef %.lcssa, i64 noundef 24) #15
  %i.dm = load ptr, ptr %0, align 8, !tbaa !23
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !127
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !139
  tail call void @kissat_dealloc(ptr noundef %i.dm, ptr noundef %i.do, i64 noundef %i.dq, i64 noundef 4) #15
  %i.dr = load ptr, ptr %0, align 8, !tbaa !23
  tail call void @kissat_free(ptr noundef %i.dr, ptr noundef nonnull %0, i64 noundef 432) #15
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.ds = phi ptr [ %.pre, %.lr.ph ], [ %i.ec, %bb.b ]
  %.0114 = phi i64 [ 0, %.lr.ph ], [ %i.ee, %bb.b ] ; 3 uses
  %i.dt = load ptr, ptr %0, align 8, !tbaa !23
  %i.du = getelementptr inbounds nuw [24 x i8], ptr %i.ds, i64 %.0114 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !100 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !117
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = ptrtoint ptr %i.dv to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = ashr exact i64 %i.ea, 3
  tail call void @kissat_dealloc(ptr noundef %i.dt, ptr noundef %i.dv, i64 noundef %i.eb, i64 noundef 8) #15
  %i.ec = load ptr, ptr %i.co, align 8, !tbaa !97 ; 2 uses
  %i.ed = getelementptr inbounds nuw [24 x i8], ptr %i.ec, i64 %.0114
  %i.ee = add nuw i64 %.0114, 1                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ed, i8 0, i64 24, i1 false)
  %i.ef = load i64, ptr %i.cm, align 8, !tbaa !38 ; 2 uses
  %i.eg = icmp ult i64 %i.ee, %i.ef
  br i1 %i.eg, label %bb.b, label %._crit_edge, !llvm.loop !173
}

declare void @kissat_dealloc(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @kissat_free(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @completely_backtrack_to_root_level(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !129  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !102  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !103  ; 2 uses
  %.not16 = icmp eq ptr %i.d, %i.f
  br i1 %.not16, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %unassign.exit
  %.017 = phi ptr [ %i.d, %.lr.ph ], [ %i.ae, %unassign.exit ] ; 2 uses
  %i.j = load i32, ptr %.017, align 4, !tbaa !104 ; 3 uses
  %i.k = xor i32 %i.j, 1
  %i.l = lshr i32 %i.j, 1                         ; 3 uses
  %i.m = zext i32 %i.k to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.m
  store i8 0, ptr %i.n, align 1, !tbaa !40
  %i.o = zext i32 %i.j to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.o
  store i8 0, ptr %i.p, align 1, !tbaa !40
  %i.q = load i32, ptr %i.g, align 8, !tbaa !140
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.g, align 8, !tbaa !140
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !91   ; 2 uses
  %i.t = zext nneg i32 %i.l to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !96
  %i.x = load i32, ptr %i.i, align 8, !tbaa !28   ; 2 uses
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !96
  %i.ac = icmp ule i64 %i.w, %i.ab
  %i.ad = icmp eq i32 %i.x, %i.l
  %or.cond.i = or i1 %i.ad, %i.ac
  br i1 %or.cond.i, label %unassign.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.l, ptr %i.i, align 8, !tbaa !28
  br label %unassign.exit

unassign.exit:                                    ; preds = %bb.b, %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %.017, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.ae, %i.f
  br i1 %.not, label %.critedge.loopexit, label %bb.b, !llvm.loop !0

.critedge.loopexit:                               ; preds = %unassign.exit
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !102
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
  %i.af = phi ptr [ %.pre, %.critedge.loopexit ], [ %i.d, %bb.a ]
  store ptr %i.af, ptr %i.e, align 8, !tbaa !103
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.ag, align 4, !tbaa !141
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.ah, align 8, !tbaa !142
  ret void
}

; Function Attrs: nounwind uwtable
define void @kitten_assume(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @invalid_api_usage(ptr noundef nonnull @__func__.kitten_assume, ptr noundef nonnull @.str.1)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32
  %.not10 = icmp eq i32 %i.b, 0
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @reset_incremental(ptr noundef nonnull %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.c = tail call fastcc i32 @import_literal(ptr noundef nonnull %0, i32 noundef %1)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !119  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !133
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.j = load ptr, ptr %0, align 8, !tbaa !23
  tail call void @kissat_stack_enlarge(ptr noundef %i.j, ptr noundef nonnull %i.i, i64 noundef 4) #15
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !119
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.k = phi ptr [ %.pre, %bb.f ], [ %i.e, %bb.e ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store ptr %i.l, ptr %i.d, align 8, !tbaa !119
  store i32 %i.c, ptr %i.k, align 4, !tbaa !104
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @reset_incremental(ptr nofree noundef captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !142
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !129  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !102  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !103  ; 2 uses
  %.not16.i = icmp eq ptr %i.f, %i.h
  br i1 %.not16.i, label %completely_backtrack_to_root_level.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %unassign.exit.i, %.lr.ph.i
  %.017.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.ag, %unassign.exit.i ] ; 2 uses
  %i.l = load i32, ptr %.017.i, align 4, !tbaa !104 ; 3 uses
  %i.m = xor i32 %i.l, 1
  %i.n = lshr i32 %i.l, 1                         ; 3 uses
  %i.o = zext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.o
  store i8 0, ptr %i.p, align 1, !tbaa !40
  %i.q = zext i32 %i.l to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.q
  store i8 0, ptr %i.r, align 1, !tbaa !40
  %i.s = load i32, ptr %i.i, align 8, !tbaa !140
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.i, align 8, !tbaa !140
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !91   ; 2 uses
  %i.v = zext nneg i32 %i.n to i64
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !96
  %i.z = load i32, ptr %i.k, align 8, !tbaa !28   ; 2 uses
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !96
  %i.ae = icmp ule i64 %i.y, %i.ad
  %i.af = icmp eq i32 %i.z, %i.n
  %or.cond.i.i = or i1 %i.af, %i.ae
  br i1 %or.cond.i.i, label %unassign.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.n, ptr %i.k, align 8, !tbaa !28
  br label %unassign.exit.i

unassign.exit.i:                                  ; preds = %bb.d, %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %.017.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.ag, %i.h
  br i1 %.not.i, label %.critedge.loopexit.i, label %bb.c, !llvm.loop !0

.critedge.loopexit.i:                             ; preds = %unassign.exit.i
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !102
  br label %completely_backtrack_to_root_level.exit

completely_backtrack_to_root_level.exit:          ; preds = %bb.b, %.critedge.loopexit.i
  %i.ah = phi ptr [ %.pre.i, %.critedge.loopexit.i ], [ %i.f, %bb.b ]
  store ptr %i.ah, ptr %i.g, align 8, !tbaa !103
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.ai, align 4, !tbaa !141
  store i32 0, ptr %i.a, align 8, !tbaa !142
  br label %bb.e

bb.e:                                             ; preds = %completely_backtrack_to_root_level.exit, %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !118 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !119 ; 2 uses
  %i.an = icmp eq ptr %i.ak, %i.am
  br i1 %i.an, label %reset_assumptions.exit, label %.lr.ph.i9

.lr.ph.i9:                                        ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !130
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i9
  %i.aq = phi ptr [ %i.am, %.lr.ph.i9 ], [ %i.ar, %bb.f ]
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -4 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !104
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.at
  store i8 0, ptr %i.au, align 1, !tbaa !143
  %.not.i10 = icmp eq ptr %i.ak, %i.ar
  br i1 %.not.i10, label %._crit_edge.i, label %bb.f, !llvm.loop !1

._crit_edge.i:                                    ; preds = %bb.f
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !119
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !27
  %.not8.i = icmp eq i32 %i.aw, -1
  br i1 %.not8.i, label %reset_assumptions.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i
  store i32 -1, ptr %i.av, align 8, !tbaa !27
  br label %reset_assumptions.exit

reset_assumptions.exit:                           ; preds = %bb.g, %._crit_edge.i, %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !32
  %i.az = icmp eq i32 %i.ay, 21
  br i1 %i.az, label %bb.h, label %bb.m

bb.h:                                             ; preds = %reset_assumptions.exit
  %i.ba = getelementptr i8, ptr %0, i64 320
  %.val.i = load ptr, ptr %i.ba, align 8, !tbaa !106 ; 3 uses
  %i.bb = getelementptr i8, ptr %0, i64 328
  %.val11.i = load ptr, ptr %i.bb, align 8, !tbaa !105 ; 3 uses
  %.not13.i = icmp eq ptr %.val.i, %.val11.i
  br i1 %.not13.i, label %reset_core.exit, label %.lr.ph.i11

.lr.ph.i11:                                       ; preds = %bb.h
  %i.bc = getelementptr i8, ptr %0, i64 12
  %.val12.i = load i8, ptr %i.bc, align 4, !tbaa !36, !range !34, !noundef !35
  %i.bd = trunc nuw i8 %.val12.i to i1
  br i1 %i.bd, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i11, %next_klause.exit.us.i
  %.015.us.i = phi ptr [ %.0.i.us.i, %next_klause.exit.us.i ], [ %.val.i, %.lr.ph.i11 ] ; 4 uses
  %i.be = getelementptr i8, ptr %.015.us.i, i64 8 ; 2 uses
  %.0.val.us.i = load i32, ptr %i.be, align 4, !tbaa !144 ; 3 uses
  %i.bf = trunc i32 %.0.val.us.i to i1
  br i1 %i.bf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.split.us.i
  %i.bg = and i32 %.0.val.us.i, -2                ; 2 uses
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !144
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.split.us.i
  %.val.i.us.i = phi i32 [ %i.bg, %bb.i ], [ %.0.val.us.i, %.lr.ph.split.us.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.015.us.i, i64 12
  %i.bi = getelementptr inbounds nuw i8, ptr %.015.us.i, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !114
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bk ; 2 uses
  %i.bm = and i32 %.val.i.us.i, 2
  %.not.i.us.i = icmp eq i32 %i.bm, 0
  br i1 %.not.i.us.i, label %next_klause.exit.us.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bn = load i32, ptr %.015.us.i, align 4, !tbaa !145
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bo
  br label %next_klause.exit.us.i

next_klause.exit.us.i:                            ; preds = %bb.k, %bb.j
  %.0.i.us.i = phi ptr [ %i.bp, %bb.k ], [ %i.bl, %bb.j ] ; 2 uses
  %.not.us.i = icmp eq ptr %.0.i.us.i, %.val11.i
  br i1 %.not.us.i, label %reset_core.exit, label %.lr.ph.split.us.i, !llvm.loop !178

.lr.ph.split.i:                                   ; preds = %.lr.ph.i11, %next_klause.exit.i
  %.015.i = phi ptr [ %i.bx, %next_klause.exit.i ], [ %.val.i, %.lr.ph.i11 ] ; 3 uses
  %i.bq = getelementptr i8, ptr %.015.i, i64 8    ; 2 uses
  %.0.val.i = load i32, ptr %i.bq, align 4, !tbaa !144 ; 2 uses
  %i.br = trunc i32 %.0.val.i to i1
  br i1 %i.br, label %bb.l, label %next_klause.exit.i

bb.l:                                             ; preds = %.lr.ph.split.i
  %i.bs = and i32 %.0.val.i, -2
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !144
  br label %next_klause.exit.i

next_klause.exit.i:                               ; preds = %bb.l, %.lr.ph.split.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.015.i, i64 12
  %i.bu = getelementptr inbounds nuw i8, ptr %.015.i, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !114
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.bw ; 2 uses
  %.not.i12 = icmp eq ptr %i.bx, %.val11.i
  br i1 %.not.i12, label %reset_core.exit, label %.lr.ph.split.i, !llvm.loop !178

reset_core.exit:                                  ; preds = %next_klause.exit.i, %next_klause.exit.us.i, %bb.h
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !120
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !121
  br label %bb.m

bb.m:                                             ; preds = %reset_assumptions.exit, %reset_core.exit
  store i32 0, ptr %i.ax, align 8, !tbaa !32
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @import_literal(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = lshr i32 %1, 1                           ; 2 uses
  %i.b = zext nneg i32 %i.a to i64                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !146  ; 2 uses
  %.not = icmp ugt i64 %i.d, %i.b
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !139  ; 4 uses
  %.not.i = icmp ugt i64 %i.f, %i.b
  br i1 %.not.i, label %enlarge_external.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not28.i = icmp eq i64 %i.f, 0
  %i.g = shl nuw nsw i64 %i.f, 1
  %i.h = select i1 %.not28.i, i64 1, i64 %i.g
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i64 [ %i.h, %bb.c ], [ %i.i, %bb.d ] ; 4 uses
  %.not29.i = icmp samesign ugt i64 %.0.i, %i.b
  %i.i = shl nuw nsw i64 %.0.i, 1
  br i1 %.not29.i, label %bb.e, label %bb.d, !llvm.loop !179

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !127  ; 2 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !23
  %i.m = tail call ptr @kissat_calloc(ptr noundef %i.l, i64 noundef %.0.i, i64 noundef 4) #15 ; 2 uses
  store ptr %i.m, ptr %i.j, align 8, !tbaa !127
  %i.n = shl nuw nsw i64 %i.d, 2
  %i.o = and i64 %i.n, 17179869180                ; 2 uses
  %.not30.i = icmp eq i64 %i.o, 0
  br i1 %.not30.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.m, ptr align 4 %i.k, i64 %i.o, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = load ptr, ptr %0, align 8, !tbaa !23
  tail call void @kissat_dealloc(ptr noundef %i.p, ptr noundef %i.k, i64 noundef %i.f, i64 noundef 4) #15
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !139
  br label %enlarge_external.exit

enlarge_external.exit:                            ; preds = %bb.b, %bb.g
  %i.q = add nuw nsw i64 %i.b, 1
  store i64 %i.q, ptr %i.c, align 8, !tbaa !146
  br label %bb.h

bb.h:                                             ; preds = %enlarge_external.exit, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !127  ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.b
  %i.u = load i32, ptr %i.t, align 4, !tbaa !104  ; 2 uses
  %.not30 = icmp eq i32 %i.u, 0
  br i1 %.not30, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !126  ; 3 uses
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !125
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = lshr exact i64 %i.ab, 2
  %i.ad = trunc i64 %i.ac to i32                  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !134
  %i.ag = icmp eq ptr %i.x, %i.af
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ah = load ptr, ptr %0, align 8, !tbaa !23
  tail call void @kissat_stack_enlarge(ptr noundef %i.ah, ptr noundef nonnull %i.v, i64 noundef 4) #15
  %.pre = load ptr, ptr %i.w, align 8, !tbaa !126
  %.pre35 = load ptr, ptr %i.r, align 8, !tbaa !127
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ai = phi ptr [ %.pre35, %bb.j ], [ %i.s, %bb.i ]
  %i.aj = phi ptr [ %.pre, %bb.j ], [ %i.x, %bb.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store ptr %i.ak, ptr %i.w, align 8, !tbaa !126
  store i32 %i.a, ptr %i.aj, align 4, !tbaa !104
  %i.al = add i32 %i.ad, 1
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.b
  store i32 %i.al, ptr %i.am, align 4, !tbaa !104
  br label %bb.m

bb.l:                                             ; preds = %bb.h
  %i.an = add i32 %i.u, -1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0 = phi i32 [ %i.an, %bb.l ], [ %i.ad, %bb.k ]
  %i.ao = shl i32 %.0, 1                          ; 2 uses
  %i.ap = zext i32 %i.ao to i64
  %i.aq = add nuw nsw i64 %i.ap, 2                ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !90 ; 6 uses
  %i.at = icmp ugt i64 %i.aq, %i.as
  br i1 %i.at, label %bb.n, label %enlarge_internal.exit

bb.n:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !38 ; 7 uses
  %i.aw = lshr i64 %i.as, 1                       ; 8 uses
  %i.ax = icmp ult i64 %i.av, %i.aq
  br i1 %i.ax, label %bb.o, label %._crit_edge.i

bb.o:                                             ; preds = %bb.n
  %.not.i31 = icmp eq i64 %i.av, 0
  %i.ay = shl nuw nsw i64 %i.av, 1
  %i.az = select i1 %.not.i31, i64 2, i64 %i.ay
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.0.i32 = phi i64 [ %i.az, %bb.o ], [ %i.ba, %bb.p ] ; 7 uses
  %.not144.i = icmp samesign ugt i64 %.0.i32, %i.aq
  %i.ba = shl nuw nsw i64 %.0.i32, 1
  br i1 %.not144.i, label %bb.q, label %bb.p, !llvm.loop !180

bb.q:                                             ; preds = %bb.p
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !138 ; 3 uses
  %i.bd = load ptr, ptr %0, align 8, !tbaa !23
  %i.be = lshr exact i64 %.0.i32, 1               ; 4 uses
  %i.bf = tail call ptr @kissat_calloc(ptr noundef %i.bd, i64 noundef %i.be, i64 noundef 1) #15 ; 3 uses
  store ptr %i.bf, ptr %i.bb, align 8, !tbaa !138
  %.not145.i = icmp eq i64 %i.aw, 0               ; 4 uses
  br i1 %.not145.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bf, ptr align 1 %i.bc, i64 %i.aw, i1 false)
  %.pre.i = load ptr, ptr %i.bb, align 8, !tbaa !138
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bg = phi ptr [ %.pre.i, %bb.r ], [ %i.bf, %bb.q ]
  store ptr %i.bc, ptr %i.bb, align 8, !tbaa !138
  %i.bh = load ptr, ptr %0, align 8, !tbaa !23
  %i.bi = lshr i64 %i.av, 1                       ; 4 uses
  tail call void @kissat_dealloc(ptr noundef %i.bh, ptr noundef %i.bc, i64 noundef %i.bi, i64 noundef 1) #15
  store ptr %i.bg, ptr %i.bb, align 8, !tbaa !138
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 5 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !37 ; 3 uses
  %i.bl = load ptr, ptr %0, align 8, !tbaa !23
  %i.bm = tail call ptr @kissat_calloc(ptr noundef %i.bl, i64 noundef %i.be, i64 noundef 1) #15 ; 3 uses
  store ptr %i.bm, ptr %i.bj, align 8, !tbaa !37
  br i1 %.not145.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bm, ptr align 1 %i.bk, i64 %i.aw, i1 false)
  %.pre152.i = load ptr, ptr %i.bj, align 8, !tbaa !37
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bn = phi ptr [ %.pre152.i, %bb.t ], [ %i.bm, %bb.s ]
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !37
  %i.bo = load ptr, ptr %0, align 8, !tbaa !23
  tail call void @kissat_dealloc(ptr noundef %i.bo, ptr noundef %i.bk, i64 noundef %i.bi, i64 noundef 1) #15
  store ptr %i.bn, ptr %i.bj, align 8, !tbaa !37
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !129 ; 3 uses
  %i.br = load ptr, ptr %0, align 8, !tbaa !23
  %i.bs = tail call ptr @kissat_calloc(ptr noundef %i.br, i64 noundef %.0.i32, i64 noundef 1) #15 ; 3 uses
  store ptr %i.bs, ptr %i.bp, align 8, !tbaa !129
  %.not146.i = icmp eq i64 %i.as, 0               ; 3 uses
  br i1 %.not146.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bs, ptr align 1 %i.bq, i64 %i.as, i1 false)
  %.pre153.i = load ptr, ptr %i.bp, align 8, !tbaa !129
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bt = phi ptr [ %.pre153.i, %bb.v ], [ %i.bs, %bb.u ]
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !129
  %i.bu = load ptr, ptr %0, align 8, !tbaa !23
  tail call void @kissat_dealloc(ptr noundef %i.bu, ptr noundef %i.bq, i64 noundef %i.av, i64 noundef 1) #15
  store ptr %i.bt, ptr %i.bp, align 8, !tbaa !129
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !130 ; 3 uses
  %i.bx = load ptr, ptr %0, align 8, !tbaa !23
  %i.by = tail call ptr @kissat_calloc(ptr noundef %i.bx, i64 noundef %.0.i32, i64 noundef 1) #15 ; 3 uses
  store ptr %i.by, ptr %i.bv, align 8, !tbaa !130
  br i1 %.not146.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.by, ptr align 1 %i.bw, i64 %i.as, i1 false)
  %.pre154.i = load ptr, ptr %i.bv, align 8, !tbaa !130
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bz = phi ptr [ %.pre154.i, %bb.x ], [ %i.by, %bb.w ]
  store ptr %i.bw, ptr %i.bv, align 8, !tbaa !130
  %i.ca = load ptr, ptr %0, align 8, !tbaa !23
  tail call void @kissat_dealloc(ptr noundef %i.ca, ptr noundef %i.bw, i64 noundef %i.av, i64 noundef 1) #15
  store ptr %i.bz, ptr %i.bv, align 8, !tbaa !130
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !128 ; 3 uses
  %i.cd = load ptr, ptr %0, align 8, !tbaa !23
  %i.ce = tail call ptr @kissat_calloc(ptr noundef %i.cd, i64 noundef %i.be, i64 noundef 8) #15 ; 3 uses
  store ptr %i.ce, ptr %i.cb, align 8, !tbaa !128
  br i1 %.not145.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cf = shl nuw nsw i64 %i.aw, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ce, ptr align 1 %i.cc, i64 %i.cf, i1 false)
  %.pre155.i = load ptr, ptr %i.cb, align 8, !tbaa !128
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cg = phi ptr [ %.pre155.i, %bb.z ], [ %i.ce, %bb.y ]
  store ptr %i.cc, ptr %i.cb, align 8, !tbaa !128
  %i.ch = load ptr, ptr %0, align 8, !tbaa !23
  tail call void @kissat_dealloc(ptr noundef %i.ch, ptr noundef %i.cc, i64 noundef %i.bi, i64 noundef 8) #15
  store ptr %i.cg, ptr %i.cb, align 8, !tbaa !128
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !91 ; 3 uses
  %i.ck = load ptr, ptr %0, align 8, !tbaa !23
  %i.cl = tail call ptr @kissat_calloc(ptr noundef %i.ck, i64 noundef %i.be, i64 noundef 16) #15 ; 3 uses
  store ptr %i.cl, ptr %i.ci, align 8, !tbaa !91
  br i1 %.not145.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cm = shl nuw nsw i64 %i.aw, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.cl, ptr align 1 %i.cj, i64 %i.cm, i1 false)
  %.pre156.i = load ptr, ptr %i.ci, align 8, !tbaa !91
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cn = phi ptr [ %.pre156.i, %bb.ab ], [ %i.cl, %bb.aa ]
  store ptr %i.cj, ptr %i.ci, align 8, !tbaa !91
  %i.co = load ptr, ptr %0, align 8, !tbaa !23
  tail call void @kissat_dealloc(ptr noundef %i.co, ptr noundef %i.cj, i64 noundef %i.bi, i64 noundef 16) #15
  store ptr %i.cn, ptr %i.ci, align 8, !tbaa !91
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 5 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !97 ; 3 uses
  %i.cr = load ptr, ptr %0, align 8, !tbaa !23
  %i.cs = tail call ptr @kissat_calloc(ptr noundef %i.cr, i64 noundef %.0.i32, i64 noundef 24) #15 ; 3 uses
  store ptr %i.cs, ptr %i.cp, align 8, !tbaa !97
  br i1 %.not146.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ct = mul nuw nsw i64 %i.as, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.cs, ptr align 1 %i.cq, i64 %i.ct, i1 false)
  %.pre157.i = load ptr, ptr %i.cp, align 8, !tbaa !97
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.cu = phi ptr [ %.pre157.i, %bb.ad ], [ %i.cs, %bb.ac ]
  store ptr %i.cq, ptr %i.cp, align 8, !tbaa !97
  %i.cv = load ptr, ptr %0, align 8, !tbaa !23
  tail call void @kissat_dealloc(ptr noundef %i.cv, ptr noundef %i.cq, i64 noundef %i.av, i64 noundef 24) #15
  store ptr %i.cu, ptr %i.cp, align 8, !tbaa !97
  store i64 %.0.i32, ptr %i.au, align 8, !tbaa !38
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.n, %bb.ae
  %i.cw = lshr exact i64 %i.aq, 1                 ; 3 uses
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !90
  %i.cx = icmp samesign ult i64 %i.aw, %i.cw
  br i1 %i.cx, label %.lr.ph.i.i, label %._crit_edge16.i.i

._crit_edge16.i.i:                                ; preds = %._crit_edge.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 76
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !25
  br label %bb.af

.lr.ph.i.i:                                       ; preds = %._crit_edge.i
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !91 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.promoted.i.i = load i32, ptr %i.cy, align 8, !tbaa !140
  %.promoted10.i.i = load i32, ptr %i.db, align 4, !tbaa !25
  %.promoted12.i.i = load i64, ptr %i.dd, align 8, !tbaa !92
  br label %bb.ah

._crit_edge.i.i:                                  ; preds = %enqueue.exit.i.i
  %i.de = trunc nuw i64 %i.cw to i32
  %i.df = trunc nuw nsw i64 %i.aw to i32
  %i.dg = sub i32 %i.de, %i.df
  %i.dh = add i32 %i.dg, %.promoted.i.i
  store i32 %i.dh, ptr %i.cy, align 8, !tbaa !140
  store i32 %i.do, ptr %i.db, align 4, !tbaa !25
  store i64 %i.du, ptr %i.dd, align 8, !tbaa !92
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge.i.i, %._crit_edge16.i.i
  %i.di = phi i32 [ %.pre.i.i, %._crit_edge16.i.i ], [ %i.do, %._crit_edge.i.i ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !28
  %i.dl = icmp eq i32 %i.dk, %i.di
  br i1 %i.dl, label %enlarge_internal.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i32 %i.di, ptr %i.dj, align 8, !tbaa !28
  br label %enlarge_internal.exit

bb.ah:                                            ; preds = %enqueue.exit.i.i, %.lr.ph.i.i
  %i.dm = phi i64 [ %.promoted12.i.i, %.lr.ph.i.i ], [ %i.du, %enqueue.exit.i.i ] ; 2 uses
  %i.dn = phi i32 [ %.promoted10.i.i, %.lr.ph.i.i ], [ %i.do, %enqueue.exit.i.i ] ; 3 uses
  %.09.i.i = phi i64 [ %i.aw, %.lr.ph.i.i ], [ %i.dw, %enqueue.exit.i.i ] ; 3 uses
  %i.do = trunc nuw nsw i64 %.09.i.i to i32       ; 5 uses
  %i.dp = icmp eq i32 %i.dn, -1
  br i1 %i.dp, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 %i.do, ptr %i.dc, align 8, !tbaa !24
  br label %enqueue.exit.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.dq = zext i32 %i.dn to i64
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %i.dq
  store i32 %i.do, ptr %i.dr, align 8, !tbaa !95
  br label %enqueue.exit.i.i

enqueue.exit.i.i:                                 ; preds = %bb.aj, %bb.ai
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %.09.i.i ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store i32 %i.dn, ptr %i.dt, align 4, !tbaa !94
  store i32 -1, ptr %i.ds, align 8, !tbaa !95
  %i.du = add i64 %i.dm, 1                        ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store i64 %i.dm, ptr %i.dv, align 8, !tbaa !96
  %i.dw = add nuw nsw i64 %.09.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.dw, %i.cw
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.ah, !llvm.loop !181

enlarge_internal.exit:                            ; preds = %bb.ag, %bb.af, %bb.m
  %i.dx = and i32 %1, 1
  %i.dy = or disjoint i32 %i.ao, %i.dx
  ret i32 %i.dy
}

; Function Attrs: nounwind uwtable
define void @kitten_clause_with_id_and_exception(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(address) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @invalid_api_usage(ptr noundef nonnull @__func__.kitten_clause_with_id_and_exception, ptr noundef nonnull @.str.1)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32
  %.not38 = icmp eq i32 %i.b, 0
  br i1 %.not38, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @reset_incremental(ptr noundef nonnull %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.idx = shl nuw nsw i64 %2, 2
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 %.idx
  %.not3943 = icmp eq i64 %2, 0
  br i1 %.not3943, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 296
  br label %bb.f

._crit_edge:                                      ; preds = %bb.l, %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !109  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 5 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !108
  %.not4045 = icmp eq ptr %i.i, %i.k
  br i1 %.not4045, label %._crit_edge49, label %.lr.ph48

.lr.ph48:                                         ; preds = %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %bb.v

bb.f:                                             ; preds = %.lr.ph, %bb.l
  %.03644 = phi ptr [ %3, %.lr.ph ], [ %i.ab, %bb.l ] ; 2 uses
  %i.m = load i32, ptr %.03644, align 4, !tbaa !104 ; 4 uses
  %i.n = icmp eq i32 %i.m, %4
  br i1 %i.n, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = tail call fastcc i32 @import_literal(ptr noundef nonnull %0, i32 noundef %i.m) ; 2 uses
  %i.p = lshr i32 %i.o, 1
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !138
  %i.r = zext nneg i32 %i.p to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !40
  %.not41 = icmp eq i8 %i.t, 0
  br i1 %.not41, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = lshr i32 %i.m, 1
  tail call void (ptr, ptr, ...) @invalid_api_usage(ptr noundef nonnull @__func__.kitten_clause_with_id_and_exception, ptr noundef nonnull @.str.4, i32 noundef %i.u, i32 noundef %i.m)
  unreachable

bb.i:                                             ; preds = %bb.g
  store i8 1, ptr %i.s, align 1, !tbaa !40
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !108  ; 2 uses
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !135
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = load ptr, ptr %0, align 8, !tbaa !23
  tail call void @kissat_stack_enlarge(ptr noundef %i.y, ptr noundef nonnull %i.g, i64 noundef 4) #15
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !108
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.z = phi ptr [ %.pre, %bb.j ], [ %i.v, %bb.i ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store ptr %i.aa, ptr %i.e, align 8, !tbaa !108
  store i32 %i.o, ptr %i.z, align 4, !tbaa !104
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %.03644, i64 4 ; 2 uses
  %.not39 = icmp eq ptr %i.ab, %i.c
  br i1 %.not39, label %._crit_edge, label %bb.f, !llvm.loop !182

._crit_edge49:                                    ; preds = %bb.v, %._crit_edge
  %i.ac = phi ptr [ %i.i, %._crit_edge ], [ %i.cl, %bb.v ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 11 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !105 ; 2 uses
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !106
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = ashr exact i64 %i.aj, 2                 ; 2 uses
  %i.al = icmp ugt i64 %i.ak, 4294967294
  br i1 %i.al, label %bb.m, label %new_reference.exit.i

bb.m:                                             ; preds = %._crit_edge49
  tail call void (ptr, ...) @kissat_fatal(ptr noundef nonnull @.str.11) #15
  %.pre.i = load ptr, ptr %i.ae, align 8, !tbaa !103
  %.pre51 = load ptr, ptr %i.j, align 8, !tbaa !108
  br label %new_reference.exit.i

new_reference.exit.i:                             ; preds = %bb.m, %._crit_edge49
  %i.am = phi ptr [ %i.ac, %._crit_edge49 ], [ %.pre51, %bb.m ]
  %i.an = phi ptr [ %i.af, %._crit_edge49 ], [ %.pre.i, %bb.m ] ; 2 uses
  %i.ao = load ptr, ptr %0, align 8, !tbaa !23    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4112 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !107
  %i.ar = add i64 %i.aq, 1
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !107
  %i.as = load ptr, ptr %i.h, align 8, !tbaa !109
  %i.at = ptrtoint ptr %i.am to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = lshr exact i64 %i.av, 2
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 4 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !112 ; 2 uses
  %i.ba = icmp eq ptr %i.an, %i.az
  br i1 %i.ba, label %bb.n, label %bb.o

bb.n:                                             ; preds = %new_reference.exit.i
  tail call void @kissat_stack_enlarge(ptr noundef nonnull %i.ao, ptr noundef nonnull %i.ad, i64 noundef 4) #15
  %.pre39.i = load ptr, ptr %i.ae, align 8, !tbaa !103
  %.pre40.i = load ptr, ptr %i.ay, align 8, !tbaa !112
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %new_reference.exit.i
  %i.bb = phi ptr [ %.pre40.i, %bb.n ], [ %i.az, %new_reference.exit.i ] ; 2 uses
  %i.bc = phi ptr [ %.pre39.i, %bb.n ], [ %i.an, %new_reference.exit.i ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4 ; 3 uses
  store ptr %i.bd, ptr %i.ae, align 8, !tbaa !103
  store i32 %1, ptr %i.bc, align 4, !tbaa !104
  %i.be = icmp eq ptr %i.bd, %i.bb
  br i1 %i.be, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bf = load ptr, ptr %0, align 8, !tbaa !23
  tail call void @kissat_stack_enlarge(ptr noundef %i.bf, ptr noundef nonnull %i.ad, i64 noundef 4) #15
  %.pre41.i = load ptr, ptr %i.ae, align 8, !tbaa !103
  %.pre42.i = load ptr, ptr %i.ay, align 8, !tbaa !112
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bg = phi ptr [ %.pre42.i, %bb.p ], [ %i.bb, %bb.o ]
  %i.bh = phi ptr [ %.pre41.i, %bb.p ], [ %i.bd, %bb.o ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4 ; 3 uses
  store ptr %i.bi, ptr %i.ae, align 8, !tbaa !103
  store i32 %i.ax, ptr %i.bh, align 4, !tbaa !104
  %i.bj = icmp eq ptr %i.bi, %i.bg
  br i1 %i.bj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bk = load ptr, ptr %0, align 8, !tbaa !23
  tail call void @kissat_stack_enlarge(ptr noundef %i.bk, ptr noundef nonnull %i.ad, i64 noundef 4) #15
  %.pre43.i = load ptr, ptr %i.ae, align 8, !tbaa !103
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bl = phi ptr [ %.pre43.i, %bb.r ], [ %i.bi, %bb.q ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4 ; 2 uses
  store ptr %i.bm, ptr %i.ae, align 8, !tbaa !103
  store i32 0, ptr %i.bl, align 4, !tbaa !104
  %i.bn = load ptr, ptr %i.h, align 8, !tbaa !109 ; 2 uses
  %i.bo = load ptr, ptr %i.j, align 8, !tbaa !108 ; 2 uses
  %.not37.i = icmp eq ptr %i.bn, %i.bo
  br i1 %.not37.i, label %new_original_klause.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.s, %bb.u
  %i.bp = phi ptr [ %i.bv, %bb.u ], [ %i.bm, %bb.s ] ; 2 uses
  %.038.i = phi ptr [ %i.bw, %bb.u ], [ %i.bn, %bb.s ] ; 2 uses
  %i.bq = load i32, ptr %.038.i, align 4, !tbaa !104
  %i.br = load ptr, ptr %i.ay, align 8, !tbaa !112
  %i.bs = icmp eq ptr %i.bp, %i.br
  br i1 %i.bs, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.i
  %i.bt = load ptr, ptr %0, align 8, !tbaa !23
  tail call void @kissat_stack_enlarge(ptr noundef %i.bt, ptr noundef nonnull %i.ad, i64 noundef 4) #15
  %.pre44.i = load ptr, ptr %i.ae, align 8, !tbaa !103
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.i
  %i.bu = phi ptr [ %.pre44.i, %bb.t ], [ %i.bp, %.lr.ph.i ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4 ; 2 uses
  store ptr %i.bv, ptr %i.ae, align 8, !tbaa !103
  store i32 %i.bq, ptr %i.bu, align 4, !tbaa !104
  %i.bw = getelementptr inbounds nuw i8, ptr %.038.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.bw, %i.bo
  br i1 %.not.i, label %new_original_klause.exit, label %.lr.ph.i, !llvm.loop !183

new_original_klause.exit:                         ; preds = %bb.u, %bb.s
  %i.bx = trunc i64 %i.ak to i32
  tail call fastcc void @connect_new_klause(ptr noundef nonnull %0, i32 noundef %i.bx)
  %i.by = load ptr, ptr %i.ae, align 8, !tbaa !103
  %i.bz = load ptr, ptr %i.ad, align 8, !tbaa !102
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = ashr exact i64 %i.cc, 2
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !147
  %i.cf = load ptr, ptr %i.h, align 8, !tbaa !109
  store ptr %i.cf, ptr %i.j, align 8, !tbaa !108
  ret void

bb.v:                                             ; preds = %.lr.ph48, %bb.v
  %.046 = phi ptr [ %i.i, %.lr.ph48 ], [ %i.cl, %bb.v ] ; 2 uses
  %i.cg = load ptr, ptr %i.l, align 8, !tbaa !138
  %i.ch = load i32, ptr %.046, align 4, !tbaa !104
  %i.ci = lshr i32 %i.ch, 1
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cj
  store i8 0, ptr %i.ck, align 1, !tbaa !40
  %i.cl = getelementptr inbounds nuw i8, ptr %.046, i64 4 ; 3 uses
  %i.cm = load ptr, ptr %i.j, align 8, !tbaa !108
  %.not40 = icmp eq ptr %i.cl, %i.cm
  br i1 %.not40, label %._crit_edge49, label %bb.v, !llvm.loop !184
}

; Function Attrs: nounwind uwtable
define void @kitten_clause(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(address) %2) local_unnamed_addr #0 {
bb.a:
  tail call void @kitten_clause_with_id_and_exception(ptr noundef %0, i32 noundef -1, i64 noundef %1, ptr noundef %2, i32 noundef -1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @kitten_unit(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !104
  call void @kitten_clause_with_id_and_exception(ptr noundef %0, i32 noundef -1, i64 noundef 1, ptr noundef nonnull readonly %i.a, i32 noundef -1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @kitten_binary(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 %1, ptr %i.a, align 4, !tbaa !104
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %2, ptr %i.b, align 4, !tbaa !104
  call void @kitten_clause_with_id_and_exception(ptr noundef %0, i32 noundef -1, i64 noundef 2, ptr noundef nonnull readonly %i.a, i32 noundef -1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 21) i32 @kitten_solve(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @invalid_api_usage(ptr noundef nonnull @__func__.kitten_solve, ptr noundef nonnull @.str.1)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32
  %.not31 = icmp eq i32 %i.b, 0
  br i1 %.not31, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @reset_incremental(ptr noundef nonnull %0)
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !142
  %.not32 = icmp eq i32 %i.d, 0
  br i1 %.not32, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !129  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !102  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !103  ; 2 uses
  %.not16.i = icmp eq ptr %i.h, %i.j
  br i1 %.not16.i, label %completely_backtrack_to_root_level.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %unassign.exit.i, %.lr.ph.i
  %.017.i = phi ptr [ %i.h, %.lr.ph.i ], [ %i.ai, %unassign.exit.i ] ; 2 uses
  %i.n = load i32, ptr %.017.i, align 4, !tbaa !104 ; 3 uses
  %i.o = xor i32 %i.n, 1
  %i.p = lshr i32 %i.n, 1                         ; 3 uses
  %i.q = zext i32 %i.o to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.q
  store i8 0, ptr %i.r, align 1, !tbaa !40
  %i.s = zext i32 %i.n to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.s
  store i8 0, ptr %i.t, align 1, !tbaa !40
  %i.u = load i32, ptr %i.k, align 8, !tbaa !140
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr %i.k, align 8, !tbaa !140
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !91   ; 2 uses
  %i.x = zext nneg i32 %i.p to i64
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !96
  %i.ab = load i32, ptr %i.m, align 8, !tbaa !28  ; 2 uses
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !96
  %i.ag = icmp ule i64 %i.aa, %i.af
  %i.ah = icmp eq i32 %i.ab, %i.p
  %or.cond.i.i = or i1 %i.ah, %i.ag
  br i1 %or.cond.i.i, label %unassign.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %i.p, ptr %i.m, align 8, !tbaa !28
  br label %unassign.exit.i

unassign.exit.i:                                  ; preds = %bb.h, %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %.017.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.ai, %i.j
  br i1 %.not.i, label %.critedge.loopexit.i, label %bb.g, !llvm.loop !0

.critedge.loopexit.i:                             ; preds = %unassign.exit.i
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !102
  br label %completely_backtrack_to_root_level.exit

completely_backtrack_to_root_level.exit:          ; preds = %bb.f, %.critedge.loopexit.i
  %i.aj = phi ptr [ %.pre.i, %.critedge.loopexit.i ], [ %i.h, %bb.f ]
  store ptr %i.aj, ptr %i.i, align 8, !tbaa !103
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.ak, align 4, !tbaa !141
  store i32 0, ptr %i.c, align 8, !tbaa !142
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %completely_backtrack_to_root_level.exit, %bb.d
  %i.al = load ptr, ptr %0, align 8, !tbaa !23
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4104 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !194
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !194
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !26
  %.not.i37 = icmp eq i32 %i.aq, -1
  br i1 %.not.i37, label %bb.j, label %reset_assumptions.exit

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !124 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !115 ; 2 uses
  %i.av = icmp eq ptr %i.as, %i.au
  br i1 %i.av, label %.lr.ph, label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !129
  %i.ay = getelementptr i8, ptr %0, i64 320
  br label %bb.k

bb.k:                                             ; preds = %.critedge.i, %.lr.ph.i38
  %i.az = phi ptr [ %i.as, %.lr.ph.i38 ], [ %i.bo, %.critedge.i ] ; 2 uses
  %i.ba = phi ptr [ %i.au, %.lr.ph.i38 ], [ %i.bp, %.critedge.i ]
  %.02943.i = phi i64 [ 0, %.lr.ph.i38 ], [ %i.bq, %.critedge.i ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %.02943.i
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !104 ; 3 uses
  %.val.i = load ptr, ptr %i.ay, align 8, !tbaa !106
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !104 ; 2 uses
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !40  ; 2 uses
  %i.bk = icmp sgt i8 %i.bj, 0
  br i1 %i.bk, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = icmp slt i8 %i.bj, 0
  br i1 %i.bl, label %.loopexit.sink.split.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @assign(ptr noundef nonnull %0, i32 noundef %i.bg, i32 noundef %i.bc)
  %i.bm = tail call fastcc i32 @propagate(ptr noundef nonnull %0) ; 2 uses
  %i.bn = icmp eq i32 %i.bm, -1
  br i1 %i.bn, label %..critedge_crit_edge.i, label %.loopexit.sink.split.i

..critedge_crit_edge.i:                           ; preds = %bb.m
  %.pre.i39 = load ptr, ptr %i.at, align 8, !tbaa !115
  %.pre47.i = load ptr, ptr %i.ar, align 8, !tbaa !124
  br label %.critedge.i

.critedge.i:                                      ; preds = %..critedge_crit_edge.i, %bb.k
  %i.bo = phi ptr [ %.pre47.i, %..critedge_crit_edge.i ], [ %i.az, %bb.k ] ; 2 uses
  %i.bp = phi ptr [ %.pre.i39, %..critedge_crit_edge.i ], [ %i.ba, %bb.k ] ; 2 uses
  %i.bq = add nuw i64 %.02943.i, 1                ; 2 uses
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = ashr exact i64 %i.bt, 2
  %.not35.i = icmp ult i64 %i.bq, %i.bu
  br i1 %.not35.i, label %bb.k, label %.lr.ph, !llvm.loop !185

.loopexit.sink.split.i:                           ; preds = %bb.m, %bb.l
  %.lcssa52.sink.i = phi i32 [ %i.bc, %bb.l ], [ %i.bm, %bb.m ]
  tail call fastcc void @inconsistent(ptr noundef nonnull %0, i32 noundef %.lcssa52.sink.i)
  br label %reset_assumptions.exit

.lr.ph:                                           ; preds = %.critedge.i, %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 8 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 14 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 6 uses
  %i.cc = getelementptr i8, ptr %0, i64 320       ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 9 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 14 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 8 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %decide.exit

decide.exit:                                      ; preds = %decide.exit.backedge, %.lr.ph
  %i.cy = tail call fastcc i32 @propagate(ptr noundef nonnull %0) ; 3 uses
  %.not35 = icmp eq i32 %i.cy, -1
  %i.cz = load i32, ptr %i.bv, align 8, !tbaa !142 ; 3 uses
  %.not.i45 = icmp eq i32 %i.cz, 0                ; 2 uses
  br i1 %.not35, label %bb.as, label %bb.n

bb.n:                                             ; preds = %decide.exit
  br i1 %.not.i45, label %bb.ar, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.da = load ptr, ptr %i.bx, align 8, !tbaa !108 ; 2 uses
  %i.db = load ptr, ptr %i.by, align 8, !tbaa !135
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dd = load ptr, ptr %0, align 8, !tbaa !23
  tail call void @kissat_stack_enlarge(ptr noundef %i.dd, ptr noundef nonnull %i.bw, i64 noundef 4) #15
  %.pre.i44 = load ptr, ptr %i.bx, align 8, !tbaa !108
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.de = phi ptr [ %.pre.i44, %bb.p ], [ %i.da, %bb.o ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  store ptr %i.df, ptr %i.bx, align 8, !tbaa !108
  store i32 -1, ptr %i.de, align 4, !tbaa !104
  %i.dg = load ptr, ptr %i.bz, align 8, !tbaa !138 ; 2 uses
  %i.dh = load ptr, ptr %i.ca, align 8, !tbaa !128 ; 2 uses
  %i.di = load i32, ptr %i.bv, align 8, !tbaa !142
  %i.dj = load ptr, ptr %i.cb, align 8, !tbaa !123
  br label %bb.r

bb.r:                                             ; preds = %bb.ag, %bb.q
  %.092.i = phi ptr [ %i.dj, %bb.q ], [ %i.ez, %bb.ag ]
  %.088.i = phi i32 [ 0, %bb.q ], [ %i.ff, %bb.ag ] ; 2 uses
  %.084.i = phi i32 [ 0, %bb.q ], [ %.185.lcssa.i, %bb.ag ] ; 2 uses
  %.082.i = phi i32 [ 1, %bb.q ], [ %.183.lcssa.i, %bb.ag ] ; 2 uses
  %.0.i = phi i32 [ %i.cy, %bb.q ], [ %i.fi, %bb.ag ] ; 2 uses
  %.val.i40 = load ptr, ptr %i.cc, align 8, !tbaa !106
  %i.dk = zext i32 %.0.i to i64
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %.val.i40, i64 %i.dk ; 2 uses
  %i.dm = load ptr, ptr %i.ce, align 8, !tbaa !110 ; 2 uses
  %i.dn = load ptr, ptr %i.cf, align 8, !tbaa !136
  %i.do = icmp eq ptr %i.dm, %i.dn
  br i1 %i.do, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dp = load ptr, ptr %0, align 8, !tbaa !23
  tail call void @kissat_stack_enlarge(ptr noundef %i.dp, ptr noundef nonnull %i.cd, i64 noundef 4) #15
  %.pre122.i = load ptr, ptr %i.ce, align 8, !tbaa !110
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.dq = phi ptr [ %.pre122.i, %bb.s ], [ %i.dm, %bb.r ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  store ptr %i.dr, ptr %i.ce, align 8, !tbaa !110
  store i32 %.0.i, ptr %i.dq, align 4, !tbaa !104
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 12 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !114 ; 2 uses
  %i.dv = zext i32 %i.du to i64
  %.idx.i = shl nuw nsw i64 %i.dv, 2
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 %.idx.i
  %.not107.i = icmp eq i32 %i.du, 0
  br i1 %.not107.i, label %.critedge.preheader.i, label %.lr.ph.i41

.critedge.preheader.i:                            ; preds = %bb.ae, %bb.t
  %.189.lcssa.i = phi i32 [ %.088.i, %bb.t ], [ %.391.i, %bb.ae ]
  %.185.lcssa.i = phi i32 [ %.084.i, %bb.t ], [ %.4.i, %bb.ae ] ; 4 uses
  %.183.lcssa.i = phi i32 [ %.082.i, %bb.t ], [ %.3.i, %bb.ae ]
  br label %.critedge.i43

.lr.ph.i41:                                       ; preds = %bb.t, %bb.ae
  %.080111.i = phi ptr [ %i.ey, %bb.ae ], [ %i.ds, %bb.t ] ; 2 uses
  %.183110.i = phi i32 [ %.3.i, %bb.ae ], [ %.082.i, %bb.t ] ; 4 uses
  %.185109.i = phi i32 [ %.4.i, %bb.ae ], [ %.084.i, %bb.t ] ; 4 uses
  %.189108.i = phi i32 [ %.391.i, %bb.ae ], [ %.088.i, %bb.t ] ; 3 uses
  %i.dx = load i32, ptr %.080111.i, align 4, !tbaa !104 ; 4 uses
  %i.dy = lshr i32 %i.dx, 1                       ; 2 uses
  %i.dz = zext nneg i32 %i.dy to i64              ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dz ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !40
  %.not97.i = icmp eq i8 %i.eb, 0
  br i1 %.not97.i, label %bb.u, label %bb.ae

bb.u:                                             ; preds = %.lr.ph.i41
  store i8 1, ptr %i.ea, align 1, !tbaa !40
  %i.ec = load ptr, ptr %i.cg, align 8, !tbaa !148 ; 2 uses
  %i.ed = load ptr, ptr %i.ch, align 8, !tbaa !132
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ef = load ptr, ptr %0, align 8, !tbaa !23
  tail call void @kissat_stack_enlarge(ptr noundef %i.ef, ptr noundef nonnull %i.ci, i64 noundef 4) #15
  %.pre123.i = load ptr, ptr %i.cg, align 8, !tbaa !148
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.eg = phi ptr [ %.pre123.i, %bb.v ], [ %i.ec, %bb.u ] ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  store ptr %i.eh, ptr %i.cg, align 8, !tbaa !148
  store i32 %i.dy, ptr %i.eg, align 4, !tbaa !104
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.dz
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !150 ; 4 uses
  %i.ek = icmp ult i32 %i.ej, %i.di
  br i1 %i.ek, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %bb.w
  %i.el = icmp ugt i32 %i.ej, %.185109.i
  br i1 %i.el, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.em = icmp ugt i32 %.183110.i, 1
  br i1 %i.em, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.en = load ptr, ptr %i.bw, align 8, !tbaa !109
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 4 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !104
  store i32 %i.dx, ptr %i.eo, align 4, !tbaa !104
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %.286.i = phi i32 [ %i.ej, %bb.z ], [ %i.ej, %bb.y ], [ %.185109.i, %bb.x ]
  %.081.i = phi i32 [ %i.ep, %bb.z ], [ %i.dx, %bb.y ], [ %i.dx, %bb.x ]
  %i.eq = load ptr, ptr %i.bx, align 8, !tbaa !108 ; 2 uses
  %i.er = load ptr, ptr %i.by, align 8, !tbaa !135
  %i.es = icmp eq ptr %i.eq, %i.er
  br i1 %i.es, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.et = load ptr, ptr %0, align 8, !tbaa !23
  tail call void @kissat_stack_enlarge(ptr noundef %i.et, ptr noundef nonnull %i.bw, i64 noundef 4) #15
  %.pre124.i = load ptr, ptr %i.bx, align 8, !tbaa !108
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.eu = phi ptr [ %.pre124.i, %bb.ab ], [ %i.eq, %bb.aa ] ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  store ptr %i.ev, ptr %i.bx, align 8, !tbaa !108
  store i32 %.081.i, ptr %i.eu, align 4, !tbaa !104
  %i.ew = add i32 %.183110.i, 1
  br label %bb.ae

bb.ad:                                            ; preds = %bb.w
  %i.ex = add i32 %.189108.i, 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %.lr.ph.i41
  %.391.i = phi i32 [ %.189108.i, %.lr.ph.i41 ], [ %.189108.i, %bb.ac ], [ %i.ex, %bb.ad ] ; 2 uses
  %.4.i = phi i32 [ %.185109.i, %.lr.ph.i41 ], [ %.286.i, %bb.ac ], [ %.185109.i, %bb.ad ] ; 2 uses
  %.3.i = phi i32 [ %.183110.i, %.lr.ph.i41 ], [ %i.ew, %bb.ac ], [ %.183110.i, %bb.ad ] ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.080111.i, i64 4 ; 2 uses
  %.not.i42 = icmp eq ptr %i.ey, %i.dw
  br i1 %.not.i42, label %.critedge.preheader.i, label %.lr.ph.i41, !llvm.loop !186

.critedge.i43:                                    ; preds = %.critedge.i43, %.critedge.preheader.i
  %.193.i = phi ptr [ %i.ez, %.critedge.i43 ], [ %.092.i, %.critedge.preheader.i ]
  %i.ez = getelementptr inbounds i8, ptr %.193.i, i64 -4 ; 3 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !104 ; 2 uses
  %i.fb = lshr i32 %i.fa, 1
  %i.fc = zext nneg i32 %i.fb to i64              ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !40
  %.not95.i = icmp eq i8 %i.fe, 0
  br i1 %.not95.i, label %.critedge.i43, label %bb.af, !llvm.loop !187

bb.af:                                            ; preds = %.critedge.i43
  %i.ff = add i32 %.189.lcssa.i, -1               ; 2 uses
  %.not96.i = icmp eq i32 %i.ff, 0
  br i1 %.not96.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.fc
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !151
  br label %bb.r

bb.ah:                                            ; preds = %bb.af
  %i.fj = xor i32 %i.fa, 1                        ; 2 uses
  %i.fk = load ptr, ptr %i.bw, align 8, !tbaa !109
  store i32 %i.fj, ptr %i.fk, align 4, !tbaa !104
  %i.fl = load ptr, ptr %i.bz, align 8, !tbaa !138
  %i.fm = load ptr, ptr %i.ci, align 8, !tbaa !131 ; 3 uses
  %i.fn = load ptr, ptr %i.cg, align 8, !tbaa !148 ; 2 uses
  %.not11.i.i = icmp eq ptr %i.fm, %i.fn
  br i1 %.not11.i.i, label %bump.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ah, %move_to_front.exit.i.i
  %.012.i.i = phi ptr [ %i.gm, %move_to_front.exit.i.i ], [ %i.fm, %bb.ah ] ; 2 uses
  %i.fo = load i32, ptr %.012.i.i, align 4, !tbaa !104 ; 5 uses
  %i.fp = zext i32 %i.fo to i64                   ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fp
  store i8 0, ptr %i.fq, align 1, !tbaa !40
  %i.fr = load i32, ptr %i.cj, align 4, !tbaa !25 ; 2 uses
  %i.fs = icmp eq i32 %i.fo, %i.fr
  br i1 %i.fs, label %move_to_front.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i
  %i.ft = load ptr, ptr %i.ck, align 8, !tbaa !91 ; 4 uses
  %i.fu = getelementptr inbounds nuw [16 x i8], ptr %i.ft, i64 %i.fp ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 4 ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !94 ; 4 uses
  %i.fx = load i32, ptr %i.fu, align 8, !tbaa !95 ; 4 uses
  %i.fy = icmp eq i32 %i.fw, -1
  br i1 %i.fy, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 %i.fx, ptr %i.cl, align 8, !tbaa !24
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.fz = zext i32 %i.fw to i64
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.ft, i64 %i.fz
  store i32 %i.fx, ptr %i.ga, align 8, !tbaa !95
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.gb = icmp eq i32 %i.fx, -1
  br i1 %i.gb, label %dequeue.exit.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gc = zext i32 %i.fx to i64
  %i.gd = getelementptr inbounds nuw [16 x i8], ptr %i.ft, i64 %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  store i32 %i.fw, ptr %i.ge, align 4, !tbaa !94
  br label %dequeue.exit.i.i.i

dequeue.exit.i.i.i:                               ; preds = %bb.am, %bb.al
  %i.gf = phi i32 [ %i.fr, %bb.am ], [ %i.fw, %bb.al ] ; 3 uses
  %i.gg = icmp eq i32 %i.gf, -1
  br i1 %i.gg, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %dequeue.exit.i.i.i
  store i32 %i.fo, ptr %i.cl, align 8, !tbaa !24
  br label %enqueue.exit.i.i.i

bb.ao:                                            ; preds = %dequeue.exit.i.i.i
  %i.gh = zext i32 %i.gf to i64
  %i.gi = getelementptr inbounds nuw [16 x i8], ptr %i.ft, i64 %i.gh
  store i32 %i.fo, ptr %i.gi, align 8, !tbaa !95
  br label %enqueue.exit.i.i.i

enqueue.exit.i.i.i:                               ; preds = %bb.ao, %bb.an
  store i32 %i.gf, ptr %i.fv, align 4, !tbaa !94
  store i32 -1, ptr %i.fu, align 8, !tbaa !95
  store i32 %i.fo, ptr %i.cj, align 4, !tbaa !25
  %i.gj = load i64, ptr %i.cm, align 8, !tbaa !92 ; 2 uses
  %i.gk = add i64 %i.gj, 1
  store i64 %i.gk, ptr %i.cm, align 8, !tbaa !92
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  store i64 %i.gj, ptr %i.gl, align 8, !tbaa !96
  br label %move_to_front.exit.i.i

move_to_front.exit.i.i:                           ; preds = %enqueue.exit.i.i.i, %.lr.ph.i.i
  %i.gm = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gm, %i.fn
  br i1 %.not.i.i, label %bump.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !188

bump.exit.loopexit.i:                             ; preds = %move_to_front.exit.i.i
  %.pre125.i = load ptr, ptr %i.ci, align 8, !tbaa !131
  br label %bump.exit.i

bump.exit.i:                                      ; preds = %bump.exit.loopexit.i, %bb.ah
  %i.gn = phi ptr [ %.pre125.i, %bump.exit.loopexit.i ], [ %i.fm, %bb.ah ]
  store ptr %i.gn, ptr %i.cg, align 8, !tbaa !148
  %i.go = tail call i32 @new_learned_klause(ptr noundef nonnull %0)
  %i.gp = load ptr, ptr %i.cd, align 8, !tbaa !111
  store ptr %i.gp, ptr %i.ce, align 8, !tbaa !110
  %i.gq = load ptr, ptr %i.bw, align 8, !tbaa !109
  store ptr %i.gq, ptr %i.bx, align 8, !tbaa !108
  %i.gr = load ptr, ptr %i.ca, align 8, !tbaa !128 ; 2 uses
  %i.gs = load ptr, ptr %i.cn, align 8, !tbaa !129 ; 2 uses
  %i.gt = load ptr, ptr %i.co, align 8, !tbaa !102 ; 4 uses
  %i.gu = load ptr, ptr %i.cb, align 8, !tbaa !103 ; 3 uses
  %.not23.i.i = icmp eq ptr %i.gt, %i.gu
  br i1 %.not23.i.i, label %analyze.exit, label %.lr.ph.i98.i

.lr.ph.i98.i:                                     ; preds = %bump.exit.i
  %i.gv = getelementptr inbounds i8, ptr %i.gu, i64 -4 ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !104 ; 2 uses
  %i.gx = lshr i32 %i.gw, 1                       ; 2 uses
  %i.gy = zext nneg i32 %i.gx to i64              ; 2 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.gy
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !150
  %i.hb = icmp eq i32 %i.ha, %.185.lcssa.i
  br i1 %i.hb, label %analyze.exit, label %.lr.ph114.i

bb.ap:                                            ; preds = %unassign.exit.i.i
  %i.hc = getelementptr inbounds i8, ptr %i.ig, i64 -4 ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !104 ; 2 uses
  %i.he = lshr i32 %i.hd, 1                       ; 2 uses
  %i.hf = zext nneg i32 %i.he to i64              ; 2 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.hf
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !150
  %i.hi = icmp eq i32 %i.hh, %.185.lcssa.i
  br i1 %i.hi, label %analyze.exit, label %.lr.ph114.i

.lr.ph114.i:                                      ; preds = %.lr.ph.i98.i, %bb.ap
  %i.hj = phi i64 [ %i.hf, %bb.ap ], [ %i.gy, %.lr.ph.i98.i ]
  %i.hk = phi i32 [ %i.he, %bb.ap ], [ %i.gx, %.lr.ph.i98.i ] ; 2 uses
  %i.hl = phi i32 [ %i.hd, %bb.ap ], [ %i.gw, %.lr.ph.i98.i ] ; 2 uses
  %i.hm = phi ptr [ %i.hc, %bb.ap ], [ %i.gv, %.lr.ph.i98.i ]
  store ptr %i.hm, ptr %i.cb, align 8, !tbaa !103
  %i.hn = xor i32 %i.hl, 1
  %i.ho = zext i32 %i.hn to i64
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.ho
  store i8 0, ptr %i.hp, align 1, !tbaa !40
  %i.hq = zext i32 %i.hl to i64
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.hq
  store i8 0, ptr %i.hr, align 1, !tbaa !40
  %i.hs = load i32, ptr %i.cp, align 8, !tbaa !140
  %i.ht = add i32 %i.hs, 1
  store i32 %i.ht, ptr %i.cp, align 8, !tbaa !140
  %i.hu = load ptr, ptr %i.ck, align 8, !tbaa !91 ; 2 uses
  %i.hv = getelementptr inbounds nuw [16 x i8], ptr %i.hu, i64 %i.hj
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !96
  %i.hy = load i32, ptr %i.cq, align 8, !tbaa !28 ; 2 uses
  %i.hz = zext i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw [16 x i8], ptr %i.hu, i64 %i.hz
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !96
  %i.id = icmp ule i64 %i.hx, %i.ic
  %i.ie = icmp eq i32 %i.hy, %i.hk
  %or.cond.i.i.i = or i1 %i.ie, %i.id
  br i1 %or.cond.i.i.i, label %unassign.exit.i.i, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph114.i
  store i32 %i.hk, ptr %i.cq, align 8, !tbaa !28
  br label %unassign.exit.i.i

unassign.exit.i.i:                                ; preds = %bb.aq, %.lr.ph114.i
  %i.if = load ptr, ptr %i.co, align 8, !tbaa !102 ; 4 uses
  %i.ig = load ptr, ptr %i.cb, align 8, !tbaa !103 ; 3 uses
  %.not.i99.i = icmp eq ptr %i.if, %i.ig
  br i1 %.not.i99.i, label %analyze.exit, label %bb.ap

analyze.exit:                                     ; preds = %bb.ap, %unassign.exit.i.i, %bump.exit.i, %.lr.ph.i98.i
  %i.ih = phi ptr [ %i.gt, %bump.exit.i ], [ %i.gt, %.lr.ph.i98.i ], [ %i.if, %unassign.exit.i.i ], [ %i.if, %bb.ap ]
  %i.ii = phi ptr [ %i.gt, %bump.exit.i ], [ %i.gu, %.lr.ph.i98.i ], [ %i.ig, %bb.ap ], [ %i.if, %unassign.exit.i.i ]
  %i.ij = ptrtoint ptr %i.ii to i64
  %i.ik = ptrtoint ptr %i.ih to i64
  %i.il = sub i64 %i.ij, %i.ik
  %i.im = lshr exact i64 %i.il, 2
  %i.in = trunc i64 %i.im to i32
  store i32 %i.in, ptr %i.cr, align 4, !tbaa !141
  store i32 %.185.lcssa.i, ptr %i.bv, align 8, !tbaa !142
  tail call fastcc void @assign(ptr noundef nonnull %0, i32 noundef %i.fj, i32 noundef %i.go)
  br label %decide.exit.backedge

bb.ar:                                            ; preds = %bb.n
  tail call fastcc void @inconsistent(ptr noundef nonnull %0, i32 noundef %i.cy)
  br label %reset_assumptions.exit

bb.as:                                            ; preds = %decide.exit
  br i1 %.not.i45, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.io = load ptr, ptr %i.co, align 8, !tbaa !122 ; 2 uses
  %i.ip = load ptr, ptr %i.cb, align 8, !tbaa !123
  %i.iq = icmp eq ptr %i.io, %i.ip
  br i1 %i.iq, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  store i32 0, ptr %i.cr, align 4, !tbaa !141
  store ptr %i.io, ptr %i.cb, align 8, !tbaa !103
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as
  %i.ir = load ptr, ptr %i.cn, align 8, !tbaa !129 ; 5 uses
  %i.is = load ptr, ptr %i.ct, align 8, !tbaa !119 ; 3 uses
  %i.it = load ptr, ptr %i.cs, align 8, !tbaa !118 ; 4 uses
  %i.iu = ptrtoint ptr %i.is to i64
  %i.iv = ptrtoint ptr %i.it to i64
  %i.iw = sub i64 %i.iu, %i.iv
  %i.ix = ashr exact i64 %i.iw, 2                 ; 2 uses
  %i.iy = zext i32 %i.cz to i64                   ; 2 uses
  %i.iz = icmp ugt i64 %i.ix, %i.iy
  br i1 %i.iz, label %.lr.ph.i47, label %failing.exit.thread54.i

.lr.ph.i47:                                       ; preds = %bb.av, %failing.exit.i
  %i.ja = phi i64 [ %i.nu, %failing.exit.i ], [ %i.iy, %bb.av ]
  %i.jb = phi i32 [ %i.nt, %failing.exit.i ], [ %i.cz, %bb.av ]
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.it, i64 %i.ja
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !104 ; 2 uses
  %i.je = zext i32 %i.jd to i64
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.je
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !40  ; 2 uses
  %i.jh = icmp slt i8 %i.jg, 0
  br i1 %i.jh, label %bb.aw, label %bb.bw

bb.aw:                                            ; preds = %.lr.ph.i47
  %i.ji = load ptr, ptr %i.ca, align 8, !tbaa !128 ; 3 uses
  %.not158.i.i = icmp eq ptr %i.it, %i.is
  br i1 %.not158.i.i, label %.critedge.i.i, label %.lr.ph.i.i48

.lr.ph.i.i48:                                     ; preds = %bb.aw, %.thread.i.i
  %.0134161.i.i = phi ptr [ %i.jx, %.thread.i.i ], [ %i.it, %bb.aw ] ; 2 uses
  %.0136160.i.i = phi i32 [ %.2138.i.i, %.thread.i.i ], [ -1, %bb.aw ] ; 3 uses
  %.0140159.i.i = phi i32 [ %.3143.i.i, %.thread.i.i ], [ -1, %bb.aw ] ; 4 uses
  %i.jj = load i32, ptr %.0134161.i.i, align 4, !tbaa !104 ; 5 uses
  %i.jk = zext i32 %i.jj to i64
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.jk
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !40
  %i.jn = icmp sgt i8 %i.jm, -1
  br i1 %i.jn, label %.thread.i.i, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i.i48
  %i.jo = icmp eq i32 %.0136160.i.i, -1
  %spec.select.i.i = select i1 %i.jo, i32 %i.jj, i32 %.0136160.i.i ; 3 uses
  %i.jp = lshr i32 %i.jj, 1
  %i.jq = zext nneg i32 %i.jp to i64
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %i.jq ; 2 uses
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !150
  %.not146.not.i.i = icmp eq i32 %i.js, 0
  br i1 %.not146.not.i.i, label %.critedge.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jt = icmp eq i32 %.0140159.i.i, -1
  br i1 %i.jt, label %bb.az, label %.thread.i.i

bb.az:                                            ; preds = %bb.ay
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jr, i64 4
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !151
  %i.jw = icmp eq i32 %i.jv, -1
  %spec.select153.i.i = select i1 %i.jw, i32 %i.jj, i32 -1
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.az, %bb.ay, %.lr.ph.i.i48
  %.3143.i.i = phi i32 [ %.0140159.i.i, %.lr.ph.i.i48 ], [ %spec.select153.i.i, %bb.az ], [ %.0140159.i.i, %bb.ay ] ; 2 uses
  %.2138.i.i = phi i32 [ %.0136160.i.i, %.lr.ph.i.i48 ], [ %spec.select.i.i, %bb.az ], [ %spec.select.i.i, %bb.ay ] ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.0134161.i.i, i64 4 ; 2 uses
  %.not.i.i49 = icmp eq ptr %i.jx, %i.is
  br i1 %.not.i.i49, label %.critedge.i.i, label %.lr.ph.i.i48, !llvm.loop !189

.critedge.i.i:                                    ; preds = %.thread.i.i, %bb.ax, %bb.aw
  %.0140.lcssa.i.i = phi i32 [ -1, %bb.aw ], [ %.0140159.i.i, %bb.ax ], [ %.3143.i.i, %.thread.i.i ] ; 2 uses
  %.3139.i.i = phi i32 [ -1, %bb.aw ], [ %spec.select.i.i, %bb.ax ], [ %.2138.i.i, %.thread.i.i ]
  %.3.i.i = phi i32 [ -1, %bb.aw ], [ %i.jj, %bb.ax ], [ -1, %.thread.i.i ] ; 2 uses
  %.not147.i.i = icmp eq i32 %.3.i.i, -1          ; 2 uses
  %.not148.i.i = icmp eq i32 %.0140.lcssa.i.i, -1 ; 2 uses
  %.3139..4.i.i = select i1 %.not148.i.i, i32 %.3139.i.i, i32 %.0140.lcssa.i.i ; 2 uses
  %.0132.i.i = select i1 %.not147.i.i, i32 %.3139..4.i.i, i32 %.3.i.i ; 2 uses
  %i.jy = lshr i32 %.0132.i.i, 1                  ; 2 uses
  %i.jz = zext nneg i32 %i.jy to i64              ; 2 uses
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %i.jz
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 4
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !151
  %i.kd = load ptr, ptr %i.cw, align 8, !tbaa !130 ; 2 uses
  %i.ke = zext i32 %.0132.i.i to i64
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.ke
  store i8 1, ptr %i.kf, align 1, !tbaa !143
  br i1 %.not147.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.critedge.i.i
  store i32 %i.kc, ptr %i.cx, align 8, !tbaa !27
  br label %reset_assumptions.exit

bb.bb:                                            ; preds = %.critedge.i.i
  %i.kg = xor i32 %.3139..4.i.i, 1                ; 2 uses
  br i1 %.not148.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.kh = zext i32 %i.kg to i64
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.kh
  store i8 1, ptr %i.ki, align 1, !tbaa !143
  br label %reset_assumptions.exit

bb.bd:                                            ; preds = %bb.bb
  %i.kj = load ptr, ptr %i.bz, align 8, !tbaa !138 ; 3 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 %i.jz
  store i8 1, ptr %i.kk, align 1, !tbaa !40
  %i.kl = load ptr, ptr %i.cg, align 8, !tbaa !148 ; 2 uses
  %i.km = load ptr, ptr %i.ch, align 8, !tbaa !132
  %i.kn = icmp eq ptr %i.kl, %i.km
  br i1 %i.kn, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.ko = load ptr, ptr %0, align 8, !tbaa !23
  tail call void @kissat_stack_enlarge(ptr noundef %i.ko, ptr noundef nonnull %i.ci, i64 noundef 4) #15
  %.pre.i.i = load ptr, ptr %i.cg, align 8, !tbaa !148
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.kp = phi ptr [ %.pre.i.i, %bb.be ], [ %i.kl, %bb.bd ] ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 4 ; 2 uses
  store ptr %i.kq, ptr %i.cg, align 8, !tbaa !148
  store i32 %i.jy, ptr %i.kp, align 4, !tbaa !104
  %i.kr = load ptr, ptr %i.bx, align 8, !tbaa !108 ; 2 uses
  %i.ks = load ptr, ptr %i.by, align 8, !tbaa !135
  %i.kt = icmp eq ptr %i.kr, %i.ks
  br i1 %i.kt, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ku = load ptr, ptr %0, align 8, !tbaa !23
  tail call void @kissat_stack_enlarge(ptr noundef %i.ku, ptr noundef nonnull %i.bw, i64 noundef 4) #15
  %.pre181.i.i = load ptr, ptr %i.bx, align 8, !tbaa !108
  %.pre182.i.i = load ptr, ptr %i.cg, align 8, !tbaa !148
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.kv = phi ptr [ %.pre182.i.i, %bb.bg ], [ %i.kq, %bb.bf ] ; 2 uses
  %i.kw = phi ptr [ %.pre181.i.i, %bb.bg ], [ %i.kr, %bb.bf ] ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 4
  store ptr %i.kx, ptr %i.bx, align 8, !tbaa !108
  store i32 %i.kg, ptr %i.kw, align 4, !tbaa !104
  %i.ky = load ptr, ptr %i.ci, align 8, !tbaa !131 ; 3 uses
  %.not178.i.i = icmp eq ptr %i.kv, %i.ky
  br i1 %.not178.i.i, label %.preheader.i.i, label %.lr.ph172.i.i

.preheader.i.i:                                   ; preds = %.critedge2.i.i, %bb.bh
  %.lcssa157.i.i = phi ptr [ %i.kv, %bb.bh ], [ %i.mx, %.critedge2.i.i ] ; 2 uses
  %.lcssa.i.i = phi ptr [ %i.ky, %bb.bh ], [ %i.my, %.critedge2.i.i ] ; 3 uses
  %.not150175.i.i = icmp eq ptr %.lcssa.i.i, %.lcssa157.i.i
  br i1 %.not150175.i.i, label %.critedge4.i.i, label %.lr.ph177.i.i

.lr.ph172.i.i:                                    ; preds = %bb.bh, %.critedge2.i.i
  %i.kz = phi ptr [ %i.my, %.critedge2.i.i ], [ %i.ky, %bb.bh ]
  %.0131171.i.i = phi i64 [ %i.mw, %.critedge2.i.i ], [ 0, %bb.bh ] ; 2 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %.0131171.i.i
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !104 ; 3 uses
  %i.lc = zext i32 %i.lb to i64
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %i.lc
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 4
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !151 ; 3 uses
  %i.lg = icmp eq i32 %i.lf, -1
  br i1 %i.lg, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %.lr.ph172.i.i
  %i.lh = shl i32 %i.lb, 1                        ; 2 uses
  %i.li = zext i32 %i.lh to i64
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.li
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !40
  %.lobit.i.i = lshr i8 %i.lk, 7
  %i.ll = zext nneg i8 %.lobit.i.i to i32
  %spec.select154.i.i = or disjoint i32 %i.lh, %i.ll ; 2 uses
  %i.lm = load ptr, ptr %i.cw, align 8, !tbaa !130
  %i.ln = zext i32 %spec.select154.i.i to i64
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.ln
  store i8 1, ptr %i.lo, align 1, !tbaa !143
  %i.lp = xor i32 %spec.select154.i.i, 1
  %i.lq = load ptr, ptr %i.bx, align 8, !tbaa !108 ; 2 uses
  %i.lr = load ptr, ptr %i.by, align 8, !tbaa !135
  %i.ls = icmp eq ptr %i.lq, %i.lr
  br i1 %i.ls, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.lt = load ptr, ptr %0, align 8, !tbaa !23
  tail call void @kissat_stack_enlarge(ptr noundef %i.lt, ptr noundef nonnull %i.bw, i64 noundef 4) #15
  %.pre185.i.i = load ptr, ptr %i.bx, align 8, !tbaa !108
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.lu = phi ptr [ %.pre185.i.i, %bb.bj ], [ %i.lq, %bb.bi ] ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 4
  store ptr %i.lv, ptr %i.bx, align 8, !tbaa !108
  store i32 %i.lp, ptr %i.lu, align 4, !tbaa !104
  br label %.critedge2.i.i

bb.bl:                                            ; preds = %.lr.ph172.i.i
  %i.lw = load ptr, ptr %i.ce, align 8, !tbaa !110 ; 2 uses
  %i.lx = load ptr, ptr %i.cf, align 8, !tbaa !136
  %i.ly = icmp eq ptr %i.lw, %i.lx
  br i1 %i.ly, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.lz = load ptr, ptr %0, align 8, !tbaa !23
  tail call void @kissat_stack_enlarge(ptr noundef %i.lz, ptr noundef nonnull %i.cd, i64 noundef 4) #15
  %.pre183.i.i = load ptr, ptr %i.ce, align 8, !tbaa !110
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.ma = phi ptr [ %.pre183.i.i, %bb.bm ], [ %i.lw, %bb.bl ] ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 4
  store ptr %i.mb, ptr %i.ce, align 8, !tbaa !110
  store i32 %i.lf, ptr %i.ma, align 4, !tbaa !104
  %.val.i.i = load ptr, ptr %i.cc, align 8, !tbaa !106
  %i.mc = zext i32 %i.lf to i64
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %i.mc ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 12 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.md, i64 4
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !114 ; 2 uses
  %i.mh = zext i32 %i.mg to i64
  %.idx.i.i = shl nuw nsw i64 %i.mh, 2
  %i.mi = getelementptr inbounds nuw i8, ptr %i.me, i64 %.idx.i.i
  %.not151168.i.i = icmp eq i32 %i.mg, 0
  br i1 %.not151168.i.i, label %.critedge2.i.i, label %.lr.ph170.i.i

.lr.ph170.i.i:                                    ; preds = %bb.bn, %bb.bs
  %.0129169.i.i = phi ptr [ %i.mv, %bb.bs ], [ %i.me, %bb.bn ] ; 2 uses
  %i.mj = load i32, ptr %.0129169.i.i, align 4, !tbaa !104
  %i.mk = lshr i32 %i.mj, 1                       ; 3 uses
  %i.ml = icmp eq i32 %i.mk, %i.lb
  br i1 %i.ml, label %bb.bs, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph170.i.i
  %i.mm = zext nneg i32 %i.mk to i64
  %i.mn = getelementptr inbounds nuw i8, ptr %i.kj, i64 %i.mm ; 2 uses
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !40
  %.not152.i.i = icmp eq i8 %i.mo, 0
  br i1 %.not152.i.i, label %bb.bp, label %bb.bs

bb.bp:                                            ; preds = %bb.bo
  store i8 1, ptr %i.mn, align 1, !tbaa !40
  %i.mp = load ptr, ptr %i.cg, align 8, !tbaa !148 ; 2 uses
  %i.mq = load ptr, ptr %i.ch, align 8, !tbaa !132
  %i.mr = icmp eq ptr %i.mp, %i.mq
  br i1 %i.mr, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.ms = load ptr, ptr %0, align 8, !tbaa !23
  tail call void @kissat_stack_enlarge(ptr noundef %i.ms, ptr noundef nonnull %i.ci, i64 noundef 4) #15
  %.pre184.i.i = load ptr, ptr %i.cg, align 8, !tbaa !148
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.mt = phi ptr [ %.pre184.i.i, %bb.bq ], [ %i.mp, %bb.bp ] ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 4
  store ptr %i.mu, ptr %i.cg, align 8, !tbaa !148
  store i32 %i.mk, ptr %i.mt, align 4, !tbaa !104
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bo, %.lr.ph170.i.i
  %i.mv = getelementptr inbounds nuw i8, ptr %.0129169.i.i, i64 4 ; 2 uses
  %.not151.i.i = icmp eq ptr %i.mv, %i.mi
  br i1 %.not151.i.i, label %.critedge2.i.i, label %.lr.ph170.i.i, !llvm.loop !190

.critedge2.i.i:                                   ; preds = %bb.bs, %bb.bn, %bb.bk
  %i.mw = add nuw i64 %.0131171.i.i, 1            ; 2 uses
  %i.mx = load ptr, ptr %i.cg, align 8, !tbaa !148 ; 2 uses
  %i.my = load ptr, ptr %i.ci, align 8, !tbaa !131 ; 3 uses
  %i.mz = ptrtoint ptr %i.mx to i64
  %i.na = ptrtoint ptr %i.my to i64
  %i.nb = sub i64 %i.mz, %i.na
  %i.nc = ashr exact i64 %i.nb, 2
  %i.nd = icmp ult i64 %i.mw, %i.nc
  br i1 %i.nd, label %.lr.ph172.i.i, label %.preheader.i.i, !llvm.loop !191

.lr.ph177.i.i:                                    ; preds = %.preheader.i.i, %.lr.ph177.i.i
  %.0176.i.i = phi ptr [ %i.nh, %.lr.ph177.i.i ], [ %.lcssa.i.i, %.preheader.i.i ] ; 2 uses
  %i.ne = load i32, ptr %.0176.i.i, align 4, !tbaa !104
  %i.nf = zext i32 %i.ne to i64
  %i.ng = getelementptr inbounds nuw i8, ptr %i.kj, i64 %i.nf
  store i8 0, ptr %i.ng, align 1, !tbaa !40
  %i.nh = getelementptr inbounds nuw i8, ptr %.0176.i.i, i64 4 ; 2 uses
  %.not150.i.i = icmp eq ptr %i.nh, %.lcssa157.i.i
  br i1 %.not150.i.i, label %.critedge4.loopexit.i.i, label %.lr.ph177.i.i, !llvm.loop !192

.critedge4.loopexit.i.i:                          ; preds = %.lr.ph177.i.i
  %.pre186.i.i = load ptr, ptr %i.ci, align 8, !tbaa !131
  br label %.critedge4.i.i

.critedge4.i.i:                                   ; preds = %.critedge4.loopexit.i.i, %.preheader.i.i
  %i.ni = phi ptr [ %.pre186.i.i, %.critedge4.loopexit.i.i ], [ %.lcssa.i.i, %.preheader.i.i ]
  store ptr %i.ni, ptr %i.cg, align 8, !tbaa !148
  %i.nj = load ptr, ptr %i.ce, align 8, !tbaa !110
  %i.nk = load ptr, ptr %i.cd, align 8, !tbaa !111 ; 3 uses
  %i.nl = ptrtoint ptr %i.nj to i64
  %i.nm = ptrtoint ptr %i.nk to i64
  %i.nn = sub i64 %i.nl, %i.nm
  %i.no = icmp eq i64 %i.nn, 4
  br i1 %i.no, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %.critedge4.i.i
  %i.np = load i32, ptr %i.nk, align 4, !tbaa !104
  br label %bb.bv

bb.bu:                                            ; preds = %.critedge4.i.i
  %i.nq = tail call i32 @new_learned_klause(ptr noundef nonnull %0)
  %.pre187.i.i = load ptr, ptr %i.cd, align 8, !tbaa !111
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.nr = phi ptr [ %i.nk, %bb.bt ], [ %.pre187.i.i, %bb.bu ]
  %.sink.i.i = phi i32 [ %i.np, %bb.bt ], [ %i.nq, %bb.bu ]
  store i32 %.sink.i.i, ptr %i.cx, align 8, !tbaa !27
  store ptr %i.nr, ptr %i.ce, align 8, !tbaa !110
  %i.ns = load ptr, ptr %i.bw, align 8, !tbaa !109
  store ptr %i.ns, ptr %i.bx, align 8, !tbaa !108
  br label %reset_assumptions.exit

bb.bw:                                            ; preds = %.lr.ph.i47
  %.not47.i = icmp eq i8 %i.jg, 0
  br i1 %.not47.i, label %failing.exit.thread54.i, label %failing.exit.i

failing.exit.i:                                   ; preds = %bb.bw
  %i.nt = add i32 %i.jb, 1                        ; 3 uses
  store i32 %i.nt, ptr %i.bv, align 8, !tbaa !142
  %i.nu = zext i32 %i.nt to i64                   ; 2 uses
  %i.nv = icmp ugt i64 %i.ix, %i.nu
  br i1 %i.nv, label %.lr.ph.i47, label %failing.exit.thread54.i

failing.exit.thread54.i:                          ; preds = %failing.exit.i, %bb.bw, %bb.av
  %.244.i = phi i32 [ -1, %bb.av ], [ -1, %failing.exit.i ], [ %i.jd, %bb.bw ] ; 2 uses
  %i.nw = load i32, ptr %i.cp, align 8, !tbaa !140
  %.not48.i = icmp eq i32 %i.nw, 0
  br i1 %.not48.i, label %reset_assumptions.exit, label %bb.bx

bb.bx:                                            ; preds = %failing.exit.thread54.i
  %i.nx = load ptr, ptr %0, align 8, !tbaa !23    ; 4 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 4112
  %i.nz = load i64, ptr %i.ny, align 8, !tbaa !89
  %i.oa = load i64, ptr %i.cu, align 8, !tbaa !29
  %.not49.i = icmp ult i64 %i.nz, %i.oa
  br i1 %.not49.i, label %bb.by, label %._crit_edge

bb.by:                                            ; preds = %bb.bx
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nx, i64 16 ; 3 uses
  %i.oc = load volatile i8, ptr %i.ob, align 8, !tbaa !195, !range !34, !noundef !35
  %i.od = trunc nuw i8 %i.oc to i1
  br i1 %i.od, label %kissat_terminated.exit.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nx, i64 32
  %i.of = load volatile ptr, ptr %i.oe, align 8, !tbaa !196 ; 2 uses
  %.not.i51.i = icmp eq ptr %i.of, null
  br i1 %.not.i51.i, label %kissat_terminated.exit.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.og = getelementptr inbounds nuw i8, ptr %i.nx, i64 24
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !197
  %i.oi = tail call i32 %i.of(ptr noundef %i.oh) #15, !inline_history !193
  %.not10.i.i = icmp eq i32 %i.oi, 0
  br i1 %.not10.i.i, label %kissat_terminated.exit.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  store volatile i8 1, ptr %i.ob, align 8, !tbaa !195
  br label %kissat_terminated.exit.i

kissat_terminated.exit.i:                         ; preds = %bb.cb, %bb.ca, %bb.bz, %bb.by
  %i.oj = load volatile i8, ptr %i.ob, align 8, !tbaa !195, !range !34, !noundef !35
  %i.ok = trunc nuw i8 %i.oj to i1
  br i1 %i.ok, label %._crit_edge, label %bb.cc

bb.cc:                                            ; preds = %kissat_terminated.exit.i
  %i.ol = icmp eq i32 %.244.i, -1
  br i1 %i.ol, label %bb.cd, label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  %i.om = load ptr, ptr %i.ck, align 8, !tbaa !91
  %.04062.i = load i32, ptr %i.cq, align 8, !tbaa !104 ; 5 uses
  %i.on = shl i32 %.04062.i, 1                    ; 2 uses
  %i.oo = zext i32 %i.on to i64
  %i.op = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.oo
  %i.oq = load i8, ptr %i.op, align 1, !tbaa !40
  %.not5063.i = icmp eq i8 %i.oq, 0
  br i1 %.not5063.i, label %update_search.exit.i, label %.lr.ph65.i

.lr.ph65.i:                                       ; preds = %bb.cd, %.lr.ph65.i
  %.04064.i = phi i32 [ %.040.i, %.lr.ph65.i ], [ %.04062.i, %bb.cd ]
  %i.or = zext i32 %.04064.i to i64
  %i.os = getelementptr inbounds nuw [16 x i8], ptr %i.om, i64 %i.or
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 4
  %.040.i = load i32, ptr %i.ot, align 4, !tbaa !104 ; 5 uses
  %i.ou = shl i32 %.040.i, 1                      ; 3 uses
  %i.ov = zext i32 %i.ou to i64
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.ov
  %i.ox = load i8, ptr %i.ow, align 1, !tbaa !40
  %.not50.i = icmp eq i8 %i.ox, 0
  br i1 %.not50.i, label %._crit_edge.i, label %.lr.ph65.i

._crit_edge.i:                                    ; preds = %.lr.ph65.i
  %i.oy = icmp eq i32 %.04062.i, %.040.i
  br i1 %i.oy, label %update_search.exit.i, label %bb.ce

bb.ce:                                            ; preds = %._crit_edge.i
  store i32 %.040.i, ptr %i.cq, align 8, !tbaa !28
  br label %update_search.exit.i

update_search.exit.i:                             ; preds = %bb.ce, %._crit_edge.i, %bb.cd
  %.lcssa5893.i = phi i32 [ %i.ou, %bb.ce ], [ %i.ou, %._crit_edge.i ], [ %i.on, %bb.cd ]
  %.040.lcssa92.i = phi i32 [ %.040.i, %bb.ce ], [ %.04062.i, %._crit_edge.i ], [ %.04062.i, %bb.cd ]
  %i.oz = load ptr, ptr %i.cv, align 8, !tbaa !37
  %i.pa = zext i32 %.040.lcssa92.i to i64
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oz, i64 %i.pa
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !40
  %i.pd = zext i8 %i.pc to i32
  %i.pe = add i32 %.lcssa5893.i, %i.pd
  br label %bb.cf

bb.cf:                                            ; preds = %update_search.exit.i, %bb.cc
  %.3.i46 = phi i32 [ %i.pe, %update_search.exit.i ], [ %.244.i, %bb.cc ]
  %i.pf = load i32, ptr %i.bv, align 8, !tbaa !142
  %i.pg = add i32 %i.pf, 1
  store i32 %i.pg, ptr %i.bv, align 8, !tbaa !142
  tail call fastcc void @assign(ptr noundef nonnull %0, i32 noundef %.3.i46, i32 noundef -1)
  br label %decide.exit.backedge

decide.exit.backedge:                             ; preds = %bb.cf, %analyze.exit
  br label %decide.exit

._crit_edge:                                      ; preds = %kissat_terminated.exit.i, %bb.bx
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !118 ; 3 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !119 ; 2 uses
  %i.pl = icmp eq ptr %i.pi, %i.pk
  br i1 %i.pl, label %reset_assumptions.exit, label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %._crit_edge
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !130
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cg, %.lr.ph.i50
  %i.po = phi ptr [ %i.pk, %.lr.ph.i50 ], [ %i.pp, %bb.cg ]
  %i.pp = getelementptr inbounds i8, ptr %i.po, i64 -4 ; 3 uses
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !104
  %i.pr = zext i32 %i.pq to i64
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pn, i64 %i.pr
  store i8 0, ptr %i.ps, align 1, !tbaa !143
  %.not.i51 = icmp eq ptr %i.pi, %i.pp
  br i1 %.not.i51, label %._crit_edge.i52, label %bb.cg, !llvm.loop !1

._crit_edge.i52:                                  ; preds = %bb.cg
  store ptr %i.pi, ptr %i.pj, align 8, !tbaa !119
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.pu = load i32, ptr %i.pt, align 8, !tbaa !27
  %.not8.i = icmp eq i32 %i.pu, -1
  br i1 %.not8.i, label %reset_assumptions.exit, label %bb.ch

bb.ch:                                            ; preds = %._crit_edge.i52
  store i32 -1, ptr %i.pt, align 8, !tbaa !27
  br label %reset_assumptions.exit

reset_assumptions.exit:                           ; preds = %failing.exit.thread54.i, %bb.ar, %bb.ba, %bb.bc, %bb.bv, %.loopexit.sink.split.i, %bb.i, %bb.ch, %._crit_edge.i52, %._crit_edge
  %.0.lcssa131 = phi i32 [ 0, %._crit_edge ], [ 0, %bb.ch ], [ 0, %._crit_edge.i52 ], [ 20, %bb.ar ], [ 20, %bb.i ], [ 20, %bb.ba ], [ 20, %bb.bc ], [ 20, %bb.bv ], [ 20, %.loopexit.sink.split.i ], [ 10, %failing.exit.thread54.i ] ; 2 uses
  store i32 %.0.lcssa131, ptr %i.a, align 8, !tbaa !32
  ret i32 %.0.lcssa131
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 -1, -2147483648) i32 @propagate(ptr noundef %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 320
  %.pre = load i32, ptr %i.a, align 4, !tbaa !141
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %propagate_literal.exit
  %i.g = phi i32 [ %.pre, %bb.a ], [ %i.cr, %propagate_literal.exit ]
  %.021 = phi i32 [ 0, %bb.a ], [ %i.cs, %propagate_literal.exit ] ; 2 uses
  %i.h = zext i32 %i.g to i64                     ; 2 uses
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !123
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !122  ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 2
  %i.o = icmp ugt i64 %i.n, %i.h
  br i1 %i.o, label %bb.c, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.b
  %.pre28 = load ptr, ptr %0, align 8, !tbaa !23
  br label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.h
  %i.q = load i32, ptr %i.p, align 4, !tbaa !104
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !129  ; 3 uses
  %i.s = xor i32 %i.q, 1                          ; 3 uses
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !97
  %i.u = zext i32 %i.s to i64
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.u ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !100  ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !101  ; 5 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr i64 %i.ab, 7
  %i.ad = add nsw i64 %i.ac, 1                    ; 2 uses
  %.not105.i = icmp eq ptr %i.w, %i.y
  br i1 %.not105.i, label %.thread.i, label %.lr.ph109.i

.lr.ph109.i:                                      ; preds = %bb.c, %bb.n
  %.079108.i = phi i64 [ %.180.i, %bb.n ], [ %i.ad, %bb.c ] ; 4 uses
  %.082107.i = phi ptr [ %i.af, %bb.n ], [ %i.w, %bb.c ] ; 2 uses
  %.085106.i = phi ptr [ %.4.i, %bb.n ], [ %i.w, %bb.c ] ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.085106.i, i64 8 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.082107.i, i64 8 ; 5 uses
  %i.ag = load i64, ptr %.082107.i, align 4       ; 5 uses
  store i64 %i.ag, ptr %.085106.i, align 4
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = lshr i64 %i.ag, 32                      ; 2 uses
  %i.aj = trunc nuw i64 %i.ai to i32              ; 2 uses
  %i.ak = and i32 %i.aj, 2147483647               ; 4 uses
  %i.al = and i64 %i.ag, 4294967295
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !40  ; 2 uses
  %i.ao = icmp sgt i8 %i.an, 0
  br i1 %i.ao, label %bb.n, label %bb.d, !llvm.loop !198

bb.d:                                             ; preds = %.lr.ph109.i
  %i.ap = icmp slt i64 %i.ag, 0
  br i1 %i.ap, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.aq = icmp slt i8 %i.an, 0
  br i1 %i.aq, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @assign(ptr noundef %0, i32 noundef %i.ah, i32 noundef %i.ak)
  br label %bb.n, !llvm.loop !198

bb.g:                                             ; preds = %bb.d
  %.val.i = load ptr, ptr %i.f, align 8, !tbaa !106
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.ai ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 12 ; 4 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !104
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 3 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !104
  %i.aw = xor i32 %i.at, %i.av
  %i.ax = xor i32 %i.aw, %i.s                     ; 4 uses
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !40  ; 2 uses
  %i.bb = add i64 %.079108.i, 1                   ; 4 uses
  %i.bc = icmp sgt i8 %i.ba, 0
  br i1 %i.bc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %i.ax, ptr %.085106.i, align 4, !tbaa !203
  br label %bb.n, !llvm.loop !198

bb.i:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 4 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !114 ; 2 uses
  %i.bf = zext i32 %i.be to i64
  %.idx.i = shl nuw nsw i64 %i.bf, 2
  %i.bg = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx.i
  %.not95.not103.i = icmp eq i32 %i.be, 2
  br i1 %.not95.not103.i, label %.critedge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 20
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.preheader.i
  %.0104.i = phi ptr [ %i.bn, %bb.j ], [ %i.bh, %.lr.ph.preheader.i ] ; 3 uses
  %i.bi = load i32, ptr %.0104.i, align 4, !tbaa !104 ; 3 uses
  %i.bj = zext i32 %i.bi to i64                   ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !40
  %i.bm = icmp sgt i8 %i.bl, -1
  br i1 %i.bm, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.0104.i, i64 4 ; 2 uses
  %.not95.not.i = icmp eq ptr %i.bn, %i.bg
  br i1 %.not95.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !199

bb.k:                                             ; preds = %.lr.ph.i
  store i32 %i.ax, ptr %i.as, align 4, !tbaa !104
  store i32 %i.bi, ptr %i.au, align 4, !tbaa !104
  store i32 %i.s, ptr %.0104.i, align 4, !tbaa !104
  %i.bo = load ptr, ptr %i.e, align 8, !tbaa !97
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %i.bj ; 3 uses
  %i.bq = load i32, ptr %i.bd, align 4, !tbaa !114
  %i.br = load i32, ptr %i.as, align 4, !tbaa !104
  %i.bs = load i32, ptr %i.au, align 4, !tbaa !104
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !101 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !117
  %i.bx = icmp eq ptr %i.bu, %i.bw
  br i1 %i.bx, label %bb.l, label %watch_klause.exit.i

bb.l:                                             ; preds = %bb.k
  %i.by = load ptr, ptr %0, align 8, !tbaa !23
  tail call void @kissat_stack_enlarge(ptr noundef %i.by, ptr noundef nonnull %i.bp, i64 noundef 8) #15
  %.pre.i.i = load ptr, ptr %i.bt, align 8, !tbaa !101
  br label %watch_klause.exit.i

watch_klause.exit.i:                              ; preds = %bb.l, %bb.k
  %i.bz = phi ptr [ %.pre.i.i, %bb.l ], [ %i.bu, %bb.k ] ; 3 uses
  %i.ca = icmp eq i32 %i.bq, 2
  %i.cb = select i1 %i.ca, i32 -2147483648, i32 0
  %i.cc = or disjoint i32 %i.cb, %i.aj
  %i.cd = xor i32 %i.br, %i.bs
  %i.ce = xor i32 %i.cd, %i.bi
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr %i.cf, ptr %i.bt, align 8, !tbaa !101
  store i32 %i.ce, ptr %i.bz, align 4, !tbaa !104
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  store i32 %i.cc, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !40
  br label %bb.n

.critedge.i:                                      ; preds = %bb.j, %bb.i
  %i.cg = icmp slt i8 %i.ba, 0
  br i1 %i.cg, label %.thread.i, label %bb.m

bb.m:                                             ; preds = %.critedge.i
  tail call fastcc void @assign(ptr noundef %0, i32 noundef %i.ax, i32 noundef %i.ak)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %watch_klause.exit.i, %bb.h, %bb.f, %.lr.ph109.i
  %.4.i = phi ptr [ %i.ae, %.lr.ph109.i ], [ %i.ae, %bb.m ], [ %i.ae, %bb.f ], [ %i.ae, %bb.h ], [ %.085106.i, %watch_klause.exit.i ] ; 2 uses
  %.180.i = phi i64 [ %.079108.i, %.lr.ph109.i ], [ %i.bb, %bb.m ], [ %.079108.i, %bb.f ], [ %i.bb, %bb.h ], [ %i.bb, %watch_klause.exit.i ] ; 2 uses
  %.not.i = icmp eq ptr %i.af, %i.y
  br i1 %.not.i, label %.thread.i, label %.lr.ph109.i

.thread.i:                                        ; preds = %bb.n, %.critedge.i, %bb.e, %bb.c
  %.492.i = phi i32 [ -1, %bb.c ], [ -1, %bb.n ], [ %i.ak, %.critedge.i ], [ %i.ak, %bb.e ] ; 2 uses
  %.5.i = phi ptr [ %i.w, %bb.c ], [ %.4.i, %bb.n ], [ %i.ae, %.critedge.i ], [ %i.ae, %bb.e ] ; 2 uses
  %.183.i = phi ptr [ %i.w, %bb.c ], [ %i.af, %bb.e ], [ %i.af, %.critedge.i ], [ %i.af, %bb.n ] ; 2 uses
  %.281.i = phi i64 [ %i.ad, %bb.c ], [ %.180.i, %bb.n ], [ %i.bb, %.critedge.i ], [ %.079108.i, %bb.e ]
  %.not96122.i = icmp eq ptr %.183.i, %i.y
  br i1 %.not96122.i, label %._crit_edge.i, label %.lr.ph125.i

.lr.ph125.i:                                      ; preds = %.thread.i, %.lr.ph125.i
  %.284124.i = phi ptr [ %i.ci, %.lr.ph125.i ], [ %.183.i, %.thread.i ] ; 2 uses
  %.6123.i = phi ptr [ %i.ch, %.lr.ph125.i ], [ %.5.i, %.thread.i ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.6123.i, i64 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.284124.i, i64 8 ; 2 uses
  %i.cj = load i64, ptr %.284124.i, align 4
  store i64 %i.cj, ptr %.6123.i, align 4
  %.not96.i = icmp eq ptr %i.ci, %i.y
  br i1 %.not96.i, label %._crit_edge.i, label %.lr.ph125.i, !llvm.loop !200

._crit_edge.i:                                    ; preds = %.lr.ph125.i, %.thread.i
  %.6.lcssa.i = phi ptr [ %.5.i, %.thread.i ], [ %i.ch, %.lr.ph125.i ] ; 2 uses
  %i.ck = load ptr, ptr %i.x, align 8, !tbaa !101
  %i.cl = icmp eq ptr %.6.lcssa.i, %i.ck
  br i1 %i.cl, label %propagate_literal.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i
  store ptr %.6.lcssa.i, ptr %i.x, align 8, !tbaa !101
  br label %propagate_literal.exit

propagate_literal.exit:                           ; preds = %._crit_edge.i, %bb.o
  %i.cm = load ptr, ptr %0, align 8, !tbaa !23    ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4112 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !107
  %i.cp = add i64 %i.co, %.281.i
  store i64 %i.cp, ptr %i.cn, align 8, !tbaa !107
  %i.cq = load i32, ptr %i.a, align 4, !tbaa !141
  %i.cr = add i32 %i.cq, 1                        ; 2 uses
  store i32 %i.cr, ptr %i.a, align 4, !tbaa !141
  %i.cs = add i32 %.021, 1                        ; 2 uses
  %i.ct = icmp eq i32 %.492.i, -1
  br i1 %i.ct, label %bb.b, label %.critedge, !llvm.loop !201

.critedge:                                        ; preds = %propagate_literal.exit, %..critedge_crit_edge
  %i.cu = phi ptr [ %.pre28, %..critedge_crit_edge ], [ %i.cm, %propagate_literal.exit ]
  %.012.lcssa = phi i32 [ -1, %..critedge_crit_edge ], [ %.492.i, %propagate_literal.exit ]
  %.0.lcssa = phi i32 [ %.021, %..critedge_crit_edge ], [ %i.cs, %propagate_literal.exit ]
  %i.cv = zext i32 %.0.lcssa to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 4096 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !204
  %i.cy = add i64 %i.cx, %i.cv
  store i64 %i.cy, ptr %i.cw, align 8, !tbaa !204
  ret i32 %.012.lcssa
}

; Function Attrs: nounwind uwtable
define internal fastcc void @inconsistent(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !36, !range !34, !noundef !35
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %1, ptr %i.d, align 4, !tbaa !26
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !138  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !128
  %i.k = getelementptr i8, ptr %0, i64 320
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 192
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %bb.c
  %.062 = phi i32 [ 0, %bb.c ], [ %i.ay, %bb.k ]  ; 2 uses
  %.059 = phi i32 [ %1, %bb.c ], [ %i.bc, %bb.k ] ; 2 uses
  %.val = load ptr, ptr %i.k, align 8, !tbaa !106
  %i.p = zext i32 %.059 to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.p ; 2 uses
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !103  ; 2 uses
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !112
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %0, align 8, !tbaa !23
  tail call void @kissat_stack_enlarge(ptr noundef %i.u, ptr noundef nonnull %i.f, i64 noundef 4) #15
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !103
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.v = phi ptr [ %.pre, %bb.e ], [ %i.r, %bb.d ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store ptr %i.w, ptr %i.l, align 8, !tbaa !103
  store i32 %.059, ptr %i.v, align 4, !tbaa !104
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 12 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !114  ; 2 uses
  %i.aa = zext i32 %i.z to i64
  %.idx = shl nuw nsw i64 %i.aa, 2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx
  %.not71 = icmp eq i32 %i.z, 0
  br i1 %.not71, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.j
  %.06172 = phi ptr [ %i.av, %bb.j ], [ %i.x, %bb.f ] ; 2 uses
  %i.ac = load i32, ptr %.06172, align 4, !tbaa !104
  %i.ad = lshr i32 %i.ac, 1                       ; 2 uses
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ae ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !40
  %.not66 = icmp eq i8 %i.ag, 0
  br i1 %.not66, label %bb.g, label %bb.j

.critedge:                                        ; preds = %bb.j, %bb.f
  %i.ah = zext i32 %.062 to i64                   ; 2 uses
  %i.ai = load ptr, ptr %i.n, align 8, !tbaa !148
  %i.aj = load ptr, ptr %i.e, align 8, !tbaa !131 ; 2 uses
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 2
  %i.ao = icmp eq i64 %i.an, %i.ah
  br i1 %i.ao, label %bb.l, label %bb.k

bb.g:                                             ; preds = %.lr.ph
  store i8 1, ptr %i.af, align 1, !tbaa !40
  %i.ap = load ptr, ptr %i.n, align 8, !tbaa !148 ; 2 uses
  %i.aq = load ptr, ptr %i.o, align 8, !tbaa !132
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.as = load ptr, ptr %0, align 8, !tbaa !23
  tail call void @kissat_stack_enlarge(ptr noundef %i.as, ptr noundef nonnull %i.e, i64 noundef 4) #15
  %.pre76 = load ptr, ptr %i.n, align 8, !tbaa !148
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.at = phi ptr [ %.pre76, %bb.h ], [ %i.ap, %bb.g ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store ptr %i.au, ptr %i.n, align 8, !tbaa !148
  store i32 %i.ad, ptr %i.at, align 4, !tbaa !104
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %.06172, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.av, %i.ab
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !205

bb.k:                                             ; preds = %.critedge
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ah
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !104
  %i.ay = add i32 %.062, 1
  %i.az = zext i32 %i.ax to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !151
  br label %bb.d

bb.l:                                             ; preds = %.critedge
  %i.bd = tail call i32 @new_learned_klause(ptr noundef nonnull %0)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !26
  %i.bf = load ptr, ptr %i.e, align 8, !tbaa !102 ; 3 uses
  %i.bg = load ptr, ptr %i.n, align 8, !tbaa !103 ; 2 uses
  %.not6573 = icmp eq ptr %i.bf, %i.bg
  br i1 %.not6573, label %.critedge2, label %.lr.ph75

.lr.ph75:                                         ; preds = %bb.l, %.lr.ph75
  %.074 = phi ptr [ %i.bk, %.lr.ph75 ], [ %i.bf, %bb.l ] ; 2 uses
  %i.bh = load i32, ptr %.074, align 4, !tbaa !104
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.bi
  store i8 0, ptr %i.bj, align 1, !tbaa !40
  %i.bk = getelementptr inbounds nuw i8, ptr %.074, i64 4 ; 2 uses
  %.not65 = icmp eq ptr %i.bk, %i.bg
  br i1 %.not65, label %.critedge2.loopexit, label %.lr.ph75, !llvm.loop !206

.critedge2.loopexit:                              ; preds = %.lr.ph75
  %.pre77 = load ptr, ptr %i.e, align 8, !tbaa !102
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %bb.l
  %i.bl = phi ptr [ %.pre77, %.critedge2.loopexit ], [ %i.bf, %bb.l ]
  store ptr %i.bl, ptr %i.n, align 8, !tbaa !103
  %i.bm = load ptr, ptr %i.f, align 8, !tbaa !102
  store ptr %i.bm, ptr %i.l, align 8, !tbaa !103
  br label %bb.m

bb.m:                                             ; preds = %.critedge2, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @kitten_status(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define i32 @kitten_compute_clausal_core(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @invalid_api_usage(ptr noundef nonnull @__func__.kitten_compute_clausal_core, ptr noundef nonnull @.str.1)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32
  switch i32 %i.b, label %bb.e [
    i32 20, label %bb.f
    i32 10, label %status_to_string.exit
    i32 21, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %status_to_string.exit

bb.e:                                             ; preds = %bb.c
  br label %status_to_string.exit

status_to_string.exit:                            ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi ptr [ @.str.10, %bb.e ], [ @.str.9, %bb.d ], [ @.str.7, %bb.c ]
  tail call void (ptr, ptr, ...) @invalid_api_usage(ptr noundef nonnull @__func__.kitten_compute_clausal_core, ptr noundef nonnull @.str.2, ptr noundef nonnull %.0.i, ptr noundef nonnull @.str.8)
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i8, ptr %i.c, align 4, !tbaa !36, !range !34, !noundef !35
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ptr, ...) @invalid_api_usage(ptr noundef nonnull @__func__.kitten_compute_clausal_core, ptr noundef nonnull @.str.5)
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !26   ; 2 uses
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load i32, ptr %i.j, align 8, !tbaa !27   ; 2 uses
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.not95 = icmp eq ptr %1, null
  br i1 %.not95, label %bb.ac, label %.sink.split

bb.k:                                             ; preds = %bb.h, %bb.i
  %.078 = phi i32 [ %i.k, %bb.i ], [ %i.h, %bb.h ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 12 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !103  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !112
  %i.q = icmp eq ptr %i.n, %i.p
  br i1 %i.q, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.r = load ptr, ptr %0, align 8, !tbaa !23
  tail call void @kissat_stack_enlarge(ptr noundef %i.r, ptr noundef nonnull %i.f, i64 noundef 4) #15
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !103
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.s = phi ptr [ %.pre, %bb.l ], [ %i.n, %bb.k ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 3 uses
  store ptr %i.t, ptr %i.m, align 8, !tbaa !103
  store i32 %.078, ptr %i.s, align 4, !tbaa !104
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !102
  %.not92108 = icmp eq ptr %i.v, %i.t
  br i1 %.not92108, label %._crit_edge, label %.lr.ph111

.lr.ph111:                                        ; preds = %bb.m
  %i.w = getelementptr i8, ptr %0, i64 320        ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 240
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph111, %.critedge
  %i.z = phi ptr [ %i.t, %.lr.ph111 ], [ %i.cd, %.critedge ] ; 2 uses
  %.079110 = phi i64 [ 0, %.lr.ph111 ], [ %.3, %.critedge ] ; 5 uses
  %.080109 = phi i32 [ 0, %.lr.ph111 ], [ %.383, %.critedge ] ; 5 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -4 ; 5 uses
  store ptr %i.aa, ptr %i.m, align 8, !tbaa !103
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !104 ; 3 uses
  %i.ac = icmp eq i32 %i.ab, -1
  br i1 %i.ac, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ad = getelementptr inbounds i8, ptr %i.z, i64 -8 ; 3 uses
  store ptr %i.ad, ptr %i.m, align 8, !tbaa !103
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !104 ; 2 uses
  %i.af = load ptr, ptr %i.x, align 8, !tbaa !103 ; 2 uses
  %i.ag = load ptr, ptr %i.y, align 8, !tbaa !112
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ai = load ptr, ptr %0, align 8, !tbaa !23
  tail call void @kissat_stack_enlarge(ptr noundef %i.ai, ptr noundef nonnull %i.u, i64 noundef 4) #15
  %.pre117 = load ptr, ptr %i.x, align 8, !tbaa !103
  %.pre118.pre = load ptr, ptr %i.m, align 8, !tbaa !103
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pre118 = phi ptr [ %.pre118.pre, %bb.p ], [ %i.ad, %bb.o ]
  %i.aj = phi ptr [ %.pre117, %bb.p ], [ %i.af, %bb.o ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store ptr %i.ak, ptr %i.x, align 8, !tbaa !103
  store i32 %i.ae, ptr %i.aj, align 4, !tbaa !104
  %.val98 = load ptr, ptr %i.w, align 8, !tbaa !106
  %i.al = zext i32 %i.ae to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.val98, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !144 ; 2 uses
  %i.ap = or i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !144
  %i.aq = lshr i32 %i.ao, 1
  %.lobit = and i32 %i.aq, 1                      ; 2 uses
  %i.ar = xor i32 %.lobit, 1
  %.181 = add i32 %i.ar, %.080109
  %i.as = zext nneg i32 %.lobit to i64
  %.1 = add i64 %.079110, %i.as
  br label %.critedge

bb.r:                                             ; preds = %bb.n
  %.val97 = load ptr, ptr %i.w, align 8, !tbaa !106
  %i.at = zext i32 %i.ab to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.val97, i64 %i.at ; 4 uses
  %i.av = getelementptr i8, ptr %i.au, i64 8      ; 2 uses
  %.val100 = load i32, ptr %i.av, align 4, !tbaa !144
  %i.aw = trunc i32 %.val100 to i1
  br i1 %i.aw, label %.critedge, label %bb.s, !llvm.loop !207

bb.s:                                             ; preds = %bb.r
  %i.ax = load ptr, ptr %i.o, align 8, !tbaa !112 ; 2 uses
  %i.ay = icmp eq ptr %i.aa, %i.ax
  br i1 %i.ay, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.az = load ptr, ptr %0, align 8, !tbaa !23
  tail call void @kissat_stack_enlarge(ptr noundef %i.az, ptr noundef nonnull %i.f, i64 noundef 4) #15
  %.pre113 = load ptr, ptr %i.m, align 8, !tbaa !103
  %.pre114 = load ptr, ptr %i.o, align 8, !tbaa !112
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ba = phi ptr [ %.pre114, %bb.t ], [ %i.ax, %bb.s ]
  %i.bb = phi ptr [ %.pre113, %bb.t ], [ %i.aa, %bb.s ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4 ; 3 uses
  store ptr %i.bc, ptr %i.m, align 8, !tbaa !103
  store i32 %i.ab, ptr %i.bb, align 4, !tbaa !104
  %i.bd = icmp eq ptr %i.bc, %i.ba
  br i1 %i.bd, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.be = load ptr, ptr %0, align 8, !tbaa !23
  tail call void @kissat_stack_enlarge(ptr noundef %i.be, ptr noundef nonnull %i.f, i64 noundef 4) #15
  %.pre115 = load ptr, ptr %i.m, align 8, !tbaa !103
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bf = phi ptr [ %.pre115, %bb.v ], [ %i.bc, %bb.u ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4 ; 4 uses
  store ptr %i.bg, ptr %i.m, align 8, !tbaa !103
  store i32 -1, ptr %i.bf, align 4, !tbaa !104
  %.val101 = load i32, ptr %i.av, align 4, !tbaa !144
  %i.bh = and i32 %.val101, 2
  %.not104 = icmp eq i32 %i.bh, 0
  br i1 %.not104, label %.critedge, label %bb.x, !llvm.loop !207

bb.x:                                             ; preds = %bb.w
  %i.bi = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !114
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bl ; 2 uses
  %i.bn = load i32, ptr %i.au, align 4, !tbaa !145 ; 2 uses
  %i.bo = zext i32 %i.bn to i64
  %.idx = shl nuw nsw i64 %i.bo, 2
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.idx
  %.not94106 = icmp eq i32 %i.bn, 0
  br i1 %.not94106, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.x, %bb.ab
  %i.bq = phi ptr [ %i.cb, %bb.ab ], [ %i.bg, %bb.x ] ; 3 uses
  %.0107 = phi ptr [ %i.cc, %bb.ab ], [ %i.bm, %bb.x ] ; 2 uses
  %i.br = load i32, ptr %.0107, align 4, !tbaa !104 ; 2 uses
  %.val = load ptr, ptr %i.w, align 8, !tbaa !106
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bt, i64 8
  %.val99 = load i32, ptr %i.bu, align 4, !tbaa !144
  %i.bv = trunc i32 %.val99 to i1
  br i1 %i.bv, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %.lr.ph
  %i.bw = load ptr, ptr %i.o, align 8, !tbaa !112
  %i.bx = icmp eq ptr %i.bq, %i.bw
  br i1 %i.bx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.by = load ptr, ptr %0, align 8, !tbaa !23
  tail call void @kissat_stack_enlarge(ptr noundef %i.by, ptr noundef nonnull %i.f, i64 noundef 4) #15
  %.pre116 = load ptr, ptr %i.m, align 8, !tbaa !103
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bz = phi ptr [ %.pre116, %bb.z ], [ %i.bq, %bb.y ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4 ; 2 uses
  store ptr %i.ca, ptr %i.m, align 8, !tbaa !103
  store i32 %i.br, ptr %i.bz, align 4, !tbaa !104
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph
  %i.cb = phi ptr [ %i.ca, %bb.aa ], [ %i.bq, %.lr.ph ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.0107, i64 4 ; 2 uses
  %.not94 = icmp eq ptr %i.cc, %i.bp
  br i1 %.not94, label %.critedge, label %.lr.ph, !llvm.loop !208

.critedge:                                        ; preds = %bb.ab, %bb.x, %bb.r, %bb.w, %bb.q
  %i.cd = phi ptr [ %i.aa, %bb.r ], [ %.pre118, %bb.q ], [ %i.bg, %bb.w ], [ %i.bg, %bb.x ], [ %i.cb, %bb.ab ] ; 2 uses
  %.383 = phi i32 [ %.080109, %bb.r ], [ %.181, %bb.q ], [ %.080109, %bb.w ], [ %.080109, %bb.x ], [ %.080109, %bb.ab ] ; 2 uses
  %.3 = phi i64 [ %.079110, %bb.r ], [ %.1, %bb.q ], [ %.079110, %bb.w ], [ %.079110, %bb.x ], [ %.079110, %bb.ab ] ; 2 uses
  %i.ce = load ptr, ptr %i.f, align 8, !tbaa !102
  %.not92 = icmp eq ptr %i.ce, %i.cd
  br i1 %.not92, label %._crit_edge, label %bb.n

._crit_edge:                                      ; preds = %.critedge, %bb.m
  %.080.lcssa = phi i32 [ 0, %bb.m ], [ %.383, %.critedge ] ; 2 uses
  %.079.lcssa = phi i64 [ 0, %bb.m ], [ %.3, %.critedge ]
  %.not93 = icmp eq ptr %1, null
  br i1 %.not93, label %bb.ac, label %.sink.split

.sink.split:                                      ; preds = %._crit_edge, %bb.j
  %.079.lcssa.sink = phi i64 [ 0, %bb.j ], [ %.079.lcssa, %._crit_edge ]
  %.084.ph = phi i32 [ 0, %bb.j ], [ %.080.lcssa, %._crit_edge ]
  store i64 %.079.lcssa.sink, ptr %1, align 8, !tbaa !39
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split, %._crit_edge, %bb.j
  %.084 = phi i32 [ %.080.lcssa, %._crit_edge ], [ 0, %bb.j ], [ %.084.ph, %.sink.split ]
  store i32 21, ptr %i.a, align 8, !tbaa !32
  ret i32 %.084
}

; Function Attrs: nounwind uwtable
define void @kitten_traverse_core_ids(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @invalid_api_usage(ptr noundef nonnull @__func__.kitten_traverse_core_ids, ptr noundef nonnull @.str.1)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32
  switch i32 %i.b, label %bb.e [
    i32 21, label %bb.f
    i32 10, label %status_to_string.exit
    i32 20, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %status_to_string.exit

bb.e:                                             ; preds = %bb.c
  br label %status_to_string.exit

status_to_string.exit:                            ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi ptr [ @.str.10, %bb.e ], [ @.str.7, %bb.c ], [ @.str.8, %bb.d ]
  tail call void (ptr, ptr, ...) @invalid_api_usage(ptr noundef nonnull @__func__.kitten_traverse_core_ids, ptr noundef nonnull @.str.2, ptr noundef nonnull %.0.i, ptr noundef nonnull @.str.9)
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.c = getelementptr i8, ptr %0, i64 320
  %.val = load ptr, ptr %i.c, align 8, !tbaa !106 ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 64
  %.val20 = load i64, ptr %i.d, align 8, !tbaa !147 ; 2 uses
  %.idx = shl nuw nsw i64 %.val20, 2
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx
  %.not1724 = icmp eq i64 %.val20, 0
  br i1 %.not1724, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.f = getelementptr i8, ptr %0, i64 12
  br label %bb.g

._crit_edge:                                      ; preds = %next_klause.exit, %bb.f
  ret void

bb.g:                                             ; preds = %.lr.ph, %next_klause.exit
  %.026 = phi ptr [ %.val, %.lr.ph ], [ %.0.i23, %next_klause.exit ] ; 5 uses
  %i.g = getelementptr i8, ptr %.026, i64 8       ; 2 uses
  %.0.val18 = load i32, ptr %i.g, align 4, !tbaa !144
  %i.h = and i32 %.0.val18, 3
  %or.cond = icmp eq i32 %i.h, 1
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.i = load i32, ptr %.026, align 4, !tbaa !145
  tail call void %2(ptr noundef %1, i32 noundef %i.i) #15
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.val19 = load i8, ptr %i.f, align 4, !tbaa !36, !range !34, !noundef !35
  %i.j = getelementptr inbounds nuw i8, ptr %.026, i64 12
  %i.k = getelementptr inbounds nuw i8, ptr %.026, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !114
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.m ; 3 uses
  %i.o = trunc nuw i8 %.val19 to i1
  br i1 %i.o, label %bb.j, label %next_klause.exit

bb.j:                                             ; preds = %bb.i
  %.val.i = load i32, ptr %i.g, align 4, !tbaa !144
  %i.p = and i32 %.val.i, 2
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %next_klause.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = load i32, ptr %.026, align 4, !tbaa !145
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.r
  br label %next_klause.exit

next_klause.exit:                                 ; preds = %bb.i, %bb.j, %bb.k
  %.0.i23 = phi ptr [ %i.s, %bb.k ], [ %i.n, %bb.j ], [ %i.n, %bb.i ] ; 2 uses
  %.not17 = icmp eq ptr %.0.i23, %i.e
  br i1 %.not17, label %._crit_edge, label %bb.g, !llvm.loop !209
}

; Function Attrs: nounwind uwtable
define void @kitten_traverse_core_clauses(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @invalid_api_usage(ptr noundef nonnull @__func__.kitten_traverse_core_clauses, ptr noundef nonnull @.str.1)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32
  switch i32 %i.b, label %bb.e [
    i32 21, label %bb.f
    i32 10, label %status_to_string.exit
    i32 20, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %status_to_string.exit

bb.e:                                             ; preds = %bb.c
  br label %status_to_string.exit

status_to_string.exit:                            ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi ptr [ @.str.10, %bb.e ], [ @.str.7, %bb.c ], [ @.str.8, %bb.d ]
  tail call void (ptr, ptr, ...) @invalid_api_usage(ptr noundef nonnull @__func__.kitten_traverse_core_clauses, ptr noundef nonnull @.str.2, ptr noundef nonnull %.0.i, ptr noundef nonnull @.str.9)
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !120  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !121  ; 2 uses
  %.not4451 = icmp eq ptr %i.d, %i.f
  br i1 %.not4451, label %.critedge, label %.lr.ph53

.lr.ph53:                                         ; preds = %bb.f
  %i.g = getelementptr i8, ptr %0, i64 320
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.i = getelementptr i8, ptr %0, i64 272
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 264
  %.pre55.pre = load ptr, ptr %i.j, align 8, !tbaa !103
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph53, %.critedge2
  %.pre55 = phi ptr [ %.pre55.pre, %.lr.ph53 ], [ %i.an, %.critedge2 ] ; 2 uses
  %.04152 = phi ptr [ %i.d, %.lr.ph53 ], [ %i.ao, %.critedge2 ] ; 2 uses
  %i.l = load i32, ptr %.04152, align 4, !tbaa !104
  %.val = load ptr, ptr %i.g, align 8, !tbaa !106
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.m ; 3 uses
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %.val46 = load i32, ptr %i.o, align 4, !tbaa !144
  %i.p = and i32 %.val46, 2
  %i.q = icmp ne i32 %i.p, 0
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 12 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !114  ; 2 uses
  %i.u = zext i32 %i.t to i64
  %.idx = shl nuw nsw i64 %i.u, 2
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx
  %.not4549 = icmp eq i32 %i.t, 0
  br i1 %.not4549, label %.critedge2, label %.lr.ph

.critedge:                                        ; preds = %.critedge2, %bb.f
  ret void

.lr.ph:                                           ; preds = %bb.g, %bb.i
  %i.w = phi ptr [ %i.ar, %bb.i ], [ %.pre55, %bb.g ] ; 2 uses
  %.04050 = phi ptr [ %i.as, %bb.i ], [ %i.r, %bb.g ] ; 2 uses
  %i.x = load i32, ptr %.04050, align 4, !tbaa !104 ; 2 uses
  %.val47 = load ptr, ptr %i.i, align 8, !tbaa !125
  %i.y = lshr i32 %i.x, 1
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.val47, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !104
  %i.ac = shl i32 %i.ab, 1
  %i.ad = and i32 %i.x, 1
  %i.ae = or disjoint i32 %i.ac, %i.ad
  %i.af = load ptr, ptr %i.k, align 8, !tbaa !112
  %i.ag = icmp eq ptr %i.w, %i.af
  br i1 %i.ag, label %bb.h, label %bb.i

.critedge2:                                       ; preds = %bb.i, %bb.g
  %i.ah = phi ptr [ %.pre55, %bb.g ], [ %i.ar, %bb.i ]
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !102 ; 2 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 2
  tail call void %2(ptr noundef %1, i1 noundef zeroext %i.q, i64 noundef %i.am, ptr noundef %i.ai) #15
  %i.an = load ptr, ptr %i.h, align 8, !tbaa !102 ; 2 uses
  store ptr %i.an, ptr %i.j, align 8, !tbaa !103
  %i.ao = getelementptr inbounds nuw i8, ptr %.04152, i64 4 ; 2 uses
  %.not44 = icmp eq ptr %i.ao, %i.f
  br i1 %.not44, label %.critedge, label %bb.g, !llvm.loop !210

bb.h:                                             ; preds = %.lr.ph
  %i.ap = load ptr, ptr %0, align 8, !tbaa !23
  tail call void @kissat_stack_enlarge(ptr noundef %i.ap, ptr noundef nonnull %i.h, i64 noundef 4) #15
  %.pre54 = load ptr, ptr %i.j, align 8, !tbaa !103
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph
  %i.aq = phi ptr [ %.pre54, %bb.h ], [ %i.w, %.lr.ph ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4 ; 3 uses
  store ptr %i.ar, ptr %i.j, align 8, !tbaa !103
  store i32 %i.ae, ptr %i.aq, align 4, !tbaa !104
  %i.as = getelementptr inbounds nuw i8, ptr %.04050, i64 4 ; 2 uses
  %.not45 = icmp eq ptr %i.as, %i.v
  br i1 %.not45, label %.critedge2, label %.lr.ph, !llvm.loop !211
}

; Function Attrs: nounwind uwtable
define void @kitten_shrink_to_clausal_core(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @invalid_api_usage(ptr noundef nonnull @__func__.kitten_shrink_to_clausal_core, ptr noundef nonnull @.str.1)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32
  switch i32 %i.b, label %bb.e [
    i32 21, label %bb.f
    i32 10, label %status_to_string.exit
    i32 20, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %status_to_string.exit

bb.e:                                             ; preds = %bb.c
  br label %status_to_string.exit

status_to_string.exit:                            ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi ptr [ @.str.10, %bb.e ], [ @.str.7, %bb.c ], [ @.str.8, %bb.d ]
  tail call void (ptr, ptr, ...) @invalid_api_usage(ptr noundef nonnull @__func__.kitten_shrink_to_clausal_core, ptr noundef nonnull @.str.2, ptr noundef nonnull %.0.i, ptr noundef nonnull @.str.9)
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !122
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 376
  store ptr %i.d, ptr %i.e, align 8, !tbaa !123
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !90   ; 2 uses
  %i.h = lshr i64 %i.g, 1
  %i.i = trunc i64 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.i, ptr %i.j, align 8, !tbaa !140
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.k, align 4, !tbaa !141
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.l, align 8, !tbaa !142
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.n = load i32, ptr %i.m, align 4, !tbaa !25   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !28
  %i.q = icmp eq i32 %i.p, %i.n
  br i1 %i.q, label %update_search.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.n, ptr %i.o, align 8, !tbaa !28
  br label %update_search.exit

update_search.exit:                               ; preds = %bb.f, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !129
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.s, i8 0, i64 %i.g, i1 false)
  %i.t = load i64, ptr %i.f, align 8, !tbaa !90   ; 4 uses
  %.not87104 = icmp eq i64 %i.t, 0
  br i1 %.not87104, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %update_search.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !97   ; 5 uses
  %xtraiter = and i64 %i.t, 3                     ; 3 uses
  %i.w = icmp ult i64 %i.t, 4
  br i1 %i.w, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.t, -4
  br label %bb.i

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.0105.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ax, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod120 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod120)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %.0105.epil = phi i64 [ %.0105.epil.init, %.epil.preheader ], [ %i.aa, %bb.h ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %.0105.epil ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !100
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.y, ptr %i.z, align 8, !tbaa !101
  %i.aa = add nuw i64 %.0105.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.h, !llvm.loop !212

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.h, %update_search.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !26
  %i.ad = getelementptr i8, ptr %0, i64 320       ; 2 uses
  %.val = load ptr, ptr %i.ad, align 8, !tbaa !106 ; 6 uses
  %i.ae = zext i32 %i.ac to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.ae ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  %.val94 = load i32, ptr %i.ag, align 4, !tbaa !144
  %i.ah = and i32 %.val94, 2
  %.not103 = icmp eq i32 %i.ah, 0
  br i1 %.not103, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.i, %.lr.ph.new
  %.0105 = phi i64 [ 0, %.lr.ph.new ], [ %i.ax, %bb.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.i ]
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %.0105 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !100
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !101
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %.0105 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !100
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !101
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %.0105 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !100
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !101
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %.0105 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 72
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !100
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 80
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !101
  %i.ax = add nuw i64 %.0105, 4                   ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.i, !llvm.loop !213

bb.j:                                             ; preds = %._crit_edge
  %i.ay = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !114
  %.not88 = icmp eq i32 %i.az, 0
  br i1 %.not88, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.j
  store i32 -1, ptr %i.ab, align 4, !tbaa !26
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !124
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 4 uses
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !115
  %i.bd = getelementptr i8, ptr %0, i64 64        ; 2 uses
  %.val96 = load i64, ptr %i.bd, align 8, !tbaa !147 ; 2 uses
  %.idx = shl nuw nsw i64 %.val96, 2
  %i.be = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx
  %.not89106 = icmp eq i64 %.val96, 0
  br i1 %.not89106, label %._crit_edge111, label %.lr.ph110

.lr.ph110:                                        ; preds = %bb.l
  %i.bf = getelementptr i8, ptr %0, i64 12
  %i.bg = ptrtoint ptr %.val to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  br label %bb.m

._crit_edge111:                                   ; preds = %bb.z, %bb.l
  %.083.lcssa = phi ptr [ %.val, %bb.l ], [ %.2, %bb.z ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !105
  %i.bl = icmp eq ptr %.083.lcssa, %i.bk
  br i1 %i.bl, label %bb.ab, label %bb.aa

bb.m:                                             ; preds = %.lr.ph110, %bb.z
  %.082108 = phi ptr [ %.val, %.lr.ph110 ], [ %.0.i99, %bb.z ] ; 9 uses
  %.083107 = phi ptr [ %.val, %.lr.ph110 ], [ %.2, %bb.z ] ; 5 uses
  %.val95 = load i8, ptr %i.bf, align 4, !tbaa !36, !range !34, !noundef !35
  %i.bm = getelementptr inbounds nuw i8, ptr %.082108, i64 12 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.082108, i64 4 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !114 ; 3 uses
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bp ; 2 uses
  %i.br = trunc nuw i8 %.val95 to i1
  %i.bs = getelementptr i8, ptr %.082108, i64 8
  %.val.i = load i32, ptr %i.bs, align 4, !tbaa !144 ; 3 uses
  %i.bt = and i32 %.val.i, 2
  %.not.i = icmp ne i32 %i.bt, 0
  %or.cond119.not = select i1 %i.br, i1 %.not.i, i1 false
  br i1 %or.cond119.not, label %bb.n, label %next_klause.exit

bb.n:                                             ; preds = %bb.m
  %i.bu = load i32, ptr %.082108, align 4, !tbaa !145
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.bv
  br label %next_klause.exit

next_klause.exit:                                 ; preds = %bb.m, %bb.n
  %.0.i99 = phi ptr [ %i.bw, %bb.n ], [ %i.bq, %bb.m ] ; 4 uses
  %i.bx = and i32 %.val.i, 3
  %or.cond = icmp eq i32 %i.bx, 1
  br i1 %or.cond, label %bb.o, label %bb.z

bb.o:                                             ; preds = %next_klause.exit
  %i.by = getelementptr i8, ptr %.082108, i64 8
  %i.bz = and i32 %.val.i, -4
  store i32 %i.bz, ptr %i.by, align 4, !tbaa !144
  %i.ca = ptrtoint ptr %.083107 to i64
  %i.cb = sub i64 %i.ca, %i.bg
  %i.cc = lshr exact i64 %i.cb, 2
  %i.cd = trunc i64 %i.cc to i32                  ; 3 uses
  switch i32 %i.bo, label %bb.u [
    i32 0, label %bb.p
    i32 1, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  %i.ce = load i32, ptr %i.ab, align 4, !tbaa !26
  %.not91 = icmp eq i32 %i.ce, 0
  br i1 %.not91, label %bb.q, label %bb.x

bb.q:                                             ; preds = %bb.p
  store i32 %i.cd, ptr %i.ab, align 4, !tbaa !26
  br label %bb.x

bb.r:                                             ; preds = %bb.o
  %i.cf = load ptr, ptr %i.bc, align 8, !tbaa !115 ; 2 uses
  %i.cg = load ptr, ptr %i.bh, align 8, !tbaa !116
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ci = load ptr, ptr %0, align 8, !tbaa !23
  tail call void @kissat_stack_enlarge(ptr noundef %i.ci, ptr noundef nonnull %i.ba, i64 noundef 4) #15
  %.pre = load ptr, ptr %i.bc, align 8, !tbaa !115
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cj = phi ptr [ %.pre, %bb.s ], [ %i.cf, %bb.r ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  store ptr %i.ck, ptr %i.bc, align 8, !tbaa !115
  store i32 %i.cd, ptr %i.cj, align 4, !tbaa !104
  br label %bb.x

bb.u:                                             ; preds = %bb.o
  %i.cl = load i32, ptr %i.bm, align 4, !tbaa !104
  %i.cm = load ptr, ptr %i.bi, align 8, !tbaa !97
  %i.cn = zext i32 %i.cl to i64
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %i.cn ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.082108, i64 16 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !104
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 3 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !101 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !117
  %i.cv = icmp eq ptr %i.cs, %i.cu
  br i1 %i.cv, label %bb.v, label %watch_klause.exit

bb.v:                                             ; preds = %bb.u
  %i.cw = load ptr, ptr %0, align 8, !tbaa !23
  tail call void @kissat_stack_enlarge(ptr noundef %i.cw, ptr noundef nonnull %i.co, i64 noundef 8) #15
  %.pre.i = load ptr, ptr %i.cr, align 8, !tbaa !101
  br label %watch_klause.exit

watch_klause.exit:                                ; preds = %bb.u, %bb.v
  %i.cx = phi ptr [ %.pre.i, %bb.v ], [ %i.cs, %bb.u ] ; 3 uses
  %i.cy = and i32 %i.cd, 2147483647               ; 2 uses
  %i.cz = icmp eq i32 %i.bo, 2
  %i.da = select i1 %i.cz, i32 -2147483648, i32 0
  %i.db = or disjoint i32 %i.da, %i.cy
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store ptr %i.dc, ptr %i.cr, align 8, !tbaa !101
  store i32 %i.cq, ptr %i.cx, align 4, !tbaa !104
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  store i32 %i.db, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !40
  %i.dd = load i32, ptr %i.cp, align 4, !tbaa !104
  %i.de = load ptr, ptr %i.bi, align 8, !tbaa !97
  %i.df = zext i32 %i.dd to i64
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.de, i64 %i.df ; 3 uses
  %i.dh = load i32, ptr %i.bn, align 4, !tbaa !114
  %i.di = load i32, ptr %i.bm, align 4, !tbaa !104
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 3 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !101 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !117
  %i.dn = icmp eq ptr %i.dk, %i.dm
  br i1 %i.dn, label %bb.w, label %watch_klause.exit102

bb.w:                                             ; preds = %watch_klause.exit
  %i.do = load ptr, ptr %0, align 8, !tbaa !23
  tail call void @kissat_stack_enlarge(ptr noundef %i.do, ptr noundef nonnull %i.dg, i64 noundef 8) #15
  %.pre.i101 = load ptr, ptr %i.dj, align 8, !tbaa !101
  br label %watch_klause.exit102

watch_klause.exit102:                             ; preds = %watch_klause.exit, %bb.w
  %i.dp = phi ptr [ %.pre.i101, %bb.w ], [ %i.dk, %watch_klause.exit ] ; 3 uses
  %i.dq = icmp eq i32 %i.dh, 2
  %i.dr = select i1 %i.dq, i32 -2147483648, i32 0
  %i.ds = or disjoint i32 %i.dr, %i.cy
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store ptr %i.dt, ptr %i.dj, align 8, !tbaa !101
  store i32 %i.di, ptr %i.dp, align 4, !tbaa !104
  %.sroa.4.0..sroa_idx.i100 = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  store i32 %i.ds, ptr %.sroa.4.0..sroa_idx.i100, align 4, !tbaa !40
  br label %bb.x

bb.x:                                             ; preds = %bb.t, %watch_klause.exit102, %bb.p, %bb.q
  %i.du = icmp eq ptr %.082108, %.083107
  br i1 %i.du, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dv = ptrtoint ptr %.0.i99 to i64
  %i.dw = ptrtoint ptr %.082108 to i64
  %i.dx = sub i64 %i.dv, %i.dw                    ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.083107, ptr nonnull align 4 %.082108, i64 %i.dx, i1 false)
  %i.dy = getelementptr inbounds nuw i8, ptr %.083107, i64 %i.dx
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %next_klause.exit
  %.2 = phi ptr [ %.083107, %next_klause.exit ], [ %.0.i99, %bb.x ], [ %i.dy, %bb.y ] ; 2 uses
  %.not89 = icmp eq ptr %.0.i99, %i.be
  br i1 %.not89, label %._crit_edge111, label %bb.m, !llvm.loop !214

bb.aa:                                            ; preds = %._crit_edge111
  store ptr %.083.lcssa, ptr %i.bj, align 8, !tbaa !105
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge111, %bb.aa
  %i.dz = load ptr, ptr %i.ad, align 8, !tbaa !106
  %i.ea = ptrtoint ptr %.083.lcssa to i64
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = ashr exact i64 %i.ec, 2
  store i64 %i.ed, ptr %i.bd, align 8, !tbaa !147
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !120
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.ef, ptr %i.eg, align 8, !tbaa !121
  store i32 0, ptr %i.a, align 8, !tbaa !32
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nofree nounwind uwtable
define signext i8 @kitten_value(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @invalid_api_usage(ptr noundef nonnull @__func__.kitten_value, ptr noundef nonnull @.str.1)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32
  switch i32 %i.b, label %bb.e [
    i32 10, label %bb.f
    i32 21, label %bb.d
    i32 20, label %status_to_string.exit
  ]

bb.d:                                             ; preds = %bb.c
  br label %status_to_string.exit

bb.e:                                             ; preds = %bb.c
  br label %status_to_string.exit

status_to_string.exit:                            ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi ptr [ @.str.10, %bb.e ], [ @.str.9, %bb.d ], [ @.str.8, %bb.c ]
  tail call void (ptr, ptr, ...) @invalid_api_usage(ptr noundef nonnull @__func__.kitten_value, ptr noundef nonnull @.str.2, ptr noundef nonnull %.0.i, ptr noundef nonnull @.str.7)
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.c = lshr i32 %1, 1
  %i.d = zext nneg i32 %i.c to i64                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i64, ptr %i.e, align 8, !tbaa !146
  %.not17 = icmp ugt i64 %i.f, %i.d
  br i1 %.not17, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !127
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.d
  %i.j = load i32, ptr %i.i, align 4, !tbaa !104  ; 2 uses
  %.not18 = icmp eq i32 %i.j, 0
  br i1 %.not18, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = shl i32 %i.j, 1
  %i.l = or i32 %1, -2
  %i.m = add i32 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !129
  %i.p = zext i32 %i.m to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !40
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.1 = phi i8 [ 0, %bb.f ], [ %i.r, %bb.h ], [ 0, %bb.g ]
  ret i8 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define signext i8 @kitten_fixed(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = lshr i32 %1, 1
  %i.b = zext nneg i32 %i.a to i64                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i64, ptr %i.c, align 8, !tbaa !146
  %.not = icmp ugt i64 %i.d, %i.b
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !127
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.b
  %i.h = load i32, ptr %i.g, align 4, !tbaa !104  ; 2 uses
  %.not19 = icmp eq i32 %i.h, 0
  br i1 %.not19, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = add i32 %i.h, -1                         ; 2 uses
  %i.j = shl i32 %i.i, 1
  %i.k = and i32 %1, 1
  %i.l = or disjoint i32 %i.j, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !129
  %i.o = zext i32 %i.l to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !40    ; 2 uses
  %.not20 = icmp eq i8 %i.q, 0
  br i1 %.not20, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !128
  %i.t = zext i32 %i.i to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !150
  %.not21 = icmp eq i32 %i.v, 0
  %. = select i1 %.not21, i8 %i.q, i8 0
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  %.3 = phi i8 [ 0, %bb.a ], [ 0, %bb.b ], [ %., %bb.d ], [ 0, %bb.c ]
  ret i8 %.3
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @kitten_flip_literal(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @invalid_api_usage(ptr noundef nonnull @__func__.kitten_flip_literal, ptr noundef nonnull @.str.1)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32
  switch i32 %i.b, label %bb.e [
    i32 10, label %bb.f
    i32 21, label %bb.d
    i32 20, label %status_to_string.exit
  ]

bb.d:                                             ; preds = %bb.c
  br label %status_to_string.exit

bb.e:                                             ; preds = %bb.c
  br label %status_to_string.exit

status_to_string.exit:                            ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi ptr [ @.str.10, %bb.e ], [ @.str.9, %bb.d ], [ @.str.8, %bb.c ]
  tail call void (ptr, ptr, ...) @invalid_api_usage(ptr noundef nonnull @__func__.kitten_flip_literal, ptr noundef nonnull @.str.2, ptr noundef nonnull %.0.i, ptr noundef nonnull @.str.7)
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.c = lshr i32 %1, 1
  %i.d = zext nneg i32 %i.c to i64                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i64, ptr %i.e, align 8, !tbaa !146
  %.not17 = icmp ugt i64 %i.f, %i.d
  br i1 %.not17, label %bb.g, label %flip_literal.exit

bb.g:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !127
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.d
  %i.j = load i32, ptr %i.i, align 4, !tbaa !104  ; 2 uses
  %.not18 = icmp eq i32 %i.j, 0
  br i1 %.not18, label %flip_literal.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = shl i32 %i.j, 1
  %i.l = or i32 %1, -2
  %i.m = add i32 %i.k, %i.l                       ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !129  ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !128
  %i.r = lshr i32 %i.m, 1
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !150
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %flip_literal.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = zext i32 %i.m to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !40
  %.lobit.i = lshr i8 %i.x, 7
  %i.y = zext nneg i8 %.lobit.i to i32
  %spec.select.i = xor i32 %i.m, %i.y             ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !97
  %i.ab = zext i32 %spec.select.i to i64          ; 2 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.ab ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !100 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !101 ; 5 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr i64 %i.ai, 7
  %i.ak = add nsw i64 %i.aj, 1                    ; 2 uses
  %.not93121.i = icmp eq ptr %i.ad, %i.af
  br i1 %.not93121.i, label %.critedge.thread.i, label %.lr.ph126.i

.lr.ph126.i:                                      ; preds = %bb.i
  %i.al = getelementptr i8, ptr %0, i64 320
  br label %bb.j

bb.j:                                             ; preds = %.critedge.i, %.lr.ph126.i
  %.078124.i = phi i64 [ %i.ak, %.lr.ph126.i ], [ %.179.i, %.critedge.i ] ; 2 uses
  %.081123.i = phi ptr [ %i.ad, %.lr.ph126.i ], [ %i.an, %.critedge.i ] ; 2 uses
  %.084122.i = phi ptr [ %i.ad, %.lr.ph126.i ], [ %.387.i, %.critedge.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.084122.i, i64 8 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.081123.i, i64 8 ; 5 uses
  %i.ao = load i64, ptr %.081123.i, align 4       ; 3 uses
  store i64 %i.ao, ptr %.084122.i, align 4
  %i.ap = and i64 %i.ao, 4294967295
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !40
  %i.as = icmp sgt i8 %i.ar, 0
  br i1 %i.as, label %.critedge.i, label %bb.k, !llvm.loop !215

bb.k:                                             ; preds = %bb.j
  %i.at = lshr i64 %i.ao, 32                      ; 2 uses
  %i.au = trunc nuw i64 %i.at to i32
  %i.av = and i32 %i.au, 2147483647
  %.val.i = load ptr, ptr %i.al, align 8, !tbaa !106
  %i.aw = and i64 %i.at, 2147483647
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.aw ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 12 ; 4 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !104
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 3 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !104
  %i.bc = xor i32 %i.az, %i.bb
  %i.bd = xor i32 %i.bc, %spec.select.i           ; 2 uses
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !40
  %i.bh = add i64 %.078124.i, 1                   ; 4 uses
  %i.bi = icmp sgt i8 %i.bg, 0
  br i1 %i.bi, label %.critedge.i, label %bb.l, !llvm.loop !215

bb.l:                                             ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ax, i64 4 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !114 ; 2 uses
  %i.bl = zext i32 %i.bk to i64
  %.idx.i = shl nuw nsw i64 %i.bl, 2
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.idx.i
  %.not94.not111.i = icmp eq i32 %i.bk, 2
  br i1 %.not94.not111.i, label %.critedge.thread.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ax, i64 20
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %.lr.ph.preheader.i
  %.072112.i = phi ptr [ %i.bt, %bb.m ], [ %i.bn, %.lr.ph.preheader.i ] ; 3 uses
  %i.bo = load i32, ptr %.072112.i, align 4, !tbaa !104 ; 3 uses
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !40
  %i.bs = icmp sgt i8 %i.br, 0
  br i1 %i.bs, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.072112.i, i64 4 ; 2 uses
  %.not94.not.i = icmp eq ptr %i.bt, %i.bm
  br i1 %.not94.not.i, label %.critedge.thread.i, label %.lr.ph.i, !llvm.loop !216

bb.n:                                             ; preds = %.lr.ph.i
  store i32 %i.bd, ptr %i.ay, align 4, !tbaa !104
  store i32 %i.bo, ptr %i.ba, align 4, !tbaa !104
  store i32 %spec.select.i, ptr %.072112.i, align 4, !tbaa !104
  %i.bu = load ptr, ptr %i.z, align 8, !tbaa !97
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %i.bu, i64 %i.bp ; 3 uses
  %i.bw = load i32, ptr %i.bj, align 4, !tbaa !114
  %i.bx = load i32, ptr %i.ay, align 4, !tbaa !104
  %i.by = load i32, ptr %i.ba, align 4, !tbaa !104
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 3 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !101 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !117
  %i.cd = icmp eq ptr %i.ca, %i.cc
  br i1 %i.cd, label %bb.o, label %watch_klause.exit.i

bb.o:                                             ; preds = %bb.n
  %i.ce = load ptr, ptr %0, align 8, !tbaa !23
  tail call void @kissat_stack_enlarge(ptr noundef %i.ce, ptr noundef nonnull %i.bv, i64 noundef 8) #15
  %.pre.i.i = load ptr, ptr %i.bz, align 8, !tbaa !101
  br label %watch_klause.exit.i

watch_klause.exit.i:                              ; preds = %bb.o, %bb.n
  %i.cf = phi ptr [ %.pre.i.i, %bb.o ], [ %i.ca, %bb.n ] ; 3 uses
  %i.cg = icmp eq i32 %i.bw, 2
  %i.ch = select i1 %i.cg, i32 -2147483648, i32 0
  %i.ci = or disjoint i32 %i.ch, %i.av
  %i.cj = xor i32 %i.bx, %i.by
  %i.ck = xor i32 %i.cj, %i.bo
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr %i.cl, ptr %i.bz, align 8, !tbaa !101
  store i32 %i.ck, ptr %i.cf, align 4, !tbaa !104
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  store i32 %i.ci, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !40
  br label %.critedge.i

.critedge.i:                                      ; preds = %watch_klause.exit.i, %bb.k, %bb.j
  %.387.i = phi ptr [ %i.am, %bb.j ], [ %i.am, %bb.k ], [ %.084122.i, %watch_klause.exit.i ] ; 2 uses
  %.179.i = phi i64 [ %.078124.i, %bb.j ], [ %i.bh, %bb.k ], [ %i.bh, %watch_klause.exit.i ] ; 2 uses
  %.not93.i = icmp eq ptr %i.an, %i.af
  br i1 %.not93.i, label %.critedge.thread.i, label %bb.j

.critedge.thread.i:                               ; preds = %.critedge.i, %bb.l, %bb.m, %bb.i
  %.not93104.i = phi i1 [ true, %bb.i ], [ false, %bb.m ], [ false, %bb.l ], [ true, %.critedge.i ]
  %.488.i = phi ptr [ %i.ad, %bb.i ], [ %i.am, %bb.m ], [ %i.am, %bb.l ], [ %.387.i, %.critedge.i ] ; 2 uses
  %.182.i = phi ptr [ %i.ad, %bb.i ], [ %i.an, %bb.m ], [ %i.an, %bb.l ], [ %i.an, %.critedge.i ] ; 2 uses
  %.280.i = phi i64 [ %i.ak, %bb.i ], [ %i.bh, %bb.m ], [ %i.bh, %bb.l ], [ %.179.i, %.critedge.i ]
  %.not95131.i = icmp eq ptr %.182.i, %i.af
  br i1 %.not95131.i, label %._crit_edge.i, label %.lr.ph134.i

.lr.ph134.i:                                      ; preds = %.critedge.thread.i, %.lr.ph134.i
  %.283133.i = phi ptr [ %i.cn, %.lr.ph134.i ], [ %.182.i, %.critedge.thread.i ] ; 2 uses
  %.5132.i = phi ptr [ %i.cm, %.lr.ph134.i ], [ %.488.i, %.critedge.thread.i ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.5132.i, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.283133.i, i64 8 ; 2 uses
  %i.co = load i64, ptr %.283133.i, align 4
  store i64 %i.co, ptr %.5132.i, align 4
  %.not95.i = icmp eq ptr %i.cn, %i.af
  br i1 %.not95.i, label %._crit_edge.i, label %.lr.ph134.i, !llvm.loop !217

._crit_edge.i:                                    ; preds = %.lr.ph134.i, %.critedge.thread.i
  %.5.lcssa.i = phi ptr [ %.488.i, %.critedge.thread.i ], [ %i.cm, %.lr.ph134.i ] ; 2 uses
  %i.cp = load ptr, ptr %i.ae, align 8, !tbaa !101
  %i.cq = icmp eq ptr %.5.lcssa.i, %i.cp
  br i1 %i.cq, label %bb.q, label %bb.p

bb.p:                                             ; preds = %._crit_edge.i
  store ptr %.5.lcssa.i, ptr %i.ae, align 8, !tbaa !101
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge.i
  %i.cr = load ptr, ptr %0, align 8, !tbaa !23
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 4112 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !107
  %i.cu = add i64 %i.ct, %.280.i
  store i64 %i.cu, ptr %i.cs, align 8, !tbaa !107
  br i1 %.not93104.i, label %bb.r, label %flip_literal.exit

bb.r:                                             ; preds = %bb.q
  %i.cv = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ab
  store i8 -1, ptr %i.cv, align 1, !tbaa !40
  %i.cw = xor i32 %spec.select.i, 1
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.cx
  store i8 1, ptr %i.cy, align 1, !tbaa !40
  br label %flip_literal.exit

flip_literal.exit:                                ; preds = %bb.r, %bb.q, %bb.h, %bb.g, %bb.f
  %.1 = phi i1 [ false, %bb.f ], [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.q ], [ true, %bb.r ]
  ret i1 %.1
}

; Function Attrs: nofree nounwind uwtable
define zeroext i1 @kitten_failed(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @invalid_api_usage(ptr noundef nonnull @__func__.kitten_failed, ptr noundef nonnull @.str.1)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !32
  switch i32 %i.b, label %bb.e [
    i32 20, label %bb.f
    i32 10, label %status_to_string.exit
    i32 21, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %status_to_string.exit

bb.e:                                             ; preds = %bb.c
  br label %status_to_string.exit

status_to_string.exit:                            ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi ptr [ @.str.10, %bb.e ], [ @.str.9, %bb.d ], [ @.str.7, %bb.c ]
  tail call void (ptr, ptr, ...) @invalid_api_usage(ptr noundef nonnull @__func__.kitten_failed, ptr noundef nonnull @.str.2, ptr noundef nonnull %.0.i, ptr noundef nonnull @.str.8)
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.c = lshr i32 %1, 1
  %i.d = zext nneg i32 %i.c to i64                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i64, ptr %i.e, align 8, !tbaa !146
  %.not17 = icmp ugt i64 %i.f, %i.d
  br i1 %.not17, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !127
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.d
  %i.j = load i32, ptr %i.i, align 4, !tbaa !104  ; 2 uses
  %.not18 = icmp eq i32 %i.j, 0
  br i1 %.not18, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = shl i32 %i.j, 1
  %i.l = or i32 %1, -2
  %i.m = add i32 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !130
  %i.p = zext i32 %i.m to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !143, !range !34, !noundef !35
  %i.s = trunc nuw i8 %i.r to i1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.1 = phi i1 [ false, %bb.f ], [ %i.s, %bb.h ], [ false, %bb.g ]
  ret i1 %.1
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #11

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #11

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @kissat_fatal(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @assign(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !129  ; 2 uses
  %i.c = xor i32 %1, 1
  %i.d = zext i32 %1 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d
  store i8 1, ptr %i.e, align 1, !tbaa !40
  %i.f = zext i32 %i.c to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.f
  store i8 -1, ptr %i.g, align 1, !tbaa !40
  %i.h = lshr i32 %1, 1
  %i.i = trunc i32 %1 to i8
  %i.j = and i8 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !37
  %i.m = zext nneg i32 %i.h to i64                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  store i8 %i.j, ptr %i.n, align 1, !tbaa !40
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !123  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !137
  %i.s = icmp eq ptr %i.p, %i.r
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.u = load ptr, ptr %0, align 8, !tbaa !23
  tail call void @kissat_stack_enlarge(ptr noundef %i.u, ptr noundef nonnull %i.t, i64 noundef 4) #15
  %.pre = load ptr, ptr %i.o, align 8, !tbaa !123
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.v = phi ptr [ %.pre, %bb.b ], [ %i.p, %bb.a ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store ptr %i.w, ptr %i.o, align 8, !tbaa !123
  store i32 %1, ptr %i.v, align 4, !tbaa !104
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !128
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.m ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !142 ; 2 uses
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !150
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr i8, ptr %0, i64 320
  %.val = load ptr, ptr %i.ac, align 8, !tbaa !106
  %i.ad = zext i32 %2 to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !114
  %i.ah = icmp ugt i32 %i.ag, 1
  br i1 %i.ah, label %bb.e, label %bb.o

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aj = load i8, ptr %i.ai, align 4, !tbaa !36, !range !34, !noundef !35
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 5 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !110 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !136
  %i.aq = icmp eq ptr %i.an, %i.ap
  br i1 %i.aq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ar = load ptr, ptr %0, align 8, !tbaa !23
  tail call void @kissat_stack_enlarge(ptr noundef %i.ar, ptr noundef nonnull %i.al, i64 noundef 4) #15
  %.pre69 = load ptr, ptr %i.am, align 8, !tbaa !110
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.as = phi ptr [ %.pre69, %bb.g ], [ %i.an, %bb.f ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4 ; 2 uses
  store ptr %i.at, ptr %i.am, align 8, !tbaa !110
  store i32 %2, ptr %i.as, align 4, !tbaa !104
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 12 ; 2 uses
  %i.av = load i32, ptr %i.af, align 4, !tbaa !114 ; 2 uses
  %i.aw = zext i32 %i.av to i64
  %.idx = shl nuw nsw i64 %i.aw, 2
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx
  %.not6567 = icmp eq i32 %i.av, 0
  br i1 %.not6567, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %bb.l
  %i.ay = phi ptr [ %i.bl, %bb.l ], [ %i.at, %bb.h ] ; 3 uses
  %.068 = phi ptr [ %i.bm, %bb.l ], [ %i.au, %bb.h ] ; 2 uses
  %i.az = load i32, ptr %.068, align 4, !tbaa !104 ; 2 uses
  %.not66 = icmp eq i32 %i.az, %1
  br i1 %.not66, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.ba = lshr i32 %i.az, 1
  %i.bb = load ptr, ptr %i.x, align 8, !tbaa !128
  %i.bc = zext nneg i32 %i.ba to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !151
  %i.bg = load ptr, ptr %i.ao, align 8, !tbaa !136
  %i.bh = icmp eq ptr %i.ay, %i.bg
  br i1 %i.bh, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bi = load ptr, ptr %0, align 8, !tbaa !23
  tail call void @kissat_stack_enlarge(ptr noundef %i.bi, ptr noundef nonnull %i.al, i64 noundef 4) #15
  %.pre70 = load ptr, ptr %i.am, align 8, !tbaa !110
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bj = phi ptr [ %.pre70, %bb.j ], [ %i.ay, %bb.i ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4 ; 2 uses
  store ptr %i.bk, ptr %i.am, align 8, !tbaa !110
  store i32 %i.bf, ptr %i.bj, align 4, !tbaa !104
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.k
  %i.bl = phi ptr [ %i.ay, %.lr.ph ], [ %i.bk, %bb.k ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.068, i64 4 ; 2 uses
  %.not65 = icmp eq ptr %i.bm, %i.ax
  br i1 %.not65, label %.critedge, label %.lr.ph, !llvm.loop !218

.critedge:                                        ; preds = %bb.l, %bb.h, %bb.e
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 4 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !108 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !135
  %i.bs = icmp eq ptr %i.bp, %i.br
  br i1 %i.bs, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.critedge
  %i.bt = load ptr, ptr %0, align 8, !tbaa !23
  tail call void @kissat_stack_enlarge(ptr noundef %i.bt, ptr noundef nonnull %i.bn, i64 noundef 4) #15
  %.pre71 = load ptr, ptr %i.bo, align 8, !tbaa !108
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.critedge
  %i.bu = phi ptr [ %.pre71, %bb.m ], [ %i.bp, %.critedge ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  store ptr %i.bv, ptr %i.bo, align 8, !tbaa !108
  store i32 %1, ptr %i.bu, align 4, !tbaa !104
  %i.bw = tail call i32 @new_learned_klause(ptr noundef nonnull %0)
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !111
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !110
  %i.ca = load ptr, ptr %i.bn, align 8, !tbaa !109
  store ptr %i.ca, ptr %i.bo, align 8, !tbaa !108
  br label %bb.o

bb.o:                                             ; preds = %bb.d, %bb.n, %bb.c
  %.1 = phi i32 [ %2, %bb.c ], [ %i.bw, %bb.n ], [ %2, %bb.d ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 %.1, ptr %i.cb, align 4, !tbaa !151
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !140
  %i.ce = add i32 %i.cd, -1
  store i32 %i.ce, ptr %i.cc, align 8, !tbaa !140
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn }
attributes #12 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { cold nounwind }
attributes #17 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !41}
!1 = distinct !{!1, !41}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTS6kissat", !10, i64 0}
!12 = !{!"_Bool", !6, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!"", !7, i64 0, !7, i64 4, !13, i64 8, !7, i64 16}
!15 = !{!"p1 _ZTS3kar", !10, i64 0}
!16 = !{!"p1 _ZTS4kink", !10, i64 0}
!17 = !{!"p1 omnipotent char", !10, i64 0}
!18 = !{!"p1 _Bool", !10, i64 0}
!19 = !{!"p1 int", !10, i64 0}
!20 = !{!"", !19, i64 0, !19, i64 8, !19, i64 16}
!21 = !{!"kimits", !13, i64 0}
!22 = !{!"kitten", !11, i64 0, !7, i64 8, !12, i64 12, !12, i64 13, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !14, i64 72, !13, i64 96, !13, i64 104, !15, i64 112, !16, i64 120, !17, i64 128, !17, i64 136, !18, i64 144, !17, i64 152, !19, i64 160, !10, i64 168, !20, i64 176, !20, i64 200, !20, i64 224, !20, i64 248, !20, i64 272, !20, i64 296, !20, i64 320, !20, i64 344, !20, i64 368, !20, i64 392, !21, i64 416, !13, i64 424}
!23 = !{!22, !11, i64 0}
!24 = !{!22, !7, i64 72}
!25 = !{!22, !7, i64 76}
!26 = !{!22, !7, i64 28}
!27 = !{!22, !7, i64 32}
!28 = !{!22, !7, i64 88}
!29 = !{!22, !13, i64 416}
!30 = !{!22, !13, i64 424}
!31 = !{!22, !13, i64 40}
!32 = !{!22, !7, i64 8}
!33 = !{!22, !12, i64 13}
!34 = !{i8 0, i8 2}
!35 = !{}
!36 = !{!22, !12, i64 12}
!37 = !{!22, !17, i64 152}
!38 = !{!22, !13, i64 96}
!39 = !{!13, !13, i64 0}
!40 = !{!6, !6, i64 0}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!"llvm.loop.isvectorized", i32 1}
!43 = !{!"llvm.loop.unroll.runtime.disable"}
!44 = !{!"llvm.loop.unroll.disable"}
!45 = !{!"termination", !12, i64 0, !10, i64 8, !10, i64 16}
!46 = !{!"p1 _ZTS6import", !10, i64 0}
!47 = !{!"", !46, i64 0, !46, i64 8, !46, i64 16}
!48 = !{!"p1 _ZTS9extension", !10, i64 0}
!49 = !{!"", !48, i64 0, !48, i64 8, !48, i64 16}
!50 = !{!"p1 _ZTS8assigned", !10, i64 0}
!51 = !{!"p1 _ZTS5flags", !10, i64 0}
!52 = !{!"phases", !17, i64 0, !17, i64 8, !17, i64 16}
!53 = !{!"", !17, i64 0, !17, i64 8, !17, i64 16}
!54 = !{!"p1 _ZTS5links", !10, i64 0}
!55 = !{!"", !7, i64 0, !7, i64 4}
!56 = !{!"queue", !7, i64 0, !7, i64 4, !7, i64 8, !55, i64 12}
!57 = !{!"p1 double", !10, i64 0}
!58 = !{!"heap", !12, i64 0, !7, i64 4, !7, i64 8, !20, i64 16, !57, i64 40, !19, i64 48}
!59 = !{!"double", !6, i64 0}
!60 = !{!"p1 _ZTS5frame", !10, i64 0}
!61 = !{!"", !60, i64 0, !60, i64 8, !60, i64 16}
!62 = !{!"", !19, i64 0, !19, i64 8}
!63 = !{!"p1 _ZTS8datarank", !10, i64 0}
!64 = !{!"", !63, i64 0, !63, i64 8, !63, i64 16}
!65 = !{!"clause", !7, i64 0, !12, i64 2, !12, i64 2, !12, i64 2, !12, i64 2, !12, i64 2, !12, i64 3, !12, i64 3, !12, i64 3, !7, i64 3, !7, i64 4, !7, i64 8, !6, i64 12}
!66 = !{!"p1 long", !10, i64 0}
!67 = !{!"", !66, i64 0, !66, i64 8, !66, i64 16}
!68 = !{!"vectors", !20, i64 0, !13, i64 24}
!69 = !{!"p1 _ZTS6vector", !10, i64 0}
!70 = !{!"reluctant", !12, i64 0, !12, i64 1, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40}
!71 = !{!"", !13, i64 0, !7, i64 8}
!72 = !{!"bounds", !71, i64 0}
!73 = !{!"classification", !12, i64 0, !12, i64 1}
!74 = !{!"delay", !7, i64 0, !7, i64 4}
!75 = !{!"delays", !74, i64 0, !74, i64 8, !74, i64 16, !74, i64 24}
!76 = !{!"enabled", !12, i64 0, !12, i64 1, !12, i64 2, !12, i64 3}
!77 = !{!"limited", !12, i64 0, !12, i64 1}
!78 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16}
!79 = !{!"", !13, i64 0, !13, i64 8}
!80 = !{!"", !79, i64 0, !13, i64 16}
!81 = !{!"", !13, i64 0}
!82 = !{!"limits", !13, i64 0, !13, i64 8, !13, i64 16, !78, i64 24, !80, i64 48, !81, i64 72, !81, i64 80, !81, i64 88, !81, i64 96, !81, i64 104, !81, i64 112, !81, i64 120, !79, i64 128}
!83 = !{!"remember", !79, i64 0, !81, i64 16}
!84 = !{!"mode", !13, i64 0}
!85 = !{!"kormat", !7, i64 0, !6, i64 4}
!86 = !{!"p1 _ZTS6kitten", !10, i64 0}
!87 = !{!"statistics", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !13, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !13, i64 376, !13, i64 384, !13, i64 392, !13, i64 400, !13, i64 408, !13, i64 416, !13, i64 424, !13, i64 432, !13, i64 440, !13, i64 448, !13, i64 456, !13, i64 464, !13, i64 472, !13, i64 480, !13, i64 488, !13, i64 496, !13, i64 504, !13, i64 512, !13, i64 520, !13, i64 528, !13, i64 536, !13, i64 544, !13, i64 552, !13, i64 560, !13, i64 568, !13, i64 576, !13, i64 584, !13, i64 592, !13, i64 600, !13, i64 608, !13, i64 616, !13, i64 624, !13, i64 632, !6, i64 640}
!88 = !{!"kissat", !12, i64 0, !12, i64 1, !12, i64 2, !12, i64 3, !12, i64 4, !12, i64 5, !12, i64 6, !12, i64 7, !12, i64 8, !45, i64 16, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !20, i64 56, !20, i64 80, !47, i64 104, !49, i64 128, !20, i64 152, !50, i64 176, !51, i64 184, !17, i64 192, !17, i64 200, !52, i64 208, !53, i64 232, !20, i64 256, !54, i64 280, !56, i64 288, !58, i64 312, !59, i64 368, !58, i64 376, !59, i64 432, !7, i64 440, !61, i64 448, !62, i64 472, !19, i64 488, !7, i64 496, !7, i64 500, !7, i64 504, !7, i64 508, !20, i64 512, !7, i64 536, !7, i64 540, !64, i64 544, !20, i64 568, !20, i64 592, !20, i64 616, !20, i64 640, !20, i64 664, !20, i64 688, !20, i64 712, !65, i64 736, !12, i64 760, !12, i64 761, !12, i64 762, !20, i64 768, !20, i64 792, !67, i64 816, !68, i64 840, !7, i64 872, !7, i64 876, !69, i64 880, !6, i64 888, !67, i64 904, !13, i64 928, !6, i64 936, !6, i64 1208, !6, i64 1216, !70, i64 1224, !72, i64 1272, !73, i64 1288, !75, i64 1292, !76, i64 1324, !77, i64 1328, !82, i64 1336, !83, i64 1480, !7, i64 1504, !84, i64 1512, !13, i64 1520, !85, i64 1528, !17, i64 3584, !6, i64 3592, !6, i64 3640, !6, i64 3688, !20, i64 3736, !12, i64 3760, !86, i64 3768, !12, i64 3776, !12, i64 3777, !20, i64 3784, !87, i64 3808}
!89 = !{!88, !13, i64 4112}
!90 = !{!22, !13, i64 48}
!91 = !{!22, !16, i64 120}
!92 = !{!22, !13, i64 80}
!93 = !{!"kink", !7, i64 0, !7, i64 4, !13, i64 8}
!94 = !{!93, !7, i64 4}
!95 = !{!93, !7, i64 0}
!96 = !{!93, !13, i64 8}
!97 = !{!22, !10, i64 168}
!98 = !{!"p1 _ZTS5katch", !10, i64 0}
!99 = !{!"", !98, i64 0, !98, i64 8, !98, i64 16}
!100 = !{!99, !98, i64 0}
!101 = !{!99, !98, i64 8}
!102 = !{!20, !19, i64 0}
!103 = !{!20, !19, i64 8}
!104 = !{!7, !7, i64 0}
!105 = !{!22, !19, i64 328}
!106 = !{!22, !19, i64 320}
!107 = !{!87, !13, i64 304}
!108 = !{!22, !19, i64 304}
!109 = !{!22, !19, i64 296}
!110 = !{!22, !19, i64 352}
!111 = !{!22, !19, i64 344}
!112 = !{!20, !19, i64 16}
!113 = !{!"klause", !7, i64 0, !7, i64 4, !7, i64 8, !6, i64 12}
!114 = !{!113, !7, i64 4}
!115 = !{!22, !19, i64 400}
!116 = !{!22, !19, i64 408}
!117 = !{!99, !98, i64 16}
!118 = !{!22, !19, i64 200}
!119 = !{!22, !19, i64 208}
!120 = !{!22, !19, i64 224}
!121 = !{!22, !19, i64 232}
!122 = !{!22, !19, i64 368}
!123 = !{!22, !19, i64 376}
!124 = !{!22, !19, i64 392}
!125 = !{!22, !19, i64 272}
!126 = !{!22, !19, i64 280}
!127 = !{!22, !19, i64 160}
!128 = !{!22, !15, i64 112}
!129 = !{!22, !17, i64 136}
!130 = !{!22, !18, i64 144}
!131 = !{!22, !19, i64 176}
!132 = !{!22, !19, i64 192}
!133 = !{!22, !19, i64 216}
!134 = !{!22, !19, i64 288}
!135 = !{!22, !19, i64 312}
!136 = !{!22, !19, i64 360}
!137 = !{!22, !19, i64 384}
!138 = !{!22, !17, i64 128}
!139 = !{!22, !13, i64 104}
!140 = !{!22, !7, i64 24}
!141 = !{!22, !7, i64 20}
!142 = !{!22, !7, i64 16}
!143 = !{!12, !12, i64 0}
!144 = !{!113, !7, i64 8}
!145 = !{!113, !7, i64 0}
!146 = !{!22, !13, i64 56}
!147 = !{!22, !13, i64 64}
!148 = !{!22, !19, i64 184}
!149 = !{!"kar", !7, i64 0, !7, i64 4}
!150 = !{!149, !7, i64 0}
!151 = !{!149, !7, i64 4}
!152 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!153 = !{!152, !152, i64 0}
!154 = distinct !{!154, !41, !42, !43}
!155 = distinct !{!155, !41, !42, !43}
!156 = distinct !{!156, !44}
!157 = distinct !{!157, !41}
!158 = distinct !{!158, !41, !42}
!159 = !{!"branch_weights", i32 8, i32 8}
!160 = distinct !{!160, !41, !42, !43}
!161 = distinct !{!161, !44}
!162 = distinct !{!162, !41, !43, !42}
!163 = distinct !{!163, !41, !42}
!164 = distinct !{!164, !41}
!165 = distinct !{!165, !41}
!166 = distinct !{!166, !41}
!167 = distinct !{!167, !41}
!168 = distinct !{!168, !41}
!169 = distinct !{!169, !41}
!170 = distinct !{!170, !44}
!171 = distinct !{!171, !41}
!172 = distinct !{!172, !41}
!173 = distinct !{!173, !41}
!174 = !{!22, !19, i64 240}
!175 = !{!22, !19, i64 248}
!176 = !{!22, !19, i64 264}
!177 = !{!22, !19, i64 336}
!178 = distinct !{!178, !41}
!179 = distinct !{!179, !41}
!180 = distinct !{!180, !41}
!181 = distinct !{!181, !41}
!182 = distinct !{!182, !41}
!183 = distinct !{!183, !41}
!184 = distinct !{!184, !41}
!185 = distinct !{!185, !41}
!186 = distinct !{!186, !41}
!187 = distinct !{!187, !41}
!188 = distinct !{!188, !41}
!189 = distinct !{!189, !41}
!190 = distinct !{!190, !41}
!191 = distinct !{!191, !41}
!192 = distinct !{!192, !41}
!193 = distinct !{null, null}
!194 = !{!87, !13, i64 296}
!195 = !{!88, !12, i64 16}
!196 = !{!88, !10, i64 32}
!197 = !{!88, !10, i64 24}
!198 = distinct !{!198, !41}
!199 = distinct !{!199, !41}
!200 = distinct !{!200, !41}
!201 = distinct !{!201, !41}
!202 = !{!"katch", !7, i64 0, !7, i64 4, !12, i64 7}
!203 = !{!202, !7, i64 0}
!204 = !{!87, !13, i64 288}
!205 = distinct !{!205, !41}
!206 = distinct !{!206, !41}
!207 = distinct !{!207, !41}
!208 = distinct !{!208, !41}
!209 = distinct !{!209, !41}
!210 = distinct !{!210, !41}
!211 = distinct !{!211, !41}
!212 = distinct !{!212, !44}
!213 = distinct !{!213, !41}
!214 = distinct !{!214, !41}
!215 = distinct !{!215, !41}
!216 = distinct !{!216, !41}
!217 = distinct !{!217, !41}
!218 = distinct !{!218, !41}
end_hunk_0
