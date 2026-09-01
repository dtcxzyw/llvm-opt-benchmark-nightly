Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/Version?download=true
inline.NumInlined: 2733
inline.NumDeleted: 66
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumUnrolled: 59
begin_hunk_0_@l___private_Lake_Util_Version_0__Lake_VerRange_parseM_parseWild:bb.a

bb.ob:                                            ; preds = %bb.oa
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.k) #8
  br label %lean_dec.exit587

lean_dec.exit587:                                 ; preds = %bb.ob, %bb.oa, %bb.nz
  %i.xb = load i32, ptr %1, align 4, !tbaa !13    ; 3 uses
  %i.xc = icmp sgt i32 %i.xb, 1
  br i1 %i.xc, label %bb.oc, label %bb.od, !prof !15

bb.oc:                                            ; preds = %lean_dec.exit587
  %i.xd = add nsw i32 %i.xb, -1
  store i32 %i.xd, ptr %1, align 4, !tbaa !13
  br label %lean_dec_ref.exit730

bb.od:                                            ; preds = %lean_dec.exit587
  %.not.i729 = icmp eq i32 %i.xb, 0
  br i1 %.not.i729, label %lean_dec_ref.exit730, label %bb.oe

bb.oe:                                            ; preds = %bb.od
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #8
  br label %lean_dec_ref.exit730

lean_dec_ref.exit730:                             ; preds = %bb.oc, %bb.od, %bb.oe
  %i.xe = load i32, ptr %0, align 4, !tbaa !13    ; 3 uses
  %i.xf = icmp sgt i32 %i.xe, 1
  br i1 %i.xf, label %bb.of, label %bb.og, !prof !15

bb.of:                                            ; preds = %lean_dec_ref.exit730
  %i.xg = add nsw i32 %i.xe, -1
  store i32 %i.xg, ptr %0, align 4, !tbaa !13
  br label %lean_dec_ref.exit728

bb.og:                                            ; preds = %lean_dec_ref.exit730
  %.not.i727 = icmp eq i32 %i.xe, 0
  br i1 %.not.i727, label %lean_dec_ref.exit728, label %bb.oh

bb.oh:                                            ; preds = %bb.og
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec_ref.exit728

lean_dec_ref.exit728:                             ; preds = %bb.of, %bb.og, %bb.oh
  %i.xh = getelementptr inbounds nuw i8, ptr %i.ut, i64 8
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !16 ; 5 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.ut, i64 16
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !16 ; 5 uses
  %.val772 = load i32, ptr %i.ut, align 8, !tbaa !13
  %i.xl = icmp eq i32 %.val772, 1
  br i1 %i.xl, label %lean_dec_ref.exit756.thread, label %bb.oi

bb.oi:                                            ; preds = %lean_dec_ref.exit728
  %i.xm = ptrtoint ptr %i.xk to i64
  %i.xn = and i64 %i.xm, 1
  %.not.i549 = icmp eq i64 %i.xn, 0
  br i1 %.not.i549, label %bb.oj, label %lean_inc.exit550

bb.oj:                                            ; preds = %bb.oi
  %.val.i.i956 = load i32, ptr %i.xk, align 4, !tbaa !13 ; 3 uses
  %i.xo = icmp sgt i32 %.val.i.i956, 0
  br i1 %i.xo, label %bb.ok, label %bb.ol, !prof !15

bb.ok:                                            ; preds = %bb.oj
  %i.xp = add nuw i32 %.val.i.i956, 1
  store i32 %i.xp, ptr %i.xk, align 4, !tbaa !13
  br label %lean_inc.exit550

bb.ol:                                            ; preds = %bb.oj
  %.not.i.i957 = icmp eq i32 %.val.i.i956, 0
  br i1 %.not.i.i957, label %lean_inc.exit550, label %bb.om

bb.om:                                            ; preds = %bb.ol
  %i.xq = atomicrmw sub ptr %i.xk, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit550

lean_inc.exit550:                                 ; preds = %bb.om, %bb.ol, %bb.ok, %bb.oi
  %i.xr = ptrtoint ptr %i.xi to i64
  %i.xs = and i64 %i.xr, 1
  %.not.i548 = icmp eq i64 %i.xs, 0
  br i1 %.not.i548, label %bb.on, label %lean_inc.exit

bb.on:                                            ; preds = %lean_inc.exit550
  %.val.i.i959 = load i32, ptr %i.xi, align 4, !tbaa !13 ; 3 uses
  %i.xt = icmp sgt i32 %.val.i.i959, 0
  br i1 %i.xt, label %bb.oo, label %bb.op, !prof !15

bb.oo:                                            ; preds = %bb.on
  %i.xu = add nuw i32 %.val.i.i959, 1
  store i32 %i.xu, ptr %i.xi, align 4, !tbaa !13
  br label %lean_inc.exit

bb.op:                                            ; preds = %bb.on
  %.not.i.i960 = icmp eq i32 %.val.i.i959, 0
  br i1 %.not.i.i960, label %lean_inc.exit, label %bb.oq

bb.oq:                                            ; preds = %bb.op
  %i.xv = atomicrmw sub ptr %i.xi, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.oq, %bb.op, %bb.oo, %lean_inc.exit550
  br i1 %.not.i930, label %bb.or, label %bb.ov

bb.or:                                            ; preds = %lean_inc.exit
  %i.xw = load i32, ptr %i.ut, align 8, !tbaa !13 ; 3 uses
  %i.xx = icmp sgt i32 %i.xw, 1
  br i1 %i.xx, label %bb.os, label %bb.ot, !prof !15

bb.os:                                            ; preds = %bb.or
  %i.xy = add nsw i32 %i.xw, -1
  store i32 %i.xy, ptr %i.ut, align 8, !tbaa !13
  br label %bb.ov

bb.ot:                                            ; preds = %bb.or
  %.not.i725 = icmp eq i32 %i.xw, 0
  br i1 %.not.i725, label %bb.ov, label %bb.ou

bb.ou:                                            ; preds = %bb.ot
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ut) #8
  br label %bb.ov

bb.ov:                                            ; preds = %lean_inc.exit, %bb.os, %bb.ot, %bb.ou
  tail call void @lean_inc_heartbeat() #8
  %i.xz = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #8 ; 6 uses
  %i.ya = icmp eq ptr %i.xz, null
  br i1 %i.ya, label %bb.ow, label %lean_alloc_ctor.exit962

bb.ow:                                            ; preds = %bb.ov
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit962:                          ; preds = %bb.ov
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xz, i64 4
  store i32 1, ptr %i.xz, align 4, !tbaa !13
  store i32 16908312, ptr %i.yb, align 4
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xz, i64 8
  store ptr %i.xi, ptr %i.yc, align 8, !tbaa !16
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xz, i64 16
  store ptr %i.xk, ptr %i.yd, align 8, !tbaa !16
  br label %lean_dec_ref.exit756.thread

lean_dec.exit:                                    ; preds = %lean_nat_lt.exit771, %lean_alloc_ctor.exit953
  %.1520 = phi ptr [ %i.ws, %lean_alloc_ctor.exit953 ], [ inttoptr (i64 1 to ptr), %lean_nat_lt.exit771 ] ; 5 uses
  %i.ye = tail call ptr @l___private_Lake_Util_Version_0__Lake_parseVerComponent___redArg(ptr noundef nonnull @l_Lake_instReprSemVerCore_repr___redArg___closed__10_value, ptr noundef nonnull %.1520, ptr noundef %i.vo) ; 16 uses
  %i.yf = ptrtoint ptr %.1520 to i64
  %i.yg = and i64 %i.yf, 1
  %.not.i596 = icmp eq i64 %i.yg, 0
  br i1 %.not.i596, label %bb.ke, label %lean_dec.exit597

