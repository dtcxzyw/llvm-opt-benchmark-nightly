Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/Hour?download=true
inline.NumInlined: 237
inline.NumDeleted: 43
begin_hunk_0_@l_Std_Time_Hour_instDecidableEqOrdinal:bb.a
  %i.g = zext i1 %.0.i.i to i8
  ret i8 %i.g
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Std_Time_Hour_instDecidableEqOrdinal___boxed(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = and i64 %i.a, 1                          ; 2 uses
  %i.d = and i64 %i.c, %i.b
  %or.cond.not.i.i.i = icmp eq i64 %i.d, 0
  br i1 %or.cond.not.i.i.i, label %.critedge.i.i.i, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %0, %1
  br label %l_Std_Time_Hour_instDecidableEqOrdinal.exit

.critedge.i.i.i:                                  ; preds = %bb.a
  %i.f = tail call zeroext i1 @lean_int_big_eq(ptr noundef %0, ptr noundef %1) #6
  br label %l_Std_Time_Hour_instDecidableEqOrdinal.exit

l_Std_Time_Hour_instDecidableEqOrdinal.exit:      ; preds = %bb.b, %.critedge.i.i.i
  %.0.i.i.i = phi i1 [ %i.e, %bb.b ], [ %i.f, %.critedge.i.i.i ]
  %i.g = and i64 %i.b, 1
  %.not.i5 = icmp eq i64 %i.g, 0
  br i1 %.not.i5, label %bb.c, label %lean_dec.exit6

bb.c:                                             ; preds = %l_Std_Time_Hour_instDecidableEqOrdinal.exit
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

lean_dec.exit6:                                   ; preds = %bb.f, %bb.e, %bb.d, %l_Std_Time_Hour_instDecidableEqOrdinal.exit
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
define ptr @l_Std_Time_Hour_instOfNatOrdinal___aux__1(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Hour_instReprOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Hour_instReprOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Hour_instReprOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Hour_instReprOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Hour_instReprOrdinal___aux__1___closed__0) #6
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
  %i.j = load atomic i32, ptr @l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__4_once seq_cst, align 4, !tbaa !10
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.f, !prof !11

bb.e:                                             ; preds = %lean_nat_to_int.exit
  %i.l = load ptr, ptr @l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit36

bb.f:                                             ; preds = %lean_nat_to_int.exit
  %i.m = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__4, ptr noundef nonnull @l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__4) #6
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
  %i.ac = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %i.v) #6
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
  %i.bs = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %i.bl) #6
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
  %i.di = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %i.db) #6
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
define internal ptr @_init_l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__4() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__3_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__3, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__3, ptr noundef nonnull @l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__3) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__2_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__2, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__2, ptr noundef nonnull @l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__2_once, ptr noundef nonnull @_init_l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__2) #6
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
define ptr @l_Std_Time_Hour_instOfNatOrdinal(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Hour_instReprOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Hour_instReprOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Hour_instReprOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Hour_instReprOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Hour_instReprOrdinal___aux__1___closed__0) #6
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
  %i.j = load atomic i32, ptr @l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__4_once seq_cst, align 4, !tbaa !10
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.f, !prof !11

bb.e:                                             ; preds = %lean_nat_to_int.exit
  %i.l = load ptr, ptr @l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit36

