Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/Year?download=true
inline.NumInlined: 273
inline.NumDeleted: 46
begin_hunk_0_@l_Std_Time_Year_Offset_weeks___lam__0:bb.a
  br i1 %i.cq, label %bb.ae, label %bb.af, !prof !11

bb.ae:                                            ; preds = %lean_dec.exit28.thread
  %i.cr = add nsw i32 %i.cp, -1
  store i32 %i.cr, ptr %.0.i45, align 4, !tbaa !10
  br label %lean_dec.exit26

bb.af:                                            ; preds = %lean_dec.exit28.thread
  %.not.i34 = icmp eq i32 %i.cp, 0
  br i1 %.not.i34, label %lean_dec.exit26, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i45) #6
  br label %lean_dec.exit26

lean_dec.exit26:                                  ; preds = %bb.y, %bb.z, %bb.ag, %bb.af, %bb.ae, %lean_dec.exit28
  %.0.i59119123 = phi ptr [ %.0.i59119124, %bb.ag ], [ %.0.i59119124, %bb.af ], [ %.0.i59119124, %bb.ae ], [ %i.cl, %lean_dec.exit28 ], [ %i.cj, %bb.z ], [ %i.ci, %bb.y ] ; 6 uses
  %i.cs = load atomic i32, ptr @l_Std_Time_Year_Offset_isLeap___closed__1_once seq_cst, align 4, !tbaa !15
  %i.ct = icmp eq i32 %i.cs, 1
  br i1 %i.ct, label %bb.ah, label %bb.ai, !prof !11

bb.ah:                                            ; preds = %lean_dec.exit26
  %i.cu = load ptr, ptr @l_Std_Time_Year_Offset_isLeap___closed__1, align 8, !tbaa !17
  br label %lean_obj_once.exit62

bb.ai:                                            ; preds = %lean_dec.exit26
  %i.cv = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Year_Offset_isLeap___closed__1, ptr noundef nonnull @l_Std_Time_Year_Offset_isLeap___closed__1_once, ptr noundef nonnull @_init_l_Std_Time_Year_Offset_isLeap___closed__1) #6
  br label %lean_obj_once.exit62

lean_obj_once.exit62:                             ; preds = %bb.ah, %bb.ai
  %.0.i61 = phi ptr [ %i.cu, %bb.ah ], [ %i.cv, %bb.ai ] ; 2 uses
  br i1 %.not.i42, label %.critedge.i69, label %bb.aj, !prof !13

bb.aj:                                            ; preds = %lean_obj_once.exit62
  %i.cw = ptrtoint ptr %.0.i61 to i64             ; 2 uses
  %i.cx = and i64 %i.cw, 1
  %.not18.i64 = icmp eq i64 %i.cx, 0
  br i1 %.not18.i64, label %.critedge.i69, label %bb.ak, !prof !13

bb.ak:                                            ; preds = %bb.aj
  %i.cy = lshr i64 %i.cw, 1                       ; 2 uses
  %i.cz = trunc i64 %i.cy to i32                  ; 2 uses
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %lean_int_ediv.exit70, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %sext.i65 = shl i64 %i.cy, 32
  %i.db = ashr exact i64 %sext.i65, 32            ; 2 uses
  %i.dc = shl i64 %i.e, 31
  %i.dd = ashr i64 %i.dc, 32                      ; 2 uses
  %i.de = sdiv i64 %i.dd, %i.db
  %i.df = srem i64 %i.dd, %i.db
  %i.dg = icmp slt i64 %i.df, 0
  %i.dh = icmp sgt i32 %i.cz, 0
  %.v.i66 = select i1 %i.dh, i64 -1, i64 1
  %i.di = select i1 %i.dg, i64 %.v.i66, i64 0
  %.0.i67 = add nsw i64 %i.di, %i.de              ; 3 uses
  %i.dj = add nsw i64 %.0.i67, 2147483648
  %i.dk = icmp ult i64 %i.dj, 4294967296
  br i1 %i.dk, label %bb.am, label %bb.an, !prof !11