lean_dec_ref.exit756.thread:                      ; preds = %lean_alloc_ctor.exit962, %lean_dec_ref.exit728, %lean_alloc_ctor.exit929, %lean_dec_ref.exit732, %bb.iu, %lean_dec_ref.exit736, %lean_alloc_ctor.exit896, %bb.iv, %bb.fr, %bb.du, %bb.cn, %bb.bh, %bb.co, %bb.bi, %lean_alloc_ctor.exit851, %bb.dv, %lean_alloc_ctor.exit791, %lean_alloc_ctor.exit790, %lean_alloc_ctor.exit
  %.15 = phi ptr [ %i.ai, %lean_alloc_ctor.exit790 ], [ %i.an, %lean_alloc_ctor.exit791 ], [ %i.ab, %lean_alloc_ctor.exit ], [ %i.ul, %lean_alloc_ctor.exit929 ], [ %i.xz, %lean_alloc_ctor.exit962 ], [ %.0482, %bb.iu ], [ %i.uq, %lean_dec_ref.exit736 ], [ %i.qz, %lean_alloc_ctor.exit896 ], [ %i.pn, %bb.iv ], [ %.0478, %bb.fr ], [ %.0478, %bb.du ], [ %.0478, %bb.cn ], [ %.0478, %bb.bh ], [ %i.gq, %bb.co ], [ %i.dz, %bb.bi ], [ %i.kv, %lean_alloc_ctor.exit851 ], [ %i.ik, %bb.dv ], [ %i.ut, %lean_dec_ref.exit728 ], [ %i.ye, %lean_dec_ref.exit732 ]
  ret ptr %.15
}

declare ptr @l_String_Slice_Pos_get_x3f(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @l___private_Lake_Util_Version_0__Lake_VerRange_parseM_go(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  br label %lean_dec.exit468

lean_dec.exit468:                                 ; preds = %lean_dec.exit468.backedge, %bb.a
  %.0372 = phi ptr [ %4, %bb.a ], [ %.0372.be, %lean_dec.exit468.backedge ] ; 23 uses
  %.0355 = phi ptr [ %3, %bb.a ], [ %.0355.be, %lean_dec.exit468.backedge ] ; 43 uses
  %.0347 = phi ptr [ %2, %bb.a ], [ %.0347.be, %lean_dec.exit468.backedge ] ; 59 uses
  %.0330 = phi i8 [ %1, %bb.a ], [ %.0330.be, %lean_dec.exit468.backedge ] ; 6 uses
  %.val = load i64, ptr %i.a, align 8, !tbaa !9
  %i.c = shl i64 %.val, 1
  %i.d = add i64 %i.c, -1
  %i.e = inttoptr i64 %i.d to ptr                 ; 8 uses
  %i.f = ptrtoint ptr %.0372 to i64               ; 7 uses
  %i.g = and i64 %i.f, 1
  %.not.i564 = icmp eq i64 %i.g, 0                ; 6 uses
  br i1 %.not.i564, label %lean_nat_eq.exit, label %.split, !prof !11

.split:                                           ; preds = %lean_dec.exit468
  %i.h = icmp eq ptr %.0372, %i.e
  br i1 %i.h, label %bb.ig, label %bb.b

lean_nat_eq.exit:                                 ; preds = %lean_dec.exit468
  %i.i = tail call zeroext i1 @lean_nat_big_eq(ptr noundef %.0372, ptr noundef nonnull %i.e) #8
  br i1 %i.i, label %bb.ig, label %bb.b

bb.b:                                             ; preds = %.split, %lean_nat_eq.exit
  %i.j = lshr i64 %i.f, 1                         ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.j ; 6 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !12    ; 3 uses
  %i.m = icmp sgt i8 %i.l, -1
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = zext nneg i8 %i.l to i32
  br label %lean_string_utf8_get_fast.exit

bb.d:                                             ; preds = %bb.b
  %.val.i = load i64, ptr %i.a, align 8, !tbaa !9
  %i.o = tail call i32 @lean_string_utf8_get_fast_cold(ptr noundef nonnull %i.b, i64 noundef %i.j, i64 noundef %.val.i, i8 noundef zeroext %i.l) #8
  br label %lean_string_utf8_get_fast.exit

lean_string_utf8_get_fast.exit:                   ; preds = %bb.c, %bb.d
  %.0.i589 = phi i32 [ %i.n, %bb.c ], [ %i.o, %bb.d ] ; 4 uses
  %i.p = and i32 %.0.i589, -33
  %i.q = add i32 %i.p, -91
  %or.cond1069 = icmp ult i32 %i.q, -26
  br i1 %or.cond1069, label %.critedge435, label %.critedge

bb.e:                                             ; preds = %bb.db
  %.val.i.i = load i32, ptr %0, align 8, !tbaa !13 ; 3 uses
  %i.r = icmp sgt i32 %.val.i.i, 0
  br i1 %i.r, label %bb.f, label %bb.g, !prof !15

bb.f:                                             ; preds = %bb.e
  %i.s = add nuw i32 %.val.i.i, 1
  store i32 %i.s, ptr %0, align 8, !tbaa !13
  br label %lean_inc_ref.exit

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc_ref.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit

lean_inc_ref.exit:                                ; preds = %bb.f, %bb.g, %bb.h
  %i.u = tail call ptr @l___private_Lake_Util_Version_0__Lake_VerComparator_parseM(ptr noundef nonnull %0, ptr noundef %.0372) ; 12 uses
  %i.v = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.w = and i64 %i.v, 1
  %.not.i590 = icmp eq i64 %i.w, 0                ; 2 uses
  br i1 %.not.i590, label %bb.j, label %bb.i

bb.i:                                             ; preds = %lean_inc_ref.exit
  %i.x = lshr i64 %i.v, 1
  %i.y = trunc i64 %i.x to i32
  br label %lean_obj_tag.exit

bb.j:                                             ; preds = %lean_inc_ref.exit
  %i.z = getelementptr i8, ptr %i.u, i64 4
  %.val.i592 = load i32, ptr %i.z, align 4
  %i.aa = lshr i32 %.val.i592, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.i, %bb.j
  %.0.i591 = phi i32 [ %i.y, %bb.i ], [ %i.aa, %bb.j ]
  %i.ab = icmp eq i32 %.0.i591, 0
  br i1 %i.ab, label %bb.k, label %bb.t

bb.k:                                             ; preds = %lean_obj_tag.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !16 ; 5 uses
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = and i64 %i.ae, 1
  %.not.i464 = icmp eq i64 %i.af, 0
  br i1 %.not.i464, label %bb.l, label %lean_inc.exit465

bb.l:                                             ; preds = %bb.k
  %.val.i.i593 = load i32, ptr %i.ad, align 4, !tbaa !13 ; 3 uses
  %i.ag = icmp sgt i32 %.val.i.i593, 0
  br i1 %i.ag, label %bb.m, label %bb.n, !prof !15

bb.m:                                             ; preds = %bb.l
  %i.ah = add nuw i32 %.val.i.i593, 1
  store i32 %i.ah, ptr %i.ad, align 4, !tbaa !13
  br label %lean_inc.exit465

bb.n:                                             ; preds = %bb.l
  %.not.i.i594 = icmp eq i32 %.val.i.i593, 0
  br i1 %.not.i.i594, label %lean_inc.exit465, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = atomicrmw sub ptr %i.ad, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit465

lean_inc.exit465:                                 ; preds = %bb.o, %bb.n, %bb.m, %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !16 ; 5 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = and i64 %i.al, 1
  %.not.i462 = icmp eq i64 %i.am, 0
  br i1 %.not.i462, label %bb.p, label %lean_inc.exit463

bb.p:                                             ; preds = %lean_inc.exit465
  %.val.i.i596 = load i32, ptr %i.ak, align 4, !tbaa !13 ; 3 uses
  %i.an = icmp sgt i32 %.val.i.i596, 0
  br i1 %i.an, label %bb.q, label %bb.r, !prof !15

bb.q:                                             ; preds = %bb.p
  %i.ao = add nuw i32 %.val.i.i596, 1
  store i32 %i.ao, ptr %i.ak, align 4, !tbaa !13
  br label %lean_inc.exit463

bb.r:                                             ; preds = %bb.p
  %.not.i.i597 = icmp eq i32 %.val.i.i596, 0
  br i1 %.not.i.i597, label %lean_inc.exit463, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ap = atomicrmw sub ptr %i.ak, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit463

lean_inc.exit463:                                 ; preds = %bb.s, %bb.r, %bb.q, %lean_inc.exit465
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.u, i32 noundef 2)
  %i.aq = tail call ptr @lean_array_push(ptr noundef %.0355, ptr noundef %i.ad) #8
  br label %lean_dec.exit468.backedge

bb.t:                                             ; preds = %lean_obj_tag.exit
  %i.ar = load i32, ptr %.0355, align 4, !tbaa !13 ; 3 uses
  %i.as = icmp sgt i32 %i.ar, 1
  br i1 %i.as, label %bb.u, label %bb.v, !prof !15

bb.u:                                             ; preds = %bb.t
  %i.at = add nsw i32 %i.ar, -1
  store i32 %i.at, ptr %.0355, align 4, !tbaa !13
  br label %lean_dec_ref.exit563

bb.v:                                             ; preds = %bb.t
  %.not.i562 = icmp eq i32 %i.ar, 0
  br i1 %.not.i562, label %lean_dec_ref.exit563, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0355) #8
  br label %lean_dec_ref.exit563

