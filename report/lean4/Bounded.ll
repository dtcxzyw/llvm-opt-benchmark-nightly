Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/Bounded?download=true
inline.NumInlined: 377
inline.NumDeleted: 41
begin_hunk_0_@l_Std_Time_Internal_Bounded_ofInt_x3f:bb.a
  br label %lean_dec.exit20

bb.t:                                             ; preds = %bb.n
  tail call void @lean_inc_heartbeat() #7
  %i.w = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 5 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.u, label %lean_alloc_ctor.exit

bb.u:                                             ; preds = %bb.t
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.t
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 1, ptr %i.w, align 4, !tbaa !10
  store i32 16842768, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %4, ptr %i.z, align 8, !tbaa !16
  br label %lean_dec.exit20

lean_dec.exit20:                                  ; preds = %bb.o, %bb.q, %bb.r, %bb.s, %bb.i, %bb.k, %bb.l, %bb.m, %lean_alloc_ctor.exit
  %.1 = phi ptr [ %i.w, %lean_alloc_ctor.exit ], [ inttoptr (i64 1 to ptr), %bb.i ], [ inttoptr (i64 1 to ptr), %bb.m ], [ inttoptr (i64 1 to ptr), %bb.l ], [ inttoptr (i64 1 to ptr), %bb.k ], [ inttoptr (i64 1 to ptr), %bb.s ], [ inttoptr (i64 1 to ptr), %bb.r ], [ inttoptr (i64 1 to ptr), %bb.q ], [ inttoptr (i64 1 to ptr), %bb.o ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_Time_Internal_Bounded_LE_ofNatWrapping___redArg(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i42 = icmp eq i64 %i.b, 0
  br i1 %.not.i42, label %.critedge.i, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.d = and i64 %i.c, 1
  %.not7.i = icmp eq i64 %i.d, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.c, !prof !17

bb.c:                                             ; preds = %bb.b
  %i.e = shl i64 %i.a, 31
  %i.f = ashr i64 %i.e, 32
  %i.g = shl i64 %i.c, 31
  %i.h = ashr i64 %i.g, 32
  %i.i = sub nsw i64 %i.f, %i.h                   ; 3 uses
  %i.j = add nsw i64 %i.i, 2147483648
  %i.k = icmp ult i64 %i.j, 4294967296
  br i1 %i.k, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.l = shl nsw i64 %i.i, 1
  %i.m = and i64 %i.l, 8589934590
  %i.n = or disjoint i64 %i.m, 1
  %i.o = inttoptr i64 %i.n to ptr
  br label %lean_int_sub.exit

bb.e:                                             ; preds = %bb.c
  %i.p = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.i) #7
  br label %lean_int_sub.exit

.critedge.i:                                      ; preds = %bb.b, %bb.a
  %i.q = tail call ptr @lean_int_big_sub(ptr noundef %1, ptr noundef %0) #7
  br label %lean_int_sub.exit

lean_int_sub.exit:                                ; preds = %bb.d, %bb.e, %.critedge.i
  %.0.i = phi ptr [ %i.q, %.critedge.i ], [ %i.o, %bb.d ], [ %i.p, %bb.e ] ; 6 uses
  %i.r = load atomic i32, ptr @l_Std_Time_Internal_Bounded_LE_ofNatWrapping___redArg___closed__0_once seq_cst, align 4, !tbaa !14
  %i.s = icmp eq i32 %i.r, 1
  br i1 %i.s, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %lean_int_sub.exit
  %i.t = load ptr, ptr @l_Std_Time_Internal_Bounded_LE_ofNatWrapping___redArg___closed__0, align 8, !tbaa !16
  br label %lean_obj_once.exit

bb.g:                                             ; preds = %lean_int_sub.exit
  %i.u = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Internal_Bounded_LE_ofNatWrapping___redArg___closed__0, ptr noundef nonnull @l_Std_Time_Internal_Bounded_LE_ofNatWrapping___redArg___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Internal_Bounded_LE_ofNatWrapping___redArg___closed__0) #7
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.f, %bb.g
  %.0.i43 = phi ptr [ %i.t, %bb.f ], [ %i.u, %bb.g ] ; 3 uses
  %i.v = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.w = and i64 %i.v, 1
  %.not.i44 = icmp eq i64 %i.w, 0
  br i1 %.not.i44, label %bb.l, label %bb.h, !prof !17

bb.h:                                             ; preds = %lean_obj_once.exit
  %i.x = ptrtoint ptr %.0.i43 to i64              ; 2 uses
  %i.y = and i64 %i.x, 1
  %.not7.i45 = icmp eq i64 %i.y, 0
  br i1 %.not7.i45, label %lean_int_add.exit, label %bb.i, !prof !17

bb.i:                                             ; preds = %bb.h
  %i.z = shl i64 %i.v, 31
  %i.aa = ashr i64 %i.z, 32
  %i.ab = shl i64 %i.x, 31
  %i.ac = ashr i64 %i.ab, 32
  %i.ad = add nsw i64 %i.ac, %i.aa                ; 3 uses
  %i.ae = add nsw i64 %i.ad, 2147483648
  %i.af = icmp ult i64 %i.ae, 4294967296
  br i1 %i.af, label %bb.j, label %bb.k, !prof !11

bb.j:                                             ; preds = %bb.i
  %i.ag = shl nsw i64 %i.ad, 1
  %i.ah = and i64 %i.ag, 8589934590
  %i.ai = or disjoint i64 %i.ah, 1
  %i.aj = inttoptr i64 %i.ai to ptr
  br label %lean_dec.exit30

bb.k:                                             ; preds = %bb.i
  %i.ak = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.ad) #7
  br label %lean_dec.exit30

lean_int_add.exit:                                ; preds = %bb.h
  %i.al = tail call ptr @lean_int_big_add(ptr noundef %.0.i, ptr noundef %.0.i43) #7
  br label %lean_dec.exit30

bb.l:                                             ; preds = %lean_obj_once.exit
  %i.am = tail call ptr @lean_int_big_add(ptr noundef %.0.i, ptr noundef %.0.i43) #7 ; 3 uses
  %i.an = load i32, ptr %.0.i, align 4, !tbaa !10 ; 3 uses
  %i.ao = icmp sgt i32 %i.an, 1
  br i1 %i.ao, label %bb.m, label %bb.n, !prof !11

bb.m:                                             ; preds = %bb.l
  %i.ap = add nsw i32 %i.an, -1
  store i32 %i.ap, ptr %.0.i, align 4, !tbaa !10
  br label %lean_dec.exit30

bb.n:                                             ; preds = %bb.l
  %.not.i31 = icmp eq i32 %i.an, 0
  br i1 %.not.i31, label %lean_dec.exit30, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i) #7
  br label %lean_dec.exit30

lean_dec.exit30:                                  ; preds = %bb.k, %bb.j, %lean_int_add.exit, %bb.o, %bb.n, %bb.m
  %.0.i4691 = phi ptr [ %i.al, %lean_int_add.exit ], [ %i.am, %bb.o ], [ %i.am, %bb.n ], [ %i.am, %bb.m ], [ %i.ak, %bb.k ], [ %i.aj, %bb.j ] ; 12 uses
  %i.aq = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.ar = and i64 %i.aq, 1
  %.not.i48 = icmp eq i64 %i.ar, 0
  br i1 %.not.i48, label %.critedge.i51, label %bb.p, !prof !17

bb.p:                                             ; preds = %lean_dec.exit30
  %i.as = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.at = and i64 %i.as, 1
  %.not7.i49 = icmp eq i64 %i.at, 0
  br i1 %.not7.i49, label %.critedge.i51, label %bb.q, !prof !17

bb.q:                                             ; preds = %bb.p
  %i.au = shl i64 %i.aq, 31
  %i.av = ashr i64 %i.au, 32
  %i.aw = shl i64 %i.as, 31
  %i.ax = ashr i64 %i.aw, 32
  %i.ay = sub nsw i64 %i.av, %i.ax                ; 3 uses
  %i.az = add nsw i64 %i.ay, 2147483648
  %i.ba = icmp ult i64 %i.az, 4294967296
  br i1 %i.ba, label %bb.r, label %bb.s, !prof !11

bb.r:                                             ; preds = %bb.q
  %i.bb = shl nsw i64 %i.ay, 1
  %i.bc = and i64 %i.bb, 8589934590
  %i.bd = or disjoint i64 %i.bc, 1
  %i.be = inttoptr i64 %i.bd to ptr
  br label %lean_int_sub.exit52

bb.s:                                             ; preds = %bb.q
  %i.bf = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.ay) #7
  br label %lean_int_sub.exit52

.critedge.i51:                                    ; preds = %bb.p, %lean_dec.exit30
  %i.bg = tail call ptr @lean_int_big_sub(ptr noundef %2, ptr noundef %0) #7
  br label %lean_int_sub.exit52

lean_int_sub.exit52:                              ; preds = %bb.r, %bb.s, %.critedge.i51
  %.0.i50 = phi ptr [ %i.bg, %.critedge.i51 ], [ %i.be, %bb.r ], [ %i.bf, %bb.s ] ; 7 uses
  %i.bh = ptrtoint ptr %.0.i50 to i64             ; 2 uses
  %i.bi = and i64 %i.bh, 1
  %.not.i53 = icmp eq i64 %i.bi, 0
  br i1 %.not.i53, label %bb.y, label %bb.t, !prof !17

bb.t:                                             ; preds = %lean_int_sub.exit52
  %i.bj = ptrtoint ptr %.0.i4691 to i64           ; 2 uses
  %i.bk = and i64 %i.bj, 1
  %.not21.i = icmp eq i64 %i.bk, 0
  br i1 %.not21.i, label %lean_int_emod.exit, label %bb.u, !prof !17

bb.u:                                             ; preds = %bb.t
  %i.bl = shl i64 %i.bj, 31
  %i.bm = ashr i64 %i.bl, 32                      ; 3 uses
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %lean_dec.exit28, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bo = shl i64 %i.bh, 31
  %i.bp = ashr i64 %i.bo, 32
  %i.bq = srem i64 %i.bp, %i.bm                   ; 2 uses
  %i.br = icmp slt i64 %i.bq, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.bm, i1 true)
  %i.bs = select i1 %i.br, i64 %.p.i, i64 0
  %.0.i54 = add nsw i64 %i.bs, %i.bq              ; 3 uses
  %3 = icmp ult i64 %.0.i54, 2147483648
  br i1 %3, label %bb.w, label %bb.x, !prof !11

bb.w:                                             ; preds = %bb.v
  %i.bt = shl nuw nsw i64 %.0.i54, 1
  %i.bu = or disjoint i64 %i.bt, 1
  %i.bv = inttoptr i64 %i.bu to ptr
  br label %lean_dec.exit28

bb.x:                                             ; preds = %bb.v
  %i.bw = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i54) #7
  br label %lean_dec.exit28

lean_int_emod.exit:                               ; preds = %bb.t
  %i.bx = tail call ptr @lean_int_big_emod(ptr noundef %.0.i50, ptr noundef %.0.i4691) #7
  br label %lean_dec.exit28

bb.y:                                             ; preds = %lean_int_sub.exit52
  %i.by = tail call ptr @lean_int_big_emod(ptr noundef %.0.i50, ptr noundef %.0.i4691) #7 ; 3 uses
  %i.bz = load i32, ptr %.0.i50, align 4, !tbaa !10 ; 3 uses
  %i.ca = icmp sgt i32 %i.bz, 1
  br i1 %i.ca, label %bb.z, label %bb.aa, !prof !11

bb.z:                                             ; preds = %bb.y
  %i.cb = add nsw i32 %i.bz, -1
  store i32 %i.cb, ptr %.0.i50, align 4, !tbaa !10
  br label %lean_dec.exit28

bb.aa:                                            ; preds = %bb.y
  %.not.i32 = icmp eq i32 %i.bz, 0
  br i1 %.not.i32, label %lean_dec.exit28, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i50) #7
  br label %lean_dec.exit28

lean_dec.exit28:                                  ; preds = %bb.x, %bb.w, %bb.u, %lean_int_emod.exit, %bb.ab, %bb.aa, %bb.z
  %.1.i94 = phi ptr [ %i.bx, %lean_int_emod.exit ], [ %i.by, %bb.ab ], [ %i.by, %bb.aa ], [ %i.by, %bb.z ], [ %i.bw, %bb.x ], [ %i.bv, %bb.w ], [ %.0.i50, %bb.u ] ; 6 uses
  %i.cc = ptrtoint ptr %.1.i94 to i64             ; 2 uses
  %i.cd = and i64 %i.cc, 1
  %.not.i56 = icmp eq i64 %i.cd, 0
  br i1 %.not.i56, label %bb.ag, label %bb.ac, !prof !17

bb.ac:                                            ; preds = %lean_dec.exit28
  %i.ce = ptrtoint ptr %.0.i4691 to i64           ; 2 uses
  %i.cf = and i64 %i.ce, 1
  %.not7.i57 = icmp eq i64 %i.cf, 0
  br i1 %.not7.i57, label %lean_int_add.exit60, label %bb.ad, !prof !17

bb.ad:                                            ; preds = %bb.ac
  %i.cg = shl i64 %i.cc, 31
  %i.ch = ashr i64 %i.cg, 32
  %i.ci = shl i64 %i.ce, 31
  %i.cj = ashr i64 %i.ci, 32
  %i.ck = add nsw i64 %i.ch, %i.cj                ; 3 uses
  %i.cl = add nsw i64 %i.ck, 2147483648
  %i.cm = icmp ult i64 %i.cl, 4294967296
  br i1 %i.cm, label %bb.ae, label %bb.af, !prof !11

bb.ae:                                            ; preds = %bb.ad
  %i.cn = shl nsw i64 %i.ck, 1
  %i.co = and i64 %i.cn, 8589934590
  %i.cp = or disjoint i64 %i.co, 1
  %i.cq = inttoptr i64 %i.cp to ptr
  br label %lean_dec.exit26

bb.af:                                            ; preds = %bb.ad
  %i.cr = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.ck) #7
  br label %lean_dec.exit26

lean_int_add.exit60:                              ; preds = %bb.ac
  %i.cs = tail call ptr @lean_int_big_add(ptr noundef %.1.i94, ptr noundef %.0.i4691) #7
  br label %lean_dec.exit26

bb.ag:                                            ; preds = %lean_dec.exit28
  %i.ct = tail call ptr @lean_int_big_add(ptr noundef %.1.i94, ptr noundef %.0.i4691) #7 ; 3 uses
  %i.cu = load i32, ptr %.1.i94, align 4, !tbaa !10 ; 3 uses
  %i.cv = icmp sgt i32 %i.cu, 1
  br i1 %i.cv, label %bb.ah, label %bb.ai, !prof !11

bb.ah:                                            ; preds = %bb.ag
  %i.cw = add nsw i32 %i.cu, -1
  store i32 %i.cw, ptr %.1.i94, align 4, !tbaa !10
  br label %lean_dec.exit26

bb.ai:                                            ; preds = %bb.ag
  %.not.i34 = icmp eq i32 %i.cu, 0
  br i1 %.not.i34, label %lean_dec.exit26, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i94) #7
  br label %lean_dec.exit26

lean_dec.exit26:                                  ; preds = %bb.af, %bb.ae, %lean_int_add.exit60, %bb.aj, %bb.ai, %bb.ah
  %.0.i5897 = phi ptr [ %i.cs, %lean_int_add.exit60 ], [ %i.ct, %bb.aj ], [ %i.ct, %bb.ai ], [ %i.ct, %bb.ah ], [ %i.cr, %bb.af ], [ %i.cq, %bb.ae ] ; 7 uses
  %i.cx = ptrtoint ptr %.0.i5897 to i64           ; 2 uses
  %i.cy = and i64 %i.cx, 1
  %.not.i61 = icmp eq i64 %i.cy, 0                ; 2 uses
  %.pre75 = ptrtoint ptr %.0.i4691 to i64         ; 2 uses
  %.pre = and i64 %.pre75, 1
  %i.cz = icmp eq i64 %.pre, 0                    ; 2 uses
  br i1 %.not.i61, label %lean_int_emod.exit67, label %bb.ak, !prof !17

bb.ak:                                            ; preds = %lean_dec.exit26
  br i1 %i.cz, label %lean_int_emod.exit67.thread102, label %bb.al, !prof !17

lean_int_emod.exit67.thread102:                   ; preds = %bb.ak
  %i.da = tail call ptr @lean_int_big_emod(ptr noundef %.0.i5897, ptr noundef %.0.i4691) #7
  br label %bb.ap

bb.al:                                            ; preds = %bb.ak
  %i.db = shl i64 %.pre75, 31
  %i.dc = ashr i64 %i.db, 32                      ; 3 uses
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %lean_dec.exit22, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.de = shl i64 %i.cx, 31
  %i.df = ashr i64 %i.de, 32
  %i.dg = srem i64 %i.df, %i.dc                   ; 2 uses
  %i.dh = icmp slt i64 %i.dg, 0
  %.p.i63 = tail call i64 @llvm.abs.i64(i64 %i.dc, i1 true)
  %i.di = select i1 %i.dh, i64 %.p.i63, i64 0
  %.0.i64 = add nsw i64 %i.di, %i.dg              ; 3 uses
  %4 = icmp ult i64 %.0.i64, 2147483648
  br i1 %4, label %bb.an, label %bb.ao, !prof !11

bb.an:                                            ; preds = %bb.am
  %i.dj = shl nuw nsw i64 %.0.i64, 1
  %i.dk = or disjoint i64 %i.dj, 1
  %i.dl = inttoptr i64 %i.dk to ptr
  br label %lean_dec.exit22

bb.ao:                                            ; preds = %bb.am
  %i.dm = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i64) #7
  br label %lean_dec.exit22

lean_int_emod.exit67:                             ; preds = %lean_dec.exit26
  %i.dn = tail call ptr @lean_int_big_emod(ptr noundef %.0.i5897, ptr noundef %.0.i4691) #7 ; 2 uses
  br i1 %i.cz, label %bb.ap, label %lean_dec.exit24.thread

bb.ap:                                            ; preds = %lean_int_emod.exit67.thread102, %lean_int_emod.exit67
  %i.do = phi ptr [ %i.da, %lean_int_emod.exit67.thread102 ], [ %i.dn, %lean_int_emod.exit67 ] ; 2 uses
  %i.dp = load i32, ptr %.0.i4691, align 4, !tbaa !10 ; 3 uses
  %i.dq = icmp sgt i32 %i.dp, 1
  br i1 %i.dq, label %bb.aq, label %bb.ar, !prof !11

bb.aq:                                            ; preds = %bb.ap
  %i.dr = add nsw i32 %i.dp, -1
  store i32 %i.dr, ptr %.0.i4691, align 4, !tbaa !10
  br label %lean_dec.exit24

bb.ar:                                            ; preds = %bb.ap
  %.not.i36 = icmp eq i32 %i.dp, 0
  br i1 %.not.i36, label %lean_dec.exit24, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i4691) #7
  br label %lean_dec.exit24

lean_dec.exit24:                                  ; preds = %bb.as, %bb.ar, %bb.aq
  br i1 %.not.i61, label %lean_dec.exit24.thread, label %lean_dec.exit22