bb.am:                                            ; preds = %bb.al
  %i.dl = shl nsw i64 %.0.i67, 1
  %i.dm = and i64 %i.dl, 8589934590
  %i.dn = or disjoint i64 %i.dm, 1
  %i.do = inttoptr i64 %i.dn to ptr
  br label %lean_int_ediv.exit70

bb.an:                                            ; preds = %bb.al
  %i.dp = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i67) #6
  br label %lean_int_ediv.exit70

.critedge.i69:                                    ; preds = %bb.aj, %lean_obj_once.exit62
  %i.dq = tail call ptr @lean_int_big_ediv(ptr noundef %0, ptr noundef %.0.i61) #6
  br label %lean_int_ediv.exit70

lean_int_ediv.exit70:                             ; preds = %bb.ak, %bb.am, %bb.an, %.critedge.i69
  %.1.i68 = phi ptr [ %i.dq, %.critedge.i69 ], [ inttoptr (i64 1 to ptr), %bb.ak ], [ %i.do, %bb.am ], [ %i.dp, %bb.an ] ; 6 uses
  %i.dr = ptrtoint ptr %.0.i59119123 to i64       ; 2 uses
  %i.ds = and i64 %i.dr, 1
  %.not.i71 = icmp eq i64 %i.ds, 0                ; 2 uses
  %.pre97 = ptrtoint ptr %.1.i68 to i64           ; 2 uses
  %.pre98 = and i64 %.pre97, 1
  %i.dt = icmp eq i64 %.pre98, 0                  ; 2 uses
  br i1 %.not.i71, label %lean_int_add.exit75, label %bb.ao, !prof !13

bb.ao:                                            ; preds = %lean_int_ediv.exit70
  br i1 %i.dt, label %lean_int_add.exit75.thread130, label %bb.ap, !prof !13

lean_int_add.exit75.thread130:                    ; preds = %bb.ao
  %i.du = tail call ptr @lean_int_big_add(ptr noundef %.0.i59119123, ptr noundef %.1.i68) #6
  br label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.dv = shl i64 %i.dr, 31
  %i.dw = ashr i64 %i.dv, 32
  %i.dx = shl i64 %.pre97, 31
  %i.dy = ashr i64 %i.dx, 32
  %i.dz = add nsw i64 %i.dy, %i.dw                ; 3 uses
  %i.ea = add nsw i64 %i.dz, 2147483648
  %i.eb = icmp ult i64 %i.ea, 4294967296
  br i1 %i.eb, label %bb.aq, label %bb.ar, !prof !11

bb.aq:                                            ; preds = %bb.ap
  %i.ec = shl nsw i64 %i.dz, 1
  %i.ed = and i64 %i.ec, 8589934590
  %i.ee = or disjoint i64 %i.ed, 1
  %i.ef = inttoptr i64 %i.ee to ptr
  br label %lean_dec.exit22

bb.ar:                                            ; preds = %bb.ap
  %i.eg = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.dz) #6
  br label %lean_dec.exit22

lean_int_add.exit75:                              ; preds = %lean_int_ediv.exit70
  %i.eh = tail call ptr @lean_int_big_add(ptr noundef %.0.i59119123, ptr noundef %.1.i68) #6 ; 2 uses
  br i1 %i.dt, label %bb.as, label %lean_dec.exit24.thread

bb.as:                                            ; preds = %lean_int_add.exit75.thread130, %lean_int_add.exit75
  %i.ei = phi ptr [ %i.du, %lean_int_add.exit75.thread130 ], [ %i.eh, %lean_int_add.exit75 ] ; 2 uses
  %i.ej = load i32, ptr %.1.i68, align 4, !tbaa !10 ; 3 uses
  %i.ek = icmp sgt i32 %i.ej, 1
  br i1 %i.ek, label %bb.at, label %bb.au, !prof !11

bb.at:                                            ; preds = %bb.as
  %i.el = add nsw i32 %i.ej, -1
  store i32 %i.el, ptr %.1.i68, align 4, !tbaa !10
  br label %lean_dec.exit24

bb.au:                                            ; preds = %bb.as
  %.not.i36 = icmp eq i32 %i.ej, 0
  br i1 %.not.i36, label %lean_dec.exit24, label %bb.av

bb.av:                                            ; preds = %bb.au
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i68) #6
  br label %lean_dec.exit24

