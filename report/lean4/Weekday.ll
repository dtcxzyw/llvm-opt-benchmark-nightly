Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/Weekday?download=true
inline.NumInlined: 507
inline.NumDeleted: 48
begin_hunk_0_@l_Std_Time_Weekday_instDecidableLtOrdinal___boxed:bb.a
  %i.b = and i64 %i.a, 1
  %.not.i.i.i = icmp eq i64 %i.b, 0               ; 2 uses
  %.pre12 = ptrtoint ptr %1 to i64                ; 2 uses
  %.pre = and i64 %.pre12, 1
  %i.c = icmp eq i64 %.pre, 0                     ; 2 uses
  br i1 %.not.i.i.i, label %l_Std_Time_Weekday_instDecidableLtOrdinal.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %l_Std_Time_Weekday_instDecidableLtOrdinal.exit.thread20, label %lean_dec.exit6.thread25, !prof !13

l_Std_Time_Weekday_instDecidableLtOrdinal.exit.thread20: ; preds = %bb.b
  %i.d = tail call zeroext i1 @lean_int_big_lt(ptr noundef %0, ptr noundef %1) #6
  br label %bb.c

lean_dec.exit6.thread25:                          ; preds = %bb.b
  %i.e = lshr i64 %i.a, 1
  %i.f = trunc i64 %i.e to i32
  %i.g = lshr i64 %.pre12, 1
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.f, %i.h
  br label %lean_dec.exit

l_Std_Time_Weekday_instDecidableLtOrdinal.exit:   ; preds = %bb.a
  %i.j = tail call zeroext i1 @lean_int_big_lt(ptr noundef %0, ptr noundef %1) #6 ; 2 uses
  br i1 %i.c, label %bb.c, label %lean_dec.exit6.thread

bb.c:                                             ; preds = %l_Std_Time_Weekday_instDecidableLtOrdinal.exit.thread20, %l_Std_Time_Weekday_instDecidableLtOrdinal.exit
  %i.k = phi i1 [ %i.d, %l_Std_Time_Weekday_instDecidableLtOrdinal.exit.thread20 ], [ %i.j, %l_Std_Time_Weekday_instDecidableLtOrdinal.exit ] ; 2 uses
  %i.l = load i32, ptr %1, align 4, !tbaa !10     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %1, align 4, !tbaa !10
  br label %lean_dec.exit6

bb.e:                                             ; preds = %bb.c
  %.not.i7 = icmp eq i32 %i.l, 0
  br i1 %.not.i7, label %lean_dec.exit6, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec.exit6

lean_dec.exit6:                                   ; preds = %bb.f, %bb.e, %bb.d
  br i1 %.not.i.i.i, label %lean_dec.exit6.thread, label %lean_dec.exit

lean_dec.exit6.thread:                            ; preds = %l_Std_Time_Weekday_instDecidableLtOrdinal.exit, %lean_dec.exit6
  %.0.i.i.i1924 = phi i1 [ %i.k, %lean_dec.exit6 ], [ %i.j, %l_Std_Time_Weekday_instDecidableLtOrdinal.exit ] ; 3 uses
  %i.o = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.g, label %bb.h, !prof !11

bb.g:                                             ; preds = %lean_dec.exit6.thread
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit

bb.h:                                             ; preds = %lean_dec.exit6.thread
  %.not.i8 = icmp eq i32 %i.o, 0
  br i1 %.not.i8, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_dec.exit6.thread25, %bb.i, %bb.h, %bb.g, %lean_dec.exit6
  %.0.i.i.i1923 = phi i1 [ %.0.i.i.i1924, %bb.i ], [ %.0.i.i.i1924, %bb.h ], [ %.0.i.i.i1924, %bb.g ], [ %i.k, %lean_dec.exit6 ], [ %i.i, %lean_dec.exit6.thread25 ]
  %i.r = select i1 %.0.i.i.i1923, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 1 to ptr)
  ret ptr %i.r
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_Time_Weekday_instOfNatOrdinal___aux__1(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instReprWeekday_repr___closed__15_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instReprWeekday_repr___closed__15, align 8, !tbaa !17
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instReprWeekday_repr___closed__15, ptr noundef nonnull @l_Std_Time_instReprWeekday_repr___closed__15_once, ptr noundef nonnull @_init_l_Std_Time_instReprWeekday_repr___closed__15) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 6 uses
  %i.e = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.f = and i64 %i.e, 1
  %.not.i34 = icmp eq i64 %i.f, 0
  %i.g = icmp ult ptr %0, inttoptr (i64 4294967296 to ptr)
  %or.cond.i = or i1 %i.g, %.not.i34
  br i1 %or.cond.i, label %lean_nat_to_int.exit, label %bb.d

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.h = lshr i64 %i.e, 1
  %i.i = tail call ptr @lean_big_size_t_to_int(i64 noundef %i.h) #6
  br label %lean_nat_to_int.exit

lean_nat_to_int.exit:                             ; preds = %lean_obj_once.exit, %bb.d
  %.1.i = phi ptr [ %0, %lean_obj_once.exit ], [ %i.i, %bb.d ] ; 6 uses
  %i.j = load atomic i32, ptr @l_Std_Time_Weekday_instOfNatOrdinal___aux__1___closed__3_once seq_cst, align 4, !tbaa !15
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.f, !prof !11

bb.e:                                             ; preds = %lean_nat_to_int.exit
  %i.l = load ptr, ptr @l_Std_Time_Weekday_instOfNatOrdinal___aux__1___closed__3, align 8, !tbaa !17
  br label %lean_obj_once.exit36

bb.f:                                             ; preds = %lean_nat_to_int.exit
  %i.m = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_instOfNatOrdinal___aux__1___closed__3, ptr noundef nonnull @l_Std_Time_Weekday_instOfNatOrdinal___aux__1___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_instOfNatOrdinal___aux__1___closed__3) #6
  br label %lean_obj_once.exit36

lean_obj_once.exit36:                             ; preds = %bb.e, %bb.f
  %.0.i35 = phi ptr [ %i.l, %bb.e ], [ %i.m, %bb.f ] ; 9 uses
  %i.n = ptrtoint ptr %.1.i to i64                ; 2 uses
  %i.o = and i64 %i.n, 1
  %.not.i37 = icmp eq i64 %i.o, 0
  br i1 %.not.i37, label %bb.k, label %bb.g, !prof !13

bb.g:                                             ; preds = %lean_obj_once.exit36
  %i.p = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.q = and i64 %i.p, 1
  %.not7.i = icmp eq i64 %i.q, 0
  br i1 %.not7.i, label %lean_int_sub.exit, label %bb.h, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.r = shl i64 %i.n, 31
  %i.s = ashr i64 %i.r, 32
  %i.t = shl i64 %i.p, 31
  %i.u = ashr i64 %i.t, 32
  %i.v = sub nsw i64 %i.s, %i.u                   ; 3 uses
  %i.w = add nsw i64 %i.v, 2147483648
  %i.x = icmp ult i64 %i.w, 4294967296
  br i1 %i.x, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.y = shl nsw i64 %i.v, 1
  %i.z = and i64 %i.y, 8589934590
  %i.aa = or disjoint i64 %i.z, 1
  %i.ab = inttoptr i64 %i.aa to ptr
  br label %lean_dec.exit24

bb.j:                                             ; preds = %bb.h
  %i.ac = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %i.v) #6
  br label %lean_dec.exit24

lean_int_sub.exit:                                ; preds = %bb.g
  %i.ad = tail call ptr @lean_int_big_sub(ptr noundef %.1.i, ptr noundef %.0.i) #6
  br label %lean_dec.exit24

bb.k:                                             ; preds = %lean_obj_once.exit36
  %i.ae = tail call ptr @lean_int_big_sub(ptr noundef %.1.i, ptr noundef %.0.i) #6 ; 3 uses
  %i.af = load i32, ptr %.1.i, align 4, !tbaa !10 ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 1
  br i1 %i.ag, label %bb.l, label %bb.m, !prof !11

bb.l:                                             ; preds = %bb.k
  %i.ah = add nsw i32 %i.af, -1
  store i32 %i.ah, ptr %.1.i, align 4, !tbaa !10
  br label %lean_dec.exit24

bb.m:                                             ; preds = %bb.k
  %.not.i25 = icmp eq i32 %i.af, 0
  br i1 %.not.i25, label %lean_dec.exit24, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i) #6
  br label %lean_dec.exit24

lean_dec.exit24:                                  ; preds = %bb.j, %bb.i, %lean_int_sub.exit, %bb.n, %bb.m, %bb.l
  %.0.i3870 = phi ptr [ %i.ad, %lean_int_sub.exit ], [ %i.ae, %bb.n ], [ %i.ae, %bb.m ], [ %i.ae, %bb.l ], [ %i.ac, %bb.j ], [ %i.ab, %bb.i ] ; 7 uses
  %i.ai = ptrtoint ptr %.0.i3870 to i64           ; 2 uses
  %i.aj = and i64 %i.ai, 1
  %.not.i39 = icmp eq i64 %i.aj, 0
  br i1 %.not.i39, label %bb.t, label %bb.o, !prof !13

bb.o:                                             ; preds = %lean_dec.exit24
  %i.ak = ptrtoint ptr %.0.i35 to i64             ; 2 uses
  %i.al = and i64 %i.ak, 1
  %.not21.i = icmp eq i64 %i.al, 0
  br i1 %.not21.i, label %lean_int_emod.exit, label %bb.p, !prof !13

bb.p:                                             ; preds = %bb.o
  %i.am = shl i64 %i.ak, 31
  %i.an = ashr i64 %i.am, 32                      ; 3 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %lean_dec.exit22, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ap = shl i64 %i.ai, 31
  %i.aq = ashr i64 %i.ap, 32
  %i.ar = srem i64 %i.aq, %i.an                   ; 2 uses
  %i.as = icmp slt i64 %i.ar, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.an, i1 true)
  %i.at = select i1 %i.as, i64 %.p.i, i64 0
  %.0.i40 = add nsw i64 %i.at, %i.ar              ; 3 uses
  %1 = icmp slt i64 %.0.i40, 2147483648
  br i1 %1, label %bb.r, label %bb.s, !prof !11

bb.r:                                             ; preds = %bb.q
  %i.au = shl nsw i64 %.0.i40, 1
  %2 = and i64 %i.au, 8589934590
  %i.av = or disjoint i64 %2, 1
  %i.aw = inttoptr i64 %i.av to ptr
  br label %lean_dec.exit22

bb.s:                                             ; preds = %bb.q
  %i.ax = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %.0.i40) #6
  br label %lean_dec.exit22

lean_int_emod.exit:                               ; preds = %bb.o
  %i.ay = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3870, ptr noundef %.0.i35) #6
  br label %lean_dec.exit22

bb.t:                                             ; preds = %lean_dec.exit24
  %i.az = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3870, ptr noundef %.0.i35) #6 ; 3 uses
  %i.ba = load i32, ptr %.0.i3870, align 4, !tbaa !10 ; 3 uses
  %i.bb = icmp sgt i32 %i.ba, 1
  br i1 %i.bb, label %bb.u, label %bb.v, !prof !11

bb.u:                                             ; preds = %bb.t
  %i.bc = add nsw i32 %i.ba, -1
  store i32 %i.bc, ptr %.0.i3870, align 4, !tbaa !10
  br label %lean_dec.exit22

