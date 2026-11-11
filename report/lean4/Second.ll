Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/Second?download=true
inline.NumInlined: 220
inline.NumDeleted: 43
begin_hunk_0_@l_Std_Time_Second_instReprOrdinal___lam__0___boxed:bb.a
bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %1, align 4, !tbaa !16
  br label %lean_dec.exit6

bb.d:                                             ; preds = %bb.b
  %.not.i7 = icmp eq i32 %i.d, 0
  br i1 %.not.i7, label %lean_dec.exit6, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec.exit6

lean_dec.exit6:                                   ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.g = ptrtoint ptr %0 to i64
  %i.h = and i64 %i.g, 1
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.f, label %lean_dec.exit

bb.f:                                             ; preds = %lean_dec.exit6
  %i.i = load i32, ptr %0, align 4, !tbaa !16     ; 3 uses
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %bb.g, label %bb.h, !prof !11

bb.g:                                             ; preds = %bb.f
  %i.k = add nsw i32 %i.i, -1
  store i32 %i.k, ptr %0, align 4, !tbaa !16
  br label %lean_dec.exit

bb.h:                                             ; preds = %bb.f
  %.not.i8 = icmp eq i32 %i.i, 0
  br i1 %.not.i8, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.i, %bb.h, %bb.g, %lean_dec.exit6
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Std_Time_Second_instReprOrdinal(i8 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  ret ptr @l_Std_Time_Second_instReprOrdinal___closed__0_value
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Std_Time_Second_instReprOrdinal___boxed(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  ret ptr @l_Std_Time_Second_instReprOrdinal___closed__0_value
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Std_Time_Second_instToStringOrdinal(i8 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  ret ptr @l_Std_Time_Second_instToStringOrdinal___closed__0_value
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @l_Std_Time_Second_instToStringOrdinal___boxed(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  ret ptr @l_Std_Time_Second_instToStringOrdinal___closed__0_value
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_Time_Second_instOfNatOrdinal(i8 noundef zeroext %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Second_instReprOrdinal___lam__0___closed__0_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Second_instReprOrdinal___lam__0___closed__0, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Second_instReprOrdinal___lam__0___closed__0, ptr noundef nonnull @l_Std_Time_Second_instReprOrdinal___lam__0___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Second_instReprOrdinal___lam__0___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 7 uses
  %i.e = icmp eq i8 %0, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.f = tail call ptr @l_Std_Time_Internal_Bounded_LE_instOfNatHAddIntCast(ptr noundef %.0.i, ptr noundef %1, ptr noundef nonnull inttoptr (i64 119 to ptr)) #6
  br label %lean_dec.exit

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.g = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.h = and i64 %i.g, 1
  %.not.i39 = icmp eq i64 %i.h, 0
  %i.i = icmp ult ptr %1, inttoptr (i64 4294967296 to ptr)
  %or.cond.i = or i1 %i.i, %.not.i39
  br i1 %or.cond.i, label %lean_nat_to_int.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = lshr i64 %i.g, 1
  %i.k = tail call ptr @lean_big_size_t_to_int(i64 noundef %i.j) #6
  br label %lean_nat_to_int.exit

lean_nat_to_int.exit:                             ; preds = %bb.e, %bb.f
  %.1.i = phi ptr [ %1, %bb.e ], [ %i.k, %bb.f ]  ; 6 uses
  %i.l = load atomic i32, ptr @l_Std_Time_Second_instOfNatOrdinal___closed__4_once seq_cst, align 4, !tbaa !10
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.g, label %bb.h, !prof !11

bb.g:                                             ; preds = %lean_nat_to_int.exit
  %i.n = load ptr, ptr @l_Std_Time_Second_instOfNatOrdinal___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit41

bb.h:                                             ; preds = %lean_nat_to_int.exit
  %i.o = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Second_instOfNatOrdinal___closed__4, ptr noundef nonnull @l_Std_Time_Second_instOfNatOrdinal___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Second_instOfNatOrdinal___closed__4) #6
  br label %lean_obj_once.exit41

lean_obj_once.exit41:                             ; preds = %bb.g, %bb.h
  %.0.i40 = phi ptr [ %i.n, %bb.g ], [ %i.o, %bb.h ] ; 9 uses
  %i.p = ptrtoint ptr %.1.i to i64                ; 2 uses
  %i.q = and i64 %i.p, 1
  %.not.i42 = icmp eq i64 %i.q, 0
  br i1 %.not.i42, label %bb.m, label %bb.i, !prof !14

bb.i:                                             ; preds = %lean_obj_once.exit41
  %i.r = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.s = and i64 %i.r, 1
  %.not7.i = icmp eq i64 %i.s, 0
  br i1 %.not7.i, label %lean_int_sub.exit, label %bb.j, !prof !14

bb.j:                                             ; preds = %bb.i
  %i.t = shl i64 %i.p, 31
  %i.u = ashr i64 %i.t, 32
  %i.v = shl i64 %i.r, 31
  %i.w = ashr i64 %i.v, 32
  %i.x = sub nsw i64 %i.u, %i.w                   ; 3 uses
  %i.y = add nsw i64 %i.x, 2147483648
  %i.z = icmp ult i64 %i.y, 4294967296
  br i1 %i.z, label %bb.k, label %bb.l, !prof !11

bb.k:                                             ; preds = %bb.j
  %i.aa = shl nsw i64 %i.x, 1
  %i.ab = and i64 %i.aa, 8589934590
  %i.ac = or disjoint i64 %i.ab, 1
  %i.ad = inttoptr i64 %i.ac to ptr
  br label %lean_dec.exit29

bb.l:                                             ; preds = %bb.j
  %i.ae = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %i.x) #6
  br label %lean_dec.exit29

lean_int_sub.exit:                                ; preds = %bb.i
  %i.af = tail call ptr @lean_int_big_sub(ptr noundef %.1.i, ptr noundef %.0.i) #6
  br label %lean_dec.exit29

bb.m:                                             ; preds = %lean_obj_once.exit41
  %i.ag = tail call ptr @lean_int_big_sub(ptr noundef %.1.i, ptr noundef %.0.i) #6 ; 3 uses
  %i.ah = load i32, ptr %.1.i, align 4, !tbaa !16 ; 3 uses
  %i.ai = icmp sgt i32 %i.ah, 1
  br i1 %i.ai, label %bb.n, label %bb.o, !prof !11

bb.n:                                             ; preds = %bb.m
  %i.aj = add nsw i32 %i.ah, -1
  store i32 %i.aj, ptr %.1.i, align 4, !tbaa !16
  br label %lean_dec.exit29

bb.o:                                             ; preds = %bb.m
  %.not.i30 = icmp eq i32 %i.ah, 0
  br i1 %.not.i30, label %lean_dec.exit29, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i) #6
  br label %lean_dec.exit29

lean_dec.exit29:                                  ; preds = %bb.l, %bb.k, %lean_int_sub.exit, %bb.p, %bb.o, %bb.n
  %.0.i4376 = phi ptr [ %i.af, %lean_int_sub.exit ], [ %i.ag, %bb.p ], [ %i.ag, %bb.o ], [ %i.ag, %bb.n ], [ %i.ae, %bb.l ], [ %i.ad, %bb.k ] ; 7 uses
  %i.ak = ptrtoint ptr %.0.i4376 to i64           ; 2 uses
  %i.al = and i64 %i.ak, 1
  %.not.i44 = icmp eq i64 %i.al, 0
  br i1 %.not.i44, label %bb.v, label %bb.q, !prof !14

bb.q:                                             ; preds = %lean_dec.exit29
  %i.am = ptrtoint ptr %.0.i40 to i64             ; 2 uses
  %i.an = and i64 %i.am, 1
  %.not21.i = icmp eq i64 %i.an, 0
  br i1 %.not21.i, label %lean_int_emod.exit, label %bb.r, !prof !14

bb.r:                                             ; preds = %bb.q
  %i.ao = shl i64 %i.am, 31
  %i.ap = ashr i64 %i.ao, 32                      ; 3 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %lean_dec.exit27, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = shl i64 %i.ak, 31
  %i.as = ashr i64 %i.ar, 32
  %i.at = srem i64 %i.as, %i.ap                   ; 2 uses
  %i.au = icmp slt i64 %i.at, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.ap, i1 true)
  %i.av = select i1 %i.au, i64 %.p.i, i64 0
  %.0.i45 = add nsw i64 %i.av, %i.at              ; 3 uses
  %2 = icmp ult i64 %.0.i45, 2147483648
  br i1 %2, label %bb.t, label %bb.u, !prof !11

bb.t:                                             ; preds = %bb.s
  %i.aw = shl nuw nsw i64 %.0.i45, 1
  %i.ax = or disjoint i64 %i.aw, 1
  %i.ay = inttoptr i64 %i.ax to ptr
  br label %lean_dec.exit27

bb.u:                                             ; preds = %bb.s
  %i.az = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %.0.i45) #6
  br label %lean_dec.exit27

