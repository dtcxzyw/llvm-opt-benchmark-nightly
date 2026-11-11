Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/Day?download=true
inline.NumInlined: 405
inline.NumDeleted: 50
begin_hunk_0_@l_Std_Time_Day_instDecidableEqOrdinal:bb.a
  %i.g = zext i1 %.0.i.i to i8
  ret i8 %i.g
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Std_Time_Day_instDecidableEqOrdinal___boxed(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = and i64 %i.a, 1                          ; 2 uses
  %i.d = and i64 %i.c, %i.b
  %or.cond.not.i.i.i = icmp eq i64 %i.d, 0
  br i1 %or.cond.not.i.i.i, label %.critedge.i.i.i, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %0, %1
  br label %l_Std_Time_Day_instDecidableEqOrdinal.exit

.critedge.i.i.i:                                  ; preds = %bb.a
  %i.f = tail call zeroext i1 @lean_int_big_eq(ptr noundef %0, ptr noundef %1) #6
  br label %l_Std_Time_Day_instDecidableEqOrdinal.exit

l_Std_Time_Day_instDecidableEqOrdinal.exit:       ; preds = %bb.b, %.critedge.i.i.i
  %.0.i.i.i = phi i1 [ %i.e, %bb.b ], [ %i.f, %.critedge.i.i.i ]
  %i.g = and i64 %i.b, 1
  %.not.i5 = icmp eq i64 %i.g, 0
  br i1 %.not.i5, label %bb.c, label %lean_dec.exit6

bb.c:                                             ; preds = %l_Std_Time_Day_instDecidableEqOrdinal.exit
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

lean_dec.exit6:                                   ; preds = %bb.f, %bb.e, %bb.d, %l_Std_Time_Day_instDecidableEqOrdinal.exit
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
define ptr @l_Std_Time_Day_instOfNatOrdinal___aux__1(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0) #6
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
  %i.j = load atomic i32, ptr @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__4_once seq_cst, align 4, !tbaa !10
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.f, !prof !11

bb.e:                                             ; preds = %lean_nat_to_int.exit
  %i.l = load ptr, ptr @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit36

bb.f:                                             ; preds = %lean_nat_to_int.exit
  %i.m = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__4, ptr noundef nonnull @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__4) #6
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
define internal noundef nonnull ptr @_init_l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0() #1 {
bb.a:
  ret ptr inttoptr (i64 3 to ptr)
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__4() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__3_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__3, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__3, ptr noundef nonnull @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__3) #6
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
define ptr @l_Std_Time_Day_instOfNatOrdinal(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0) #6
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
  %i.j = load atomic i32, ptr @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__4_once seq_cst, align 4, !tbaa !10
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.f, !prof !11

bb.e:                                             ; preds = %lean_nat_to_int.exit
  %i.l = load ptr, ptr @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit36