bb.v:                                             ; preds = %bb.t
  %.not.i26 = icmp eq i32 %i.ba, 0
  br i1 %.not.i26, label %lean_dec.exit22, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i3870) #6
  br label %lean_dec.exit22

lean_dec.exit22:                                  ; preds = %bb.s, %bb.r, %bb.p, %lean_int_emod.exit, %bb.w, %bb.v, %bb.u
  %.1.i4173 = phi ptr [ %i.ay, %lean_int_emod.exit ], [ %i.az, %bb.w ], [ %i.az, %bb.v ], [ %i.az, %bb.u ], [ %i.ax, %bb.s ], [ %i.aw, %bb.r ], [ %.0.i3870, %bb.p ] ; 6 uses
  %i.bd = ptrtoint ptr %.1.i4173 to i64           ; 2 uses
  %i.be = and i64 %i.bd, 1
  %.not.i43 = icmp eq i64 %i.be, 0
  br i1 %.not.i43, label %bb.ab, label %bb.x, !prof !13

bb.x:                                             ; preds = %lean_dec.exit22
  %i.bf = ptrtoint ptr %.0.i35 to i64             ; 2 uses
  %i.bg = and i64 %i.bf, 1
  %.not7.i44 = icmp eq i64 %i.bg, 0
  br i1 %.not7.i44, label %lean_int_add.exit, label %bb.y, !prof !13

bb.y:                                             ; preds = %bb.x
  %i.bh = shl i64 %i.bd, 31
  %i.bi = ashr i64 %i.bh, 32
  %i.bj = shl i64 %i.bf, 31
  %i.bk = ashr i64 %i.bj, 32
  %i.bl = add nsw i64 %i.bi, %i.bk                ; 3 uses
  %i.bm = add nsw i64 %i.bl, 2147483648
  %i.bn = icmp ult i64 %i.bm, 4294967296
  br i1 %i.bn, label %bb.z, label %bb.aa, !prof !11

bb.z:                                             ; preds = %bb.y
  %i.bo = shl nsw i64 %i.bl, 1
  %i.bp = and i64 %i.bo, 8589934590
  %i.bq = or disjoint i64 %i.bp, 1
  %i.br = inttoptr i64 %i.bq to ptr
  br label %lean_dec.exit20

bb.aa:                                            ; preds = %bb.y
  %i.bs = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %i.bl) #6
  br label %lean_dec.exit20

lean_int_add.exit:                                ; preds = %bb.x
  %i.bt = tail call ptr @lean_int_big_add(ptr noundef %.1.i4173, ptr noundef %.0.i35) #6
  br label %lean_dec.exit20

bb.ab:                                            ; preds = %lean_dec.exit22
  %i.bu = tail call ptr @lean_int_big_add(ptr noundef %.1.i4173, ptr noundef %.0.i35) #6 ; 3 uses
  %i.bv = load i32, ptr %.1.i4173, align 4, !tbaa !10 ; 3 uses
  %i.bw = icmp sgt i32 %i.bv, 1
  br i1 %i.bw, label %bb.ac, label %bb.ad, !prof !11

bb.ac:                                            ; preds = %bb.ab
  %i.bx = add nsw i32 %i.bv, -1
  store i32 %i.bx, ptr %.1.i4173, align 4, !tbaa !10
  br label %lean_dec.exit20

bb.ad:                                            ; preds = %bb.ab
  %.not.i28 = icmp eq i32 %i.bv, 0
  br i1 %.not.i28, label %lean_dec.exit20, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i4173) #6
  br label %lean_dec.exit20

lean_dec.exit20:                                  ; preds = %bb.aa, %bb.z, %lean_int_add.exit, %bb.ae, %bb.ad, %bb.ac
  %.0.i4576 = phi ptr [ %i.bt, %lean_int_add.exit ], [ %i.bu, %bb.ae ], [ %i.bu, %bb.ad ], [ %i.bu, %bb.ac ], [ %i.bs, %bb.aa ], [ %i.br, %bb.z ] ; 7 uses
  %i.by = ptrtoint ptr %.0.i4576 to i64           ; 2 uses
  %i.bz = and i64 %i.by, 1
  %.not.i47 = icmp eq i64 %i.bz, 0
  br i1 %.not.i47, label %bb.ak, label %bb.af, !prof !13

bb.af:                                            ; preds = %lean_dec.exit20
  %i.ca = ptrtoint ptr %.0.i35 to i64             ; 2 uses
  %i.cb = and i64 %i.ca, 1
  %.not21.i48 = icmp eq i64 %i.cb, 0
  br i1 %.not21.i48, label %lean_int_emod.exit53, label %bb.ag, !prof !13

bb.ag:                                            ; preds = %bb.af
  %i.cc = shl i64 %i.ca, 31
  %i.cd = ashr i64 %i.cc, 32                      ; 3 uses
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %lean_dec.exit18, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cf = shl i64 %i.by, 31
  %i.cg = ashr i64 %i.cf, 32
  %i.ch = srem i64 %i.cg, %i.cd                   ; 2 uses
  %i.ci = icmp slt i64 %i.ch, 0
  %.p.i49 = tail call i64 @llvm.abs.i64(i64 %i.cd, i1 true)
  %i.cj = select i1 %i.ci, i64 %.p.i49, i64 0
  %.0.i50 = add nsw i64 %i.cj, %i.ch              ; 3 uses
  %3 = icmp slt i64 %.0.i50, 2147483648
  br i1 %3, label %bb.ai, label %bb.aj, !prof !11

bb.ai:                                            ; preds = %bb.ah
  %i.ck = shl nsw i64 %.0.i50, 1
  %4 = and i64 %i.ck, 8589934590
  %i.cl = or disjoint i64 %4, 1
  %i.cm = inttoptr i64 %i.cl to ptr
  br label %lean_dec.exit18

bb.aj:                                            ; preds = %bb.ah
  %i.cn = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %.0.i50) #6
  br label %lean_dec.exit18

lean_int_emod.exit53:                             ; preds = %bb.af
  %i.co = tail call ptr @lean_int_big_emod(ptr noundef %.0.i4576, ptr noundef %.0.i35) #6
  br label %lean_dec.exit18

bb.ak:                                            ; preds = %lean_dec.exit20
  %i.cp = tail call ptr @lean_int_big_emod(ptr noundef %.0.i4576, ptr noundef %.0.i35) #6 ; 3 uses
  %i.cq = load i32, ptr %.0.i4576, align 4, !tbaa !10 ; 3 uses
  %i.cr = icmp sgt i32 %i.cq, 1
  br i1 %i.cr, label %bb.al, label %bb.am, !prof !11

bb.al:                                            ; preds = %bb.ak
  %i.cs = add nsw i32 %i.cq, -1
  store i32 %i.cs, ptr %.0.i4576, align 4, !tbaa !10
  br label %lean_dec.exit18

bb.am:                                            ; preds = %bb.ak
  %.not.i30 = icmp eq i32 %i.cq, 0
  br i1 %.not.i30, label %lean_dec.exit18, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i4576) #6
  br label %lean_dec.exit18

lean_dec.exit18:                                  ; preds = %bb.aj, %bb.ai, %bb.ag, %lean_int_emod.exit53, %bb.an, %bb.am, %bb.al
  %.1.i5179 = phi ptr [ %i.co, %lean_int_emod.exit53 ], [ %i.cp, %bb.an ], [ %i.cp, %bb.am ], [ %i.cp, %bb.al ], [ %i.cn, %bb.aj ], [ %i.cm, %bb.ai ], [ %.0.i4576, %bb.ag ] ; 6 uses
  %i.ct = ptrtoint ptr %.1.i5179 to i64           ; 2 uses
  %i.cu = and i64 %i.ct, 1
  %.not.i54 = icmp eq i64 %i.cu, 0
  br i1 %.not.i54, label %bb.as, label %bb.ao, !prof !13

bb.ao:                                            ; preds = %lean_dec.exit18
  %i.cv = ptrtoint ptr %.0.i to i64               ; 2 uses
  %i.cw = and i64 %i.cv, 1
  %.not7.i55 = icmp eq i64 %i.cw, 0
  br i1 %.not7.i55, label %lean_int_add.exit58, label %bb.ap, !prof !13

bb.ap:                                            ; preds = %bb.ao
  %i.cx = shl i64 %i.ct, 31
  %i.cy = ashr i64 %i.cx, 32
  %i.cz = shl i64 %i.cv, 31
  %i.da = ashr i64 %i.cz, 32
  %i.db = add nsw i64 %i.cy, %i.da                ; 3 uses
  %i.dc = add nsw i64 %i.db, 2147483648
  %i.dd = icmp ult i64 %i.dc, 4294967296
  br i1 %i.dd, label %bb.aq, label %bb.ar, !prof !11

bb.aq:                                            ; preds = %bb.ap
  %i.de = shl nsw i64 %i.db, 1
  %i.df = and i64 %i.de, 8589934590
  %i.dg = or disjoint i64 %i.df, 1
  %i.dh = inttoptr i64 %i.dg to ptr
  br label %lean_dec.exit

bb.ar:                                            ; preds = %bb.ap
  %i.di = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %i.db) #6
  br label %lean_dec.exit

lean_int_add.exit58:                              ; preds = %bb.ao
  %i.dj = tail call ptr @lean_int_big_add(ptr noundef %.1.i5179, ptr noundef %.0.i) #6
  br label %lean_dec.exit

bb.as:                                            ; preds = %lean_dec.exit18
  %i.dk = tail call ptr @lean_int_big_add(ptr noundef %.1.i5179, ptr noundef %.0.i) #6 ; 3 uses
  %i.dl = load i32, ptr %.1.i5179, align 4, !tbaa !10 ; 3 uses
  %i.dm = icmp sgt i32 %i.dl, 1
  br i1 %i.dm, label %bb.at, label %bb.au, !prof !11

bb.at:                                            ; preds = %bb.as
  %i.dn = add nsw i32 %i.dl, -1
  store i32 %i.dn, ptr %.1.i5179, align 4, !tbaa !10
  br label %lean_dec.exit

bb.au:                                            ; preds = %bb.as
  %.not.i32 = icmp eq i32 %i.dl, 0
  br i1 %.not.i32, label %lean_dec.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i5179) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.ar, %bb.aq, %lean_int_add.exit58, %bb.av, %bb.au, %bb.at
  %.0.i5682 = phi ptr [ %i.dj, %lean_int_add.exit58 ], [ %i.dk, %bb.av ], [ %i.dk, %bb.au ], [ %i.dk, %bb.at ], [ %i.di, %bb.ar ], [ %i.dh, %bb.aq ]
  ret ptr %.0.i5682
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Weekday_instOfNatOrdinal___aux__1___closed__3() #2 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instReprWeekday_repr___closed__15_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instReprWeekday_repr___closed__15, align 8, !tbaa !17
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instReprWeekday_repr___closed__15, ptr noundef nonnull @l_Std_Time_instReprWeekday_repr___closed__15_once, ptr noundef nonnull @_init_l_Std_Time_instReprWeekday_repr___closed__15) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Weekday_instOfNatOrdinal___aux__1___closed__2_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Weekday_instOfNatOrdinal___aux__1___closed__2, align 8, !tbaa !17
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_instOfNatOrdinal___aux__1___closed__2, ptr noundef nonnull @l_Std_Time_Weekday_instOfNatOrdinal___aux__1___closed__2_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_instOfNatOrdinal___aux__1___closed__2) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !13

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.i, 31
  %i.n = ashr i64 %i.m, 32
  %i.o = shl i64 %i.k, 31
  %i.p = ashr i64 %i.o, 32
  %i.q = add nsw i64 %i.n, %i.p                   ; 3 uses
  %i.r = add nsw i64 %i.q, 2147483648
  %i.s = icmp ult i64 %i.r, 4294967296
  br i1 %i.s, label %bb.h, label %bb.i, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.t = shl nsw i64 %i.q, 1
  %i.u = and i64 %i.t, 8589934590
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_add.exit