lean_dec.exit24.thread:                           ; preds = %lean_int_emod.exit67, %lean_dec.exit24
  %.1.i65101106 = phi ptr [ %i.do, %lean_dec.exit24 ], [ %i.dn, %lean_int_emod.exit67 ] ; 3 uses
  %i.ds = load i32, ptr %.0.i5897, align 4, !tbaa !10 ; 3 uses
  %i.dt = icmp sgt i32 %i.ds, 1
  br i1 %i.dt, label %bb.at, label %bb.au, !prof !11

bb.at:                                            ; preds = %lean_dec.exit24.thread
  %i.du = add nsw i32 %i.ds, -1
  store i32 %i.du, ptr %.0.i5897, align 4, !tbaa !10
  br label %lean_dec.exit22

bb.au:                                            ; preds = %lean_dec.exit24.thread
  %.not.i38 = icmp eq i32 %i.ds, 0
  br i1 %.not.i38, label %lean_dec.exit22, label %bb.av

bb.av:                                            ; preds = %bb.au
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i5897) #7
  br label %lean_dec.exit22

lean_dec.exit22:                                  ; preds = %bb.al, %bb.an, %bb.ao, %bb.av, %bb.au, %bb.at, %lean_dec.exit24
  %.1.i65101105 = phi ptr [ %.1.i65101106, %bb.av ], [ %.1.i65101106, %bb.au ], [ %.1.i65101106, %bb.at ], [ %i.do, %lean_dec.exit24 ], [ %i.dm, %bb.ao ], [ %i.dl, %bb.an ], [ %.0.i5897, %bb.al ] ; 6 uses
  %i.dv = ptrtoint ptr %.1.i65101105 to i64       ; 2 uses
  %i.dw = and i64 %i.dv, 1
  %.not.i68 = icmp eq i64 %i.dw, 0
  br i1 %.not.i68, label %bb.ba, label %bb.aw, !prof !17

bb.aw:                                            ; preds = %lean_dec.exit22
  %i.dx = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.dy = and i64 %i.dx, 1
  %.not7.i69 = icmp eq i64 %i.dy, 0
  br i1 %.not7.i69, label %lean_int_add.exit72, label %bb.ax, !prof !17

bb.ax:                                            ; preds = %bb.aw
  %i.dz = shl i64 %i.dv, 31
  %i.ea = ashr i64 %i.dz, 32
  %i.eb = shl i64 %i.dx, 31
  %i.ec = ashr i64 %i.eb, 32
  %i.ed = add nsw i64 %i.ea, %i.ec                ; 3 uses
  %i.ee = add nsw i64 %i.ed, 2147483648
  %i.ef = icmp ult i64 %i.ee, 4294967296
  br i1 %i.ef, label %bb.ay, label %bb.az, !prof !11

bb.ay:                                            ; preds = %bb.ax
  %i.eg = shl nsw i64 %i.ed, 1
  %i.eh = and i64 %i.eg, 8589934590
  %i.ei = or disjoint i64 %i.eh, 1
  %i.ej = inttoptr i64 %i.ei to ptr
  br label %lean_dec.exit

bb.az:                                            ; preds = %bb.ax
  %i.ek = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.ed) #7
  br label %lean_dec.exit

lean_int_add.exit72:                              ; preds = %bb.aw
  %i.el = tail call ptr @lean_int_big_add(ptr noundef %.1.i65101105, ptr noundef %0) #7
  br label %lean_dec.exit

bb.ba:                                            ; preds = %lean_dec.exit22
  %i.em = tail call ptr @lean_int_big_add(ptr noundef %.1.i65101105, ptr noundef %0) #7 ; 3 uses
  %i.en = load i32, ptr %.1.i65101105, align 4, !tbaa !10 ; 3 uses
  %i.eo = icmp sgt i32 %i.en, 1
  br i1 %i.eo, label %bb.bb, label %bb.bc, !prof !11

bb.bb:                                            ; preds = %bb.ba
  %i.ep = add nsw i32 %i.en, -1
  store i32 %i.ep, ptr %.1.i65101105, align 4, !tbaa !10
  br label %lean_dec.exit

bb.bc:                                            ; preds = %bb.ba
  %.not.i40 = icmp eq i32 %i.en, 0
  br i1 %.not.i40, label %lean_dec.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i65101105) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.az, %bb.ay, %lean_int_add.exit72, %bb.bd, %bb.bc, %bb.bb
  %.0.i70110 = phi ptr [ %i.el, %lean_int_add.exit72 ], [ %i.em, %bb.bd ], [ %i.em, %bb.bc ], [ %i.em, %bb.bb ], [ %i.ek, %bb.az ], [ %i.ej, %bb.ay ]
  ret ptr %.0.i70110
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_init_l_Std_Time_Internal_Bounded_LE_ofNatWrapping___redArg___closed__0() #0 {
bb.a:
  ret ptr inttoptr (i64 3 to ptr)
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_Time_Internal_Bounded_LE_ofNatWrapping___redArg___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Std_Time_Internal_Bounded_LE_ofNatWrapping___redArg(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %i.b = ptrtoint ptr %2 to i64
  %i.c = and i64 %i.b, 1
  %.not.i9 = icmp eq i64 %i.c, 0
  br i1 %.not.i9, label %bb.b, label %lean_dec.exit10

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %2, align 4, !tbaa !10     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %2, align 4, !tbaa !10
  br label %lean_dec.exit10

bb.d:                                             ; preds = %bb.b
  %.not.i11 = icmp eq i32 %i.d, 0
  br i1 %.not.i11, label %lean_dec.exit10, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #7
  br label %lean_dec.exit10

lean_dec.exit10:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.g = ptrtoint ptr %1 to i64
  %i.h = and i64 %i.g, 1
  %.not.i7 = icmp eq i64 %i.h, 0
  br i1 %.not.i7, label %bb.f, label %lean_dec.exit8

bb.f:                                             ; preds = %lean_dec.exit10
  %i.i = load i32, ptr %1, align 4, !tbaa !10     ; 3 uses
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %bb.g, label %bb.h, !prof !11

bb.g:                                             ; preds = %bb.f
  %i.k = add nsw i32 %i.i, -1
  store i32 %i.k, ptr %1, align 4, !tbaa !10
  br label %lean_dec.exit8

bb.h:                                             ; preds = %bb.f
  %.not.i12 = icmp eq i32 %i.i, 0
  br i1 %.not.i12, label %lean_dec.exit8, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec.exit8

lean_dec.exit8:                                   ; preds = %bb.i, %bb.h, %bb.g, %lean_dec.exit10
  %i.l = ptrtoint ptr %0 to i64
  %i.m = and i64 %i.l, 1
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %bb.j, label %lean_dec.exit

bb.j:                                             ; preds = %lean_dec.exit8
  %i.n = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.o = icmp sgt i32 %i.n, 1
  br i1 %i.o, label %bb.k, label %bb.l, !prof !11

bb.k:                                             ; preds = %bb.j
  %i.p = add nsw i32 %i.n, -1
  store i32 %i.p, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit

bb.l:                                             ; preds = %bb.j
  %.not.i14 = icmp eq i32 %i.n, 0
  br i1 %.not.i14, label %lean_dec.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.m, %bb.l, %bb.k, %lean_dec.exit8
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_Time_Internal_Bounded_LE_ofNatWrapping(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i42 = icmp eq i64 %i.b, 0
  br i1 %.not.i42, label %.critedge.i, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.d = and i64 %i.c, 1
  %.not7.i = icmp eq i64 %i.d, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.c, !prof !17

bb.c:                                             ; preds = %bb.b
  %i.e = shl i64 %i.a, 31
  %i.f = ashr i64 %i.e, 32
  %i.g = shl i64 %i.c, 31
  %i.h = ashr i64 %i.g, 32
  %i.i = sub nsw i64 %i.f, %i.h                   ; 3 uses
  %i.j = add nsw i64 %i.i, 2147483648
  %i.k = icmp ult i64 %i.j, 4294967296
  br i1 %i.k, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.l = shl nsw i64 %i.i, 1
  %i.m = and i64 %i.l, 8589934590
  %i.n = or disjoint i64 %i.m, 1
  %i.o = inttoptr i64 %i.n to ptr
  br label %lean_int_sub.exit

bb.e:                                             ; preds = %bb.c
  %i.p = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.i) #7
  br label %lean_int_sub.exit

.critedge.i:                                      ; preds = %bb.b, %bb.a
  %i.q = tail call ptr @lean_int_big_sub(ptr noundef %1, ptr noundef %0) #7
  br label %lean_int_sub.exit

lean_int_sub.exit:                                ; preds = %bb.d, %bb.e, %.critedge.i
  %.0.i = phi ptr [ %i.q, %.critedge.i ], [ %i.o, %bb.d ], [ %i.p, %bb.e ] ; 6 uses
  %i.r = load atomic i32, ptr @l_Std_Time_Internal_Bounded_LE_ofNatWrapping___redArg___closed__0_once seq_cst, align 4, !tbaa !14
  %i.s = icmp eq i32 %i.r, 1
  br i1 %i.s, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %lean_int_sub.exit
  %i.t = load ptr, ptr @l_Std_Time_Internal_Bounded_LE_ofNatWrapping___redArg___closed__0, align 8, !tbaa !16
  br label %lean_obj_once.exit

bb.g:                                             ; preds = %lean_int_sub.exit
  %i.u = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Internal_Bounded_LE_ofNatWrapping___redArg___closed__0, ptr noundef nonnull @l_Std_Time_Internal_Bounded_LE_ofNatWrapping___redArg___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Internal_Bounded_LE_ofNatWrapping___redArg___closed__0) #7
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.f, %bb.g
  %.0.i43 = phi ptr [ %i.t, %bb.f ], [ %i.u, %bb.g ] ; 3 uses
  %i.v = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.w = and i64 %i.v, 1
  %.not.i44 = icmp eq i64 %i.w, 0
  br i1 %.not.i44, label %bb.l, label %bb.h, !prof !17

bb.h:                                             ; preds = %lean_obj_once.exit
  %i.x = ptrtoint ptr %.0.i43 to i64              ; 2 uses
  %i.y = and i64 %i.x, 1
  %.not7.i45 = icmp eq i64 %i.y, 0
  br i1 %.not7.i45, label %lean_int_add.exit, label %bb.i, !prof !17

bb.i:                                             ; preds = %bb.h
  %i.z = shl i64 %i.v, 31
  %i.aa = ashr i64 %i.z, 32
  %i.ab = shl i64 %i.x, 31
  %i.ac = ashr i64 %i.ab, 32
  %i.ad = add nsw i64 %i.ac, %i.aa                ; 3 uses
  %i.ae = add nsw i64 %i.ad, 2147483648
  %i.af = icmp ult i64 %i.ae, 4294967296
  br i1 %i.af, label %bb.j, label %bb.k, !prof !11

bb.j:                                             ; preds = %bb.i
  %i.ag = shl nsw i64 %i.ad, 1
  %i.ah = and i64 %i.ag, 8589934590
  %i.ai = or disjoint i64 %i.ah, 1
  %i.aj = inttoptr i64 %i.ai to ptr
  br label %lean_dec.exit30

bb.k:                                             ; preds = %bb.i
  %i.ak = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.ad) #7
  br label %lean_dec.exit30

lean_int_add.exit:                                ; preds = %bb.h
  %i.al = tail call ptr @lean_int_big_add(ptr noundef %.0.i, ptr noundef %.0.i43) #7
  br label %lean_dec.exit30

bb.l:                                             ; preds = %lean_obj_once.exit
  %i.am = tail call ptr @lean_int_big_add(ptr noundef %.0.i, ptr noundef %.0.i43) #7 ; 3 uses
  %i.an = load i32, ptr %.0.i, align 4, !tbaa !10 ; 3 uses
  %i.ao = icmp sgt i32 %i.an, 1
  br i1 %i.ao, label %bb.m, label %bb.n, !prof !11

bb.m:                                             ; preds = %bb.l
  %i.ap = add nsw i32 %i.an, -1
  store i32 %i.ap, ptr %.0.i, align 4, !tbaa !10
  br label %lean_dec.exit30

bb.n:                                             ; preds = %bb.l
  %.not.i31 = icmp eq i32 %i.an, 0
  br i1 %.not.i31, label %lean_dec.exit30, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i) #7
  br label %lean_dec.exit30

lean_dec.exit30:                                  ; preds = %bb.k, %bb.j, %lean_int_add.exit, %bb.o, %bb.n, %bb.m
  %.0.i4691 = phi ptr [ %i.al, %lean_int_add.exit ], [ %i.am, %bb.o ], [ %i.am, %bb.n ], [ %i.am, %bb.m ], [ %i.ak, %bb.k ], [ %i.aj, %bb.j ] ; 12 uses
  %i.aq = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.ar = and i64 %i.aq, 1
  %.not.i48 = icmp eq i64 %i.ar, 0
  br i1 %.not.i48, label %.critedge.i51, label %bb.p, !prof !17

bb.p:                                             ; preds = %lean_dec.exit30
  %i.as = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.at = and i64 %i.as, 1
  %.not7.i49 = icmp eq i64 %i.at, 0
  br i1 %.not7.i49, label %.critedge.i51, label %bb.q, !prof !17

bb.q:                                             ; preds = %bb.p
  %i.au = shl i64 %i.aq, 31
  %i.av = ashr i64 %i.au, 32
  %i.aw = shl i64 %i.as, 31
  %i.ax = ashr i64 %i.aw, 32
  %i.ay = sub nsw i64 %i.av, %i.ax                ; 3 uses
  %i.az = add nsw i64 %i.ay, 2147483648
  %i.ba = icmp ult i64 %i.az, 4294967296
  br i1 %i.ba, label %bb.r, label %bb.s, !prof !11

bb.r:                                             ; preds = %bb.q
  %i.bb = shl nsw i64 %i.ay, 1
  %i.bc = and i64 %i.bb, 8589934590
  %i.bd = or disjoint i64 %i.bc, 1
  %i.be = inttoptr i64 %i.bd to ptr
  br label %lean_int_sub.exit52

bb.s:                                             ; preds = %bb.q
  %i.bf = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.ay) #7
  br label %lean_int_sub.exit52

.critedge.i51:                                    ; preds = %bb.p, %lean_dec.exit30
  %i.bg = tail call ptr @lean_int_big_sub(ptr noundef %2, ptr noundef %0) #7
  br label %lean_int_sub.exit52

lean_int_sub.exit52:                              ; preds = %bb.r, %bb.s, %.critedge.i51
  %.0.i50 = phi ptr [ %i.bg, %.critedge.i51 ], [ %i.be, %bb.r ], [ %i.bf, %bb.s ] ; 7 uses
  %i.bh = ptrtoint ptr %.0.i50 to i64             ; 2 uses
  %i.bi = and i64 %i.bh, 1
  %.not.i53 = icmp eq i64 %i.bi, 0
  br i1 %.not.i53, label %bb.y, label %bb.t, !prof !17

bb.t:                                             ; preds = %lean_int_sub.exit52
  %i.bj = ptrtoint ptr %.0.i4691 to i64           ; 2 uses
  %i.bk = and i64 %i.bj, 1
  %.not21.i = icmp eq i64 %i.bk, 0
  br i1 %.not21.i, label %lean_int_emod.exit, label %bb.u, !prof !17

bb.u:                                             ; preds = %bb.t
  %i.bl = shl i64 %i.bj, 31
  %i.bm = ashr i64 %i.bl, 32                      ; 3 uses
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %lean_dec.exit28, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bo = shl i64 %i.bh, 31
  %i.bp = ashr i64 %i.bo, 32
  %i.bq = srem i64 %i.bp, %i.bm                   ; 2 uses
  %i.br = icmp slt i64 %i.bq, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.bm, i1 true)
  %i.bs = select i1 %i.br, i64 %.p.i, i64 0
  %.0.i54 = add nsw i64 %i.bs, %i.bq              ; 3 uses
  %4 = icmp ult i64 %.0.i54, 2147483648
  br i1 %4, label %bb.w, label %bb.x, !prof !11

bb.w:                                             ; preds = %bb.v
  %i.bt = shl nuw nsw i64 %.0.i54, 1
  %i.bu = or disjoint i64 %i.bt, 1
  %i.bv = inttoptr i64 %i.bu to ptr
  br label %lean_dec.exit28

bb.x:                                             ; preds = %bb.v
  %i.bw = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i54) #7
  br label %lean_dec.exit28

lean_int_emod.exit:                               ; preds = %bb.t
  %i.bx = tail call ptr @lean_int_big_emod(ptr noundef %.0.i50, ptr noundef %.0.i4691) #7
  br label %lean_dec.exit28

bb.y:                                             ; preds = %lean_int_sub.exit52
  %i.by = tail call ptr @lean_int_big_emod(ptr noundef %.0.i50, ptr noundef %.0.i4691) #7 ; 3 uses
  %i.bz = load i32, ptr %.0.i50, align 4, !tbaa !10 ; 3 uses
  %i.ca = icmp sgt i32 %i.bz, 1
  br i1 %i.ca, label %bb.z, label %bb.aa, !prof !11

bb.z:                                             ; preds = %bb.y
  %i.cb = add nsw i32 %i.bz, -1
  store i32 %i.cb, ptr %.0.i50, align 4, !tbaa !10
  br label %lean_dec.exit28

bb.aa:                                            ; preds = %bb.y
  %.not.i32 = icmp eq i32 %i.bz, 0
  br i1 %.not.i32, label %lean_dec.exit28, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i50) #7
  br label %lean_dec.exit28

lean_dec.exit28:                                  ; preds = %bb.x, %bb.w, %bb.u, %lean_int_emod.exit, %bb.ab, %bb.aa, %bb.z
  %.1.i94 = phi ptr [ %i.bx, %lean_int_emod.exit ], [ %i.by, %bb.ab ], [ %i.by, %bb.aa ], [ %i.by, %bb.z ], [ %i.bw, %bb.x ], [ %i.bv, %bb.w ], [ %.0.i50, %bb.u ] ; 6 uses
  %i.cc = ptrtoint ptr %.1.i94 to i64             ; 2 uses
  %i.cd = and i64 %i.cc, 1
  %.not.i56 = icmp eq i64 %i.cd, 0
  br i1 %.not.i56, label %bb.ag, label %bb.ac, !prof !17

bb.ac:                                            ; preds = %lean_dec.exit28
  %i.ce = ptrtoint ptr %.0.i4691 to i64           ; 2 uses
  %i.cf = and i64 %i.ce, 1
  %.not7.i57 = icmp eq i64 %i.cf, 0
  br i1 %.not7.i57, label %lean_int_add.exit60, label %bb.ad, !prof !17

bb.ad:                                            ; preds = %bb.ac
  %i.cg = shl i64 %i.cc, 31
  %i.ch = ashr i64 %i.cg, 32
  %i.ci = shl i64 %i.ce, 31
  %i.cj = ashr i64 %i.ci, 32
  %i.ck = add nsw i64 %i.ch, %i.cj                ; 3 uses
  %i.cl = add nsw i64 %i.ck, 2147483648
  %i.cm = icmp ult i64 %i.cl, 4294967296
  br i1 %i.cm, label %bb.ae, label %bb.af, !prof !11