bb.f:                                             ; preds = %lean_nat_to_int.exit
  %i.m = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__4, ptr noundef nonnull @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__4) #6
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
define zeroext range(i8 0, 2) i8 @l_Std_Time_Day_instDecidableLeOrdinal___aux__1(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
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
define nonnull ptr @l_Std_Time_Day_instDecidableLeOrdinal___aux__1___boxed(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i.i.i = icmp eq i64 %i.b, 0               ; 2 uses
  %.pre12 = ptrtoint ptr %1 to i64                ; 2 uses
  %.pre = and i64 %.pre12, 1
  %i.c = icmp eq i64 %.pre, 0                     ; 2 uses
  br i1 %.not.i.i.i, label %l_Std_Time_Day_instDecidableLeOrdinal___aux__1.exit, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %l_Std_Time_Day_instDecidableLeOrdinal___aux__1.exit.thread20, label %lean_dec.exit6.thread25, !prof !14

l_Std_Time_Day_instDecidableLeOrdinal___aux__1.exit.thread20: ; preds = %bb.b
  %i.d = tail call zeroext i1 @lean_int_big_le(ptr noundef %0, ptr noundef %1) #6
  br label %bb.c

lean_dec.exit6.thread25:                          ; preds = %bb.b
  %i.e = lshr i64 %i.a, 1
  %i.f = trunc i64 %i.e to i32
  %i.g = lshr i64 %.pre12, 1
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp sle i32 %i.f, %i.h
  br label %lean_dec.exit

l_Std_Time_Day_instDecidableLeOrdinal___aux__1.exit: ; preds = %bb.a
  %i.j = tail call zeroext i1 @lean_int_big_le(ptr noundef %0, ptr noundef %1) #6 ; 2 uses
  br i1 %i.c, label %bb.c, label %lean_dec.exit6.thread

bb.c:                                             ; preds = %l_Std_Time_Day_instDecidableLeOrdinal___aux__1.exit.thread20, %l_Std_Time_Day_instDecidableLeOrdinal___aux__1.exit
  %i.k = phi i1 [ %i.d, %l_Std_Time_Day_instDecidableLeOrdinal___aux__1.exit.thread20 ], [ %i.j, %l_Std_Time_Day_instDecidableLeOrdinal___aux__1.exit ] ; 2 uses
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

lean_dec.exit6.thread:                            ; preds = %l_Std_Time_Day_instDecidableLeOrdinal___aux__1.exit, %lean_dec.exit6
  %.0.i.i.i1924 = phi i1 [ %i.k, %lean_dec.exit6 ], [ %i.j, %l_Std_Time_Day_instDecidableLeOrdinal___aux__1.exit ] ; 3 uses
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
begin_hunk_1_@l_Std_Time_Day_Ordinal_instOrdOfYear___boxed:bb.a
  %i.i = or disjoint i32 %i.h, -184549376
  store i32 %i.i, ptr %i.f, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @l_Std_Time_Day_Ordinal_instOrdOfYear___aux__1___boxed, ptr %i.j, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i16 3, ptr %i.k, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 18
  store i16 1, ptr %i.l, align 2, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.d, ptr %i.m, align 8, !tbaa !13
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_Time_Day_Ordinal_OfYear_ofNat___redArg(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  %i.c = icmp ult ptr %0, inttoptr (i64 4294967296 to ptr)
  %or.cond.i = or i1 %i.c, %.not.i
  br i1 %or.cond.i, label %lean_nat_to_int.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.a, 1
  %i.e = tail call ptr @lean_big_size_t_to_int(i64 noundef %i.d) #6
  br label %lean_nat_to_int.exit

lean_nat_to_int.exit:                             ; preds = %bb.a, %bb.b
  %.1.i = phi ptr [ %0, %bb.a ], [ %i.e, %bb.b ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_Time_Day_Ordinal_OfYear_ofNat(i8 noundef zeroext %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  %i.c = icmp ult ptr %1, inttoptr (i64 4294967296 to ptr)
  %or.cond.i = or i1 %i.c, %.not.i
  br i1 %or.cond.i, label %lean_nat_to_int.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.a, 1
  %i.e = tail call ptr @lean_big_size_t_to_int(i64 noundef %i.d) #6
  br label %lean_nat_to_int.exit

lean_nat_to_int.exit:                             ; preds = %bb.a, %bb.b
  %.1.i = phi ptr [ %1, %bb.a ], [ %i.e, %bb.b ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_Time_Day_Ordinal_OfYear_ofNat___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  %i.c = icmp ult ptr %1, inttoptr (i64 4294967296 to ptr)
  %or.cond.i.i = or i1 %i.c, %.not.i.i
  br i1 %or.cond.i.i, label %l_Std_Time_Day_Ordinal_OfYear_ofNat.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.a, 1
  %i.e = tail call ptr @lean_big_size_t_to_int(i64 noundef %i.d) #6
  br label %l_Std_Time_Day_Ordinal_OfYear_ofNat.exit

l_Std_Time_Day_Ordinal_OfYear_ofNat.exit:         ; preds = %bb.a, %bb.b
  %.1.i.i = phi ptr [ %1, %bb.a ], [ %i.e, %bb.b ]
  ret ptr %.1.i.i
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_Time_Day_Ordinal_instOfNatOfYear___aux__1(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0) #6
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
  %i.j = load atomic i32, ptr @l_Std_Time_Day_Ordinal_instOfNatOfYear___aux__1___closed__3_once seq_cst, align 4, !tbaa !10
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.f, !prof !11

bb.e:                                             ; preds = %lean_nat_to_int.exit
  %i.l = load ptr, ptr @l_Std_Time_Day_Ordinal_instOfNatOfYear___aux__1___closed__3, align 8, !tbaa !13
  br label %lean_obj_once.exit36

bb.f:                                             ; preds = %lean_nat_to_int.exit
  %i.m = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Day_Ordinal_instOfNatOfYear___aux__1___closed__3, ptr noundef nonnull @l_Std_Time_Day_Ordinal_instOfNatOfYear___aux__1___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Day_Ordinal_instOfNatOfYear___aux__1___closed__3) #6
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
define internal ptr @_init_l_Std_Time_Day_Ordinal_instOfNatOfYear___aux__1___closed__3() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Day_Ordinal_instOfNatOfYear___aux__1___closed__2_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Day_Ordinal_instOfNatOfYear___aux__1___closed__2, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Day_Ordinal_instOfNatOfYear___aux__1___closed__2, ptr noundef nonnull @l_Std_Time_Day_Ordinal_instOfNatOfYear___aux__1___closed__2_once, ptr noundef nonnull @_init_l_Std_Time_Day_Ordinal_instOfNatOfYear___aux__1___closed__2) #6
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
define ptr @l_Std_Time_Day_Ordinal_instOfNatOfYear___aux__3(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0) #6
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
  %i.j = load atomic i32, ptr @l_Std_Time_Day_Ordinal_instOfNatOfYear___aux__3___closed__3_once seq_cst, align 4, !tbaa !10
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.f, !prof !11

bb.e:                                             ; preds = %lean_nat_to_int.exit
  %i.l = load ptr, ptr @l_Std_Time_Day_Ordinal_instOfNatOfYear___aux__3___closed__3, align 8, !tbaa !13
  br label %lean_obj_once.exit36

bb.f:                                             ; preds = %lean_nat_to_int.exit
  %i.m = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Day_Ordinal_instOfNatOfYear___aux__3___closed__3, ptr noundef nonnull @l_Std_Time_Day_Ordinal_instOfNatOfYear___aux__3___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Day_Ordinal_instOfNatOfYear___aux__3___closed__3) #6
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
define internal ptr @_init_l_Std_Time_Day_Ordinal_instOfNatOfYear___aux__3___closed__3() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Day_Ordinal_instOfNatOfYear___aux__3___closed__2_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Day_Ordinal_instOfNatOfYear___aux__3___closed__2, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Day_Ordinal_instOfNatOfYear___aux__3___closed__2, ptr noundef nonnull @l_Std_Time_Day_Ordinal_instOfNatOfYear___aux__3___closed__2_once, ptr noundef nonnull @_init_l_Std_Time_Day_Ordinal_instOfNatOfYear___aux__3___closed__2) #6
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
define ptr @l_Std_Time_Day_Ordinal_instOfNatOfYear(i8 noundef zeroext %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i8 %0, 0
  %i.b = load atomic i32, ptr @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.c = icmp eq i32 %i.b, 1                      ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.ax

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.d:                                             ; preds = %bb.b
  %i.e = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.d, %bb.c ], [ %i.e, %bb.d ] ; 6 uses
  %i.f = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.g = and i64 %i.f, 1
  %.not.i72 = icmp eq i64 %i.g, 0
  %i.h = icmp ult ptr %1, inttoptr (i64 4294967296 to ptr)
  %or.cond.i = or i1 %i.h, %.not.i72
  br i1 %or.cond.i, label %lean_nat_to_int.exit, label %bb.e

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.i = lshr i64 %i.f, 1
  %i.j = tail call ptr @lean_big_size_t_to_int(i64 noundef %i.i) #6
  br label %lean_nat_to_int.exit

lean_nat_to_int.exit:                             ; preds = %lean_obj_once.exit, %bb.e
  %.1.i = phi ptr [ %1, %lean_obj_once.exit ], [ %i.j, %bb.e ] ; 6 uses
  %i.k = load atomic i32, ptr @l_Std_Time_Day_Ordinal_instOfNatOfYear___aux__3___closed__3_once seq_cst, align 4, !tbaa !10
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %lean_nat_to_int.exit
  %i.m = load ptr, ptr @l_Std_Time_Day_Ordinal_instOfNatOfYear___aux__3___closed__3, align 8, !tbaa !13
  br label %lean_obj_once.exit74

bb.g:                                             ; preds = %lean_nat_to_int.exit
  %i.n = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Day_Ordinal_instOfNatOfYear___aux__3___closed__3, ptr noundef nonnull @l_Std_Time_Day_Ordinal_instOfNatOfYear___aux__3___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Day_Ordinal_instOfNatOfYear___aux__3___closed__3) #6
  br label %lean_obj_once.exit74

lean_obj_once.exit74:                             ; preds = %bb.f, %bb.g
  %.0.i73 = phi ptr [ %i.m, %bb.f ], [ %i.n, %bb.g ] ; 9 uses
  %i.o = ptrtoint ptr %.1.i to i64                ; 2 uses
  %i.p = and i64 %i.o, 1
  %.not.i75 = icmp eq i64 %i.p, 0
  br i1 %.not.i75, label %bb.l, label %bb.h, !prof !14

bb.h:                                             ; preds = %lean_obj_once.exit74
  %i.q = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.r = and i64 %i.q, 1
  %.not7.i = icmp eq i64 %i.r, 0
  br i1 %.not7.i, label %lean_int_sub.exit, label %bb.i, !prof !14

bb.i:                                             ; preds = %bb.h
  %i.s = shl i64 %i.o, 31
  %i.t = ashr i64 %i.s, 32
  %i.u = shl i64 %i.q, 31
  %i.v = ashr i64 %i.u, 32
  %i.w = sub nsw i64 %i.t, %i.v                   ; 3 uses
  %i.x = add nsw i64 %i.w, 2147483648
  %i.y = icmp ult i64 %i.x, 4294967296
  br i1 %i.y, label %bb.j, label %bb.k, !prof !11

bb.j:                                             ; preds = %bb.i
  %i.z = shl nsw i64 %i.w, 1
  %i.aa = and i64 %i.z, 8589934590
  %i.ab = or disjoint i64 %i.aa, 1
  %i.ac = inttoptr i64 %i.ab to ptr
  br label %lean_dec.exit52

bb.k:                                             ; preds = %bb.i
  %i.ad = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.w) #6
  br label %lean_dec.exit52

lean_int_sub.exit:                                ; preds = %bb.h
  %i.ae = tail call ptr @lean_int_big_sub(ptr noundef %.1.i, ptr noundef %.0.i) #6
  br label %lean_dec.exit52