bb.f:                                             ; preds = %lean_nat_to_int.exit
  %i.m = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__4, ptr noundef nonnull @l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__4) #6
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
  %i.ac = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %i.v) #6
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
  %i.bs = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %i.bl) #6
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
  %i.di = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %i.db) #6
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
define zeroext range(i8 0, 2) i8 @l_Std_Time_Hour_instDecidableLeOrdinal___aux__1(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
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
define nonnull ptr @l_Std_Time_Hour_instDecidableLeOrdinal___aux__1___boxed(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i.i.i = icmp eq i64 %i.b, 0               ; 2 uses
  %.pre12 = ptrtoint ptr %1 to i64                ; 2 uses
  %.pre = and i64 %.pre12, 1
  %i.c = icmp eq i64 %.pre, 0                     ; 2 uses
  br i1 %.not.i.i.i, label %l_Std_Time_Hour_instDecidableLeOrdinal___aux__1.exit, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %l_Std_Time_Hour_instDecidableLeOrdinal___aux__1.exit.thread20, label %lean_dec.exit6.thread25, !prof !14

l_Std_Time_Hour_instDecidableLeOrdinal___aux__1.exit.thread20: ; preds = %bb.b
  %i.d = tail call zeroext i1 @lean_int_big_le(ptr noundef %0, ptr noundef %1) #6
  br label %bb.c

lean_dec.exit6.thread25:                          ; preds = %bb.b
  %i.e = lshr i64 %i.a, 1
  %i.f = trunc i64 %i.e to i32
  %i.g = lshr i64 %.pre12, 1
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp sle i32 %i.f, %i.h
  br label %lean_dec.exit

l_Std_Time_Hour_instDecidableLeOrdinal___aux__1.exit: ; preds = %bb.a
  %i.j = tail call zeroext i1 @lean_int_big_le(ptr noundef %0, ptr noundef %1) #6 ; 2 uses
  br i1 %i.c, label %bb.c, label %lean_dec.exit6.thread

bb.c:                                             ; preds = %l_Std_Time_Hour_instDecidableLeOrdinal___aux__1.exit.thread20, %l_Std_Time_Hour_instDecidableLeOrdinal___aux__1.exit
  %i.k = phi i1 [ %i.d, %l_Std_Time_Hour_instDecidableLeOrdinal___aux__1.exit.thread20 ], [ %i.j, %l_Std_Time_Hour_instDecidableLeOrdinal___aux__1.exit ] ; 2 uses
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

lean_dec.exit6.thread:                            ; preds = %l_Std_Time_Hour_instDecidableLeOrdinal___aux__1.exit, %lean_dec.exit6
  %.0.i.i.i1924 = phi i1 [ %i.k, %lean_dec.exit6 ], [ %i.j, %l_Std_Time_Hour_instDecidableLeOrdinal___aux__1.exit ] ; 3 uses
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
begin_hunk_1_@l_Std_Time_Hour_Ordinal_ofInt___redArg___boxed:bb.a

bb.h:                                             ; preds = %bb.f
  %.not.i3 = icmp eq i32 %i.f, 0
  br i1 %.not.i3, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Std_Time_Hour_Ordinal_ofInt(ptr noundef returned %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %0, align 4, !tbaa !16 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %0, align 4, !tbaa !16
  br label %lean_inc.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw add ptr %0, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define noundef ptr @l_Std_Time_Hour_Ordinal_ofInt___boxed(ptr noundef returned %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %0, align 4, !tbaa !16 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i.i, 1               ; 2 uses
  store i32 %i.d, ptr %0, align 4, !tbaa !16
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw add ptr %0, i32 -1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %0, align 4, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.f = phi i32 [ %i.d, %bb.c ], [ %.pr, %bb.e ] ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.h, !prof !18

bb.g:                                             ; preds = %bb.f
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %0, align 4, !tbaa !16
  br label %lean_dec.exit

bb.h:                                             ; preds = %bb.f
  %.not.i4 = icmp eq i32 %i.f, 0
  br i1 %.not.i4, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.d, %bb.a, %bb.i, %bb.h, %bb.g
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_Time_Hour_Ordinal_toRelative(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Hour_Ordinal_toRelative___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Hour_Ordinal_toRelative___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Hour_Ordinal_toRelative___closed__0, ptr noundef nonnull @l_Std_Time_Hour_Ordinal_toRelative___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Hour_Ordinal_toRelative___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 3 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__3_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__3, align 8, !tbaa !13
  br label %lean_obj_once.exit15

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__3, ptr noundef nonnull @l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__3) #6
  br label %lean_obj_once.exit15

lean_obj_once.exit15:                             ; preds = %bb.d, %bb.e
  %.0.i14 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = load atomic i32, ptr @l_Std_Time_Hour_Ordinal_toRelative___closed__1_once seq_cst, align 4, !tbaa !10
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %lean_obj_once.exit15
  %i.k = load ptr, ptr @l_Std_Time_Hour_Ordinal_toRelative___closed__1, align 8, !tbaa !13
  br label %lean_obj_once.exit17

bb.g:                                             ; preds = %lean_obj_once.exit15
  %i.l = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Hour_Ordinal_toRelative___closed__1, ptr noundef nonnull @l_Std_Time_Hour_Ordinal_toRelative___closed__1_once, ptr noundef nonnull @_init_l_Std_Time_Hour_Ordinal_toRelative___closed__1) #6
  br label %lean_obj_once.exit17

lean_obj_once.exit17:                             ; preds = %bb.f, %bb.g
  %.0.i16 = phi ptr [ %i.k, %bb.f ], [ %i.l, %bb.g ] ; 2 uses
  %i.m = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.n = and i64 %i.m, 1
  %.not.i18 = icmp eq i64 %i.n, 0
  br i1 %.not.i18, label %.critedge.i, label %bb.h, !prof !14

bb.h:                                             ; preds = %lean_obj_once.exit17
  %i.o = ptrtoint ptr %.0.i16 to i64              ; 2 uses
  %i.p = and i64 %i.o, 1
  %.not7.i = icmp eq i64 %i.p, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.i, !prof !14

bb.i:                                             ; preds = %bb.h
  %i.q = shl i64 %i.m, 31
  %i.r = ashr i64 %i.q, 32
  %i.s = shl i64 %i.o, 31
  %i.t = ashr i64 %i.s, 32
  %i.u = add nsw i64 %i.t, %i.r                   ; 3 uses
  %i.v = add nsw i64 %i.u, 2147483648
  %i.w = icmp ult i64 %i.v, 4294967296
  br i1 %i.w, label %bb.j, label %bb.k, !prof !11

bb.j:                                             ; preds = %bb.i
  %i.x = shl nsw i64 %i.u, 1
  %i.y = and i64 %i.x, 8589934590
  %i.z = or disjoint i64 %i.y, 1
  %i.aa = inttoptr i64 %i.z to ptr
  br label %lean_int_add.exit

bb.k:                                             ; preds = %bb.i
  %i.ab = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %i.u) #6
  br label %lean_int_add.exit

.critedge.i:                                      ; preds = %bb.h, %lean_obj_once.exit17
  %i.ac = tail call ptr @lean_int_big_add(ptr noundef %0, ptr noundef %.0.i16) #6
  br label %lean_int_add.exit

lean_int_add.exit:                                ; preds = %bb.j, %bb.k, %.critedge.i
  %.0.i19 = phi ptr [ %i.ac, %.critedge.i ], [ %i.aa, %bb.j ], [ %i.ab, %bb.k ] ; 7 uses
  %i.ad = ptrtoint ptr %.0.i19 to i64             ; 2 uses
  %i.ae = and i64 %i.ad, 1
  %.not.i20 = icmp eq i64 %i.ae, 0
  br i1 %.not.i20, label %bb.q, label %bb.l, !prof !14

bb.l:                                             ; preds = %lean_int_add.exit
  %i.af = ptrtoint ptr %.0.i to i64               ; 2 uses
  %i.ag = and i64 %i.af, 1
  %.not21.i = icmp eq i64 %i.ag, 0
  br i1 %.not21.i, label %lean_int_emod.exit, label %bb.m, !prof !14

bb.m:                                             ; preds = %bb.l
  %i.ah = shl i64 %i.af, 31
  %i.ai = ashr i64 %i.ah, 32                      ; 3 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %lean_dec.exit10, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = shl i64 %i.ad, 31
  %i.al = ashr i64 %i.ak, 32
  %i.am = srem i64 %i.al, %i.ai                   ; 2 uses
  %i.an = icmp slt i64 %i.am, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.ai, i1 true)
  %i.ao = select i1 %i.an, i64 %.p.i, i64 0
  %.0.i21 = add nsw i64 %i.ao, %i.am              ; 3 uses
  %1 = icmp slt i64 %.0.i21, 2147483648
  br i1 %1, label %bb.o, label %bb.p, !prof !11

bb.o:                                             ; preds = %bb.n
  %i.ap = shl nsw i64 %.0.i21, 1
  %2 = and i64 %i.ap, 8589934590
  %i.aq = or disjoint i64 %2, 1
  %i.ar = inttoptr i64 %i.aq to ptr
  br label %lean_dec.exit10

bb.p:                                             ; preds = %bb.n
  %i.as = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %.0.i21) #6
  br label %lean_dec.exit10