bb.ae:                                            ; preds = %bb.ad
  %i.cn = shl nsw i64 %i.ck, 1
  %i.co = and i64 %i.cn, 8589934590
  %i.cp = or disjoint i64 %i.co, 1
  %i.cq = inttoptr i64 %i.cp to ptr
  br label %lean_dec.exit26

bb.af:                                            ; preds = %bb.ad
  %i.cr = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.ck) #7
  br label %lean_dec.exit26

lean_int_add.exit60:                              ; preds = %bb.ac
  %i.cs = tail call ptr @lean_int_big_add(ptr noundef %.1.i94, ptr noundef %.0.i4691) #7
  br label %lean_dec.exit26

bb.ag:                                            ; preds = %lean_dec.exit28
  %i.ct = tail call ptr @lean_int_big_add(ptr noundef %.1.i94, ptr noundef %.0.i4691) #7 ; 3 uses
  %i.cu = load i32, ptr %.1.i94, align 4, !tbaa !10 ; 3 uses
  %i.cv = icmp sgt i32 %i.cu, 1
  br i1 %i.cv, label %bb.ah, label %bb.ai, !prof !11

bb.ah:                                            ; preds = %bb.ag
  %i.cw = add nsw i32 %i.cu, -1
  store i32 %i.cw, ptr %.1.i94, align 4, !tbaa !10
  br label %lean_dec.exit26

bb.ai:                                            ; preds = %bb.ag
  %.not.i34 = icmp eq i32 %i.cu, 0
  br i1 %.not.i34, label %lean_dec.exit26, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i94) #7
  br label %lean_dec.exit26

lean_dec.exit26:                                  ; preds = %bb.af, %bb.ae, %lean_int_add.exit60, %bb.aj, %bb.ai, %bb.ah
  %.0.i5897 = phi ptr [ %i.cs, %lean_int_add.exit60 ], [ %i.ct, %bb.aj ], [ %i.ct, %bb.ai ], [ %i.ct, %bb.ah ], [ %i.cr, %bb.af ], [ %i.cq, %bb.ae ] ; 7 uses
  %i.cx = ptrtoint ptr %.0.i5897 to i64           ; 2 uses
  %i.cy = and i64 %i.cx, 1
  %.not.i61 = icmp eq i64 %i.cy, 0                ; 2 uses
  %.pre75 = ptrtoint ptr %.0.i4691 to i64         ; 2 uses
  %.pre = and i64 %.pre75, 1
  %i.cz = icmp eq i64 %.pre, 0                    ; 2 uses
  br i1 %.not.i61, label %lean_int_emod.exit67, label %bb.ak, !prof !17

bb.ak:                                            ; preds = %lean_dec.exit26
  br i1 %i.cz, label %lean_int_emod.exit67.thread102, label %bb.al, !prof !17

lean_int_emod.exit67.thread102:                   ; preds = %bb.ak
  %i.da = tail call ptr @lean_int_big_emod(ptr noundef %.0.i5897, ptr noundef %.0.i4691) #7
  br label %bb.ap

bb.al:                                            ; preds = %bb.ak
  %i.db = shl i64 %.pre75, 31
  %i.dc = ashr i64 %i.db, 32                      ; 3 uses
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %lean_dec.exit22, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.de = shl i64 %i.cx, 31
  %i.df = ashr i64 %i.de, 32
  %i.dg = srem i64 %i.df, %i.dc                   ; 2 uses
  %i.dh = icmp slt i64 %i.dg, 0
  %.p.i63 = tail call i64 @llvm.abs.i64(i64 %i.dc, i1 true)
  %i.di = select i1 %i.dh, i64 %.p.i63, i64 0
  %.0.i64 = add nsw i64 %i.di, %i.dg              ; 3 uses
  %5 = icmp ult i64 %.0.i64, 2147483648
  br i1 %5, label %bb.an, label %bb.ao, !prof !11

bb.an:                                            ; preds = %bb.am
  %i.dj = shl nuw nsw i64 %.0.i64, 1
  %i.dk = or disjoint i64 %i.dj, 1
  %i.dl = inttoptr i64 %i.dk to ptr
  br label %lean_dec.exit22

bb.ao:                                            ; preds = %bb.am
  %i.dm = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i64) #7
  br label %lean_dec.exit22

lean_int_emod.exit67:                             ; preds = %lean_dec.exit26
  %i.dn = tail call ptr @lean_int_big_emod(ptr noundef %.0.i5897, ptr noundef %.0.i4691) #7 ; 2 uses
  br i1 %i.cz, label %bb.ap, label %lean_dec.exit24.thread

bb.ap:                                            ; preds = %lean_int_emod.exit67.thread102, %lean_int_emod.exit67
  %i.do = phi ptr [ %i.da, %lean_int_emod.exit67.thread102 ], [ %i.dn, %lean_int_emod.exit67 ] ; 2 uses
  %i.dp = load i32, ptr %.0.i4691, align 4, !tbaa !10 ; 3 uses
  %i.dq = icmp sgt i32 %i.dp, 1
  br i1 %i.dq, label %bb.aq, label %bb.ar, !prof !11

bb.aq:                                            ; preds = %bb.ap
  %i.dr = add nsw i32 %i.dp, -1
  store i32 %i.dr, ptr %.0.i4691, align 4, !tbaa !10
  br label %lean_dec.exit24

bb.ar:                                            ; preds = %bb.ap
  %.not.i36 = icmp eq i32 %i.dp, 0
  br i1 %.not.i36, label %lean_dec.exit24, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i4691) #7
  br label %lean_dec.exit24

lean_dec.exit24:                                  ; preds = %bb.as, %bb.ar, %bb.aq
  br i1 %.not.i61, label %lean_dec.exit24.thread, label %lean_dec.exit22

lean_dec.exit24.thread:                           ; preds = %lean_int_emod.exit67, %lean_dec.exit24
  %.1.i65101106 = phi ptr [ %i.do, %lean_dec.exit24 ], [ %i.dn, %lean_int_emod.exit67 ] ; 3 uses
  %i.ds = load i32, ptr %.0.i5897, align 4, !tbaa !10 ; 3 uses
  %i.dt = icmp sgt i32 %i.ds, 1
  br i1 %i.dt, label %bb.at, label %bb.au, !prof !11

bb.at:                                            ; preds = %lean_dec.exit24.thread
  %i.du = add nsw i32 %i.ds, -1
  store i32 %i.du, ptr %.0.i5897, align 4, !tbaa !10
  br label %lean_dec.exit22

bb.au:                                            ; preds = %lean_dec.exit24.thread
  %.not.i38 = icmp eq i32 %i.ds, 0
  br i1 %.not.i38, label %lean_dec.exit22, label %bb.av

bb.av:                                            ; preds = %bb.au
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i5897) #7
  br label %lean_dec.exit22

lean_dec.exit22:                                  ; preds = %bb.al, %bb.an, %bb.ao, %bb.av, %bb.au, %bb.at, %lean_dec.exit24
  %.1.i65101105 = phi ptr [ %.1.i65101106, %bb.av ], [ %.1.i65101106, %bb.au ], [ %.1.i65101106, %bb.at ], [ %i.do, %lean_dec.exit24 ], [ %i.dm, %bb.ao ], [ %i.dl, %bb.an ], [ %.0.i5897, %bb.al ] ; 6 uses
  %i.dv = ptrtoint ptr %.1.i65101105 to i64       ; 2 uses
  %i.dw = and i64 %i.dv, 1
  %.not.i68 = icmp eq i64 %i.dw, 0
  br i1 %.not.i68, label %bb.ba, label %bb.aw, !prof !17

bb.aw:                                            ; preds = %lean_dec.exit22
  %i.dx = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.dy = and i64 %i.dx, 1
  %.not7.i69 = icmp eq i64 %i.dy, 0
  br i1 %.not7.i69, label %lean_int_add.exit72, label %bb.ax, !prof !17

bb.ax:                                            ; preds = %bb.aw
  %i.dz = shl i64 %i.dv, 31
  %i.ea = ashr i64 %i.dz, 32
  %i.eb = shl i64 %i.dx, 31
  %i.ec = ashr i64 %i.eb, 32
  %i.ed = add nsw i64 %i.ea, %i.ec                ; 3 uses
  %i.ee = add nsw i64 %i.ed, 2147483648
  %i.ef = icmp ult i64 %i.ee, 4294967296
  br i1 %i.ef, label %bb.ay, label %bb.az, !prof !11

bb.ay:                                            ; preds = %bb.ax
  %i.eg = shl nsw i64 %i.ed, 1
  %i.eh = and i64 %i.eg, 8589934590
  %i.ei = or disjoint i64 %i.eh, 1
  %i.ej = inttoptr i64 %i.ei to ptr
  br label %lean_dec.exit

bb.az:                                            ; preds = %bb.ax
  %i.ek = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.ed) #7
  br label %lean_dec.exit

lean_int_add.exit72:                              ; preds = %bb.aw
  %i.el = tail call ptr @lean_int_big_add(ptr noundef %.1.i65101105, ptr noundef %0) #7
  br label %lean_dec.exit

bb.ba:                                            ; preds = %lean_dec.exit22
  %i.em = tail call ptr @lean_int_big_add(ptr noundef %.1.i65101105, ptr noundef %0) #7 ; 3 uses
  %i.en = load i32, ptr %.1.i65101105, align 4, !tbaa !10 ; 3 uses
  %i.eo = icmp sgt i32 %i.en, 1
  br i1 %i.eo, label %bb.bb, label %bb.bc, !prof !11

bb.bb:                                            ; preds = %bb.ba
  %i.ep = add nsw i32 %i.en, -1
  store i32 %i.ep, ptr %.1.i65101105, align 4, !tbaa !10
  br label %lean_dec.exit

bb.bc:                                            ; preds = %bb.ba
  %.not.i40 = icmp eq i32 %i.en, 0
  br i1 %.not.i40, label %lean_dec.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i65101105) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.az, %bb.ay, %lean_int_add.exit72, %bb.bd, %bb.bc, %bb.bb
  %.0.i70110 = phi ptr [ %i.el, %lean_int_add.exit72 ], [ %i.em, %bb.bd ], [ %i.em, %bb.bc ], [ %i.em, %bb.bb ], [ %i.ek, %bb.az ], [ %i.ej, %bb.ay ]
  ret ptr %.0.i70110
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_Time_Internal_Bounded_LE_ofNatWrapping___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Std_Time_Internal_Bounded_LE_ofNatWrapping(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr poison)
  %i.b = ptrtoint ptr %2 to i64
  %i.c = and i64 %i.b, 1
  %.not.i10 = icmp eq i64 %i.c, 0
  br i1 %.not.i10, label %bb.b, label %lean_dec.exit11

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %2, align 4, !tbaa !10     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %2, align 4, !tbaa !10
  br label %lean_dec.exit11

bb.d:                                             ; preds = %bb.b
  %.not.i12 = icmp eq i32 %i.d, 0
  br i1 %.not.i12, label %lean_dec.exit11, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #7
  br label %lean_dec.exit11

lean_dec.exit11:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.g = ptrtoint ptr %1 to i64
  %i.h = and i64 %i.g, 1
  %.not.i8 = icmp eq i64 %i.h, 0
  br i1 %.not.i8, label %bb.f, label %lean_dec.exit9

bb.f:                                             ; preds = %lean_dec.exit11
  %i.i = load i32, ptr %1, align 4, !tbaa !10     ; 3 uses
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %bb.g, label %bb.h, !prof !11

bb.g:                                             ; preds = %bb.f
  %i.k = add nsw i32 %i.i, -1
  store i32 %i.k, ptr %1, align 4, !tbaa !10
  br label %lean_dec.exit9

bb.h:                                             ; preds = %bb.f
  %.not.i13 = icmp eq i32 %i.i, 0
  br i1 %.not.i13, label %lean_dec.exit9, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec.exit9

lean_dec.exit9:                                   ; preds = %bb.i, %bb.h, %bb.g, %lean_dec.exit11
  %i.l = ptrtoint ptr %0 to i64
  %i.m = and i64 %i.l, 1
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %bb.j, label %lean_dec.exit

bb.j:                                             ; preds = %lean_dec.exit9
  %i.n = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.o = icmp sgt i32 %i.n, 1
  br i1 %i.o, label %bb.k, label %bb.l, !prof !11

bb.k:                                             ; preds = %bb.j
  %i.p = add nsw i32 %i.n, -1
  store i32 %i.p, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit

bb.l:                                             ; preds = %bb.j
  %.not.i15 = icmp eq i32 %i.n, 0
  br i1 %.not.i15, label %lean_dec.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.m, %bb.l, %bb.k, %lean_dec.exit9
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_Time_Internal_Bounded_LE_instOfNatHAddIntCast(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i61 = icmp eq i64 %i.b, 0
  %i.c = icmp ult ptr %2, inttoptr (i64 4294967296 to ptr)
end_hunk_0
begin_hunk_1_@l_Std_Time_Internal_Bounded_LE_instOfNatHAddIntCast:bb.a
  %i.ah = shl i64 %i.af, 31
  %i.ai = ashr i64 %i.ah, 32
  %i.aj = shl i64 %i.f, 31
  %i.ak = ashr i64 %i.aj, 32
  %i.al = sub nsw i64 %i.ai, %i.ak                ; 3 uses
  %i.am = add nsw i64 %i.al, 2147483648
  %i.an = icmp ult i64 %i.am, 4294967296
  br i1 %i.an, label %bb.m, label %bb.n, !prof !11

bb.m:                                             ; preds = %bb.l
  %i.ao = shl nsw i64 %i.al, 1
  %i.ap = and i64 %i.ao, 8589934590
  %i.aq = or disjoint i64 %i.ap, 1
  %i.ar = inttoptr i64 %i.aq to ptr
  br label %lean_int_sub.exit

bb.n:                                             ; preds = %bb.l
  %i.as = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.al) #7
  br label %lean_int_sub.exit

.critedge.i70:                                    ; preds = %lean_nat_to_int.exit66
  %i.at = tail call ptr @lean_int_big_sub(ptr noundef %.0.i138, ptr noundef %0) #7
  br label %lean_int_sub.exit

lean_int_sub.exit:                                ; preds = %bb.m, %bb.n, %.critedge.i70
  %.0.i69 = phi ptr [ %i.at, %.critedge.i70 ], [ %i.ar, %bb.m ], [ %i.as, %bb.n ] ; 6 uses
  %i.au = and i64 %i.af, 1
  %.not.i40 = icmp eq i64 %i.au, 0
  br i1 %.not.i40, label %bb.o, label %lean_dec.exit41

bb.o:                                             ; preds = %lean_int_sub.exit
  %i.av = load i32, ptr %.0.i138, align 4, !tbaa !10 ; 3 uses
  %i.aw = icmp sgt i32 %i.av, 1
  br i1 %i.aw, label %bb.p, label %bb.q, !prof !11

bb.p:                                             ; preds = %bb.o
  %i.ax = add nsw i32 %i.av, -1
  store i32 %i.ax, ptr %.0.i138, align 4, !tbaa !10
  br label %lean_dec.exit41

bb.q:                                             ; preds = %bb.o
  %.not.i45 = icmp eq i32 %i.av, 0
  br i1 %.not.i45, label %lean_dec.exit41, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i138) #7
  br label %lean_dec.exit41

lean_dec.exit41:                                  ; preds = %bb.r, %bb.q, %bb.p, %lean_int_sub.exit
  %i.ay = load atomic i32, ptr @l_Std_Time_Internal_Bounded_LE_ofNatWrapping___redArg___closed__0_once seq_cst, align 4, !tbaa !14
  %i.az = icmp eq i32 %i.ay, 1
  br i1 %i.az, label %bb.s, label %bb.t, !prof !11

bb.s:                                             ; preds = %lean_dec.exit41
  %i.ba = load ptr, ptr @l_Std_Time_Internal_Bounded_LE_ofNatWrapping___redArg___closed__0, align 8, !tbaa !16
  br label %lean_obj_once.exit

bb.t:                                             ; preds = %lean_dec.exit41
  %i.bb = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Internal_Bounded_LE_ofNatWrapping___redArg___closed__0, ptr noundef nonnull @l_Std_Time_Internal_Bounded_LE_ofNatWrapping___redArg___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Internal_Bounded_LE_ofNatWrapping___redArg___closed__0) #7
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.s, %bb.t
  %.0.i71 = phi ptr [ %i.ba, %bb.s ], [ %i.bb, %bb.t ] ; 3 uses
  %i.bc = ptrtoint ptr %.0.i69 to i64             ; 2 uses
  %i.bd = and i64 %i.bc, 1
  %.not.i72 = icmp eq i64 %i.bd, 0
  br i1 %.not.i72, label %bb.y, label %bb.u, !prof !17

bb.u:                                             ; preds = %lean_obj_once.exit
  %i.be = ptrtoint ptr %.0.i71 to i64             ; 2 uses
  %i.bf = and i64 %i.be, 1
  %.not7.i73 = icmp eq i64 %i.bf, 0
  br i1 %.not7.i73, label %lean_int_add.exit76, label %bb.v, !prof !17

bb.v:                                             ; preds = %bb.u
  %i.bg = shl i64 %i.bc, 31
  %i.bh = ashr i64 %i.bg, 32
  %i.bi = shl i64 %i.be, 31
  %i.bj = ashr i64 %i.bi, 32
  %i.bk = add nsw i64 %i.bj, %i.bh                ; 3 uses
  %i.bl = add nsw i64 %i.bk, 2147483648
  %i.bm = icmp ult i64 %i.bl, 4294967296
  br i1 %i.bm, label %bb.w, label %bb.x, !prof !11

bb.w:                                             ; preds = %bb.v
  %i.bn = shl nsw i64 %i.bk, 1
  %i.bo = and i64 %i.bn, 8589934590
  %i.bp = or disjoint i64 %i.bo, 1
  %i.bq = inttoptr i64 %i.bp to ptr
  br label %lean_dec.exit39

bb.x:                                             ; preds = %bb.v
  %i.br = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.bk) #7
  br label %lean_dec.exit39

lean_int_add.exit76:                              ; preds = %bb.u
  %i.bs = tail call ptr @lean_int_big_add(ptr noundef %.0.i69, ptr noundef %.0.i71) #7
  br label %lean_dec.exit39

bb.y:                                             ; preds = %lean_obj_once.exit
  %i.bt = tail call ptr @lean_int_big_add(ptr noundef %.0.i69, ptr noundef %.0.i71) #7 ; 3 uses
  %i.bu = load i32, ptr %.0.i69, align 4, !tbaa !10 ; 3 uses
  %i.bv = icmp sgt i32 %i.bu, 1
  br i1 %i.bv, label %bb.z, label %bb.aa, !prof !11

bb.z:                                             ; preds = %bb.y
  %i.bw = add nsw i32 %i.bu, -1
  store i32 %i.bw, ptr %.0.i69, align 4, !tbaa !10
  br label %lean_dec.exit39

bb.aa:                                            ; preds = %bb.y
  %.not.i47 = icmp eq i32 %i.bu, 0
  br i1 %.not.i47, label %lean_dec.exit39, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i69) #7
  br label %lean_dec.exit39