bb.i:                                             ; preds = %bb.g
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_Time_Weekday_instOfNatOrdinal(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instReprWeekday_repr___closed__15_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instReprWeekday_repr___closed__15, align 8, !tbaa !17
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instReprWeekday_repr___closed__15, ptr noundef nonnull @l_Std_Time_instReprWeekday_repr___closed__15_once, ptr noundef nonnull @_init_l_Std_Time_instReprWeekday_repr___closed__15) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 6 uses
  %i.e = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.f = and i64 %i.e, 1
  %.not.i34 = icmp eq i64 %i.f, 0
  %i.g = icmp ult ptr %0, inttoptr (i64 4294967296 to ptr)
  %or.cond.i = or i1 %i.g, %.not.i34
  br i1 %or.cond.i, label %lean_nat_to_int.exit, label %bb.d

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.h = lshr i64 %i.e, 1
  %i.i = tail call ptr @lean_big_size_t_to_int(i64 noundef %i.h) #6
  br label %lean_nat_to_int.exit

lean_nat_to_int.exit:                             ; preds = %lean_obj_once.exit, %bb.d
  %.1.i = phi ptr [ %0, %lean_obj_once.exit ], [ %i.i, %bb.d ] ; 6 uses
  %i.j = load atomic i32, ptr @l_Std_Time_Weekday_instOfNatOrdinal___aux__1___closed__3_once seq_cst, align 4, !tbaa !15
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.f, !prof !11

bb.e:                                             ; preds = %lean_nat_to_int.exit
  %i.l = load ptr, ptr @l_Std_Time_Weekday_instOfNatOrdinal___aux__1___closed__3, align 8, !tbaa !17
  br label %lean_obj_once.exit36

bb.f:                                             ; preds = %lean_nat_to_int.exit
  %i.m = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_instOfNatOrdinal___aux__1___closed__3, ptr noundef nonnull @l_Std_Time_Weekday_instOfNatOrdinal___aux__1___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_instOfNatOrdinal___aux__1___closed__3) #6
  br label %lean_obj_once.exit36

lean_obj_once.exit36:                             ; preds = %bb.e, %bb.f
  %.0.i35 = phi ptr [ %i.l, %bb.e ], [ %i.m, %bb.f ] ; 9 uses
  %i.n = ptrtoint ptr %.1.i to i64                ; 2 uses
  %i.o = and i64 %i.n, 1
  %.not.i37 = icmp eq i64 %i.o, 0
  br i1 %.not.i37, label %bb.k, label %bb.g, !prof !13

bb.g:                                             ; preds = %lean_obj_once.exit36
  %i.p = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.q = and i64 %i.p, 1
  %.not7.i = icmp eq i64 %i.q, 0
  br i1 %.not7.i, label %lean_int_sub.exit, label %bb.h, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.r = shl i64 %i.n, 31
  %i.s = ashr i64 %i.r, 32
  %i.t = shl i64 %i.p, 31
  %i.u = ashr i64 %i.t, 32
  %i.v = sub nsw i64 %i.s, %i.u                   ; 3 uses
  %i.w = add nsw i64 %i.v, 2147483648
  %i.x = icmp ult i64 %i.w, 4294967296
  br i1 %i.x, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.y = shl nsw i64 %i.v, 1
  %i.z = and i64 %i.y, 8589934590
  %i.aa = or disjoint i64 %i.z, 1
  %i.ab = inttoptr i64 %i.aa to ptr
  br label %lean_dec.exit24

bb.j:                                             ; preds = %bb.h
  %i.ac = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %i.v) #6
  br label %lean_dec.exit24

lean_int_sub.exit:                                ; preds = %bb.g
  %i.ad = tail call ptr @lean_int_big_sub(ptr noundef %.1.i, ptr noundef %.0.i) #6
  br label %lean_dec.exit24

bb.k:                                             ; preds = %lean_obj_once.exit36
  %i.ae = tail call ptr @lean_int_big_sub(ptr noundef %.1.i, ptr noundef %.0.i) #6 ; 3 uses
  %i.af = load i32, ptr %.1.i, align 4, !tbaa !10 ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 1
  br i1 %i.ag, label %bb.l, label %bb.m, !prof !11

bb.l:                                             ; preds = %bb.k
  %i.ah = add nsw i32 %i.af, -1
  store i32 %i.ah, ptr %.1.i, align 4, !tbaa !10
  br label %lean_dec.exit24

bb.m:                                             ; preds = %bb.k
  %.not.i25 = icmp eq i32 %i.af, 0
  br i1 %.not.i25, label %lean_dec.exit24, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i) #6
  br label %lean_dec.exit24

lean_dec.exit24:                                  ; preds = %bb.j, %bb.i, %lean_int_sub.exit, %bb.n, %bb.m, %bb.l
  %.0.i3870 = phi ptr [ %i.ad, %lean_int_sub.exit ], [ %i.ae, %bb.n ], [ %i.ae, %bb.m ], [ %i.ae, %bb.l ], [ %i.ac, %bb.j ], [ %i.ab, %bb.i ] ; 7 uses
  %i.ai = ptrtoint ptr %.0.i3870 to i64           ; 2 uses
  %i.aj = and i64 %i.ai, 1
  %.not.i39 = icmp eq i64 %i.aj, 0
  br i1 %.not.i39, label %bb.t, label %bb.o, !prof !13

bb.o:                                             ; preds = %lean_dec.exit24
  %i.ak = ptrtoint ptr %.0.i35 to i64             ; 2 uses
  %i.al = and i64 %i.ak, 1
  %.not21.i = icmp eq i64 %i.al, 0
  br i1 %.not21.i, label %lean_int_emod.exit, label %bb.p, !prof !13

bb.p:                                             ; preds = %bb.o
  %i.am = shl i64 %i.ak, 31
  %i.an = ashr i64 %i.am, 32                      ; 3 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %lean_dec.exit22, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ap = shl i64 %i.ai, 31
  %i.aq = ashr i64 %i.ap, 32
  %i.ar = srem i64 %i.aq, %i.an                   ; 2 uses
  %i.as = icmp slt i64 %i.ar, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.an, i1 true)
  %i.at = select i1 %i.as, i64 %.p.i, i64 0
  %.0.i40 = add nsw i64 %i.at, %i.ar              ; 3 uses
  %1 = icmp slt i64 %.0.i40, 2147483648
  br i1 %1, label %bb.r, label %bb.s, !prof !11

bb.r:                                             ; preds = %bb.q
  %i.au = shl nsw i64 %.0.i40, 1
  %2 = and i64 %i.au, 8589934590
  %i.av = or disjoint i64 %2, 1
  %i.aw = inttoptr i64 %i.av to ptr
  br label %lean_dec.exit22

bb.s:                                             ; preds = %bb.q
  %i.ax = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %.0.i40) #6
  br label %lean_dec.exit22

lean_int_emod.exit:                               ; preds = %bb.o
  %i.ay = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3870, ptr noundef %.0.i35) #6
  br label %lean_dec.exit22

bb.t:                                             ; preds = %lean_dec.exit24
  %i.az = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3870, ptr noundef %.0.i35) #6 ; 3 uses
  %i.ba = load i32, ptr %.0.i3870, align 4, !tbaa !10 ; 3 uses
  %i.bb = icmp sgt i32 %i.ba, 1
  br i1 %i.bb, label %bb.u, label %bb.v, !prof !11

bb.u:                                             ; preds = %bb.t
  %i.bc = add nsw i32 %i.ba, -1
  store i32 %i.bc, ptr %.0.i3870, align 4, !tbaa !10
  br label %lean_dec.exit22

bb.v:                                             ; preds = %bb.t
  %.not.i26 = icmp eq i32 %i.ba, 0
  br i1 %.not.i26, label %lean_dec.exit22, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i3870) #6
  br label %lean_dec.exit22

lean_dec.exit22:                                  ; preds = %bb.s, %bb.r, %bb.p, %lean_int_emod.exit, %bb.w, %bb.v, %bb.u
  %.1.i4173 = phi ptr [ %i.ay, %lean_int_emod.exit ], [ %i.az, %bb.w ], [ %i.az, %bb.v ], [ %i.az, %bb.u ], [ %i.ax, %bb.s ], [ %i.aw, %bb.r ], [ %.0.i3870, %bb.p ] ; 6 uses
  %i.bd = ptrtoint ptr %.1.i4173 to i64           ; 2 uses
  %i.be = and i64 %i.bd, 1
  %.not.i43 = icmp eq i64 %i.be, 0
  br i1 %.not.i43, label %bb.ab, label %bb.x, !prof !13

bb.x:                                             ; preds = %lean_dec.exit22
  %i.bf = ptrtoint ptr %.0.i35 to i64             ; 2 uses
  %i.bg = and i64 %i.bf, 1
  %.not7.i44 = icmp eq i64 %i.bg, 0
  br i1 %.not7.i44, label %lean_int_add.exit, label %bb.y, !prof !13

bb.y:                                             ; preds = %bb.x
  %i.bh = shl i64 %i.bd, 31
  %i.bi = ashr i64 %i.bh, 32
  %i.bj = shl i64 %i.bf, 31
  %i.bk = ashr i64 %i.bj, 32
  %i.bl = add nsw i64 %i.bi, %i.bk                ; 3 uses
  %i.bm = add nsw i64 %i.bl, 2147483648
  %i.bn = icmp ult i64 %i.bm, 4294967296
  br i1 %i.bn, label %bb.z, label %bb.aa, !prof !11

bb.z:                                             ; preds = %bb.y
  %i.bo = shl nsw i64 %i.bl, 1
  %i.bp = and i64 %i.bo, 8589934590
  %i.bq = or disjoint i64 %i.bp, 1
  %i.br = inttoptr i64 %i.bq to ptr
  br label %lean_dec.exit20

bb.aa:                                            ; preds = %bb.y
  %i.bs = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %i.bl) #6
  br label %lean_dec.exit20

lean_int_add.exit:                                ; preds = %bb.x
  %i.bt = tail call ptr @lean_int_big_add(ptr noundef %.1.i4173, ptr noundef %.0.i35) #6
  br label %lean_dec.exit20

bb.ab:                                            ; preds = %lean_dec.exit22
  %i.bu = tail call ptr @lean_int_big_add(ptr noundef %.1.i4173, ptr noundef %.0.i35) #6 ; 3 uses
  %i.bv = load i32, ptr %.1.i4173, align 4, !tbaa !10 ; 3 uses
  %i.bw = icmp sgt i32 %i.bv, 1
  br i1 %i.bw, label %bb.ac, label %bb.ad, !prof !11

bb.ac:                                            ; preds = %bb.ab
  %i.bx = add nsw i32 %i.bv, -1
  store i32 %i.bx, ptr %.1.i4173, align 4, !tbaa !10
  br label %lean_dec.exit20

bb.ad:                                            ; preds = %bb.ab
  %.not.i28 = icmp eq i32 %i.bv, 0
  br i1 %.not.i28, label %lean_dec.exit20, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i4173) #6
  br label %lean_dec.exit20