lean_dec.exit24:                                  ; preds = %bb.av, %bb.au, %bb.at
  br i1 %.not.i71, label %lean_dec.exit24.thread, label %lean_dec.exit22

lean_dec.exit24.thread:                           ; preds = %lean_int_add.exit75, %lean_dec.exit24
  %.0.i73129134 = phi ptr [ %i.ei, %lean_dec.exit24 ], [ %i.eh, %lean_int_add.exit75 ] ; 3 uses
  %i.em = load i32, ptr %.0.i59119123, align 4, !tbaa !10 ; 3 uses
  %i.en = icmp sgt i32 %i.em, 1
  br i1 %i.en, label %bb.aw, label %bb.ax, !prof !11

bb.aw:                                            ; preds = %lean_dec.exit24.thread
  %i.eo = add nsw i32 %i.em, -1
  store i32 %i.eo, ptr %.0.i59119123, align 4, !tbaa !10
  br label %lean_dec.exit22

bb.ax:                                            ; preds = %lean_dec.exit24.thread
  %.not.i38 = icmp eq i32 %i.em, 0
  br i1 %.not.i38, label %lean_dec.exit22, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i59119123) #6
  br label %lean_dec.exit22

lean_dec.exit22:                                  ; preds = %bb.aq, %bb.ar, %bb.ay, %bb.ax, %bb.aw, %lean_dec.exit24
  %.0.i73129133 = phi ptr [ %.0.i73129134, %bb.ay ], [ %.0.i73129134, %bb.ax ], [ %.0.i73129134, %bb.aw ], [ %i.ei, %lean_dec.exit24 ], [ %i.eg, %bb.ar ], [ %i.ef, %bb.aq ] ; 7 uses
  %i.ep = load atomic i32, ptr @l_Std_Time_Year_Offset_weeks___lam__0___closed__0_once seq_cst, align 4, !tbaa !15
  %i.eq = icmp eq i32 %i.ep, 1
  br i1 %i.eq, label %bb.az, label %bb.ba, !prof !11

bb.az:                                            ; preds = %lean_dec.exit22
  %i.er = load ptr, ptr @l_Std_Time_Year_Offset_weeks___lam__0___closed__0, align 8, !tbaa !17
  br label %lean_obj_once.exit77

bb.ba:                                            ; preds = %lean_dec.exit22
  %i.es = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Year_Offset_weeks___lam__0___closed__0, ptr noundef nonnull @l_Std_Time_Year_Offset_weeks___lam__0___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Year_Offset_weeks___lam__0___closed__0) #6
  br label %lean_obj_once.exit77

lean_obj_once.exit77:                             ; preds = %bb.az, %bb.ba
  %.0.i76 = phi ptr [ %i.er, %bb.az ], [ %i.es, %bb.ba ] ; 3 uses
  %i.et = ptrtoint ptr %.0.i73129133 to i64       ; 2 uses
  %i.eu = and i64 %i.et, 1
  %.not.i78 = icmp eq i64 %i.eu, 0
  br i1 %.not.i78, label %bb.bg, label %bb.bb, !prof !13

bb.bb:                                            ; preds = %lean_obj_once.exit77
  %i.ev = ptrtoint ptr %.0.i76 to i64             ; 2 uses
  %i.ew = and i64 %i.ev, 1
  %.not21.i = icmp eq i64 %i.ew, 0
  br i1 %.not21.i, label %lean_int_emod.exit, label %bb.bc, !prof !13

bb.bc:                                            ; preds = %bb.bb
  %i.ex = shl i64 %i.ev, 31
  %i.ey = ashr i64 %i.ex, 32                      ; 3 uses
  %i.ez = icmp eq i64 %i.ey, 0
  br i1 %i.ez, label %lean_dec.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fa = shl i64 %i.et, 31
  %i.fb = ashr i64 %i.fa, 32
  %i.fc = srem i64 %i.fb, %i.ey                   ; 2 uses
  %i.fd = icmp slt i64 %i.fc, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.ey, i1 true)
  %i.fe = select i1 %i.fd, i64 %.p.i, i64 0
  %.0.i79 = add nsw i64 %i.fe, %i.fc              ; 3 uses
  %1 = icmp ult i64 %.0.i79, 2147483648
  br i1 %1, label %bb.be, label %bb.bf, !prof !11