lean_dec_ref.exit563:                             ; preds = %bb.u, %bb.v, %bb.w
  %i.au = load i32, ptr %.0347, align 4, !tbaa !13 ; 3 uses
  %i.av = icmp sgt i32 %i.au, 1
  br i1 %i.av, label %bb.x, label %bb.y, !prof !15

bb.x:                                             ; preds = %lean_dec_ref.exit563
  %i.aw = add nsw i32 %i.au, -1
  store i32 %i.aw, ptr %.0347, align 4, !tbaa !13
  br label %lean_dec_ref.exit561

bb.y:                                             ; preds = %lean_dec_ref.exit563
  %.not.i560 = icmp eq i32 %i.au, 0
  br i1 %.not.i560, label %lean_dec_ref.exit561, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0347) #8
  br label %lean_dec_ref.exit561

lean_dec_ref.exit561:                             ; preds = %bb.x, %bb.y, %bb.z
  %i.ax = load i32, ptr %0, align 8, !tbaa !13    ; 3 uses
  %i.ay = icmp sgt i32 %i.ax, 1
  br i1 %i.ay, label %bb.aa, label %bb.ab, !prof !15

bb.aa:                                            ; preds = %lean_dec_ref.exit561
  %i.az = add nsw i32 %i.ax, -1
  store i32 %i.az, ptr %0, align 8, !tbaa !13
  br label %lean_dec_ref.exit559

bb.ab:                                            ; preds = %lean_dec_ref.exit561
  %.not.i558 = icmp eq i32 %i.ax, 0
  br i1 %.not.i558, label %lean_dec_ref.exit559, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec_ref.exit559

lean_dec_ref.exit559:                             ; preds = %bb.aa, %bb.ab, %bb.ac
  %i.ba = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !16 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !16 ; 5 uses
  %.val588 = load i32, ptr %i.u, align 8, !tbaa !13
  %i.be = icmp eq i32 %.val588, 1
  br i1 %i.be, label %lean_dec.exit468.thread, label %bb.ad

bb.ad:                                            ; preds = %lean_dec_ref.exit559
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = and i64 %i.bf, 1
  %.not.i460 = icmp eq i64 %i.bg, 0
  br i1 %.not.i460, label %bb.ae, label %lean_inc.exit461

bb.ae:                                            ; preds = %bb.ad
  %.val.i.i599 = load i32, ptr %i.bd, align 4, !tbaa !13 ; 3 uses
  %i.bh = icmp sgt i32 %.val.i.i599, 0
  br i1 %i.bh, label %bb.af, label %bb.ag, !prof !15

bb.af:                                            ; preds = %bb.ae
  %i.bi = add nuw i32 %.val.i.i599, 1
  store i32 %i.bi, ptr %i.bd, align 4, !tbaa !13
  br label %lean_inc.exit461

bb.ag:                                            ; preds = %bb.ae
  %.not.i.i600 = icmp eq i32 %.val.i.i599, 0
  br i1 %.not.i.i600, label %lean_inc.exit461, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bj = atomicrmw sub ptr %i.bd, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit461

lean_inc.exit461:                                 ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ad
  %i.bk = ptrtoint ptr %i.bb to i64
  %i.bl = and i64 %i.bk, 1
  %.not.i458 = icmp eq i64 %i.bl, 0
  br i1 %.not.i458, label %bb.ai, label %lean_inc.exit459

bb.ai:                                            ; preds = %lean_inc.exit461
  %.val.i.i602 = load i32, ptr %i.bb, align 4, !tbaa !13 ; 3 uses
  %i.bm = icmp sgt i32 %.val.i.i602, 0
  br i1 %i.bm, label %bb.aj, label %bb.ak, !prof !15
end_hunk_0
begin_hunk_1_@l___private_Lake_Util_Version_0__Lake_VerRange_parseM_go:bb.a
bb.bt:                                            ; preds = %lean_dec_ref.exit551
  %.not.i548 = icmp eq i32 %i.dh, 0
  br i1 %.not.i548, label %lean_dec_ref.exit549, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0347) #8
  br label %lean_dec_ref.exit549

lean_dec_ref.exit549:                             ; preds = %bb.bs, %bb.bt, %bb.bu
  %i.dk = load i32, ptr %0, align 8, !tbaa !13    ; 3 uses
  %i.dl = icmp sgt i32 %i.dk, 1
  br i1 %i.dl, label %bb.bv, label %bb.bw, !prof !15

bb.bv:                                            ; preds = %lean_dec_ref.exit549
  %i.dm = add nsw i32 %i.dk, -1
  store i32 %i.dm, ptr %0, align 8, !tbaa !13
  br label %lean_dec_ref.exit547

bb.bw:                                            ; preds = %lean_dec_ref.exit549
  %.not.i546 = icmp eq i32 %i.dk, 0
  br i1 %.not.i546, label %lean_dec_ref.exit547, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec_ref.exit547

lean_dec_ref.exit547:                             ; preds = %bb.bv, %bb.bw, %bb.bx
  %i.dn = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 2, i32 noundef 0)
  br label %lean_dec.exit468.thread.sink.split

bb.by:                                            ; preds = %.split1018, %lean_nat_eq.exit568
  %i.do = load i32, ptr %.0355, align 4, !tbaa !13 ; 3 uses
  %i.dp = icmp sgt i32 %i.do, 1
  br i1 %i.dp, label %bb.bz, label %bb.ca, !prof !15

bb.bz:                                            ; preds = %bb.by
  %i.dq = add nsw i32 %i.do, -1
  store i32 %i.dq, ptr %.0355, align 4, !tbaa !13
  br label %lean_dec_ref.exit545

bb.ca:                                            ; preds = %bb.by
  %.not.i544 = icmp eq i32 %i.do, 0
  br i1 %.not.i544, label %lean_dec_ref.exit545, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0355) #8
  br label %lean_dec_ref.exit545

lean_dec_ref.exit545:                             ; preds = %bb.bz, %bb.ca, %bb.cb
  %i.dr = load i32, ptr %.0347, align 4, !tbaa !13 ; 3 uses
  %i.ds = icmp sgt i32 %i.dr, 1
  br i1 %i.ds, label %bb.cc, label %bb.cd, !prof !15

bb.cc:                                            ; preds = %lean_dec_ref.exit545
  %i.dt = add nsw i32 %i.dr, -1
  store i32 %i.dt, ptr %.0347, align 4, !tbaa !13
  br label %lean_dec_ref.exit543

bb.cd:                                            ; preds = %lean_dec_ref.exit545
  %.not.i542 = icmp eq i32 %i.dr, 0
  br i1 %.not.i542, label %lean_dec_ref.exit543, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0347) #8
  br label %lean_dec_ref.exit543

