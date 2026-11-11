Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/Month?download=true
inline.NumInlined: 834
inline.NumDeleted: 74
begin_hunk_0_@l_Std_Time_Month_instDecidableEqOrdinal:bb.a
  %i.g = zext i1 %.0.i.i to i8
  ret i8 %i.g
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Std_Time_Month_instDecidableEqOrdinal___boxed(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = and i64 %i.a, 1                          ; 2 uses
  %i.d = and i64 %i.c, %i.b
  %or.cond.not.i.i.i = icmp eq i64 %i.d, 0
  br i1 %or.cond.not.i.i.i, label %.critedge.i.i.i, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %0, %1
  br label %l_Std_Time_Month_instDecidableEqOrdinal.exit

.critedge.i.i.i:                                  ; preds = %bb.a
  %i.f = tail call zeroext i1 @lean_int_big_eq(ptr noundef %0, ptr noundef %1) #6
  br label %l_Std_Time_Month_instDecidableEqOrdinal.exit

l_Std_Time_Month_instDecidableEqOrdinal.exit:     ; preds = %bb.b, %.critedge.i.i.i
  %.0.i.i.i = phi i1 [ %i.e, %bb.b ], [ %i.f, %.critedge.i.i.i ]
  %i.g = and i64 %i.b, 1
  %.not.i5 = icmp eq i64 %i.g, 0
  br i1 %.not.i5, label %bb.c, label %lean_dec.exit6

bb.c:                                             ; preds = %l_Std_Time_Month_instDecidableEqOrdinal.exit
  %i.h = load i32, ptr %1, align 4, !tbaa !16     ; 3 uses
  %i.i = icmp sgt i32 %i.h, 1
  br i1 %i.i, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.h, -1
  store i32 %i.j, ptr %1, align 4, !tbaa !16
  br label %lean_dec.exit6

bb.e:                                             ; preds = %bb.c
  %.not.i7 = icmp eq i32 %i.h, 0
  br i1 %.not.i7, label %lean_dec.exit6, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec.exit6

lean_dec.exit6:                                   ; preds = %bb.f, %bb.e, %bb.d, %l_Std_Time_Month_instDecidableEqOrdinal.exit
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.g, label %lean_dec.exit

bb.g:                                             ; preds = %lean_dec.exit6
  %i.k = load i32, ptr %0, align 4, !tbaa !16     ; 3 uses
  %i.l = icmp sgt i32 %i.k, 1
  br i1 %i.l, label %bb.h, label %bb.i, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.m = add nsw i32 %i.k, -1
  store i32 %i.m, ptr %0, align 4, !tbaa !16
  br label %lean_dec.exit

bb.i:                                             ; preds = %bb.g
  %.not.i8 = icmp eq i32 %i.k, 0
  br i1 %.not.i8, label %lean_dec.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.j, %bb.i, %bb.h, %lean_dec.exit6
  %i.n = select i1 %.0.i.i.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 1 to ptr)
  ret ptr %i.n
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0) #6
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
  %i.j = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once seq_cst, align 4, !tbaa !10
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.f, !prof !11

bb.e:                                             ; preds = %lean_nat_to_int.exit
  %i.l = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit36

bb.f:                                             ; preds = %lean_nat_to_int.exit
  %i.m = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4) #6
  br label %lean_obj_once.exit36

lean_obj_once.exit36:                             ; preds = %bb.e, %bb.f
  %.0.i35 = phi ptr [ %i.l, %bb.e ], [ %i.m, %bb.f ] ; 9 uses
  %i.n = ptrtoint ptr %.1.i to i64                ; 2 uses
  %i.o = and i64 %i.n, 1
  %.not.i37 = icmp eq i64 %i.o, 0
  br i1 %.not.i37, label %bb.k, label %bb.g, !prof !14

bb.g:                                             ; preds = %lean_obj_once.exit36
  %i.p = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.q = and i64 %i.p, 1
  %.not7.i = icmp eq i64 %i.q, 0
  br i1 %.not7.i, label %lean_int_sub.exit, label %bb.h, !prof !14

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
  %i.ac = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.v) #6
  br label %lean_dec.exit24

lean_int_sub.exit:                                ; preds = %bb.g
  %i.ad = tail call ptr @lean_int_big_sub(ptr noundef %.1.i, ptr noundef %.0.i) #6
  br label %lean_dec.exit24

bb.k:                                             ; preds = %lean_obj_once.exit36
  %i.ae = tail call ptr @lean_int_big_sub(ptr noundef %.1.i, ptr noundef %.0.i) #6 ; 3 uses
  %i.af = load i32, ptr %.1.i, align 4, !tbaa !16 ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 1
  br i1 %i.ag, label %bb.l, label %bb.m, !prof !11

bb.l:                                             ; preds = %bb.k
  %i.ah = add nsw i32 %i.af, -1
  store i32 %i.ah, ptr %.1.i, align 4, !tbaa !16
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
  br i1 %.not.i39, label %bb.t, label %bb.o, !prof !14

bb.o:                                             ; preds = %lean_dec.exit24
  %i.ak = ptrtoint ptr %.0.i35 to i64             ; 2 uses
  %i.al = and i64 %i.ak, 1
  %.not21.i = icmp eq i64 %i.al, 0
  br i1 %.not21.i, label %lean_int_emod.exit, label %bb.p, !prof !14

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
  %1 = icmp ult i64 %.0.i40, 2147483648
  br i1 %1, label %bb.r, label %bb.s, !prof !11

bb.r:                                             ; preds = %bb.q
  %i.au = shl nuw nsw i64 %.0.i40, 1
  %i.av = or disjoint i64 %i.au, 1
  %i.aw = inttoptr i64 %i.av to ptr
  br label %lean_dec.exit22

bb.s:                                             ; preds = %bb.q
  %i.ax = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i40) #6
  br label %lean_dec.exit22

lean_int_emod.exit:                               ; preds = %bb.o
  %i.ay = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3870, ptr noundef %.0.i35) #6
  br label %lean_dec.exit22

bb.t:                                             ; preds = %lean_dec.exit24
  %i.az = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3870, ptr noundef %.0.i35) #6 ; 3 uses
  %i.ba = load i32, ptr %.0.i3870, align 4, !tbaa !16 ; 3 uses
  %i.bb = icmp sgt i32 %i.ba, 1
  br i1 %i.bb, label %bb.u, label %bb.v, !prof !11

bb.u:                                             ; preds = %bb.t
  %i.bc = add nsw i32 %i.ba, -1
  store i32 %i.bc, ptr %.0.i3870, align 4, !tbaa !16
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
  br i1 %.not.i43, label %bb.ab, label %bb.x, !prof !14

bb.x:                                             ; preds = %lean_dec.exit22
  %i.bf = ptrtoint ptr %.0.i35 to i64             ; 2 uses
  %i.bg = and i64 %i.bf, 1
  %.not7.i44 = icmp eq i64 %i.bg, 0
  br i1 %.not7.i44, label %lean_int_add.exit, label %bb.y, !prof !14

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
  %i.bs = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.bl) #6
  br label %lean_dec.exit20

lean_int_add.exit:                                ; preds = %bb.x
  %i.bt = tail call ptr @lean_int_big_add(ptr noundef %.1.i4173, ptr noundef %.0.i35) #6
  br label %lean_dec.exit20

bb.ab:                                            ; preds = %lean_dec.exit22
  %i.bu = tail call ptr @lean_int_big_add(ptr noundef %.1.i4173, ptr noundef %.0.i35) #6 ; 3 uses
  %i.bv = load i32, ptr %.1.i4173, align 4, !tbaa !16 ; 3 uses
  %i.bw = icmp sgt i32 %i.bv, 1
  br i1 %i.bw, label %bb.ac, label %bb.ad, !prof !11

bb.ac:                                            ; preds = %bb.ab
  %i.bx = add nsw i32 %i.bv, -1
  store i32 %i.bx, ptr %.1.i4173, align 4, !tbaa !16
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
  br i1 %.not.i47, label %bb.ak, label %bb.af, !prof !14

bb.af:                                            ; preds = %lean_dec.exit20
  %i.ca = ptrtoint ptr %.0.i35 to i64             ; 2 uses
  %i.cb = and i64 %i.ca, 1
  %.not21.i48 = icmp eq i64 %i.cb, 0
  br i1 %.not21.i48, label %lean_int_emod.exit53, label %bb.ag, !prof !14

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
  %2 = icmp ult i64 %.0.i50, 2147483648
  br i1 %2, label %bb.ai, label %bb.aj, !prof !11

bb.ai:                                            ; preds = %bb.ah
  %i.ck = shl nuw nsw i64 %.0.i50, 1
  %i.cl = or disjoint i64 %i.ck, 1
  %i.cm = inttoptr i64 %i.cl to ptr
  br label %lean_dec.exit18

bb.aj:                                            ; preds = %bb.ah
  %i.cn = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i50) #6
  br label %lean_dec.exit18

lean_int_emod.exit53:                             ; preds = %bb.af
  %i.co = tail call ptr @lean_int_big_emod(ptr noundef %.0.i4576, ptr noundef %.0.i35) #6
  br label %lean_dec.exit18

bb.ak:                                            ; preds = %lean_dec.exit20
  %i.cp = tail call ptr @lean_int_big_emod(ptr noundef %.0.i4576, ptr noundef %.0.i35) #6 ; 3 uses
  %i.cq = load i32, ptr %.0.i4576, align 4, !tbaa !16 ; 3 uses
  %i.cr = icmp sgt i32 %i.cq, 1
  br i1 %i.cr, label %bb.al, label %bb.am, !prof !11

bb.al:                                            ; preds = %bb.ak
  %i.cs = add nsw i32 %i.cq, -1
  store i32 %i.cs, ptr %.0.i4576, align 4, !tbaa !16
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
  br i1 %.not.i54, label %bb.as, label %bb.ao, !prof !14

bb.ao:                                            ; preds = %lean_dec.exit18
  %i.cv = ptrtoint ptr %.0.i to i64               ; 2 uses
  %i.cw = and i64 %i.cv, 1
  %.not7.i55 = icmp eq i64 %i.cw, 0
  br i1 %.not7.i55, label %lean_int_add.exit58, label %bb.ap, !prof !14

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
  %i.di = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.db) #6
  br label %lean_dec.exit

lean_int_add.exit58:                              ; preds = %bb.ao
  %i.dj = tail call ptr @lean_int_big_add(ptr noundef %.1.i5179, ptr noundef %.0.i) #6
  br label %lean_dec.exit