bb.be:                                            ; preds = %bb.bd
  %i.ff = shl nuw nsw i64 %.0.i79, 1
  %i.fg = or disjoint i64 %i.ff, 1
  %i.fh = inttoptr i64 %i.fg to ptr
  br label %lean_dec.exit

bb.bf:                                            ; preds = %bb.bd
  %i.fi = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i79) #6
  br label %lean_dec.exit

lean_int_emod.exit:                               ; preds = %bb.bb
  %i.fj = tail call ptr @lean_int_big_emod(ptr noundef %.0.i73129133, ptr noundef %.0.i76) #6
  br label %lean_dec.exit

bb.bg:                                            ; preds = %lean_obj_once.exit77
  %i.fk = tail call ptr @lean_int_big_emod(ptr noundef %.0.i73129133, ptr noundef %.0.i76) #6 ; 3 uses
  %i.fl = load i32, ptr %.0.i73129133, align 4, !tbaa !10 ; 3 uses
  %i.fm = icmp sgt i32 %i.fl, 1
  br i1 %i.fm, label %bb.bh, label %bb.bi, !prof !11

bb.bh:                                            ; preds = %bb.bg
  %i.fn = add nsw i32 %i.fl, -1
  store i32 %i.fn, ptr %.0.i73129133, align 4, !tbaa !10
  br label %lean_dec.exit

bb.bi:                                            ; preds = %bb.bg
  %.not.i40 = icmp eq i32 %i.fl, 0
  br i1 %.not.i40, label %lean_dec.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i73129133) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.bf, %bb.be, %bb.bc, %lean_int_emod.exit, %bb.bj, %bb.bi, %bb.bh
  %.1.i80138 = phi ptr [ %i.fj, %lean_int_emod.exit ], [ %i.fk, %bb.bj ], [ %i.fk, %bb.bi ], [ %i.fk, %bb.bh ], [ %i.fi, %bb.bf ], [ %i.fh, %bb.be ], [ %.0.i73129133, %bb.bc ]
  ret ptr %.1.i80138
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_init_l_Std_Time_Year_Offset_weeks___lam__0___closed__0() #0 {
bb.a:
  ret ptr inttoptr (i64 15 to ptr)
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_Time_Year_Offset_weeks___lam__0___boxed(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @l_Std_Time_Year_Offset_weeks___lam__0(ptr noundef %0)
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
  %.not.i3 = icmp eq i32 %i.d, 0
  br i1 %.not.i3, label %lean_dec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_Time_Year_Offset_weeks(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @l_Std_Time_Year_Offset_weeks___lam__0(ptr noundef %0) ; 6 uses
  %i.b = load atomic i32, ptr @l_Std_Time_Year_Offset_isLeap___closed__0_once seq_cst, align 4, !tbaa !15
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @l_Std_Time_Year_Offset_isLeap___closed__0, align 8, !tbaa !17
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Year_Offset_isLeap___closed__0, ptr noundef nonnull @l_Std_Time_Year_Offset_isLeap___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Year_Offset_isLeap___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.d, %bb.b ], [ %i.e, %bb.c ] ; 3 uses
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = ptrtoint ptr %.0.i to i64
  %i.h = and i64 %i.f, 1                          ; 2 uses
  %i.i = and i64 %i.h, %i.g
  %or.cond.not.i.i = icmp eq i64 %i.i, 0
  br i1 %or.cond.not.i.i, label %.critedge.i.i, label %bb.d, !prof !18

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.j = icmp eq ptr %i.a, %.0.i
  br label %lean_int_dec_eq.exit

.critedge.i.i:                                    ; preds = %lean_obj_once.exit
  %i.k = tail call zeroext i1 @lean_int_big_eq(ptr noundef %i.a, ptr noundef %.0.i) #6
  br label %lean_int_dec_eq.exit

lean_int_dec_eq.exit:                             ; preds = %bb.d, %.critedge.i.i
  %.0.i.i = phi i1 [ %i.j, %bb.d ], [ %i.k, %.critedge.i.i ]
  %.not.i23 = icmp eq i64 %i.h, 0
  br i1 %.not.i23, label %bb.e, label %lean_dec.exit24

bb.e:                                             ; preds = %lean_int_dec_eq.exit
  %i.l = load i32, ptr %i.a, align 4, !tbaa !10   ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %bb.e
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %i.a, align 4, !tbaa !10
  br label %lean_dec.exit24

bb.g:                                             ; preds = %bb.e
  %.not.i25 = icmp eq i32 %i.l, 0
  br i1 %.not.i25, label %lean_dec.exit24, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #6
  br label %lean_dec.exit24

lean_dec.exit24:                                  ; preds = %bb.h, %bb.g, %bb.f, %lean_int_dec_eq.exit
  br i1 %.0.i.i, label %lean_obj_once.exit41, label %bb.i

bb.i:                                             ; preds = %lean_dec.exit24
  %i.o = load atomic i32, ptr @l_Std_Time_Year_instReprEra_repr___closed__5_once seq_cst, align 4, !tbaa !15
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.j, label %bb.k, !prof !11

bb.j:                                             ; preds = %bb.i
  %i.q = load ptr, ptr @l_Std_Time_Year_instReprEra_repr___closed__5, align 8, !tbaa !17
  br label %lean_obj_once.exit31

bb.k:                                             ; preds = %bb.i
  %i.r = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Year_instReprEra_repr___closed__5, ptr noundef nonnull @l_Std_Time_Year_instReprEra_repr___closed__5_once, ptr noundef nonnull @_init_l_Std_Time_Year_instReprEra_repr___closed__5) #6
  br label %lean_obj_once.exit31