lean_int_emod.exit:                               ; preds = %bb.l
  %i.at = tail call ptr @lean_int_big_emod(ptr noundef %.0.i19, ptr noundef %.0.i) #6
  br label %lean_dec.exit10

bb.q:                                             ; preds = %lean_int_add.exit
  %i.au = tail call ptr @lean_int_big_emod(ptr noundef %.0.i19, ptr noundef %.0.i) #6 ; 3 uses
  %i.av = load i32, ptr %.0.i19, align 4, !tbaa !16 ; 3 uses
  %i.aw = icmp sgt i32 %i.av, 1
  br i1 %i.aw, label %bb.r, label %bb.s, !prof !11

bb.r:                                             ; preds = %bb.q
  %i.ax = add nsw i32 %i.av, -1
  store i32 %i.ax, ptr %.0.i19, align 4, !tbaa !16
  br label %lean_dec.exit10

bb.s:                                             ; preds = %bb.q
  %.not.i11 = icmp eq i32 %i.av, 0
  br i1 %.not.i11, label %lean_dec.exit10, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i19) #6
  br label %lean_dec.exit10

lean_dec.exit10:                                  ; preds = %bb.p, %bb.o, %bb.m, %lean_int_emod.exit, %bb.t, %bb.s, %bb.r
  %.1.i32 = phi ptr [ %i.at, %lean_int_emod.exit ], [ %i.au, %bb.t ], [ %i.au, %bb.s ], [ %i.au, %bb.r ], [ %i.as, %bb.p ], [ %i.ar, %bb.o ], [ %.0.i19, %bb.m ] ; 6 uses
  %i.ay = ptrtoint ptr %.1.i32 to i64             ; 2 uses
  %i.az = and i64 %i.ay, 1
  %.not.i23 = icmp eq i64 %i.az, 0
  br i1 %.not.i23, label %bb.y, label %bb.u, !prof !14