lean_dec.exit39:                                  ; preds = %bb.x, %bb.w, %lean_int_add.exit76, %bb.ab, %bb.aa, %bb.z
  %.0.i74142 = phi ptr [ %i.bs, %lean_int_add.exit76 ], [ %i.bt, %bb.ab ], [ %i.bt, %bb.aa ], [ %i.bt, %bb.z ], [ %i.br, %bb.x ], [ %i.bq, %bb.w ] ; 12 uses
  %i.bx = ptrtoint ptr %.1.i65 to i64             ; 3 uses
  %i.by = and i64 %i.g, %i.bx
  %brmerge103.not.not = icmp eq i64 %i.by, 0
  br i1 %brmerge103.not.not, label %.critedge.i80, label %bb.ac, !prof !18

bb.ac:                                            ; preds = %lean_dec.exit39
  %i.bz = shl i64 %i.bx, 31
  %i.ca = ashr i64 %i.bz, 32
  %i.cb = shl i64 %i.f, 31
  %i.cc = ashr i64 %i.cb, 32
  %i.cd = sub nsw i64 %i.ca, %i.cc                ; 3 uses
  %i.ce = add nsw i64 %i.cd, 2147483648
  %i.cf = icmp ult i64 %i.ce, 4294967296
  br i1 %i.cf, label %bb.ad, label %bb.ae, !prof !11

bb.ad:                                            ; preds = %bb.ac
  %i.cg = shl nsw i64 %i.cd, 1
  %i.ch = and i64 %i.cg, 8589934590
  %i.ci = or disjoint i64 %i.ch, 1
  %i.cj = inttoptr i64 %i.ci to ptr
  br label %lean_int_sub.exit81

bb.ae:                                            ; preds = %bb.ac
  %i.ck = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.cd) #7
  br label %lean_int_sub.exit81

.critedge.i80:                                    ; preds = %lean_dec.exit39
  %i.cl = tail call ptr @lean_int_big_sub(ptr noundef %.1.i65, ptr noundef %0) #7
  br label %lean_int_sub.exit81

lean_int_sub.exit81:                              ; preds = %bb.ad, %bb.ae, %.critedge.i80
  %.0.i79 = phi ptr [ %i.cl, %.critedge.i80 ], [ %i.cj, %bb.ad ], [ %i.ck, %bb.ae ] ; 7 uses
  %i.cm = and i64 %i.bx, 1
  %.not.i36 = icmp eq i64 %i.cm, 0
  br i1 %.not.i36, label %bb.af, label %lean_dec.exit37

bb.af:                                            ; preds = %lean_int_sub.exit81
  %i.cn = load i32, ptr %.1.i65, align 4, !tbaa !10 ; 3 uses
  %i.co = icmp sgt i32 %i.cn, 1
  br i1 %i.co, label %bb.ag, label %bb.ah, !prof !11

bb.ag:                                            ; preds = %bb.af
  %i.cp = add nsw i32 %i.cn, -1
  store i32 %i.cp, ptr %.1.i65, align 4, !tbaa !10
  br label %lean_dec.exit37

bb.ah:                                            ; preds = %bb.af
  %.not.i49 = icmp eq i32 %i.cn, 0
  br i1 %.not.i49, label %lean_dec.exit37, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i65) #7
  br label %lean_dec.exit37

lean_dec.exit37:                                  ; preds = %bb.ai, %bb.ah, %bb.ag, %lean_int_sub.exit81
  %i.cq = ptrtoint ptr %.0.i79 to i64             ; 2 uses
  %i.cr = and i64 %i.cq, 1
  %.not.i82 = icmp eq i64 %i.cr, 0
  br i1 %.not.i82, label %bb.ao, label %bb.aj, !prof !17

bb.aj:                                            ; preds = %lean_dec.exit37
  %i.cs = ptrtoint ptr %.0.i74142 to i64          ; 2 uses
  %i.ct = and i64 %i.cs, 1
  %.not21.i = icmp eq i64 %i.ct, 0
  br i1 %.not21.i, label %lean_int_emod.exit, label %bb.ak, !prof !17

bb.ak:                                            ; preds = %bb.aj
  %i.cu = shl i64 %i.cs, 31
  %i.cv = ashr i64 %i.cu, 32                      ; 3 uses
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %lean_dec.exit35, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cx = shl i64 %i.cq, 31
  %i.cy = ashr i64 %i.cx, 32
  %i.cz = srem i64 %i.cy, %i.cv                   ; 2 uses
  %i.da = icmp slt i64 %i.cz, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.cv, i1 true)
  %i.db = select i1 %i.da, i64 %.p.i, i64 0
  %.0.i83 = add nsw i64 %i.db, %i.cz              ; 3 uses
  %3 = icmp ult i64 %.0.i83, 2147483648
  br i1 %3, label %bb.am, label %bb.an, !prof !11

bb.am:                                            ; preds = %bb.al
  %i.dc = shl nuw nsw i64 %.0.i83, 1
  %i.dd = or disjoint i64 %i.dc, 1
  %i.de = inttoptr i64 %i.dd to ptr
  br label %lean_dec.exit35

bb.an:                                            ; preds = %bb.al
  %i.df = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i83) #7
  br label %lean_dec.exit35

lean_int_emod.exit:                               ; preds = %bb.aj
  %i.dg = tail call ptr @lean_int_big_emod(ptr noundef %.0.i79, ptr noundef %.0.i74142) #7
  br label %lean_dec.exit35

bb.ao:                                            ; preds = %lean_dec.exit37
  %i.dh = tail call ptr @lean_int_big_emod(ptr noundef %.0.i79, ptr noundef %.0.i74142) #7 ; 3 uses
  %i.di = load i32, ptr %.0.i79, align 4, !tbaa !10 ; 3 uses
  %i.dj = icmp sgt i32 %i.di, 1
  br i1 %i.dj, label %bb.ap, label %bb.aq, !prof !11

bb.ap:                                            ; preds = %bb.ao
  %i.dk = add nsw i32 %i.di, -1
  store i32 %i.dk, ptr %.0.i79, align 4, !tbaa !10
  br label %lean_dec.exit35

bb.aq:                                            ; preds = %bb.ao
  %.not.i51 = icmp eq i32 %i.di, 0
  br i1 %.not.i51, label %lean_dec.exit35, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i79) #7
  br label %lean_dec.exit35

lean_dec.exit35:                                  ; preds = %bb.an, %bb.am, %bb.ak, %lean_int_emod.exit, %bb.ar, %bb.aq, %bb.ap
  %.1.i84145 = phi ptr [ %i.dg, %lean_int_emod.exit ], [ %i.dh, %bb.ar ], [ %i.dh, %bb.aq ], [ %i.dh, %bb.ap ], [ %i.df, %bb.an ], [ %i.de, %bb.am ], [ %.0.i79, %bb.ak ] ; 6 uses
  %i.dl = ptrtoint ptr %.1.i84145 to i64          ; 2 uses
  %i.dm = and i64 %i.dl, 1
  %.not.i86 = icmp eq i64 %i.dm, 0
  br i1 %.not.i86, label %bb.aw, label %bb.as, !prof !17

bb.as:                                            ; preds = %lean_dec.exit35
  %i.dn = ptrtoint ptr %.0.i74142 to i64          ; 2 uses
  %i.do = and i64 %i.dn, 1
  %.not7.i87 = icmp eq i64 %i.do, 0
  br i1 %.not7.i87, label %lean_int_add.exit90, label %bb.at, !prof !17

bb.at:                                            ; preds = %bb.as
  %i.dp = shl i64 %i.dl, 31
  %i.dq = ashr i64 %i.dp, 32
  %i.dr = shl i64 %i.dn, 31
  %i.ds = ashr i64 %i.dr, 32
  %i.dt = add nsw i64 %i.dq, %i.ds                ; 3 uses
  %i.du = add nsw i64 %i.dt, 2147483648
  %i.dv = icmp ult i64 %i.du, 4294967296
  br i1 %i.dv, label %bb.au, label %bb.av, !prof !11

bb.au:                                            ; preds = %bb.at
  %i.dw = shl nsw i64 %i.dt, 1
  %i.dx = and i64 %i.dw, 8589934590
  %i.dy = or disjoint i64 %i.dx, 1
  %i.dz = inttoptr i64 %i.dy to ptr
  br label %lean_dec.exit33

bb.av:                                            ; preds = %bb.at
  %i.ea = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.dt) #7
  br label %lean_dec.exit33

lean_int_add.exit90:                              ; preds = %bb.as
  %i.eb = tail call ptr @lean_int_big_add(ptr noundef %.1.i84145, ptr noundef %.0.i74142) #7
  br label %lean_dec.exit33

bb.aw:                                            ; preds = %lean_dec.exit35
  %i.ec = tail call ptr @lean_int_big_add(ptr noundef %.1.i84145, ptr noundef %.0.i74142) #7 ; 3 uses
  %i.ed = load i32, ptr %.1.i84145, align 4, !tbaa !10 ; 3 uses
  %i.ee = icmp sgt i32 %i.ed, 1
  br i1 %i.ee, label %bb.ax, label %bb.ay, !prof !11

bb.ax:                                            ; preds = %bb.aw
  %i.ef = add nsw i32 %i.ed, -1
  store i32 %i.ef, ptr %.1.i84145, align 4, !tbaa !10
  br label %lean_dec.exit33

bb.ay:                                            ; preds = %bb.aw
  %.not.i53 = icmp eq i32 %i.ed, 0
  br i1 %.not.i53, label %lean_dec.exit33, label %bb.az

bb.az:                                            ; preds = %bb.ay
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i84145) #7
  br label %lean_dec.exit33

lean_dec.exit33:                                  ; preds = %bb.av, %bb.au, %lean_int_add.exit90, %bb.az, %bb.ay, %bb.ax
  %.0.i88148 = phi ptr [ %i.eb, %lean_int_add.exit90 ], [ %i.ec, %bb.az ], [ %i.ec, %bb.ay ], [ %i.ec, %bb.ax ], [ %i.ea, %bb.av ], [ %i.dz, %bb.au ] ; 7 uses
  %i.eg = ptrtoint ptr %.0.i88148 to i64          ; 2 uses
  %i.eh = and i64 %i.eg, 1
  %.not.i91 = icmp eq i64 %i.eh, 0                ; 2 uses
  %.pre112 = ptrtoint ptr %.0.i74142 to i64       ; 2 uses
  %.pre113 = and i64 %.pre112, 1
  %i.ei = icmp eq i64 %.pre113, 0                 ; 2 uses
  br i1 %.not.i91, label %lean_int_emod.exit97, label %bb.ba, !prof !17

bb.ba:                                            ; preds = %lean_dec.exit33
  br i1 %i.ei, label %lean_int_emod.exit97.thread153, label %bb.bb, !prof !17

lean_int_emod.exit97.thread153:                   ; preds = %bb.ba
  %i.ej = tail call ptr @lean_int_big_emod(ptr noundef %.0.i88148, ptr noundef %.0.i74142) #7
  br label %bb.bf

bb.bb:                                            ; preds = %bb.ba
  %i.ek = shl i64 %.pre112, 31
  %i.el = ashr i64 %i.ek, 32                      ; 3 uses
  %i.em = icmp eq i64 %i.el, 0
  br i1 %i.em, label %lean_dec.exit29, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.en = shl i64 %i.eg, 31
  %i.eo = ashr i64 %i.en, 32
  %i.ep = srem i64 %i.eo, %i.el                   ; 2 uses
  %i.eq = icmp slt i64 %i.ep, 0
  %.p.i93 = tail call i64 @llvm.abs.i64(i64 %i.el, i1 true)
  %i.er = select i1 %i.eq, i64 %.p.i93, i64 0
  %.0.i94 = add nsw i64 %i.er, %i.ep              ; 3 uses
  %4 = icmp ult i64 %.0.i94, 2147483648
  br i1 %4, label %bb.bd, label %bb.be, !prof !11

bb.bd:                                            ; preds = %bb.bc
  %i.es = shl nuw nsw i64 %.0.i94, 1
  %i.et = or disjoint i64 %i.es, 1
  %i.eu = inttoptr i64 %i.et to ptr
  br label %lean_dec.exit29

bb.be:                                            ; preds = %bb.bc
  %i.ev = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i94) #7
  br label %lean_dec.exit29

lean_int_emod.exit97:                             ; preds = %lean_dec.exit33
  %i.ew = tail call ptr @lean_int_big_emod(ptr noundef %.0.i88148, ptr noundef %.0.i74142) #7 ; 2 uses
  br i1 %i.ei, label %bb.bf, label %lean_dec.exit31.thread

bb.bf:                                            ; preds = %lean_int_emod.exit97.thread153, %lean_int_emod.exit97
  %i.ex = phi ptr [ %i.ej, %lean_int_emod.exit97.thread153 ], [ %i.ew, %lean_int_emod.exit97 ] ; 2 uses
  %i.ey = load i32, ptr %.0.i74142, align 4, !tbaa !10 ; 3 uses
  %i.ez = icmp sgt i32 %i.ey, 1
  br i1 %i.ez, label %bb.bg, label %bb.bh, !prof !11

bb.bg:                                            ; preds = %bb.bf
  %i.fa = add nsw i32 %i.ey, -1
  store i32 %i.fa, ptr %.0.i74142, align 4, !tbaa !10
  br label %lean_dec.exit31

bb.bh:                                            ; preds = %bb.bf
  %.not.i55 = icmp eq i32 %i.ey, 0
  br i1 %.not.i55, label %lean_dec.exit31, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i74142) #7
  br label %lean_dec.exit31

lean_dec.exit31:                                  ; preds = %bb.bi, %bb.bh, %bb.bg
  br i1 %.not.i91, label %lean_dec.exit31.thread, label %lean_dec.exit29

lean_dec.exit31.thread:                           ; preds = %lean_int_emod.exit97, %lean_dec.exit31
  %.1.i95152157 = phi ptr [ %i.ex, %lean_dec.exit31 ], [ %i.ew, %lean_int_emod.exit97 ] ; 3 uses
  %i.fb = load i32, ptr %.0.i88148, align 4, !tbaa !10 ; 3 uses
  %i.fc = icmp sgt i32 %i.fb, 1
  br i1 %i.fc, label %bb.bj, label %bb.bk, !prof !11

bb.bj:                                            ; preds = %lean_dec.exit31.thread
  %i.fd = add nsw i32 %i.fb, -1
  store i32 %i.fd, ptr %.0.i88148, align 4, !tbaa !10
  br label %lean_dec.exit29

bb.bk:                                            ; preds = %lean_dec.exit31.thread
  %.not.i57 = icmp eq i32 %i.fb, 0
  br i1 %.not.i57, label %lean_dec.exit29, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i88148) #7
  br label %lean_dec.exit29

lean_dec.exit29:                                  ; preds = %bb.bb, %bb.bd, %bb.be, %bb.bl, %bb.bk, %bb.bj, %lean_dec.exit31
  %.1.i95152156 = phi ptr [ %.1.i95152157, %bb.bl ], [ %.1.i95152157, %bb.bk ], [ %.1.i95152157, %bb.bj ], [ %i.ex, %lean_dec.exit31 ], [ %i.ev, %bb.be ], [ %i.eu, %bb.bd ], [ %.0.i88148, %bb.bb ] ; 5 uses
  %i.fe = ptrtoint ptr %.1.i95152156 to i64       ; 3 uses
  %i.ff = and i64 %i.g, %i.fe
  %brmerge104.not.not = icmp eq i64 %i.ff, 0
  br i1 %brmerge104.not.not, label %.critedge.i101, label %bb.bm, !prof !18

bb.bm:                                            ; preds = %lean_dec.exit29
  %i.fg = shl i64 %i.fe, 31
  %i.fh = ashr i64 %i.fg, 32
  %i.fi = shl i64 %i.f, 31
  %i.fj = ashr i64 %i.fi, 32
  %i.fk = add nsw i64 %i.fh, %i.fj                ; 3 uses
  %i.fl = add nsw i64 %i.fk, 2147483648
  %i.fm = icmp ult i64 %i.fl, 4294967296
  br i1 %i.fm, label %bb.bn, label %bb.bo, !prof !11

bb.bn:                                            ; preds = %bb.bm
  %i.fn = shl nsw i64 %i.fk, 1
  %i.fo = and i64 %i.fn, 8589934590
  %i.fp = or disjoint i64 %i.fo, 1
  %i.fq = inttoptr i64 %i.fp to ptr
  br label %lean_int_add.exit102

bb.bo:                                            ; preds = %bb.bm
  %i.fr = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.fk) #7
  br label %lean_int_add.exit102

.critedge.i101:                                   ; preds = %lean_dec.exit29
  %i.fs = tail call ptr @lean_int_big_add(ptr noundef %.1.i95152156, ptr noundef %0) #7
  br label %lean_int_add.exit102

lean_int_add.exit102:                             ; preds = %bb.bn, %bb.bo, %.critedge.i101
  %.0.i100 = phi ptr [ %i.fs, %.critedge.i101 ], [ %i.fq, %bb.bn ], [ %i.fr, %bb.bo ]
  %i.ft = and i64 %i.fe, 1
  %.not.i = icmp eq i64 %i.ft, 0
  br i1 %.not.i, label %bb.bp, label %lean_dec.exit

bb.bp:                                            ; preds = %lean_int_add.exit102
  %i.fu = load i32, ptr %.1.i95152156, align 4, !tbaa !10 ; 3 uses
  %i.fv = icmp sgt i32 %i.fu, 1
  br i1 %i.fv, label %bb.bq, label %bb.br, !prof !11

bb.bq:                                            ; preds = %bb.bp
  %i.fw = add nsw i32 %i.fu, -1
  store i32 %i.fw, ptr %.1.i95152156, align 4, !tbaa !10
  br label %lean_dec.exit