bb.as:                                            ; preds = %lean_dec.exit18
  %i.dk = tail call ptr @lean_int_big_add(ptr noundef %.1.i5179, ptr noundef %.0.i) #6 ; 3 uses
  %i.dl = load i32, ptr %.1.i5179, align 4, !tbaa !16 ; 3 uses
  %i.dm = icmp sgt i32 %i.dl, 1
  br i1 %i.dm, label %bb.at, label %bb.au, !prof !11

bb.at:                                            ; preds = %bb.as
  %i.dn = add nsw i32 %i.dl, -1
  store i32 %i.dn, ptr %.1.i5179, align 4, !tbaa !16
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0() #1 {
bb.a:
  ret ptr inttoptr (i64 3 to ptr)
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__3_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__3, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__3, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__3) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_Time_Month_instOfNatOrdinal(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0) #6
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
  %i.j = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once seq_cst, align 4, !tbaa !10
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.f, !prof !11

bb.e:                                             ; preds = %lean_nat_to_int.exit
  %i.l = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit36

bb.f:                                             ; preds = %lean_nat_to_int.exit
  %i.m = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4) #6
  br label %lean_obj_once.exit36

lean_obj_once.exit36:                             ; preds = %bb.e, %bb.f
  %.0.i35 = phi ptr [ %i.l, %bb.e ], [ %i.m, %bb.f ] ; 9 uses
  %i.n = ptrtoint ptr %.1.i to i64                ; 2 uses
  %i.o = and i64 %i.n, 1
  %.not.i37 = icmp eq i64 %i.o, 0
  br i1 %.not.i37, label %bb.k, label %bb.g, !prof !14

bb.g:                                             ; preds = %lean_obj_once.exit36
  %i.p = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.q = and i64 %i.p, 1
  %.not7.i = icmp eq i64 %i.q, 0
  br i1 %.not7.i, label %lean_int_sub.exit, label %bb.h, !prof !14

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
  %i.ac = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.v) #6
  br label %lean_dec.exit24

lean_int_sub.exit:                                ; preds = %bb.g
  %i.ad = tail call ptr @lean_int_big_sub(ptr noundef %.1.i, ptr noundef %.0.i) #6
  br label %lean_dec.exit24

bb.k:                                             ; preds = %lean_obj_once.exit36
  %i.ae = tail call ptr @lean_int_big_sub(ptr noundef %.1.i, ptr noundef %.0.i) #6 ; 3 uses
  %i.af = load i32, ptr %.1.i, align 4, !tbaa !16 ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 1
  br i1 %i.ag, label %bb.l, label %bb.m, !prof !11

bb.l:                                             ; preds = %bb.k
  %i.ah = add nsw i32 %i.af, -1
  store i32 %i.ah, ptr %.1.i, align 4, !tbaa !16
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
  br i1 %.not.i39, label %bb.t, label %bb.o, !prof !14

bb.o:                                             ; preds = %lean_dec.exit24
  %i.ak = ptrtoint ptr %.0.i35 to i64             ; 2 uses
  %i.al = and i64 %i.ak, 1
  %.not21.i = icmp eq i64 %i.al, 0
  br i1 %.not21.i, label %lean_int_emod.exit, label %bb.p, !prof !14

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
  %1 = icmp ult i64 %.0.i40, 2147483648
  br i1 %1, label %bb.r, label %bb.s, !prof !11

bb.r:                                             ; preds = %bb.q
  %i.au = shl nuw nsw i64 %.0.i40, 1
  %i.av = or disjoint i64 %i.au, 1
  %i.aw = inttoptr i64 %i.av to ptr
  br label %lean_dec.exit22

bb.s:                                             ; preds = %bb.q
  %i.ax = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i40) #6
  br label %lean_dec.exit22

lean_int_emod.exit:                               ; preds = %bb.o
  %i.ay = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3870, ptr noundef %.0.i35) #6
  br label %lean_dec.exit22

bb.t:                                             ; preds = %lean_dec.exit24
  %i.az = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3870, ptr noundef %.0.i35) #6 ; 3 uses
  %i.ba = load i32, ptr %.0.i3870, align 4, !tbaa !16 ; 3 uses
  %i.bb = icmp sgt i32 %i.ba, 1
  br i1 %i.bb, label %bb.u, label %bb.v, !prof !11

bb.u:                                             ; preds = %bb.t
  %i.bc = add nsw i32 %i.ba, -1
  store i32 %i.bc, ptr %.0.i3870, align 4, !tbaa !16
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
  br i1 %.not.i43, label %bb.ab, label %bb.x, !prof !14

bb.x:                                             ; preds = %lean_dec.exit22
  %i.bf = ptrtoint ptr %.0.i35 to i64             ; 2 uses
  %i.bg = and i64 %i.bf, 1
  %.not7.i44 = icmp eq i64 %i.bg, 0
  br i1 %.not7.i44, label %lean_int_add.exit, label %bb.y, !prof !14

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
  %i.bs = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.bl) #6
  br label %lean_dec.exit20

lean_int_add.exit:                                ; preds = %bb.x
  %i.bt = tail call ptr @lean_int_big_add(ptr noundef %.1.i4173, ptr noundef %.0.i35) #6
  br label %lean_dec.exit20

bb.ab:                                            ; preds = %lean_dec.exit22
  %i.bu = tail call ptr @lean_int_big_add(ptr noundef %.1.i4173, ptr noundef %.0.i35) #6 ; 3 uses
  %i.bv = load i32, ptr %.1.i4173, align 4, !tbaa !16 ; 3 uses
  %i.bw = icmp sgt i32 %i.bv, 1
  br i1 %i.bw, label %bb.ac, label %bb.ad, !prof !11

bb.ac:                                            ; preds = %bb.ab
  %i.bx = add nsw i32 %i.bv, -1
  store i32 %i.bx, ptr %.1.i4173, align 4, !tbaa !16
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
  br i1 %.not.i47, label %bb.ak, label %bb.af, !prof !14

bb.af:                                            ; preds = %lean_dec.exit20
  %i.ca = ptrtoint ptr %.0.i35 to i64             ; 2 uses
  %i.cb = and i64 %i.ca, 1
  %.not21.i48 = icmp eq i64 %i.cb, 0
  br i1 %.not21.i48, label %lean_int_emod.exit53, label %bb.ag, !prof !14

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
  %2 = icmp ult i64 %.0.i50, 2147483648
  br i1 %2, label %bb.ai, label %bb.aj, !prof !11

bb.ai:                                            ; preds = %bb.ah
  %i.ck = shl nuw nsw i64 %.0.i50, 1
  %i.cl = or disjoint i64 %i.ck, 1
  %i.cm = inttoptr i64 %i.cl to ptr
  br label %lean_dec.exit18

bb.aj:                                            ; preds = %bb.ah
  %i.cn = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i50) #6
  br label %lean_dec.exit18

lean_int_emod.exit53:                             ; preds = %bb.af
  %i.co = tail call ptr @lean_int_big_emod(ptr noundef %.0.i4576, ptr noundef %.0.i35) #6
  br label %lean_dec.exit18

bb.ak:                                            ; preds = %lean_dec.exit20
  %i.cp = tail call ptr @lean_int_big_emod(ptr noundef %.0.i4576, ptr noundef %.0.i35) #6 ; 3 uses
  %i.cq = load i32, ptr %.0.i4576, align 4, !tbaa !16 ; 3 uses
  %i.cr = icmp sgt i32 %i.cq, 1
  br i1 %i.cr, label %bb.al, label %bb.am, !prof !11

bb.al:                                            ; preds = %bb.ak
  %i.cs = add nsw i32 %i.cq, -1
  store i32 %i.cs, ptr %.0.i4576, align 4, !tbaa !16
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
  br i1 %.not.i54, label %bb.as, label %bb.ao, !prof !14

bb.ao:                                            ; preds = %lean_dec.exit18
  %i.cv = ptrtoint ptr %.0.i to i64               ; 2 uses
  %i.cw = and i64 %i.cv, 1
  %.not7.i55 = icmp eq i64 %i.cw, 0
  br i1 %.not7.i55, label %lean_int_add.exit58, label %bb.ap, !prof !14

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
  %i.di = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.db) #6
  br label %lean_dec.exit

lean_int_add.exit58:                              ; preds = %bb.ao
  %i.dj = tail call ptr @lean_int_big_add(ptr noundef %.1.i5179, ptr noundef %.0.i) #6
  br label %lean_dec.exit

bb.as:                                            ; preds = %lean_dec.exit18
  %i.dk = tail call ptr @lean_int_big_add(ptr noundef %.1.i5179, ptr noundef %.0.i) #6 ; 3 uses
  %i.dl = load i32, ptr %.1.i5179, align 4, !tbaa !16 ; 3 uses
  %i.dm = icmp sgt i32 %i.dl, 1
  br i1 %i.dm, label %bb.at, label %bb.au, !prof !11