bb.l:                                             ; preds = %lean_obj_once.exit74
  %i.af = tail call ptr @lean_int_big_sub(ptr noundef %.1.i, ptr noundef %.0.i) #6 ; 3 uses
  %i.ag = load i32, ptr %.1.i, align 4, !tbaa !16 ; 3 uses
  %i.ah = icmp sgt i32 %i.ag, 1
  br i1 %i.ah, label %bb.m, label %bb.n, !prof !11

bb.m:                                             ; preds = %bb.l
  %i.ai = add nsw i32 %i.ag, -1
  store i32 %i.ai, ptr %.1.i, align 4, !tbaa !16
  br label %lean_dec.exit52

bb.n:                                             ; preds = %bb.l
  %.not.i53 = icmp eq i32 %i.ag, 0
  br i1 %.not.i53, label %lean_dec.exit52, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i) #6
  br label %lean_dec.exit52

lean_dec.exit52:                                  ; preds = %bb.k, %bb.j, %lean_int_sub.exit, %bb.o, %bb.n, %bb.m
  %.0.i76158 = phi ptr [ %i.ae, %lean_int_sub.exit ], [ %i.af, %bb.o ], [ %i.af, %bb.n ], [ %i.af, %bb.m ], [ %i.ad, %bb.k ], [ %i.ac, %bb.j ] ; 7 uses
  %i.aj = ptrtoint ptr %.0.i76158 to i64          ; 2 uses
  %i.ak = and i64 %i.aj, 1
  %.not.i77 = icmp eq i64 %i.ak, 0
  br i1 %.not.i77, label %bb.u, label %bb.p, !prof !14

bb.p:                                             ; preds = %lean_dec.exit52
  %i.al = ptrtoint ptr %.0.i73 to i64             ; 2 uses
  %i.am = and i64 %i.al, 1
  %.not21.i = icmp eq i64 %i.am, 0
  br i1 %.not21.i, label %lean_int_emod.exit, label %bb.q, !prof !14

bb.q:                                             ; preds = %bb.p
  %i.an = shl i64 %i.al, 31
  %i.ao = ashr i64 %i.an, 32                      ; 3 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %lean_dec.exit50, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aq = shl i64 %i.aj, 31
  %i.ar = ashr i64 %i.aq, 32
  %i.as = srem i64 %i.ar, %i.ao                   ; 2 uses
  %i.at = icmp slt i64 %i.as, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.ao, i1 true)
  %i.au = select i1 %i.at, i64 %.p.i, i64 0
  %.0.i78 = add nsw i64 %i.au, %i.as              ; 3 uses
  %2 = icmp ult i64 %.0.i78, 2147483648
  br i1 %2, label %bb.s, label %bb.t, !prof !11

bb.s:                                             ; preds = %bb.r
  %i.av = shl nuw nsw i64 %.0.i78, 1
  %i.aw = or disjoint i64 %i.av, 1
  %i.ax = inttoptr i64 %i.aw to ptr
  br label %lean_dec.exit50

bb.t:                                             ; preds = %bb.r
  %i.ay = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i78) #6
  br label %lean_dec.exit50

lean_int_emod.exit:                               ; preds = %bb.p
  %i.az = tail call ptr @lean_int_big_emod(ptr noundef %.0.i76158, ptr noundef %.0.i73) #6
  br label %lean_dec.exit50

bb.u:                                             ; preds = %lean_dec.exit52
  %i.ba = tail call ptr @lean_int_big_emod(ptr noundef %.0.i76158, ptr noundef %.0.i73) #6 ; 3 uses
  %i.bb = load i32, ptr %.0.i76158, align 4, !tbaa !16 ; 3 uses
  %i.bc = icmp sgt i32 %i.bb, 1
  br i1 %i.bc, label %bb.v, label %bb.w, !prof !11

bb.v:                                             ; preds = %bb.u
  %i.bd = add nsw i32 %i.bb, -1
  store i32 %i.bd, ptr %.0.i76158, align 4, !tbaa !16
  br label %lean_dec.exit50

bb.w:                                             ; preds = %bb.u
  %.not.i54 = icmp eq i32 %i.bb, 0
  br i1 %.not.i54, label %lean_dec.exit50, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i76158) #6
  br label %lean_dec.exit50

lean_dec.exit50:                                  ; preds = %bb.t, %bb.s, %bb.q, %lean_int_emod.exit, %bb.x, %bb.w, %bb.v
  %.1.i79161 = phi ptr [ %i.az, %lean_int_emod.exit ], [ %i.ba, %bb.x ], [ %i.ba, %bb.w ], [ %i.ba, %bb.v ], [ %i.ay, %bb.t ], [ %i.ax, %bb.s ], [ %.0.i76158, %bb.q ] ; 6 uses
  %i.be = ptrtoint ptr %.1.i79161 to i64          ; 2 uses
  %i.bf = and i64 %i.be, 1
  %.not.i81 = icmp eq i64 %i.bf, 0
  br i1 %.not.i81, label %bb.ac, label %bb.y, !prof !14

bb.y:                                             ; preds = %lean_dec.exit50
  %i.bg = ptrtoint ptr %.0.i73 to i64             ; 2 uses
  %i.bh = and i64 %i.bg, 1
  %.not7.i82 = icmp eq i64 %i.bh, 0
  br i1 %.not7.i82, label %lean_int_add.exit, label %bb.z, !prof !14

bb.z:                                             ; preds = %bb.y
  %i.bi = shl i64 %i.be, 31
  %i.bj = ashr i64 %i.bi, 32
  %i.bk = shl i64 %i.bg, 31
  %i.bl = ashr i64 %i.bk, 32
  %i.bm = add nsw i64 %i.bj, %i.bl                ; 3 uses
  %i.bn = add nsw i64 %i.bm, 2147483648
  %i.bo = icmp ult i64 %i.bn, 4294967296
  br i1 %i.bo, label %bb.aa, label %bb.ab, !prof !11

bb.aa:                                            ; preds = %bb.z
  %i.bp = shl nsw i64 %i.bm, 1
  %i.bq = and i64 %i.bp, 8589934590
  %i.br = or disjoint i64 %i.bq, 1
  %i.bs = inttoptr i64 %i.br to ptr
  br label %lean_dec.exit48

bb.ab:                                            ; preds = %bb.z
  %i.bt = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.bm) #6
  br label %lean_dec.exit48

lean_int_add.exit:                                ; preds = %bb.y
  %i.bu = tail call ptr @lean_int_big_add(ptr noundef %.1.i79161, ptr noundef %.0.i73) #6
  br label %lean_dec.exit48

bb.ac:                                            ; preds = %lean_dec.exit50
  %i.bv = tail call ptr @lean_int_big_add(ptr noundef %.1.i79161, ptr noundef %.0.i73) #6 ; 3 uses
  %i.bw = load i32, ptr %.1.i79161, align 4, !tbaa !16 ; 3 uses
  %i.bx = icmp sgt i32 %i.bw, 1
  br i1 %i.bx, label %bb.ad, label %bb.ae, !prof !11

bb.ad:                                            ; preds = %bb.ac
  %i.by = add nsw i32 %i.bw, -1
  store i32 %i.by, ptr %.1.i79161, align 4, !tbaa !16
  br label %lean_dec.exit48