lean_dec_ref.exit543:                             ; preds = %bb.cc, %bb.cd, %bb.ce
  %i.du = load i32, ptr %0, align 8, !tbaa !13    ; 3 uses
  %i.dv = icmp sgt i32 %i.du, 1
  br i1 %i.dv, label %bb.cf, label %bb.cg, !prof !15

bb.cf:                                            ; preds = %lean_dec_ref.exit543
  %i.dw = add nsw i32 %i.du, -1
  store i32 %i.dw, ptr %0, align 8, !tbaa !13
  br label %lean_dec_ref.exit541

bb.cg:                                            ; preds = %lean_dec_ref.exit543
  %.not.i540 = icmp eq i32 %i.du, 0
  br i1 %.not.i540, label %lean_dec_ref.exit541, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec_ref.exit541

lean_dec_ref.exit541:                             ; preds = %bb.cf, %bb.cg, %bb.ch
  %i.dx = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 2, i32 noundef 0)
  br label %lean_dec.exit468.thread.sink.split

bb.ci:                                            ; preds = %bb.db
  %i.dy = icmp eq i8 %.0330, 0
  br i1 %i.dy, label %bb.cj, label %bb.cq

bb.cj:                                            ; preds = %bb.ci
  %i.dz = load i8, ptr %i.k, align 1, !tbaa !12   ; 2 uses
  %i.ea = icmp sgt i8 %i.dz, -1
  br i1 %i.ea, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.eb = or i64 %i.f, 1
  %i.ec = add i64 %i.eb, 2
  %i.ed = inttoptr i64 %i.ec to ptr
  br label %lean_string_utf8_next_fast.exit612

bb.cl:                                            ; preds = %bb.cj
  %i.ee = tail call ptr @lean_string_utf8_next_fast_cold(i64 noundef %i.j, i8 noundef zeroext %i.dz) #8
  br label %lean_string_utf8_next_fast.exit612

lean_string_utf8_next_fast.exit612:               ; preds = %bb.ck, %bb.cl
  %.0.i611 = phi ptr [ %i.ed, %bb.ck ], [ %i.ee, %bb.cl ] ; 4 uses
  br i1 %.not.i564, label %bb.cm, label %lean_dec.exit468.backedge

bb.cm:                                            ; preds = %lean_string_utf8_next_fast.exit612
  %i.ef = load i32, ptr %.0372, align 4, !tbaa !13 ; 3 uses
  %i.eg = icmp sgt i32 %i.ef, 1
  br i1 %i.eg, label %bb.cn, label %bb.co, !prof !15

bb.cn:                                            ; preds = %bb.cm
  %i.eh = add nsw i32 %i.ef, -1
  store i32 %i.eh, ptr %.0372, align 4, !tbaa !13
  br label %lean_dec.exit468.backedge

bb.co:                                            ; preds = %bb.cm
  %.not.i486 = icmp eq i32 %i.ef, 0
  br i1 %.not.i486, label %lean_dec.exit468.backedge, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0372) #8
  br label %lean_dec.exit468.backedge

bb.cq:                                            ; preds = %bb.ci
  %i.ei = load i32, ptr %.0355, align 4, !tbaa !13 ; 3 uses
  %i.ej = icmp sgt i32 %i.ei, 1
  br i1 %i.ej, label %bb.cr, label %bb.cs, !prof !15

bb.cr:                                            ; preds = %bb.cq
  %i.ek = add nsw i32 %i.ei, -1
  store i32 %i.ek, ptr %.0355, align 4, !tbaa !13
  br label %lean_dec_ref.exit539

bb.cs:                                            ; preds = %bb.cq
  %.not.i538 = icmp eq i32 %i.ei, 0
  br i1 %.not.i538, label %lean_dec_ref.exit539, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0355) #8
  br label %lean_dec_ref.exit539

lean_dec_ref.exit539:                             ; preds = %bb.cr, %bb.cs, %bb.ct
  %i.el = load i32, ptr %.0347, align 4, !tbaa !13 ; 3 uses
  %i.em = icmp sgt i32 %i.el, 1
  br i1 %i.em, label %bb.cu, label %bb.cv, !prof !15

bb.cu:                                            ; preds = %lean_dec_ref.exit539
  %i.en = add nsw i32 %i.el, -1
  store i32 %i.en, ptr %.0347, align 4, !tbaa !13
  br label %lean_dec_ref.exit537

bb.cv:                                            ; preds = %lean_dec_ref.exit539
  %.not.i536 = icmp eq i32 %i.el, 0
  br i1 %.not.i536, label %lean_dec_ref.exit537, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0347) #8
  br label %lean_dec_ref.exit537

lean_dec_ref.exit537:                             ; preds = %bb.cu, %bb.cv, %bb.cw
  %i.eo = load i32, ptr %0, align 8, !tbaa !13    ; 3 uses
  %i.ep = icmp sgt i32 %i.eo, 1
  br i1 %i.ep, label %bb.cx, label %bb.cy, !prof !15

bb.cx:                                            ; preds = %lean_dec_ref.exit537
  %i.eq = add nsw i32 %i.eo, -1
  store i32 %i.eq, ptr %0, align 8, !tbaa !13
  br label %lean_dec_ref.exit535

bb.cy:                                            ; preds = %lean_dec_ref.exit537
  %.not.i534 = icmp eq i32 %i.eo, 0
  br i1 %.not.i534, label %lean_dec_ref.exit535, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec_ref.exit535

lean_dec_ref.exit535:                             ; preds = %bb.cx, %bb.cy, %bb.cz
  tail call void @lean_inc_heartbeat() #8
  %i.er = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #8 ; 4 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %bb.da, label %lean_alloc_ctor.exit

bb.da:                                            ; preds = %lean_dec_ref.exit535
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_dec_ref.exit535
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  store i32 1, ptr %i.er, align 4, !tbaa !13
  store i32 16908312, ptr %i.et, align 4
  br label %lean_dec.exit468.thread.sink.split

bb.db:                                            ; preds = %.critedge435
  switch i32 %.0.i589, label %bb.e [
    i32 94, label %bb.fr
    i32 126, label %bb.dc
    i32 32, label %bb.jb
    i32 9, label %bb.jb
    i32 13, label %bb.jb
    i32 10, label %bb.jb
    i32 44, label %bb.ci
    i32 124, label %bb.ar
  ]

bb.dc:                                            ; preds = %bb.db
  %i.eu = load i8, ptr %i.k, align 1, !tbaa !12   ; 2 uses
  %i.ev = icmp sgt i8 %i.eu, -1
  br i1 %i.ev, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.ew = or i64 %i.f, 1
  %i.ex = add i64 %i.ew, 2
  %i.ey = inttoptr i64 %i.ex to ptr
  br label %lean_string_utf8_next_fast.exit614

bb.de:                                            ; preds = %bb.dc
  %i.ez = tail call ptr @lean_string_utf8_next_fast_cold(i64 noundef %i.j, i8 noundef zeroext %i.eu) #8
  br label %lean_string_utf8_next_fast.exit614

lean_string_utf8_next_fast.exit614:               ; preds = %bb.dd, %bb.de
  %.0.i613 = phi ptr [ %i.ey, %bb.dd ], [ %i.ez, %bb.de ] ; 5 uses
  br i1 %.not.i564, label %bb.df, label %lean_dec.exit476

bb.df:                                            ; preds = %lean_string_utf8_next_fast.exit614
  %i.fa = load i32, ptr %.0372, align 4, !tbaa !13 ; 3 uses
  %i.fb = icmp sgt i32 %i.fa, 1
  br i1 %i.fb, label %bb.dg, label %bb.dh, !prof !15

bb.dg:                                            ; preds = %bb.df
  %i.fc = add nsw i32 %i.fa, -1
  store i32 %i.fc, ptr %.0372, align 4, !tbaa !13
  br label %lean_dec.exit476