bb.at:                                            ; preds = %bb.as
  %i.dn = add nsw i32 %i.dl, -1
  store i32 %i.dn, ptr %.1.i5179, align 4, !tbaa !16
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
define zeroext range(i8 0, 2) i8 @l_Std_Time_Month_instDecidableLeOrdinal___aux__1(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = and i64 %i.c, 1
  %.not7.i.i = icmp eq i64 %i.d, 0
  br i1 %.not7.i.i, label %.critedge.i.i, label %bb.c, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.e = lshr i64 %i.a, 1
  %i.f = trunc i64 %i.e to i32
  %i.g = lshr i64 %i.c, 1
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp sle i32 %i.f, %i.h
  br label %lean_int_dec_le.exit

.critedge.i.i:                                    ; preds = %bb.b, %bb.a
  %i.j = tail call zeroext i1 @lean_int_big_le(ptr noundef %0, ptr noundef %1) #6
  br label %lean_int_dec_le.exit

lean_int_dec_le.exit:                             ; preds = %bb.c, %.critedge.i.i
  %.0.i.i = phi i1 [ %i.i, %bb.c ], [ %i.j, %.critedge.i.i ]
  %i.k = zext i1 %.0.i.i to i8
  ret i8 %i.k
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Std_Time_Month_instDecidableLeOrdinal___aux__1___boxed(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i.i.i = icmp eq i64 %i.b, 0               ; 2 uses
  %.pre12 = ptrtoint ptr %1 to i64                ; 2 uses
  %.pre = and i64 %.pre12, 1
  %i.c = icmp eq i64 %.pre, 0                     ; 2 uses
  br i1 %.not.i.i.i, label %l_Std_Time_Month_instDecidableLeOrdinal___aux__1.exit, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %l_Std_Time_Month_instDecidableLeOrdinal___aux__1.exit.thread20, label %lean_dec.exit6.thread25, !prof !14

l_Std_Time_Month_instDecidableLeOrdinal___aux__1.exit.thread20: ; preds = %bb.b
  %i.d = tail call zeroext i1 @lean_int_big_le(ptr noundef %0, ptr noundef %1) #6
  br label %bb.c

lean_dec.exit6.thread25:                          ; preds = %bb.b
  %i.e = lshr i64 %i.a, 1
  %i.f = trunc i64 %i.e to i32
  %i.g = lshr i64 %.pre12, 1
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp sle i32 %i.f, %i.h
  br label %lean_dec.exit

l_Std_Time_Month_instDecidableLeOrdinal___aux__1.exit: ; preds = %bb.a
  %i.j = tail call zeroext i1 @lean_int_big_le(ptr noundef %0, ptr noundef %1) #6 ; 2 uses
  br i1 %i.c, label %bb.c, label %lean_dec.exit6.thread

bb.c:                                             ; preds = %l_Std_Time_Month_instDecidableLeOrdinal___aux__1.exit.thread20, %l_Std_Time_Month_instDecidableLeOrdinal___aux__1.exit
  %i.k = phi i1 [ %i.d, %l_Std_Time_Month_instDecidableLeOrdinal___aux__1.exit.thread20 ], [ %i.j, %l_Std_Time_Month_instDecidableLeOrdinal___aux__1.exit ] ; 2 uses
  %i.l = load i32, ptr %1, align 4, !tbaa !16     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %1, align 4, !tbaa !16
  br label %lean_dec.exit6

bb.e:                                             ; preds = %bb.c
  %.not.i7 = icmp eq i32 %i.l, 0
  br i1 %.not.i7, label %lean_dec.exit6, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec.exit6

lean_dec.exit6:                                   ; preds = %bb.f, %bb.e, %bb.d
  br i1 %.not.i.i.i, label %lean_dec.exit6.thread, label %lean_dec.exit

lean_dec.exit6.thread:                            ; preds = %l_Std_Time_Month_instDecidableLeOrdinal___aux__1.exit, %lean_dec.exit6
  %.0.i.i.i1924 = phi i1 [ %i.k, %lean_dec.exit6 ], [ %i.j, %l_Std_Time_Month_instDecidableLeOrdinal___aux__1.exit ] ; 3 uses
  %i.o = load i32, ptr %0, align 4, !tbaa !16     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.g, label %bb.h, !prof !11

bb.g:                                             ; preds = %lean_dec.exit6.thread
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %0, align 4, !tbaa !16
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
end_hunk_0
begin_hunk_1_@l_Std_Time_Month_instDecidableEqQuarter:bb.a
  %i.g = zext i1 %.0.i.i to i8
  ret i8 %i.g
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Std_Time_Month_instDecidableEqQuarter___boxed(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = and i64 %i.a, 1                          ; 2 uses
  %i.d = and i64 %i.c, %i.b
  %or.cond.not.i.i.i = icmp eq i64 %i.d, 0
  br i1 %or.cond.not.i.i.i, label %.critedge.i.i.i, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %0, %1
  br label %l_Std_Time_Month_instDecidableEqQuarter.exit

.critedge.i.i.i:                                  ; preds = %bb.a
  %i.f = tail call zeroext i1 @lean_int_big_eq(ptr noundef %0, ptr noundef %1) #6
  br label %l_Std_Time_Month_instDecidableEqQuarter.exit

l_Std_Time_Month_instDecidableEqQuarter.exit:     ; preds = %bb.b, %.critedge.i.i.i
  %.0.i.i.i = phi i1 [ %i.e, %bb.b ], [ %i.f, %.critedge.i.i.i ]
  %i.g = and i64 %i.b, 1
  %.not.i5 = icmp eq i64 %i.g, 0
  br i1 %.not.i5, label %bb.c, label %lean_dec.exit6

bb.c:                                             ; preds = %l_Std_Time_Month_instDecidableEqQuarter.exit
  %i.h = load i32, ptr %1, align 4, !tbaa !16     ; 3 uses
  %i.i = icmp sgt i32 %i.h, 1
  br i1 %i.i, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.h, -1
  store i32 %i.j, ptr %1, align 4, !tbaa !16
  br label %lean_dec.exit6

bb.e:                                             ; preds = %bb.c
  %.not.i7 = icmp eq i32 %i.h, 0
  br i1 %.not.i7, label %lean_dec.exit6, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec.exit6

lean_dec.exit6:                                   ; preds = %bb.f, %bb.e, %bb.d, %l_Std_Time_Month_instDecidableEqQuarter.exit
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.g, label %lean_dec.exit

bb.g:                                             ; preds = %lean_dec.exit6
  %i.k = load i32, ptr %0, align 4, !tbaa !16     ; 3 uses
  %i.l = icmp sgt i32 %i.k, 1
  br i1 %i.l, label %bb.h, label %bb.i, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.m = add nsw i32 %i.k, -1
  store i32 %i.m, ptr %0, align 4, !tbaa !16
  br label %lean_dec.exit

bb.i:                                             ; preds = %bb.g
  %.not.i8 = icmp eq i32 %i.k, 0
  br i1 %.not.i8, label %lean_dec.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.j, %bb.i, %bb.h, %lean_dec.exit6
  %i.n = select i1 %.0.i.i.i, ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 1 to ptr)
  ret ptr %i.n
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_Time_Month_instOfNatQuarter___aux__1(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0) #6
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
  %i.j = load atomic i32, ptr @l_Std_Time_Month_instOfNatQuarter___aux__1___closed__3_once seq_cst, align 4, !tbaa !10
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.f, !prof !11

bb.e:                                             ; preds = %lean_nat_to_int.exit
  %i.l = load ptr, ptr @l_Std_Time_Month_instOfNatQuarter___aux__1___closed__3, align 8, !tbaa !13
  br label %lean_obj_once.exit36

bb.f:                                             ; preds = %lean_nat_to_int.exit
  %i.m = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatQuarter___aux__1___closed__3, ptr noundef nonnull @l_Std_Time_Month_instOfNatQuarter___aux__1___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatQuarter___aux__1___closed__3) #6
  br label %lean_obj_once.exit36

lean_obj_once.exit36:                             ; preds = %bb.e, %bb.f
  %.0.i35 = phi ptr [ %i.l, %bb.e ], [ %i.m, %bb.f ] ; 9 uses
  %i.n = ptrtoint ptr %.1.i to i64                ; 2 uses
  %i.o = and i64 %i.n, 1
  %.not.i37 = icmp eq i64 %i.o, 0
  br i1 %.not.i37, label %bb.k, label %bb.g, !prof !14

bb.g:                                             ; preds = %lean_obj_once.exit36
  %i.p = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.q = and i64 %i.p, 1
  %.not7.i = icmp eq i64 %i.q, 0
  br i1 %.not7.i, label %lean_int_sub.exit, label %bb.h, !prof !14

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
  %i.ac = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.v) #6
  br label %lean_dec.exit24

lean_int_sub.exit:                                ; preds = %bb.g
  %i.ad = tail call ptr @lean_int_big_sub(ptr noundef %.1.i, ptr noundef %.0.i) #6
  br label %lean_dec.exit24

bb.k:                                             ; preds = %lean_obj_once.exit36
  %i.ae = tail call ptr @lean_int_big_sub(ptr noundef %.1.i, ptr noundef %.0.i) #6 ; 3 uses
  %i.af = load i32, ptr %.1.i, align 4, !tbaa !16 ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 1
  br i1 %i.ag, label %bb.l, label %bb.m, !prof !11

bb.l:                                             ; preds = %bb.k
  %i.ah = add nsw i32 %i.af, -1
  store i32 %i.ah, ptr %.1.i, align 4, !tbaa !16
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
  br i1 %.not.i39, label %bb.t, label %bb.o, !prof !14

bb.o:                                             ; preds = %lean_dec.exit24
  %i.ak = ptrtoint ptr %.0.i35 to i64             ; 2 uses
  %i.al = and i64 %i.ak, 1
  %.not21.i = icmp eq i64 %i.al, 0
  br i1 %.not21.i, label %lean_int_emod.exit, label %bb.p, !prof !14

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
  %1 = icmp ult i64 %.0.i40, 2147483648
  br i1 %1, label %bb.r, label %bb.s, !prof !11

bb.r:                                             ; preds = %bb.q
  %i.au = shl nuw nsw i64 %.0.i40, 1
  %i.av = or disjoint i64 %i.au, 1
  %i.aw = inttoptr i64 %i.av to ptr
  br label %lean_dec.exit22

bb.s:                                             ; preds = %bb.q
  %i.ax = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i40) #6
  br label %lean_dec.exit22

lean_int_emod.exit:                               ; preds = %bb.o
  %i.ay = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3870, ptr noundef %.0.i35) #6
  br label %lean_dec.exit22

bb.t:                                             ; preds = %lean_dec.exit24
  %i.az = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3870, ptr noundef %.0.i35) #6 ; 3 uses
  %i.ba = load i32, ptr %.0.i3870, align 4, !tbaa !16 ; 3 uses
  %i.bb = icmp sgt i32 %i.ba, 1
  br i1 %i.bb, label %bb.u, label %bb.v, !prof !11

bb.u:                                             ; preds = %bb.t
  %i.bc = add nsw i32 %i.ba, -1
  store i32 %i.bc, ptr %.0.i3870, align 4, !tbaa !16
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
  br i1 %.not.i43, label %bb.ab, label %bb.x, !prof !14

bb.x:                                             ; preds = %lean_dec.exit22
  %i.bf = ptrtoint ptr %.0.i35 to i64             ; 2 uses
  %i.bg = and i64 %i.bf, 1
  %.not7.i44 = icmp eq i64 %i.bg, 0
  br i1 %.not7.i44, label %lean_int_add.exit, label %bb.y, !prof !14

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
  %i.bs = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.bl) #6
  br label %lean_dec.exit20

lean_int_add.exit:                                ; preds = %bb.x
  %i.bt = tail call ptr @lean_int_big_add(ptr noundef %.1.i4173, ptr noundef %.0.i35) #6
  br label %lean_dec.exit20

bb.ab:                                            ; preds = %lean_dec.exit22
  %i.bu = tail call ptr @lean_int_big_add(ptr noundef %.1.i4173, ptr noundef %.0.i35) #6 ; 3 uses
  %i.bv = load i32, ptr %.1.i4173, align 4, !tbaa !16 ; 3 uses
  %i.bw = icmp sgt i32 %i.bv, 1
  br i1 %i.bw, label %bb.ac, label %bb.ad, !prof !11