bb.ae:                                            ; preds = %bb.ac
  %.not.i56 = icmp eq i32 %i.bw, 0
  br i1 %.not.i56, label %lean_dec.exit48, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i79161) #6
  br label %lean_dec.exit48

lean_dec.exit48:                                  ; preds = %bb.ab, %bb.aa, %lean_int_add.exit, %bb.af, %bb.ae, %bb.ad
  %.0.i83164 = phi ptr [ %i.bu, %lean_int_add.exit ], [ %i.bv, %bb.af ], [ %i.bv, %bb.ae ], [ %i.bv, %bb.ad ], [ %i.bt, %bb.ab ], [ %i.bs, %bb.aa ] ; 7 uses
  %i.bz = ptrtoint ptr %.0.i83164 to i64          ; 2 uses
  %i.ca = and i64 %i.bz, 1
  %.not.i85 = icmp eq i64 %i.ca, 0
  br i1 %.not.i85, label %bb.al, label %bb.ag, !prof !14

bb.ag:                                            ; preds = %lean_dec.exit48
  %i.cb = ptrtoint ptr %.0.i73 to i64             ; 2 uses
  %i.cc = and i64 %i.cb, 1
  %.not21.i86 = icmp eq i64 %i.cc, 0
  br i1 %.not21.i86, label %lean_int_emod.exit91, label %bb.ah, !prof !14

bb.ah:                                            ; preds = %bb.ag
  %i.cd = shl i64 %i.cb, 31
  %i.ce = ashr i64 %i.cd, 32                      ; 3 uses
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %lean_dec.exit46, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cg = shl i64 %i.bz, 31
  %i.ch = ashr i64 %i.cg, 32
  %i.ci = srem i64 %i.ch, %i.ce                   ; 2 uses
  %i.cj = icmp slt i64 %i.ci, 0
  %.p.i87 = tail call i64 @llvm.abs.i64(i64 %i.ce, i1 true)
  %i.ck = select i1 %i.cj, i64 %.p.i87, i64 0
  %.0.i88 = add nsw i64 %i.ck, %i.ci              ; 3 uses
  %3 = icmp ult i64 %.0.i88, 2147483648
  br i1 %3, label %bb.aj, label %bb.ak, !prof !11

bb.aj:                                            ; preds = %bb.ai
  %i.cl = shl nuw nsw i64 %.0.i88, 1
  %i.cm = or disjoint i64 %i.cl, 1
  %i.cn = inttoptr i64 %i.cm to ptr
  br label %lean_dec.exit46

bb.ak:                                            ; preds = %bb.ai
  %i.co = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i88) #6
  br label %lean_dec.exit46

lean_int_emod.exit91:                             ; preds = %bb.ag
  %i.cp = tail call ptr @lean_int_big_emod(ptr noundef %.0.i83164, ptr noundef %.0.i73) #6
  br label %lean_dec.exit46

bb.al:                                            ; preds = %lean_dec.exit48
  %i.cq = tail call ptr @lean_int_big_emod(ptr noundef %.0.i83164, ptr noundef %.0.i73) #6 ; 3 uses
  %i.cr = load i32, ptr %.0.i83164, align 4, !tbaa !16 ; 3 uses
  %i.cs = icmp sgt i32 %i.cr, 1
  br i1 %i.cs, label %bb.am, label %bb.an, !prof !11

bb.am:                                            ; preds = %bb.al
  %i.ct = add nsw i32 %i.cr, -1
  store i32 %i.ct, ptr %.0.i83164, align 4, !tbaa !16
  br label %lean_dec.exit46

bb.an:                                            ; preds = %bb.al
  %.not.i58 = icmp eq i32 %i.cr, 0
  br i1 %.not.i58, label %lean_dec.exit46, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i83164) #6
  br label %lean_dec.exit46

lean_dec.exit46:                                  ; preds = %bb.ak, %bb.aj, %bb.ah, %lean_int_emod.exit91, %bb.ao, %bb.an, %bb.am
  %.1.i89167 = phi ptr [ %i.cp, %lean_int_emod.exit91 ], [ %i.cq, %bb.ao ], [ %i.cq, %bb.an ], [ %i.cq, %bb.am ], [ %i.co, %bb.ak ], [ %i.cn, %bb.aj ], [ %.0.i83164, %bb.ah ] ; 6 uses
  %i.cu = ptrtoint ptr %.1.i89167 to i64          ; 2 uses
  %i.cv = and i64 %i.cu, 1
  %.not.i92 = icmp eq i64 %i.cv, 0
  br i1 %.not.i92, label %bb.at, label %bb.ap, !prof !14

bb.ap:                                            ; preds = %lean_dec.exit46
  %i.cw = ptrtoint ptr %.0.i to i64               ; 2 uses
  %i.cx = and i64 %i.cw, 1
  %.not7.i93 = icmp eq i64 %i.cx, 0
  br i1 %.not7.i93, label %lean_int_add.exit96, label %bb.aq, !prof !14

bb.aq:                                            ; preds = %bb.ap
  %i.cy = shl i64 %i.cu, 31
  %i.cz = ashr i64 %i.cy, 32
  %i.da = shl i64 %i.cw, 31
  %i.db = ashr i64 %i.da, 32
  %i.dc = add nsw i64 %i.cz, %i.db                ; 3 uses
  %i.dd = add nsw i64 %i.dc, 2147483648
  %i.de = icmp ult i64 %i.dd, 4294967296
  br i1 %i.de, label %bb.ar, label %bb.as, !prof !11

bb.ar:                                            ; preds = %bb.aq
  %i.df = shl nsw i64 %i.dc, 1
  %i.dg = and i64 %i.df, 8589934590
  %i.dh = or disjoint i64 %i.dg, 1
  %i.di = inttoptr i64 %i.dh to ptr
  br label %lean_dec.exit44

bb.as:                                            ; preds = %bb.aq
  %i.dj = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.dc) #6
  br label %lean_dec.exit44

lean_int_add.exit96:                              ; preds = %bb.ap
  %i.dk = tail call ptr @lean_int_big_add(ptr noundef %.1.i89167, ptr noundef %.0.i) #6
  br label %lean_dec.exit44

bb.at:                                            ; preds = %lean_dec.exit46
  %i.dl = tail call ptr @lean_int_big_add(ptr noundef %.1.i89167, ptr noundef %.0.i) #6 ; 3 uses
  %i.dm = load i32, ptr %.1.i89167, align 4, !tbaa !16 ; 3 uses
  %i.dn = icmp sgt i32 %i.dm, 1
  br i1 %i.dn, label %bb.au, label %bb.av, !prof !11

bb.au:                                            ; preds = %bb.at
  %i.do = add nsw i32 %i.dm, -1
  store i32 %i.do, ptr %.1.i89167, align 4, !tbaa !16
  br label %lean_dec.exit44

bb.av:                                            ; preds = %bb.at
  %.not.i60 = icmp eq i32 %i.dm, 0
  br i1 %.not.i60, label %lean_dec.exit44, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i89167) #6
  br label %lean_dec.exit44

bb.ax:                                            ; preds = %bb.a
  br i1 %i.c, label %bb.ay, label %bb.az, !prof !11

bb.ay:                                            ; preds = %bb.ax
  %i.dp = load ptr, ptr @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit98

bb.az:                                            ; preds = %bb.ax
  %i.dq = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit98