bb.br:                                            ; preds = %bb.bp
  %.not.i59 = icmp eq i32 %i.fu, 0
  br i1 %.not.i59, label %lean_dec.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i95152156) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.bs, %bb.br, %bb.bq, %lean_int_add.exit102
  ret ptr %.0.i100
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_Time_Internal_Bounded_LE_instOfNatHAddIntCast___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Std_Time_Internal_Bounded_LE_instOfNatHAddIntCast(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %i.b = ptrtoint ptr %0 to i64
  %i.c = and i64 %i.b, 1
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit

bb.d:                                             ; preds = %bb.b
  %.not.i5 = icmp eq i32 %i.d, 0
  br i1 %.not.i5, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_Time_Internal_Bounded_LE_instInhabitedHAddIntCast(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i55 = icmp eq i64 %i.b, 0
  %i.c = icmp ult ptr %1, inttoptr (i64 4294967296 to ptr)
  %or.cond.i = or i1 %i.c, %.not.i55
  br i1 %or.cond.i, label %lean_nat_to_int.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.a, 1
  %i.e = tail call ptr @lean_big_size_t_to_int(i64 noundef %i.d) #7
  br label %lean_nat_to_int.exit

lean_nat_to_int.exit:                             ; preds = %bb.a, %bb.b
  %.1.i = phi ptr [ %1, %bb.a ], [ %i.e, %bb.b ]  ; 6 uses
  %i.f = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.g = and i64 %i.f, 1                          ; 3 uses
  %.not.i56 = icmp eq i64 %i.g, 0                 ; 2 uses
  %.pre100 = ptrtoint ptr %.1.i to i64            ; 2 uses
  %.pre = and i64 %.pre100, 1
  %i.h = icmp eq i64 %.pre, 0                     ; 2 uses
  br i1 %.not.i56, label %lean_int_add.exit, label %bb.c, !prof !17

bb.c:                                             ; preds = %lean_nat_to_int.exit
  br i1 %i.h, label %lean_int_add.exit.thread126, label %bb.d, !prof !17

lean_int_add.exit.thread126:                      ; preds = %bb.c
  %i.i = tail call ptr @lean_int_big_add(ptr noundef %0, ptr noundef %.1.i) #7
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.j = shl i64 %i.f, 31
  %i.k = ashr i64 %i.j, 32
  %i.l = shl i64 %.pre100, 31
  %i.m = ashr i64 %i.l, 32
  %i.n = add nsw i64 %i.m, %i.k                   ; 3 uses
  %i.o = add nsw i64 %i.n, 2147483648
  %i.p = icmp ult i64 %i.o, 4294967296
  br i1 %i.p, label %bb.e, label %bb.f, !prof !11

bb.e:                                             ; preds = %bb.d
  %i.q = shl nsw i64 %i.n, 1
  %i.r = and i64 %i.q, 8589934590
  %i.s = or disjoint i64 %i.r, 1
  %i.t = inttoptr i64 %i.s to ptr
  br label %lean_dec.exit39

bb.f:                                             ; preds = %bb.d
  %i.u = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.n) #7
  br label %lean_dec.exit39

lean_int_add.exit:                                ; preds = %lean_nat_to_int.exit
  %i.v = tail call ptr @lean_int_big_add(ptr noundef %0, ptr noundef %.1.i) #7 ; 2 uses
  br i1 %i.h, label %bb.g, label %lean_dec.exit39

bb.g:                                             ; preds = %lean_int_add.exit.thread126, %lean_int_add.exit
  %i.w = phi ptr [ %i.i, %lean_int_add.exit.thread126 ], [ %i.v, %lean_int_add.exit ] ; 3 uses
  %i.x = load i32, ptr %.1.i, align 4, !tbaa !10  ; 3 uses
  %i.y = icmp sgt i32 %i.x, 1
  br i1 %i.y, label %bb.h, label %bb.i, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.z = add nsw i32 %i.x, -1
  store i32 %i.z, ptr %.1.i, align 4, !tbaa !10
  br label %lean_dec.exit39

bb.i:                                             ; preds = %bb.g
  %.not.i40 = icmp eq i32 %i.x, 0
  br i1 %.not.i40, label %lean_dec.exit39, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i) #7
  br label %lean_dec.exit39

lean_dec.exit39:                                  ; preds = %bb.f, %bb.e, %bb.j, %bb.i, %bb.h, %lean_int_add.exit
  %.0.i125 = phi ptr [ %i.v, %lean_int_add.exit ], [ %i.w, %bb.j ], [ %i.w, %bb.i ], [ %i.w, %bb.h ], [ %i.u, %bb.f ], [ %i.t, %bb.e ] ; 5 uses
  %i.aa = ptrtoint ptr %.0.i125 to i64            ; 3 uses
  %i.ab = and i64 %i.g, %i.aa
  %brmerge.not.not = icmp eq i64 %i.ab, 0
  br i1 %brmerge.not.not, label %.critedge.i60, label %bb.k, !prof !18

bb.k:                                             ; preds = %lean_dec.exit39
  %i.ac = shl i64 %i.aa, 31
  %i.ad = ashr i64 %i.ac, 32
  %i.ae = shl i64 %i.f, 31
  %i.af = ashr i64 %i.ae, 32
  %i.ag = sub nsw i64 %i.ad, %i.af                ; 3 uses
  %i.ah = add nsw i64 %i.ag, 2147483648
  %i.ai = icmp ult i64 %i.ah, 4294967296
  br i1 %i.ai, label %bb.l, label %bb.m, !prof !11

bb.l:                                             ; preds = %bb.k
  %i.aj = shl nsw i64 %i.ag, 1
  %i.ak = and i64 %i.aj, 8589934590
  %i.al = or disjoint i64 %i.ak, 1
  %i.am = inttoptr i64 %i.al to ptr
  br label %lean_int_sub.exit

bb.m:                                             ; preds = %bb.k
  %i.an = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.ag) #7
  br label %lean_int_sub.exit

.critedge.i60:                                    ; preds = %lean_dec.exit39
  %i.ao = tail call ptr @lean_int_big_sub(ptr noundef %.0.i125, ptr noundef %0) #7
  br label %lean_int_sub.exit

lean_int_sub.exit:                                ; preds = %bb.l, %bb.m, %.critedge.i60
  %.0.i59 = phi ptr [ %i.ao, %.critedge.i60 ], [ %i.am, %bb.l ], [ %i.an, %bb.m ] ; 6 uses
  %i.ap = and i64 %i.aa, 1
  %.not.i36 = icmp eq i64 %i.ap, 0
  br i1 %.not.i36, label %bb.n, label %lean_dec.exit37

bb.n:                                             ; preds = %lean_int_sub.exit
  %i.aq = load i32, ptr %.0.i125, align 4, !tbaa !10 ; 3 uses
  %i.ar = icmp sgt i32 %i.aq, 1
  br i1 %i.ar, label %bb.o, label %bb.p, !prof !11

bb.o:                                             ; preds = %bb.n
  %i.as = add nsw i32 %i.aq, -1
  store i32 %i.as, ptr %.0.i125, align 4, !tbaa !10
  br label %lean_dec.exit37

bb.p:                                             ; preds = %bb.n
  %.not.i41 = icmp eq i32 %i.aq, 0
  br i1 %.not.i41, label %lean_dec.exit37, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i125) #7
  br label %lean_dec.exit37

lean_dec.exit37:                                  ; preds = %bb.q, %bb.p, %bb.o, %lean_int_sub.exit
  %i.at = load atomic i32, ptr @l_Std_Time_Internal_Bounded_LE_ofNatWrapping___redArg___closed__0_once seq_cst, align 4, !tbaa !14
  %i.au = icmp eq i32 %i.at, 1
  br i1 %i.au, label %bb.r, label %bb.s, !prof !11

bb.r:                                             ; preds = %lean_dec.exit37
  %i.av = load ptr, ptr @l_Std_Time_Internal_Bounded_LE_ofNatWrapping___redArg___closed__0, align 8, !tbaa !16
  br label %lean_obj_once.exit

bb.s:                                             ; preds = %lean_dec.exit37
  %i.aw = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Internal_Bounded_LE_ofNatWrapping___redArg___closed__0, ptr noundef nonnull @l_Std_Time_Internal_Bounded_LE_ofNatWrapping___redArg___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Internal_Bounded_LE_ofNatWrapping___redArg___closed__0) #7
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.r, %bb.s
  %.0.i61 = phi ptr [ %i.av, %bb.r ], [ %i.aw, %bb.s ] ; 3 uses
  %i.ax = ptrtoint ptr %.0.i59 to i64             ; 2 uses
  %i.ay = and i64 %i.ax, 1
  %.not.i62 = icmp eq i64 %i.ay, 0
  br i1 %.not.i62, label %bb.x, label %bb.t, !prof !17

bb.t:                                             ; preds = %lean_obj_once.exit
  %i.az = ptrtoint ptr %.0.i61 to i64             ; 2 uses
  %i.ba = and i64 %i.az, 1
  %.not7.i63 = icmp eq i64 %i.ba, 0
  br i1 %.not7.i63, label %lean_int_add.exit66, label %bb.u, !prof !17

bb.u:                                             ; preds = %bb.t
  %i.bb = shl i64 %i.ax, 31
  %i.bc = ashr i64 %i.bb, 32
  %i.bd = shl i64 %i.az, 31
  %i.be = ashr i64 %i.bd, 32
  %i.bf = add nsw i64 %i.be, %i.bc                ; 3 uses
  %i.bg = add nsw i64 %i.bf, 2147483648
  %i.bh = icmp ult i64 %i.bg, 4294967296
  br i1 %i.bh, label %bb.v, label %bb.w, !prof !11

bb.v:                                             ; preds = %bb.u
  %i.bi = shl nsw i64 %i.bf, 1
  %i.bj = and i64 %i.bi, 8589934590
  %i.bk = or disjoint i64 %i.bj, 1
  %i.bl = inttoptr i64 %i.bk to ptr
  br label %lean_dec.exit35

bb.w:                                             ; preds = %bb.u
  %i.bm = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.bf) #7
  br label %lean_dec.exit35

lean_int_add.exit66:                              ; preds = %bb.t
  %i.bn = tail call ptr @lean_int_big_add(ptr noundef %.0.i59, ptr noundef %.0.i61) #7
  br label %lean_dec.exit35

bb.x:                                             ; preds = %lean_obj_once.exit
  %i.bo = tail call ptr @lean_int_big_add(ptr noundef %.0.i59, ptr noundef %.0.i61) #7 ; 3 uses
  %i.bp = load i32, ptr %.0.i59, align 4, !tbaa !10 ; 3 uses
  %i.bq = icmp sgt i32 %i.bp, 1
  br i1 %i.bq, label %bb.y, label %bb.z, !prof !11

bb.y:                                             ; preds = %bb.x
  %i.br = add nsw i32 %i.bp, -1
  store i32 %i.br, ptr %.0.i59, align 4, !tbaa !10
  br label %lean_dec.exit35

bb.z:                                             ; preds = %bb.x
  %.not.i43 = icmp eq i32 %i.bp, 0
  br i1 %.not.i43, label %lean_dec.exit35, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i59) #7
  br label %lean_dec.exit35

lean_dec.exit35:                                  ; preds = %bb.w, %bb.v, %lean_int_add.exit66, %bb.aa, %bb.z, %bb.y
  %.0.i64129 = phi ptr [ %i.bn, %lean_int_add.exit66 ], [ %i.bo, %bb.aa ], [ %i.bo, %bb.z ], [ %i.bo, %bb.y ], [ %i.bm, %bb.w ], [ %i.bl, %bb.v ] ; 12 uses
  br i1 %.not.i56, label %.critedge.i70, label %lean_int_sub.exit71, !prof !17

.critedge.i70:                                    ; preds = %lean_dec.exit35
  %i.bs = tail call ptr @lean_int_big_sub(ptr noundef %0, ptr noundef %0) #7
  br label %lean_int_sub.exit71

lean_int_sub.exit71:                              ; preds = %lean_dec.exit35, %.critedge.i70
  %.0.i69 = phi ptr [ %i.bs, %.critedge.i70 ], [ inttoptr (i64 1 to ptr), %lean_dec.exit35 ] ; 7 uses
  %i.bt = ptrtoint ptr %.0.i69 to i64             ; 2 uses
  %i.bu = and i64 %i.bt, 1
  %.not.i72 = icmp eq i64 %i.bu, 0
  br i1 %.not.i72, label %bb.ag, label %bb.ab, !prof !17

bb.ab:                                            ; preds = %lean_int_sub.exit71
  %i.bv = ptrtoint ptr %.0.i64129 to i64          ; 2 uses
  %i.bw = and i64 %i.bv, 1
  %.not21.i = icmp eq i64 %i.bw, 0
  br i1 %.not21.i, label %lean_int_emod.exit, label %bb.ac, !prof !17

bb.ac:                                            ; preds = %bb.ab
  %i.bx = shl i64 %i.bv, 31
  %i.by = ashr i64 %i.bx, 32                      ; 3 uses
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %lean_dec.exit33, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ca = shl i64 %i.bt, 31
  %i.cb = ashr i64 %i.ca, 32
  %i.cc = srem i64 %i.cb, %i.by                   ; 2 uses
  %i.cd = icmp slt i64 %i.cc, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.by, i1 true)
  %i.ce = select i1 %i.cd, i64 %.p.i, i64 0
  %.0.i73 = add nsw i64 %i.ce, %i.cc              ; 3 uses
  %2 = icmp ult i64 %.0.i73, 2147483648
  br i1 %2, label %bb.ae, label %bb.af, !prof !11

bb.ae:                                            ; preds = %bb.ad
  %i.cf = shl nuw nsw i64 %.0.i73, 1
  %i.cg = or disjoint i64 %i.cf, 1
  %i.ch = inttoptr i64 %i.cg to ptr
  br label %lean_dec.exit33

bb.af:                                            ; preds = %bb.ad
  %i.ci = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i73) #7
  br label %lean_dec.exit33

lean_int_emod.exit:                               ; preds = %bb.ab
  %i.cj = tail call ptr @lean_int_big_emod(ptr noundef %.0.i69, ptr noundef %.0.i64129) #7
  br label %lean_dec.exit33

bb.ag:                                            ; preds = %lean_int_sub.exit71
  %i.ck = tail call ptr @lean_int_big_emod(ptr noundef %.0.i69, ptr noundef %.0.i64129) #7 ; 3 uses
  %i.cl = load i32, ptr %.0.i69, align 4, !tbaa !10 ; 3 uses
  %i.cm = icmp sgt i32 %i.cl, 1
  br i1 %i.cm, label %bb.ah, label %bb.ai, !prof !11

bb.ah:                                            ; preds = %bb.ag
  %i.cn = add nsw i32 %i.cl, -1
  store i32 %i.cn, ptr %.0.i69, align 4, !tbaa !10
  br label %lean_dec.exit33

bb.ai:                                            ; preds = %bb.ag
  %.not.i45 = icmp eq i32 %i.cl, 0
  br i1 %.not.i45, label %lean_dec.exit33, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i69) #7
  br label %lean_dec.exit33

lean_dec.exit33:                                  ; preds = %bb.af, %bb.ae, %bb.ac, %lean_int_emod.exit, %bb.aj, %bb.ai, %bb.ah
  %.1.i74132 = phi ptr [ %i.cj, %lean_int_emod.exit ], [ %i.ck, %bb.aj ], [ %i.ck, %bb.ai ], [ %i.ck, %bb.ah ], [ %i.ci, %bb.af ], [ %i.ch, %bb.ae ], [ %.0.i69, %bb.ac ] ; 6 uses
  %i.co = ptrtoint ptr %.1.i74132 to i64          ; 2 uses
  %i.cp = and i64 %i.co, 1
  %.not.i76 = icmp eq i64 %i.cp, 0
  br i1 %.not.i76, label %bb.ao, label %bb.ak, !prof !17

bb.ak:                                            ; preds = %lean_dec.exit33
  %i.cq = ptrtoint ptr %.0.i64129 to i64          ; 2 uses
  %i.cr = and i64 %i.cq, 1
  %.not7.i77 = icmp eq i64 %i.cr, 0
  br i1 %.not7.i77, label %lean_int_add.exit80, label %bb.al, !prof !17

bb.al:                                            ; preds = %bb.ak
  %i.cs = shl i64 %i.co, 31
  %i.ct = ashr i64 %i.cs, 32
  %i.cu = shl i64 %i.cq, 31
  %i.cv = ashr i64 %i.cu, 32
  %i.cw = add nsw i64 %i.ct, %i.cv                ; 3 uses
  %i.cx = add nsw i64 %i.cw, 2147483648
  %i.cy = icmp ult i64 %i.cx, 4294967296
  br i1 %i.cy, label %bb.am, label %bb.an, !prof !11

bb.am:                                            ; preds = %bb.al
  %i.cz = shl nsw i64 %i.cw, 1
  %i.da = and i64 %i.cz, 8589934590
  %i.db = or disjoint i64 %i.da, 1
  %i.dc = inttoptr i64 %i.db to ptr
  br label %lean_dec.exit31

bb.an:                                            ; preds = %bb.al
  %i.dd = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.cw) #7
  br label %lean_dec.exit31

lean_int_add.exit80:                              ; preds = %bb.ak
  %i.de = tail call ptr @lean_int_big_add(ptr noundef %.1.i74132, ptr noundef %.0.i64129) #7
  br label %lean_dec.exit31

bb.ao:                                            ; preds = %lean_dec.exit33
  %i.df = tail call ptr @lean_int_big_add(ptr noundef %.1.i74132, ptr noundef %.0.i64129) #7 ; 3 uses
  %i.dg = load i32, ptr %.1.i74132, align 4, !tbaa !10 ; 3 uses
  %i.dh = icmp sgt i32 %i.dg, 1
  br i1 %i.dh, label %bb.ap, label %bb.aq, !prof !11

bb.ap:                                            ; preds = %bb.ao
  %i.di = add nsw i32 %i.dg, -1
  store i32 %i.di, ptr %.1.i74132, align 4, !tbaa !10
  br label %lean_dec.exit31

bb.aq:                                            ; preds = %bb.ao
  %.not.i47 = icmp eq i32 %i.dg, 0
  br i1 %.not.i47, label %lean_dec.exit31, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i74132) #7
  br label %lean_dec.exit31

lean_dec.exit31:                                  ; preds = %bb.an, %bb.am, %lean_int_add.exit80, %bb.ar, %bb.aq, %bb.ap
  %.0.i78135 = phi ptr [ %i.de, %lean_int_add.exit80 ], [ %i.df, %bb.ar ], [ %i.df, %bb.aq ], [ %i.df, %bb.ap ], [ %i.dd, %bb.an ], [ %i.dc, %bb.am ] ; 7 uses
  %i.dj = ptrtoint ptr %.0.i78135 to i64          ; 2 uses
  %i.dk = and i64 %i.dj, 1
  %.not.i81 = icmp eq i64 %i.dk, 0                ; 2 uses
  %.pre101 = ptrtoint ptr %.0.i64129 to i64       ; 2 uses
  %.pre102 = and i64 %.pre101, 1
  %i.dl = icmp eq i64 %.pre102, 0                 ; 2 uses
  br i1 %.not.i81, label %lean_int_emod.exit87, label %bb.as, !prof !17

bb.as:                                            ; preds = %lean_dec.exit31
  br i1 %i.dl, label %lean_int_emod.exit87.thread140, label %bb.at, !prof !17

lean_int_emod.exit87.thread140:                   ; preds = %bb.as
  %i.dm = tail call ptr @lean_int_big_emod(ptr noundef %.0.i78135, ptr noundef %.0.i64129) #7
  br label %bb.ax

bb.at:                                            ; preds = %bb.as
  %i.dn = shl i64 %.pre101, 31
  %i.do = ashr i64 %i.dn, 32                      ; 3 uses
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %lean_dec.exit27, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dq = shl i64 %i.dj, 31
  %i.dr = ashr i64 %i.dq, 32
  %i.ds = srem i64 %i.dr, %i.do                   ; 2 uses
  %i.dt = icmp slt i64 %i.ds, 0
  %.p.i83 = tail call i64 @llvm.abs.i64(i64 %i.do, i1 true)
  %i.du = select i1 %i.dt, i64 %.p.i83, i64 0
  %.0.i84 = add nsw i64 %i.du, %i.ds              ; 3 uses
  %3 = icmp ult i64 %.0.i84, 2147483648
  br i1 %3, label %bb.av, label %bb.aw, !prof !11

bb.av:                                            ; preds = %bb.au
  %i.dv = shl nuw nsw i64 %.0.i84, 1
  %i.dw = or disjoint i64 %i.dv, 1
  %i.dx = inttoptr i64 %i.dw to ptr
  br label %lean_dec.exit27

bb.aw:                                            ; preds = %bb.au
  %i.dy = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i84) #7
  br label %lean_dec.exit27