bb.u:                                             ; preds = %lean_dec.exit10
  %i.ba = ptrtoint ptr %.0.i14 to i64             ; 2 uses
  %i.bb = and i64 %i.ba, 1
  %.not7.i24 = icmp eq i64 %i.bb, 0
  br i1 %.not7.i24, label %lean_int_add.exit27, label %bb.v, !prof !14

bb.v:                                             ; preds = %bb.u
  %i.bc = shl i64 %i.ay, 31
  %i.bd = ashr i64 %i.bc, 32
  %i.be = shl i64 %i.ba, 31
  %i.bf = ashr i64 %i.be, 32
  %i.bg = add nsw i64 %i.bd, %i.bf                ; 3 uses
  %i.bh = add nsw i64 %i.bg, 2147483648
  %i.bi = icmp ult i64 %i.bh, 4294967296
  br i1 %i.bi, label %bb.w, label %bb.x, !prof !11

bb.w:                                             ; preds = %bb.v
  %i.bj = shl nsw i64 %i.bg, 1
  %i.bk = and i64 %i.bj, 8589934590
  %i.bl = or disjoint i64 %i.bk, 1
  %i.bm = inttoptr i64 %i.bl to ptr
  br label %lean_dec.exit

bb.x:                                             ; preds = %bb.v
  %i.bn = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %i.bg) #6
  br label %lean_dec.exit

lean_int_add.exit27:                              ; preds = %bb.u
  %i.bo = tail call ptr @lean_int_big_add(ptr noundef %.1.i32, ptr noundef %.0.i14) #6
  br label %lean_dec.exit

bb.y:                                             ; preds = %lean_dec.exit10
  %i.bp = tail call ptr @lean_int_big_add(ptr noundef %.1.i32, ptr noundef %.0.i14) #6 ; 3 uses
  %i.bq = load i32, ptr %.1.i32, align 4, !tbaa !16 ; 3 uses
  %i.br = icmp sgt i32 %i.bq, 1
  br i1 %i.br, label %bb.z, label %bb.aa, !prof !11

bb.z:                                             ; preds = %bb.y
  %i.bs = add nsw i32 %i.bq, -1
  store i32 %i.bs, ptr %.1.i32, align 4, !tbaa !16
  br label %lean_dec.exit