lean_obj_once.exit98:                             ; preds = %bb.ay, %bb.az
  %.0.i97 = phi ptr [ %i.dp, %bb.ay ], [ %i.dq, %bb.az ] ; 6 uses
  %i.dr = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ds = and i64 %i.dr, 1
  %.not.i99 = icmp eq i64 %i.ds, 0
  %i.dt = icmp ult ptr %1, inttoptr (i64 4294967296 to ptr)
  %or.cond.i100 = or i1 %i.dt, %.not.i99
  br i1 %or.cond.i100, label %lean_nat_to_int.exit102, label %bb.ba

bb.ba:                                            ; preds = %lean_obj_once.exit98
  %i.du = lshr i64 %i.dr, 1
  %i.dv = tail call ptr @lean_big_size_t_to_int(i64 noundef %i.du) #6
  br label %lean_nat_to_int.exit102

lean_nat_to_int.exit102:                          ; preds = %lean_obj_once.exit98, %bb.ba
  %.1.i101 = phi ptr [ %1, %lean_obj_once.exit98 ], [ %i.dv, %bb.ba ] ; 6 uses
  %i.dw = load atomic i32, ptr @l_Std_Time_Day_Ordinal_instOfNatOfYear___aux__1___closed__3_once seq_cst, align 4, !tbaa !10
  %i.dx = icmp eq i32 %i.dw, 1
  br i1 %i.dx, label %bb.bb, label %bb.bc, !prof !11

bb.bb:                                            ; preds = %lean_nat_to_int.exit102
  %i.dy = load ptr, ptr @l_Std_Time_Day_Ordinal_instOfNatOfYear___aux__1___closed__3, align 8, !tbaa !13
  br label %lean_obj_once.exit104

bb.bc:                                            ; preds = %lean_nat_to_int.exit102
  %i.dz = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Day_Ordinal_instOfNatOfYear___aux__1___closed__3, ptr noundef nonnull @l_Std_Time_Day_Ordinal_instOfNatOfYear___aux__1___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Day_Ordinal_instOfNatOfYear___aux__1___closed__3) #6
  br label %lean_obj_once.exit104

lean_obj_once.exit104:                            ; preds = %bb.bb, %bb.bc
  %.0.i103 = phi ptr [ %i.dy, %bb.bb ], [ %i.dz, %bb.bc ] ; 9 uses
  %i.ea = ptrtoint ptr %.1.i101 to i64            ; 2 uses
  %i.eb = and i64 %i.ea, 1
  %.not.i105 = icmp eq i64 %i.eb, 0
  br i1 %.not.i105, label %bb.bh, label %bb.bd, !prof !14

bb.bd:                                            ; preds = %lean_obj_once.exit104
  %i.ec = ptrtoint ptr %.0.i97 to i64             ; 2 uses
  %i.ed = and i64 %i.ec, 1
  %.not7.i106 = icmp eq i64 %i.ed, 0
  br i1 %.not7.i106, label %lean_int_sub.exit109, label %bb.be, !prof !14

bb.be:                                            ; preds = %bb.bd
  %i.ee = shl i64 %i.ea, 31
  %i.ef = ashr i64 %i.ee, 32
  %i.eg = shl i64 %i.ec, 31
  %i.eh = ashr i64 %i.eg, 32
  %i.ei = sub nsw i64 %i.ef, %i.eh                ; 3 uses
  %i.ej = add nsw i64 %i.ei, 2147483648
  %i.ek = icmp ult i64 %i.ej, 4294967296
  br i1 %i.ek, label %bb.bf, label %bb.bg, !prof !11

bb.bf:                                            ; preds = %bb.be
  %i.el = shl nsw i64 %i.ei, 1
  %i.em = and i64 %i.el, 8589934590
  %i.en = or disjoint i64 %i.em, 1
  %i.eo = inttoptr i64 %i.en to ptr
  br label %lean_dec.exit42

bb.bg:                                            ; preds = %bb.be
  %i.ep = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.ei) #6
  br label %lean_dec.exit42

lean_int_sub.exit109:                             ; preds = %bb.bd
  %i.eq = tail call ptr @lean_int_big_sub(ptr noundef %.1.i101, ptr noundef %.0.i97) #6
  br label %lean_dec.exit42

bb.bh:                                            ; preds = %lean_obj_once.exit104
  %i.er = tail call ptr @lean_int_big_sub(ptr noundef %.1.i101, ptr noundef %.0.i97) #6 ; 3 uses
  %i.es = load i32, ptr %.1.i101, align 4, !tbaa !16 ; 3 uses
  %i.et = icmp sgt i32 %i.es, 1
  br i1 %i.et, label %bb.bi, label %bb.bj, !prof !11

bb.bi:                                            ; preds = %bb.bh
  %i.eu = add nsw i32 %i.es, -1
  store i32 %i.eu, ptr %.1.i101, align 4, !tbaa !16
  br label %lean_dec.exit42

bb.bj:                                            ; preds = %bb.bh
  %.not.i62 = icmp eq i32 %i.es, 0
  br i1 %.not.i62, label %lean_dec.exit42, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i101) #6
  br label %lean_dec.exit42

lean_dec.exit42:                                  ; preds = %bb.bg, %bb.bf, %lean_int_sub.exit109, %bb.bk, %bb.bj, %bb.bi
  %.0.i107172 = phi ptr [ %i.eq, %lean_int_sub.exit109 ], [ %i.er, %bb.bk ], [ %i.er, %bb.bj ], [ %i.er, %bb.bi ], [ %i.ep, %bb.bg ], [ %i.eo, %bb.bf ] ; 7 uses
  %i.ev = ptrtoint ptr %.0.i107172 to i64         ; 2 uses
  %i.ew = and i64 %i.ev, 1
  %.not.i110 = icmp eq i64 %i.ew, 0
  br i1 %.not.i110, label %bb.bq, label %bb.bl, !prof !14

bb.bl:                                            ; preds = %lean_dec.exit42
  %i.ex = ptrtoint ptr %.0.i103 to i64            ; 2 uses
  %i.ey = and i64 %i.ex, 1
  %.not21.i111 = icmp eq i64 %i.ey, 0
  br i1 %.not21.i111, label %lean_int_emod.exit116, label %bb.bm, !prof !14

bb.bm:                                            ; preds = %bb.bl
  %i.ez = shl i64 %i.ex, 31
  %i.fa = ashr i64 %i.ez, 32                      ; 3 uses
  %i.fb = icmp eq i64 %i.fa, 0
  br i1 %i.fb, label %lean_dec.exit40, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.fc = shl i64 %i.ev, 31
  %i.fd = ashr i64 %i.fc, 32
  %i.fe = srem i64 %i.fd, %i.fa                   ; 2 uses
  %i.ff = icmp slt i64 %i.fe, 0
  %.p.i112 = tail call i64 @llvm.abs.i64(i64 %i.fa, i1 true)
  %i.fg = select i1 %i.ff, i64 %.p.i112, i64 0
  %.0.i113 = add nsw i64 %i.fg, %i.fe             ; 3 uses
  %4 = icmp ult i64 %.0.i113, 2147483648
  br i1 %4, label %bb.bo, label %bb.bp, !prof !11

bb.bo:                                            ; preds = %bb.bn
  %i.fh = shl nuw nsw i64 %.0.i113, 1
  %i.fi = or disjoint i64 %i.fh, 1
  %i.fj = inttoptr i64 %i.fi to ptr
  br label %lean_dec.exit40

bb.bp:                                            ; preds = %bb.bn
  %i.fk = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i113) #6
  br label %lean_dec.exit40