lean_obj_once.exit31:                             ; preds = %bb.j, %bb.k
  %.0.i30 = phi ptr [ %i.q, %bb.j ], [ %i.r, %bb.k ] ; 2 uses
  %i.s = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.t = and i64 %i.s, 1
  %.not.i32 = icmp eq i64 %i.t, 0
  br i1 %.not.i32, label %.critedge.i, label %bb.l, !prof !13

bb.l:                                             ; preds = %lean_obj_once.exit31
  %i.u = ptrtoint ptr %.0.i30 to i64              ; 2 uses
  %i.v = and i64 %i.u, 1
  %.not7.i = icmp eq i64 %i.v, 0
  br i1 %.not7.i, label %.critedge.i, label %bb.m, !prof !13

bb.m:                                             ; preds = %bb.l
  %i.w = shl i64 %i.s, 31
  %i.x = ashr i64 %i.w, 32
  %i.y = shl i64 %i.u, 31
  %i.z = ashr i64 %i.y, 32
  %i.aa = sub nsw i64 %i.x, %i.z                  ; 3 uses
  %i.ab = add nsw i64 %i.aa, 2147483648
  %i.ac = icmp ult i64 %i.ab, 4294967296
  br i1 %i.ac, label %bb.n, label %bb.o, !prof !11

bb.n:                                             ; preds = %bb.m
  %i.ad = shl nsw i64 %i.aa, 1
  %i.ae = and i64 %i.ad, 8589934590
  %i.af = or disjoint i64 %i.ae, 1
  %i.ag = inttoptr i64 %i.af to ptr
  br label %lean_int_sub.exit

bb.o:                                             ; preds = %bb.m
  %i.ah = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.aa) #6
  br label %lean_int_sub.exit

.critedge.i:                                      ; preds = %bb.l, %lean_obj_once.exit31
  %i.ai = tail call ptr @lean_int_big_sub(ptr noundef %0, ptr noundef %.0.i30) #6
  br label %lean_int_sub.exit

lean_int_sub.exit:                                ; preds = %bb.n, %bb.o, %.critedge.i
  %.0.i33 = phi ptr [ %i.ai, %.critedge.i ], [ %i.ag, %bb.n ], [ %i.ah, %bb.o ] ; 5 uses
  %i.aj = tail call ptr @l_Std_Time_Year_Offset_weeks___lam__0(ptr noundef %.0.i33) ; 6 uses
  %i.ak = ptrtoint ptr %.0.i33 to i64
  %i.al = and i64 %i.ak, 1
  %.not.i21 = icmp eq i64 %i.al, 0
  br i1 %.not.i21, label %bb.p, label %lean_dec.exit22