lean_dec.exit20:                                  ; preds = %bb.aa, %bb.z, %lean_int_add.exit, %bb.ae, %bb.ad, %bb.ac
  %.0.i4576 = phi ptr [ %i.bt, %lean_int_add.exit ], [ %i.bu, %bb.ae ], [ %i.bu, %bb.ad ], [ %i.bu, %bb.ac ], [ %i.bs, %bb.aa ], [ %i.br, %bb.z ] ; 7 uses
  %i.by = ptrtoint ptr %.0.i4576 to i64           ; 2 uses
  %i.bz = and i64 %i.by, 1
  %.not.i47 = icmp eq i64 %i.bz, 0
  br i1 %.not.i47, label %bb.ak, label %bb.af, !prof !13

bb.af:                                            ; preds = %lean_dec.exit20
  %i.ca = ptrtoint ptr %.0.i35 to i64             ; 2 uses
  %i.cb = and i64 %i.ca, 1
  %.not21.i48 = icmp eq i64 %i.cb, 0
  br i1 %.not21.i48, label %lean_int_emod.exit53, label %bb.ag, !prof !13

bb.ag:                                            ; preds = %bb.af
  %i.cc = shl i64 %i.ca, 31
  %i.cd = ashr i64 %i.cc, 32                      ; 3 uses
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %lean_dec.exit18, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cf = shl i64 %i.by, 31
  %i.cg = ashr i64 %i.cf, 32
  %i.ch = srem i64 %i.cg, %i.cd                   ; 2 uses
  %i.ci = icmp slt i64 %i.ch, 0
  %.p.i49 = tail call i64 @llvm.abs.i64(i64 %i.cd, i1 true)
  %i.cj = select i1 %i.ci, i64 %.p.i49, i64 0
  %.0.i50 = add nsw i64 %i.cj, %i.ch              ; 3 uses
  %3 = icmp slt i64 %.0.i50, 2147483648
  br i1 %3, label %bb.ai, label %bb.aj, !prof !11

bb.ai:                                            ; preds = %bb.ah
  %i.ck = shl nsw i64 %.0.i50, 1
  %4 = and i64 %i.ck, 8589934590
  %i.cl = or disjoint i64 %4, 1
  %i.cm = inttoptr i64 %i.cl to ptr
  br label %lean_dec.exit18

bb.aj:                                            ; preds = %bb.ah
  %i.cn = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %.0.i50) #6
  br label %lean_dec.exit18

lean_int_emod.exit53:                             ; preds = %bb.af
  %i.co = tail call ptr @lean_int_big_emod(ptr noundef %.0.i4576, ptr noundef %.0.i35) #6
  br label %lean_dec.exit18

bb.ak:                                            ; preds = %lean_dec.exit20
  %i.cp = tail call ptr @lean_int_big_emod(ptr noundef %.0.i4576, ptr noundef %.0.i35) #6 ; 3 uses
  %i.cq = load i32, ptr %.0.i4576, align 4, !tbaa !10 ; 3 uses
  %i.cr = icmp sgt i32 %i.cq, 1
  br i1 %i.cr, label %bb.al, label %bb.am, !prof !11

bb.al:                                            ; preds = %bb.ak
  %i.cs = add nsw i32 %i.cq, -1
  store i32 %i.cs, ptr %.0.i4576, align 4, !tbaa !10
  br label %lean_dec.exit18

bb.am:                                            ; preds = %bb.ak
  %.not.i30 = icmp eq i32 %i.cq, 0
  br i1 %.not.i30, label %lean_dec.exit18, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i4576) #6
  br label %lean_dec.exit18

lean_dec.exit18:                                  ; preds = %bb.aj, %bb.ai, %bb.ag, %lean_int_emod.exit53, %bb.an, %bb.am, %bb.al
  %.1.i5179 = phi ptr [ %i.co, %lean_int_emod.exit53 ], [ %i.cp, %bb.an ], [ %i.cp, %bb.am ], [ %i.cp, %bb.al ], [ %i.cn, %bb.aj ], [ %i.cm, %bb.ai ], [ %.0.i4576, %bb.ag ] ; 6 uses
  %i.ct = ptrtoint ptr %.1.i5179 to i64           ; 2 uses
  %i.cu = and i64 %i.ct, 1
  %.not.i54 = icmp eq i64 %i.cu, 0
  br i1 %.not.i54, label %bb.as, label %bb.ao, !prof !13

bb.ao:                                            ; preds = %lean_dec.exit18
  %i.cv = ptrtoint ptr %.0.i to i64               ; 2 uses
  %i.cw = and i64 %i.cv, 1
  %.not7.i55 = icmp eq i64 %i.cw, 0
  br i1 %.not7.i55, label %lean_int_add.exit58, label %bb.ap, !prof !13

bb.ap:                                            ; preds = %bb.ao
  %i.cx = shl i64 %i.ct, 31
  %i.cy = ashr i64 %i.cx, 32
  %i.cz = shl i64 %i.cv, 31
  %i.da = ashr i64 %i.cz, 32
  %i.db = add nsw i64 %i.cy, %i.da                ; 3 uses
  %i.dc = add nsw i64 %i.db, 2147483648
  %i.dd = icmp ult i64 %i.dc, 4294967296
  br i1 %i.dd, label %bb.aq, label %bb.ar, !prof !11

bb.aq:                                            ; preds = %bb.ap
  %i.de = shl nsw i64 %i.db, 1
  %i.df = and i64 %i.de, 8589934590
  %i.dg = or disjoint i64 %i.df, 1
  %i.dh = inttoptr i64 %i.dg to ptr
  br label %lean_dec.exit

bb.ar:                                            ; preds = %bb.ap
  %i.di = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %i.db) #6
  br label %lean_dec.exit

lean_int_add.exit58:                              ; preds = %bb.ao
  %i.dj = tail call ptr @lean_int_big_add(ptr noundef %.1.i5179, ptr noundef %.0.i) #6
  br label %lean_dec.exit

bb.as:                                            ; preds = %lean_dec.exit18
  %i.dk = tail call ptr @lean_int_big_add(ptr noundef %.1.i5179, ptr noundef %.0.i) #6 ; 3 uses
  %i.dl = load i32, ptr %.1.i5179, align 4, !tbaa !10 ; 3 uses
  %i.dm = icmp sgt i32 %i.dl, 1
  br i1 %i.dm, label %bb.at, label %bb.au, !prof !11

bb.at:                                            ; preds = %bb.as
  %i.dn = add nsw i32 %i.dl, -1
  store i32 %i.dn, ptr %.1.i5179, align 4, !tbaa !10
  br label %lean_dec.exit

bb.au:                                            ; preds = %bb.as
  %.not.i32 = icmp eq i32 %i.dl, 0
  br i1 %.not.i32, label %lean_dec.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i5179) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.ar, %bb.aq, %lean_int_add.exit58, %bb.av, %bb.au, %bb.at
  %.0.i5682 = phi ptr [ %i.dj, %lean_int_add.exit58 ], [ %i.dk, %bb.av ], [ %i.dk, %bb.au ], [ %i.dk, %bb.at ], [ %i.di, %bb.ar ], [ %i.dh, %bb.aq ]
  ret ptr %.0.i5682
}

; Function Attrs: nounwind uwtable
define zeroext range(i8 0, 3) i8 @l_Std_Time_Weekday_instOrdOrdinal___aux__1(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1                          ; 2 uses
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %lean_int_dec_lt.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = and i64 %i.c, 1
  %.not7.i.i = icmp eq i64 %i.d, 0
  br i1 %.not7.i.i, label %lean_int_dec_lt.exit, label %.split, !prof !13

.split:                                           ; preds = %bb.b
  %i.e = lshr i64 %i.a, 1
  %i.f = trunc i64 %i.e to i32
  %i.g = lshr i64 %i.c, 1
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.f, %i.h
  br i1 %i.i, label %bb.e, label %bb.c

lean_int_dec_lt.exit:                             ; preds = %bb.a, %bb.b
  %i.j = tail call zeroext i1 @lean_int_big_lt(ptr noundef %0, ptr noundef %1) #6
  br i1 %i.j, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.split, %lean_int_dec_lt.exit
  %i.k = ptrtoint ptr %1 to i64
  %i.l = and i64 %i.b, %i.k
  %or.cond.not.i.i = icmp eq i64 %i.l, 0
  br i1 %or.cond.not.i.i, label %.critedge.i.i10, label %bb.d, !prof !18

bb.d:                                             ; preds = %bb.c
  %i.m = icmp eq ptr %0, %1
  br label %lean_int_dec_eq.exit

.critedge.i.i10:                                  ; preds = %bb.c
  %i.n = tail call zeroext i1 @lean_int_big_eq(ptr noundef %0, ptr noundef %1) #6
  br label %lean_int_dec_eq.exit

lean_int_dec_eq.exit:                             ; preds = %bb.d, %.critedge.i.i10
  %.0.i.i9 = phi i1 [ %i.m, %bb.d ], [ %i.n, %.critedge.i.i10 ]
  %. = select i1 %.0.i.i9, i8 1, i8 2
  br label %bb.e

bb.e:                                             ; preds = %.split, %lean_int_dec_lt.exit, %lean_int_dec_eq.exit
  %.1 = phi i8 [ %., %lean_int_dec_eq.exit ], [ 0, %lean_int_dec_lt.exit ], [ 0, %.split ]
  ret i8 %.1
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Std_Time_Weekday_instOrdOrdinal___aux__1___boxed(ptr noundef %0, ptr noundef %1) #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.b, 0               ; 2 uses
  br i1 %.not.i.i.i, label %lean_int_dec_lt.exit.i, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.d = and i64 %i.c, 1
  %.not7.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not7.i.i.i, label %lean_int_dec_lt.exit.i, label %.split.i, !prof !13

.split.i:                                         ; preds = %bb.b
  %i.e = lshr i64 %i.a, 1
  %i.f = trunc i64 %i.e to i32
  %i.g = lshr i64 %i.c, 1
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.f, %i.h
  br i1 %i.i, label %l_Std_Time_Weekday_instOrdOrdinal___aux__1.exit, label %lean_int_dec_lt.exit.i._crit_edge

lean_int_dec_lt.exit.i:                           ; preds = %bb.b, %bb.a
  %i.j = tail call zeroext i1 @lean_int_big_lt(ptr noundef %0, ptr noundef %1) #6
  %.pre = ptrtoint ptr %1 to i64                  ; 2 uses
  br i1 %i.j, label %l_Std_Time_Weekday_instOrdOrdinal___aux__1.exit, label %lean_int_dec_lt.exit.i._crit_edge

lean_int_dec_lt.exit.i._crit_edge:                ; preds = %lean_int_dec_lt.exit.i, %.split.i
  %.pre-phi11 = phi i64 [ %i.c, %.split.i ], [ %.pre, %lean_int_dec_lt.exit.i ] ; 2 uses
  %i.k = and i64 %i.b, %.pre-phi11
  %or.cond.not.i.i.i = icmp eq i64 %i.k, 0
  br i1 %or.cond.not.i.i.i, label %.critedge.i.i10.i, label %bb.c, !prof !18

bb.c:                                             ; preds = %lean_int_dec_lt.exit.i._crit_edge
  %i.l = icmp eq ptr %0, %1
  br label %lean_int_dec_eq.exit.i

.critedge.i.i10.i:                                ; preds = %lean_int_dec_lt.exit.i._crit_edge
  %i.m = tail call zeroext i1 @lean_int_big_eq(ptr noundef %0, ptr noundef %1) #6
  br label %lean_int_dec_eq.exit.i

lean_int_dec_eq.exit.i:                           ; preds = %.critedge.i.i10.i, %bb.c
  %.0.i.i9.i = phi i1 [ %i.l, %bb.c ], [ %i.m, %.critedge.i.i10.i ]
  %i.n = select i1 %.0.i.i9.i, i64 3, i64 5
  br label %l_Std_Time_Weekday_instOrdOrdinal___aux__1.exit

l_Std_Time_Weekday_instOrdOrdinal___aux__1.exit:  ; preds = %lean_int_dec_lt.exit.i, %.split.i, %lean_int_dec_eq.exit.i
  %.pre-phi = phi i64 [ %.pre-phi11, %lean_int_dec_eq.exit.i ], [ %i.c, %.split.i ], [ %.pre, %lean_int_dec_lt.exit.i ]
  %.1.i = phi i64 [ %i.n, %lean_int_dec_eq.exit.i ], [ 1, %.split.i ], [ 1, %lean_int_dec_lt.exit.i ]
  %i.o = and i64 %.pre-phi, 1
  %.not.i5 = icmp eq i64 %i.o, 0
  br i1 %.not.i5, label %bb.d, label %lean_dec.exit6

bb.d:                                             ; preds = %l_Std_Time_Weekday_instOrdOrdinal___aux__1.exit
  %i.p = load i32, ptr %1, align 4, !tbaa !10     ; 3 uses
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !11

end_hunk_0
begin_hunk_1_@_init_l_Std_Time_Weekday_instOfNatOrdinal___aux__1___closed__2:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instReprWeekday_repr___closed__15, align 8, !tbaa !17
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instReprWeekday_repr___closed__15, ptr noundef nonnull @l_Std_Time_instReprWeekday_repr___closed__15_once, ptr noundef nonnull @_init_l_Std_Time_instReprWeekday_repr___closed__15) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Weekday_instOfNatOrdinal___aux__1___closed__1_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Weekday_instOfNatOrdinal___aux__1___closed__1, align 8, !tbaa !17
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_instOfNatOrdinal___aux__1___closed__1, ptr noundef nonnull @l_Std_Time_Weekday_instOfNatOrdinal___aux__1___closed__1_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_instOfNatOrdinal___aux__1___closed__1) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !13

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.i, 31
  %i.n = ashr i64 %i.m, 32
  %i.o = shl i64 %i.k, 31
  %i.p = ashr i64 %i.o, 32
  %i.q = sub nsw i64 %i.n, %i.p                   ; 3 uses
  %i.r = add nsw i64 %i.q, 2147483648
  %i.s = icmp ult i64 %i.r, 4294967296
  br i1 %i.s, label %bb.h, label %bb.i, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.t = shl nsw i64 %i.q, 1
  %i.u = and i64 %i.t, 8589934590
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_sub.exit