lean_int_emod.exit116:                            ; preds = %bb.bl
  %i.fl = tail call ptr @lean_int_big_emod(ptr noundef %.0.i107172, ptr noundef %.0.i103) #6
  br label %lean_dec.exit40

bb.bq:                                            ; preds = %lean_dec.exit42
  %i.fm = tail call ptr @lean_int_big_emod(ptr noundef %.0.i107172, ptr noundef %.0.i103) #6 ; 3 uses
  %i.fn = load i32, ptr %.0.i107172, align 4, !tbaa !16 ; 3 uses
  %i.fo = icmp sgt i32 %i.fn, 1
  br i1 %i.fo, label %bb.br, label %bb.bs, !prof !11

bb.br:                                            ; preds = %bb.bq
  %i.fp = add nsw i32 %i.fn, -1
  store i32 %i.fp, ptr %.0.i107172, align 4, !tbaa !16
  br label %lean_dec.exit40

bb.bs:                                            ; preds = %bb.bq
  %.not.i64 = icmp eq i32 %i.fn, 0
  br i1 %.not.i64, label %lean_dec.exit40, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i107172) #6
  br label %lean_dec.exit40

lean_dec.exit40:                                  ; preds = %bb.bp, %bb.bo, %bb.bm, %lean_int_emod.exit116, %bb.bt, %bb.bs, %bb.br
  %.1.i114175 = phi ptr [ %i.fl, %lean_int_emod.exit116 ], [ %i.fm, %bb.bt ], [ %i.fm, %bb.bs ], [ %i.fm, %bb.br ], [ %i.fk, %bb.bp ], [ %i.fj, %bb.bo ], [ %.0.i107172, %bb.bm ] ; 6 uses
  %i.fq = ptrtoint ptr %.1.i114175 to i64         ; 2 uses
  %i.fr = and i64 %i.fq, 1
  %.not.i117 = icmp eq i64 %i.fr, 0
  br i1 %.not.i117, label %bb.by, label %bb.bu, !prof !14

bb.bu:                                            ; preds = %lean_dec.exit40
  %i.fs = ptrtoint ptr %.0.i103 to i64            ; 2 uses
  %i.ft = and i64 %i.fs, 1
  %.not7.i118 = icmp eq i64 %i.ft, 0
  br i1 %.not7.i118, label %lean_int_add.exit121, label %bb.bv, !prof !14

bb.bv:                                            ; preds = %bb.bu
  %i.fu = shl i64 %i.fq, 31
  %i.fv = ashr i64 %i.fu, 32
  %i.fw = shl i64 %i.fs, 31
  %i.fx = ashr i64 %i.fw, 32
  %i.fy = add nsw i64 %i.fv, %i.fx                ; 3 uses
  %i.fz = add nsw i64 %i.fy, 2147483648
  %i.ga = icmp ult i64 %i.fz, 4294967296
  br i1 %i.ga, label %bb.bw, label %bb.bx, !prof !11

bb.bw:                                            ; preds = %bb.bv
  %i.gb = shl nsw i64 %i.fy, 1
  %i.gc = and i64 %i.gb, 8589934590
  %i.gd = or disjoint i64 %i.gc, 1
  %i.ge = inttoptr i64 %i.gd to ptr
  br label %lean_dec.exit38

bb.bx:                                            ; preds = %bb.bv
  %i.gf = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.fy) #6
  br label %lean_dec.exit38

lean_int_add.exit121:                             ; preds = %bb.bu
  %i.gg = tail call ptr @lean_int_big_add(ptr noundef %.1.i114175, ptr noundef %.0.i103) #6
  br label %lean_dec.exit38

bb.by:                                            ; preds = %lean_dec.exit40
  %i.gh = tail call ptr @lean_int_big_add(ptr noundef %.1.i114175, ptr noundef %.0.i103) #6 ; 3 uses
  %i.gi = load i32, ptr %.1.i114175, align 4, !tbaa !16 ; 3 uses
  %i.gj = icmp sgt i32 %i.gi, 1
  br i1 %i.gj, label %bb.bz, label %bb.ca, !prof !11

bb.bz:                                            ; preds = %bb.by
  %i.gk = add nsw i32 %i.gi, -1
  store i32 %i.gk, ptr %.1.i114175, align 4, !tbaa !16
  br label %lean_dec.exit38

bb.ca:                                            ; preds = %bb.by
  %.not.i66 = icmp eq i32 %i.gi, 0
  br i1 %.not.i66, label %lean_dec.exit38, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i114175) #6
  br label %lean_dec.exit38

lean_dec.exit38:                                  ; preds = %bb.bx, %bb.bw, %lean_int_add.exit121, %bb.cb, %bb.ca, %bb.bz
  %.0.i119178 = phi ptr [ %i.gg, %lean_int_add.exit121 ], [ %i.gh, %bb.cb ], [ %i.gh, %bb.ca ], [ %i.gh, %bb.bz ], [ %i.gf, %bb.bx ], [ %i.ge, %bb.bw ] ; 7 uses
  %i.gl = ptrtoint ptr %.0.i119178 to i64         ; 2 uses
  %i.gm = and i64 %i.gl, 1
  %.not.i122 = icmp eq i64 %i.gm, 0
  br i1 %.not.i122, label %bb.ch, label %bb.cc, !prof !14

bb.cc:                                            ; preds = %lean_dec.exit38
  %i.gn = ptrtoint ptr %.0.i103 to i64            ; 2 uses
  %i.go = and i64 %i.gn, 1
  %.not21.i123 = icmp eq i64 %i.go, 0
  br i1 %.not21.i123, label %lean_int_emod.exit128, label %bb.cd, !prof !14

bb.cd:                                            ; preds = %bb.cc
  %i.gp = shl i64 %i.gn, 31
  %i.gq = ashr i64 %i.gp, 32                      ; 3 uses
  %i.gr = icmp eq i64 %i.gq, 0
  br i1 %i.gr, label %lean_dec.exit36, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.gs = shl i64 %i.gl, 31
  %i.gt = ashr i64 %i.gs, 32
  %i.gu = srem i64 %i.gt, %i.gq                   ; 2 uses
  %i.gv = icmp slt i64 %i.gu, 0
  %.p.i124 = tail call i64 @llvm.abs.i64(i64 %i.gq, i1 true)
  %i.gw = select i1 %i.gv, i64 %.p.i124, i64 0
  %.0.i125 = add nsw i64 %i.gw, %i.gu             ; 3 uses
  %5 = icmp ult i64 %.0.i125, 2147483648
  br i1 %5, label %bb.cf, label %bb.cg, !prof !11

bb.cf:                                            ; preds = %bb.ce
  %i.gx = shl nuw nsw i64 %.0.i125, 1
  %i.gy = or disjoint i64 %i.gx, 1
  %i.gz = inttoptr i64 %i.gy to ptr
  br label %lean_dec.exit36

bb.cg:                                            ; preds = %bb.ce
  %i.ha = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i125) #6
  br label %lean_dec.exit36

lean_int_emod.exit128:                            ; preds = %bb.cc
  %i.hb = tail call ptr @lean_int_big_emod(ptr noundef %.0.i119178, ptr noundef %.0.i103) #6
  br label %lean_dec.exit36