lean_int_emod.exit87:                             ; preds = %lean_dec.exit31
  %i.dz = tail call ptr @lean_int_big_emod(ptr noundef %.0.i78135, ptr noundef %.0.i64129) #7 ; 2 uses
  br i1 %i.dl, label %bb.ax, label %lean_dec.exit29.thread

bb.ax:                                            ; preds = %lean_int_emod.exit87.thread140, %lean_int_emod.exit87
  %i.ea = phi ptr [ %i.dm, %lean_int_emod.exit87.thread140 ], [ %i.dz, %lean_int_emod.exit87 ] ; 2 uses
  %i.eb = load i32, ptr %.0.i64129, align 4, !tbaa !10 ; 3 uses
  %i.ec = icmp sgt i32 %i.eb, 1
  br i1 %i.ec, label %bb.ay, label %bb.az, !prof !11

bb.ay:                                            ; preds = %bb.ax
  %i.ed = add nsw i32 %i.eb, -1
  store i32 %i.ed, ptr %.0.i64129, align 4, !tbaa !10
  br label %lean_dec.exit29

bb.az:                                            ; preds = %bb.ax
  %.not.i49 = icmp eq i32 %i.eb, 0
  br i1 %.not.i49, label %lean_dec.exit29, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i64129) #7
  br label %lean_dec.exit29

lean_dec.exit29:                                  ; preds = %bb.ba, %bb.az, %bb.ay
  br i1 %.not.i81, label %lean_dec.exit29.thread, label %lean_dec.exit27

lean_dec.exit29.thread:                           ; preds = %lean_int_emod.exit87, %lean_dec.exit29
  %.1.i85139144 = phi ptr [ %i.ea, %lean_dec.exit29 ], [ %i.dz, %lean_int_emod.exit87 ] ; 3 uses
  %i.ee = load i32, ptr %.0.i78135, align 4, !tbaa !10 ; 3 uses
  %i.ef = icmp sgt i32 %i.ee, 1
  br i1 %i.ef, label %bb.bb, label %bb.bc, !prof !11

bb.bb:                                            ; preds = %lean_dec.exit29.thread
  %i.eg = add nsw i32 %i.ee, -1
  store i32 %i.eg, ptr %.0.i78135, align 4, !tbaa !10
  br label %lean_dec.exit27

bb.bc:                                            ; preds = %lean_dec.exit29.thread
  %.not.i51 = icmp eq i32 %i.ee, 0
  br i1 %.not.i51, label %lean_dec.exit27, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i78135) #7
  br label %lean_dec.exit27

lean_dec.exit27:                                  ; preds = %bb.at, %bb.av, %bb.aw, %bb.bd, %bb.bc, %bb.bb, %lean_dec.exit29
  %.1.i85139143 = phi ptr [ %.1.i85139144, %bb.bd ], [ %.1.i85139144, %bb.bc ], [ %.1.i85139144, %bb.bb ], [ %i.ea, %lean_dec.exit29 ], [ %i.dy, %bb.aw ], [ %i.dx, %bb.av ], [ %.0.i78135, %bb.at ] ; 5 uses
  %i.eh = ptrtoint ptr %.1.i85139143 to i64       ; 3 uses
  %i.ei = and i64 %i.g, %i.eh
  %brmerge93.not.not = icmp eq i64 %i.ei, 0
  br i1 %brmerge93.not.not, label %.critedge.i91, label %bb.be, !prof !18

bb.be:                                            ; preds = %lean_dec.exit27
  %i.ej = shl i64 %i.eh, 31
  %i.ek = ashr i64 %i.ej, 32
  %i.el = shl i64 %i.f, 31
  %i.em = ashr i64 %i.el, 32
  %i.en = add nsw i64 %i.ek, %i.em                ; 3 uses
  %i.eo = add nsw i64 %i.en, 2147483648
  %i.ep = icmp ult i64 %i.eo, 4294967296
  br i1 %i.ep, label %bb.bf, label %bb.bg, !prof !11

bb.bf:                                            ; preds = %bb.be
  %i.eq = shl nsw i64 %i.en, 1
  %i.er = and i64 %i.eq, 8589934590
  %i.es = or disjoint i64 %i.er, 1
  %i.et = inttoptr i64 %i.es to ptr
  br label %lean_int_add.exit92

bb.bg:                                            ; preds = %bb.be
  %i.eu = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.en) #7
  br label %lean_int_add.exit92

.critedge.i91:                                    ; preds = %lean_dec.exit27
  %i.ev = tail call ptr @lean_int_big_add(ptr noundef %.1.i85139143, ptr noundef %0) #7
  br label %lean_int_add.exit92

lean_int_add.exit92:                              ; preds = %bb.bf, %bb.bg, %.critedge.i91
  %.0.i90 = phi ptr [ %i.ev, %.critedge.i91 ], [ %i.et, %bb.bf ], [ %i.eu, %bb.bg ]
  %i.ew = and i64 %i.eh, 1
  %.not.i = icmp eq i64 %i.ew, 0
  br i1 %.not.i, label %bb.bh, label %lean_dec.exit

bb.bh:                                            ; preds = %lean_int_add.exit92
  %i.ex = load i32, ptr %.1.i85139143, align 4, !tbaa !10 ; 3 uses
  %i.ey = icmp sgt i32 %i.ex, 1
  br i1 %i.ey, label %bb.bi, label %bb.bj, !prof !11

bb.bi:                                            ; preds = %bb.bh
  %i.ez = add nsw i32 %i.ex, -1
  store i32 %i.ez, ptr %.1.i85139143, align 4, !tbaa !10
  br label %lean_dec.exit