bb.dh:                                            ; preds = %bb.df
  %.not.i488 = icmp eq i32 %i.fa, 0
  br i1 %.not.i488, label %lean_dec.exit476, label %bb.di

bb.di:                                            ; preds = %bb.dh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0372) #8
  br label %lean_dec.exit476

lean_dec.exit476:                                 ; preds = %bb.di, %bb.dh, %bb.dg, %lean_string_utf8_next_fast.exit614
  %i.fd = ptrtoint ptr %.0.i613 to i64
  %i.fe = and i64 %i.fd, 1
  %.not.i573 = icmp eq i64 %i.fe, 0
  br i1 %.not.i573, label %lean_nat_eq.exit576, label %.split1019, !prof !11

.split1019:                                       ; preds = %lean_dec.exit476
  %i.ff = icmp eq ptr %.0.i613, %i.e
  br i1 %i.ff, label %bb.fg, label %bb.dj

lean_nat_eq.exit576:                              ; preds = %lean_dec.exit476
  %i.fg = tail call zeroext i1 @lean_nat_big_eq(ptr noundef %.0.i613, ptr noundef nonnull %i.e) #8
  br i1 %i.fg, label %bb.fg, label %bb.dj

bb.dj:                                            ; preds = %.split1019, %lean_nat_eq.exit576
  %.val.i.i615 = load i32, ptr %0, align 8, !tbaa !13 ; 3 uses
  %i.fh = icmp sgt i32 %.val.i.i615, 0
  br i1 %i.fh, label %bb.dk, label %bb.dl, !prof !15

bb.dk:                                            ; preds = %bb.dj
  %i.fi = add nuw i32 %.val.i.i615, 1
  store i32 %i.fi, ptr %0, align 8, !tbaa !13
  br label %lean_inc_ref.exit617

bb.dl:                                            ; preds = %bb.dj
  %.not.i.i616 = icmp eq i32 %.val.i.i615, 0
  br i1 %.not.i.i616, label %lean_inc_ref.exit617, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.fj = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit617

lean_inc_ref.exit617:                             ; preds = %bb.dk, %bb.dl, %bb.dm
  %i.fk = tail call ptr @l___private_Lake_Util_Version_0__Lake_VerRange_parseM_parseTilde(ptr noundef nonnull %0, ptr noundef %.0355, ptr noundef %.0.i613) ; 16 uses
  %i.fl = ptrtoint ptr %i.fk to i64               ; 2 uses
  %i.fm = and i64 %i.fl, 1
  %.not.i618 = icmp eq i64 %i.fm, 0               ; 2 uses
  br i1 %.not.i618, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %lean_inc_ref.exit617
  %i.fn = lshr i64 %i.fl, 1
  %i.fo = trunc i64 %i.fn to i32
  br label %lean_obj_tag.exit621

bb.do:                                            ; preds = %lean_inc_ref.exit617
  %i.fp = getelementptr i8, ptr %i.fk, i64 4
  %.val.i620 = load i32, ptr %i.fp, align 4
  %i.fq = lshr i32 %.val.i620, 24
  br label %lean_obj_tag.exit621

lean_obj_tag.exit621:                             ; preds = %bb.dn, %bb.do
  %.0.i619 = phi i32 [ %i.fo, %bb.dn ], [ %i.fq, %bb.do ]
  %i.fr = icmp eq i32 %.0.i619, 0
  br i1 %i.fr, label %bb.dp, label %bb.ek

bb.dp:                                            ; preds = %lean_obj_tag.exit621
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fk, i64 8 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !16 ; 8 uses
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = and i64 %i.fu, 1
  %.not.i456 = icmp eq i64 %i.fv, 0
  br i1 %.not.i456, label %bb.dq, label %lean_inc.exit457

bb.dq:                                            ; preds = %bb.dp
  %.val.i.i622 = load i32, ptr %i.ft, align 4, !tbaa !13 ; 3 uses
  %i.fw = icmp sgt i32 %.val.i.i622, 0
  br i1 %i.fw, label %bb.dr, label %bb.ds, !prof !15

bb.dr:                                            ; preds = %bb.dq
  %i.fx = add nuw i32 %.val.i.i622, 1
  store i32 %i.fx, ptr %i.ft, align 4, !tbaa !13
  br label %lean_inc.exit457

bb.ds:                                            ; preds = %bb.dq
  %.not.i.i623 = icmp eq i32 %.val.i.i622, 0
  br i1 %.not.i.i623, label %lean_inc.exit457, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.fy = atomicrmw sub ptr %i.ft, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit457

lean_inc.exit457:                                 ; preds = %bb.dt, %bb.ds, %bb.dr, %bb.dp
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !16 ; 8 uses
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = and i64 %i.gb, 1
  %.not.i454 = icmp eq i64 %i.gc, 0
  br i1 %.not.i454, label %bb.du, label %lean_inc.exit455

bb.du:                                            ; preds = %lean_inc.exit457
  %.val.i.i625 = load i32, ptr %i.ga, align 4, !tbaa !13 ; 3 uses
  %i.gd = icmp sgt i32 %.val.i.i625, 0
  br i1 %i.gd, label %bb.dv, label %bb.dw, !prof !15

bb.dv:                                            ; preds = %bb.du
  %i.ge = add nuw i32 %.val.i.i625, 1
  store i32 %i.ge, ptr %i.ga, align 4, !tbaa !13
  br label %lean_inc.exit455

bb.dw:                                            ; preds = %bb.du
  %.not.i.i626 = icmp eq i32 %.val.i.i625, 0
  br i1 %.not.i.i626, label %lean_inc.exit455, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.gf = atomicrmw sub ptr %i.ga, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit455

lean_inc.exit455:                                 ; preds = %bb.dx, %bb.dw, %bb.dv, %lean_inc.exit457
  %.val.i628 = load i32, ptr %i.fk, align 8, !tbaa !13 ; 4 uses
  %i.gg = icmp eq i32 %.val.i628, 1
  br i1 %i.gg, label %.preheader.i.preheader, label %bb.eg

.preheader.i.preheader:                           ; preds = %lean_inc.exit455
  %i.gh = load ptr, ptr %i.fs, align 8, !tbaa !16 ; 4 uses
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = and i64 %i.gi, 1
  %.not.i.i629 = icmp eq i64 %i.gj, 0
  br i1 %.not.i.i629, label %bb.dy, label %lean_dec.exit.i

bb.dy:                                            ; preds = %.preheader.i.preheader
  %i.gk = load i32, ptr %i.gh, align 4, !tbaa !13 ; 3 uses
  %i.gl = icmp sgt i32 %i.gk, 1
  br i1 %i.gl, label %bb.dz, label %bb.ea, !prof !15

bb.dz:                                            ; preds = %bb.dy
  %i.gm = add nsw i32 %i.gk, -1
  store i32 %i.gm, ptr %i.gh, align 4, !tbaa !13
  br label %lean_dec.exit.i

bb.ea:                                            ; preds = %bb.dy
  %.not.i7.i = icmp eq i32 %i.gk, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gh) #8
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.eb, %bb.ea, %bb.dz, %.preheader.i.preheader
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !16 ; 4 uses
  %i.gp = ptrtoint ptr %i.go to i64
  %i.gq = and i64 %i.gp, 1
  %.not.i.i629.1 = icmp eq i64 %i.gq, 0
  br i1 %.not.i.i629.1, label %bb.ec, label %lean_dec.exit.i.1

bb.ec:                                            ; preds = %lean_dec.exit.i
  %i.gr = load i32, ptr %i.go, align 4, !tbaa !13 ; 3 uses
  %i.gs = icmp sgt i32 %i.gr, 1
  br i1 %i.gs, label %bb.ef, label %bb.ed, !prof !15

bb.ed:                                            ; preds = %bb.ec
  %.not.i7.i.1 = icmp eq i32 %i.gr, 0