bb.ch:                                            ; preds = %lean_dec.exit38
  %i.hc = tail call ptr @lean_int_big_emod(ptr noundef %.0.i119178, ptr noundef %.0.i103) #6 ; 3 uses
  %i.hd = load i32, ptr %.0.i119178, align 4, !tbaa !16 ; 3 uses
  %i.he = icmp sgt i32 %i.hd, 1
  br i1 %i.he, label %bb.ci, label %bb.cj, !prof !11

bb.ci:                                            ; preds = %bb.ch
  %i.hf = add nsw i32 %i.hd, -1
  store i32 %i.hf, ptr %.0.i119178, align 4, !tbaa !16
  br label %lean_dec.exit36

bb.cj:                                            ; preds = %bb.ch
  %.not.i68 = icmp eq i32 %i.hd, 0
  br i1 %.not.i68, label %lean_dec.exit36, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i119178) #6
  br label %lean_dec.exit36

lean_dec.exit36:                                  ; preds = %bb.cg, %bb.cf, %bb.cd, %lean_int_emod.exit128, %bb.ck, %bb.cj, %bb.ci
  %.1.i126181 = phi ptr [ %i.hb, %lean_int_emod.exit128 ], [ %i.hc, %bb.ck ], [ %i.hc, %bb.cj ], [ %i.hc, %bb.ci ], [ %i.ha, %bb.cg ], [ %i.gz, %bb.cf ], [ %.0.i119178, %bb.cd ] ; 6 uses
  %i.hg = ptrtoint ptr %.1.i126181 to i64         ; 2 uses
  %i.hh = and i64 %i.hg, 1
  %.not.i129 = icmp eq i64 %i.hh, 0
  br i1 %.not.i129, label %bb.cp, label %bb.cl, !prof !14

bb.cl:                                            ; preds = %lean_dec.exit36
  %i.hi = ptrtoint ptr %.0.i97 to i64             ; 2 uses
  %i.hj = and i64 %i.hi, 1
  %.not7.i130 = icmp eq i64 %i.hj, 0
  br i1 %.not7.i130, label %lean_int_add.exit133, label %bb.cm, !prof !14

bb.cm:                                            ; preds = %bb.cl
  %i.hk = shl i64 %i.hg, 31
  %i.hl = ashr i64 %i.hk, 32
  %i.hm = shl i64 %i.hi, 31
  %i.hn = ashr i64 %i.hm, 32
  %i.ho = add nsw i64 %i.hl, %i.hn                ; 3 uses
  %i.hp = add nsw i64 %i.ho, 2147483648
  %i.hq = icmp ult i64 %i.hp, 4294967296
  br i1 %i.hq, label %bb.cn, label %bb.co, !prof !11

bb.cn:                                            ; preds = %bb.cm
  %i.hr = shl nsw i64 %i.ho, 1
  %i.hs = and i64 %i.hr, 8589934590
  %i.ht = or disjoint i64 %i.hs, 1
  %i.hu = inttoptr i64 %i.ht to ptr
  br label %lean_dec.exit44

bb.co:                                            ; preds = %bb.cm
  %i.hv = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.ho) #6
  br label %lean_dec.exit44

lean_int_add.exit133:                             ; preds = %bb.cl
  %i.hw = tail call ptr @lean_int_big_add(ptr noundef %.1.i126181, ptr noundef %.0.i97) #6
  br label %lean_dec.exit44

bb.cp:                                            ; preds = %lean_dec.exit36
  %i.hx = tail call ptr @lean_int_big_add(ptr noundef %.1.i126181, ptr noundef %.0.i97) #6 ; 3 uses
  %i.hy = load i32, ptr %.1.i126181, align 4, !tbaa !16 ; 3 uses
  %i.hz = icmp sgt i32 %i.hy, 1
  br i1 %i.hz, label %bb.cq, label %bb.cr, !prof !11

bb.cq:                                            ; preds = %bb.cp
  %i.ia = add nsw i32 %i.hy, -1
  store i32 %i.ia, ptr %.1.i126181, align 4, !tbaa !16
  br label %lean_dec.exit44

bb.cr:                                            ; preds = %bb.cp
  %.not.i70 = icmp eq i32 %i.hy, 0
  br i1 %.not.i70, label %lean_dec.exit44, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i126181) #6
  br label %lean_dec.exit44