bb.ac:                                            ; preds = %bb.ab
  %i.bx = add nsw i32 %i.bv, -1
  store i32 %i.bx, ptr %.1.i4173, align 4, !tbaa !16
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
  br i1 %.not.i47, label %bb.ak, label %bb.af, !prof !14

bb.af:                                            ; preds = %lean_dec.exit20
  %i.ca = ptrtoint ptr %.0.i35 to i64             ; 2 uses
  %i.cb = and i64 %i.ca, 1
  %.not21.i48 = icmp eq i64 %i.cb, 0
  br i1 %.not21.i48, label %lean_int_emod.exit53, label %bb.ag, !prof !14

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
  %2 = icmp ult i64 %.0.i50, 2147483648
  br i1 %2, label %bb.ai, label %bb.aj, !prof !11

bb.ai:                                            ; preds = %bb.ah
  %i.ck = shl nuw nsw i64 %.0.i50, 1
  %i.cl = or disjoint i64 %i.ck, 1
  %i.cm = inttoptr i64 %i.cl to ptr
  br label %lean_dec.exit18

bb.aj:                                            ; preds = %bb.ah
  %i.cn = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i50) #6
  br label %lean_dec.exit18

lean_int_emod.exit53:                             ; preds = %bb.af
  %i.co = tail call ptr @lean_int_big_emod(ptr noundef %.0.i4576, ptr noundef %.0.i35) #6
  br label %lean_dec.exit18

bb.ak:                                            ; preds = %lean_dec.exit20
  %i.cp = tail call ptr @lean_int_big_emod(ptr noundef %.0.i4576, ptr noundef %.0.i35) #6 ; 3 uses
  %i.cq = load i32, ptr %.0.i4576, align 4, !tbaa !16 ; 3 uses
  %i.cr = icmp sgt i32 %i.cq, 1
  br i1 %i.cr, label %bb.al, label %bb.am, !prof !11

bb.al:                                            ; preds = %bb.ak
  %i.cs = add nsw i32 %i.cq, -1
  store i32 %i.cs, ptr %.0.i4576, align 4, !tbaa !16
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
  br i1 %.not.i54, label %bb.as, label %bb.ao, !prof !14

bb.ao:                                            ; preds = %lean_dec.exit18
  %i.cv = ptrtoint ptr %.0.i to i64               ; 2 uses
  %i.cw = and i64 %i.cv, 1
  %.not7.i55 = icmp eq i64 %i.cw, 0
  br i1 %.not7.i55, label %lean_int_add.exit58, label %bb.ap, !prof !14

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
  %i.di = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.db) #6
  br label %lean_dec.exit

lean_int_add.exit58:                              ; preds = %bb.ao
  %i.dj = tail call ptr @lean_int_big_add(ptr noundef %.1.i5179, ptr noundef %.0.i) #6
  br label %lean_dec.exit

bb.as:                                            ; preds = %lean_dec.exit18
  %i.dk = tail call ptr @lean_int_big_add(ptr noundef %.1.i5179, ptr noundef %.0.i) #6 ; 3 uses
  %i.dl = load i32, ptr %.1.i5179, align 4, !tbaa !16 ; 3 uses
  %i.dm = icmp sgt i32 %i.dl, 1
  br i1 %i.dm, label %bb.at, label %bb.au, !prof !11

bb.at:                                            ; preds = %bb.as
  %i.dn = add nsw i32 %i.dl, -1
  store i32 %i.dn, ptr %.1.i5179, align 4, !tbaa !16
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
define internal ptr @_init_l_Std_Time_Month_instOfNatQuarter___aux__1___closed__3() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_instOfNatQuarter___aux__1___closed__2_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_instOfNatQuarter___aux__1___closed__2, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatQuarter___aux__1___closed__2, ptr noundef nonnull @l_Std_Time_Month_instOfNatQuarter___aux__1___closed__2_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatQuarter___aux__1___closed__2) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_Time_Month_instOfNatQuarter(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0) #6
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
  %i.j = load atomic i32, ptr @l_Std_Time_Month_instOfNatQuarter___aux__1___closed__3_once seq_cst, align 4, !tbaa !10
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.f, !prof !11

bb.e:                                             ; preds = %lean_nat_to_int.exit
  %i.l = load ptr, ptr @l_Std_Time_Month_instOfNatQuarter___aux__1___closed__3, align 8, !tbaa !13
  br label %lean_obj_once.exit36

bb.f:                                             ; preds = %lean_nat_to_int.exit
  %i.m = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatQuarter___aux__1___closed__3, ptr noundef nonnull @l_Std_Time_Month_instOfNatQuarter___aux__1___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatQuarter___aux__1___closed__3) #6
  br label %lean_obj_once.exit36

lean_obj_once.exit36:                             ; preds = %bb.e, %bb.f
  %.0.i35 = phi ptr [ %i.l, %bb.e ], [ %i.m, %bb.f ] ; 9 uses
  %i.n = ptrtoint ptr %.1.i to i64                ; 2 uses
  %i.o = and i64 %i.n, 1
  %.not.i37 = icmp eq i64 %i.o, 0
  br i1 %.not.i37, label %bb.k, label %bb.g, !prof !14

bb.g:                                             ; preds = %lean_obj_once.exit36
  %i.p = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.q = and i64 %i.p, 1
  %.not7.i = icmp eq i64 %i.q, 0
  br i1 %.not7.i, label %lean_int_sub.exit, label %bb.h, !prof !14

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
  %i.ac = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.v) #6
  br label %lean_dec.exit24

lean_int_sub.exit:                                ; preds = %bb.g
  %i.ad = tail call ptr @lean_int_big_sub(ptr noundef %.1.i, ptr noundef %.0.i) #6
  br label %lean_dec.exit24

bb.k:                                             ; preds = %lean_obj_once.exit36
  %i.ae = tail call ptr @lean_int_big_sub(ptr noundef %.1.i, ptr noundef %.0.i) #6 ; 3 uses
  %i.af = load i32, ptr %.1.i, align 4, !tbaa !16 ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 1
  br i1 %i.ag, label %bb.l, label %bb.m, !prof !11

bb.l:                                             ; preds = %bb.k
  %i.ah = add nsw i32 %i.af, -1
  store i32 %i.ah, ptr %.1.i, align 4, !tbaa !16
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
  br i1 %.not.i39, label %bb.t, label %bb.o, !prof !14

bb.o:                                             ; preds = %lean_dec.exit24
  %i.ak = ptrtoint ptr %.0.i35 to i64             ; 2 uses
  %i.al = and i64 %i.ak, 1
  %.not21.i = icmp eq i64 %i.al, 0
  br i1 %.not21.i, label %lean_int_emod.exit, label %bb.p, !prof !14

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
  %1 = icmp ult i64 %.0.i40, 2147483648
  br i1 %1, label %bb.r, label %bb.s, !prof !11

bb.r:                                             ; preds = %bb.q
  %i.au = shl nuw nsw i64 %.0.i40, 1
  %i.av = or disjoint i64 %i.au, 1
  %i.aw = inttoptr i64 %i.av to ptr
  br label %lean_dec.exit22

bb.s:                                             ; preds = %bb.q
  %i.ax = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i40) #6
  br label %lean_dec.exit22

lean_int_emod.exit:                               ; preds = %bb.o
  %i.ay = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3870, ptr noundef %.0.i35) #6
  br label %lean_dec.exit22

bb.t:                                             ; preds = %lean_dec.exit24
  %i.az = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3870, ptr noundef %.0.i35) #6 ; 3 uses
  %i.ba = load i32, ptr %.0.i3870, align 4, !tbaa !16 ; 3 uses
  %i.bb = icmp sgt i32 %i.ba, 1
  br i1 %i.bb, label %bb.u, label %bb.v, !prof !11

bb.u:                                             ; preds = %bb.t
  %i.bc = add nsw i32 %i.ba, -1
  store i32 %i.bc, ptr %.0.i3870, align 4, !tbaa !16
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
  br i1 %.not.i43, label %bb.ab, label %bb.x, !prof !14

bb.x:                                             ; preds = %lean_dec.exit22
  %i.bf = ptrtoint ptr %.0.i35 to i64             ; 2 uses
  %i.bg = and i64 %i.bf, 1
  %.not7.i44 = icmp eq i64 %i.bg, 0
  br i1 %.not7.i44, label %lean_int_add.exit, label %bb.y, !prof !14

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
  %i.bs = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.bl) #6
  br label %lean_dec.exit20

lean_int_add.exit:                                ; preds = %bb.x
  %i.bt = tail call ptr @lean_int_big_add(ptr noundef %.1.i4173, ptr noundef %.0.i35) #6
  br label %lean_dec.exit20

bb.ab:                                            ; preds = %lean_dec.exit22
  %i.bu = tail call ptr @lean_int_big_add(ptr noundef %.1.i4173, ptr noundef %.0.i35) #6 ; 3 uses
  %i.bv = load i32, ptr %.1.i4173, align 4, !tbaa !16 ; 3 uses
  %i.bw = icmp sgt i32 %i.bv, 1
  br i1 %i.bw, label %bb.ac, label %bb.ad, !prof !11

bb.ac:                                            ; preds = %bb.ab
  %i.bx = add nsw i32 %i.bv, -1
  store i32 %i.bx, ptr %.1.i4173, align 4, !tbaa !16
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
  br i1 %.not.i47, label %bb.ak, label %bb.af, !prof !14

bb.af:                                            ; preds = %lean_dec.exit20
  %i.ca = ptrtoint ptr %.0.i35 to i64             ; 2 uses
  %i.cb = and i64 %i.ca, 1
  %.not21.i48 = icmp eq i64 %i.cb, 0
  br i1 %.not21.i48, label %lean_int_emod.exit53, label %bb.ag, !prof !14

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
  %2 = icmp ult i64 %.0.i50, 2147483648
  br i1 %2, label %bb.ai, label %bb.aj, !prof !11

bb.ai:                                            ; preds = %bb.ah
  %i.ck = shl nuw nsw i64 %.0.i50, 1
  %i.cl = or disjoint i64 %i.ck, 1
  %i.cm = inttoptr i64 %i.cl to ptr
  br label %lean_dec.exit18

bb.aj:                                            ; preds = %bb.ah
  %i.cn = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i50) #6
  br label %lean_dec.exit18

lean_int_emod.exit53:                             ; preds = %bb.af
  %i.co = tail call ptr @lean_int_big_emod(ptr noundef %.0.i4576, ptr noundef %.0.i35) #6
  br label %lean_dec.exit18