end_hunk_1
begin_hunk_2_@l___private_Lake_Util_Version_0__Lake_VerRange_parseM_go:bb.a
  %i.ir = add nsw i32 %i.ip, -1
  store i32 %i.ir, ptr %.0372, align 4, !tbaa !13
  br label %lean_dec.exit472

bb.fw:                                            ; preds = %bb.fu
  %.not.i492 = icmp eq i32 %i.ip, 0
  br i1 %.not.i492, label %lean_dec.exit472, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0372) #8
  br label %lean_dec.exit472

lean_dec.exit472:                                 ; preds = %bb.fx, %bb.fw, %bb.fv, %lean_string_utf8_next_fast.exit639
  %i.is = ptrtoint ptr %.0.i638 to i64
  %i.it = and i64 %i.is, 1
  %.not.i577 = icmp eq i64 %i.it, 0
  br i1 %.not.i577, label %lean_nat_eq.exit580, label %.split1020, !prof !11

.split1020:                                       ; preds = %lean_dec.exit472
  %i.iu = icmp eq ptr %.0.i638, %i.e
  br i1 %i.iu, label %bb.hv, label %bb.fy

lean_nat_eq.exit580:                              ; preds = %lean_dec.exit472
  %i.iv = tail call zeroext i1 @lean_nat_big_eq(ptr noundef %.0.i638, ptr noundef nonnull %i.e) #8
  br i1 %i.iv, label %bb.hv, label %bb.fy

bb.fy:                                            ; preds = %.split1020, %lean_nat_eq.exit580
  %.val.i.i640 = load i32, ptr %0, align 8, !tbaa !13 ; 3 uses
  %i.iw = icmp sgt i32 %.val.i.i640, 0
  br i1 %i.iw, label %bb.fz, label %bb.ga, !prof !15

bb.fz:                                            ; preds = %bb.fy
  %i.ix = add nuw i32 %.val.i.i640, 1
  store i32 %i.ix, ptr %0, align 8, !tbaa !13
  br label %lean_inc_ref.exit642

bb.ga:                                            ; preds = %bb.fy
  %.not.i.i641 = icmp eq i32 %.val.i.i640, 0
  br i1 %.not.i.i641, label %lean_inc_ref.exit642, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.iy = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit642

lean_inc_ref.exit642:                             ; preds = %bb.fz, %bb.ga, %bb.gb
  %i.iz = tail call ptr @l___private_Lake_Util_Version_0__Lake_VerRange_parseM_parseCaret(ptr noundef nonnull %0, ptr noundef %.0355, ptr noundef %.0.i638) ; 16 uses
  %i.ja = ptrtoint ptr %i.iz to i64               ; 2 uses
  %i.jb = and i64 %i.ja, 1
  %.not.i643 = icmp eq i64 %i.jb, 0               ; 2 uses
  br i1 %.not.i643, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %lean_inc_ref.exit642
  %i.jc = lshr i64 %i.ja, 1
  %i.jd = trunc i64 %i.jc to i32
  br label %lean_obj_tag.exit646

bb.gd:                                            ; preds = %lean_inc_ref.exit642
  %i.je = getelementptr i8, ptr %i.iz, i64 4
  %.val.i645 = load i32, ptr %i.je, align 4
  %i.jf = lshr i32 %.val.i645, 24
  br label %lean_obj_tag.exit646

lean_obj_tag.exit646:                             ; preds = %bb.gc, %bb.gd
  %.0.i644 = phi i32 [ %i.jd, %bb.gc ], [ %i.jf, %bb.gd ]
  %i.jg = icmp eq i32 %.0.i644, 0
  br i1 %i.jg, label %bb.ge, label %bb.gz

bb.ge:                                            ; preds = %lean_obj_tag.exit646
  %i.jh = getelementptr inbounds nuw i8, ptr %i.iz, i64 8 ; 2 uses
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !16 ; 8 uses
  %i.jj = ptrtoint ptr %i.ji to i64
  %i.jk = and i64 %i.jj, 1
  %.not.i448 = icmp eq i64 %i.jk, 0
  br i1 %.not.i448, label %bb.gf, label %lean_inc.exit449

bb.gf:                                            ; preds = %bb.ge
  %.val.i.i647 = load i32, ptr %i.ji, align 4, !tbaa !13 ; 3 uses
  %i.jl = icmp sgt i32 %.val.i.i647, 0
  br i1 %i.jl, label %bb.gg, label %bb.gh, !prof !15

bb.gg:                                            ; preds = %bb.gf
  %i.jm = add nuw i32 %.val.i.i647, 1
  store i32 %i.jm, ptr %i.ji, align 4, !tbaa !13
  br label %lean_inc.exit449

bb.gh:                                            ; preds = %bb.gf
  %.not.i.i648 = icmp eq i32 %.val.i.i647, 0
  br i1 %.not.i.i648, label %lean_inc.exit449, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.jn = atomicrmw sub ptr %i.ji, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit449

lean_inc.exit449:                                 ; preds = %bb.gi, %bb.gh, %bb.gg, %bb.ge
  %i.jo = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !16 ; 8 uses
  %i.jq = ptrtoint ptr %i.jp to i64
  %i.jr = and i64 %i.jq, 1
  %.not.i446 = icmp eq i64 %i.jr, 0
  br i1 %.not.i446, label %bb.gj, label %lean_inc.exit447

bb.gj:                                            ; preds = %lean_inc.exit449
  %.val.i.i650 = load i32, ptr %i.jp, align 4, !tbaa !13 ; 3 uses
  %i.js = icmp sgt i32 %.val.i.i650, 0
  br i1 %i.js, label %bb.gk, label %bb.gl, !prof !15

bb.gk:                                            ; preds = %bb.gj
  %i.jt = add nuw i32 %.val.i.i650, 1
  store i32 %i.jt, ptr %i.jp, align 4, !tbaa !13
  br label %lean_inc.exit447

bb.gl:                                            ; preds = %bb.gj
  %.not.i.i651 = icmp eq i32 %.val.i.i650, 0
  br i1 %.not.i.i651, label %lean_inc.exit447, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.ju = atomicrmw sub ptr %i.jp, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit447

lean_inc.exit447:                                 ; preds = %bb.gm, %bb.gl, %bb.gk, %lean_inc.exit449
  %.val.i653 = load i32, ptr %i.iz, align 8, !tbaa !13 ; 4 uses
  %i.jv = icmp eq i32 %.val.i653, 1
  br i1 %i.jv, label %.preheader.i655.preheader, label %bb.gv

.preheader.i655.preheader:                        ; preds = %lean_inc.exit447
  %i.jw = load ptr, ptr %i.jh, align 8, !tbaa !16 ; 4 uses
  %i.jx = ptrtoint ptr %i.jw to i64
  %i.jy = and i64 %i.jx, 1
  %.not.i.i657 = icmp eq i64 %i.jy, 0
  br i1 %.not.i.i657, label %bb.gn, label %lean_dec.exit.i658

bb.gn:                                            ; preds = %.preheader.i655.preheader
  %i.jz = load i32, ptr %i.jw, align 4, !tbaa !13 ; 3 uses
  %i.ka = icmp sgt i32 %i.jz, 1
  br i1 %i.ka, label %bb.go, label %bb.gp, !prof !15

bb.go:                                            ; preds = %bb.gn
  %i.kb = add nsw i32 %i.jz, -1
  store i32 %i.kb, ptr %i.jw, align 4, !tbaa !13
  br label %lean_dec.exit.i658

bb.gp:                                            ; preds = %bb.gn
  %.not.i7.i661 = icmp eq i32 %i.jz, 0
  br i1 %.not.i7.i661, label %lean_dec.exit.i658, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.jw) #8
  br label %lean_dec.exit.i658

lean_dec.exit.i658:                               ; preds = %bb.gq, %bb.gp, %bb.go, %.preheader.i655.preheader
  %i.kc = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !16 ; 4 uses
  %i.ke = ptrtoint ptr %i.kd to i64
  %i.kf = and i64 %i.ke, 1
  %.not.i.i657.1 = icmp eq i64 %i.kf, 0
  br i1 %.not.i.i657.1, label %bb.gr, label %lean_dec.exit.i658.1