bb.i:                                             ; preds = %bb.g
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %i.q) #6
  br label %lean_int_sub.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_sub(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_sub.exit

lean_int_sub.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Weekday_instOfNatOrdinal___aux__1___closed__1() #2 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Weekday_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Weekday_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !17
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Weekday_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_instOfNatOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_instReprWeekday_repr___closed__15_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_instReprWeekday_repr___closed__15, align 8, !tbaa !17
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instReprWeekday_repr___closed__15, ptr noundef nonnull @l_Std_Time_instReprWeekday_repr___closed__15_once, ptr noundef nonnull @_init_l_Std_Time_instReprWeekday_repr___closed__15) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !13

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.i, 31
  %i.n = ashr i64 %i.m, 32
  %i.o = shl i64 %i.k, 31
  %i.p = ashr i64 %i.o, 32
  %i.q = add nsw i64 %i.n, %i.p                   ; 3 uses
  %i.r = add nsw i64 %i.q, 2147483648
  %i.s = icmp ult i64 %i.r, 4294967296
  br i1 %i.s, label %bb.h, label %bb.i, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.t = shl nsw i64 %i.q, 1
  %i.u = and i64 %i.t, 8589934590
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_add.exit

bb.i:                                             ; preds = %bb.g
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_init_l_Std_Time_Weekday_instOfNatOrdinal___aux__1___closed__0() #0 {
bb.a:
  ret ptr inttoptr (i64 13 to ptr)
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Weekday_toOrdinal___closed__6() #2 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Weekday_toOrdinal___closed__3_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Weekday_toOrdinal___closed__3, align 8, !tbaa !17
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__3, ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_toOrdinal___closed__3) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Weekday_toOrdinal___closed__5_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Weekday_toOrdinal___closed__5, align 8, !tbaa !17
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__5, ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__5_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_toOrdinal___closed__5) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !13

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.k, 31
  %i.n = ashr i64 %i.m, 32                        ; 3 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %lean_int_emod.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = shl i64 %i.i, 31
  %i.q = ashr i64 %i.p, 32
  %i.r = srem i64 %i.q, %i.n                      ; 2 uses
  %i.s = icmp slt i64 %i.r, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.n, i1 true)
  %i.t = select i1 %i.s, i64 %.p.i, i64 0
  %.0.i5 = add nsw i64 %i.t, %i.r                 ; 3 uses
  %0 = icmp slt i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nsw i64 %.0.i5, 1
  %1 = and i64 %i.u, 8589934590
  %i.v = or disjoint i64 %1, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Weekday_toOrdinal___closed__3() #2 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instReprWeekday_repr___closed__15_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instReprWeekday_repr___closed__15, align 8, !tbaa !17
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instReprWeekday_repr___closed__15, ptr noundef nonnull @l_Std_Time_instReprWeekday_repr___closed__15_once, ptr noundef nonnull @_init_l_Std_Time_instReprWeekday_repr___closed__15) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Weekday_toOrdinal___closed__2_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Weekday_toOrdinal___closed__2, align 8, !tbaa !17
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__2, ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__2_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_toOrdinal___closed__2) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !13

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.i, 31
  %i.n = ashr i64 %i.m, 32
  %i.o = shl i64 %i.k, 31
  %i.p = ashr i64 %i.o, 32
  %i.q = add nsw i64 %i.n, %i.p                   ; 3 uses
  %i.r = add nsw i64 %i.q, 2147483648
  %i.s = icmp ult i64 %i.r, 4294967296
  br i1 %i.s, label %bb.h, label %bb.i, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.t = shl nsw i64 %i.q, 1
  %i.u = and i64 %i.t, 8589934590
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_add.exit

bb.i:                                             ; preds = %bb.g
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Weekday_toOrdinal___closed__5() #2 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Weekday_toOrdinal___closed__3_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Weekday_toOrdinal___closed__3, align 8, !tbaa !17
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__3, ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_toOrdinal___closed__3) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Weekday_toOrdinal___closed__4_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Weekday_toOrdinal___closed__4, align 8, !tbaa !17
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__4, ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_toOrdinal___closed__4) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !13

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.i, 31
  %i.n = ashr i64 %i.m, 32
  %i.o = shl i64 %i.k, 31
  %i.p = ashr i64 %i.o, 32
  %i.q = add nsw i64 %i.n, %i.p                   ; 3 uses
  %i.r = add nsw i64 %i.q, 2147483648
  %i.s = icmp ult i64 %i.r, 4294967296
  br i1 %i.s, label %bb.h, label %bb.i, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.t = shl nsw i64 %i.q, 1
  %i.u = and i64 %i.t, 8589934590
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_add.exit

bb.i:                                             ; preds = %bb.g
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Weekday_toOrdinal___closed__2() #2 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instReprWeekday_repr___closed__15_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instReprWeekday_repr___closed__15, align 8, !tbaa !17
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instReprWeekday_repr___closed__15, ptr noundef nonnull @l_Std_Time_instReprWeekday_repr___closed__15_once, ptr noundef nonnull @_init_l_Std_Time_instReprWeekday_repr___closed__15) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Weekday_toOrdinal___closed__1_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Weekday_toOrdinal___closed__1, align 8, !tbaa !17
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__1, ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__1_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_toOrdinal___closed__1) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !13

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.i, 31
  %i.n = ashr i64 %i.m, 32
  %i.o = shl i64 %i.k, 31
  %i.p = ashr i64 %i.o, 32
  %i.q = sub nsw i64 %i.n, %i.p                   ; 3 uses
  %i.r = add nsw i64 %i.q, 2147483648
  %i.s = icmp ult i64 %i.r, 4294967296
  br i1 %i.s, label %bb.h, label %bb.i, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.t = shl nsw i64 %i.q, 1
  %i.u = and i64 %i.t, 8589934590
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_sub.exit

bb.i:                                             ; preds = %bb.g
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %i.q) #6
  br label %lean_int_sub.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_sub(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_sub.exit

lean_int_sub.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Weekday_toOrdinal___closed__1() #2 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Weekday_toOrdinal___closed__0_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Weekday_toOrdinal___closed__0, align 8, !tbaa !17
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__0, ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_toOrdinal___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_instReprWeekday_repr___closed__15_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_instReprWeekday_repr___closed__15, align 8, !tbaa !17
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instReprWeekday_repr___closed__15, ptr noundef nonnull @l_Std_Time_instReprWeekday_repr___closed__15_once, ptr noundef nonnull @_init_l_Std_Time_instReprWeekday_repr___closed__15) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !13

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.i, 31
  %i.n = ashr i64 %i.m, 32
  %i.o = shl i64 %i.k, 31
  %i.p = ashr i64 %i.o, 32
  %i.q = add nsw i64 %i.n, %i.p                   ; 3 uses
  %i.r = add nsw i64 %i.q, 2147483648
  %i.s = icmp ult i64 %i.r, 4294967296
  br i1 %i.s, label %bb.h, label %bb.i, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.t = shl nsw i64 %i.q, 1
  %i.u = and i64 %i.t, 8589934590
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_add.exit

bb.i:                                             ; preds = %bb.g
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_init_l_Std_Time_Weekday_toOrdinal___closed__0() #0 {
bb.a:
  ret ptr inttoptr (i64 13 to ptr)
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Weekday_toOrdinal___closed__4() #2 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Weekday_toOrdinal___closed__3_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Weekday_toOrdinal___closed__3, align 8, !tbaa !17
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__3, ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_toOrdinal___closed__3) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Weekday_instInhabitedOrdinal___closed__0_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Weekday_instInhabitedOrdinal___closed__0, align 8, !tbaa !17
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_instInhabitedOrdinal___closed__0, ptr noundef nonnull @l_Std_Time_Weekday_instInhabitedOrdinal___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_instInhabitedOrdinal___closed__0) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !13

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.k, 31
  %i.n = ashr i64 %i.m, 32                        ; 3 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %lean_int_emod.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = shl i64 %i.i, 31
  %i.q = ashr i64 %i.p, 32
  %i.r = srem i64 %i.q, %i.n                      ; 2 uses
  %i.s = icmp slt i64 %i.r, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.n, i1 true)
  %i.t = select i1 %i.s, i64 %.p.i, i64 0
  %.0.i5 = add nsw i64 %i.t, %i.r                 ; 3 uses
  %0 = icmp slt i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nsw i64 %.0.i5, 1
  %1 = and i64 %i.u, 8589934590
  %i.v = or disjoint i64 %1, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Weekday_instInhabitedOrdinal___closed__0() #2 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instReprWeekday_repr___closed__15_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instReprWeekday_repr___closed__15, align 8, !tbaa !17
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instReprWeekday_repr___closed__15, ptr noundef nonnull @l_Std_Time_instReprWeekday_repr___closed__15_once, ptr noundef nonnull @_init_l_Std_Time_instReprWeekday_repr___closed__15) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 3 uses
  %i.e = ptrtoint ptr %.0.i to i64
  %i.f = and i64 %i.e, 1
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %.critedge.i, label %lean_int_sub.exit, !prof !13