lean_int_emod.exit:                               ; preds = %bb.q
  %i.ba = tail call ptr @lean_int_big_emod(ptr noundef %.0.i4376, ptr noundef %.0.i40) #6
  br label %lean_dec.exit27

bb.v:                                             ; preds = %lean_dec.exit29
  %i.bb = tail call ptr @lean_int_big_emod(ptr noundef %.0.i4376, ptr noundef %.0.i40) #6 ; 3 uses
  %i.bc = load i32, ptr %.0.i4376, align 4, !tbaa !16 ; 3 uses
  %i.bd = icmp sgt i32 %i.bc, 1
  br i1 %i.bd, label %bb.w, label %bb.x, !prof !11

bb.w:                                             ; preds = %bb.v
  %i.be = add nsw i32 %i.bc, -1
  store i32 %i.be, ptr %.0.i4376, align 4, !tbaa !16
  br label %lean_dec.exit27

bb.x:                                             ; preds = %bb.v
  %.not.i31 = icmp eq i32 %i.bc, 0
  br i1 %.not.i31, label %lean_dec.exit27, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i4376) #6
  br label %lean_dec.exit27

lean_dec.exit27:                                  ; preds = %bb.u, %bb.t, %bb.r, %lean_int_emod.exit, %bb.y, %bb.x, %bb.w
  %.1.i4679 = phi ptr [ %i.ba, %lean_int_emod.exit ], [ %i.bb, %bb.y ], [ %i.bb, %bb.x ], [ %i.bb, %bb.w ], [ %i.az, %bb.u ], [ %i.ay, %bb.t ], [ %.0.i4376, %bb.r ] ; 6 uses
  %i.bf = ptrtoint ptr %.1.i4679 to i64           ; 2 uses
  %i.bg = and i64 %i.bf, 1
  %.not.i48 = icmp eq i64 %i.bg, 0
  br i1 %.not.i48, label %bb.ad, label %bb.z, !prof !14