bb.gr:                                            ; preds = %lean_dec.exit.i658
  %i.kg = load i32, ptr %i.kd, align 4, !tbaa !13 ; 3 uses
  %i.kh = icmp sgt i32 %i.kg, 1
  br i1 %i.kh, label %bb.gu, label %bb.gs, !prof !15

bb.gs:                                            ; preds = %bb.gr
  %.not.i7.i661.1 = icmp eq i32 %i.kg, 0
  br i1 %.not.i7.i661.1, label %lean_dec.exit.i658.1, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.kd) #8
  br label %lean_dec.exit.i658.1

bb.gu:                                            ; preds = %bb.gr
  %i.ki = add nsw i32 %i.kg, -1
  store i32 %i.ki, ptr %i.kd, align 4, !tbaa !13
  br label %lean_dec.exit.i658.1

lean_dec.exit.i658.1:                             ; preds = %bb.gu, %bb.gt, %bb.gs, %lean_dec.exit.i658
  tail call void @lean_free_object(ptr noundef nonnull %i.iz) #8
  br label %lean_dec.exit468.backedge

bb.gv:                                            ; preds = %lean_inc.exit447
  %i.kj = icmp sgt i32 %.val.i653, 1
  br i1 %i.kj, label %bb.gw, label %bb.gx, !prof !15

bb.gw:                                            ; preds = %bb.gv
  %i.kk = add nsw i32 %.val.i653, -1
  store i32 %i.kk, ptr %i.iz, align 8, !tbaa !13
  br label %lean_dec.exit468.backedge

bb.gx:                                            ; preds = %bb.gv
  %.not.i8.i654 = icmp eq i32 %.val.i653, 0
  br i1 %.not.i8.i654, label %lean_dec.exit468.backedge, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.iz) #8
  br label %lean_dec.exit468.backedge

lean_dec.exit468.backedge:                        ; preds = %bb.gy, %bb.ej, %lean_dec.exit.i.1, %bb.eh, %bb.ei, %lean_dec.exit.i658.1, %bb.gw, %bb.gx, %lean_string_utf8_next_fast.exit612, %bb.cn, %bb.co, %bb.cp, %bb.bm, %lean_inc.exit463, %bb.bn, %bb.kh, %bb.kg, %bb.kf, %lean_dec.exit.i693.1, %lean_string_utf8_next_fast.exit674, %bb.jf, %bb.jg, %bb.jh
  %.0372.be = phi ptr [ %i.ga, %bb.eh ], [ %.0.i673, %bb.jf ], [ %i.oa, %lean_dec.exit.i693.1 ], [ %i.oa, %bb.kf ], [ %.0.i673, %lean_string_utf8_next_fast.exit674 ], [ %i.oa, %bb.kg ], [ %i.oa, %bb.kh ], [ %.0.i673, %bb.jh ], [ %.0.i673, %bb.jg ], [ %.0.i611, %lean_string_utf8_next_fast.exit612 ], [ %.0.i611, %bb.cn ], [ %.0.i611, %bb.co ], [ %.0.i611, %bb.cp ], [ %i.dc, %bb.bm ], [ %i.ga, %bb.ei ], [ %i.jp, %lean_dec.exit.i658.1 ], [ %i.jp, %bb.gw ], [ %i.jp, %bb.gx ], [ %i.ak, %lean_inc.exit463 ], [ %i.dd, %bb.bn ], [ %i.ga, %lean_dec.exit.i.1 ], [ %i.jp, %bb.gy ], [ %i.ga, %bb.ej ]
  %.0355.be = phi ptr [ %i.ft, %bb.eh ], [ %.0355, %bb.jf ], [ %i.nt, %lean_dec.exit.i693.1 ], [ %i.nt, %bb.kf ], [ %.0355, %lean_string_utf8_next_fast.exit674 ], [ %i.nt, %bb.kg ], [ %i.nt, %bb.kh ], [ %.0355, %bb.jh ], [ %.0355, %bb.jg ], [ %.0355, %lean_string_utf8_next_fast.exit612 ], [ %.0355, %bb.cn ], [ %.0355, %bb.co ], [ %.0355, %bb.cp ], [ @l___private_Lake_Util_Version_0__Lake_VerRange_parseM_go___closed__2_value, %bb.bm ], [ %i.ft, %bb.ei ], [ %i.ji, %lean_dec.exit.i658.1 ], [ %i.ji, %bb.gw ], [ %i.ji, %bb.gx ], [ %i.aq, %lean_inc.exit463 ], [ @l___private_Lake_Util_Version_0__Lake_VerRange_parseM_go___closed__2_value, %bb.bn ], [ %i.ft, %lean_dec.exit.i.1 ], [ %i.ji, %bb.gy ], [ %i.ft, %bb.ej ]
  %.0347.be = phi ptr [ %.0347, %bb.eh ], [ %.0347, %bb.jf ], [ %.0347, %lean_dec.exit.i693.1 ], [ %.0347, %bb.kf ], [ %.0347, %lean_string_utf8_next_fast.exit674 ], [ %.0347, %bb.kg ], [ %.0347, %bb.kh ], [ %.0347, %bb.jh ], [ %.0347, %bb.jg ], [ %.0347, %lean_string_utf8_next_fast.exit612 ], [ %.0347, %bb.cn ], [ %.0347, %bb.co ], [ %.0347, %bb.cp ], [ %i.cx, %bb.bm ], [ %.0347, %bb.ei ], [ %.0347, %lean_dec.exit.i658.1 ], [ %.0347, %bb.gw ], [ %.0347, %bb.gx ], [ %.0347, %lean_inc.exit463 ], [ %i.cx, %bb.bn ], [ %.0347, %lean_dec.exit.i.1 ], [ %.0347, %bb.gy ], [ %.0347, %bb.ej ]
  %.0330.be = phi i8 [ 0, %bb.eh ], [ %.0330, %bb.jf ], [ 0, %lean_dec.exit.i693.1 ], [ 0, %bb.kf ], [ %.0330, %lean_string_utf8_next_fast.exit674 ], [ 0, %bb.kg ], [ 0, %bb.kh ], [ %.0330, %bb.jh ], [ %.0330, %bb.jg ], [ 1, %lean_string_utf8_next_fast.exit612 ], [ 1, %bb.cn ], [ 1, %bb.co ], [ 1, %bb.cp ], [ 1, %bb.bm ], [ 0, %bb.ei ], [ 0, %lean_dec.exit.i658.1 ], [ 0, %bb.gw ], [ 0, %bb.gx ], [ 0, %lean_inc.exit463 ], [ 1, %bb.bn ], [ 0, %lean_dec.exit.i.1 ], [ 0, %bb.gy ], [ 0, %bb.ej ]
  br label %lean_dec.exit468

bb.gz:                                            ; preds = %lean_obj_tag.exit646
  %i.kl = load i32, ptr %.0347, align 4, !tbaa !13 ; 3 uses
  %i.km = icmp sgt i32 %i.kl, 1
  br i1 %i.km, label %bb.ha, label %bb.hb, !prof !15

bb.ha:                                            ; preds = %bb.gz
  %i.kn = add nsw i32 %i.kl, -1
  store i32 %i.kn, ptr %.0347, align 4, !tbaa !13
  br label %lean_dec_ref.exit523

bb.hb:                                            ; preds = %bb.gz
  %.not.i522 = icmp eq i32 %i.kl, 0
  br i1 %.not.i522, label %lean_dec_ref.exit523, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0347) #8
  br label %lean_dec_ref.exit523

lean_dec_ref.exit523:                             ; preds = %bb.ha, %bb.hb, %bb.hc
  %i.ko = load i32, ptr %0, align 8, !tbaa !13    ; 3 uses
  %i.kp = icmp sgt i32 %i.ko, 1
  br i1 %i.kp, label %bb.hd, label %bb.he, !prof !15