bb.aa:                                            ; preds = %bb.y
  %.not.i12 = icmp eq i32 %i.bq, 0
  br i1 %.not.i12, label %lean_dec.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i32) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.x, %bb.w, %lean_int_add.exit27, %bb.ab, %bb.aa, %bb.z
  %.0.i2535 = phi ptr [ %i.bo, %lean_int_add.exit27 ], [ %i.bp, %bb.ab ], [ %i.bp, %bb.aa ], [ %i.bp, %bb.z ], [ %i.bn, %bb.x ], [ %i.bm, %bb.w ]
  ret ptr %.0.i2535
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_init_l_Std_Time_Hour_Ordinal_toRelative___closed__0() #1 {
bb.a:
  ret ptr inttoptr (i64 25 to ptr)
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_init_l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__3() #1 {
bb.a:
  ret ptr inttoptr (i64 3 to ptr)
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_init_l_Std_Time_Hour_Ordinal_toRelative___closed__1() #1 {
bb.a:
  ret ptr inttoptr (i64 23 to ptr)
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_Time_Hour_Ordinal_toRelative___boxed(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Std_Time_Hour_Ordinal_toRelative(ptr noundef %0)
  %i.b = ptrtoint ptr %0 to i64
  %i.c = and i64 %i.b, 1
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 4, !tbaa !16     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %0, align 4, !tbaa !16
  br label %lean_dec.exit

bb.d:                                             ; preds = %bb.b
  %.not.i3 = icmp eq i32 %i.d, 0
  br i1 %.not.i3, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_Time_Hour_Ordinal_shiftTo1BasedHour(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__3_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__3, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__3, ptr noundef nonnull @l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__3) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 3 uses
  %i.e = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.f = and i64 %i.e, 1
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %lean_int_dec_lt.exit, label %bb.d, !prof !14

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.h = and i64 %i.g, 1
  %.not7.i.i = icmp eq i64 %i.h, 0
  br i1 %.not7.i.i, label %lean_int_dec_lt.exit.thread, label %.split, !prof !14

.split:                                           ; preds = %bb.d
  %i.i = lshr i64 %i.e, 1
  %i.j = trunc i64 %i.i to i32
  %i.k = lshr i64 %i.g, 1
  %i.l = trunc i64 %i.k to i32
  %i.m = icmp slt i32 %i.j, %i.l
  br i1 %i.m, label %bb.i, label %lean_inc.exit

lean_int_dec_lt.exit:                             ; preds = %lean_obj_once.exit
  %i.n = tail call zeroext i1 @lean_int_big_lt(ptr noundef %0, ptr noundef %.0.i) #6
  br i1 %i.n, label %bb.i, label %bb.e

lean_int_dec_lt.exit.thread:                      ; preds = %bb.d
  %i.o = tail call zeroext i1 @lean_int_big_lt(ptr noundef %0, ptr noundef %.0.i) #6
  br i1 %i.o, label %bb.i, label %lean_inc.exit

bb.e:                                             ; preds = %lean_int_dec_lt.exit
  %.val.i.i = load i32, ptr %0, align 4, !tbaa !16 ; 3 uses
  %i.p = icmp sgt i32 %.val.i.i, 0
  br i1 %i.p, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %bb.e
  %i.q = add nuw i32 %.val.i.i, 1
  store i32 %i.q, ptr %0, align 4, !tbaa !16
  br label %lean_inc.exit

bb.g:                                             ; preds = %bb.e
  %.not.i.i6 = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i6, label %lean_inc.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
end_hunk_1
begin_hunk_2_@_init_l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__2:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Hour_instReprOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Hour_instReprOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Hour_instReprOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Hour_instReprOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__1_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__1, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__1, ptr noundef nonnull @l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__1_once, ptr noundef nonnull @_init_l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__1) #6
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
define internal ptr @_init_l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__1() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Hour_instReprOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Hour_instReprOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Hour_instReprOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Hour_instReprOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Hour_instReprOrdinal___aux__1___closed__0) #6
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
define internal noundef nonnull ptr @_init_l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__0() #1 {
bb.a:
  ret ptr inttoptr (i64 47 to ptr)
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Hour_Ordinal_shiftTo1BasedHour___closed__5() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Hour_Ordinal_shiftTo1BasedHour___closed__2_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Hour_Ordinal_shiftTo1BasedHour___closed__2, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Hour_Ordinal_shiftTo1BasedHour___closed__2, ptr noundef nonnull @l_Std_Time_Hour_Ordinal_shiftTo1BasedHour___closed__2_once, ptr noundef nonnull @_init_l_Std_Time_Hour_Ordinal_shiftTo1BasedHour___closed__2) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Hour_Ordinal_shiftTo1BasedHour___closed__4_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Hour_Ordinal_shiftTo1BasedHour___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Hour_Ordinal_shiftTo1BasedHour___closed__4, ptr noundef nonnull @l_Std_Time_Hour_Ordinal_shiftTo1BasedHour___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Hour_Ordinal_shiftTo1BasedHour___closed__4) #6
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
define internal ptr @_init_l_Std_Time_Hour_Ordinal_shiftTo1BasedHour___closed__2() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__3_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__3, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__3, ptr noundef nonnull @l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__3) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Hour_Ordinal_shiftTo1BasedHour___closed__1_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Hour_Ordinal_shiftTo1BasedHour___closed__1, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Hour_Ordinal_shiftTo1BasedHour___closed__1, ptr noundef nonnull @l_Std_Time_Hour_Ordinal_shiftTo1BasedHour___closed__1_once, ptr noundef nonnull @_init_l_Std_Time_Hour_Ordinal_shiftTo1BasedHour___closed__1) #6
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
define internal ptr @_init_l_Std_Time_Hour_Ordinal_shiftTo1BasedHour___closed__4() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Hour_Ordinal_shiftTo1BasedHour___closed__2_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Hour_Ordinal_shiftTo1BasedHour___closed__2, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Hour_Ordinal_shiftTo1BasedHour___closed__2, ptr noundef nonnull @l_Std_Time_Hour_Ordinal_shiftTo1BasedHour___closed__2_once, ptr noundef nonnull @_init_l_Std_Time_Hour_Ordinal_shiftTo1BasedHour___closed__2) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Hour_Ordinal_shiftTo1BasedHour___closed__3_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Hour_Ordinal_shiftTo1BasedHour___closed__3, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Hour_Ordinal_shiftTo1BasedHour___closed__3, ptr noundef nonnull @l_Std_Time_Hour_Ordinal_shiftTo1BasedHour___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Hour_Ordinal_shiftTo1BasedHour___closed__3) #6
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
define internal ptr @_init_l_Std_Time_Hour_Ordinal_shiftTo1BasedHour___closed__1() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__3_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__3, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__3, ptr noundef nonnull @l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__3) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Hour_Ordinal_shiftTo1BasedHour___closed__0_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Hour_Ordinal_shiftTo1BasedHour___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Hour_Ordinal_shiftTo1BasedHour___closed__0, ptr noundef nonnull @l_Std_Time_Hour_Ordinal_shiftTo1BasedHour___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Hour_Ordinal_shiftTo1BasedHour___closed__0) #6
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
define internal noundef nonnull ptr @_init_l_Std_Time_Hour_Ordinal_shiftTo1BasedHour___closed__0() #1 {
bb.a:
  ret ptr inttoptr (i64 49 to ptr)
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Hour_Ordinal_shiftTo1BasedHour___closed__3() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Hour_Ordinal_shiftTo1BasedHour___closed__2_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Hour_Ordinal_shiftTo1BasedHour___closed__2, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Hour_Ordinal_shiftTo1BasedHour___closed__2, ptr noundef nonnull @l_Std_Time_Hour_Ordinal_shiftTo1BasedHour___closed__2_once, ptr noundef nonnull @_init_l_Std_Time_Hour_Ordinal_shiftTo1BasedHour___closed__2) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Hour_Ordinal_shiftTo1BasedHour___closed__1_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Hour_Ordinal_shiftTo1BasedHour___closed__1, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Hour_Ordinal_shiftTo1BasedHour___closed__1, ptr noundef nonnull @l_Std_Time_Hour_Ordinal_shiftTo1BasedHour___closed__1_once, ptr noundef nonnull @_init_l_Std_Time_Hour_Ordinal_shiftTo1BasedHour___closed__1) #6
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