bb.p:                                             ; preds = %lean_int_sub.exit
  %i.am = load i32, ptr %.0.i33, align 4, !tbaa !10 ; 3 uses
  %i.an = icmp sgt i32 %i.am, 1
  br i1 %i.an, label %bb.q, label %bb.r, !prof !11

bb.q:                                             ; preds = %bb.p
  %i.ao = add nsw i32 %i.am, -1
  store i32 %i.ao, ptr %.0.i33, align 4, !tbaa !10
  br label %lean_dec.exit22

end_hunk_0
begin_hunk_1_@initialize_Std_Time_Date_Unit_Year:bb.a
.lr.ph:                                           ; preds = %bb.a
  store i1 true, ptr @_G_initialized, align 1
  %i.e = tail call ptr @initialize_Std_Time_Date_Unit_Month(i8 noundef zeroext %0) #6 ; 5 uses
  %i.f = getelementptr i8, ptr %i.e, i64 4
  %.val18 = load i32, ptr %i.f, align 4
  %.mask.i = and i32 %.val18, -16777216
  %i.g = icmp eq i32 %.mask.i, 16777216
  br i1 %i.g, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.h = load i32, ptr %i.e, align 4, !tbaa !10   ; 3 uses
  %i.i = icmp sgt i32 %i.h, 1
  br i1 %i.i, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.h, -1
  store i32 %i.j, ptr %i.e, align 4, !tbaa !10
  br label %lean_dec_ref.exit16

bb.e:                                             ; preds = %bb.c
  %.not.i15 = icmp eq i32 %i.h, 0
  br i1 %.not.i15, label %lean_dec_ref.exit16, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.e) #6
  br label %lean_dec_ref.exit16

lean_dec_ref.exit16:                              ; preds = %bb.d, %bb.e, %bb.f
  %i.k = tail call ptr @runtime_initialize_Std_Time_Date_Unit_Year(i8 noundef zeroext %0) ; 5 uses
  %i.l = getelementptr i8, ptr %i.k, i64 4
  %.val17 = load i32, ptr %i.l, align 4
  %.mask.i19 = and i32 %.val17, -16777216
  %i.m = icmp eq i32 %.mask.i19, 16777216
  br i1 %i.m, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %lean_dec_ref.exit16
  %i.n = load i32, ptr %i.k, align 4, !tbaa !10   ; 3 uses
  %i.o = icmp sgt i32 %i.n, 1
  br i1 %i.o, label %bb.h, label %bb.i, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.p = add nsw i32 %i.n, -1
  store i32 %i.p, ptr %i.k, align 4, !tbaa !10
  br label %lean_dec_ref.exit14

bb.i:                                             ; preds = %bb.g
  %.not.i13 = icmp eq i32 %i.n, 0
  br i1 %.not.i13, label %lean_dec_ref.exit14, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.k) #6
  br label %lean_dec_ref.exit14

lean_dec_ref.exit14:                              ; preds = %bb.h, %bb.i, %bb.j
  %.b.i = load i1, ptr @_G_meta_initialized, align 1
  br i1 %.b.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %lean_dec_ref.exit14
  tail call void @lean_inc_heartbeat() #6
  %i.q = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #6 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.l, label %lean_dec_ref.exit

bb.l:                                             ; preds = %bb.k
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

bb.m:                                             ; preds = %lean_dec_ref.exit14
  store i1 true, ptr @_G_meta_initialized, align 1
  tail call void @lean_inc_heartbeat() #6
  %i.s = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #6 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.n, label %lean_dec_ref.exit

bb.n:                                             ; preds = %bb.m
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_dec_ref.exit:                                ; preds = %bb.k, %bb.m
  %.sink6.i = phi ptr [ %i.q, %bb.k ], [ %i.s, %bb.m ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sink6.i, i64 4
  store i32 1, ptr %.sink6.i, align 4, !tbaa !10
  store i32 65552, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %.sink6.i, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.v, align 8, !tbaa !17
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.sink6.i) #6
  br label %tailrecurse._crit_edge