bb.hd:                                            ; preds = %lean_dec_ref.exit523
  %i.kq = add nsw i32 %i.ko, -1
  store i32 %i.kq, ptr %0, align 8, !tbaa !13
  br label %lean_dec_ref.exit521

bb.he:                                            ; preds = %lean_dec_ref.exit523
  %.not.i520 = icmp eq i32 %i.ko, 0
  br i1 %.not.i520, label %lean_dec_ref.exit521, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec_ref.exit521

lean_dec_ref.exit521:                             ; preds = %bb.hd, %bb.he, %bb.hf
  %i.kr = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !16 ; 5 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !16 ; 5 uses
  %.val586 = load i32, ptr %i.iz, align 8, !tbaa !13
  %i.kv = icmp eq i32 %.val586, 1
  br i1 %i.kv, label %lean_dec.exit468.thread, label %bb.hg

bb.hg:                                            ; preds = %lean_dec_ref.exit521
  %i.kw = ptrtoint ptr %i.ku to i64
  %i.kx = and i64 %i.kw, 1
  %.not.i444 = icmp eq i64 %i.kx, 0
  br i1 %.not.i444, label %bb.hh, label %lean_inc.exit445

bb.hh:                                            ; preds = %bb.hg
  %.val.i.i663 = load i32, ptr %i.ku, align 4, !tbaa !13 ; 3 uses
  %i.ky = icmp sgt i32 %.val.i.i663, 0
  br i1 %i.ky, label %bb.hi, label %bb.hj, !prof !15

bb.hi:                                            ; preds = %bb.hh
  %i.kz = add nuw i32 %.val.i.i663, 1
  store i32 %i.kz, ptr %i.ku, align 4, !tbaa !13
  br label %lean_inc.exit445

bb.hj:                                            ; preds = %bb.hh
  %.not.i.i664 = icmp eq i32 %.val.i.i663, 0
  br i1 %.not.i.i664, label %lean_inc.exit445, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.la = atomicrmw sub ptr %i.ku, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit445

lean_inc.exit445:                                 ; preds = %bb.hk, %bb.hj, %bb.hi, %bb.hg
  %i.lb = ptrtoint ptr %i.ks to i64
  %i.lc = and i64 %i.lb, 1
  %.not.i442 = icmp eq i64 %i.lc, 0
  br i1 %.not.i442, label %bb.hl, label %lean_inc.exit443

bb.hl:                                            ; preds = %lean_inc.exit445
  %.val.i.i666 = load i32, ptr %i.ks, align 4, !tbaa !13 ; 3 uses
  %i.ld = icmp sgt i32 %.val.i.i666, 0
  br i1 %i.ld, label %bb.hm, label %bb.hn, !prof !15

bb.hm:                                            ; preds = %bb.hl
  %i.le = add nuw i32 %.val.i.i666, 1
  store i32 %i.le, ptr %i.ks, align 4, !tbaa !13
  br label %lean_inc.exit443

bb.hn:                                            ; preds = %bb.hl
  %.not.i.i667 = icmp eq i32 %.val.i.i666, 0
  br i1 %.not.i.i667, label %lean_inc.exit443, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.lf = atomicrmw sub ptr %i.ks, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit443

lean_inc.exit443:                                 ; preds = %bb.ho, %bb.hn, %bb.hm, %lean_inc.exit445
  br i1 %.not.i643, label %bb.hp, label %bb.ht

bb.hp:                                            ; preds = %lean_inc.exit443
  %i.lg = load i32, ptr %i.iz, align 8, !tbaa !13 ; 3 uses
  %i.lh = icmp sgt i32 %i.lg, 1
  br i1 %i.lh, label %bb.hq, label %bb.hr, !prof !15

bb.hq:                                            ; preds = %bb.hp
  %i.li = add nsw i32 %i.lg, -1
  store i32 %i.li, ptr %i.iz, align 8, !tbaa !13
  br label %bb.ht

bb.hr:                                            ; preds = %bb.hp
  %.not.i494 = icmp eq i32 %i.lg, 0
  br i1 %.not.i494, label %bb.ht, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.iz) #8
  br label %bb.ht

bb.ht:                                            ; preds = %lean_inc.exit443, %bb.hq, %bb.hr, %bb.hs
  tail call void @lean_inc_heartbeat() #8
  %i.lj = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #8 ; 4 uses
  %i.lk = icmp eq ptr %i.lj, null
  br i1 %i.lk, label %bb.hu, label %lean_alloc_ctor.exit669

bb.hu:                                            ; preds = %bb.ht
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit669:                          ; preds = %bb.ht
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 4
  store i32 1, ptr %i.lj, align 4, !tbaa !13
  store i32 16908312, ptr %i.ll, align 4
  br label %lean_dec.exit468.thread.sink.split

bb.hv:                                            ; preds = %.split1020, %lean_nat_eq.exit580
  %i.lm = load i32, ptr %.0355, align 4, !tbaa !13 ; 3 uses
  %i.ln = icmp sgt i32 %i.lm, 1
  br i1 %i.ln, label %bb.hw, label %bb.hx, !prof !15

bb.hw:                                            ; preds = %bb.hv
  %i.lo = add nsw i32 %i.lm, -1
  store i32 %i.lo, ptr %.0355, align 4, !tbaa !13
  br label %lean_dec_ref.exit519

bb.hx:                                            ; preds = %bb.hv
  %.not.i518 = icmp eq i32 %i.lm, 0
  br i1 %.not.i518, label %lean_dec_ref.exit519, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0355) #8
  br label %lean_dec_ref.exit519

lean_dec_ref.exit519:                             ; preds = %bb.hw, %bb.hx, %bb.hy
  %i.lp = load i32, ptr %.0347, align 4, !tbaa !13 ; 3 uses
  %i.lq = icmp sgt i32 %i.lp, 1
  br i1 %i.lq, label %bb.hz, label %bb.ia, !prof !15

bb.hz:                                            ; preds = %lean_dec_ref.exit519
  %i.lr = add nsw i32 %i.lp, -1
  store i32 %i.lr, ptr %.0347, align 4, !tbaa !13
  br label %lean_dec_ref.exit517

bb.ia:                                            ; preds = %lean_dec_ref.exit519
  %.not.i516 = icmp eq i32 %i.lp, 0
  br i1 %.not.i516, label %lean_dec_ref.exit517, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0347) #8
  br label %lean_dec_ref.exit517

lean_dec_ref.exit517:                             ; preds = %bb.hz, %bb.ia, %bb.ib
  %i.ls = load i32, ptr %0, align 8, !tbaa !13    ; 3 uses
  %i.lt = icmp sgt i32 %i.ls, 1
  br i1 %i.lt, label %bb.ic, label %bb.id, !prof !15

bb.ic:                                            ; preds = %lean_dec_ref.exit517
  %i.lu = add nsw i32 %i.ls, -1
  store i32 %i.lu, ptr %0, align 8, !tbaa !13
  br label %lean_dec_ref.exit515

bb.id:                                            ; preds = %lean_dec_ref.exit517
  %.not.i514 = icmp eq i32 %i.ls, 0
  br i1 %.not.i514, label %lean_dec_ref.exit515, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec_ref.exit515

lean_dec_ref.exit515:                             ; preds = %bb.ic, %bb.id, %bb.ie
  tail call void @lean_inc_heartbeat() #8
  %i.lv = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #8 ; 4 uses
  %i.lw = icmp eq ptr %i.lv, null
  br i1 %i.lw, label %bb.if, label %lean_alloc_ctor.exit670

bb.if:                                            ; preds = %lean_dec_ref.exit515
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit670:                          ; preds = %lean_dec_ref.exit515
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lv, i64 4
  store i32 1, ptr %i.lv, align 4, !tbaa !13
  store i32 16908312, ptr %i.lx, align 4
end_hunk_2