bb.ak:                                            ; preds = %lean_dec.exit20
  %i.cp = tail call ptr @lean_int_big_emod(ptr noundef %.0.i4576, ptr noundef %.0.i35) #6 ; 3 uses
  %i.cq = load i32, ptr %.0.i4576, align 4, !tbaa !16 ; 3 uses
  %i.cr = icmp sgt i32 %i.cq, 1
  br i1 %i.cr, label %bb.al, label %bb.am, !prof !11

bb.al:                                            ; preds = %bb.ak
  %i.cs = add nsw i32 %i.cq, -1
  store i32 %i.cs, ptr %.0.i4576, align 4, !tbaa !16
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
  br i1 %.not.i54, label %bb.as, label %bb.ao, !prof !14

bb.ao:                                            ; preds = %lean_dec.exit18
  %i.cv = ptrtoint ptr %.0.i to i64               ; 2 uses
  %i.cw = and i64 %i.cv, 1
  %.not7.i55 = icmp eq i64 %i.cw, 0
  br i1 %.not7.i55, label %lean_int_add.exit58, label %bb.ap, !prof !14

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
  %i.di = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.db) #6
  br label %lean_dec.exit

lean_int_add.exit58:                              ; preds = %bb.ao
  %i.dj = tail call ptr @lean_int_big_add(ptr noundef %.1.i5179, ptr noundef %.0.i) #6
  br label %lean_dec.exit

bb.as:                                            ; preds = %lean_dec.exit18
  %i.dk = tail call ptr @lean_int_big_add(ptr noundef %.1.i5179, ptr noundef %.0.i) #6 ; 3 uses
  %i.dl = load i32, ptr %.1.i5179, align 4, !tbaa !16 ; 3 uses
  %i.dm = icmp sgt i32 %i.dl, 1
  br i1 %i.dm, label %bb.at, label %bb.au, !prof !11

bb.at:                                            ; preds = %bb.as
  %i.dn = add nsw i32 %i.dl, -1
  store i32 %i.dn, ptr %.1.i5179, align 4, !tbaa !16
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
define zeroext range(i8 0, 3) i8 @l_Std_Time_Month_instOrdQuarter___aux__1(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1                          ; 2 uses
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %lean_int_dec_lt.exit, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = and i64 %i.c, 1
  %.not7.i.i = icmp eq i64 %i.d, 0
  br i1 %.not7.i.i, label %lean_int_dec_lt.exit, label %.split, !prof !14

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
  br i1 %or.cond.not.i.i, label %.critedge.i.i10, label %bb.d, !prof !17

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
define nonnull ptr @l_Std_Time_Month_instOrdQuarter___aux__1___boxed(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.b, 0               ; 2 uses
  br i1 %.not.i.i.i, label %lean_int_dec_lt.exit.i, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.d = and i64 %i.c, 1
  %.not7.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not7.i.i.i, label %lean_int_dec_lt.exit.i, label %.split.i, !prof !14

.split.i:                                         ; preds = %bb.b
  %i.e = lshr i64 %i.a, 1
  %i.f = trunc i64 %i.e to i32
  %i.g = lshr i64 %i.c, 1
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp slt i32 %i.f, %i.h
  br i1 %i.i, label %l_Std_Time_Month_instOrdQuarter___aux__1.exit, label %lean_int_dec_lt.exit.i._crit_edge

lean_int_dec_lt.exit.i:                           ; preds = %bb.b, %bb.a
  %i.j = tail call zeroext i1 @lean_int_big_lt(ptr noundef %0, ptr noundef %1) #6
  %.pre = ptrtoint ptr %1 to i64                  ; 2 uses
  br i1 %i.j, label %l_Std_Time_Month_instOrdQuarter___aux__1.exit, label %lean_int_dec_lt.exit.i._crit_edge

lean_int_dec_lt.exit.i._crit_edge:                ; preds = %lean_int_dec_lt.exit.i, %.split.i
  %.pre-phi11 = phi i64 [ %i.c, %.split.i ], [ %.pre, %lean_int_dec_lt.exit.i ] ; 2 uses
  %i.k = and i64 %i.b, %.pre-phi11
  %or.cond.not.i.i.i = icmp eq i64 %i.k, 0
  br i1 %or.cond.not.i.i.i, label %.critedge.i.i10.i, label %bb.c, !prof !17

bb.c:                                             ; preds = %lean_int_dec_lt.exit.i._crit_edge
  %i.l = icmp eq ptr %0, %1
  br label %lean_int_dec_eq.exit.i

.critedge.i.i10.i:                                ; preds = %lean_int_dec_lt.exit.i._crit_edge
  %i.m = tail call zeroext i1 @lean_int_big_eq(ptr noundef %0, ptr noundef %1) #6
  br label %lean_int_dec_eq.exit.i

lean_int_dec_eq.exit.i:                           ; preds = %.critedge.i.i10.i, %bb.c
  %.0.i.i9.i = phi i1 [ %i.l, %bb.c ], [ %i.m, %.critedge.i.i10.i ]
  %i.n = select i1 %.0.i.i9.i, i64 3, i64 5
  br label %l_Std_Time_Month_instOrdQuarter___aux__1.exit

l_Std_Time_Month_instOrdQuarter___aux__1.exit:    ; preds = %lean_int_dec_lt.exit.i, %.split.i, %lean_int_dec_eq.exit.i
  %.pre-phi = phi i64 [ %.pre-phi11, %lean_int_dec_eq.exit.i ], [ %i.c, %.split.i ], [ %.pre, %lean_int_dec_lt.exit.i ]
  %.1.i = phi i64 [ %i.n, %lean_int_dec_eq.exit.i ], [ 1, %.split.i ], [ 1, %lean_int_dec_lt.exit.i ]
  %i.o = and i64 %.pre-phi, 1
  %.not.i5 = icmp eq i64 %i.o, 0
  br i1 %.not.i5, label %bb.d, label %lean_dec.exit6

bb.d:                                             ; preds = %l_Std_Time_Month_instOrdQuarter___aux__1.exit
  %i.p = load i32, ptr %1, align 4, !tbaa !16     ; 3 uses
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !11

end_hunk_1
begin_hunk_2_@l_Rat_instNatCast___lam__0
; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_days___closed__20() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_days___closed__19_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_days___closed__19, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__19, ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__19_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_days___closed__19) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_days___closed__9() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_days___closed__8_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_days___closed__8, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__8, ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__8_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_days___closed__8) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_days___closed__19() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_Ordinal_days___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_Ordinal_days___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__4, ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_days___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_days___closed__18_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_days___closed__18, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__18, ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__18_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_days___closed__18) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !14

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
  %0 = icmp ult i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nuw nsw i64 %.0.i5, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_days___closed__4() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_days___closed__3_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_days___closed__3, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__3, ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_days___closed__3) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_days___closed__18() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_Ordinal_days___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_Ordinal_days___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__4, ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_days___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_days___closed__17_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_days___closed__17, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__17, ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__17_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_days___closed__17) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_days___closed__3() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_days___closed__2_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_days___closed__2, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__2, ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__2_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_days___closed__2) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_sub.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_sub(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_sub.exit

lean_int_sub.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_days___closed__2() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_Ordinal_days___closed__1_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_Ordinal_days___closed__1, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__1, ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__1_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_days___closed__1) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_init_l_Std_Time_Month_Ordinal_days___closed__1() #1 {
bb.a:
  ret ptr inttoptr (i64 61 to ptr)
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_days___closed__17() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_Ordinal_days___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_Ordinal_days___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__4, ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_days___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_days___closed__16_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_days___closed__16, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__16, ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__16_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_days___closed__16) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !14

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
  %0 = icmp ult i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nuw nsw i64 %.0.i5, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_days___closed__16() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_days___closed__1_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_days___closed__1, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__1, ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__1_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_days___closed__1) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_sub.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_sub(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_sub.exit

lean_int_sub.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_days___closed__8() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_Ordinal_days___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_Ordinal_days___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__4, ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_days___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_days___closed__7_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_days___closed__7, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__7, ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__7_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_days___closed__7) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !14

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
  %0 = icmp ult i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nuw nsw i64 %.0.i5, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_days___closed__7() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_Ordinal_days___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_Ordinal_days___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__4, ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_days___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_days___closed__6_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_days___closed__6, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__6, ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__6_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_days___closed__6) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_days___closed__6() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_Ordinal_days___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_Ordinal_days___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__4, ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_days___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_days___closed__5_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_days___closed__5, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__5, ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__5_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_days___closed__5) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !14

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
  %0 = icmp ult i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nuw nsw i64 %.0.i5, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_days___closed__5() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_toSeconds___closed__0_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_toSeconds___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_toSeconds___closed__0, ptr noundef nonnull @l_Std_Time_Month_Ordinal_toSeconds___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_toSeconds___closed__0) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_sub.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_sub(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_sub.exit

lean_int_sub.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_days___closed__14() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_Ordinal_days___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_Ordinal_days___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__4, ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_days___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_days___closed__13_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_days___closed__13, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__13, ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__13_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_days___closed__13) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !14

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
  %0 = icmp ult i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nuw nsw i64 %.0.i5, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_days___closed__13() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_Ordinal_days___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_Ordinal_days___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__4, ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_days___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_days___closed__12_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_days___closed__12, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__12, ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__12_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_days___closed__12) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_days___closed__12() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_Ordinal_days___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_Ordinal_days___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__4, ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_days___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_days___closed__11_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_days___closed__11, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__11, ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__11_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_days___closed__11) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !14

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
  %0 = icmp ult i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nuw nsw i64 %.0.i5, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_days___closed__11() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_days___closed__10_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_days___closed__10, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__10, ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__10_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_days___closed__10) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_sub.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_sub(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_sub.exit

lean_int_sub.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_init_l_Std_Time_Month_Ordinal_days___closed__10() #1 {
bb.a:
  ret ptr inttoptr (i64 57 to ptr)
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_days___closed__26() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_Ordinal_days___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_Ordinal_days___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__4, ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_days___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_days___closed__25_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_days___closed__25, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__25, ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__25_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_days___closed__25) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !14

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
  %0 = icmp ult i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nuw nsw i64 %.0.i5, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_days___closed__25() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_Ordinal_days___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_Ordinal_days___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__4, ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_days___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_days___closed__24_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_days___closed__24, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__24, ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__24_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_days___closed__24) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_days___closed__24() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_Ordinal_days___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_Ordinal_days___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__4, ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_days___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_days___closed__23_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_days___closed__23, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__23, ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__23_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_days___closed__23) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !14

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
  %0 = icmp ult i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nuw nsw i64 %.0.i5, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_days___closed__23() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_days___closed__22_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_days___closed__22, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__22, ptr noundef nonnull @l_Std_Time_Month_Ordinal_days___closed__22_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_days___closed__22) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_sub.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_sub(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_sub.exit

lean_int_sub.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_init_l_Std_Time_Month_Ordinal_days___closed__22() #1 {
bb.a:
  ret ptr inttoptr (i64 59 to ptr)
}