bb.z:                                             ; preds = %lean_dec.exit27
  %i.bh = ptrtoint ptr %.0.i40 to i64             ; 2 uses
  %i.bi = and i64 %i.bh, 1
  %.not7.i49 = icmp eq i64 %i.bi, 0
  br i1 %.not7.i49, label %lean_int_add.exit, label %bb.aa, !prof !14

bb.aa:                                            ; preds = %bb.z
  %i.bj = shl i64 %i.bf, 31
  %i.bk = ashr i64 %i.bj, 32
  %i.bl = shl i64 %i.bh, 31
  %i.bm = ashr i64 %i.bl, 32
  %i.bn = add nsw i64 %i.bk, %i.bm                ; 3 uses
  %i.bo = add nsw i64 %i.bn, 2147483648
  %i.bp = icmp ult i64 %i.bo, 4294967296
  br i1 %i.bp, label %bb.ab, label %bb.ac, !prof !11

bb.ab:                                            ; preds = %bb.aa
  %i.bq = shl nsw i64 %i.bn, 1
  %i.br = and i64 %i.bq, 8589934590
  %i.bs = or disjoint i64 %i.br, 1
  %i.bt = inttoptr i64 %i.bs to ptr
  br label %lean_dec.exit25

bb.ac:                                            ; preds = %bb.aa
  %i.bu = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %i.bn) #6
  br label %lean_dec.exit25

lean_int_add.exit:                                ; preds = %bb.z
  %i.bv = tail call ptr @lean_int_big_add(ptr noundef %.1.i4679, ptr noundef %.0.i40) #6
  br label %lean_dec.exit25

bb.ad:                                            ; preds = %lean_dec.exit27
  %i.bw = tail call ptr @lean_int_big_add(ptr noundef %.1.i4679, ptr noundef %.0.i40) #6 ; 3 uses
  %i.bx = load i32, ptr %.1.i4679, align 4, !tbaa !16 ; 3 uses
  %i.by = icmp sgt i32 %i.bx, 1
  br i1 %i.by, label %bb.ae, label %bb.af, !prof !11

bb.ae:                                            ; preds = %bb.ad
  %i.bz = add nsw i32 %i.bx, -1
  store i32 %i.bz, ptr %.1.i4679, align 4, !tbaa !16
  br label %lean_dec.exit25