bb.bj:                                            ; preds = %bb.bh
  %.not.i53 = icmp eq i32 %i.ex, 0
  br i1 %.not.i53, label %lean_dec.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i85139143) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.bk, %bb.bj, %bb.bi, %lean_int_add.exit92
  ret ptr %.0.i90
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_Time_Internal_Bounded_LE_instInhabitedHAddIntCast___boxed(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Std_Time_Internal_Bounded_LE_instInhabitedHAddIntCast(ptr noundef %0, ptr noundef %1)
  %i.b = ptrtoint ptr %0 to i64
  %i.c = and i64 %i.b, 1
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit

bb.d:                                             ; preds = %bb.b
  %.not.i4 = icmp eq i32 %i.d, 0
  br i1 %.not.i4, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @l_Std_Time_Internal_Bounded_LE_mk___redArg(ptr noundef returned %0) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %lean_inc.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %0, align 4, !tbaa !10 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %0, align 4, !tbaa !10
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
define noundef ptr @l_Std_Time_Internal_Bounded_LE_mk___redArg___boxed(ptr noundef returned %0) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %0, align 4, !tbaa !10 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i.i, 1               ; 2 uses
  store i32 %i.d, ptr %0, align 4, !tbaa !10
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw add ptr %0, i32 -1 monotonic, align 4 ; 0 uses
  %.pr = load i32, ptr %0, align 4, !tbaa !10
  br label %bb.f

end_hunk_1
begin_hunk_2_@l_Std_Time_Internal_Bounded_LE_ofFin_x27___redArg:bb.a
  %.not.i11 = icmp eq i32 %i.h, 0
  br i1 %.not.i11, label %lean_dec.exit10, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec.exit10

lean_dec.exit10:                                  ; preds = %lean_nat_le.exit.thread, %bb.f, %bb.e, %bb.d
  %i.k = icmp ult ptr %0, inttoptr (i64 4294967296 to ptr)
  %or.cond.i = or i1 %i.k, %.not.i14
  br i1 %or.cond.i, label %lean_nat_to_int.exit, label %lean_nat_to_int.exit.sink.split

bb.g:                                             ; preds = %lean_nat_le.exit
  %i.l = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.h, label %bb.i, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit

bb.i:                                             ; preds = %bb.g
  %.not.i12 = icmp eq i32 %i.l, 0
  br i1 %.not.i12, label %lean_dec.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_nat_le.exit.thread21, %lean_nat_le.exit.thread, %bb.j, %bb.i, %bb.h
  %i.o = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.p = and i64 %i.o, 1
  %.not.i16 = icmp eq i64 %i.p, 0
  %i.q = icmp ult ptr %1, inttoptr (i64 4294967296 to ptr)
  %or.cond.i17 = or i1 %i.q, %.not.i16
  br i1 %or.cond.i17, label %lean_nat_to_int.exit, label %lean_nat_to_int.exit.sink.split

lean_nat_to_int.exit.sink.split:                  ; preds = %lean_dec.exit, %lean_dec.exit10
  %.sink34 = phi i64 [ %i.a, %lean_dec.exit10 ], [ %i.o, %lean_dec.exit ]
  %i.r = lshr i64 %.sink34, 1
  %i.s = tail call ptr @lean_big_size_t_to_int(i64 noundef %i.r) #7
  br label %lean_nat_to_int.exit

lean_nat_to_int.exit:                             ; preds = %lean_nat_to_int.exit.sink.split, %bb.c, %lean_dec.exit, %lean_dec.exit10
  %.0 = phi ptr [ %0, %bb.c ], [ %0, %lean_dec.exit10 ], [ %1, %lean_dec.exit ], [ %i.s, %lean_nat_to_int.exit.sink.split ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_Time_Internal_Bounded_LE_ofFin_x27(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i14 = icmp eq i64 %i.b, 0                 ; 2 uses
  br i1 %.not.i14, label %lean_nat_le.exit, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  %i.d = and i64 %i.c, 1
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %lean_nat_le.exit.thread21, label %lean_nat_le.exit.thread, !prof !17

lean_nat_le.exit:                                 ; preds = %bb.a
  %i.e = tail call zeroext i1 @lean_nat_big_le(ptr noundef %1, ptr noundef %2) #7
  br i1 %i.e, label %bb.g, label %bb.c

lean_nat_le.exit.thread21:                        ; preds = %bb.b
  %i.f = tail call zeroext i1 @lean_nat_big_le(ptr noundef %1, ptr noundef %2) #7
  br i1 %i.f, label %lean_dec.exit, label %.thread

lean_nat_le.exit.thread:                          ; preds = %bb.b
  %.not23 = icmp ugt ptr %1, %2
  br i1 %.not23, label %lean_dec.exit10, label %lean_dec.exit

bb.c:                                             ; preds = %lean_nat_le.exit
  %.pre = ptrtoint ptr %2 to i64
  %.pre24 = and i64 %.pre, 1
  %i.g = icmp eq i64 %.pre24, 0
  br i1 %i.g, label %.thread, label %lean_nat_to_int.exit

.thread:                                          ; preds = %lean_nat_le.exit.thread21, %bb.c
  %i.h = load i32, ptr %2, align 4, !tbaa !10     ; 3 uses
  %i.i = icmp sgt i32 %i.h, 1
  br i1 %i.i, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %.thread
  %i.j = add nsw i32 %i.h, -1
  store i32 %i.j, ptr %2, align 4, !tbaa !10
  br label %lean_dec.exit10

bb.e:                                             ; preds = %.thread
  %.not.i11 = icmp eq i32 %i.h, 0
  br i1 %.not.i11, label %lean_dec.exit10, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #7
  br label %lean_dec.exit10

lean_dec.exit10:                                  ; preds = %lean_nat_le.exit.thread, %bb.f, %bb.e, %bb.d
  %i.k = icmp ult ptr %1, inttoptr (i64 4294967296 to ptr)
  %or.cond.i = or i1 %i.k, %.not.i14
  br i1 %or.cond.i, label %lean_nat_to_int.exit, label %lean_nat_to_int.exit.sink.split

bb.g:                                             ; preds = %lean_nat_le.exit
  %i.l = load i32, ptr %1, align 4, !tbaa !10     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.h, label %bb.i, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %1, align 4, !tbaa !10
  br label %lean_dec.exit

bb.i:                                             ; preds = %bb.g
  %.not.i12 = icmp eq i32 %i.l, 0
  br i1 %.not.i12, label %lean_dec.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_nat_le.exit.thread21, %lean_nat_le.exit.thread, %bb.j, %bb.i, %bb.h
  %i.o = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.p = and i64 %i.o, 1
  %.not.i16 = icmp eq i64 %i.p, 0
  %i.q = icmp ult ptr %2, inttoptr (i64 4294967296 to ptr)
  %or.cond.i17 = or i1 %i.q, %.not.i16
  br i1 %or.cond.i17, label %lean_nat_to_int.exit, label %lean_nat_to_int.exit.sink.split

lean_nat_to_int.exit.sink.split:                  ; preds = %lean_dec.exit, %lean_dec.exit10
  %.sink34 = phi i64 [ %i.a, %lean_dec.exit10 ], [ %i.o, %lean_dec.exit ]
  %i.r = lshr i64 %.sink34, 1
  %i.s = tail call ptr @lean_big_size_t_to_int(i64 noundef %i.r) #7
  br label %lean_nat_to_int.exit

lean_nat_to_int.exit:                             ; preds = %lean_nat_to_int.exit.sink.split, %bb.c, %lean_dec.exit, %lean_dec.exit10
  %.0 = phi ptr [ %1, %bb.c ], [ %1, %lean_dec.exit10 ], [ %2, %lean_dec.exit ], [ %i.s, %lean_nat_to_int.exit.sink.split ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_Time_Internal_Bounded_LE_ofFin_x27___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Std_Time_Internal_Bounded_LE_ofFin_x27(ptr poison, ptr noundef %1, ptr noundef %2, ptr poison)
  %i.b = ptrtoint ptr %0 to i64
  %i.c = and i64 %i.b, 1
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.b, label %lean_dec.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit

bb.d:                                             ; preds = %bb.b
  %.not.i6 = icmp eq i32 %i.d, 0
  br i1 %.not.i6, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_Time_Internal_Bounded_LE_byEmod___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %.critedge.i, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = and i64 %i.c, 1
  %.not21.i = icmp eq i64 %i.d, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.c, !prof !17

bb.c:                                             ; preds = %bb.b
  %i.e = shl i64 %i.c, 31
  %i.f = ashr i64 %i.e, 32                        ; 3 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %lean_int_emod.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = shl i64 %i.a, 31
  %i.i = ashr i64 %i.h, 32
  %i.j = srem i64 %i.i, %i.f                      ; 2 uses
  %i.k = icmp slt i64 %i.j, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.f, i1 true)
  %i.l = select i1 %i.k, i64 %.p.i, i64 0
  %.0.i = add nsw i64 %i.l, %i.j                  ; 3 uses
  %2 = icmp ult i64 %.0.i, 2147483648
  br i1 %2, label %bb.e, label %bb.f, !prof !11

bb.e:                                             ; preds = %bb.d
  %i.m = shl nuw nsw i64 %.0.i, 1
  %i.n = or disjoint i64 %i.m, 1
  %i.o = inttoptr i64 %i.n to ptr
  br label %lean_int_emod.exit

bb.f:                                             ; preds = %bb.d
  %i.p = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i) #7
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.b, %bb.a
  %i.q = tail call ptr @lean_int_big_emod(ptr noundef %0, ptr noundef %1) #7
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.c, %bb.e, %bb.f, %.critedge.i
  %.1.i = phi ptr [ %i.q, %.critedge.i ], [ %0, %bb.c ], [ %i.o, %bb.e ], [ %i.p, %bb.f ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_Time_Internal_Bounded_LE_byEmod___redArg___boxed(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0                 ; 2 uses
  %.pre12 = ptrtoint ptr %1 to i64                ; 2 uses
  %.pre = and i64 %.pre12, 1
  %i.c = icmp eq i64 %.pre, 0                     ; 2 uses
  br i1 %.not.i.i, label %l_Std_Time_Internal_Bounded_LE_byEmod___redArg.exit, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %l_Std_Time_Internal_Bounded_LE_byEmod___redArg.exit.thread21, label %bb.c, !prof !17

l_Std_Time_Internal_Bounded_LE_byEmod___redArg.exit.thread21: ; preds = %bb.b
  %i.d = tail call ptr @lean_int_big_emod(ptr noundef %0, ptr noundef %1) #7
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.e = shl i64 %.pre12, 31
  %i.f = ashr i64 %i.e, 32                        ; 3 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %lean_dec.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = shl i64 %i.a, 31
  %i.i = ashr i64 %i.h, 32
  %i.j = srem i64 %i.i, %i.f                      ; 2 uses
  %i.k = icmp slt i64 %i.j, 0
  %.p.i.i = tail call i64 @llvm.abs.i64(i64 %i.f, i1 true)
  %i.l = select i1 %i.k, i64 %.p.i.i, i64 0
  %.0.i.i = add nsw i64 %i.l, %i.j                ; 3 uses
  %2 = icmp ult i64 %.0.i.i, 2147483648
  br i1 %2, label %bb.e, label %bb.f, !prof !11

bb.e:                                             ; preds = %bb.d
  %i.m = shl nuw nsw i64 %.0.i.i, 1
  %i.n = or disjoint i64 %i.m, 1
  %i.o = inttoptr i64 %i.n to ptr
  br label %lean_dec.exit

bb.f:                                             ; preds = %bb.d
  %i.p = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i.i) #7
  br label %lean_dec.exit

l_Std_Time_Internal_Bounded_LE_byEmod___redArg.exit: ; preds = %bb.a
  %i.q = tail call ptr @lean_int_big_emod(ptr noundef %0, ptr noundef %1) #7 ; 2 uses
  br i1 %i.c, label %bb.g, label %lean_dec.exit6.thread

bb.g:                                             ; preds = %l_Std_Time_Internal_Bounded_LE_byEmod___redArg.exit.thread21, %l_Std_Time_Internal_Bounded_LE_byEmod___redArg.exit
  %i.r = phi ptr [ %i.d, %l_Std_Time_Internal_Bounded_LE_byEmod___redArg.exit.thread21 ], [ %i.q, %l_Std_Time_Internal_Bounded_LE_byEmod___redArg.exit ] ; 2 uses
  %i.s = load i32, ptr %1, align 4, !tbaa !10     ; 3 uses
  %i.t = icmp sgt i32 %i.s, 1
  br i1 %i.t, label %bb.h, label %bb.i, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.u = add nsw i32 %i.s, -1
  store i32 %i.u, ptr %1, align 4, !tbaa !10
  br label %lean_dec.exit6

bb.i:                                             ; preds = %bb.g
  %.not.i7 = icmp eq i32 %i.s, 0
  br i1 %.not.i7, label %lean_dec.exit6, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec.exit6

lean_dec.exit6:                                   ; preds = %bb.j, %bb.i, %bb.h
  br i1 %.not.i.i, label %lean_dec.exit6.thread, label %lean_dec.exit

lean_dec.exit6.thread:                            ; preds = %l_Std_Time_Internal_Bounded_LE_byEmod___redArg.exit, %lean_dec.exit6
  %.1.i.i2025 = phi ptr [ %i.r, %lean_dec.exit6 ], [ %i.q, %l_Std_Time_Internal_Bounded_LE_byEmod___redArg.exit ] ; 3 uses
  %i.v = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.w = icmp sgt i32 %i.v, 1
  br i1 %i.w, label %bb.k, label %bb.l, !prof !11

bb.k:                                             ; preds = %lean_dec.exit6.thread
  %i.x = add nsw i32 %i.v, -1
  store i32 %i.x, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit

bb.l:                                             ; preds = %lean_dec.exit6.thread
  %.not.i8 = icmp eq i32 %i.v, 0
  br i1 %.not.i8, label %lean_dec.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.c, %bb.e, %bb.f, %bb.m, %bb.l, %bb.k, %lean_dec.exit6
  %.1.i.i2024 = phi ptr [ %.1.i.i2025, %bb.m ], [ %.1.i.i2025, %bb.l ], [ %.1.i.i2025, %bb.k ], [ %i.r, %lean_dec.exit6 ], [ %i.p, %bb.f ], [ %i.o, %bb.e ], [ %0, %bb.c ]
  ret ptr %.1.i.i2024
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_Time_Internal_Bounded_LE_byEmod(ptr noundef %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %.critedge.i, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = and i64 %i.c, 1
  %.not21.i = icmp eq i64 %i.d, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.c, !prof !17

bb.c:                                             ; preds = %bb.b
  %i.e = shl i64 %i.c, 31
  %i.f = ashr i64 %i.e, 32                        ; 3 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %lean_int_emod.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = shl i64 %i.a, 31
  %i.i = ashr i64 %i.h, 32
  %i.j = srem i64 %i.i, %i.f                      ; 2 uses
  %i.k = icmp slt i64 %i.j, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.f, i1 true)
  %i.l = select i1 %i.k, i64 %.p.i, i64 0
  %.0.i = add nsw i64 %i.l, %i.j                  ; 3 uses
  %3 = icmp ult i64 %.0.i, 2147483648
  br i1 %3, label %bb.e, label %bb.f, !prof !11

bb.e:                                             ; preds = %bb.d
  %i.m = shl nuw nsw i64 %.0.i, 1
  %i.n = or disjoint i64 %i.m, 1
  %i.o = inttoptr i64 %i.n to ptr
  br label %lean_int_emod.exit

bb.f:                                             ; preds = %bb.d
  %i.p = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i) #7
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.b, %bb.a
  %i.q = tail call ptr @lean_int_big_emod(ptr noundef %0, ptr noundef %1) #7
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.c, %bb.e, %bb.f, %.critedge.i
  %.1.i = phi ptr [ %i.q, %.critedge.i ], [ %0, %bb.c ], [ %i.o, %bb.e ], [ %i.p, %bb.f ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_Time_Internal_Bounded_LE_byEmod___boxed(ptr noundef %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0                 ; 2 uses
  %.pre13 = ptrtoint ptr %1 to i64                ; 2 uses
  %.pre = and i64 %.pre13, 1
  %i.c = icmp eq i64 %.pre, 0                     ; 2 uses
  br i1 %.not.i.i, label %l_Std_Time_Internal_Bounded_LE_byEmod.exit, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %l_Std_Time_Internal_Bounded_LE_byEmod.exit.thread22, label %bb.c, !prof !17

l_Std_Time_Internal_Bounded_LE_byEmod.exit.thread22: ; preds = %bb.b
  %i.d = tail call ptr @lean_int_big_emod(ptr noundef %0, ptr noundef %1) #7
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.e = shl i64 %.pre13, 31
  %i.f = ashr i64 %i.e, 32                        ; 3 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %lean_dec.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = shl i64 %i.a, 31
  %i.i = ashr i64 %i.h, 32
  %i.j = srem i64 %i.i, %i.f                      ; 2 uses
  %i.k = icmp slt i64 %i.j, 0
  %.p.i.i = tail call i64 @llvm.abs.i64(i64 %i.f, i1 true)
  %i.l = select i1 %i.k, i64 %.p.i.i, i64 0
  %.0.i.i = add nsw i64 %i.l, %i.j                ; 3 uses
  %3 = icmp ult i64 %.0.i.i, 2147483648
  br i1 %3, label %bb.e, label %bb.f, !prof !11

bb.e:                                             ; preds = %bb.d
  %i.m = shl nuw nsw i64 %.0.i.i, 1
  %i.n = or disjoint i64 %i.m, 1
  %i.o = inttoptr i64 %i.n to ptr
  br label %lean_dec.exit

bb.f:                                             ; preds = %bb.d
  %i.p = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i.i) #7
  br label %lean_dec.exit

l_Std_Time_Internal_Bounded_LE_byEmod.exit:       ; preds = %bb.a
  %i.q = tail call ptr @lean_int_big_emod(ptr noundef %0, ptr noundef %1) #7 ; 2 uses
  br i1 %i.c, label %bb.g, label %lean_dec.exit7.thread

bb.g:                                             ; preds = %l_Std_Time_Internal_Bounded_LE_byEmod.exit.thread22, %l_Std_Time_Internal_Bounded_LE_byEmod.exit
  %i.r = phi ptr [ %i.d, %l_Std_Time_Internal_Bounded_LE_byEmod.exit.thread22 ], [ %i.q, %l_Std_Time_Internal_Bounded_LE_byEmod.exit ] ; 2 uses
  %i.s = load i32, ptr %1, align 4, !tbaa !10     ; 3 uses
  %i.t = icmp sgt i32 %i.s, 1
  br i1 %i.t, label %bb.h, label %bb.i, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.u = add nsw i32 %i.s, -1
  store i32 %i.u, ptr %1, align 4, !tbaa !10
  br label %lean_dec.exit7

bb.i:                                             ; preds = %bb.g
  %.not.i8 = icmp eq i32 %i.s, 0
  br i1 %.not.i8, label %lean_dec.exit7, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec.exit7

lean_dec.exit7:                                   ; preds = %bb.j, %bb.i, %bb.h
  br i1 %.not.i.i, label %lean_dec.exit7.thread, label %lean_dec.exit

lean_dec.exit7.thread:                            ; preds = %l_Std_Time_Internal_Bounded_LE_byEmod.exit, %lean_dec.exit7
  %.1.i.i2126 = phi ptr [ %i.r, %lean_dec.exit7 ], [ %i.q, %l_Std_Time_Internal_Bounded_LE_byEmod.exit ] ; 3 uses
  %i.v = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.w = icmp sgt i32 %i.v, 1
  br i1 %i.w, label %bb.k, label %bb.l, !prof !11

bb.k:                                             ; preds = %lean_dec.exit7.thread
  %i.x = add nsw i32 %i.v, -1
  store i32 %i.x, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit

bb.l:                                             ; preds = %lean_dec.exit7.thread
  %.not.i9 = icmp eq i32 %i.v, 0
  br i1 %.not.i9, label %lean_dec.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.c, %bb.e, %bb.f, %bb.m, %bb.l, %bb.k, %lean_dec.exit7
  %.1.i.i2125 = phi ptr [ %.1.i.i2126, %bb.m ], [ %.1.i.i2126, %bb.l ], [ %.1.i.i2126, %bb.k ], [ %i.r, %lean_dec.exit7 ], [ %i.p, %bb.f ], [ %i.o, %bb.e ], [ %0, %bb.c ]
  ret ptr %.1.i.i2125
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Std_Time_Internal_Bounded_0__Int_tdiv_match__1_splitter___redArg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = load atomic i32, ptr @l___private_Std_Time_Internal_Bounded_0__Int_tdiv_match__1_splitter___redArg___closed__0_once seq_cst, align 4, !tbaa !14
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l___private_Std_Time_Internal_Bounded_0__Int_tdiv_match__1_splitter___redArg___closed__0, align 8, !tbaa !16
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Std_Time_Internal_Bounded_0__Int_tdiv_match__1_splitter___redArg___closed__0, ptr noundef nonnull @l___private_Std_Time_Internal_Bounded_0__Int_tdiv_match__1_splitter___redArg___closed__0_once, ptr noundef nonnull @_init_l___private_Std_Time_Internal_Bounded_0__Int_tdiv_match__1_splitter___redArg___closed__0) #7
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 6 uses
  %i.e = ptrtoint ptr %0 to i64                   ; 7 uses
  %i.f = and i64 %i.e, 1
  %.not.i.i = icmp eq i64 %i.f, 0                 ; 3 uses
  br i1 %.not.i.i, label %lean_int_dec_lt.exit, label %bb.d, !prof !17

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.h = and i64 %i.g, 1
  %.not7.i.i = icmp eq i64 %i.h, 0
  br i1 %.not7.i.i, label %lean_int_dec_lt.exit, label %.split, !prof !17

.split:                                           ; preds = %bb.d
  %i.i = lshr i64 %i.e, 1
  %i.j = trunc i64 %i.i to i32
  %i.k = lshr i64 %i.g, 1
  %i.l = trunc i64 %i.k to i32
  %i.m = icmp slt i32 %i.j, %i.l
  br i1 %i.m, label %bb.bc, label %bb.e

lean_int_dec_lt.exit:                             ; preds = %lean_obj_once.exit, %bb.d
  %i.n = tail call zeroext i1 @lean_int_big_lt(ptr noundef %0, ptr noundef %.0.i) #7
  br i1 %i.n, label %bb.bc, label %bb.e

bb.e:                                             ; preds = %.split, %lean_int_dec_lt.exit
  %i.o = ptrtoint ptr %5 to i64
  %i.p = and i64 %i.o, 1
  %.not.i75 = icmp eq i64 %i.p, 0
  br i1 %.not.i75, label %bb.f, label %lean_dec.exit76

bb.f:                                             ; preds = %bb.e
  %i.q = load i32, ptr %5, align 4, !tbaa !10     ; 3 uses
  %i.r = icmp sgt i32 %i.q, 1
  br i1 %i.r, label %bb.g, label %bb.h, !prof !11

bb.g:                                             ; preds = %bb.f
  %i.s = add nsw i32 %i.q, -1
  store i32 %i.s, ptr %5, align 4, !tbaa !10
  br label %lean_dec.exit76

bb.h:                                             ; preds = %bb.f
  %.not.i77 = icmp eq i32 %i.q, 0
  br i1 %.not.i77, label %lean_dec.exit76, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #7
  br label %lean_dec.exit76

lean_dec.exit76:                                  ; preds = %bb.i, %bb.h, %bb.g, %bb.e
  %i.t = ptrtoint ptr %4 to i64
  %i.u = and i64 %i.t, 1
  %.not.i73 = icmp eq i64 %i.u, 0
  br i1 %.not.i73, label %bb.j, label %lean_dec.exit74

bb.j:                                             ; preds = %lean_dec.exit76
  %i.v = load i32, ptr %4, align 4, !tbaa !10     ; 3 uses
  %i.w = icmp sgt i32 %i.v, 1
  br i1 %i.w, label %bb.k, label %bb.l, !prof !11

bb.k:                                             ; preds = %bb.j
  %i.x = add nsw i32 %i.v, -1
  store i32 %i.x, ptr %4, align 4, !tbaa !10
  br label %lean_dec.exit74

bb.l:                                             ; preds = %bb.j
  %.not.i78 = icmp eq i32 %i.v, 0
  br i1 %.not.i78, label %lean_dec.exit74, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #7
  br label %lean_dec.exit74

lean_dec.exit74:                                  ; preds = %bb.m, %bb.l, %bb.k, %lean_dec.exit76
  br i1 %.not.i.i, label %lean_int_lt.exit.i, label %.split.i, !prof !17

.split.i:                                         ; preds = %lean_dec.exit74
  %i.y = and i64 %i.e, 4294967296
  %.not.i98 = icmp eq i64 %i.y, 0
  br i1 %.not.i98, label %lean_nat_abs.exit, label %bb.n

lean_int_lt.exit.i:                               ; preds = %lean_dec.exit74
  %i.z = tail call zeroext i1 @lean_int_big_lt(ptr noundef %0, ptr noundef nonnull inttoptr (i64 1 to ptr)) #7
  br i1 %i.z, label %bb.q, label %bb.r

bb.n:                                             ; preds = %.split.i
  %i.aa = shl i64 %i.e, 31
  %i.ab = ashr i64 %i.aa, 32                      ; 2 uses
  %i.ac = sub nsw i64 0, %i.ab                    ; 2 uses
  %.not4.i.i = icmp eq i64 %i.ab, -2147483648
  br i1 %.not4.i.i, label %bb.p, label %bb.o, !prof !17

bb.o:                                             ; preds = %bb.n
  %i.ad = shl nuw nsw i64 %i.ac, 1
  %i.ae = or disjoint i64 %i.ad, 1
  %i.af = inttoptr i64 %i.ae to ptr
  br label %lean_int_neg.exit.i

bb.p:                                             ; preds = %bb.n
  %i.ag = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.ac) #7
  br label %lean_int_neg.exit.i

bb.q:                                             ; preds = %lean_int_lt.exit.i
  %i.ah = tail call ptr @lean_int_big_neg(ptr noundef %0) #7
  br label %lean_int_neg.exit.i

lean_int_neg.exit.i:                              ; preds = %bb.q, %bb.p, %bb.o
  %.0.i7.i = phi ptr [ %i.ah, %bb.q ], [ %i.af, %bb.o ], [ %i.ag, %bb.p ] ; 3 uses
  %i.ai = ptrtoint ptr %.0.i7.i to i64
  %i.aj = and i64 %i.ai, 1
  %.not.i8.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i8.i, label %lean_int_to_nat.exit.sink.split.i, label %lean_nat_abs.exit

bb.r:                                             ; preds = %lean_int_lt.exit.i
  %.val.i.i.i = load i32, ptr %0, align 4, !tbaa !10 ; 3 uses
  %i.ak = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.ak, label %bb.s, label %bb.t, !prof !11

bb.s:                                             ; preds = %bb.r
  %i.al = add nuw i32 %.val.i.i.i, 1
  store i32 %i.al, ptr %0, align 4, !tbaa !10
  br label %lean_int_to_nat.exit.sink.split.i

bb.t:                                             ; preds = %bb.r
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %lean_int_to_nat.exit.sink.split.i, label %bb.u

bb.u:                                             ; preds = %bb.t
end_hunk_2
begin_hunk_3_@l_Std_Time_Internal_Bounded_LE_subBounds:bb.a
  %i.ae = icmp sgt i32 %i.ad, 1
  br i1 %i.ae, label %bb.k, label %bb.l, !prof !11

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.ad, -1
  store i32 %i.af, ptr %.0.i, align 4, !tbaa !10
  br label %lean_dec.exit

bb.l:                                             ; preds = %bb.j
  %.not.i5 = icmp eq i32 %i.ad, 0
  br i1 %.not.i5, label %lean_dec.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.i, %bb.h, %bb.m, %bb.l, %bb.k, %lean_int_add.exit
  %.0.i816 = phi ptr [ %i.ab, %lean_int_add.exit ], [ %i.ac, %bb.m ], [ %i.ac, %bb.l ], [ %i.ac, %bb.k ], [ %i.aa, %bb.i ], [ %i.z, %bb.h ]
  ret ptr %.0.i816
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_Time_Internal_Bounded_LE_subBounds___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Std_Time_Internal_Bounded_LE_subBounds(ptr poison, ptr poison, ptr poison, ptr poison, ptr noundef %4, ptr noundef %5)
  %i.b = ptrtoint ptr %5 to i64
  %i.c = and i64 %i.b, 1
  %.not.i21 = icmp eq i64 %i.c, 0
  br i1 %.not.i21, label %bb.b, label %lean_dec.exit22

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %5, align 4, !tbaa !10     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %5, align 4, !tbaa !10
  br label %lean_dec.exit22

bb.d:                                             ; preds = %bb.b
  %.not.i23 = icmp eq i32 %i.d, 0
  br i1 %.not.i23, label %lean_dec.exit22, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #7
  br label %lean_dec.exit22

lean_dec.exit22:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.g = ptrtoint ptr %4 to i64
  %i.h = and i64 %i.g, 1
  %.not.i19 = icmp eq i64 %i.h, 0
  br i1 %.not.i19, label %bb.f, label %lean_dec.exit20

bb.f:                                             ; preds = %lean_dec.exit22
  %i.i = load i32, ptr %4, align 4, !tbaa !10     ; 3 uses
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %bb.g, label %bb.h, !prof !11

bb.g:                                             ; preds = %bb.f
  %i.k = add nsw i32 %i.i, -1
  store i32 %i.k, ptr %4, align 4, !tbaa !10
  br label %lean_dec.exit20

bb.h:                                             ; preds = %bb.f
  %.not.i24 = icmp eq i32 %i.i, 0
  br i1 %.not.i24, label %lean_dec.exit20, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #7
  br label %lean_dec.exit20

lean_dec.exit20:                                  ; preds = %bb.i, %bb.h, %bb.g, %lean_dec.exit22
  %i.l = ptrtoint ptr %3 to i64
  %i.m = and i64 %i.l, 1
  %.not.i17 = icmp eq i64 %i.m, 0
  br i1 %.not.i17, label %bb.j, label %lean_dec.exit18

bb.j:                                             ; preds = %lean_dec.exit20
  %i.n = load i32, ptr %3, align 4, !tbaa !10     ; 3 uses
  %i.o = icmp sgt i32 %i.n, 1
  br i1 %i.o, label %bb.k, label %bb.l, !prof !11

bb.k:                                             ; preds = %bb.j
  %i.p = add nsw i32 %i.n, -1
  store i32 %i.p, ptr %3, align 4, !tbaa !10
  br label %lean_dec.exit18

bb.l:                                             ; preds = %bb.j
  %.not.i26 = icmp eq i32 %i.n, 0
  br i1 %.not.i26, label %lean_dec.exit18, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #7
  br label %lean_dec.exit18

lean_dec.exit18:                                  ; preds = %bb.m, %bb.l, %bb.k, %lean_dec.exit20
  %i.q = ptrtoint ptr %2 to i64
  %i.r = and i64 %i.q, 1
  %.not.i15 = icmp eq i64 %i.r, 0
  br i1 %.not.i15, label %bb.n, label %lean_dec.exit16

bb.n:                                             ; preds = %lean_dec.exit18
  %i.s = load i32, ptr %2, align 4, !tbaa !10     ; 3 uses
  %i.t = icmp sgt i32 %i.s, 1
  br i1 %i.t, label %bb.o, label %bb.p, !prof !11

bb.o:                                             ; preds = %bb.n
  %i.u = add nsw i32 %i.s, -1
  store i32 %i.u, ptr %2, align 4, !tbaa !10
  br label %lean_dec.exit16

bb.p:                                             ; preds = %bb.n
  %.not.i28 = icmp eq i32 %i.s, 0
  br i1 %.not.i28, label %lean_dec.exit16, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #7
  br label %lean_dec.exit16

lean_dec.exit16:                                  ; preds = %bb.q, %bb.p, %bb.o, %lean_dec.exit18
  %i.v = ptrtoint ptr %1 to i64
  %i.w = and i64 %i.v, 1
  %.not.i13 = icmp eq i64 %i.w, 0
  br i1 %.not.i13, label %bb.r, label %lean_dec.exit14

bb.r:                                             ; preds = %lean_dec.exit16
  %i.x = load i32, ptr %1, align 4, !tbaa !10     ; 3 uses
  %i.y = icmp sgt i32 %i.x, 1
  br i1 %i.y, label %bb.s, label %bb.t, !prof !11

bb.s:                                             ; preds = %bb.r
  %i.z = add nsw i32 %i.x, -1
  store i32 %i.z, ptr %1, align 4, !tbaa !10
  br label %lean_dec.exit14

bb.t:                                             ; preds = %bb.r
  %.not.i30 = icmp eq i32 %i.x, 0
  br i1 %.not.i30, label %lean_dec.exit14, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec.exit14

lean_dec.exit14:                                  ; preds = %bb.u, %bb.t, %bb.s, %lean_dec.exit16
  %i.aa = ptrtoint ptr %0 to i64
  %i.ab = and i64 %i.aa, 1
  %.not.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i, label %bb.v, label %lean_dec.exit

bb.v:                                             ; preds = %lean_dec.exit14
  %i.ac = load i32, ptr %0, align 4, !tbaa !10    ; 3 uses
  %i.ad = icmp sgt i32 %i.ac, 1
  br i1 %i.ad, label %bb.w, label %bb.x, !prof !11

bb.w:                                             ; preds = %bb.v
  %i.ae = add nsw i32 %i.ac, -1
  store i32 %i.ae, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit

bb.x:                                             ; preds = %bb.v
  %.not.i32 = icmp eq i32 %i.ac, 0
  br i1 %.not.i32, label %lean_dec.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.y, %bb.x, %bb.w, %lean_dec.exit14
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_Time_Internal_Bounded_LE_emod___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %.critedge.i, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = and i64 %i.c, 1
  %.not21.i = icmp eq i64 %i.d, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.c, !prof !17

bb.c:                                             ; preds = %bb.b
  %i.e = shl i64 %i.c, 31
  %i.f = ashr i64 %i.e, 32                        ; 3 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %lean_int_emod.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = shl i64 %i.a, 31
  %i.i = ashr i64 %i.h, 32
  %i.j = srem i64 %i.i, %i.f                      ; 2 uses
  %i.k = icmp slt i64 %i.j, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.f, i1 true)
  %i.l = select i1 %i.k, i64 %.p.i, i64 0
  %.0.i = add nsw i64 %i.l, %i.j                  ; 3 uses
  %2 = icmp ult i64 %.0.i, 2147483648
  br i1 %2, label %bb.e, label %bb.f, !prof !11