declare void @lean_dec_ref_cold(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_instInhabitedOrdinal___closed__4() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_instInhabitedOrdinal___closed__3_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_instInhabitedOrdinal___closed__3, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instInhabitedOrdinal___closed__3, ptr noundef nonnull @l_Std_Time_Month_instInhabitedOrdinal___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Month_instInhabitedOrdinal___closed__3) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_instInhabitedOrdinal___closed__3() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_instInhabitedOrdinal___closed__2_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_instInhabitedOrdinal___closed__2, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instInhabitedOrdinal___closed__2, ptr noundef nonnull @l_Std_Time_Month_instInhabitedOrdinal___closed__2_once, ptr noundef nonnull @_init_l_Std_Time_Month_instInhabitedOrdinal___closed__2) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !14

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
  %0 = icmp ult i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nuw nsw i64 %.0.i5, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_instInhabitedOrdinal___closed__2() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_instInhabitedOrdinal___closed__1_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_instInhabitedOrdinal___closed__1, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instInhabitedOrdinal___closed__1, ptr noundef nonnull @l_Std_Time_Month_instInhabitedOrdinal___closed__1_once, ptr noundef nonnull @_init_l_Std_Time_Month_instInhabitedOrdinal___closed__1) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_instInhabitedOrdinal___closed__1() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_instInhabitedOrdinal___closed__0_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_instInhabitedOrdinal___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instInhabitedOrdinal___closed__0, ptr noundef nonnull @l_Std_Time_Month_instInhabitedOrdinal___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_instInhabitedOrdinal___closed__0) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !14

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
  %0 = icmp ult i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nuw nsw i64 %.0.i5, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_instInhabitedOrdinal___closed__0() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 3 uses
  %i.e = ptrtoint ptr %.0.i to i64
  %i.f = and i64 %i.e, 1
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %.critedge.i, label %lean_int_sub.exit, !prof !14

.critedge.i:                                      ; preds = %lean_obj_once.exit
  %i.g = tail call ptr @lean_int_big_sub(ptr noundef %.0.i, ptr noundef %.0.i) #6
  br label %lean_int_sub.exit