bb.af:                                            ; preds = %bb.ad
  %.not.i33 = icmp eq i32 %i.bx, 0
  br i1 %.not.i33, label %lean_dec.exit25, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i4679) #6
  br label %lean_dec.exit25

lean_dec.exit25:                                  ; preds = %bb.ac, %bb.ab, %lean_int_add.exit, %bb.ag, %bb.af, %bb.ae
  %.0.i5082 = phi ptr [ %i.bv, %lean_int_add.exit ], [ %i.bw, %bb.ag ], [ %i.bw, %bb.af ], [ %i.bw, %bb.ae ], [ %i.bu, %bb.ac ], [ %i.bt, %bb.ab ] ; 7 uses
  %i.ca = ptrtoint ptr %.0.i5082 to i64           ; 2 uses
  %i.cb = and i64 %i.ca, 1
  %.not.i52 = icmp eq i64 %i.cb, 0
  br i1 %.not.i52, label %bb.am, label %bb.ah, !prof !14

bb.ah:                                            ; preds = %lean_dec.exit25
  %i.cc = ptrtoint ptr %.0.i40 to i64             ; 2 uses
  %i.cd = and i64 %i.cc, 1
  %.not21.i53 = icmp eq i64 %i.cd, 0
  br i1 %.not21.i53, label %lean_int_emod.exit58, label %bb.ai, !prof !14

bb.ai:                                            ; preds = %bb.ah
  %i.ce = shl i64 %i.cc, 31
  %i.cf = ashr i64 %i.ce, 32                      ; 3 uses
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %lean_dec.exit23, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ch = shl i64 %i.ca, 31
  %i.ci = ashr i64 %i.ch, 32
  %i.cj = srem i64 %i.ci, %i.cf                   ; 2 uses
  %i.ck = icmp slt i64 %i.cj, 0
  %.p.i54 = tail call i64 @llvm.abs.i64(i64 %i.cf, i1 true)
  %i.cl = select i1 %i.ck, i64 %.p.i54, i64 0
  %.0.i55 = add nsw i64 %i.cl, %i.cj              ; 3 uses
  %3 = icmp ult i64 %.0.i55, 2147483648
  br i1 %3, label %bb.ak, label %bb.al, !prof !11

bb.ak:                                            ; preds = %bb.aj
  %i.cm = shl nuw nsw i64 %.0.i55, 1
  %i.cn = or disjoint i64 %i.cm, 1
  %i.co = inttoptr i64 %i.cn to ptr
  br label %lean_dec.exit23

bb.al:                                            ; preds = %bb.aj
  %i.cp = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %.0.i55) #6
  br label %lean_dec.exit23

lean_int_emod.exit58:                             ; preds = %bb.ah
  %i.cq = tail call ptr @lean_int_big_emod(ptr noundef %.0.i5082, ptr noundef %.0.i40) #6
  br label %lean_dec.exit23

bb.am:                                            ; preds = %lean_dec.exit25
  %i.cr = tail call ptr @lean_int_big_emod(ptr noundef %.0.i5082, ptr noundef %.0.i40) #6 ; 3 uses
  %i.cs = load i32, ptr %.0.i5082, align 4, !tbaa !16 ; 3 uses
  %i.ct = icmp sgt i32 %i.cs, 1
  br i1 %i.ct, label %bb.an, label %bb.ao, !prof !11

bb.an:                                            ; preds = %bb.am
  %i.cu = add nsw i32 %i.cs, -1
  store i32 %i.cu, ptr %.0.i5082, align 4, !tbaa !16
  br label %lean_dec.exit23

bb.ao:                                            ; preds = %bb.am
  %.not.i35 = icmp eq i32 %i.cs, 0
  br i1 %.not.i35, label %lean_dec.exit23, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i5082) #6
  br label %lean_dec.exit23

lean_dec.exit23:                                  ; preds = %bb.al, %bb.ak, %bb.ai, %lean_int_emod.exit58, %bb.ap, %bb.ao, %bb.an
  %.1.i5685 = phi ptr [ %i.cq, %lean_int_emod.exit58 ], [ %i.cr, %bb.ap ], [ %i.cr, %bb.ao ], [ %i.cr, %bb.an ], [ %i.cp, %bb.al ], [ %i.co, %bb.ak ], [ %.0.i5082, %bb.ai ] ; 6 uses
  %i.cv = ptrtoint ptr %.1.i5685 to i64           ; 2 uses
  %i.cw = and i64 %i.cv, 1
  %.not.i59 = icmp eq i64 %i.cw, 0
  br i1 %.not.i59, label %bb.au, label %bb.aq, !prof !14