.critedge.i:                                      ; preds = %lean_obj_once.exit
  %i.g = tail call ptr @lean_int_big_sub(ptr noundef %.0.i, ptr noundef %.0.i) #6
  br label %lean_int_sub.exit

lean_int_sub.exit:                                ; preds = %lean_obj_once.exit, %.critedge.i
  %.0.i3 = phi ptr [ %i.g, %.critedge.i ], [ inttoptr (i64 1 to ptr), %lean_obj_once.exit ]
  ret ptr %.0.i3
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Weekday_toOrdinal___closed__11() #2 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Weekday_toOrdinal___closed__3_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Weekday_toOrdinal___closed__3, align 8, !tbaa !17
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__3, ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_toOrdinal___closed__3) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Weekday_toOrdinal___closed__10_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Weekday_toOrdinal___closed__10, align 8, !tbaa !17
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__10, ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__10_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_toOrdinal___closed__10) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !13

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.k, 31
  %i.n = ashr i64 %i.m, 32                        ; 3 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %lean_int_emod.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = shl i64 %i.i, 31
  %i.q = ashr i64 %i.p, 32
  %i.r = srem i64 %i.q, %i.n                      ; 2 uses
  %i.s = icmp slt i64 %i.r, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.n, i1 true)
  %i.t = select i1 %i.s, i64 %.p.i, i64 0
  %.0.i5 = add nsw i64 %i.t, %i.r                 ; 3 uses
  %0 = icmp slt i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nsw i64 %.0.i5, 1
  %1 = and i64 %i.u, 8589934590
  %i.v = or disjoint i64 %1, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Weekday_toOrdinal___closed__10() #2 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Weekday_toOrdinal___closed__3_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Weekday_toOrdinal___closed__3, align 8, !tbaa !17
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__3, ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_toOrdinal___closed__3) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Weekday_toOrdinal___closed__9_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Weekday_toOrdinal___closed__9, align 8, !tbaa !17
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__9, ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__9_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_toOrdinal___closed__9) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !13

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.i, 31
  %i.n = ashr i64 %i.m, 32
  %i.o = shl i64 %i.k, 31
  %i.p = ashr i64 %i.o, 32
  %i.q = add nsw i64 %i.n, %i.p                   ; 3 uses
  %i.r = add nsw i64 %i.q, 2147483648
  %i.s = icmp ult i64 %i.r, 4294967296
  br i1 %i.s, label %bb.h, label %bb.i, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.t = shl nsw i64 %i.q, 1
  %i.u = and i64 %i.t, 8589934590
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_add.exit

bb.i:                                             ; preds = %bb.g
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Weekday_toOrdinal___closed__9() #2 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Weekday_toOrdinal___closed__3_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Weekday_toOrdinal___closed__3, align 8, !tbaa !17
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__3, ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_toOrdinal___closed__3) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Weekday_toOrdinal___closed__8_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Weekday_toOrdinal___closed__8, align 8, !tbaa !17
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__8, ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__8_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_toOrdinal___closed__8) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !13

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.k, 31
  %i.n = ashr i64 %i.m, 32                        ; 3 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %lean_int_emod.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = shl i64 %i.i, 31
  %i.q = ashr i64 %i.p, 32
  %i.r = srem i64 %i.q, %i.n                      ; 2 uses
  %i.s = icmp slt i64 %i.r, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.n, i1 true)
  %i.t = select i1 %i.s, i64 %.p.i, i64 0
  %.0.i5 = add nsw i64 %i.t, %i.r                 ; 3 uses
  %0 = icmp slt i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nsw i64 %.0.i5, 1
  %1 = and i64 %i.u, 8589934590
  %i.v = or disjoint i64 %1, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Weekday_toOrdinal___closed__8() #2 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instReprWeekday_repr___closed__15_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instReprWeekday_repr___closed__15, align 8, !tbaa !17
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instReprWeekday_repr___closed__15, ptr noundef nonnull @l_Std_Time_instReprWeekday_repr___closed__15_once, ptr noundef nonnull @_init_l_Std_Time_instReprWeekday_repr___closed__15) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_instReprWeekday_repr___closed__14_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_instReprWeekday_repr___closed__14, align 8, !tbaa !17
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instReprWeekday_repr___closed__14, ptr noundef nonnull @l_Std_Time_instReprWeekday_repr___closed__14_once, ptr noundef nonnull @_init_l_Std_Time_instReprWeekday_repr___closed__14) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !13

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.i, 31
  %i.n = ashr i64 %i.m, 32
  %i.o = shl i64 %i.k, 31
  %i.p = ashr i64 %i.o, 32
  %i.q = sub nsw i64 %i.n, %i.p                   ; 3 uses
  %i.r = add nsw i64 %i.q, 2147483648
  %i.s = icmp ult i64 %i.r, 4294967296
  br i1 %i.s, label %bb.h, label %bb.i, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.t = shl nsw i64 %i.q, 1
  %i.u = and i64 %i.t, 8589934590
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_sub.exit

bb.i:                                             ; preds = %bb.g
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %i.q) #6
  br label %lean_int_sub.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_sub(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_sub.exit

lean_int_sub.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Weekday_toOrdinal___closed__17() #2 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Weekday_toOrdinal___closed__3_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Weekday_toOrdinal___closed__3, align 8, !tbaa !17
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__3, ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_toOrdinal___closed__3) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Weekday_toOrdinal___closed__16_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Weekday_toOrdinal___closed__16, align 8, !tbaa !17
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__16, ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__16_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_toOrdinal___closed__16) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !13

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.k, 31
  %i.n = ashr i64 %i.m, 32                        ; 3 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %lean_int_emod.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = shl i64 %i.i, 31
  %i.q = ashr i64 %i.p, 32
  %i.r = srem i64 %i.q, %i.n                      ; 2 uses
  %i.s = icmp slt i64 %i.r, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.n, i1 true)
  %i.t = select i1 %i.s, i64 %.p.i, i64 0
  %.0.i5 = add nsw i64 %i.t, %i.r                 ; 3 uses
  %0 = icmp slt i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nsw i64 %.0.i5, 1
  %1 = and i64 %i.u, 8589934590
  %i.v = or disjoint i64 %1, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Weekday_toOrdinal___closed__16() #2 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Weekday_toOrdinal___closed__3_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Weekday_toOrdinal___closed__3, align 8, !tbaa !17
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__3, ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_toOrdinal___closed__3) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Weekday_toOrdinal___closed__15_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Weekday_toOrdinal___closed__15, align 8, !tbaa !17
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__15, ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__15_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_toOrdinal___closed__15) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !13

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.i, 31
  %i.n = ashr i64 %i.m, 32
  %i.o = shl i64 %i.k, 31
  %i.p = ashr i64 %i.o, 32
  %i.q = add nsw i64 %i.n, %i.p                   ; 3 uses
  %i.r = add nsw i64 %i.q, 2147483648
  %i.s = icmp ult i64 %i.r, 4294967296
  br i1 %i.s, label %bb.h, label %bb.i, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.t = shl nsw i64 %i.q, 1
  %i.u = and i64 %i.t, 8589934590
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_add.exit

bb.i:                                             ; preds = %bb.g
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Weekday_toOrdinal___closed__15() #2 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Weekday_toOrdinal___closed__3_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Weekday_toOrdinal___closed__3, align 8, !tbaa !17
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__3, ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_toOrdinal___closed__3) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Weekday_toOrdinal___closed__14_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Weekday_toOrdinal___closed__14, align 8, !tbaa !17
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__14, ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__14_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_toOrdinal___closed__14) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !13

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.k, 31
  %i.n = ashr i64 %i.m, 32                        ; 3 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %lean_int_emod.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = shl i64 %i.i, 31
  %i.q = ashr i64 %i.p, 32
  %i.r = srem i64 %i.q, %i.n                      ; 2 uses
  %i.s = icmp slt i64 %i.r, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.n, i1 true)
  %i.t = select i1 %i.s, i64 %.p.i, i64 0
  %.0.i5 = add nsw i64 %i.t, %i.r                 ; 3 uses
  %0 = icmp slt i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nsw i64 %.0.i5, 1
  %1 = and i64 %i.u, 8589934590
  %i.v = or disjoint i64 %1, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Weekday_toOrdinal___closed__14() #2 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instReprWeekday_repr___closed__15_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instReprWeekday_repr___closed__15, align 8, !tbaa !17
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instReprWeekday_repr___closed__15, ptr noundef nonnull @l_Std_Time_instReprWeekday_repr___closed__15_once, ptr noundef nonnull @_init_l_Std_Time_instReprWeekday_repr___closed__15) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Weekday_toOrdinal___closed__13_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Weekday_toOrdinal___closed__13, align 8, !tbaa !17
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__13, ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__13_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_toOrdinal___closed__13) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !13

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.i, 31
  %i.n = ashr i64 %i.m, 32
  %i.o = shl i64 %i.k, 31
  %i.p = ashr i64 %i.o, 32
  %i.q = sub nsw i64 %i.n, %i.p                   ; 3 uses
  %i.r = add nsw i64 %i.q, 2147483648
  %i.s = icmp ult i64 %i.r, 4294967296
  br i1 %i.s, label %bb.h, label %bb.i, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.t = shl nsw i64 %i.q, 1
  %i.u = and i64 %i.t, 8589934590
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_sub.exit

bb.i:                                             ; preds = %bb.g
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %i.q) #6
  br label %lean_int_sub.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_sub(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_sub.exit

lean_int_sub.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_init_l_Std_Time_Weekday_toOrdinal___closed__13() #0 {
bb.a:
  ret ptr inttoptr (i64 7 to ptr)
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Weekday_toOrdinal___closed__23() #2 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Weekday_toOrdinal___closed__3_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Weekday_toOrdinal___closed__3, align 8, !tbaa !17
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__3, ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_toOrdinal___closed__3) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Weekday_toOrdinal___closed__22_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Weekday_toOrdinal___closed__22, align 8, !tbaa !17
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__22, ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__22_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_toOrdinal___closed__22) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !13

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.k, 31
  %i.n = ashr i64 %i.m, 32                        ; 3 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %lean_int_emod.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = shl i64 %i.i, 31
  %i.q = ashr i64 %i.p, 32
  %i.r = srem i64 %i.q, %i.n                      ; 2 uses
  %i.s = icmp slt i64 %i.r, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.n, i1 true)
  %i.t = select i1 %i.s, i64 %.p.i, i64 0
  %.0.i5 = add nsw i64 %i.t, %i.r                 ; 3 uses
  %0 = icmp slt i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nsw i64 %.0.i5, 1
  %1 = and i64 %i.u, 8589934590
  %i.v = or disjoint i64 %1, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Weekday_toOrdinal___closed__22() #2 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Weekday_toOrdinal___closed__3_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Weekday_toOrdinal___closed__3, align 8, !tbaa !17
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__3, ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_toOrdinal___closed__3) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Weekday_toOrdinal___closed__21_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Weekday_toOrdinal___closed__21, align 8, !tbaa !17
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__21, ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__21_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_toOrdinal___closed__21) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !13

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.i, 31
  %i.n = ashr i64 %i.m, 32
  %i.o = shl i64 %i.k, 31
  %i.p = ashr i64 %i.o, 32
  %i.q = add nsw i64 %i.n, %i.p                   ; 3 uses
  %i.r = add nsw i64 %i.q, 2147483648
  %i.s = icmp ult i64 %i.r, 4294967296
  br i1 %i.s, label %bb.h, label %bb.i, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.t = shl nsw i64 %i.q, 1
  %i.u = and i64 %i.t, 8589934590
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_add.exit