lean_int_sub.exit:                                ; preds = %lean_obj_once.exit, %.critedge.i
  %.0.i3 = phi ptr [ %i.g, %.critedge.i ], [ inttoptr (i64 1 to ptr), %lean_obj_once.exit ]
  ret ptr %.0.i3
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_instInhabitedQuarter___closed__3() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_instInhabitedQuarter___closed__2_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_instInhabitedQuarter___closed__2, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instInhabitedQuarter___closed__2, ptr noundef nonnull @l_Std_Time_Month_instInhabitedQuarter___closed__2_once, ptr noundef nonnull @_init_l_Std_Time_Month_instInhabitedQuarter___closed__2) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_instInhabitedQuarter___closed__2() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatQuarter___aux__1___closed__3_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatQuarter___aux__1___closed__3, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatQuarter___aux__1___closed__3, ptr noundef nonnull @l_Std_Time_Month_instOfNatQuarter___aux__1___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatQuarter___aux__1___closed__3) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_instInhabitedQuarter___closed__1_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_instInhabitedQuarter___closed__1, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instInhabitedQuarter___closed__1, ptr noundef nonnull @l_Std_Time_Month_instInhabitedQuarter___closed__1_once, ptr noundef nonnull @_init_l_Std_Time_Month_instInhabitedQuarter___closed__1) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !14

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
  %0 = icmp ult i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nuw nsw i64 %.0.i5, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_instInhabitedQuarter___closed__1() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatQuarter___aux__1___closed__3_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatQuarter___aux__1___closed__3, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatQuarter___aux__1___closed__3, ptr noundef nonnull @l_Std_Time_Month_instOfNatQuarter___aux__1___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatQuarter___aux__1___closed__3) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_instInhabitedQuarter___closed__0_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_instInhabitedQuarter___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instInhabitedQuarter___closed__0, ptr noundef nonnull @l_Std_Time_Month_instInhabitedQuarter___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_instInhabitedQuarter___closed__0) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_instInhabitedQuarter___closed__0() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatQuarter___aux__1___closed__3_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatQuarter___aux__1___closed__3, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatQuarter___aux__1___closed__3, ptr noundef nonnull @l_Std_Time_Month_instOfNatQuarter___aux__1___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatQuarter___aux__1___closed__3) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_instInhabitedOrdinal___closed__0_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_instInhabitedOrdinal___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instInhabitedOrdinal___closed__0, ptr noundef nonnull @l_Std_Time_Month_instInhabitedOrdinal___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_instInhabitedOrdinal___closed__0) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !14

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
  %0 = icmp ult i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nuw nsw i64 %.0.i5, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_february___closed__5() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_february___closed__4_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_february___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_february___closed__4, ptr noundef nonnull @l_Std_Time_Month_Ordinal_february___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_february___closed__4) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_february___closed__4() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_february___closed__3_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_february___closed__3, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_february___closed__3, ptr noundef nonnull @l_Std_Time_Month_Ordinal_february___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_february___closed__3) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !14

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
  %0 = icmp ult i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nuw nsw i64 %.0.i5, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_february___closed__3() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_february___closed__2_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_february___closed__2, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_february___closed__2, ptr noundef nonnull @l_Std_Time_Month_Ordinal_february___closed__2_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_february___closed__2) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_february___closed__2() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_february___closed__1_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_february___closed__1, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_february___closed__1, ptr noundef nonnull @l_Std_Time_Month_Ordinal_february___closed__1_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_february___closed__1) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !14

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
  %0 = icmp ult i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nuw nsw i64 %.0.i5, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_february___closed__1() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_february___closed__0_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_february___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_february___closed__0, ptr noundef nonnull @l_Std_Time_Month_Ordinal_february___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_february___closed__0) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_sub.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_sub(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_sub.exit

lean_int_sub.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_init_l_Std_Time_Month_Ordinal_february___closed__0() #1 {
bb.a:
  ret ptr inttoptr (i64 5 to ptr)
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_march___closed__4() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_march___closed__3_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_march___closed__3, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_march___closed__3, ptr noundef nonnull @l_Std_Time_Month_Ordinal_march___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_march___closed__3) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_march___closed__3() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_march___closed__2_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_march___closed__2, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_march___closed__2, ptr noundef nonnull @l_Std_Time_Month_Ordinal_march___closed__2_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_march___closed__2) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !14

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
  %0 = icmp ult i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nuw nsw i64 %.0.i5, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_march___closed__2() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_march___closed__1_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_march___closed__1, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_march___closed__1, ptr noundef nonnull @l_Std_Time_Month_Ordinal_march___closed__1_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_march___closed__1) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_march___closed__1() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_march___closed__0_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_march___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_march___closed__0, ptr noundef nonnull @l_Std_Time_Month_Ordinal_march___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_march___closed__0) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !14

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
  %0 = icmp ult i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nuw nsw i64 %.0.i5, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_march___closed__0() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_instOfNatQuarter___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_instOfNatQuarter___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatQuarter___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Month_instOfNatQuarter___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatQuarter___aux__1___closed__0) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_sub.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_sub(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_sub.exit

lean_int_sub.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_april___closed__5() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_april___closed__4_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_april___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_april___closed__4, ptr noundef nonnull @l_Std_Time_Month_Ordinal_april___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_april___closed__4) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_april___closed__4() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_april___closed__3_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_april___closed__3, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_april___closed__3, ptr noundef nonnull @l_Std_Time_Month_Ordinal_april___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_april___closed__3) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !14

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
  %0 = icmp ult i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nuw nsw i64 %.0.i5, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_april___closed__3() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_april___closed__2_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_april___closed__2, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_april___closed__2, ptr noundef nonnull @l_Std_Time_Month_Ordinal_april___closed__2_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_april___closed__2) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_april___closed__2() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_april___closed__1_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_april___closed__1, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_april___closed__1, ptr noundef nonnull @l_Std_Time_Month_Ordinal_april___closed__1_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_april___closed__1) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !14

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
  %0 = icmp ult i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nuw nsw i64 %.0.i5, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_april___closed__1() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_april___closed__0_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_april___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_april___closed__0, ptr noundef nonnull @l_Std_Time_Month_Ordinal_april___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_april___closed__0) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_sub.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_sub(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_sub.exit

lean_int_sub.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_init_l_Std_Time_Month_Ordinal_april___closed__0() #1 {
bb.a:
  ret ptr inttoptr (i64 9 to ptr)
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_may___closed__5() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_may___closed__4_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_may___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_may___closed__4, ptr noundef nonnull @l_Std_Time_Month_Ordinal_may___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_may___closed__4) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_may___closed__4() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_may___closed__3_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_may___closed__3, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_may___closed__3, ptr noundef nonnull @l_Std_Time_Month_Ordinal_may___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_may___closed__3) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !14

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
  %0 = icmp ult i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nuw nsw i64 %.0.i5, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_may___closed__3() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_may___closed__2_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_may___closed__2, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_may___closed__2, ptr noundef nonnull @l_Std_Time_Month_Ordinal_may___closed__2_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_may___closed__2) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_may___closed__2() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_may___closed__1_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_may___closed__1, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_may___closed__1, ptr noundef nonnull @l_Std_Time_Month_Ordinal_may___closed__1_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_may___closed__1) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !14

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
  %0 = icmp ult i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nuw nsw i64 %.0.i5, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_may___closed__1() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_may___closed__0_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_may___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_may___closed__0, ptr noundef nonnull @l_Std_Time_Month_Ordinal_may___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_may___closed__0) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_sub.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_sub(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_sub.exit

lean_int_sub.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_init_l_Std_Time_Month_Ordinal_may___closed__0() #1 {
bb.a:
  ret ptr inttoptr (i64 11 to ptr)
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_june___closed__5() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_june___closed__4_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_june___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_june___closed__4, ptr noundef nonnull @l_Std_Time_Month_Ordinal_june___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_june___closed__4) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_june___closed__4() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_june___closed__3_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_june___closed__3, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_june___closed__3, ptr noundef nonnull @l_Std_Time_Month_Ordinal_june___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_june___closed__3) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !14

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
  %0 = icmp ult i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nuw nsw i64 %.0.i5, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_june___closed__3() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_june___closed__2_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_june___closed__2, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_june___closed__2, ptr noundef nonnull @l_Std_Time_Month_Ordinal_june___closed__2_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_june___closed__2) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_june___closed__2() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_june___closed__1_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_june___closed__1, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_june___closed__1, ptr noundef nonnull @l_Std_Time_Month_Ordinal_june___closed__1_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_june___closed__1) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !14

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
  %0 = icmp ult i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nuw nsw i64 %.0.i5, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_june___closed__1() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_june___closed__0_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_june___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_june___closed__0, ptr noundef nonnull @l_Std_Time_Month_Ordinal_june___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_june___closed__0) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_sub.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_sub(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_sub.exit

lean_int_sub.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_init_l_Std_Time_Month_Ordinal_june___closed__0() #1 {
bb.a:
  ret ptr inttoptr (i64 13 to ptr)
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_july___closed__5() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_july___closed__4_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_july___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_july___closed__4, ptr noundef nonnull @l_Std_Time_Month_Ordinal_july___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_july___closed__4) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_july___closed__4() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_july___closed__3_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_july___closed__3, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_july___closed__3, ptr noundef nonnull @l_Std_Time_Month_Ordinal_july___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_july___closed__3) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !14

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
  %0 = icmp ult i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nuw nsw i64 %.0.i5, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_july___closed__3() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_july___closed__2_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_july___closed__2, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_july___closed__2, ptr noundef nonnull @l_Std_Time_Month_Ordinal_july___closed__2_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_july___closed__2) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_july___closed__2() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_july___closed__1_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_july___closed__1, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_july___closed__1, ptr noundef nonnull @l_Std_Time_Month_Ordinal_july___closed__1_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_july___closed__1) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !14

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
  %0 = icmp ult i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nuw nsw i64 %.0.i5, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_july___closed__1() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_july___closed__0_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_july___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_july___closed__0, ptr noundef nonnull @l_Std_Time_Month_Ordinal_july___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_july___closed__0) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_sub.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_sub(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_sub.exit

lean_int_sub.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_init_l_Std_Time_Month_Ordinal_july___closed__0() #1 {
bb.a:
  ret ptr inttoptr (i64 15 to ptr)
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_august___closed__5() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_august___closed__4_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_august___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_august___closed__4, ptr noundef nonnull @l_Std_Time_Month_Ordinal_august___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_august___closed__4) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_august___closed__4() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_august___closed__3_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_august___closed__3, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_august___closed__3, ptr noundef nonnull @l_Std_Time_Month_Ordinal_august___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_august___closed__3) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !14

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
  %0 = icmp ult i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nuw nsw i64 %.0.i5, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_august___closed__3() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_august___closed__2_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_august___closed__2, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_august___closed__2, ptr noundef nonnull @l_Std_Time_Month_Ordinal_august___closed__2_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_august___closed__2) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_august___closed__2() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_august___closed__1_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_august___closed__1, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_august___closed__1, ptr noundef nonnull @l_Std_Time_Month_Ordinal_august___closed__1_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_august___closed__1) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !14

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
  %0 = icmp ult i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nuw nsw i64 %.0.i5, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_august___closed__1() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_august___closed__0_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_august___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_august___closed__0, ptr noundef nonnull @l_Std_Time_Month_Ordinal_august___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_august___closed__0) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_sub.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_sub(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_sub.exit

lean_int_sub.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_init_l_Std_Time_Month_Ordinal_august___closed__0() #1 {
bb.a:
  ret ptr inttoptr (i64 17 to ptr)
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_september___closed__5() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_september___closed__4_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_september___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_september___closed__4, ptr noundef nonnull @l_Std_Time_Month_Ordinal_september___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_september___closed__4) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_september___closed__4() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_september___closed__3_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_september___closed__3, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_september___closed__3, ptr noundef nonnull @l_Std_Time_Month_Ordinal_september___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_september___closed__3) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !14

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
  %0 = icmp ult i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nuw nsw i64 %.0.i5, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_september___closed__3() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_september___closed__2_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_september___closed__2, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_september___closed__2, ptr noundef nonnull @l_Std_Time_Month_Ordinal_september___closed__2_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_september___closed__2) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_september___closed__2() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_september___closed__1_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_september___closed__1, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_september___closed__1, ptr noundef nonnull @l_Std_Time_Month_Ordinal_september___closed__1_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_september___closed__1) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !14

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
  %0 = icmp ult i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nuw nsw i64 %.0.i5, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_september___closed__1() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_september___closed__0_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_september___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_september___closed__0, ptr noundef nonnull @l_Std_Time_Month_Ordinal_september___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_september___closed__0) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_sub.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_sub(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_sub.exit

lean_int_sub.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_init_l_Std_Time_Month_Ordinal_september___closed__0() #1 {
bb.a:
  ret ptr inttoptr (i64 19 to ptr)
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_october___closed__5() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_october___closed__4_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_october___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_october___closed__4, ptr noundef nonnull @l_Std_Time_Month_Ordinal_october___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_october___closed__4) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_october___closed__4() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_october___closed__3_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_october___closed__3, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_october___closed__3, ptr noundef nonnull @l_Std_Time_Month_Ordinal_october___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_october___closed__3) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !14

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
  %0 = icmp ult i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nuw nsw i64 %.0.i5, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_october___closed__3() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_october___closed__2_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_october___closed__2, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_october___closed__2, ptr noundef nonnull @l_Std_Time_Month_Ordinal_october___closed__2_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_october___closed__2) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_october___closed__2() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_october___closed__1_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_october___closed__1, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_october___closed__1, ptr noundef nonnull @l_Std_Time_Month_Ordinal_october___closed__1_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_october___closed__1) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !14

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
  %0 = icmp ult i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nuw nsw i64 %.0.i5, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_october___closed__1() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_october___closed__0_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_october___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_october___closed__0, ptr noundef nonnull @l_Std_Time_Month_Ordinal_october___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_october___closed__0) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_sub.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_sub(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_sub.exit

lean_int_sub.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_init_l_Std_Time_Month_Ordinal_october___closed__0() #1 {
bb.a:
  ret ptr inttoptr (i64 21 to ptr)
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_november___closed__4() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_november___closed__3_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_november___closed__3, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_november___closed__3, ptr noundef nonnull @l_Std_Time_Month_Ordinal_november___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_november___closed__3) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_november___closed__3() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_november___closed__2_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_november___closed__2, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_november___closed__2, ptr noundef nonnull @l_Std_Time_Month_Ordinal_november___closed__2_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_november___closed__2) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !14

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
  %0 = icmp ult i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nuw nsw i64 %.0.i5, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_november___closed__2() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_november___closed__1_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_november___closed__1, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_november___closed__1, ptr noundef nonnull @l_Std_Time_Month_Ordinal_november___closed__1_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_november___closed__1) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_november___closed__1() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_november___closed__0_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_november___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_november___closed__0, ptr noundef nonnull @l_Std_Time_Month_Ordinal_november___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_november___closed__0) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !14

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
  %0 = icmp ult i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nuw nsw i64 %.0.i5, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_november___closed__0() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__1_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__1, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__1, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__1_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__1) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_sub.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_sub(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_sub.exit

lean_int_sub.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_december___closed__5() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_december___closed__4_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_december___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_december___closed__4, ptr noundef nonnull @l_Std_Time_Month_Ordinal_december___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_december___closed__4) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_december___closed__4() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_december___closed__3_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_december___closed__3, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_december___closed__3, ptr noundef nonnull @l_Std_Time_Month_Ordinal_december___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_december___closed__3) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !14

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
  %0 = icmp ult i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nuw nsw i64 %.0.i5, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_december___closed__3() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_december___closed__2_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_december___closed__2, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_december___closed__2, ptr noundef nonnull @l_Std_Time_Month_Ordinal_december___closed__2_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_december___closed__2) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_december___closed__2() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_december___closed__1_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_december___closed__1, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_december___closed__1, ptr noundef nonnull @l_Std_Time_Month_Ordinal_december___closed__1_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_december___closed__1) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !14

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
  %0 = icmp ult i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nuw nsw i64 %.0.i5, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Month_Ordinal_december___closed__1() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_Ordinal_december___closed__0_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_Ordinal_december___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_Ordinal_december___closed__0, ptr noundef nonnull @l_Std_Time_Month_Ordinal_december___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_Ordinal_december___closed__0) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_sub.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_sub(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_sub.exit

lean_int_sub.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_init_l_Std_Time_Month_Ordinal_december___closed__0() #1 {
bb.a:
  ret ptr inttoptr (i64 25 to ptr)
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__21() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__20_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__20, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__20, ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__20_once, ptr noundef nonnull @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__20) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 4 uses
  %i.e = load atomic i32, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__15_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__15, align 8, !tbaa !13
  br label %lean_obj_once.exit27

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__15, ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__15_once, ptr noundef nonnull @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__15) #6
  br label %lean_obj_once.exit27

lean_obj_once.exit27:                             ; preds = %bb.d, %bb.e
  %.0.i26 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ]
  %i.i = load atomic i32, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__9_once seq_cst, align 4, !tbaa !10
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %lean_obj_once.exit27
  %i.k = load ptr, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__9, align 8, !tbaa !13
  br label %lean_obj_once.exit29

bb.g:                                             ; preds = %lean_obj_once.exit27
  %i.l = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__9, ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__9_once, ptr noundef nonnull @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__9) #6
  br label %lean_obj_once.exit29