bb.aq:                                            ; preds = %lean_dec.exit23
  %i.cx = ptrtoint ptr %.0.i to i64               ; 2 uses
  %i.cy = and i64 %i.cx, 1
  %.not7.i60 = icmp eq i64 %i.cy, 0
  br i1 %.not7.i60, label %lean_int_add.exit63, label %bb.ar, !prof !14

bb.ar:                                            ; preds = %bb.aq
  %i.cz = shl i64 %i.cv, 31
  %i.da = ashr i64 %i.cz, 32
  %i.db = shl i64 %i.cx, 31
  %i.dc = ashr i64 %i.db, 32
  %i.dd = add nsw i64 %i.da, %i.dc                ; 3 uses
  %i.de = add nsw i64 %i.dd, 2147483648
  %i.df = icmp ult i64 %i.de, 4294967296
  br i1 %i.df, label %bb.as, label %bb.at, !prof !11

bb.as:                                            ; preds = %bb.ar
  %i.dg = shl nsw i64 %i.dd, 1
  %i.dh = and i64 %i.dg, 8589934590
  %i.di = or disjoint i64 %i.dh, 1
  %i.dj = inttoptr i64 %i.di to ptr
  br label %lean_dec.exit

bb.at:                                            ; preds = %bb.ar
  %i.dk = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4294967296, 4294967296) %i.dd) #6
  br label %lean_dec.exit

lean_int_add.exit63:                              ; preds = %bb.aq
  %i.dl = tail call ptr @lean_int_big_add(ptr noundef %.1.i5685, ptr noundef %.0.i) #6
  br label %lean_dec.exit

bb.au:                                            ; preds = %lean_dec.exit23
  %i.dm = tail call ptr @lean_int_big_add(ptr noundef %.1.i5685, ptr noundef %.0.i) #6 ; 3 uses
  %i.dn = load i32, ptr %.1.i5685, align 4, !tbaa !16 ; 3 uses
  %i.do = icmp sgt i32 %i.dn, 1
  br i1 %i.do, label %bb.av, label %bb.aw, !prof !11

bb.av:                                            ; preds = %bb.au
  %i.dp = add nsw i32 %i.dn, -1
  store i32 %i.dp, ptr %.1.i5685, align 4, !tbaa !16
  br label %lean_dec.exit

bb.aw:                                            ; preds = %bb.au
  %.not.i37 = icmp eq i32 %i.dn, 0
  br i1 %.not.i37, label %lean_dec.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i5685) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.at, %bb.as, %lean_int_add.exit63, %bb.av, %bb.aw, %bb.ax, %bb.d
  %.0 = phi ptr [ %i.f, %bb.d ], [ %i.dm, %bb.ax ], [ %i.dm, %bb.aw ], [ %i.dm, %bb.av ], [ %i.dl, %lean_int_add.exit63 ], [ %i.dk, %bb.at ], [ %i.dj, %bb.as ]
  ret ptr %.0
}

declare ptr @l_Std_Time_Internal_Bounded_LE_instOfNatHAddIntCast(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Second_instOfNatOrdinal___closed__4() #1 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Second_instOfNatOrdinal___closed__3_once seq_cst, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Second_instOfNatOrdinal___closed__3, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Second_instOfNatOrdinal___closed__3, ptr noundef nonnull @l_Std_Time_Second_instOfNatOrdinal___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Second_instOfNatOrdinal___closed__3) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Second_instOfNatOrdinal___closed__2_once seq_cst, align 4, !tbaa !10
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Second_instOfNatOrdinal___closed__2, align 8, !tbaa !13
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Second_instOfNatOrdinal___closed__2, ptr noundef nonnull @l_Std_Time_Second_instOfNatOrdinal___closed__2_once, ptr noundef nonnull @_init_l_Std_Time_Second_instOfNatOrdinal___closed__2) #6
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
define ptr @l_Std_Time_Second_instOfNatOrdinal___boxed(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  %i.d = tail call ptr @l_Std_Time_Second_instOfNatOrdinal(i8 noundef zeroext %i.c, ptr noundef %1)
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define zeroext range(i8 0, 2) i8 @l_Std_Time_Second_instDecidableLeOrdinal___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
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
end_hunk_0