declare void @lean_dec_ref_cold(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Hour_instInhabitedOrdinal___closed__4() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Hour_instReprOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Hour_instReprOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Hour_instReprOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Hour_instReprOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Hour_instReprOrdinal___aux__1___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Hour_instInhabitedOrdinal___closed__3_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Hour_instInhabitedOrdinal___closed__3, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Hour_instInhabitedOrdinal___closed__3, ptr noundef nonnull @l_Std_Time_Hour_instInhabitedOrdinal___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Hour_instInhabitedOrdinal___closed__3) #6
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
define internal ptr @_init_l_Std_Time_Hour_instInhabitedOrdinal___closed__3() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__4, ptr noundef nonnull @l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Hour_instInhabitedOrdinal___closed__2_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Hour_instInhabitedOrdinal___closed__2, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Hour_instInhabitedOrdinal___closed__2, ptr noundef nonnull @l_Std_Time_Hour_instInhabitedOrdinal___closed__2_once, ptr noundef nonnull @_init_l_Std_Time_Hour_instInhabitedOrdinal___closed__2) #6
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
define internal ptr @_init_l_Std_Time_Hour_instInhabitedOrdinal___closed__2() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__4, ptr noundef nonnull @l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Hour_instInhabitedOrdinal___closed__1_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Hour_instInhabitedOrdinal___closed__1, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Hour_instInhabitedOrdinal___closed__1, ptr noundef nonnull @l_Std_Time_Hour_instInhabitedOrdinal___closed__1_once, ptr noundef nonnull @_init_l_Std_Time_Hour_instInhabitedOrdinal___closed__1) #6
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
define internal ptr @_init_l_Std_Time_Hour_instInhabitedOrdinal___closed__1() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__4_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__4, ptr noundef nonnull @l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Hour_instOfNatOrdinal___aux__1___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Hour_instInhabitedOrdinal___closed__0_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Hour_instInhabitedOrdinal___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Hour_instInhabitedOrdinal___closed__0, ptr noundef nonnull @l_Std_Time_Hour_instInhabitedOrdinal___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Hour_instInhabitedOrdinal___closed__0) #6
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
define internal ptr @_init_l_Std_Time_Hour_instInhabitedOrdinal___closed__0() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Hour_instReprOrdinal___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Hour_instReprOrdinal___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Hour_instReprOrdinal___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Hour_instReprOrdinal___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Hour_instReprOrdinal___aux__1___closed__0) #6
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
define internal ptr @_init_l_Std_Time_Hour_instInhabitedOffset___aux__1___closed__1() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Hour_instInhabitedOffset___aux__1___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Hour_instInhabitedOffset___aux__1___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Hour_instInhabitedOffset___aux__1___closed__0, ptr noundef nonnull @l_Std_Time_Hour_instInhabitedOffset___aux__1___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Hour_instInhabitedOffset___aux__1___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  %i.e = tail call ptr @l_Std_Time_Internal_instInhabitedUnitVal_default(ptr noundef %.0.i) #6
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Hour_instInhabitedOffset___aux__1___closed__0() #0 {
bb.a:
  %i.a = tail call ptr @l_Rat_instNatCast___lam__0(ptr noundef nonnull inttoptr (i64 7201 to ptr)) #6
  ret ptr %i.a
}

declare ptr @l_Std_Time_Internal_instInhabitedUnitVal_default(ptr noundef) local_unnamed_addr #2

declare ptr @l_Rat_instNatCast___lam__0(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Hour_instInhabitedOffset___closed__1() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Hour_instInhabitedOffset___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Hour_instInhabitedOffset___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Hour_instInhabitedOffset___closed__0, ptr noundef nonnull @l_Std_Time_Hour_instInhabitedOffset___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Hour_instInhabitedOffset___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  %i.e = tail call ptr @l_Std_Time_Internal_instInhabitedUnitVal_default(ptr noundef %.0.i) #6
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Hour_instInhabitedOffset___closed__0() #0 {
bb.a:
  %i.a = tail call ptr @l_Rat_ofInt(ptr noundef nonnull inttoptr (i64 7201 to ptr)) #6
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = !{!"", !5, i64 0, !5, i64 4}
!10 = !{!9, !5, i64 0}
!11 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!15 = !{!"", !6, i64 0, !6, i64 4, !6, i64 6, !6, i64 7}
!16 = !{!15, !6, i64 0}
!17 = !{!"branch_weights", i32 4001, i32 4000000}
!18 = !{!"branch_weights", !"expected", i32 2146812770, i32 670878}
end_hunk_2