lean_obj_once.exit29:                             ; preds = %bb.f, %bb.g
  %.0.i28 = phi ptr [ %i.k, %bb.f ], [ %i.l, %bb.g ] ; 7 uses
  %i.m = tail call ptr @lean_alloc_object(i64 noundef 120) #6 ; 5 uses
  store i32 1, ptr %i.m, align 4, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4
  %i.p = and i32 %i.o, 65535
  %i.q = or disjoint i32 %i.p, -167772160
  store i32 %i.q, ptr %i.n, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !20
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 12, ptr %i.s, align 8, !tbaa !20
  %i.t = tail call ptr @lean_array_push(ptr noundef nonnull %i.m, ptr noundef %.0.i28) #6
  %i.u = tail call ptr @lean_array_push(ptr noundef %i.t, ptr noundef %.0.i26) #6
  %i.v = tail call ptr @lean_array_push(ptr noundef %i.u, ptr noundef %.0.i28) #6
  %i.w = tail call ptr @lean_array_push(ptr noundef %i.v, ptr noundef %.0.i) #6
  %i.x = tail call ptr @lean_array_push(ptr noundef %i.w, ptr noundef %.0.i28) #6
  %i.y = tail call ptr @lean_array_push(ptr noundef %i.x, ptr noundef %.0.i) #6
  %i.z = tail call ptr @lean_array_push(ptr noundef %i.y, ptr noundef %.0.i28) #6
  %i.aa = tail call ptr @lean_array_push(ptr noundef %i.z, ptr noundef %.0.i28) #6
  %i.ab = tail call ptr @lean_array_push(ptr noundef %i.aa, ptr noundef %.0.i) #6
  %i.ac = tail call ptr @lean_array_push(ptr noundef %i.ab, ptr noundef %.0.i28) #6
  %i.ad = tail call ptr @lean_array_push(ptr noundef %i.ac, ptr noundef %.0.i) #6
  %i.ae = tail call ptr @lean_array_push(ptr noundef %i.ad, ptr noundef %.0.i28) #6
  ret ptr %i.ae
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__20() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__19_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__19, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__19, ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__19_once, ptr noundef nonnull @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__19) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14
end_hunk_2
begin_hunk_3_@_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__20:bb.a
; Function Attrs: nounwind uwtable
define internal ptr @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__15() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__14_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__14, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__14, ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__14_once, ptr noundef nonnull @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__14) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__9() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__8_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__8, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__8, ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__8_once, ptr noundef nonnull @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__8) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__19() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__4, ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__4_once, ptr noundef nonnull @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__18_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__18, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__18, ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__18_once, ptr noundef nonnull @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__18) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !14

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
  %0 = icmp ult i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nuw nsw i64 %.0.i5, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__4() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__3_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__3, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__3, ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__3_once, ptr noundef nonnull @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__3) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__18() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__4, ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__4_once, ptr noundef nonnull @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__17_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__17, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__17, ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__17_once, ptr noundef nonnull @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__17) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__3() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__1_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__1, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__1, ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__1_once, ptr noundef nonnull @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__1) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_sub.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_sub(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_sub.exit

lean_int_sub.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__1() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__0, ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__0_once, ptr noundef nonnull @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__0() #1 {
bb.a:
  ret ptr inttoptr (i64 61 to ptr)
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__17() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__4, ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__4_once, ptr noundef nonnull @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__16_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__16, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__16, ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__16_once, ptr noundef nonnull @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__16) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !14

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
  %0 = icmp ult i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nuw nsw i64 %.0.i5, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__16() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__0_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__0, ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__0_once, ptr noundef nonnull @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__0) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_sub.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_sub(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_sub.exit

lean_int_sub.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__14() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__4, ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__4_once, ptr noundef nonnull @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__13_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__13, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__13, ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__13_once, ptr noundef nonnull @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__13) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !14

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
  %0 = icmp ult i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nuw nsw i64 %.0.i5, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__13() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__4, ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__4_once, ptr noundef nonnull @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__12_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__12, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__12, ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__12_once, ptr noundef nonnull @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__12) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__12() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__4, ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__4_once, ptr noundef nonnull @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__11_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__11, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__11, ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__11_once, ptr noundef nonnull @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__11) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !14

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
  %0 = icmp ult i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nuw nsw i64 %.0.i5, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__11() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__10_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__10, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__10, ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__10_once, ptr noundef nonnull @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__10) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_sub.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_sub(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_sub.exit

lean_int_sub.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__10() #1 {
bb.a:
  ret ptr inttoptr (i64 57 to ptr)
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__8() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__4, ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__4_once, ptr noundef nonnull @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__7_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__7, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__7, ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__7_once, ptr noundef nonnull @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__7) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !14

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
  %0 = icmp ult i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nuw nsw i64 %.0.i5, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__7() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__4, ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__4_once, ptr noundef nonnull @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__6_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__6, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__6, ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__6_once, ptr noundef nonnull @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__6) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_add(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__6() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__4, ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__4_once, ptr noundef nonnull @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__5_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__5, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__5, ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__5_once, ptr noundef nonnull @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__5) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not21.i = icmp eq i64 %i.l, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.g, !prof !14

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
  %0 = icmp ult i64 %.0.i5, 2147483648
  br i1 %0, label %bb.i, label %bb.j, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.u = shl nuw nsw i64 %.0.i5, 1
  %i.v = or disjoint i64 %i.u, 1
  %i.w = inttoptr i64 %i.v to ptr
  br label %lean_int_emod.exit

bb.j:                                             ; preds = %bb.h
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i5) #6
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_emod(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.g, %bb.i, %bb.j, %.critedge.i
  %.1.i = phi ptr [ %i.y, %.critedge.i ], [ %.0.i3, %bb.g ], [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__5() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Month_instOfNatOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__2_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__2, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__2, ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__2_once, ptr noundef nonnull @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__2) #6
  br label %lean_obj_once.exit4

lean_obj_once.exit4:                              ; preds = %bb.d, %bb.e
  %.0.i3 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.i = ptrtoint ptr %.0.i3 to i64               ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.critedge.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit4
  %i.k = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not7.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.g, !prof !14

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
  %i.x = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.q) #6
  br label %lean_int_sub.exit

.critedge.i:                                      ; preds = %bb.f, %lean_obj_once.exit4
  %i.y = tail call ptr @lean_int_big_sub(ptr noundef %.0.i3, ptr noundef %.0.i) #6
  br label %lean_int_sub.exit

lean_int_sub.exit:                                ; preds = %bb.h, %bb.i, %.critedge.i
  %.0.i5 = phi ptr [ %i.y, %.critedge.i ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret ptr %.0.i5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_monthSizesNonLeap___closed__2() #1 {
bb.a:
  ret ptr inttoptr (i64 63 to ptr)
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_cumulativeSizes___closed__11() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_cumulativeSizes___closed__10_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_cumulativeSizes___closed__10, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_cumulativeSizes___closed__10, ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_cumulativeSizes___closed__10_once, ptr noundef nonnull @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_cumulativeSizes___closed__10) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  %i.e = load atomic i32, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_cumulativeSizes___closed__9_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_cumulativeSizes___closed__9, align 8, !tbaa !13
  br label %lean_obj_once.exit27

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_cumulativeSizes___closed__9, ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_cumulativeSizes___closed__9_once, ptr noundef nonnull @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_cumulativeSizes___closed__9) #6
  br label %lean_obj_once.exit27

lean_obj_once.exit27:                             ; preds = %bb.d, %bb.e
  %.0.i26 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ]
  %i.i = load atomic i32, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_cumulativeSizes___closed__8_once seq_cst, align 4, !tbaa !10
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %lean_obj_once.exit27
  %i.k = load ptr, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_cumulativeSizes___closed__8, align 8, !tbaa !13
  br label %lean_obj_once.exit29

bb.g:                                             ; preds = %lean_obj_once.exit27
  %i.l = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_cumulativeSizes___closed__8, ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_cumulativeSizes___closed__8_once, ptr noundef nonnull @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_cumulativeSizes___closed__8) #6
  br label %lean_obj_once.exit29

lean_obj_once.exit29:                             ; preds = %bb.f, %bb.g
  %.0.i28 = phi ptr [ %i.k, %bb.f ], [ %i.l, %bb.g ]
  %i.m = load atomic i32, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_cumulativeSizes___closed__7_once seq_cst, align 4, !tbaa !10
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.h, label %bb.i, !prof !11

bb.h:                                             ; preds = %lean_obj_once.exit29
  %i.o = load ptr, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_cumulativeSizes___closed__7, align 8, !tbaa !13
  br label %lean_obj_once.exit31

bb.i:                                             ; preds = %lean_obj_once.exit29
  %i.p = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_cumulativeSizes___closed__7, ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_cumulativeSizes___closed__7_once, ptr noundef nonnull @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_cumulativeSizes___closed__7) #6
  br label %lean_obj_once.exit31

lean_obj_once.exit31:                             ; preds = %bb.h, %bb.i
  %.0.i30 = phi ptr [ %i.o, %bb.h ], [ %i.p, %bb.i ]
  %i.q = load atomic i32, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_cumulativeSizes___closed__6_once seq_cst, align 4, !tbaa !10
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %bb.j, label %bb.k, !prof !11

bb.j:                                             ; preds = %lean_obj_once.exit31
  %i.s = load ptr, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_cumulativeSizes___closed__6, align 8, !tbaa !13
  br label %lean_obj_once.exit33

bb.k:                                             ; preds = %lean_obj_once.exit31
  %i.t = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_cumulativeSizes___closed__6, ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_cumulativeSizes___closed__6_once, ptr noundef nonnull @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_cumulativeSizes___closed__6) #6
  br label %lean_obj_once.exit33

lean_obj_once.exit33:                             ; preds = %bb.j, %bb.k
  %.0.i32 = phi ptr [ %i.s, %bb.j ], [ %i.t, %bb.k ]
  %i.u = load atomic i32, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_cumulativeSizes___closed__5_once seq_cst, align 4, !tbaa !10
  %i.v = icmp eq i32 %i.u, 1
  br i1 %i.v, label %bb.l, label %bb.m, !prof !11

bb.l:                                             ; preds = %lean_obj_once.exit33
  %i.w = load ptr, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_cumulativeSizes___closed__5, align 8, !tbaa !13
  br label %lean_obj_once.exit35

bb.m:                                             ; preds = %lean_obj_once.exit33
  %i.x = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_cumulativeSizes___closed__5, ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_cumulativeSizes___closed__5_once, ptr noundef nonnull @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_cumulativeSizes___closed__5) #6
  br label %lean_obj_once.exit35

lean_obj_once.exit35:                             ; preds = %bb.l, %bb.m
  %.0.i34 = phi ptr [ %i.w, %bb.l ], [ %i.x, %bb.m ]
  %i.y = load atomic i32, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_cumulativeSizes___closed__4_once seq_cst, align 4, !tbaa !10
  %i.z = icmp eq i32 %i.y, 1
  br i1 %i.z, label %bb.n, label %bb.o, !prof !11

bb.n:                                             ; preds = %lean_obj_once.exit35
  %i.aa = load ptr, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_cumulativeSizes___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit37

bb.o:                                             ; preds = %lean_obj_once.exit35
  %i.ab = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_cumulativeSizes___closed__4, ptr noundef nonnull @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_cumulativeSizes___closed__4_once, ptr noundef nonnull @_init_l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_cumulativeSizes___closed__4) #6
  br label %lean_obj_once.exit37

lean_obj_once.exit37:                             ; preds = %bb.n, %bb.o
  %.0.i36 = phi ptr [ %i.aa, %bb.n ], [ %i.ab, %bb.o ]
  %i.ac = load atomic i32, ptr @l___private_Std_Time_Date_Unit_Month_0__Std_Time_Month_Ordinal_cumulativeSizes___closed__3_once seq_cst, align 4, !tbaa !10
  %i.ad = icmp eq i32 %i.ac, 1
  br i1 %i.ad, label %bb.p, label %bb.q, !prof !11

bb.p:                                             ; preds = %lean_obj_once.exit37
end_hunk_3