bb.i:                                             ; preds = %bb.g
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Weekday_toOrdinal___closed__21() #2 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Weekday_toOrdinal___closed__3_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Weekday_toOrdinal___closed__3, align 8, !tbaa !17
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__3, ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_toOrdinal___closed__3) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Weekday_toOrdinal___closed__20_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Weekday_toOrdinal___closed__20, align 8, !tbaa !17
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__20, ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__20_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_toOrdinal___closed__20) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !13

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.k, 31
  %i.n = ashr i64 %i.m, 32                        ; 3 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %lean_int_emod.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = shl i64 %i.i, 31
  %i.q = ashr i64 %i.p, 32
  %i.r = srem i64 %i.q, %i.n                      ; 2 uses
  %i.s = icmp slt i64 %i.r, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.n, i1 true)
  %i.t = select i1 %i.s, i64 %.p.i, i64 0
  %.0.i5 = add nsw i64 %i.t, %i.r                 ; 3 uses
  %0 = icmp slt i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nsw i64 %.0.i5, 1
  %1 = and i64 %i.u, 8589934590
  %i.v = or disjoint i64 %1, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Weekday_toOrdinal___closed__20() #2 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instReprWeekday_repr___closed__15_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instReprWeekday_repr___closed__15, align 8, !tbaa !17
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instReprWeekday_repr___closed__15, ptr noundef nonnull @l_Std_Time_instReprWeekday_repr___closed__15_once, ptr noundef nonnull @_init_l_Std_Time_instReprWeekday_repr___closed__15) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Weekday_toOrdinal___closed__19_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Weekday_toOrdinal___closed__19, align 8, !tbaa !17
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__19, ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__19_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_toOrdinal___closed__19) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !13

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.i, 31
  %i.n = ashr i64 %i.m, 32
  %i.o = shl i64 %i.k, 31
  %i.p = ashr i64 %i.o, 32
  %i.q = sub nsw i64 %i.n, %i.p                   ; 3 uses
  %i.r = add nsw i64 %i.q, 2147483648
  %i.s = icmp ult i64 %i.r, 4294967296
  br i1 %i.s, label %bb.h, label %bb.i, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.t = shl nsw i64 %i.q, 1
  %i.u = and i64 %i.t, 8589934590
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_sub.exit

bb.i:                                             ; preds = %bb.g
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %i.q) #6
  br label %lean_int_sub.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_sub(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_sub.exit

lean_int_sub.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_init_l_Std_Time_Weekday_toOrdinal___closed__19() #0 {
bb.a:
  ret ptr inttoptr (i64 9 to ptr)
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Weekday_toOrdinal___closed__29() #2 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Weekday_toOrdinal___closed__3_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Weekday_toOrdinal___closed__3, align 8, !tbaa !17
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__3, ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_toOrdinal___closed__3) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Weekday_toOrdinal___closed__28_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Weekday_toOrdinal___closed__28, align 8, !tbaa !17
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__28, ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__28_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_toOrdinal___closed__28) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !13

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.k, 31
  %i.n = ashr i64 %i.m, 32                        ; 3 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %lean_int_emod.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = shl i64 %i.i, 31
  %i.q = ashr i64 %i.p, 32
  %i.r = srem i64 %i.q, %i.n                      ; 2 uses
  %i.s = icmp slt i64 %i.r, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.n, i1 true)
  %i.t = select i1 %i.s, i64 %.p.i, i64 0
  %.0.i5 = add nsw i64 %i.t, %i.r                 ; 3 uses
  %0 = icmp slt i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nsw i64 %.0.i5, 1
  %1 = and i64 %i.u, 8589934590
  %i.v = or disjoint i64 %1, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Weekday_toOrdinal___closed__28() #2 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Weekday_toOrdinal___closed__3_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Weekday_toOrdinal___closed__3, align 8, !tbaa !17
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__3, ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_toOrdinal___closed__3) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Weekday_toOrdinal___closed__27_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Weekday_toOrdinal___closed__27, align 8, !tbaa !17
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__27, ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__27_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_toOrdinal___closed__27) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !13

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.i, 31
  %i.n = ashr i64 %i.m, 32
  %i.o = shl i64 %i.k, 31
  %i.p = ashr i64 %i.o, 32
  %i.q = add nsw i64 %i.n, %i.p                   ; 3 uses
  %i.r = add nsw i64 %i.q, 2147483648
  %i.s = icmp ult i64 %i.r, 4294967296
  br i1 %i.s, label %bb.h, label %bb.i, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.t = shl nsw i64 %i.q, 1
  %i.u = and i64 %i.t, 8589934590
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_add.exit

bb.i:                                             ; preds = %bb.g
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Weekday_toOrdinal___closed__27() #2 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Weekday_toOrdinal___closed__3_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Weekday_toOrdinal___closed__3, align 8, !tbaa !17
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__3, ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_toOrdinal___closed__3) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Weekday_toOrdinal___closed__26_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Weekday_toOrdinal___closed__26, align 8, !tbaa !17
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__26, ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__26_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_toOrdinal___closed__26) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !13

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.k, 31
  %i.n = ashr i64 %i.m, 32                        ; 3 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %lean_int_emod.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = shl i64 %i.i, 31
  %i.q = ashr i64 %i.p, 32
  %i.r = srem i64 %i.q, %i.n                      ; 2 uses
  %i.s = icmp slt i64 %i.r, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.n, i1 true)
  %i.t = select i1 %i.s, i64 %.p.i, i64 0
  %.0.i5 = add nsw i64 %i.t, %i.r                 ; 3 uses
  %0 = icmp slt i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nsw i64 %.0.i5, 1
  %1 = and i64 %i.u, 8589934590
  %i.v = or disjoint i64 %1, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Weekday_toOrdinal___closed__26() #2 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instReprWeekday_repr___closed__15_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instReprWeekday_repr___closed__15, align 8, !tbaa !17
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instReprWeekday_repr___closed__15, ptr noundef nonnull @l_Std_Time_instReprWeekday_repr___closed__15_once, ptr noundef nonnull @_init_l_Std_Time_instReprWeekday_repr___closed__15) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Weekday_toOrdinal___closed__25_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Weekday_toOrdinal___closed__25, align 8, !tbaa !17
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__25, ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__25_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_toOrdinal___closed__25) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !13

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.i, 31
  %i.n = ashr i64 %i.m, 32
  %i.o = shl i64 %i.k, 31
  %i.p = ashr i64 %i.o, 32
  %i.q = sub nsw i64 %i.n, %i.p                   ; 3 uses
  %i.r = add nsw i64 %i.q, 2147483648
  %i.s = icmp ult i64 %i.r, 4294967296
  br i1 %i.s, label %bb.h, label %bb.i, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.t = shl nsw i64 %i.q, 1
  %i.u = and i64 %i.t, 8589934590
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_sub.exit

bb.i:                                             ; preds = %bb.g
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %i.q) #6
  br label %lean_int_sub.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_sub(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_sub.exit

lean_int_sub.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_init_l_Std_Time_Weekday_toOrdinal___closed__25() #0 {
bb.a:
  ret ptr inttoptr (i64 11 to ptr)
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Weekday_toOrdinal___closed__34() #2 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Weekday_toOrdinal___closed__3_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Weekday_toOrdinal___closed__3, align 8, !tbaa !17
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__3, ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_toOrdinal___closed__3) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Weekday_toOrdinal___closed__33_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Weekday_toOrdinal___closed__33, align 8, !tbaa !17
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__33, ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__33_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_toOrdinal___closed__33) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !13

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.k, 31
  %i.n = ashr i64 %i.m, 32                        ; 3 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %lean_int_emod.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = shl i64 %i.i, 31
  %i.q = ashr i64 %i.p, 32
  %i.r = srem i64 %i.q, %i.n                      ; 2 uses
  %i.s = icmp slt i64 %i.r, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.n, i1 true)
  %i.t = select i1 %i.s, i64 %.p.i, i64 0
  %.0.i5 = add nsw i64 %i.t, %i.r                 ; 3 uses
  %0 = icmp slt i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nsw i64 %.0.i5, 1
  %1 = and i64 %i.u, 8589934590
  %i.v = or disjoint i64 %1, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Weekday_toOrdinal___closed__33() #2 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Weekday_toOrdinal___closed__3_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Weekday_toOrdinal___closed__3, align 8, !tbaa !17
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__3, ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_toOrdinal___closed__3) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Weekday_toOrdinal___closed__32_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Weekday_toOrdinal___closed__32, align 8, !tbaa !17
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__32, ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__32_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_toOrdinal___closed__32) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !13

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.i, 31
  %i.n = ashr i64 %i.m, 32
  %i.o = shl i64 %i.k, 31
  %i.p = ashr i64 %i.o, 32
  %i.q = add nsw i64 %i.n, %i.p                   ; 3 uses
  %i.r = add nsw i64 %i.q, 2147483648
  %i.s = icmp ult i64 %i.r, 4294967296
  br i1 %i.s, label %bb.h, label %bb.i, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.t = shl nsw i64 %i.q, 1
  %i.u = and i64 %i.t, 8589934590
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_add.exit

bb.i:                                             ; preds = %bb.g
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Weekday_toOrdinal___closed__32() #2 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Weekday_toOrdinal___closed__3_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Weekday_toOrdinal___closed__3, align 8, !tbaa !17
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__3, ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_toOrdinal___closed__3) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Weekday_toOrdinal___closed__31_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Weekday_toOrdinal___closed__31, align 8, !tbaa !17
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__31, ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__31_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_toOrdinal___closed__31) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !13

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.k, 31
  %i.n = ashr i64 %i.m, 32                        ; 3 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %lean_int_emod.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = shl i64 %i.i, 31
  %i.q = ashr i64 %i.p, 32
  %i.r = srem i64 %i.q, %i.n                      ; 2 uses
  %i.s = icmp slt i64 %i.r, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.n, i1 true)
  %i.t = select i1 %i.s, i64 %.p.i, i64 0
  %.0.i5 = add nsw i64 %i.t, %i.r                 ; 3 uses
  %0 = icmp slt i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nsw i64 %.0.i5, 1
  %1 = and i64 %i.u, 8589934590
  %i.v = or disjoint i64 %1, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Weekday_toOrdinal___closed__31() #2 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instReprWeekday_repr___closed__15_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instReprWeekday_repr___closed__15, align 8, !tbaa !17
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instReprWeekday_repr___closed__15, ptr noundef nonnull @l_Std_Time_instReprWeekday_repr___closed__15_once, ptr noundef nonnull @_init_l_Std_Time_instReprWeekday_repr___closed__15) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Weekday_toOrdinal___closed__0_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Weekday_toOrdinal___closed__0, align 8, !tbaa !17
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__0, ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_toOrdinal___closed__0) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !13

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.i, 31
  %i.n = ashr i64 %i.m, 32
  %i.o = shl i64 %i.k, 31
  %i.p = ashr i64 %i.o, 32
  %i.q = sub nsw i64 %i.n, %i.p                   ; 3 uses
  %i.r = add nsw i64 %i.q, 2147483648
  %i.s = icmp ult i64 %i.r, 4294967296
  br i1 %i.s, label %bb.h, label %bb.i, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.t = shl nsw i64 %i.q, 1
  %i.u = and i64 %i.t, 8589934590
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_sub.exit