.loopexit:                                        ; preds = %lean_dec_ref.exit16, %.lr.ph, %lean_io_result_mk_ok.exit
  %.0 = phi ptr [ %i.a, %lean_io_result_mk_ok.exit ], [ %i.e, %.lr.ph ], [ %i.k, %lean_dec_ref.exit16 ]
  ret ptr %.0
}

declare ptr @initialize_Std_Time_Date_Unit_Month(i8 noundef zeroext) local_unnamed_addr #3

declare zeroext i1 @lean_int_big_lt(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i1 @lean_int_big_eq(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @lean_big_size_t_to_int(i64 noundef) local_unnamed_addr #3

declare ptr @lean_int_big_sub(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @lean_big_int64_to_int(i64 noundef) local_unnamed_addr #3

declare ptr @lean_int_big_add(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @lean_int_big_emod(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i1 @lean_int_big_le(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i1 @lean_nat_big_le(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @lean_int_big_mul(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @lean_int_big_neg(ptr noundef) local_unnamed_addr #3

declare ptr @lean_int_big_ediv(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @lean_int_big_mod(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @l_Int_add___boxed(ptr noundef, ptr noundef) #3

declare ptr @l_Int_sub___boxed(ptr noundef, ptr noundef) #3

declare ptr @l_Int_neg___boxed(ptr noundef) #3

declare ptr @l_Int_repr___boxed(ptr noundef) #3

declare ptr @lean_obj_once_cold(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @lean_inc_heartbeat() local_unnamed_addr #3

declare noalias ptr @mi_malloc_small(i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @lean_internal_panic_out_of_memory() local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_init_l_Std_Time_Year_Offset_days___closed__0() #0 {
bb.a:
  ret ptr inttoptr (i64 731 to ptr)
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Year_Offset_days___closed__6() #2 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Year_Offset_days___closed__3_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Year_Offset_days___closed__3, align 8, !tbaa !17
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Year_Offset_days___closed__3, ptr noundef nonnull @l_Std_Time_Year_Offset_days___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Year_Offset_days___closed__3) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Year_Offset_days___closed__5_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Year_Offset_days___closed__5, align 8, !tbaa !17
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Year_Offset_days___closed__5, ptr noundef nonnull @l_Std_Time_Year_Offset_days___closed__5_once, ptr noundef nonnull @_init_l_Std_Time_Year_Offset_days___closed__5) #6
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
define internal ptr @_init_l_Std_Time_Year_Offset_days___closed__3() #2 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Year_instReprEra_repr___closed__5_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Year_instReprEra_repr___closed__5, align 8, !tbaa !17
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Year_instReprEra_repr___closed__5, ptr noundef nonnull @l_Std_Time_Year_instReprEra_repr___closed__5_once, ptr noundef nonnull @_init_l_Std_Time_Year_instReprEra_repr___closed__5) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Year_Offset_days___closed__2_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Year_Offset_days___closed__2, align 8, !tbaa !17
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Year_Offset_days___closed__2, ptr noundef nonnull @l_Std_Time_Year_Offset_days___closed__2_once, ptr noundef nonnull @_init_l_Std_Time_Year_Offset_days___closed__2) #6
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
define internal ptr @_init_l_Std_Time_Year_Offset_days___closed__5() #2 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Year_Offset_days___closed__3_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Year_Offset_days___closed__3, align 8, !tbaa !17
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Year_Offset_days___closed__3, ptr noundef nonnull @l_Std_Time_Year_Offset_days___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Year_Offset_days___closed__3) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Year_Offset_days___closed__4_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Year_Offset_days___closed__4, align 8, !tbaa !17
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Year_Offset_days___closed__4, ptr noundef nonnull @l_Std_Time_Year_Offset_days___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_Year_Offset_days___closed__4) #6
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
define internal ptr @_init_l_Std_Time_Year_Offset_days___closed__2() #2 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Year_Offset_days___closed__0_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Year_Offset_days___closed__0, align 8, !tbaa !17
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Year_Offset_days___closed__0, ptr noundef nonnull @l_Std_Time_Year_Offset_days___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Year_Offset_days___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Year_Offset_days___closed__1_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Year_Offset_days___closed__1, align 8, !tbaa !17
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Year_Offset_days___closed__1, ptr noundef nonnull @l_Std_Time_Year_Offset_days___closed__1_once, ptr noundef nonnull @_init_l_Std_Time_Year_Offset_days___closed__1) #6
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
define internal noundef nonnull ptr @_init_l_Std_Time_Year_Offset_days___closed__1() #0 {
bb.a:
  ret ptr inttoptr (i64 733 to ptr)
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_Year_Offset_days___closed__4() #2 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Year_Offset_days___closed__3_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Year_Offset_days___closed__3, align 8, !tbaa !17
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Year_Offset_days___closed__3, ptr noundef nonnull @l_Std_Time_Year_Offset_days___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Year_Offset_days___closed__3) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Year_Offset_days___closed__2_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Year_Offset_days___closed__2, align 8, !tbaa !17
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Year_Offset_days___closed__2, ptr noundef nonnull @l_Std_Time_Year_Offset_days___closed__2_once, ptr noundef nonnull @_init_l_Std_Time_Year_Offset_days___closed__2) #6
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
define internal ptr @_init_l_Std_Time_Year_Offset_days___closed__12() #2 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Year_Offset_days___closed__3_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Year_Offset_days___closed__3, align 8, !tbaa !17
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Year_Offset_days___closed__3, ptr noundef nonnull @l_Std_Time_Year_Offset_days___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Year_Offset_days___closed__3) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Year_Offset_days___closed__11_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Year_Offset_days___closed__11, align 8, !tbaa !17
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Year_Offset_days___closed__11, ptr noundef nonnull @l_Std_Time_Year_Offset_days___closed__11_once, ptr noundef nonnull @_init_l_Std_Time_Year_Offset_days___closed__11) #6
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
define internal ptr @_init_l_Std_Time_Year_Offset_days___closed__11() #2 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Year_Offset_days___closed__3_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Year_Offset_days___closed__3, align 8, !tbaa !17
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Year_Offset_days___closed__3, ptr noundef nonnull @l_Std_Time_Year_Offset_days___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Year_Offset_days___closed__3) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Year_Offset_days___closed__10_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Year_Offset_days___closed__10, align 8, !tbaa !17
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Year_Offset_days___closed__10, ptr noundef nonnull @l_Std_Time_Year_Offset_days___closed__10_once, ptr noundef nonnull @_init_l_Std_Time_Year_Offset_days___closed__10) #6
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
define internal ptr @_init_l_Std_Time_Year_Offset_days___closed__10() #2 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Year_Offset_days___closed__3_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Year_Offset_days___closed__3, align 8, !tbaa !17
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Year_Offset_days___closed__3, ptr noundef nonnull @l_Std_Time_Year_Offset_days___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_Year_Offset_days___closed__3) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Year_Offset_days___closed__9_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Year_Offset_days___closed__9, align 8, !tbaa !17
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Year_Offset_days___closed__9, ptr noundef nonnull @l_Std_Time_Year_Offset_days___closed__9_once, ptr noundef nonnull @_init_l_Std_Time_Year_Offset_days___closed__9) #6
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
define internal ptr @_init_l_Std_Time_Year_Offset_days___closed__9() #2 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_Year_Offset_days___closed__0_once seq_cst, align 4, !tbaa !15
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_Year_Offset_days___closed__0, align 8, !tbaa !17
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Year_Offset_days___closed__0, ptr noundef nonnull @l_Std_Time_Year_Offset_days___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_Year_Offset_days___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_Year_Offset_days___closed__8_once seq_cst, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_Year_Offset_days___closed__8, align 8, !tbaa !17
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_Year_Offset_days___closed__8, ptr noundef nonnull @l_Std_Time_Year_Offset_days___closed__8_once, ptr noundef nonnull @_init_l_Std_Time_Year_Offset_days___closed__8) #6
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
define internal noundef nonnull ptr @_init_l_Std_Time_Year_Offset_days___closed__8() #0 {
bb.a:
  ret ptr inttoptr (i64 711 to ptr)
}

declare void @lean_dec_ref_cold(ptr noundef) local_unnamed_addr #3

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