lean_dec.exit44:                                  ; preds = %bb.co, %bb.cn, %bb.as, %bb.ar, %lean_int_add.exit133, %lean_int_add.exit96, %bb.cq, %bb.cr, %bb.cs, %bb.au, %bb.av, %bb.aw
  %.0 = phi ptr [ %i.dk, %lean_int_add.exit96 ], [ %i.dl, %bb.aw ], [ %i.dl, %bb.av ], [ %i.dl, %bb.au ], [ %i.hx, %bb.cs ], [ %i.hx, %bb.cr ], [ %i.hx, %bb.cq ], [ %i.hw, %lean_int_add.exit133 ], [ %i.di, %bb.ar ], [ %i.dj, %bb.as ], [ %i.hv, %bb.co ], [ %i.hu, %bb.cn ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_Time_Day_Ordinal_instOfNatOfYear___boxed(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  %i.d = tail call ptr @l_Std_Time_Day_Ordinal_instOfNatOfYear(i8 noundef zeroext %i.c, ptr noundef %1)
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_Time_Day_Ordinal_instInhabitedOfYear(i8 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_Time_Day_Ordinal_instInhabitedOfYear___boxed(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %l_Std_Time_Day_Ordinal_instInhabitedOfYear.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0) #6
  br label %l_Std_Time_Day_Ordinal_instInhabitedOfYear.exit

l_Std_Time_Day_Ordinal_instInhabitedOfYear.exit:  ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret ptr %.0.i.i
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_Time_Day_Ordinal_ofNat___redArg(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  %i.c = icmp ult ptr %0, inttoptr (i64 4294967296 to ptr)
  %or.cond.i = or i1 %i.c, %.not.i
  br i1 %or.cond.i, label %lean_nat_to_int.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.a, 1
  %i.e = tail call ptr @lean_big_size_t_to_int(i64 noundef %i.d) #6
  br label %lean_nat_to_int.exit

lean_nat_to_int.exit:                             ; preds = %bb.a, %bb.b
  %.1.i = phi ptr [ %0, %bb.a ], [ %i.e, %bb.b ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_Time_Day_Ordinal_ofNat(ptr noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  %i.c = icmp ult ptr %0, inttoptr (i64 4294967296 to ptr)
  %or.cond.i = or i1 %i.c, %.not.i
  br i1 %or.cond.i, label %lean_nat_to_int.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.a, 1
  %i.e = tail call ptr @lean_big_size_t_to_int(i64 noundef %i.d) #6
  br label %lean_nat_to_int.exit

lean_nat_to_int.exit:                             ; preds = %bb.a, %bb.b
  %.1.i = phi ptr [ %0, %bb.a ], [ %i.e, %bb.b ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_Time_Day_Ordinal_ofFin(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %lean_nat_le.exit, label %.split, !prof !14

.split:                                           ; preds = %bb.a
  %.not14 = icmp ult ptr %0, inttoptr (i64 3 to ptr)
  br i1 %.not14, label %lean_dec.exit, label %bb.h

lean_nat_le.exit:                                 ; preds = %bb.a
  %i.c = tail call zeroext i1 @lean_nat_big_le(ptr noundef nonnull inttoptr (i64 3 to ptr), ptr noundef %0) #6
  br i1 %i.c, label %lean_obj_once.exit, label %bb.b

bb.b:                                             ; preds = %lean_nat_le.exit
  %i.d = load i32, ptr %0, align 4, !tbaa !16     ; 3 uses
end_hunk_1
begin_hunk_2_@_init_l_Std_Time_Day_Ordinal_instOfNatOfYear___aux__3___closed__1:bb.a

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Day_Ordinal_instOfNatOfYear___aux__3___closed__0, ptr noundef nonnull @l_Std_Time_Day_Ordinal_instOfNatOfYear___aux__3___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Day_Ordinal_instOfNatOfYear___aux__3___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0) #6
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
define internal noundef nonnull ptr @_init_l_Std_Time_Day_Ordinal_instOfNatOfYear___aux__3___closed__0() #1 {
bb.a:
  ret ptr inttoptr (i64 729 to ptr)
}

declare ptr @lean_cstr_to_nat(ptr noundef) local_unnamed_addr #2

declare void @lean_dec_ref_cold(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Day_instInhabitedOrdinal___closed__4() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Day_instInhabitedOrdinal___closed__3_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Day_instInhabitedOrdinal___closed__3, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Day_instInhabitedOrdinal___closed__3, ptr noundef nonnull @l_Std_Time_Day_instInhabitedOrdinal___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Day_instInhabitedOrdinal___closed__3) #6
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
define internal ptr @_init_l_Std_Time_Day_instInhabitedOrdinal___closed__3() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__4, ptr noundef nonnull @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Day_instInhabitedOrdinal___closed__2_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Day_instInhabitedOrdinal___closed__2, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Day_instInhabitedOrdinal___closed__2, ptr noundef nonnull @l_Std_Time_Day_instInhabitedOrdinal___closed__2_once, ptr noundef nonnull @_init_l_Std_Time_Day_instInhabitedOrdinal___closed__2) #6
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
define internal ptr @_init_l_Std_Time_Day_instInhabitedOrdinal___closed__2() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__4, ptr noundef nonnull @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Day_instInhabitedOrdinal___closed__1_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Day_instInhabitedOrdinal___closed__1, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Day_instInhabitedOrdinal___closed__1, ptr noundef nonnull @l_Std_Time_Day_instInhabitedOrdinal___closed__1_once, ptr noundef nonnull @_init_l_Std_Time_Day_instInhabitedOrdinal___closed__1) #6
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
define internal ptr @_init_l_Std_Time_Day_instInhabitedOrdinal___closed__1() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__4, ptr noundef nonnull @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Day_instInhabitedOrdinal___closed__0_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Day_instInhabitedOrdinal___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Day_instInhabitedOrdinal___closed__0, ptr noundef nonnull @l_Std_Time_Day_instInhabitedOrdinal___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Day_instInhabitedOrdinal___closed__0) #6
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
define internal ptr @_init_l_Std_Time_Day_instInhabitedOrdinal___closed__0() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Day_instOfNatOrdinal___aux__1___closed__0) #6
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
define internal ptr @_init_l_Std_Time_Day_instInhabitedOffset___aux__1___closed__1() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Day_instInhabitedOffset___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Day_instInhabitedOffset___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Day_instInhabitedOffset___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Day_instInhabitedOffset___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Day_instInhabitedOffset___aux__1___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  %i.e = tail call ptr @l_Std_Time_Internal_instInhabitedUnitVal_default(ptr noundef %.0.i) #6
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Day_instInhabitedOffset___aux__1___closed__0() #0 {
bb.a:
  %i.a = tail call ptr @l_Rat_instNatCast___lam__0(ptr noundef nonnull inttoptr (i64 172801 to ptr)) #6
  ret ptr %i.a
}

declare ptr @l_Std_Time_Internal_instInhabitedUnitVal_default(ptr noundef) local_unnamed_addr #2

declare ptr @l_Rat_instNatCast___lam__0(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Day_instInhabitedOffset___closed__1() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Day_instInhabitedOffset___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Day_instInhabitedOffset___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Day_instInhabitedOffset___closed__0, ptr noundef nonnull @l_Std_Time_Day_instInhabitedOffset___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Day_instInhabitedOffset___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  %i.e = tail call ptr @l_Std_Time_Internal_instInhabitedUnitVal_default(ptr noundef %.0.i) #6
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Day_instInhabitedOffset___closed__0() #0 {
bb.a:
  %i.a = tail call ptr @l_Rat_ofInt(ptr noundef nonnull inttoptr (i64 172801 to ptr)) #6
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal noalias nonnull ptr @_init_l_Std_Time_Day_Ordinal_OfYear_ofNat___auto__3___closed__26() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Day_Ordinal_OfYear_ofNat___auto__3___closed__25_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Day_Ordinal_OfYear_ofNat___auto__3___closed__25, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Day_Ordinal_OfYear_ofNat___auto__3___closed__25, ptr noundef nonnull @l_Std_Time_Day_Ordinal_OfYear_ofNat___auto__3___closed__25_once, ptr noundef nonnull @_init_l_Std_Time_Day_Ordinal_OfYear_ofNat___auto__3___closed__25) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  tail call void @lean_inc_heartbeat() #6
  %i.e = tail call noalias ptr @mi_malloc_small(i64 noundef 32) #6 ; 7 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %lean_alloc_ctor.exit

bb.d:                                             ; preds = %lean_obj_once.exit
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_obj_once.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 1, ptr %i.e, align 4, !tbaa !16
  store i32 16973856, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 5 to ptr), ptr %i.h, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr @l_Std_Time_Day_Ordinal_OfYear_ofNat___auto__3___closed__4_value, ptr %i.i, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.0.i, ptr %i.j, align 8, !tbaa !13
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Day_Ordinal_OfYear_ofNat___auto__3___closed__25() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Day_Ordinal_OfYear_ofNat___auto__3___closed__24_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Day_Ordinal_OfYear_ofNat___auto__3___closed__24, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Day_Ordinal_OfYear_ofNat___auto__3___closed__24, ptr noundef nonnull @l_Std_Time_Day_Ordinal_OfYear_ofNat___auto__3___closed__24_once, ptr noundef nonnull @_init_l_Std_Time_Day_Ordinal_OfYear_ofNat___auto__3___closed__24) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  %i.e = tail call ptr @lean_array_push(ptr noundef nonnull @l_Std_Time_Day_Ordinal_OfYear_ofNat___auto__3___closed__5_value, ptr noundef %.0.i) #6
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define internal noalias nonnull ptr @_init_l_Std_Time_Day_Ordinal_OfYear_ofNat___auto__3___closed__24() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Day_Ordinal_OfYear_ofNat___auto__3___closed__23_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Day_Ordinal_OfYear_ofNat___auto__3___closed__23, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Day_Ordinal_OfYear_ofNat___auto__3___closed__23, ptr noundef nonnull @l_Std_Time_Day_Ordinal_OfYear_ofNat___auto__3___closed__23_once, ptr noundef nonnull @_init_l_Std_Time_Day_Ordinal_OfYear_ofNat___auto__3___closed__23) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  tail call void @lean_inc_heartbeat() #6
  %i.e = tail call noalias ptr @mi_malloc_small(i64 noundef 32) #6 ; 7 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %lean_alloc_ctor.exit

bb.d:                                             ; preds = %lean_obj_once.exit
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_obj_once.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 1, ptr %i.e, align 4, !tbaa !16
  store i32 16973856, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 5 to ptr), ptr %i.h, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
end_hunk_2