bb.i:                                             ; preds = %bb.g
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %i.q) #6
  br label %lean_int_sub.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_sub(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_sub.exit

lean_int_sub.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Weekday_toOrdinal___closed__40() #2 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Weekday_toOrdinal___closed__3_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Weekday_toOrdinal___closed__3, align 8, !tbaa !17
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__3, ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_toOrdinal___closed__3) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Weekday_toOrdinal___closed__39_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Weekday_toOrdinal___closed__39, align 8, !tbaa !17
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__39, ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__39_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_toOrdinal___closed__39) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !13

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.k, 31
  %i.n = ashr i64 %i.m, 32                        ; 3 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %lean_int_emod.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = shl i64 %i.i, 31
  %i.q = ashr i64 %i.p, 32
  %i.r = srem i64 %i.q, %i.n                      ; 2 uses
  %i.s = icmp slt i64 %i.r, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.n, i1 true)
  %i.t = select i1 %i.s, i64 %.p.i, i64 0
  %.0.i5 = add nsw i64 %i.t, %i.r                 ; 3 uses
  %0 = icmp slt i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nsw i64 %.0.i5, 1
  %1 = and i64 %i.u, 8589934590
  %i.v = or disjoint i64 %1, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Weekday_toOrdinal___closed__39() #2 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Weekday_toOrdinal___closed__3_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Weekday_toOrdinal___closed__3, align 8, !tbaa !17
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__3, ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_toOrdinal___closed__3) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Weekday_toOrdinal___closed__38_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Weekday_toOrdinal___closed__38, align 8, !tbaa !17
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__38, ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__38_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_toOrdinal___closed__38) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !13

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.i, 31
  %i.n = ashr i64 %i.m, 32
  %i.o = shl i64 %i.k, 31
  %i.p = ashr i64 %i.o, 32
  %i.q = add nsw i64 %i.n, %i.p                   ; 3 uses
  %i.r = add nsw i64 %i.q, 2147483648
  %i.s = icmp ult i64 %i.r, 4294967296
  br i1 %i.s, label %bb.h, label %bb.i, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.t = shl nsw i64 %i.q, 1
  %i.u = and i64 %i.t, 8589934590
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_add.exit

bb.i:                                             ; preds = %bb.g
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Weekday_toOrdinal___closed__38() #2 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Weekday_toOrdinal___closed__3_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Weekday_toOrdinal___closed__3, align 8, !tbaa !17
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__3, ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_toOrdinal___closed__3) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Weekday_toOrdinal___closed__37_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Weekday_toOrdinal___closed__37, align 8, !tbaa !17
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__37, ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__37_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_toOrdinal___closed__37) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !13

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.k, 31
  %i.n = ashr i64 %i.m, 32                        ; 3 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %lean_int_emod.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = shl i64 %i.i, 31
  %i.q = ashr i64 %i.p, 32
  %i.r = srem i64 %i.q, %i.n                      ; 2 uses
  %i.s = icmp slt i64 %i.r, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.n, i1 true)
  %i.t = select i1 %i.s, i64 %.p.i, i64 0
  %.0.i5 = add nsw i64 %i.t, %i.r                 ; 3 uses
  %0 = icmp slt i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nsw i64 %.0.i5, 1
  %1 = and i64 %i.u, 8589934590
  %i.v = or disjoint i64 %1, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Weekday_toOrdinal___closed__37() #2 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instReprWeekday_repr___closed__15_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instReprWeekday_repr___closed__15, align 8, !tbaa !17
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instReprWeekday_repr___closed__15, ptr noundef nonnull @l_Std_Time_instReprWeekday_repr___closed__15_once, ptr noundef nonnull @_init_l_Std_Time_instReprWeekday_repr___closed__15) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Weekday_toOrdinal___closed__36_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Weekday_toOrdinal___closed__36, align 8, !tbaa !17
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__36, ptr noundef nonnull @l_Std_Time_Weekday_toOrdinal___closed__36_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_toOrdinal___closed__36) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !13

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.i, 31
  %i.n = ashr i64 %i.m, 32
  %i.o = shl i64 %i.k, 31
  %i.p = ashr i64 %i.o, 32
  %i.q = sub nsw i64 %i.n, %i.p                   ; 3 uses
  %i.r = add nsw i64 %i.q, 2147483648
  %i.s = icmp ult i64 %i.r, 4294967296
  br i1 %i.s, label %bb.h, label %bb.i, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.t = shl nsw i64 %i.q, 1
  %i.u = and i64 %i.t, 8589934590
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_sub.exit

bb.i:                                             ; preds = %bb.g
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %i.q) #6
  br label %lean_int_sub.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_sub(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_sub.exit

lean_int_sub.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_init_l_Std_Time_Weekday_toOrdinal___closed__36() #0 {
bb.a:
  ret ptr inttoptr (i64 15 to ptr)
}

declare ptr @l_mkPanicMessageWithDecl(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @lean_free_object(ptr noundef) local_unnamed_addr #3

declare void @lean_dec_ref_cold(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Weekday_instInhabitedOrdinal___closed__4() #2 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instReprWeekday_repr___closed__15_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instReprWeekday_repr___closed__15, align 8, !tbaa !17
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instReprWeekday_repr___closed__15, ptr noundef nonnull @l_Std_Time_instReprWeekday_repr___closed__15_once, ptr noundef nonnull @_init_l_Std_Time_instReprWeekday_repr___closed__15) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Weekday_instInhabitedOrdinal___closed__3_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Weekday_instInhabitedOrdinal___closed__3, align 8, !tbaa !17
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_instInhabitedOrdinal___closed__3, ptr noundef nonnull @l_Std_Time_Weekday_instInhabitedOrdinal___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_instInhabitedOrdinal___closed__3) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !13

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.i, 31
  %i.n = ashr i64 %i.m, 32
  %i.o = shl i64 %i.k, 31
  %i.p = ashr i64 %i.o, 32
  %i.q = add nsw i64 %i.n, %i.p                   ; 3 uses
  %i.r = add nsw i64 %i.q, 2147483648
  %i.s = icmp ult i64 %i.r, 4294967296
  br i1 %i.s, label %bb.h, label %bb.i, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.t = shl nsw i64 %i.q, 1
  %i.u = and i64 %i.t, 8589934590
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_add.exit

bb.i:                                             ; preds = %bb.g
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Weekday_instInhabitedOrdinal___closed__3() #2 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Weekday_instOfNatOrdinal___aux__1___closed__3_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Weekday_instOfNatOrdinal___aux__1___closed__3, align 8, !tbaa !17
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_instOfNatOrdinal___aux__1___closed__3, ptr noundef nonnull @l_Std_Time_Weekday_instOfNatOrdinal___aux__1___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_instOfNatOrdinal___aux__1___closed__3) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Weekday_instInhabitedOrdinal___closed__2_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Weekday_instInhabitedOrdinal___closed__2, align 8, !tbaa !17
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_instInhabitedOrdinal___closed__2, ptr noundef nonnull @l_Std_Time_Weekday_instInhabitedOrdinal___closed__2_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_instInhabitedOrdinal___closed__2) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !13

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.k, 31
  %i.n = ashr i64 %i.m, 32                        ; 3 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %lean_int_emod.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = shl i64 %i.i, 31
  %i.q = ashr i64 %i.p, 32
  %i.r = srem i64 %i.q, %i.n                      ; 2 uses
  %i.s = icmp slt i64 %i.r, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.n, i1 true)
  %i.t = select i1 %i.s, i64 %.p.i, i64 0
  %.0.i5 = add nsw i64 %i.t, %i.r                 ; 3 uses
  %0 = icmp slt i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nsw i64 %.0.i5, 1
  %1 = and i64 %i.u, 8589934590
  %i.v = or disjoint i64 %1, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Weekday_instInhabitedOrdinal___closed__2() #2 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Weekday_instOfNatOrdinal___aux__1___closed__3_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Weekday_instOfNatOrdinal___aux__1___closed__3, align 8, !tbaa !17
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_instOfNatOrdinal___aux__1___closed__3, ptr noundef nonnull @l_Std_Time_Weekday_instOfNatOrdinal___aux__1___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_instOfNatOrdinal___aux__1___closed__3) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Weekday_instInhabitedOrdinal___closed__1_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Weekday_instInhabitedOrdinal___closed__1, align 8, !tbaa !17
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_instInhabitedOrdinal___closed__1, ptr noundef nonnull @l_Std_Time_Weekday_instInhabitedOrdinal___closed__1_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_instInhabitedOrdinal___closed__1) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !13

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.i, 31
  %i.n = ashr i64 %i.m, 32
  %i.o = shl i64 %i.k, 31
  %i.p = ashr i64 %i.o, 32
  %i.q = add nsw i64 %i.n, %i.p                   ; 3 uses
  %i.r = add nsw i64 %i.q, 2147483648
  %i.s = icmp ult i64 %i.r, 4294967296
  br i1 %i.s, label %bb.h, label %bb.i, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.t = shl nsw i64 %i.q, 1
  %i.u = and i64 %i.t, 8589934590
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_add.exit

bb.i:                                             ; preds = %bb.g
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Weekday_instInhabitedOrdinal___closed__1() #2 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Weekday_instOfNatOrdinal___aux__1___closed__3_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Weekday_instOfNatOrdinal___aux__1___closed__3, align 8, !tbaa !17
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_instOfNatOrdinal___aux__1___closed__3, ptr noundef nonnull @l_Std_Time_Weekday_instOfNatOrdinal___aux__1___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_instOfNatOrdinal___aux__1___closed__3) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Weekday_instInhabitedOrdinal___closed__0_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Weekday_instInhabitedOrdinal___closed__0, align 8, !tbaa !17
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Weekday_instInhabitedOrdinal___closed__0, ptr noundef nonnull @l_Std_Time_Weekday_instInhabitedOrdinal___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Weekday_instInhabitedOrdinal___closed__0) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !13

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  %i.m = shl i64 %i.k, 31
  %i.n = ashr i64 %i.m, 32                        ; 3 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %lean_int_emod.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = shl i64 %i.i, 31
  %i.q = ashr i64 %i.p, 32
  %i.r = srem i64 %i.q, %i.n                      ; 2 uses
  %i.s = icmp slt i64 %i.r, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.n, i1 true)
  %i.t = select i1 %i.s, i64 %.p.i, i64 0
  %.0.i5 = add nsw i64 %i.t, %i.r                 ; 3 uses
  %0 = icmp slt i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nsw i64 %.0.i5, 1
  %1 = and i64 %i.u, 8589934590
  %i.v = or disjoint i64 %1, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 4, !"probe-stack", !"inline-asm"}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"", !6, i64 0, !6, i64 4, !6, i64 6, !6, i64 7}
!10 = !{!9, !6, i64 0}
!11 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!12 = !{!"branch_weights", !"expected", i32 2146812770, i32 670878}
!13 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!14 = !{!"", !5, i64 0, !5, i64 4}
!15 = !{!14, !5, i64 0}
!16 = !{!"any pointer", !5, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"branch_weights", i32 4001, i32 4000000}
!19 = !{!"long", !5, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!5, !5, i64 0}
end_hunk_1