bb.e:                                             ; preds = %bb.d
  %i.m = shl nuw nsw i64 %.0.i, 1
  %i.n = or disjoint i64 %i.m, 1
  %i.o = inttoptr i64 %i.n to ptr
  br label %lean_int_emod.exit

bb.f:                                             ; preds = %bb.d
  %i.p = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i) #7
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.b, %bb.a
  %i.q = tail call ptr @lean_int_big_emod(ptr noundef %0, ptr noundef %1) #7
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.c, %bb.e, %bb.f, %.critedge.i
  %.1.i = phi ptr [ %i.q, %.critedge.i ], [ %0, %bb.c ], [ %i.o, %bb.e ], [ %i.p, %bb.f ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_Time_Internal_Bounded_LE_emod___redArg___boxed(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0                 ; 2 uses
  %.pre12 = ptrtoint ptr %1 to i64                ; 2 uses
  %.pre = and i64 %.pre12, 1
  %i.c = icmp eq i64 %.pre, 0                     ; 2 uses
  br i1 %.not.i.i, label %l_Std_Time_Internal_Bounded_LE_emod___redArg.exit, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %l_Std_Time_Internal_Bounded_LE_emod___redArg.exit.thread21, label %bb.c, !prof !17

l_Std_Time_Internal_Bounded_LE_emod___redArg.exit.thread21: ; preds = %bb.b
  %i.d = tail call ptr @lean_int_big_emod(ptr noundef %0, ptr noundef %1) #7
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.e = shl i64 %.pre12, 31
  %i.f = ashr i64 %i.e, 32                        ; 3 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %lean_dec.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = shl i64 %i.a, 31
  %i.i = ashr i64 %i.h, 32
  %i.j = srem i64 %i.i, %i.f                      ; 2 uses
  %i.k = icmp slt i64 %i.j, 0
  %.p.i.i = tail call i64 @llvm.abs.i64(i64 %i.f, i1 true)
  %i.l = select i1 %i.k, i64 %.p.i.i, i64 0
  %.0.i.i = add nsw i64 %i.l, %i.j                ; 3 uses
  %2 = icmp ult i64 %.0.i.i, 2147483648
  br i1 %2, label %bb.e, label %bb.f, !prof !11

bb.e:                                             ; preds = %bb.d
  %i.m = shl nuw nsw i64 %.0.i.i, 1
  %i.n = or disjoint i64 %i.m, 1
  %i.o = inttoptr i64 %i.n to ptr
  br label %lean_dec.exit

bb.f:                                             ; preds = %bb.d
  %i.p = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i.i) #7
  br label %lean_dec.exit

l_Std_Time_Internal_Bounded_LE_emod___redArg.exit: ; preds = %bb.a
  %i.q = tail call ptr @lean_int_big_emod(ptr noundef %0, ptr noundef %1) #7 ; 2 uses
  br i1 %i.c, label %bb.g, label %lean_dec.exit6.thread

bb.g:                                             ; preds = %l_Std_Time_Internal_Bounded_LE_emod___redArg.exit.thread21, %l_Std_Time_Internal_Bounded_LE_emod___redArg.exit
  %i.r = phi ptr [ %i.d, %l_Std_Time_Internal_Bounded_LE_emod___redArg.exit.thread21 ], [ %i.q, %l_Std_Time_Internal_Bounded_LE_emod___redArg.exit ] ; 2 uses
  %i.s = load i32, ptr %1, align 4, !tbaa !10     ; 3 uses
  %i.t = icmp sgt i32 %i.s, 1
  br i1 %i.t, label %bb.h, label %bb.i, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.u = add nsw i32 %i.s, -1
  store i32 %i.u, ptr %1, align 4, !tbaa !10
  br label %lean_dec.exit6

bb.i:                                             ; preds = %bb.g
  %.not.i7 = icmp eq i32 %i.s, 0
  br i1 %.not.i7, label %lean_dec.exit6, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec.exit6

lean_dec.exit6:                                   ; preds = %bb.j, %bb.i, %bb.h
  br i1 %.not.i.i, label %lean_dec.exit6.thread, label %lean_dec.exit

lean_dec.exit6.thread:                            ; preds = %l_Std_Time_Internal_Bounded_LE_emod___redArg.exit, %lean_dec.exit6
  %.1.i.i2025 = phi ptr [ %i.r, %lean_dec.exit6 ], [ %i.q, %l_Std_Time_Internal_Bounded_LE_emod___redArg.exit ] ; 3 uses
  %i.v = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.w = icmp sgt i32 %i.v, 1
  br i1 %i.w, label %bb.k, label %bb.l, !prof !11

bb.k:                                             ; preds = %lean_dec.exit6.thread
  %i.x = add nsw i32 %i.v, -1
  store i32 %i.x, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit

bb.l:                                             ; preds = %lean_dec.exit6.thread
  %.not.i8 = icmp eq i32 %i.v, 0
  br i1 %.not.i8, label %lean_dec.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.c, %bb.e, %bb.f, %bb.m, %bb.l, %bb.k, %lean_dec.exit6
  %.1.i.i2024 = phi ptr [ %.1.i.i2025, %bb.m ], [ %.1.i.i2025, %bb.l ], [ %.1.i.i2025, %bb.k ], [ %i.r, %lean_dec.exit6 ], [ %i.p, %bb.f ], [ %i.o, %bb.e ], [ %0, %bb.c ]
  ret ptr %.1.i.i2024
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_Time_Internal_Bounded_LE_emod(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readnone captures(none) %4) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %.critedge.i, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.d = and i64 %i.c, 1
  %.not21.i = icmp eq i64 %i.d, 0
  br i1 %.not21.i, label %.critedge.i, label %bb.c, !prof !17

bb.c:                                             ; preds = %bb.b
  %i.e = shl i64 %i.c, 31
  %i.f = ashr i64 %i.e, 32                        ; 3 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %lean_int_emod.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = shl i64 %i.a, 31
  %i.i = ashr i64 %i.h, 32
  %i.j = srem i64 %i.i, %i.f                      ; 2 uses
  %i.k = icmp slt i64 %i.j, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.f, i1 true)
  %i.l = select i1 %i.k, i64 %.p.i, i64 0
  %.0.i = add nsw i64 %i.l, %i.j                  ; 3 uses
  %5 = icmp ult i64 %.0.i, 2147483648
  br i1 %5, label %bb.e, label %bb.f, !prof !11

bb.e:                                             ; preds = %bb.d
  %i.m = shl nuw nsw i64 %.0.i, 1
  %i.n = or disjoint i64 %i.m, 1
  %i.o = inttoptr i64 %i.n to ptr
  br label %lean_int_emod.exit

bb.f:                                             ; preds = %bb.d
  %i.p = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i) #7
  br label %lean_int_emod.exit

.critedge.i:                                      ; preds = %bb.b, %bb.a
  %i.q = tail call ptr @lean_int_big_emod(ptr noundef %2, ptr noundef %3) #7
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.c, %bb.e, %bb.f, %.critedge.i
  %.1.i = phi ptr [ %i.q, %.critedge.i ], [ %2, %bb.c ], [ %i.o, %bb.e ], [ %i.p, %bb.f ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_Time_Internal_Bounded_LE_emod___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readnone captures(none) %4) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0                 ; 2 uses
  %.pre25 = ptrtoint ptr %3 to i64                ; 2 uses
  %.pre = and i64 %.pre25, 1
  %i.c = icmp eq i64 %.pre, 0                     ; 2 uses
  br i1 %.not.i.i, label %l_Std_Time_Internal_Bounded_LE_emod.exit, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %l_Std_Time_Internal_Bounded_LE_emod.exit.thread38, label %bb.c, !prof !17

l_Std_Time_Internal_Bounded_LE_emod.exit.thread38: ; preds = %bb.b
  %i.d = tail call ptr @lean_int_big_emod(ptr noundef %2, ptr noundef %3) #7
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.e = shl i64 %.pre25, 31
  %i.f = ashr i64 %i.e, 32                        ; 3 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %lean_dec.exit13, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = shl i64 %i.a, 31
  %i.i = ashr i64 %i.h, 32
  %i.j = srem i64 %i.i, %i.f                      ; 2 uses
  %i.k = icmp slt i64 %i.j, 0
  %.p.i.i = tail call i64 @llvm.abs.i64(i64 %i.f, i1 true)
  %i.l = select i1 %i.k, i64 %.p.i.i, i64 0
  %.0.i.i = add nsw i64 %i.l, %i.j                ; 3 uses
  %5 = icmp ult i64 %.0.i.i, 2147483648
  br i1 %5, label %bb.e, label %bb.f, !prof !11

bb.e:                                             ; preds = %bb.d
  %i.m = shl nuw nsw i64 %.0.i.i, 1
  %i.n = or disjoint i64 %i.m, 1
  %i.o = inttoptr i64 %i.n to ptr
  br label %lean_dec.exit13

bb.f:                                             ; preds = %bb.d
  %i.p = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i.i) #7
  br label %lean_dec.exit13

l_Std_Time_Internal_Bounded_LE_emod.exit:         ; preds = %bb.a
  %i.q = tail call ptr @lean_int_big_emod(ptr noundef %2, ptr noundef %3) #7 ; 2 uses
  br i1 %i.c, label %bb.g, label %lean_dec.exit15.thread

bb.g:                                             ; preds = %l_Std_Time_Internal_Bounded_LE_emod.exit.thread38, %l_Std_Time_Internal_Bounded_LE_emod.exit
  %i.r = phi ptr [ %i.d, %l_Std_Time_Internal_Bounded_LE_emod.exit.thread38 ], [ %i.q, %l_Std_Time_Internal_Bounded_LE_emod.exit ] ; 2 uses
  %i.s = load i32, ptr %3, align 4, !tbaa !10     ; 3 uses
  %i.t = icmp sgt i32 %i.s, 1
  br i1 %i.t, label %bb.h, label %bb.i, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.u = add nsw i32 %i.s, -1
  store i32 %i.u, ptr %3, align 4, !tbaa !10
  br label %lean_dec.exit15

bb.i:                                             ; preds = %bb.g
  %.not.i16 = icmp eq i32 %i.s, 0
  br i1 %.not.i16, label %lean_dec.exit15, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #7
  br label %lean_dec.exit15

lean_dec.exit15:                                  ; preds = %bb.j, %bb.i, %bb.h
  br i1 %.not.i.i, label %lean_dec.exit15.thread, label %lean_dec.exit13

lean_dec.exit15.thread:                           ; preds = %l_Std_Time_Internal_Bounded_LE_emod.exit, %lean_dec.exit15
  %.1.i.i3742 = phi ptr [ %i.r, %lean_dec.exit15 ], [ %i.q, %l_Std_Time_Internal_Bounded_LE_emod.exit ] ; 3 uses
  %i.v = load i32, ptr %2, align 4, !tbaa !10     ; 3 uses
  %i.w = icmp sgt i32 %i.v, 1
  br i1 %i.w, label %bb.k, label %bb.l, !prof !11

bb.k:                                             ; preds = %lean_dec.exit15.thread
  %i.x = add nsw i32 %i.v, -1
  store i32 %i.x, ptr %2, align 4, !tbaa !10
  br label %lean_dec.exit13

bb.l:                                             ; preds = %lean_dec.exit15.thread
  %.not.i17 = icmp eq i32 %i.v, 0
  br i1 %.not.i17, label %lean_dec.exit13, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #7
  br label %lean_dec.exit13

lean_dec.exit13:                                  ; preds = %bb.c, %bb.e, %bb.f, %bb.m, %bb.l, %bb.k, %lean_dec.exit15
  %.1.i.i3741 = phi ptr [ %.1.i.i3742, %bb.m ], [ %.1.i.i3742, %bb.l ], [ %.1.i.i3742, %bb.k ], [ %i.r, %lean_dec.exit15 ], [ %i.p, %bb.f ], [ %i.o, %bb.e ], [ %2, %bb.c ]
  %i.y = ptrtoint ptr %1 to i64
  %i.z = and i64 %i.y, 1
  %.not.i10 = icmp eq i64 %i.z, 0
  br i1 %.not.i10, label %bb.n, label %lean_dec.exit11

bb.n:                                             ; preds = %lean_dec.exit13
  %i.aa = load i32, ptr %1, align 4, !tbaa !10    ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 1
  br i1 %i.ab, label %bb.o, label %bb.p, !prof !11

bb.o:                                             ; preds = %bb.n
  %i.ac = add nsw i32 %i.aa, -1
  store i32 %i.ac, ptr %1, align 4, !tbaa !10
  br label %lean_dec.exit11

bb.p:                                             ; preds = %bb.n
  %.not.i19 = icmp eq i32 %i.aa, 0
  br i1 %.not.i19, label %lean_dec.exit11, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec.exit11

lean_dec.exit11:                                  ; preds = %bb.q, %bb.p, %bb.o, %lean_dec.exit13
  %i.ad = ptrtoint ptr %0 to i64
  %i.ae = and i64 %i.ad, 1
  %.not.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i, label %bb.r, label %lean_dec.exit

bb.r:                                             ; preds = %lean_dec.exit11
  %i.af = load i32, ptr %0, align 4, !tbaa !10    ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 1
  br i1 %i.ag, label %bb.s, label %bb.t, !prof !11

bb.s:                                             ; preds = %bb.r
  %i.ah = add nsw i32 %i.af, -1
  store i32 %i.ah, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit

bb.t:                                             ; preds = %bb.r
  %.not.i21 = icmp eq i32 %i.af, 0
  br i1 %.not.i21, label %lean_dec.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.u, %bb.t, %bb.s, %lean_dec.exit11
  ret ptr %.1.i.i3741
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_Time_Internal_Bounded_LE_mod___redArg(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %.critedge.i, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = and i64 %i.c, 1
  %.not11.i = icmp eq i64 %i.d, 0
  br i1 %.not11.i, label %.critedge.i, label %bb.c, !prof !17

bb.c:                                             ; preds = %bb.b
  %i.e = shl i64 %i.c, 31
  %i.f = ashr i64 %i.e, 32                        ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %lean_int_mod.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = shl i64 %i.a, 31
  %i.i = ashr i64 %i.h, 32
  %i.j = srem i64 %i.i, %i.f
  %i.k = shl nsw i64 %i.j, 1
  %i.l = and i64 %i.k, 8589934590
  %i.m = or disjoint i64 %i.l, 1
  %i.n = inttoptr i64 %i.m to ptr
  br label %lean_int_mod.exit

.critedge.i:                                      ; preds = %bb.b, %bb.a
  %i.o = tail call ptr @lean_int_big_mod(ptr noundef %0, ptr noundef %1) #7
  br label %lean_int_mod.exit

lean_int_mod.exit:                                ; preds = %bb.c, %bb.d, %.critedge.i
  %.1.i = phi ptr [ %i.o, %.critedge.i ], [ %0, %bb.c ], [ %i.n, %bb.d ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_Time_Internal_Bounded_LE_mod___redArg___boxed(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i.i = icmp eq i64 %i.b, 0                 ; 2 uses
  %.pre12 = ptrtoint ptr %1 to i64                ; 2 uses
  %.pre = and i64 %.pre12, 1
  %i.c = icmp eq i64 %.pre, 0                     ; 2 uses
  br i1 %.not.i.i, label %l_Std_Time_Internal_Bounded_LE_mod___redArg.exit, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %l_Std_Time_Internal_Bounded_LE_mod___redArg.exit.thread21, label %bb.c, !prof !17

l_Std_Time_Internal_Bounded_LE_mod___redArg.exit.thread21: ; preds = %bb.b
  %i.d = tail call ptr @lean_int_big_mod(ptr noundef %0, ptr noundef %1) #7
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = shl i64 %.pre12, 31
  %i.f = ashr i64 %i.e, 32                        ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %lean_dec.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = shl i64 %i.a, 31
  %i.i = ashr i64 %i.h, 32
  %i.j = srem i64 %i.i, %i.f
  %i.k = shl nsw i64 %i.j, 1
  %i.l = and i64 %i.k, 8589934590
  %i.m = or disjoint i64 %i.l, 1
  %i.n = inttoptr i64 %i.m to ptr
  br label %lean_dec.exit

l_Std_Time_Internal_Bounded_LE_mod___redArg.exit: ; preds = %bb.a
  %i.o = tail call ptr @lean_int_big_mod(ptr noundef %0, ptr noundef %1) #7 ; 2 uses
  br i1 %i.c, label %bb.e, label %lean_dec.exit6.thread

bb.e:                                             ; preds = %l_Std_Time_Internal_Bounded_LE_mod___redArg.exit.thread21, %l_Std_Time_Internal_Bounded_LE_mod___redArg.exit
  %i.p = phi ptr [ %i.d, %l_Std_Time_Internal_Bounded_LE_mod___redArg.exit.thread21 ], [ %i.o, %l_Std_Time_Internal_Bounded_LE_mod___redArg.exit ] ; 2 uses
  %i.q = load i32, ptr %1, align 4, !tbaa !10     ; 3 uses
  %i.r = icmp sgt i32 %i.q, 1
  br i1 %i.r, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %bb.e
  %i.s = add nsw i32 %i.q, -1
  store i32 %i.s, ptr %1, align 4, !tbaa !10
  br label %lean_dec.exit6

bb.g:                                             ; preds = %bb.e
  %.not.i7 = icmp eq i32 %i.q, 0
  br i1 %.not.i7, label %lean_dec.exit6, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec.exit6
end_hunk_3
