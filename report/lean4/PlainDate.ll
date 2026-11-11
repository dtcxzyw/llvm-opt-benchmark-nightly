Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/PlainDate?download=true
inline.NumInlined: 933
inline.NumDeleted: 50
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@l_Std_Time_PlainDate_addMonthsClip:bb.a
bb.l:                                             ; preds = %bb.k
  %i.u = add nuw i32 %.val.i.i152, 1
  store i32 %i.u, ptr %i.b, align 4, !tbaa !16
  br label %lean_inc.exit

bb.m:                                             ; preds = %bb.k
  %.not.i.i153 = icmp eq i32 %.val.i.i152, 0
  br i1 %.not.i.i153, label %lean_inc.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.v = atomicrmw add ptr %i.b, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %lean_inc.exit100, %bb.l, %bb.m, %bb.n
  %i.w = load i32, ptr %0, align 8, !tbaa !16     ; 3 uses
  %i.x = icmp sgt i32 %i.w, 1
  br i1 %i.x, label %bb.o, label %bb.p, !prof !13

bb.o:                                             ; preds = %lean_inc.exit
  %i.y = add nsw i32 %i.w, -1
  store i32 %i.y, ptr %0, align 8, !tbaa !16
  br label %lean_dec.exit147

bb.p:                                             ; preds = %lean_inc.exit
  %.not.i.i145 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i145, label %lean_dec.exit147, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec.exit147

lean_dec.exit147:                                 ; preds = %bb.q, %bb.p, %bb.o, %bb.a
  %.093 = phi ptr [ %0, %bb.a ], [ inttoptr (i64 1 to ptr), %bb.o ], [ inttoptr (i64 1 to ptr), %bb.p ], [ inttoptr (i64 1 to ptr), %bb.q ] ; 7 uses
  %i.z = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDate___closed__0_once seq_cst, align 4, !tbaa !12
  %i.aa = icmp eq i32 %i.z, 1
  br i1 %i.aa, label %bb.r, label %bb.s, !prof !13

bb.r:                                             ; preds = %lean_dec.exit147
  %i.ab = load ptr, ptr @l_Std_Time_instInhabitedPlainDate___closed__0, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.s:                                             ; preds = %lean_dec.exit147
  %i.ac = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__0, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDate___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.r, %bb.s
  %.0.i = phi ptr [ %i.ab, %bb.r ], [ %i.ac, %bb.s ] ; 6 uses
  %i.ad = ptrtoint ptr %i.d to i64                ; 2 uses
  %i.ae = and i64 %i.ad, 1
  %.not.i155 = icmp eq i64 %i.ae, 0
  br i1 %.not.i155, label %bb.x, label %bb.t, !prof !14

bb.t:                                             ; preds = %lean_obj_once.exit
  %i.af = ptrtoint ptr %.0.i to i64               ; 2 uses
  %i.ag = and i64 %i.af, 1
  %.not7.i = icmp eq i64 %i.ag, 0
  br i1 %.not7.i, label %lean_int_sub.exit, label %bb.u, !prof !14

bb.u:                                             ; preds = %bb.t
  %i.ah = shl i64 %i.ad, 31
  %i.ai = ashr i64 %i.ah, 32
  %i.aj = shl i64 %i.af, 31
  %i.ak = ashr i64 %i.aj, 32
  %i.al = sub nsw i64 %i.ai, %i.ak                ; 3 uses
  %i.am = add nsw i64 %i.al, 2147483648
  %i.an = icmp ult i64 %i.am, 4294967296
  br i1 %i.an, label %bb.v, label %bb.w, !prof !13

bb.v:                                             ; preds = %bb.u
  %i.ao = shl nsw i64 %i.al, 1
  %i.ap = and i64 %i.ao, 8589934590
  %i.aq = or disjoint i64 %i.ap, 1
  %i.ar = inttoptr i64 %i.aq to ptr
  br label %lean_dec.exit143

bb.w:                                             ; preds = %bb.u
  %i.as = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.al) #6
  br label %lean_dec.exit143

lean_int_sub.exit:                                ; preds = %bb.t
  %i.at = tail call ptr @lean_int_big_sub(ptr noundef %i.d, ptr noundef %.0.i) #6
  br label %lean_dec.exit143

bb.x:                                             ; preds = %lean_obj_once.exit
  %i.au = tail call ptr @lean_int_big_sub(ptr noundef %i.d, ptr noundef %.0.i) #6 ; 3 uses
  %i.av = load i32, ptr %i.d, align 4, !tbaa !16  ; 3 uses
  %i.aw = icmp sgt i32 %i.av, 1
  br i1 %i.aw, label %bb.y, label %bb.z, !prof !13

bb.y:                                             ; preds = %bb.x
  %i.ax = add nsw i32 %i.av, -1
  store i32 %i.ax, ptr %i.d, align 4, !tbaa !16
  br label %lean_dec.exit143

bb.z:                                             ; preds = %bb.x
  %.not.i.i141 = icmp eq i32 %i.av, 0
  br i1 %.not.i.i141, label %lean_dec.exit143, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.d) #6
  br label %lean_dec.exit143

lean_dec.exit143:                                 ; preds = %bb.w, %bb.v, %lean_int_sub.exit, %bb.y, %bb.z, %bb.aa
  %.0.i156248 = phi ptr [ %i.at, %lean_int_sub.exit ], [ %i.au, %bb.y ], [ %i.au, %bb.z ], [ %i.au, %bb.aa ], [ %i.as, %bb.w ], [ %i.ar, %bb.v ] ; 6 uses
  %i.ay = ptrtoint ptr %.0.i156248 to i64         ; 2 uses
  %i.az = and i64 %i.ay, 1
  %.not.i157 = icmp eq i64 %i.az, 0
  br i1 %.not.i157, label %bb.af, label %bb.ab, !prof !14

bb.ab:                                            ; preds = %lean_dec.exit143
  %i.ba = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bb = and i64 %i.ba, 1
  %.not7.i158 = icmp eq i64 %i.bb, 0
  br i1 %.not7.i158, label %lean_int_add.exit, label %bb.ac, !prof !14

bb.ac:                                            ; preds = %bb.ab
  %i.bc = shl i64 %i.ay, 31
  %i.bd = ashr i64 %i.bc, 32
  %i.be = shl i64 %i.ba, 31
  %i.bf = ashr i64 %i.be, 32
  %i.bg = add nsw i64 %i.bd, %i.bf                ; 3 uses
  %i.bh = add nsw i64 %i.bg, 2147483648
  %i.bi = icmp ult i64 %i.bh, 4294967296
  br i1 %i.bi, label %bb.ad, label %bb.ae, !prof !13

bb.ad:                                            ; preds = %bb.ac
  %i.bj = shl nsw i64 %i.bg, 1
  %i.bk = and i64 %i.bj, 8589934590
  %i.bl = or disjoint i64 %i.bk, 1
  %i.bm = inttoptr i64 %i.bl to ptr
  br label %lean_dec.exit139

bb.ae:                                            ; preds = %bb.ac
  %i.bn = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.bg) #6
  br label %lean_dec.exit139

lean_int_add.exit:                                ; preds = %bb.ab
  %i.bo = tail call ptr @lean_int_big_add(ptr noundef %.0.i156248, ptr noundef %1) #6
  br label %lean_dec.exit139

bb.af:                                            ; preds = %lean_dec.exit143
  %i.bp = tail call ptr @lean_int_big_add(ptr noundef %.0.i156248, ptr noundef %1) #6 ; 3 uses
  %i.bq = load i32, ptr %.0.i156248, align 4, !tbaa !16 ; 3 uses
  %i.br = icmp sgt i32 %i.bq, 1
  br i1 %i.br, label %bb.ag, label %bb.ah, !prof !13

bb.ag:                                            ; preds = %bb.af
  %i.bs = add nsw i32 %i.bq, -1
  store i32 %i.bs, ptr %.0.i156248, align 4, !tbaa !16
  br label %lean_dec.exit139

bb.ah:                                            ; preds = %bb.af
  %.not.i.i137 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i137, label %lean_dec.exit139, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i156248) #6
  br label %lean_dec.exit139

lean_dec.exit139:                                 ; preds = %bb.ae, %bb.ad, %lean_int_add.exit, %bb.ag, %bb.ah, %bb.ai
  %.0.i159251 = phi ptr [ %i.bo, %lean_int_add.exit ], [ %i.bp, %bb.ag ], [ %i.bp, %bb.ah ], [ %i.bp, %bb.ai ], [ %i.bn, %bb.ae ], [ %i.bm, %bb.ad ] ; 8 uses
  %i.bt = load atomic i32, ptr @l_Std_Time_PlainDate_ofEpochDay___closed__2_once seq_cst, align 4, !tbaa !12
  %i.bu = icmp eq i32 %i.bt, 1
  br i1 %i.bu, label %bb.aj, label %bb.ak, !prof !13

bb.aj:                                            ; preds = %lean_dec.exit139
  %i.bv = load ptr, ptr @l_Std_Time_PlainDate_ofEpochDay___closed__2, align 8, !tbaa !10
  br label %lean_obj_once.exit162

bb.ak:                                            ; preds = %lean_dec.exit139
  %i.bw = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_PlainDate_ofEpochDay___closed__2, ptr noundef nonnull @l_Std_Time_PlainDate_ofEpochDay___closed__2_once, ptr noundef nonnull @_init_l_Std_Time_PlainDate_ofEpochDay___closed__2) #6
  br label %lean_obj_once.exit162

lean_obj_once.exit162:                            ; preds = %bb.aj, %bb.ak
  %.0.i161 = phi ptr [ %i.bv, %bb.aj ], [ %i.bw, %bb.ak ] ; 5 uses
  %i.bx = ptrtoint ptr %.0.i159251 to i64         ; 3 uses
  %i.by = and i64 %i.bx, 1
  %.not.i163 = icmp eq i64 %i.by, 0               ; 2 uses
  br i1 %.not.i163, label %.critedge.i165, label %bb.al, !prof !14

bb.al:                                            ; preds = %lean_obj_once.exit162
  %i.bz = ptrtoint ptr %.0.i161 to i64            ; 2 uses
  %i.ca = and i64 %i.bz, 1
  %.not21.i = icmp eq i64 %i.ca, 0
  br i1 %.not21.i, label %.critedge.i165, label %bb.am, !prof !14

bb.am:                                            ; preds = %bb.al
  %i.cb = shl i64 %i.bz, 31
  %i.cc = ashr i64 %i.cb, 32                      ; 3 uses
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %lean_int_emod.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ce = shl i64 %i.bx, 31
  %i.cf = ashr i64 %i.ce, 32
  %i.cg = srem i64 %i.cf, %i.cc                   ; 2 uses
  %i.ch = icmp slt i64 %i.cg, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.cc, i1 true)
  %i.ci = select i1 %i.ch, i64 %.p.i, i64 0
  %.0.i164 = add nsw i64 %i.ci, %i.cg             ; 3 uses
  %2 = icmp slt i64 %.0.i164, 2147483648
  br i1 %2, label %bb.ao, label %bb.ap, !prof !13

bb.ao:                                            ; preds = %bb.an
  %i.cj = shl nsw i64 %.0.i164, 1
  %3 = and i64 %i.cj, 8589934590
  %i.ck = or disjoint i64 %3, 1
  %i.cl = inttoptr i64 %i.ck to ptr
  br label %lean_int_emod.exit

bb.ap:                                            ; preds = %bb.an
  %i.cm = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i164) #6
  br label %lean_int_emod.exit

.critedge.i165:                                   ; preds = %bb.al, %lean_obj_once.exit162
  %i.cn = tail call ptr @lean_int_big_emod(ptr noundef %.0.i159251, ptr noundef %.0.i161) #6
  br label %lean_int_emod.exit

lean_int_emod.exit:                               ; preds = %bb.am, %bb.ao, %bb.ap, %.critedge.i165
  %.1.i = phi ptr [ %i.cn, %.critedge.i165 ], [ %.0.i159251, %bb.am ], [ %i.cl, %bb.ao ], [ %i.cm, %bb.ap ] ; 6 uses
  %i.co = ptrtoint ptr %.1.i to i64               ; 2 uses
  %i.cp = and i64 %i.co, 1
  %.not.i166 = icmp eq i64 %i.cp, 0
  br i1 %.not.i166, label %bb.au, label %bb.aq, !prof !14

bb.aq:                                            ; preds = %lean_int_emod.exit
  %i.cq = ptrtoint ptr %.0.i to i64               ; 2 uses
  %i.cr = and i64 %i.cq, 1
  %.not7.i167 = icmp eq i64 %i.cr, 0
  br i1 %.not7.i167, label %lean_int_add.exit170, label %bb.ar, !prof !14

bb.ar:                                            ; preds = %bb.aq
  %i.cs = shl i64 %i.co, 31
  %i.ct = ashr i64 %i.cs, 32
  %i.cu = shl i64 %i.cq, 31
  %i.cv = ashr i64 %i.cu, 32
  %i.cw = add nsw i64 %i.ct, %i.cv                ; 3 uses
  %i.cx = add nsw i64 %i.cw, 2147483648
  %i.cy = icmp ult i64 %i.cx, 4294967296
  br i1 %i.cy, label %bb.as, label %bb.at, !prof !13

bb.as:                                            ; preds = %bb.ar
  %i.cz = shl nsw i64 %i.cw, 1
  %i.da = and i64 %i.cz, 8589934590
  %i.db = or disjoint i64 %i.da, 1
  %i.dc = inttoptr i64 %i.db to ptr
  br label %lean_dec.exit135

bb.at:                                            ; preds = %bb.ar
  %i.dd = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.cw) #6
  br label %lean_dec.exit135

lean_int_add.exit170:                             ; preds = %bb.aq
  %i.de = tail call ptr @lean_int_big_add(ptr noundef %.1.i, ptr noundef %.0.i) #6
  br label %lean_dec.exit135

bb.au:                                            ; preds = %lean_int_emod.exit
  %i.df = tail call ptr @lean_int_big_add(ptr noundef %.1.i, ptr noundef %.0.i) #6 ; 3 uses
  %i.dg = load i32, ptr %.1.i, align 4, !tbaa !16 ; 3 uses
  %i.dh = icmp sgt i32 %i.dg, 1
  br i1 %i.dh, label %bb.av, label %bb.aw, !prof !13

bb.av:                                            ; preds = %bb.au
  %i.di = add nsw i32 %i.dg, -1
  store i32 %i.di, ptr %.1.i, align 4, !tbaa !16
  br label %lean_dec.exit135

bb.aw:                                            ; preds = %bb.au
  %.not.i.i133 = icmp eq i32 %i.dg, 0
  br i1 %.not.i.i133, label %lean_dec.exit135, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i) #6
  br label %lean_dec.exit135

lean_dec.exit135:                                 ; preds = %bb.at, %bb.as, %lean_int_add.exit170, %bb.av, %bb.aw, %bb.ax
  %.0.i168254 = phi ptr [ %i.de, %lean_int_add.exit170 ], [ %i.df, %bb.av ], [ %i.df, %bb.aw ], [ %i.df, %bb.ax ], [ %i.dd, %bb.at ], [ %i.dc, %bb.as ] ; 5 uses
  br i1 %.not.i163, label %bb.bd, label %bb.ay, !prof !14

bb.ay:                                            ; preds = %lean_dec.exit135
  %i.dj = ptrtoint ptr %.0.i161 to i64            ; 2 uses
  %i.dk = and i64 %i.dj, 1
  %.not18.i = icmp eq i64 %i.dk, 0
  br i1 %.not18.i, label %lean_int_ediv.exit, label %bb.az, !prof !14

bb.az:                                            ; preds = %bb.ay
  %i.dl = lshr i64 %i.dj, 1                       ; 2 uses
  %i.dm = trunc i64 %i.dl to i32                  ; 2 uses
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %lean_dec.exit131, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %sext.i = shl i64 %i.dl, 32
  %i.do = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.dp = shl i64 %i.bx, 31
  %i.dq = ashr i64 %i.dp, 32                      ; 2 uses
  %i.dr = sdiv i64 %i.dq, %i.do
  %i.ds = srem i64 %i.dq, %i.do
  %i.dt = icmp slt i64 %i.ds, 0
  %i.du = icmp sgt i32 %i.dm, 0
  %.v.i = select i1 %i.du, i64 -1, i64 1
  %i.dv = select i1 %i.dt, i64 %.v.i, i64 0
  %.0.i172 = add nsw i64 %i.dv, %i.dr             ; 3 uses
  %i.dw = add nsw i64 %.0.i172, 2147483648
  %i.dx = icmp ult i64 %i.dw, 4294967296
  br i1 %i.dx, label %bb.bb, label %bb.bc, !prof !13

bb.bb:                                            ; preds = %bb.ba
  %i.dy = shl nsw i64 %.0.i172, 1
  %i.dz = and i64 %i.dy, 8589934590
  %i.ea = or disjoint i64 %i.dz, 1
  %i.eb = inttoptr i64 %i.ea to ptr
  br label %lean_dec.exit131

bb.bc:                                            ; preds = %bb.ba
  %i.ec = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i172) #6
  br label %lean_dec.exit131

lean_int_ediv.exit:                               ; preds = %bb.ay
  %i.ed = tail call ptr @lean_int_big_ediv(ptr noundef %.0.i159251, ptr noundef %.0.i161) #6
  br label %lean_dec.exit131

bb.bd:                                            ; preds = %lean_dec.exit135
  %i.ee = tail call ptr @lean_int_big_ediv(ptr noundef %.0.i159251, ptr noundef %.0.i161) #6 ; 3 uses
  %i.ef = load i32, ptr %.0.i159251, align 4, !tbaa !16 ; 3 uses
  %i.eg = icmp sgt i32 %i.ef, 1
  br i1 %i.eg, label %bb.be, label %bb.bf, !prof !13

bb.be:                                            ; preds = %bb.bd
  %i.eh = add nsw i32 %i.ef, -1
  store i32 %i.eh, ptr %.0.i159251, align 4, !tbaa !16
  br label %lean_dec.exit131

bb.bf:                                            ; preds = %bb.bd
  %.not.i.i129 = icmp eq i32 %i.ef, 0
  br i1 %.not.i.i129, label %lean_dec.exit131, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i159251) #6
  br label %lean_dec.exit131

lean_dec.exit131:                                 ; preds = %bb.bc, %bb.bb, %bb.az, %lean_int_ediv.exit, %bb.be, %bb.bf, %bb.bg
  %.1.i173257 = phi ptr [ %i.ed, %lean_int_ediv.exit ], [ %i.ee, %bb.be ], [ %i.ee, %bb.bf ], [ %i.ee, %bb.bg ], [ %i.ec, %bb.bc ], [ %i.eb, %bb.bb ], [ inttoptr (i64 1 to ptr), %bb.az ] ; 6 uses
  %i.ei = ptrtoint ptr %i.b to i64                ; 2 uses
  %i.ej = and i64 %i.ei, 1
  %.not.i175 = icmp eq i64 %i.ej, 0               ; 2 uses
  %.pre215 = ptrtoint ptr %.1.i173257 to i64      ; 2 uses
  %.pre = and i64 %.pre215, 1
  %i.ek = icmp eq i64 %.pre, 0                    ; 2 uses
  br i1 %.not.i175, label %lean_int_add.exit179, label %bb.bh, !prof !14

bb.bh:                                            ; preds = %lean_dec.exit131
  br i1 %i.ek, label %lean_int_add.exit179.thread263, label %bb.bi, !prof !14

lean_int_add.exit179.thread263:                   ; preds = %bb.bh
  %i.el = tail call ptr @lean_int_big_add(ptr noundef %i.b, ptr noundef %.1.i173257) #6
  br label %bb.bl

bb.bi:                                            ; preds = %bb.bh
  %i.em = shl i64 %i.ei, 31
  %i.en = ashr i64 %i.em, 32
  %i.eo = shl i64 %.pre215, 31
  %i.ep = ashr i64 %i.eo, 32
  %i.eq = add nsw i64 %i.ep, %i.en                ; 3 uses
  %i.er = add nsw i64 %i.eq, 2147483648
  %i.es = icmp ult i64 %i.er, 4294967296
  br i1 %i.es, label %bb.bj, label %bb.bk, !prof !13

bb.bj:                                            ; preds = %bb.bi
  %i.et = shl nsw i64 %i.eq, 1
  %i.eu = and i64 %i.et, 8589934590
  %i.ev = or disjoint i64 %i.eu, 1
  %i.ew = inttoptr i64 %i.ev to ptr
  br label %lean_dec.exit123

bb.bk:                                            ; preds = %bb.bi
  %i.ex = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.eq) #6
  br label %lean_dec.exit123

lean_int_add.exit179:                             ; preds = %lean_dec.exit131
  %i.ey = tail call ptr @lean_int_big_add(ptr noundef %i.b, ptr noundef %.1.i173257) #6 ; 2 uses
  br i1 %i.ek, label %bb.bl, label %lean_dec.exit127.thread

bb.bl:                                            ; preds = %lean_int_add.exit179.thread263, %lean_int_add.exit179
  %i.ez = phi ptr [ %i.el, %lean_int_add.exit179.thread263 ], [ %i.ey, %lean_int_add.exit179 ] ; 2 uses
  %i.fa = load i32, ptr %.1.i173257, align 4, !tbaa !16 ; 3 uses
  %i.fb = icmp sgt i32 %i.fa, 1
  br i1 %i.fb, label %bb.bm, label %bb.bn, !prof !13

bb.bm:                                            ; preds = %bb.bl
  %i.fc = add nsw i32 %i.fa, -1
  store i32 %i.fc, ptr %.1.i173257, align 4, !tbaa !16
  br label %lean_dec.exit127

bb.bn:                                            ; preds = %bb.bl
  %.not.i.i125 = icmp eq i32 %i.fa, 0
  br i1 %.not.i.i125, label %lean_dec.exit127, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i173257) #6
  br label %lean_dec.exit127

lean_dec.exit127:                                 ; preds = %bb.bm, %bb.bn, %bb.bo
  br i1 %.not.i175, label %lean_dec.exit127.thread, label %lean_dec.exit123

lean_dec.exit127.thread:                          ; preds = %lean_int_add.exit179, %lean_dec.exit127
  %.0.i177261267 = phi ptr [ %i.ez, %lean_dec.exit127 ], [ %i.ey, %lean_int_add.exit179 ] ; 3 uses
end_hunk_0
begin_hunk_1_@l_Std_Time_PlainDate_withMonthRollOver:bb.a
bb.k:                                             ; preds = %lean_inc.exit
  %.not.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i12, label %lean_dec_ref.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.j, %bb.k, %bb.l
  %i.r = tail call ptr @l_Std_Time_PlainDate_rollOver(ptr noundef %i.b, ptr noundef %1, ptr noundef %i.i)
  br i1 %.not.i, label %bb.m, label %lean_dec.exit

bb.m:                                             ; preds = %lean_dec_ref.exit
  %i.s = load i32, ptr %i.i, align 4, !tbaa !16   ; 3 uses
  %i.t = icmp sgt i32 %i.s, 1
  br i1 %i.t, label %bb.n, label %bb.o, !prof !13

bb.n:                                             ; preds = %bb.m
  %i.u = add nsw i32 %i.s, -1
  store i32 %i.u, ptr %i.i, align 4, !tbaa !16
  br label %lean_dec.exit

bb.o:                                             ; preds = %bb.m
  %.not.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.i) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.n, %bb.o, %bb.p, %lean_dec_ref.exit
  ret ptr %i.r
}

; Function Attrs: nounwind uwtable
define zeroext i8 @l_Std_Time_PlainDate_weekday(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_Std_Time_PlainDate_toEpochDay(ptr noundef %0) ; 14 uses
  %i.b = load atomic i32, ptr @l_Std_Time_PlainDate_ofYearMonthDayClip___closed__0_once seq_cst, align 4, !tbaa !12
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @l_Std_Time_PlainDate_ofYearMonthDayClip___closed__0, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_PlainDate_ofYearMonthDayClip___closed__0, ptr noundef nonnull @l_Std_Time_PlainDate_ofYearMonthDayClip___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_PlainDate_ofYearMonthDayClip___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.d, %bb.b ], [ %i.e, %bb.c ] ; 3 uses
  %i.f = load atomic i32, ptr @l_Std_Time_PlainDate_weekday___closed__2_once seq_cst, align 4, !tbaa !12
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.h = load ptr, ptr @l_Std_Time_PlainDate_weekday___closed__2, align 8, !tbaa !10
  br label %lean_obj_once.exit84

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.i = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_PlainDate_weekday___closed__2, ptr noundef nonnull @l_Std_Time_PlainDate_weekday___closed__2_once, ptr noundef nonnull @_init_l_Std_Time_PlainDate_weekday___closed__2) #6
  br label %lean_obj_once.exit84

lean_obj_once.exit84:                             ; preds = %bb.d, %bb.e
  %.0.i83 = phi ptr [ %i.h, %bb.d ], [ %i.i, %bb.e ] ; 2 uses
  %i.j = ptrtoint ptr %.0.i83 to i64              ; 2 uses
  %i.k = and i64 %i.j, 1
  %.not.i.i85 = icmp eq i64 %i.k, 0
  br i1 %.not.i.i85, label %lean_int_dec_le.exit, label %bb.f, !prof !14

bb.f:                                             ; preds = %lean_obj_once.exit84
  %i.l = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.m = and i64 %i.l, 1
  %.not7.i.i = icmp eq i64 %i.m, 0
  br i1 %.not7.i.i, label %lean_int_dec_le.exit, label %.split, !prof !14

.split:                                           ; preds = %bb.f
  %i.n = lshr i64 %i.j, 1
  %i.o = trunc i64 %i.n to i32
  %i.p = lshr i64 %i.l, 1
  %i.q = trunc i64 %i.p to i32
  %.not = icmp sgt i32 %i.o, %i.q
  br i1 %.not, label %bb.g, label %bb.am

lean_int_dec_le.exit:                             ; preds = %lean_obj_once.exit84, %bb.f
  %i.r = tail call zeroext i1 @lean_int_big_le(ptr noundef %.0.i83, ptr noundef %i.a) #6
  br i1 %i.r, label %bb.am, label %bb.g

bb.g:                                             ; preds = %.split, %lean_int_dec_le.exit
  %i.s = load atomic i32, ptr @l_Std_Time_PlainDate_ofEpochDay___closed__8_once seq_cst, align 4, !tbaa !12
  %i.t = icmp eq i32 %i.s, 1
  br i1 %i.t, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr @l_Std_Time_PlainDate_ofEpochDay___closed__8, align 8, !tbaa !10
  br label %lean_obj_once.exit87

bb.i:                                             ; preds = %bb.g
  %i.v = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_PlainDate_ofEpochDay___closed__8, ptr noundef nonnull @l_Std_Time_PlainDate_ofEpochDay___closed__8_once, ptr noundef nonnull @_init_l_Std_Time_PlainDate_ofEpochDay___closed__8) #6
  br label %lean_obj_once.exit87

lean_obj_once.exit87:                             ; preds = %bb.h, %bb.i
  %.0.i86 = phi ptr [ %i.u, %bb.h ], [ %i.v, %bb.i ] ; 3 uses
  %i.w = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.x = and i64 %i.w, 1
  %.not.i88 = icmp eq i64 %i.x, 0
  br i1 %.not.i88, label %bb.n, label %bb.j, !prof !14

bb.j:                                             ; preds = %lean_obj_once.exit87
  %i.y = ptrtoint ptr %.0.i86 to i64              ; 2 uses
  %i.z = and i64 %i.y, 1
  %.not7.i = icmp eq i64 %i.z, 0
  br i1 %.not7.i, label %lean_int_add.exit, label %bb.k, !prof !14

bb.k:                                             ; preds = %bb.j
  %i.aa = shl i64 %i.w, 31
  %i.ab = ashr i64 %i.aa, 32
  %i.ac = shl i64 %i.y, 31
  %i.ad = ashr i64 %i.ac, 32
  %i.ae = add nsw i64 %i.ad, %i.ab                ; 3 uses
  %i.af = add nsw i64 %i.ae, 2147483648
  %i.ag = icmp ult i64 %i.af, 4294967296
  br i1 %i.ag, label %bb.l, label %bb.m, !prof !13

bb.l:                                             ; preds = %bb.k
  %i.ah = shl nsw i64 %i.ae, 1
  %i.ai = and i64 %i.ah, 8589934590
  %i.aj = or disjoint i64 %i.ai, 1
  %i.ak = inttoptr i64 %i.aj to ptr
  br label %lean_dec.exit82

bb.m:                                             ; preds = %bb.k
  %i.al = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.ae) #6
  br label %lean_dec.exit82

lean_int_add.exit:                                ; preds = %bb.j
  %i.am = tail call ptr @lean_int_big_add(ptr noundef %i.a, ptr noundef %.0.i86) #6
  br label %lean_dec.exit82

bb.n:                                             ; preds = %lean_obj_once.exit87
  %i.an = tail call ptr @lean_int_big_add(ptr noundef %i.a, ptr noundef %.0.i86) #6 ; 3 uses
  %i.ao = load i32, ptr %i.a, align 4, !tbaa !16  ; 3 uses
  %i.ap = icmp sgt i32 %i.ao, 1
  br i1 %i.ap, label %bb.o, label %bb.p, !prof !13

bb.o:                                             ; preds = %bb.n
  %i.aq = add nsw i32 %i.ao, -1
  store i32 %i.aq, ptr %i.a, align 4, !tbaa !16
  br label %lean_dec.exit82

bb.p:                                             ; preds = %bb.n
  %.not.i.i80 = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i80, label %lean_dec.exit82, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #6
  br label %lean_dec.exit82

lean_dec.exit82:                                  ; preds = %bb.m, %bb.l, %lean_int_add.exit, %bb.o, %bb.p, %bb.q
  %.0.i89173 = phi ptr [ %i.am, %lean_int_add.exit ], [ %i.an, %bb.o ], [ %i.an, %bb.p ], [ %i.an, %bb.q ], [ %i.al, %bb.m ], [ %i.ak, %bb.l ] ; 7 uses
  %i.ar = load atomic i32, ptr @l_Std_Time_instReprPlainDate_repr___redArg___closed__8_once seq_cst, align 4, !tbaa !12
  %i.as = icmp eq i32 %i.ar, 1
  br i1 %i.as, label %bb.r, label %bb.s, !prof !13

bb.r:                                             ; preds = %lean_dec.exit82
  %i.at = load ptr, ptr @l_Std_Time_instReprPlainDate_repr___redArg___closed__8, align 8, !tbaa !10
  br label %lean_obj_once.exit91

bb.s:                                             ; preds = %lean_dec.exit82
  %i.au = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instReprPlainDate_repr___redArg___closed__8, ptr noundef nonnull @l_Std_Time_instReprPlainDate_repr___redArg___closed__8_once, ptr noundef nonnull @_init_l_Std_Time_instReprPlainDate_repr___redArg___closed__8) #6
  br label %lean_obj_once.exit91

lean_obj_once.exit91:                             ; preds = %bb.r, %bb.s
  %.0.i90 = phi ptr [ %i.at, %bb.r ], [ %i.au, %bb.s ] ; 3 uses
  %i.av = ptrtoint ptr %.0.i89173 to i64          ; 2 uses
  %i.aw = and i64 %i.av, 1
  %.not.i92 = icmp eq i64 %i.aw, 0
  br i1 %.not.i92, label %bb.y, label %bb.t, !prof !14

bb.t:                                             ; preds = %lean_obj_once.exit91
  %i.ax = ptrtoint ptr %.0.i90 to i64             ; 2 uses
  %i.ay = and i64 %i.ax, 1
  %.not21.i = icmp eq i64 %i.ay, 0
  br i1 %.not21.i, label %lean_int_emod.exit, label %bb.u, !prof !14

bb.u:                                             ; preds = %bb.t
  %i.az = shl i64 %i.ax, 31
  %i.ba = ashr i64 %i.az, 32                      ; 3 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %lean_dec.exit78, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bc = shl i64 %i.av, 31
  %i.bd = ashr i64 %i.bc, 32
  %i.be = srem i64 %i.bd, %i.ba                   ; 2 uses
  %i.bf = icmp slt i64 %i.be, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.ba, i1 true)
  %i.bg = select i1 %i.bf, i64 %.p.i, i64 0
  %.0.i93 = add nsw i64 %i.bg, %i.be              ; 3 uses
  %1 = icmp slt i64 %.0.i93, 2147483648
  br i1 %1, label %bb.w, label %bb.x, !prof !13

bb.w:                                             ; preds = %bb.v
  %i.bh = shl nsw i64 %.0.i93, 1
  %2 = and i64 %i.bh, 8589934590
  %i.bi = or disjoint i64 %2, 1
  %i.bj = inttoptr i64 %i.bi to ptr
  br label %lean_dec.exit78

bb.x:                                             ; preds = %bb.v
  %i.bk = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i93) #6
  br label %lean_dec.exit78

lean_int_emod.exit:                               ; preds = %bb.t
  %i.bl = tail call ptr @lean_int_big_emod(ptr noundef %.0.i89173, ptr noundef %.0.i90) #6
  br label %lean_dec.exit78

bb.y:                                             ; preds = %lean_obj_once.exit91
  %i.bm = tail call ptr @lean_int_big_emod(ptr noundef %.0.i89173, ptr noundef %.0.i90) #6 ; 3 uses
  %i.bn = load i32, ptr %.0.i89173, align 4, !tbaa !16 ; 3 uses
  %i.bo = icmp sgt i32 %i.bn, 1
  br i1 %i.bo, label %bb.z, label %bb.aa, !prof !13

bb.z:                                             ; preds = %bb.y
  %i.bp = add nsw i32 %i.bn, -1
  store i32 %i.bp, ptr %.0.i89173, align 4, !tbaa !16
  br label %lean_dec.exit78

bb.aa:                                            ; preds = %bb.y
  %.not.i.i76 = icmp eq i32 %i.bn, 0
  br i1 %.not.i.i76, label %lean_dec.exit78, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i89173) #6
  br label %lean_dec.exit78

lean_dec.exit78:                                  ; preds = %bb.x, %bb.w, %bb.u, %lean_int_emod.exit, %bb.z, %bb.aa, %bb.ab
  %.1.i176 = phi ptr [ %i.bl, %lean_int_emod.exit ], [ %i.bm, %bb.z ], [ %i.bm, %bb.aa ], [ %i.bm, %bb.ab ], [ %i.bk, %bb.x ], [ %i.bj, %bb.w ], [ %.0.i89173, %bb.u ] ; 6 uses
  %i.bq = load atomic i32, ptr @l_Std_Time_PlainDate_weekday___closed__3_once seq_cst, align 4, !tbaa !12
  %i.br = icmp eq i32 %i.bq, 1
  br i1 %i.br, label %bb.ac, label %bb.ad, !prof !13

bb.ac:                                            ; preds = %lean_dec.exit78
  %i.bs = load ptr, ptr @l_Std_Time_PlainDate_weekday___closed__3, align 8, !tbaa !10
  br label %lean_obj_once.exit96

bb.ad:                                            ; preds = %lean_dec.exit78
  %i.bt = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_PlainDate_weekday___closed__3, ptr noundef nonnull @l_Std_Time_PlainDate_weekday___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_PlainDate_weekday___closed__3) #6
  br label %lean_obj_once.exit96

lean_obj_once.exit96:                             ; preds = %bb.ac, %bb.ad
  %.0.i95 = phi ptr [ %i.bs, %bb.ac ], [ %i.bt, %bb.ad ] ; 3 uses
  %i.bu = ptrtoint ptr %.1.i176 to i64            ; 2 uses
  %i.bv = and i64 %i.bu, 1
  %.not.i97 = icmp eq i64 %i.bv, 0
  br i1 %.not.i97, label %bb.ai, label %bb.ae, !prof !14

bb.ae:                                            ; preds = %lean_obj_once.exit96
  %i.bw = ptrtoint ptr %.0.i95 to i64             ; 2 uses
  %i.bx = and i64 %i.bw, 1
  %.not7.i98 = icmp eq i64 %i.bx, 0
  br i1 %.not7.i98, label %lean_int_add.exit101, label %bb.af, !prof !14

bb.af:                                            ; preds = %bb.ae
  %i.by = shl i64 %i.bu, 31
  %i.bz = ashr i64 %i.by, 32
  %i.ca = shl i64 %i.bw, 31
  %i.cb = ashr i64 %i.ca, 32
  %i.cc = add nsw i64 %i.cb, %i.bz                ; 3 uses
  %i.cd = add nsw i64 %i.cc, 2147483648
  %i.ce = icmp ult i64 %i.cd, 4294967296
  br i1 %i.ce, label %bb.ag, label %bb.ah, !prof !13

bb.ag:                                            ; preds = %bb.af
  %i.cf = shl nsw i64 %i.cc, 1
  %i.cg = and i64 %i.cf, 8589934590
  %i.ch = or disjoint i64 %i.cg, 1
  %i.ci = inttoptr i64 %i.ch to ptr
  br label %lean_dec.exit74

bb.ah:                                            ; preds = %bb.af
  %i.cj = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.cc) #6
  br label %lean_dec.exit74

lean_int_add.exit101:                             ; preds = %bb.ae
  %i.ck = tail call ptr @lean_int_big_add(ptr noundef %.1.i176, ptr noundef %.0.i95) #6
  br label %lean_dec.exit74

bb.ai:                                            ; preds = %lean_obj_once.exit96
  %i.cl = tail call ptr @lean_int_big_add(ptr noundef %.1.i176, ptr noundef %.0.i95) #6 ; 3 uses
  %i.cm = load i32, ptr %.1.i176, align 4, !tbaa !16 ; 3 uses
  %i.cn = icmp sgt i32 %i.cm, 1
  br i1 %i.cn, label %bb.aj, label %bb.ak, !prof !13

bb.aj:                                            ; preds = %bb.ai
  %i.co = add nsw i32 %i.cm, -1
  store i32 %i.co, ptr %.1.i176, align 4, !tbaa !16
  br label %lean_dec.exit74

bb.ak:                                            ; preds = %bb.ai
  %.not.i.i72 = icmp eq i32 %i.cm, 0
  br i1 %.not.i.i72, label %lean_dec.exit74, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i176) #6
  br label %lean_dec.exit74

bb.am:                                            ; preds = %.split, %lean_int_dec_le.exit
  %i.cp = ptrtoint ptr %i.a to i64                ; 2 uses
  %i.cq = and i64 %i.cp, 1
  %.not.i102 = icmp eq i64 %i.cq, 0
  br i1 %.not.i102, label %bb.ar, label %bb.an, !prof !14

bb.an:                                            ; preds = %bb.am
  %i.cr = ptrtoint ptr %.0.i to i64               ; 2 uses
  %i.cs = and i64 %i.cr, 1
  %.not7.i103 = icmp eq i64 %i.cs, 0
  br i1 %.not7.i103, label %lean_int_add.exit106, label %bb.ao, !prof !14

bb.ao:                                            ; preds = %bb.an
  %i.ct = shl i64 %i.cp, 31
  %i.cu = ashr i64 %i.ct, 32
  %i.cv = shl i64 %i.cr, 31
  %i.cw = ashr i64 %i.cv, 32
  %i.cx = add nsw i64 %i.cw, %i.cu                ; 3 uses
  %i.cy = add nsw i64 %i.cx, 2147483648
  %i.cz = icmp ult i64 %i.cy, 4294967296
  br i1 %i.cz, label %bb.ap, label %bb.aq, !prof !13

bb.ap:                                            ; preds = %bb.ao
  %i.da = shl nsw i64 %i.cx, 1
  %i.db = and i64 %i.da, 8589934590
  %i.dc = or disjoint i64 %i.db, 1
  %i.dd = inttoptr i64 %i.dc to ptr
  br label %lean_dec.exit70

bb.aq:                                            ; preds = %bb.ao
  %i.de = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.cx) #6
  br label %lean_dec.exit70

lean_int_add.exit106:                             ; preds = %bb.an
  %i.df = tail call ptr @lean_int_big_add(ptr noundef %i.a, ptr noundef %.0.i) #6
  br label %lean_dec.exit70

bb.ar:                                            ; preds = %bb.am
  %i.dg = tail call ptr @lean_int_big_add(ptr noundef %i.a, ptr noundef %.0.i) #6 ; 3 uses
  %i.dh = load i32, ptr %i.a, align 4, !tbaa !16  ; 3 uses
  %i.di = icmp sgt i32 %i.dh, 1
  br i1 %i.di, label %bb.as, label %bb.at, !prof !13

bb.as:                                            ; preds = %bb.ar
  %i.dj = add nsw i32 %i.dh, -1
  store i32 %i.dj, ptr %i.a, align 4, !tbaa !16
  br label %lean_dec.exit70

bb.at:                                            ; preds = %bb.ar
  %.not.i.i68 = icmp eq i32 %i.dh, 0
  br i1 %.not.i.i68, label %lean_dec.exit70, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #6
  br label %lean_dec.exit70

lean_dec.exit70:                                  ; preds = %bb.aq, %bb.ap, %lean_int_add.exit106, %bb.as, %bb.at, %bb.au
  %.0.i104181 = phi ptr [ %i.df, %lean_int_add.exit106 ], [ %i.dg, %bb.as ], [ %i.dg, %bb.at ], [ %i.dg, %bb.au ], [ %i.de, %bb.aq ], [ %i.dd, %bb.ap ] ; 7 uses
  %i.dk = load atomic i32, ptr @l_Std_Time_instReprPlainDate_repr___redArg___closed__8_once seq_cst, align 4, !tbaa !12
  %i.dl = icmp eq i32 %i.dk, 1
  br i1 %i.dl, label %bb.av, label %bb.aw, !prof !13

bb.av:                                            ; preds = %lean_dec.exit70
  %i.dm = load ptr, ptr @l_Std_Time_instReprPlainDate_repr___redArg___closed__8, align 8, !tbaa !10
  br label %lean_obj_once.exit108

bb.aw:                                            ; preds = %lean_dec.exit70
  %i.dn = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instReprPlainDate_repr___redArg___closed__8, ptr noundef nonnull @l_Std_Time_instReprPlainDate_repr___redArg___closed__8_once, ptr noundef nonnull @_init_l_Std_Time_instReprPlainDate_repr___redArg___closed__8) #6
  br label %lean_obj_once.exit108

lean_obj_once.exit108:                            ; preds = %bb.av, %bb.aw
  %.0.i107 = phi ptr [ %i.dm, %bb.av ], [ %i.dn, %bb.aw ] ; 3 uses
  %i.do = ptrtoint ptr %.0.i104181 to i64         ; 2 uses
  %i.dp = and i64 %i.do, 1
  %.not.i109 = icmp eq i64 %i.dp, 0
  br i1 %.not.i109, label %bb.bc, label %bb.ax, !prof !14

bb.ax:                                            ; preds = %lean_obj_once.exit108
  %i.dq = ptrtoint ptr %.0.i107 to i64            ; 2 uses
  %i.dr = and i64 %i.dq, 1
  %.not21.i110 = icmp eq i64 %i.dr, 0
  br i1 %.not21.i110, label %lean_int_emod.exit115, label %bb.ay, !prof !14

bb.ay:                                            ; preds = %bb.ax
  %i.ds = shl i64 %i.dq, 31
  %i.dt = ashr i64 %i.ds, 32                      ; 3 uses
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %lean_dec.exit74, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.dv = shl i64 %i.do, 31
  %i.dw = ashr i64 %i.dv, 32
  %i.dx = srem i64 %i.dw, %i.dt                   ; 2 uses
  %i.dy = icmp slt i64 %i.dx, 0
  %.p.i111 = tail call i64 @llvm.abs.i64(i64 %i.dt, i1 true)
  %i.dz = select i1 %i.dy, i64 %.p.i111, i64 0
  %.0.i112 = add nsw i64 %i.dz, %i.dx             ; 3 uses
  %3 = icmp slt i64 %.0.i112, 2147483648
  br i1 %3, label %bb.ba, label %bb.bb, !prof !13

bb.ba:                                            ; preds = %bb.az
  %i.ea = shl nsw i64 %.0.i112, 1
  %4 = and i64 %i.ea, 8589934590
  %i.eb = or disjoint i64 %4, 1
  %i.ec = inttoptr i64 %i.eb to ptr
  br label %lean_dec.exit74

bb.bb:                                            ; preds = %bb.az
  %i.ed = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i112) #6
  br label %lean_dec.exit74

lean_int_emod.exit115:                            ; preds = %bb.ax
  %i.ee = tail call ptr @lean_int_big_emod(ptr noundef %.0.i104181, ptr noundef %.0.i107) #6
  br label %lean_dec.exit74

bb.bc:                                            ; preds = %lean_obj_once.exit108
  %i.ef = tail call ptr @lean_int_big_emod(ptr noundef %.0.i104181, ptr noundef %.0.i107) #6 ; 3 uses
  %i.eg = load i32, ptr %.0.i104181, align 4, !tbaa !16 ; 3 uses
  %i.eh = icmp sgt i32 %i.eg, 1
  br i1 %i.eh, label %bb.bd, label %bb.be, !prof !13

bb.bd:                                            ; preds = %bb.bc
  %i.ei = add nsw i32 %i.eg, -1
  store i32 %i.ei, ptr %.0.i104181, align 4, !tbaa !16
  br label %lean_dec.exit74

bb.be:                                            ; preds = %bb.bc
  %.not.i.i64 = icmp eq i32 %i.eg, 0
  br i1 %.not.i.i64, label %lean_dec.exit74, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i104181) #6
  br label %lean_dec.exit74

lean_dec.exit74:                                  ; preds = %bb.bb, %bb.ba, %bb.ay, %bb.ah, %bb.ag, %lean_int_emod.exit115, %lean_int_add.exit101, %bb.bf, %bb.be, %bb.bd, %bb.al, %bb.ak, %bb.aj
  %.042 = phi ptr [ %i.ck, %lean_int_add.exit101 ], [ %i.cl, %bb.aj ], [ %i.cl, %bb.ak ], [ %i.cl, %bb.al ], [ %i.ef, %bb.bd ], [ %i.ef, %bb.be ], [ %i.ef, %bb.bf ], [ %i.ee, %lean_int_emod.exit115 ], [ %i.ci, %bb.ag ], [ %i.cj, %bb.ah ], [ %i.ed, %bb.bb ], [ %i.ec, %bb.ba ], [ %.0.i104181, %bb.ay ] ; 6 uses
  %i.ej = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDate___closed__0_once seq_cst, align 4, !tbaa !12
  %i.ek = icmp eq i32 %i.ej, 1
  br i1 %i.ek, label %bb.bg, label %bb.bh, !prof !13

bb.bg:                                            ; preds = %lean_dec.exit74
  %i.el = load ptr, ptr @l_Std_Time_instInhabitedPlainDate___closed__0, align 8, !tbaa !10
  br label %lean_obj_once.exit117

bb.bh:                                            ; preds = %lean_dec.exit74
  %i.em = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__0, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDate___closed__0) #6
  br label %lean_obj_once.exit117

lean_obj_once.exit117:                            ; preds = %bb.bg, %bb.bh
  %.0.i116 = phi ptr [ %i.el, %bb.bg ], [ %i.em, %bb.bh ] ; 6 uses
  %i.en = load atomic i32, ptr @l_Std_Time_PlainDate_weekday___closed__1_once seq_cst, align 4, !tbaa !12
  %i.eo = icmp eq i32 %i.en, 1
  br i1 %i.eo, label %bb.bi, label %bb.bj, !prof !13

bb.bi:                                            ; preds = %lean_obj_once.exit117
  %i.ep = load ptr, ptr @l_Std_Time_PlainDate_weekday___closed__1, align 8, !tbaa !10
  br label %lean_obj_once.exit119

bb.bj:                                            ; preds = %lean_obj_once.exit117
  %i.eq = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_PlainDate_weekday___closed__1, ptr noundef nonnull @l_Std_Time_PlainDate_weekday___closed__1_once, ptr noundef nonnull @_init_l_Std_Time_PlainDate_weekday___closed__1) #6
  br label %lean_obj_once.exit119

lean_obj_once.exit119:                            ; preds = %bb.bi, %bb.bj
  %.0.i118 = phi ptr [ %i.ep, %bb.bi ], [ %i.eq, %bb.bj ] ; 9 uses
  %i.er = ptrtoint ptr %.042 to i64               ; 2 uses
  %i.es = and i64 %i.er, 1
  %.not.i120 = icmp eq i64 %i.es, 0
  br i1 %.not.i120, label %bb.bo, label %bb.bk, !prof !14

bb.bk:                                            ; preds = %lean_obj_once.exit119
  %i.et = ptrtoint ptr %.0.i116 to i64            ; 2 uses
  %i.eu = and i64 %i.et, 1
  %.not7.i121 = icmp eq i64 %i.eu, 0
  br i1 %.not7.i121, label %lean_int_sub.exit, label %bb.bl, !prof !14

bb.bl:                                            ; preds = %bb.bk
  %i.ev = shl i64 %i.er, 31
  %i.ew = ashr i64 %i.ev, 32
  %i.ex = shl i64 %i.et, 31
  %i.ey = ashr i64 %i.ex, 32
  %i.ez = sub nsw i64 %i.ew, %i.ey                ; 3 uses
  %i.fa = add nsw i64 %i.ez, 2147483648
  %i.fb = icmp ult i64 %i.fa, 4294967296
  br i1 %i.fb, label %bb.bm, label %bb.bn, !prof !13

bb.bm:                                            ; preds = %bb.bl
  %i.fc = shl nsw i64 %i.ez, 1
  %i.fd = and i64 %i.fc, 8589934590
  %i.fe = or disjoint i64 %i.fd, 1
  %i.ff = inttoptr i64 %i.fe to ptr
  br label %lean_dec.exit62

bb.bn:                                            ; preds = %bb.bl
  %i.fg = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.ez) #6
  br label %lean_dec.exit62

lean_int_sub.exit:                                ; preds = %bb.bk
  %i.fh = tail call ptr @lean_int_big_sub(ptr noundef %.042, ptr noundef %.0.i116) #6
  br label %lean_dec.exit62

bb.bo:                                            ; preds = %lean_obj_once.exit119
  %i.fi = tail call ptr @lean_int_big_sub(ptr noundef %.042, ptr noundef %.0.i116) #6 ; 3 uses
  %i.fj = load i32, ptr %.042, align 4, !tbaa !16 ; 3 uses
  %i.fk = icmp sgt i32 %i.fj, 1
  br i1 %i.fk, label %bb.bp, label %bb.bq, !prof !13

bb.bp:                                            ; preds = %bb.bo
  %i.fl = add nsw i32 %i.fj, -1
  store i32 %i.fl, ptr %.042, align 4, !tbaa !16
  br label %lean_dec.exit62

bb.bq:                                            ; preds = %bb.bo
  %.not.i.i60 = icmp eq i32 %i.fj, 0
  br i1 %.not.i.i60, label %lean_dec.exit62, label %bb.br

bb.br:                                            ; preds = %bb.bq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.042) #6
  br label %lean_dec.exit62

lean_dec.exit62:                                  ; preds = %bb.bn, %bb.bm, %lean_int_sub.exit, %bb.bp, %bb.bq, %bb.br
  %.0.i122186 = phi ptr [ %i.fh, %lean_int_sub.exit ], [ %i.fi, %bb.bp ], [ %i.fi, %bb.bq ], [ %i.fi, %bb.br ], [ %i.fg, %bb.bn ], [ %i.ff, %bb.bm ] ; 7 uses
  %i.fm = ptrtoint ptr %.0.i122186 to i64         ; 2 uses
  %i.fn = and i64 %i.fm, 1
  %.not.i124 = icmp eq i64 %i.fn, 0
  br i1 %.not.i124, label %bb.bx, label %bb.bs, !prof !14

bb.bs:                                            ; preds = %lean_dec.exit62
  %i.fo = ptrtoint ptr %.0.i118 to i64            ; 2 uses
  %i.fp = and i64 %i.fo, 1
  %.not21.i125 = icmp eq i64 %i.fp, 0
  br i1 %.not21.i125, label %lean_int_emod.exit130, label %bb.bt, !prof !14

bb.bt:                                            ; preds = %bb.bs
  %i.fq = shl i64 %i.fo, 31
  %i.fr = ashr i64 %i.fq, 32                      ; 3 uses
  %i.fs = icmp eq i64 %i.fr, 0
  br i1 %i.fs, label %lean_dec.exit58, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ft = shl i64 %i.fm, 31
  %i.fu = ashr i64 %i.ft, 32
  %i.fv = srem i64 %i.fu, %i.fr                   ; 2 uses
  %i.fw = icmp slt i64 %i.fv, 0
  %.p.i126 = tail call i64 @llvm.abs.i64(i64 %i.fr, i1 true)
  %i.fx = select i1 %i.fw, i64 %.p.i126, i64 0
  %.0.i127 = add nsw i64 %i.fx, %i.fv             ; 3 uses
  %5 = icmp slt i64 %.0.i127, 2147483648
  br i1 %5, label %bb.bv, label %bb.bw, !prof !13

bb.bv:                                            ; preds = %bb.bu
  %i.fy = shl nsw i64 %.0.i127, 1
  %6 = and i64 %i.fy, 8589934590
  %i.fz = or disjoint i64 %6, 1
  %i.ga = inttoptr i64 %i.fz to ptr
  br label %lean_dec.exit58

bb.bw:                                            ; preds = %bb.bu
  %i.gb = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i127) #6
  br label %lean_dec.exit58

lean_int_emod.exit130:                            ; preds = %bb.bs
  %i.gc = tail call ptr @lean_int_big_emod(ptr noundef %.0.i122186, ptr noundef %.0.i118) #6
  br label %lean_dec.exit58

bb.bx:                                            ; preds = %lean_dec.exit62
  %i.gd = tail call ptr @lean_int_big_emod(ptr noundef %.0.i122186, ptr noundef %.0.i118) #6 ; 3 uses
  %i.ge = load i32, ptr %.0.i122186, align 4, !tbaa !16 ; 3 uses
  %i.gf = icmp sgt i32 %i.ge, 1
  br i1 %i.gf, label %bb.by, label %bb.bz, !prof !13

bb.by:                                            ; preds = %bb.bx
  %i.gg = add nsw i32 %i.ge, -1
  store i32 %i.gg, ptr %.0.i122186, align 4, !tbaa !16
  br label %lean_dec.exit58

bb.bz:                                            ; preds = %bb.bx
  %.not.i.i56 = icmp eq i32 %i.ge, 0
  br i1 %.not.i.i56, label %lean_dec.exit58, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i122186) #6
  br label %lean_dec.exit58

lean_dec.exit58:                                  ; preds = %bb.bw, %bb.bv, %bb.bt, %lean_int_emod.exit130, %bb.by, %bb.bz, %bb.ca
  %.1.i128189 = phi ptr [ %i.gc, %lean_int_emod.exit130 ], [ %i.gd, %bb.by ], [ %i.gd, %bb.bz ], [ %i.gd, %bb.ca ], [ %i.gb, %bb.bw ], [ %i.ga, %bb.bv ], [ %.0.i122186, %bb.bt ] ; 6 uses
  %i.gh = ptrtoint ptr %.1.i128189 to i64         ; 2 uses
  %i.gi = and i64 %i.gh, 1
  %.not.i131 = icmp eq i64 %i.gi, 0
  br i1 %.not.i131, label %bb.cf, label %bb.cb, !prof !14

bb.cb:                                            ; preds = %lean_dec.exit58
  %i.gj = ptrtoint ptr %.0.i118 to i64            ; 2 uses
  %i.gk = and i64 %i.gj, 1
  %.not7.i132 = icmp eq i64 %i.gk, 0
  br i1 %.not7.i132, label %lean_int_add.exit135, label %bb.cc, !prof !14

bb.cc:                                            ; preds = %bb.cb
  %i.gl = shl i64 %i.gh, 31
  %i.gm = ashr i64 %i.gl, 32
  %i.gn = shl i64 %i.gj, 31
  %i.go = ashr i64 %i.gn, 32
  %i.gp = add nsw i64 %i.gm, %i.go                ; 3 uses
  %i.gq = add nsw i64 %i.gp, 2147483648
  %i.gr = icmp ult i64 %i.gq, 4294967296
  br i1 %i.gr, label %bb.cd, label %bb.ce, !prof !13

bb.cd:                                            ; preds = %bb.cc
  %i.gs = shl nsw i64 %i.gp, 1
  %i.gt = and i64 %i.gs, 8589934590
  %i.gu = or disjoint i64 %i.gt, 1
  %i.gv = inttoptr i64 %i.gu to ptr
  br label %lean_dec.exit54

bb.ce:                                            ; preds = %bb.cc
  %i.gw = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.gp) #6
  br label %lean_dec.exit54

lean_int_add.exit135:                             ; preds = %bb.cb
  %i.gx = tail call ptr @lean_int_big_add(ptr noundef %.1.i128189, ptr noundef %.0.i118) #6
  br label %lean_dec.exit54

bb.cf:                                            ; preds = %lean_dec.exit58
  %i.gy = tail call ptr @lean_int_big_add(ptr noundef %.1.i128189, ptr noundef %.0.i118) #6 ; 3 uses
  %i.gz = load i32, ptr %.1.i128189, align 4, !tbaa !16 ; 3 uses
  %i.ha = icmp sgt i32 %i.gz, 1
  br i1 %i.ha, label %bb.cg, label %bb.ch, !prof !13

bb.cg:                                            ; preds = %bb.cf
  %i.hb = add nsw i32 %i.gz, -1
  store i32 %i.hb, ptr %.1.i128189, align 4, !tbaa !16
  br label %lean_dec.exit54

bb.ch:                                            ; preds = %bb.cf
  %.not.i.i52 = icmp eq i32 %i.gz, 0
  br i1 %.not.i.i52, label %lean_dec.exit54, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i128189) #6
  br label %lean_dec.exit54

lean_dec.exit54:                                  ; preds = %bb.ce, %bb.cd, %lean_int_add.exit135, %bb.cg, %bb.ch, %bb.ci
  %.0.i133192 = phi ptr [ %i.gx, %lean_int_add.exit135 ], [ %i.gy, %bb.cg ], [ %i.gy, %bb.ch ], [ %i.gy, %bb.ci ], [ %i.gw, %bb.ce ], [ %i.gv, %bb.cd ] ; 7 uses
  %i.hc = ptrtoint ptr %.0.i133192 to i64         ; 2 uses
  %i.hd = and i64 %i.hc, 1
  %.not.i136 = icmp eq i64 %i.hd, 0
  br i1 %.not.i136, label %bb.co, label %bb.cj, !prof !14

bb.cj:                                            ; preds = %lean_dec.exit54
  %i.he = ptrtoint ptr %.0.i118 to i64            ; 2 uses
  %i.hf = and i64 %i.he, 1
  %.not21.i137 = icmp eq i64 %i.hf, 0
  br i1 %.not21.i137, label %lean_int_emod.exit142, label %bb.ck, !prof !14

bb.ck:                                            ; preds = %bb.cj
  %i.hg = shl i64 %i.he, 31
  %i.hh = ashr i64 %i.hg, 32                      ; 3 uses
  %i.hi = icmp eq i64 %i.hh, 0
  br i1 %i.hi, label %lean_dec.exit50, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.hj = shl i64 %i.hc, 31
  %i.hk = ashr i64 %i.hj, 32
  %i.hl = srem i64 %i.hk, %i.hh                   ; 2 uses
  %i.hm = icmp slt i64 %i.hl, 0
  %.p.i138 = tail call i64 @llvm.abs.i64(i64 %i.hh, i1 true)
  %i.hn = select i1 %i.hm, i64 %.p.i138, i64 0
  %.0.i139 = add nsw i64 %i.hn, %i.hl             ; 3 uses
  %7 = icmp slt i64 %.0.i139, 2147483648
  br i1 %7, label %bb.cm, label %bb.cn, !prof !13

bb.cm:                                            ; preds = %bb.cl
  %i.ho = shl nsw i64 %.0.i139, 1
  %8 = and i64 %i.ho, 8589934590
  %i.hp = or disjoint i64 %8, 1
  %i.hq = inttoptr i64 %i.hp to ptr
  br label %lean_dec.exit50

bb.cn:                                            ; preds = %bb.cl
  %i.hr = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i139) #6
  br label %lean_dec.exit50

lean_int_emod.exit142:                            ; preds = %bb.cj
  %i.hs = tail call ptr @lean_int_big_emod(ptr noundef %.0.i133192, ptr noundef %.0.i118) #6
  br label %lean_dec.exit50

bb.co:                                            ; preds = %lean_dec.exit54
  %i.ht = tail call ptr @lean_int_big_emod(ptr noundef %.0.i133192, ptr noundef %.0.i118) #6 ; 3 uses
  %i.hu = load i32, ptr %.0.i133192, align 4, !tbaa !16 ; 3 uses
  %i.hv = icmp sgt i32 %i.hu, 1
  br i1 %i.hv, label %bb.cp, label %bb.cq, !prof !13

bb.cp:                                            ; preds = %bb.co
  %i.hw = add nsw i32 %i.hu, -1
  store i32 %i.hw, ptr %.0.i133192, align 4, !tbaa !16
  br label %lean_dec.exit50

bb.cq:                                            ; preds = %bb.co
  %.not.i.i48 = icmp eq i32 %i.hu, 0
  br i1 %.not.i.i48, label %lean_dec.exit50, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i133192) #6
  br label %lean_dec.exit50

lean_dec.exit50:                                  ; preds = %bb.cn, %bb.cm, %bb.ck, %lean_int_emod.exit142, %bb.cp, %bb.cq, %bb.cr
  %.1.i140195 = phi ptr [ %i.hs, %lean_int_emod.exit142 ], [ %i.ht, %bb.cp ], [ %i.ht, %bb.cq ], [ %i.ht, %bb.cr ], [ %i.hr, %bb.cn ], [ %i.hq, %bb.cm ], [ %.0.i133192, %bb.ck ] ; 6 uses
  %i.hx = ptrtoint ptr %.1.i140195 to i64         ; 2 uses
  %i.hy = and i64 %i.hx, 1
  %.not.i143 = icmp eq i64 %i.hy, 0
  br i1 %.not.i143, label %bb.cw, label %bb.cs, !prof !14

bb.cs:                                            ; preds = %lean_dec.exit50
  %i.hz = ptrtoint ptr %.0.i116 to i64            ; 2 uses
  %i.ia = and i64 %i.hz, 1
  %.not7.i144 = icmp eq i64 %i.ia, 0
  br i1 %.not7.i144, label %lean_int_add.exit147, label %bb.ct, !prof !14

bb.ct:                                            ; preds = %bb.cs
  %i.ib = shl i64 %i.hx, 31
  %i.ic = ashr i64 %i.ib, 32
  %i.id = shl i64 %i.hz, 31
  %i.ie = ashr i64 %i.id, 32
  %i.if = add nsw i64 %i.ic, %i.ie                ; 3 uses
  %i.ig = add nsw i64 %i.if, 2147483648
  %i.ih = icmp ult i64 %i.ig, 4294967296
  br i1 %i.ih, label %bb.cu, label %bb.cv, !prof !13

bb.cu:                                            ; preds = %bb.ct
  %i.ii = shl nsw i64 %i.if, 1
  %i.ij = and i64 %i.ii, 8589934590
  %i.ik = or disjoint i64 %i.ij, 1
  %i.il = inttoptr i64 %i.ik to ptr
  br label %lean_dec.exit46

bb.cv:                                            ; preds = %bb.ct
  %i.im = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.if) #6
  br label %lean_dec.exit46

lean_int_add.exit147:                             ; preds = %bb.cs
  %i.in = tail call ptr @lean_int_big_add(ptr noundef %.1.i140195, ptr noundef %.0.i116) #6
  br label %lean_dec.exit46

bb.cw:                                            ; preds = %lean_dec.exit50
  %i.io = tail call ptr @lean_int_big_add(ptr noundef %.1.i140195, ptr noundef %.0.i116) #6 ; 3 uses
  %i.ip = load i32, ptr %.1.i140195, align 4, !tbaa !16 ; 3 uses
  %i.iq = icmp sgt i32 %i.ip, 1
  br i1 %i.iq, label %bb.cx, label %bb.cy, !prof !13

bb.cx:                                            ; preds = %bb.cw
  %i.ir = add nsw i32 %i.ip, -1
  store i32 %i.ir, ptr %.1.i140195, align 4, !tbaa !16
  br label %lean_dec.exit46

bb.cy:                                            ; preds = %bb.cw
  %.not.i.i44 = icmp eq i32 %i.ip, 0
  br i1 %.not.i.i44, label %lean_dec.exit46, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i140195) #6
  br label %lean_dec.exit46

lean_dec.exit46:                                  ; preds = %bb.cv, %bb.cu, %lean_int_add.exit147, %bb.cx, %bb.cy, %bb.cz
  %.0.i145198 = phi ptr [ %i.in, %lean_int_add.exit147 ], [ %i.io, %bb.cx ], [ %i.io, %bb.cy ], [ %i.io, %bb.cz ], [ %i.im, %bb.cv ], [ %i.il, %bb.cu ] ; 5 uses
  %i.is = tail call zeroext i8 @l_Std_Time_Weekday_ofOrdinal(ptr noundef %.0.i145198) #6
  %i.it = ptrtoint ptr %.0.i145198 to i64
  %i.iu = and i64 %i.it, 1
  %.not.i = icmp eq i64 %i.iu, 0
  br i1 %.not.i, label %bb.da, label %lean_dec.exit

bb.da:                                            ; preds = %lean_dec.exit46
  %i.iv = load i32, ptr %.0.i145198, align 4, !tbaa !16 ; 3 uses
  %i.iw = icmp sgt i32 %i.iv, 1
  br i1 %i.iw, label %bb.db, label %bb.dc, !prof !13

bb.db:                                            ; preds = %bb.da
  %i.ix = add nsw i32 %i.iv, -1
  store i32 %i.ix, ptr %.0.i145198, align 4, !tbaa !16
  br label %lean_dec.exit

bb.dc:                                            ; preds = %bb.da
  %.not.i.i = icmp eq i32 %i.iv, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i145198) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.db, %bb.dc, %bb.dd, %lean_dec.exit46
  ret i8 %i.is
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_PlainDate_weekday___closed__2() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_PlainDate_ofYearMonthDayClip___closed__0_once seq_cst, align 4, !tbaa !12
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_PlainDate_ofYearMonthDayClip___closed__0, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_PlainDate_ofYearMonthDayClip___closed__0, ptr noundef nonnull @l_Std_Time_PlainDate_ofYearMonthDayClip___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_PlainDate_ofYearMonthDayClip___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.f = and i64 %i.e, 1
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.g, label %bb.d, !prof !14

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = shl i64 %i.e, 31
  %i.h = ashr i64 %i.g, 32                        ; 2 uses
  %i.i = sub nsw i64 0, %i.h                      ; 2 uses
  %.not4.i = icmp eq i64 %i.h, -2147483648
  br i1 %.not4.i, label %bb.f, label %bb.e, !prof !14

bb.e:                                             ; preds = %bb.d
  %i.j = shl nsw i64 %i.i, 1
  %i.k = and i64 %i.j, 8589934590
  %i.l = or disjoint i64 %i.k, 1
  %i.m = inttoptr i64 %i.l to ptr
  br label %lean_int_neg.exit

bb.f:                                             ; preds = %bb.d
  %i.n = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.i) #6
  br label %lean_int_neg.exit

bb.g:                                             ; preds = %lean_obj_once.exit
  %i.o = tail call ptr @lean_int_big_neg(ptr noundef %.0.i) #6
  br label %lean_int_neg.exit

lean_int_neg.exit:                                ; preds = %bb.e, %bb.f, %bb.g
  %.0.i2 = phi ptr [ %i.o, %bb.g ], [ %i.m, %bb.e ], [ %i.n, %bb.f ]
  ret ptr %.0.i2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_init_l_Std_Time_PlainDate_weekday___closed__3() #1 {
bb.a:
  ret ptr inttoptr (i64 13 to ptr)
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_PlainDate_weekday___closed__1() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDate___closed__0_once seq_cst, align 4, !tbaa !12
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instInhabitedPlainDate___closed__0, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__0, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDate___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_PlainDate_weekday___closed__0_once seq_cst, align 4, !tbaa !12
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_PlainDate_weekday___closed__0, align 8, !tbaa !10
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_PlainDate_weekday___closed__0, ptr noundef nonnull @l_Std_Time_PlainDate_weekday___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_PlainDate_weekday___closed__0) #6
  br label %lean_obj_once.exit4
end_hunk_1
begin_hunk_2_@l_Std_Time_PlainDate_alignedWeekOfMonth:bb.a

.sink.split:                                      ; preds = %bb.ay, %bb.av
  %.sink414 = phi ptr [ %i.cy, %bb.av ], [ %i.da, %bb.ay ] ; 5 uses
  %.sink.ph = phi ptr [ %.0.i, %bb.av ], [ %i.cj, %bb.ay ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.sink414, i64 4
  store i32 1, ptr %.sink414, align 4, !tbaa !16
  store i32 196640, ptr %i.dc, align 4
  %i.dd = getelementptr inbounds nuw i8, ptr %.sink414, i64 8
  store ptr %i.b, ptr %i.dd, align 8, !tbaa !10
  %i.de = getelementptr inbounds nuw i8, ptr %.sink414, i64 16
  store ptr %i.d, ptr %i.de, align 8, !tbaa !10
  br label %bb.ba

bb.ba:                                            ; preds = %.sink.split, %bb.ax, %lean_dec.exit125
  %.sink407 = phi ptr [ %.0110, %bb.ax ], [ %.0110, %lean_dec.exit125 ], [ %.sink414, %.sink.split ] ; 2 uses
  %.sink = phi ptr [ %i.cj, %bb.ax ], [ %.0.i, %lean_dec.exit125 ], [ %.sink.ph, %.sink.split ]
  %i.df = getelementptr inbounds nuw i8, ptr %.sink407, i64 24
  store ptr %.sink, ptr %i.df, align 8, !tbaa !10
  %i.dg = tail call zeroext i8 @l_Std_Time_PlainDate_weekday(ptr noundef nonnull %.sink407)
  %i.dh = tail call ptr @l_Std_Time_Weekday_toOrdinal(i8 noundef zeroext %i.dg) #6 ; 6 uses
  %i.di = tail call ptr @l_Std_Time_Weekday_toOrdinal(i8 noundef zeroext %1) #6 ; 6 uses
  %i.dj = ptrtoint ptr %i.dh to i64               ; 2 uses
  %i.dk = and i64 %i.dj, 1
  %.not.i221 = icmp eq i64 %i.dk, 0               ; 2 uses
  %.pre303 = ptrtoint ptr %i.di to i64            ; 2 uses
  %.pre = and i64 %.pre303, 1
  %i.dl = icmp eq i64 %.pre, 0                    ; 2 uses
  br i1 %.not.i221, label %lean_int_sub.exit, label %bb.bb, !prof !14

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.dl, label %lean_int_sub.exit.thread359, label %bb.bc, !prof !14

lean_int_sub.exit.thread359:                      ; preds = %bb.bb
  %i.dm = tail call ptr @lean_int_big_sub(ptr noundef %i.dh, ptr noundef %i.di) #6
  br label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  %i.dn = shl i64 %i.dj, 31
  %i.do = ashr i64 %i.dn, 32
  %i.dp = shl i64 %.pre303, 31
  %i.dq = ashr i64 %i.dp, 32
  %i.dr = sub nsw i64 %i.do, %i.dq                ; 3 uses
  %i.ds = add nsw i64 %i.dr, 2147483648
  %i.dt = icmp ult i64 %i.ds, 4294967296
  br i1 %i.dt, label %bb.bd, label %bb.be, !prof !13

bb.bd:                                            ; preds = %bb.bc
  %i.du = shl nsw i64 %i.dr, 1
  %i.dv = and i64 %i.du, 8589934590
  %i.dw = or disjoint i64 %i.dv, 1
  %i.dx = inttoptr i64 %i.dw to ptr
  br label %lean_dec.exit177

bb.be:                                            ; preds = %bb.bc
  %i.dy = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.dr) #6
  br label %lean_dec.exit177

lean_int_sub.exit:                                ; preds = %bb.ba
  %i.dz = tail call ptr @lean_int_big_sub(ptr noundef %i.dh, ptr noundef %i.di) #6 ; 2 uses
  br i1 %i.dl, label %bb.bf, label %lean_dec.exit181.thread

bb.bf:                                            ; preds = %lean_int_sub.exit.thread359, %lean_int_sub.exit
  %i.ea = phi ptr [ %i.dm, %lean_int_sub.exit.thread359 ], [ %i.dz, %lean_int_sub.exit ] ; 2 uses
  %i.eb = load i32, ptr %i.di, align 4, !tbaa !16 ; 3 uses
  %i.ec = icmp sgt i32 %i.eb, 1
  br i1 %i.ec, label %bb.bg, label %bb.bh, !prof !13

bb.bg:                                            ; preds = %bb.bf
  %i.ed = add nsw i32 %i.eb, -1
  store i32 %i.ed, ptr %i.di, align 4, !tbaa !16
  br label %lean_dec.exit181

bb.bh:                                            ; preds = %bb.bf
  %.not.i.i179 = icmp eq i32 %i.eb, 0
  br i1 %.not.i.i179, label %lean_dec.exit181, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.di) #6
  br label %lean_dec.exit181

lean_dec.exit181:                                 ; preds = %bb.bg, %bb.bh, %bb.bi
  br i1 %.not.i221, label %lean_dec.exit181.thread, label %lean_dec.exit177

lean_dec.exit181.thread:                          ; preds = %lean_int_sub.exit, %lean_dec.exit181
  %.0.i222358363 = phi ptr [ %i.ea, %lean_dec.exit181 ], [ %i.dz, %lean_int_sub.exit ] ; 3 uses
  %i.ee = load i32, ptr %i.dh, align 4, !tbaa !16 ; 3 uses
  %i.ef = icmp sgt i32 %i.ee, 1
  br i1 %i.ef, label %bb.bj, label %bb.bk, !prof !13

bb.bj:                                            ; preds = %lean_dec.exit181.thread
  %i.eg = add nsw i32 %i.ee, -1
  store i32 %i.eg, ptr %i.dh, align 4, !tbaa !16
  br label %lean_dec.exit177

bb.bk:                                            ; preds = %lean_dec.exit181.thread
  %.not.i.i175 = icmp eq i32 %i.ee, 0
  br i1 %.not.i.i175, label %lean_dec.exit177, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dh) #6
  br label %lean_dec.exit177

lean_dec.exit177:                                 ; preds = %bb.bd, %bb.be, %bb.bj, %bb.bk, %bb.bl, %lean_dec.exit181
  %.0.i222358362 = phi ptr [ %.0.i222358363, %bb.bj ], [ %.0.i222358363, %bb.bk ], [ %.0.i222358363, %bb.bl ], [ %i.ea, %lean_dec.exit181 ], [ %i.dy, %bb.be ], [ %i.dx, %bb.bd ] ; 6 uses
  %i.eh = load atomic i32, ptr @l_Std_Time_instReprPlainDate_repr___redArg___closed__8_once seq_cst, align 4, !tbaa !12
  %i.ei = icmp eq i32 %i.eh, 1
  br i1 %i.ei, label %bb.bm, label %bb.bn, !prof !13

bb.bm:                                            ; preds = %lean_dec.exit177
  %i.ej = load ptr, ptr @l_Std_Time_instReprPlainDate_repr___redArg___closed__8, align 8, !tbaa !10
  br label %lean_obj_once.exit225

bb.bn:                                            ; preds = %lean_dec.exit177
  %i.ek = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instReprPlainDate_repr___redArg___closed__8, ptr noundef nonnull @l_Std_Time_instReprPlainDate_repr___redArg___closed__8_once, ptr noundef nonnull @_init_l_Std_Time_instReprPlainDate_repr___redArg___closed__8) #6
  br label %lean_obj_once.exit225

lean_obj_once.exit225:                            ; preds = %bb.bm, %bb.bn
  %.0.i224 = phi ptr [ %i.ej, %bb.bm ], [ %i.ek, %bb.bn ] ; 9 uses
  %i.el = ptrtoint ptr %.0.i222358362 to i64      ; 2 uses
  %i.em = and i64 %i.el, 1
  %.not.i226 = icmp eq i64 %i.em, 0
  br i1 %.not.i226, label %bb.bs, label %bb.bo, !prof !14

bb.bo:                                            ; preds = %lean_obj_once.exit225
  %i.en = ptrtoint ptr %.0.i224 to i64            ; 2 uses
  %i.eo = and i64 %i.en, 1
  %.not7.i227 = icmp eq i64 %i.eo, 0
  br i1 %.not7.i227, label %lean_int_add.exit, label %bb.bp, !prof !14

bb.bp:                                            ; preds = %bb.bo
  %i.ep = shl i64 %i.el, 31
  %i.eq = ashr i64 %i.ep, 32
  %i.er = shl i64 %i.en, 31
  %i.es = ashr i64 %i.er, 32
  %i.et = add nsw i64 %i.es, %i.eq                ; 3 uses
  %i.eu = add nsw i64 %i.et, 2147483648
  %i.ev = icmp ult i64 %i.eu, 4294967296
  br i1 %i.ev, label %bb.bq, label %bb.br, !prof !13

bb.bq:                                            ; preds = %bb.bp
  %i.ew = shl nsw i64 %i.et, 1
  %i.ex = and i64 %i.ew, 8589934590
  %i.ey = or disjoint i64 %i.ex, 1
  %i.ez = inttoptr i64 %i.ey to ptr
  br label %lean_dec.exit173

bb.br:                                            ; preds = %bb.bp
  %i.fa = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.et) #6
  br label %lean_dec.exit173

lean_int_add.exit:                                ; preds = %bb.bo
  %i.fb = tail call ptr @lean_int_big_add(ptr noundef %.0.i222358362, ptr noundef %.0.i224) #6
  br label %lean_dec.exit173

bb.bs:                                            ; preds = %lean_obj_once.exit225
  %i.fc = tail call ptr @lean_int_big_add(ptr noundef %.0.i222358362, ptr noundef %.0.i224) #6 ; 3 uses
  %i.fd = load i32, ptr %.0.i222358362, align 4, !tbaa !16 ; 3 uses
  %i.fe = icmp sgt i32 %i.fd, 1
  br i1 %i.fe, label %bb.bt, label %bb.bu, !prof !13

bb.bt:                                            ; preds = %bb.bs
  %i.ff = add nsw i32 %i.fd, -1
  store i32 %i.ff, ptr %.0.i222358362, align 4, !tbaa !16
  br label %lean_dec.exit173

bb.bu:                                            ; preds = %bb.bs
  %.not.i.i171 = icmp eq i32 %i.fd, 0
  br i1 %.not.i.i171, label %lean_dec.exit173, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i222358362) #6
  br label %lean_dec.exit173

lean_dec.exit173:                                 ; preds = %bb.br, %bb.bq, %lean_int_add.exit, %bb.bt, %bb.bu, %bb.bv
  %.0.i228367 = phi ptr [ %i.fb, %lean_int_add.exit ], [ %i.fc, %bb.bt ], [ %i.fc, %bb.bu ], [ %i.fc, %bb.bv ], [ %i.fa, %bb.br ], [ %i.ez, %bb.bq ] ; 7 uses
  %i.fg = ptrtoint ptr %.0.i228367 to i64         ; 2 uses
  %i.fh = and i64 %i.fg, 1
  %.not.i230 = icmp eq i64 %i.fh, 0
  br i1 %.not.i230, label %bb.cb, label %bb.bw, !prof !14

bb.bw:                                            ; preds = %lean_dec.exit173
  %i.fi = ptrtoint ptr %.0.i224 to i64            ; 2 uses
  %i.fj = and i64 %i.fi, 1
  %.not21.i = icmp eq i64 %i.fj, 0
  br i1 %.not21.i, label %lean_int_emod.exit, label %bb.bx, !prof !14

bb.bx:                                            ; preds = %bb.bw
  %i.fk = shl i64 %i.fi, 31
  %i.fl = ashr i64 %i.fk, 32                      ; 3 uses
  %i.fm = icmp eq i64 %i.fl, 0
  br i1 %i.fm, label %lean_dec.exit169, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.fn = shl i64 %i.fg, 31
  %i.fo = ashr i64 %i.fn, 32
  %i.fp = srem i64 %i.fo, %i.fl                   ; 2 uses
  %i.fq = icmp slt i64 %i.fp, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.fl, i1 true)
  %i.fr = select i1 %i.fq, i64 %.p.i, i64 0
  %.0.i231 = add nsw i64 %i.fr, %i.fp             ; 3 uses
  %2 = icmp slt i64 %.0.i231, 2147483648
  br i1 %2, label %bb.bz, label %bb.ca, !prof !13

bb.bz:                                            ; preds = %bb.by
  %i.fs = shl nsw i64 %.0.i231, 1
  %3 = and i64 %i.fs, 8589934590
  %i.ft = or disjoint i64 %3, 1
  %i.fu = inttoptr i64 %i.ft to ptr
  br label %lean_dec.exit169

bb.ca:                                            ; preds = %bb.by
  %i.fv = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i231) #6
  br label %lean_dec.exit169

lean_int_emod.exit:                               ; preds = %bb.bw
  %i.fw = tail call ptr @lean_int_big_emod(ptr noundef %.0.i228367, ptr noundef %.0.i224) #6
  br label %lean_dec.exit169

bb.cb:                                            ; preds = %lean_dec.exit173
  %i.fx = tail call ptr @lean_int_big_emod(ptr noundef %.0.i228367, ptr noundef %.0.i224) #6 ; 3 uses
  %i.fy = load i32, ptr %.0.i228367, align 4, !tbaa !16 ; 3 uses
  %i.fz = icmp sgt i32 %i.fy, 1
  br i1 %i.fz, label %bb.cc, label %bb.cd, !prof !13

bb.cc:                                            ; preds = %bb.cb
  %i.ga = add nsw i32 %i.fy, -1
  store i32 %i.ga, ptr %.0.i228367, align 4, !tbaa !16
  br label %lean_dec.exit169

bb.cd:                                            ; preds = %bb.cb
  %.not.i.i167 = icmp eq i32 %i.fy, 0
  br i1 %.not.i.i167, label %lean_dec.exit169, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i228367) #6
  br label %lean_dec.exit169

lean_dec.exit169:                                 ; preds = %bb.ca, %bb.bz, %bb.bx, %lean_int_emod.exit, %bb.cc, %bb.cd, %bb.ce
  %.1.i232370 = phi ptr [ %i.fw, %lean_int_emod.exit ], [ %i.fx, %bb.cc ], [ %i.fx, %bb.cd ], [ %i.fx, %bb.ce ], [ %i.fv, %bb.ca ], [ %i.fu, %bb.bz ], [ %.0.i228367, %bb.bx ] ; 6 uses
  %i.gb = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDate___closed__0_once seq_cst, align 4, !tbaa !12
  %i.gc = icmp eq i32 %i.gb, 1
  br i1 %i.gc, label %bb.cf, label %bb.cg, !prof !13

bb.cf:                                            ; preds = %lean_dec.exit169
  %i.gd = load ptr, ptr @l_Std_Time_instInhabitedPlainDate___closed__0, align 8, !tbaa !10
  br label %lean_obj_once.exit235

bb.cg:                                            ; preds = %lean_dec.exit169
  %i.ge = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__0, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDate___closed__0) #6
  br label %lean_obj_once.exit235

lean_obj_once.exit235:                            ; preds = %bb.cf, %bb.cg
  %.0.i234 = phi ptr [ %i.gd, %bb.cf ], [ %i.ge, %bb.cg ] ; 12 uses
  %i.gf = ptrtoint ptr %i.f to i64                ; 2 uses
  %i.gg = and i64 %i.gf, 1
  %.not.i236 = icmp eq i64 %i.gg, 0
  br i1 %.not.i236, label %bb.cl, label %bb.ch, !prof !14

bb.ch:                                            ; preds = %lean_obj_once.exit235
  %i.gh = ptrtoint ptr %.0.i234 to i64            ; 2 uses
  %i.gi = and i64 %i.gh, 1
  %.not7.i237 = icmp eq i64 %i.gi, 0
  br i1 %.not7.i237, label %lean_int_sub.exit240, label %bb.ci, !prof !14

bb.ci:                                            ; preds = %bb.ch
  %i.gj = shl i64 %i.gf, 31
  %i.gk = ashr i64 %i.gj, 32
  %i.gl = shl i64 %i.gh, 31
  %i.gm = ashr i64 %i.gl, 32
  %i.gn = sub nsw i64 %i.gk, %i.gm                ; 3 uses
  %i.go = add nsw i64 %i.gn, 2147483648
  %i.gp = icmp ult i64 %i.go, 4294967296
  br i1 %i.gp, label %bb.cj, label %bb.ck, !prof !13

bb.cj:                                            ; preds = %bb.ci
  %i.gq = shl nsw i64 %i.gn, 1
  %i.gr = and i64 %i.gq, 8589934590
  %i.gs = or disjoint i64 %i.gr, 1
  %i.gt = inttoptr i64 %i.gs to ptr
  br label %lean_dec.exit165

bb.ck:                                            ; preds = %bb.ci
  %i.gu = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.gn) #6
  br label %lean_dec.exit165

lean_int_sub.exit240:                             ; preds = %bb.ch
  %i.gv = tail call ptr @lean_int_big_sub(ptr noundef %i.f, ptr noundef %.0.i234) #6
  br label %lean_dec.exit165

bb.cl:                                            ; preds = %lean_obj_once.exit235
  %i.gw = tail call ptr @lean_int_big_sub(ptr noundef %i.f, ptr noundef %.0.i234) #6 ; 3 uses
  %i.gx = load i32, ptr %i.f, align 4, !tbaa !16  ; 3 uses
  %i.gy = icmp sgt i32 %i.gx, 1
  br i1 %i.gy, label %bb.cm, label %bb.cn, !prof !13

bb.cm:                                            ; preds = %bb.cl
  %i.gz = add nsw i32 %i.gx, -1
  store i32 %i.gz, ptr %i.f, align 4, !tbaa !16
  br label %lean_dec.exit165

bb.cn:                                            ; preds = %bb.cl
  %.not.i.i163 = icmp eq i32 %i.gx, 0
  br i1 %.not.i.i163, label %lean_dec.exit165, label %bb.co

bb.co:                                            ; preds = %bb.cn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.f) #6
  br label %lean_dec.exit165

lean_dec.exit165:                                 ; preds = %bb.ck, %bb.cj, %lean_int_sub.exit240, %bb.cm, %bb.cn, %bb.co
  %.0.i238373 = phi ptr [ %i.gv, %lean_int_sub.exit240 ], [ %i.gw, %bb.cm ], [ %i.gw, %bb.cn ], [ %i.gw, %bb.co ], [ %i.gu, %bb.ck ], [ %i.gt, %bb.cj ] ; 6 uses
  %i.ha = ptrtoint ptr %.0.i238373 to i64         ; 2 uses
  %i.hb = and i64 %i.ha, 1
  %.not.i241 = icmp eq i64 %i.hb, 0               ; 2 uses
  %.pre304 = ptrtoint ptr %.1.i232370 to i64      ; 2 uses
  %.pre305 = and i64 %.pre304, 1
  %i.hc = icmp eq i64 %.pre305, 0                 ; 2 uses
  br i1 %.not.i241, label %lean_int_add.exit245, label %bb.cp, !prof !14

bb.cp:                                            ; preds = %lean_dec.exit165
  br i1 %i.hc, label %lean_int_add.exit245.thread378, label %bb.cq, !prof !14

lean_int_add.exit245.thread378:                   ; preds = %bb.cp
  %i.hd = tail call ptr @lean_int_big_add(ptr noundef %.0.i238373, ptr noundef %.1.i232370) #6
  br label %bb.ct

bb.cq:                                            ; preds = %bb.cp
  %i.he = shl i64 %i.ha, 31
  %i.hf = ashr i64 %i.he, 32
  %i.hg = shl i64 %.pre304, 31
  %i.hh = ashr i64 %i.hg, 32
  %i.hi = add nsw i64 %i.hf, %i.hh                ; 3 uses
  %i.hj = add nsw i64 %i.hi, 2147483648
  %i.hk = icmp ult i64 %i.hj, 4294967296
  br i1 %i.hk, label %bb.cr, label %bb.cs, !prof !13

bb.cr:                                            ; preds = %bb.cq
  %i.hl = shl nsw i64 %i.hi, 1
  %i.hm = and i64 %i.hl, 8589934590
  %i.hn = or disjoint i64 %i.hm, 1
  %i.ho = inttoptr i64 %i.hn to ptr
  br label %lean_dec.exit157

bb.cs:                                            ; preds = %bb.cq
  %i.hp = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.hi) #6
  br label %lean_dec.exit157

lean_int_add.exit245:                             ; preds = %lean_dec.exit165
  %i.hq = tail call ptr @lean_int_big_add(ptr noundef %.0.i238373, ptr noundef %.1.i232370) #6 ; 2 uses
  br i1 %i.hc, label %bb.ct, label %lean_dec.exit161.thread

bb.ct:                                            ; preds = %lean_int_add.exit245.thread378, %lean_int_add.exit245
  %i.hr = phi ptr [ %i.hd, %lean_int_add.exit245.thread378 ], [ %i.hq, %lean_int_add.exit245 ] ; 2 uses
  %i.hs = load i32, ptr %.1.i232370, align 4, !tbaa !16 ; 3 uses
  %i.ht = icmp sgt i32 %i.hs, 1
  br i1 %i.ht, label %bb.cu, label %bb.cv, !prof !13

bb.cu:                                            ; preds = %bb.ct
  %i.hu = add nsw i32 %i.hs, -1
  store i32 %i.hu, ptr %.1.i232370, align 4, !tbaa !16
  br label %lean_dec.exit161

bb.cv:                                            ; preds = %bb.ct
  %.not.i.i159 = icmp eq i32 %i.hs, 0
  br i1 %.not.i.i159, label %lean_dec.exit161, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i232370) #6
  br label %lean_dec.exit161

lean_dec.exit161:                                 ; preds = %bb.cu, %bb.cv, %bb.cw
  br i1 %.not.i241, label %lean_dec.exit161.thread, label %lean_dec.exit157

lean_dec.exit161.thread:                          ; preds = %lean_int_add.exit245, %lean_dec.exit161
  %.0.i243377382 = phi ptr [ %i.hr, %lean_dec.exit161 ], [ %i.hq, %lean_int_add.exit245 ] ; 3 uses
  %i.hv = load i32, ptr %.0.i238373, align 4, !tbaa !16 ; 3 uses
  %i.hw = icmp sgt i32 %i.hv, 1
  br i1 %i.hw, label %bb.cx, label %bb.cy, !prof !13

bb.cx:                                            ; preds = %lean_dec.exit161.thread
  %i.hx = add nsw i32 %i.hv, -1
  store i32 %i.hx, ptr %.0.i238373, align 4, !tbaa !16
  br label %lean_dec.exit157

bb.cy:                                            ; preds = %lean_dec.exit161.thread
  %.not.i.i155 = icmp eq i32 %i.hv, 0
  br i1 %.not.i.i155, label %lean_dec.exit157, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i238373) #6
  br label %lean_dec.exit157

lean_dec.exit157:                                 ; preds = %bb.cr, %bb.cs, %bb.cx, %bb.cy, %bb.cz, %lean_dec.exit161
  %.0.i243377381 = phi ptr [ %.0.i243377382, %bb.cx ], [ %.0.i243377382, %bb.cy ], [ %.0.i243377382, %bb.cz ], [ %i.hr, %lean_dec.exit161 ], [ %i.hp, %bb.cs ], [ %i.ho, %bb.cr ] ; 6 uses
  %i.hy = ptrtoint ptr %.0.i243377381 to i64      ; 2 uses
  %i.hz = and i64 %i.hy, 1
  %.not.i246 = icmp eq i64 %i.hz, 0
  br i1 %.not.i246, label %bb.df, label %bb.da, !prof !14

bb.da:                                            ; preds = %lean_dec.exit157
  %i.ia = ptrtoint ptr %.0.i224 to i64            ; 2 uses
  %i.ib = and i64 %i.ia, 1
  %.not18.i = icmp eq i64 %i.ib, 0
  br i1 %.not18.i, label %lean_int_ediv.exit, label %bb.db, !prof !14

bb.db:                                            ; preds = %bb.da
  %i.ic = lshr i64 %i.ia, 1                       ; 2 uses
  %i.id = trunc i64 %i.ic to i32                  ; 2 uses
end_hunk_2
begin_hunk_3_@l_Std_Time_PlainDate_alignedWeekOfMonth:bb.a
  %i.ii = sdiv i64 %i.ih, %i.if
  %i.ij = srem i64 %i.ih, %i.if
  %i.ik = icmp slt i64 %i.ij, 0
  %i.il = icmp sgt i32 %i.id, 0
  %.v.i = select i1 %i.il, i64 -1, i64 1
  %i.im = select i1 %i.ik, i64 %.v.i, i64 0
  %.0.i247 = add nsw i64 %i.im, %i.ii             ; 3 uses
  %i.in = add nsw i64 %.0.i247, 2147483648
  %i.io = icmp ult i64 %i.in, 4294967296
  br i1 %i.io, label %bb.dd, label %bb.de, !prof !13

bb.dd:                                            ; preds = %bb.dc
  %i.ip = shl nsw i64 %.0.i247, 1
  %i.iq = and i64 %i.ip, 8589934590
  %i.ir = or disjoint i64 %i.iq, 1
  %i.is = inttoptr i64 %i.ir to ptr
  br label %lean_dec.exit153

bb.de:                                            ; preds = %bb.dc
  %i.it = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i247) #6
  br label %lean_dec.exit153

lean_int_ediv.exit:                               ; preds = %bb.da
  %i.iu = tail call ptr @lean_int_big_ediv(ptr noundef %.0.i243377381, ptr noundef %.0.i224) #6
  br label %lean_dec.exit153

bb.df:                                            ; preds = %lean_dec.exit157
  %i.iv = tail call ptr @lean_int_big_ediv(ptr noundef %.0.i243377381, ptr noundef %.0.i224) #6 ; 3 uses
  %i.iw = load i32, ptr %.0.i243377381, align 4, !tbaa !16 ; 3 uses
  %i.ix = icmp sgt i32 %i.iw, 1
  br i1 %i.ix, label %bb.dg, label %bb.dh, !prof !13

bb.dg:                                            ; preds = %bb.df
  %i.iy = add nsw i32 %i.iw, -1
  store i32 %i.iy, ptr %.0.i243377381, align 4, !tbaa !16
  br label %lean_dec.exit153

bb.dh:                                            ; preds = %bb.df
  %.not.i.i151 = icmp eq i32 %i.iw, 0
  br i1 %.not.i.i151, label %lean_dec.exit153, label %bb.di

bb.di:                                            ; preds = %bb.dh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i243377381) #6
  br label %lean_dec.exit153

lean_dec.exit153:                                 ; preds = %bb.de, %bb.dd, %bb.db, %lean_int_ediv.exit, %bb.dg, %bb.dh, %bb.di
  %.1.i248386 = phi ptr [ %i.iu, %lean_int_ediv.exit ], [ %i.iv, %bb.dg ], [ %i.iv, %bb.dh ], [ %i.iv, %bb.di ], [ %i.it, %bb.de ], [ %i.is, %bb.dd ], [ inttoptr (i64 1 to ptr), %bb.db ] ; 6 uses
  %i.iz = ptrtoint ptr %.1.i248386 to i64         ; 2 uses
  %i.ja = and i64 %i.iz, 1
  %.not.i250 = icmp eq i64 %i.ja, 0
  br i1 %.not.i250, label %bb.dn, label %bb.dj, !prof !14

bb.dj:                                            ; preds = %lean_dec.exit153
  %i.jb = ptrtoint ptr %.0.i234 to i64            ; 2 uses
  %i.jc = and i64 %i.jb, 1
  %.not7.i251 = icmp eq i64 %i.jc, 0
  br i1 %.not7.i251, label %lean_int_add.exit254, label %bb.dk, !prof !14

bb.dk:                                            ; preds = %bb.dj
  %i.jd = shl i64 %i.iz, 31
  %i.je = ashr i64 %i.jd, 32
  %i.jf = shl i64 %i.jb, 31
  %i.jg = ashr i64 %i.jf, 32
  %i.jh = add nsw i64 %i.je, %i.jg                ; 3 uses
  %i.ji = add nsw i64 %i.jh, 2147483648
  %i.jj = icmp ult i64 %i.ji, 4294967296
  br i1 %i.jj, label %bb.dl, label %bb.dm, !prof !13

bb.dl:                                            ; preds = %bb.dk
  %i.jk = shl nsw i64 %i.jh, 1
  %i.jl = and i64 %i.jk, 8589934590
  %i.jm = or disjoint i64 %i.jl, 1
  %i.jn = inttoptr i64 %i.jm to ptr
  br label %lean_dec.exit149

bb.dm:                                            ; preds = %bb.dk
  %i.jo = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.jh) #6
  br label %lean_dec.exit149

lean_int_add.exit254:                             ; preds = %bb.dj
  %i.jp = tail call ptr @lean_int_big_add(ptr noundef %.1.i248386, ptr noundef %.0.i234) #6
  br label %lean_dec.exit149

bb.dn:                                            ; preds = %lean_dec.exit153
  %i.jq = tail call ptr @lean_int_big_add(ptr noundef %.1.i248386, ptr noundef %.0.i234) #6 ; 3 uses
  %i.jr = load i32, ptr %.1.i248386, align 4, !tbaa !16 ; 3 uses
  %i.js = icmp sgt i32 %i.jr, 1
  br i1 %i.js, label %bb.do, label %bb.dp, !prof !13

bb.do:                                            ; preds = %bb.dn
  %i.jt = add nsw i32 %i.jr, -1
  store i32 %i.jt, ptr %.1.i248386, align 4, !tbaa !16
  br label %lean_dec.exit149

bb.dp:                                            ; preds = %bb.dn
  %.not.i.i147 = icmp eq i32 %i.jr, 0
  br i1 %.not.i.i147, label %lean_dec.exit149, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i248386) #6
  br label %lean_dec.exit149

lean_dec.exit149:                                 ; preds = %bb.dm, %bb.dl, %lean_int_add.exit254, %bb.do, %bb.dp, %bb.dq
  %.0.i252389 = phi ptr [ %i.jp, %lean_int_add.exit254 ], [ %i.jq, %bb.do ], [ %i.jq, %bb.dp ], [ %i.jq, %bb.dq ], [ %i.jo, %bb.dm ], [ %i.jn, %bb.dl ] ; 6 uses
  %i.ju = load atomic i32, ptr @l_Std_Time_PlainDate_alignedWeekOfMonth___closed__1_once seq_cst, align 4, !tbaa !12
  %i.jv = icmp eq i32 %i.ju, 1
  br i1 %i.jv, label %bb.dr, label %bb.ds, !prof !13

bb.dr:                                            ; preds = %lean_dec.exit149
  %i.jw = load ptr, ptr @l_Std_Time_PlainDate_alignedWeekOfMonth___closed__1, align 8, !tbaa !10
  br label %lean_obj_once.exit256

bb.ds:                                            ; preds = %lean_dec.exit149
  %i.jx = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_PlainDate_alignedWeekOfMonth___closed__1, ptr noundef nonnull @l_Std_Time_PlainDate_alignedWeekOfMonth___closed__1_once, ptr noundef nonnull @_init_l_Std_Time_PlainDate_alignedWeekOfMonth___closed__1) #6
  br label %lean_obj_once.exit256

lean_obj_once.exit256:                            ; preds = %bb.dr, %bb.ds
  %.0.i255 = phi ptr [ %i.jw, %bb.dr ], [ %i.jx, %bb.ds ] ; 9 uses
  %i.jy = ptrtoint ptr %.0.i252389 to i64         ; 2 uses
  %i.jz = and i64 %i.jy, 1
  %.not.i257 = icmp eq i64 %i.jz, 0
  br i1 %.not.i257, label %bb.dx, label %bb.dt, !prof !14

bb.dt:                                            ; preds = %lean_obj_once.exit256
  %i.ka = ptrtoint ptr %.0.i234 to i64            ; 2 uses
  %i.kb = and i64 %i.ka, 1
  %.not7.i258 = icmp eq i64 %i.kb, 0
  br i1 %.not7.i258, label %lean_int_sub.exit261, label %bb.du, !prof !14

bb.du:                                            ; preds = %bb.dt
  %i.kc = shl i64 %i.jy, 31
  %i.kd = ashr i64 %i.kc, 32
  %i.ke = shl i64 %i.ka, 31
  %i.kf = ashr i64 %i.ke, 32
  %i.kg = sub nsw i64 %i.kd, %i.kf                ; 3 uses
  %i.kh = add nsw i64 %i.kg, 2147483648
  %i.ki = icmp ult i64 %i.kh, 4294967296
  br i1 %i.ki, label %bb.dv, label %bb.dw, !prof !13

bb.dv:                                            ; preds = %bb.du
  %i.kj = shl nsw i64 %i.kg, 1
  %i.kk = and i64 %i.kj, 8589934590
  %i.kl = or disjoint i64 %i.kk, 1
  %i.km = inttoptr i64 %i.kl to ptr
  br label %lean_dec.exit145

bb.dw:                                            ; preds = %bb.du
  %i.kn = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.kg) #6
  br label %lean_dec.exit145

lean_int_sub.exit261:                             ; preds = %bb.dt
  %i.ko = tail call ptr @lean_int_big_sub(ptr noundef %.0.i252389, ptr noundef %.0.i234) #6
  br label %lean_dec.exit145

bb.dx:                                            ; preds = %lean_obj_once.exit256
  %i.kp = tail call ptr @lean_int_big_sub(ptr noundef %.0.i252389, ptr noundef %.0.i234) #6 ; 3 uses
  %i.kq = load i32, ptr %.0.i252389, align 4, !tbaa !16 ; 3 uses
  %i.kr = icmp sgt i32 %i.kq, 1
  br i1 %i.kr, label %bb.dy, label %bb.dz, !prof !13

bb.dy:                                            ; preds = %bb.dx
  %i.ks = add nsw i32 %i.kq, -1
  store i32 %i.ks, ptr %.0.i252389, align 4, !tbaa !16
  br label %lean_dec.exit145

bb.dz:                                            ; preds = %bb.dx
  %.not.i.i143 = icmp eq i32 %i.kq, 0
  br i1 %.not.i.i143, label %lean_dec.exit145, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i252389) #6
  br label %lean_dec.exit145

lean_dec.exit145:                                 ; preds = %bb.dw, %bb.dv, %lean_int_sub.exit261, %bb.dy, %bb.dz, %bb.ea
  %.0.i259392 = phi ptr [ %i.ko, %lean_int_sub.exit261 ], [ %i.kp, %bb.dy ], [ %i.kp, %bb.dz ], [ %i.kp, %bb.ea ], [ %i.kn, %bb.dw ], [ %i.km, %bb.dv ] ; 7 uses
  %i.kt = ptrtoint ptr %.0.i259392 to i64         ; 2 uses
  %i.ku = and i64 %i.kt, 1
  %.not.i262 = icmp eq i64 %i.ku, 0
  br i1 %.not.i262, label %bb.eg, label %bb.eb, !prof !14

bb.eb:                                            ; preds = %lean_dec.exit145
  %i.kv = ptrtoint ptr %.0.i255 to i64            ; 2 uses
  %i.kw = and i64 %i.kv, 1
  %.not21.i263 = icmp eq i64 %i.kw, 0
  br i1 %.not21.i263, label %lean_int_emod.exit268, label %bb.ec, !prof !14

bb.ec:                                            ; preds = %bb.eb
  %i.kx = shl i64 %i.kv, 31
  %i.ky = ashr i64 %i.kx, 32                      ; 3 uses
  %i.kz = icmp eq i64 %i.ky, 0
  br i1 %i.kz, label %lean_dec.exit141, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.la = shl i64 %i.kt, 31
  %i.lb = ashr i64 %i.la, 32
  %i.lc = srem i64 %i.lb, %i.ky                   ; 2 uses
  %i.ld = icmp slt i64 %i.lc, 0
  %.p.i264 = tail call i64 @llvm.abs.i64(i64 %i.ky, i1 true)
  %i.le = select i1 %i.ld, i64 %.p.i264, i64 0
  %.0.i265 = add nsw i64 %i.le, %i.lc             ; 3 uses
  %4 = icmp slt i64 %.0.i265, 2147483648
  br i1 %4, label %bb.ee, label %bb.ef, !prof !13

bb.ee:                                            ; preds = %bb.ed
  %i.lf = shl nsw i64 %.0.i265, 1
  %5 = and i64 %i.lf, 8589934590
  %i.lg = or disjoint i64 %5, 1
  %i.lh = inttoptr i64 %i.lg to ptr
  br label %lean_dec.exit141

bb.ef:                                            ; preds = %bb.ed
  %i.li = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i265) #6
  br label %lean_dec.exit141

lean_int_emod.exit268:                            ; preds = %bb.eb
  %i.lj = tail call ptr @lean_int_big_emod(ptr noundef %.0.i259392, ptr noundef %.0.i255) #6
  br label %lean_dec.exit141

bb.eg:                                            ; preds = %lean_dec.exit145
  %i.lk = tail call ptr @lean_int_big_emod(ptr noundef %.0.i259392, ptr noundef %.0.i255) #6 ; 3 uses
  %i.ll = load i32, ptr %.0.i259392, align 4, !tbaa !16 ; 3 uses
  %i.lm = icmp sgt i32 %i.ll, 1
  br i1 %i.lm, label %bb.eh, label %bb.ei, !prof !13

bb.eh:                                            ; preds = %bb.eg
  %i.ln = add nsw i32 %i.ll, -1
  store i32 %i.ln, ptr %.0.i259392, align 4, !tbaa !16
  br label %lean_dec.exit141

bb.ei:                                            ; preds = %bb.eg
  %.not.i.i139 = icmp eq i32 %i.ll, 0
  br i1 %.not.i.i139, label %lean_dec.exit141, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i259392) #6
  br label %lean_dec.exit141

lean_dec.exit141:                                 ; preds = %bb.ef, %bb.ee, %bb.ec, %lean_int_emod.exit268, %bb.eh, %bb.ei, %bb.ej
  %.1.i266395 = phi ptr [ %i.lj, %lean_int_emod.exit268 ], [ %i.lk, %bb.eh ], [ %i.lk, %bb.ei ], [ %i.lk, %bb.ej ], [ %i.li, %bb.ef ], [ %i.lh, %bb.ee ], [ %.0.i259392, %bb.ec ] ; 6 uses
  %i.lo = ptrtoint ptr %.1.i266395 to i64         ; 2 uses
  %i.lp = and i64 %i.lo, 1
  %.not.i269 = icmp eq i64 %i.lp, 0
  br i1 %.not.i269, label %bb.eo, label %bb.ek, !prof !14

bb.ek:                                            ; preds = %lean_dec.exit141
  %i.lq = ptrtoint ptr %.0.i255 to i64            ; 2 uses
  %i.lr = and i64 %i.lq, 1
  %.not7.i270 = icmp eq i64 %i.lr, 0
  br i1 %.not7.i270, label %lean_int_add.exit273, label %bb.el, !prof !14

bb.el:                                            ; preds = %bb.ek
  %i.ls = shl i64 %i.lo, 31
  %i.lt = ashr i64 %i.ls, 32
  %i.lu = shl i64 %i.lq, 31
  %i.lv = ashr i64 %i.lu, 32
  %i.lw = add nsw i64 %i.lt, %i.lv                ; 3 uses
  %i.lx = add nsw i64 %i.lw, 2147483648
  %i.ly = icmp ult i64 %i.lx, 4294967296
  br i1 %i.ly, label %bb.em, label %bb.en, !prof !13

bb.em:                                            ; preds = %bb.el
  %i.lz = shl nsw i64 %i.lw, 1
  %i.ma = and i64 %i.lz, 8589934590
  %i.mb = or disjoint i64 %i.ma, 1
  %i.mc = inttoptr i64 %i.mb to ptr
  br label %lean_dec.exit137

bb.en:                                            ; preds = %bb.el
  %i.md = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.lw) #6
  br label %lean_dec.exit137

lean_int_add.exit273:                             ; preds = %bb.ek
  %i.me = tail call ptr @lean_int_big_add(ptr noundef %.1.i266395, ptr noundef %.0.i255) #6
  br label %lean_dec.exit137

bb.eo:                                            ; preds = %lean_dec.exit141
  %i.mf = tail call ptr @lean_int_big_add(ptr noundef %.1.i266395, ptr noundef %.0.i255) #6 ; 3 uses
  %i.mg = load i32, ptr %.1.i266395, align 4, !tbaa !16 ; 3 uses
  %i.mh = icmp sgt i32 %i.mg, 1
  br i1 %i.mh, label %bb.ep, label %bb.eq, !prof !13

bb.ep:                                            ; preds = %bb.eo
  %i.mi = add nsw i32 %i.mg, -1
  store i32 %i.mi, ptr %.1.i266395, align 4, !tbaa !16
  br label %lean_dec.exit137

bb.eq:                                            ; preds = %bb.eo
  %.not.i.i135 = icmp eq i32 %i.mg, 0
  br i1 %.not.i.i135, label %lean_dec.exit137, label %bb.er

bb.er:                                            ; preds = %bb.eq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i266395) #6
  br label %lean_dec.exit137

lean_dec.exit137:                                 ; preds = %bb.en, %bb.em, %lean_int_add.exit273, %bb.ep, %bb.eq, %bb.er
  %.0.i271398 = phi ptr [ %i.me, %lean_int_add.exit273 ], [ %i.mf, %bb.ep ], [ %i.mf, %bb.eq ], [ %i.mf, %bb.er ], [ %i.md, %bb.en ], [ %i.mc, %bb.em ] ; 7 uses
  %i.mj = ptrtoint ptr %.0.i271398 to i64         ; 2 uses
  %i.mk = and i64 %i.mj, 1
  %.not.i274 = icmp eq i64 %i.mk, 0
  br i1 %.not.i274, label %bb.ex, label %bb.es, !prof !14

bb.es:                                            ; preds = %lean_dec.exit137
  %i.ml = ptrtoint ptr %.0.i255 to i64            ; 2 uses
  %i.mm = and i64 %i.ml, 1
  %.not21.i275 = icmp eq i64 %i.mm, 0
  br i1 %.not21.i275, label %lean_int_emod.exit280, label %bb.et, !prof !14

bb.et:                                            ; preds = %bb.es
  %i.mn = shl i64 %i.ml, 31
  %i.mo = ashr i64 %i.mn, 32                      ; 3 uses
  %i.mp = icmp eq i64 %i.mo, 0
  br i1 %i.mp, label %lean_dec.exit133, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.mq = shl i64 %i.mj, 31
  %i.mr = ashr i64 %i.mq, 32
  %i.ms = srem i64 %i.mr, %i.mo                   ; 2 uses
  %i.mt = icmp slt i64 %i.ms, 0
  %.p.i276 = tail call i64 @llvm.abs.i64(i64 %i.mo, i1 true)
  %i.mu = select i1 %i.mt, i64 %.p.i276, i64 0
  %.0.i277 = add nsw i64 %i.mu, %i.ms             ; 3 uses
  %6 = icmp slt i64 %.0.i277, 2147483648
  br i1 %6, label %bb.ev, label %bb.ew, !prof !13

bb.ev:                                            ; preds = %bb.eu
  %i.mv = shl nsw i64 %.0.i277, 1
  %7 = and i64 %i.mv, 8589934590
  %i.mw = or disjoint i64 %7, 1
  %i.mx = inttoptr i64 %i.mw to ptr
  br label %lean_dec.exit133

bb.ew:                                            ; preds = %bb.eu
  %i.my = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i277) #6
  br label %lean_dec.exit133

lean_int_emod.exit280:                            ; preds = %bb.es
  %i.mz = tail call ptr @lean_int_big_emod(ptr noundef %.0.i271398, ptr noundef %.0.i255) #6
  br label %lean_dec.exit133

bb.ex:                                            ; preds = %lean_dec.exit137
  %i.na = tail call ptr @lean_int_big_emod(ptr noundef %.0.i271398, ptr noundef %.0.i255) #6 ; 3 uses
  %i.nb = load i32, ptr %.0.i271398, align 4, !tbaa !16 ; 3 uses
  %i.nc = icmp sgt i32 %i.nb, 1
  br i1 %i.nc, label %bb.ey, label %bb.ez, !prof !13

bb.ey:                                            ; preds = %bb.ex
  %i.nd = add nsw i32 %i.nb, -1
  store i32 %i.nd, ptr %.0.i271398, align 4, !tbaa !16
  br label %lean_dec.exit133

bb.ez:                                            ; preds = %bb.ex
  %.not.i.i131 = icmp eq i32 %i.nb, 0
  br i1 %.not.i.i131, label %lean_dec.exit133, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i271398) #6
  br label %lean_dec.exit133

lean_dec.exit133:                                 ; preds = %bb.ew, %bb.ev, %bb.et, %lean_int_emod.exit280, %bb.ey, %bb.ez, %bb.fa
  %.1.i278401 = phi ptr [ %i.mz, %lean_int_emod.exit280 ], [ %i.na, %bb.ey ], [ %i.na, %bb.ez ], [ %i.na, %bb.fa ], [ %i.my, %bb.ew ], [ %i.mx, %bb.ev ], [ %.0.i271398, %bb.et ] ; 6 uses
  %i.ne = ptrtoint ptr %.1.i278401 to i64         ; 2 uses
  %i.nf = and i64 %i.ne, 1
  %.not.i281 = icmp eq i64 %i.nf, 0
  br i1 %.not.i281, label %bb.ff, label %bb.fb, !prof !14

bb.fb:                                            ; preds = %lean_dec.exit133
  %i.ng = ptrtoint ptr %.0.i234 to i64            ; 2 uses
  %i.nh = and i64 %i.ng, 1
  %.not7.i282 = icmp eq i64 %i.nh, 0
  br i1 %.not7.i282, label %lean_int_add.exit285, label %bb.fc, !prof !14

bb.fc:                                            ; preds = %bb.fb
  %i.ni = shl i64 %i.ne, 31
  %i.nj = ashr i64 %i.ni, 32
  %i.nk = shl i64 %i.ng, 31
  %i.nl = ashr i64 %i.nk, 32
  %i.nm = add nsw i64 %i.nj, %i.nl                ; 3 uses
  %i.nn = add nsw i64 %i.nm, 2147483648
  %i.no = icmp ult i64 %i.nn, 4294967296
  br i1 %i.no, label %bb.fd, label %bb.fe, !prof !13

bb.fd:                                            ; preds = %bb.fc
  %i.np = shl nsw i64 %i.nm, 1
  %i.nq = and i64 %i.np, 8589934590
  %i.nr = or disjoint i64 %i.nq, 1
  %i.ns = inttoptr i64 %i.nr to ptr
  br label %lean_dec.exit129

bb.fe:                                            ; preds = %bb.fc
  %i.nt = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.nm) #6
  br label %lean_dec.exit129

lean_int_add.exit285:                             ; preds = %bb.fb
  %i.nu = tail call ptr @lean_int_big_add(ptr noundef %.1.i278401, ptr noundef %.0.i234) #6
  br label %lean_dec.exit129

bb.ff:                                            ; preds = %lean_dec.exit133
  %i.nv = tail call ptr @lean_int_big_add(ptr noundef %.1.i278401, ptr noundef %.0.i234) #6 ; 3 uses
  %i.nw = load i32, ptr %.1.i278401, align 4, !tbaa !16 ; 3 uses
  %i.nx = icmp sgt i32 %i.nw, 1
  br i1 %i.nx, label %bb.fg, label %bb.fh, !prof !13

bb.fg:                                            ; preds = %bb.ff
  %i.ny = add nsw i32 %i.nw, -1
  store i32 %i.ny, ptr %.1.i278401, align 4, !tbaa !16
  br label %lean_dec.exit129

bb.fh:                                            ; preds = %bb.ff
  %.not.i.i127 = icmp eq i32 %i.nw, 0
  br i1 %.not.i.i127, label %lean_dec.exit129, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i278401) #6
  br label %lean_dec.exit129

lean_dec.exit129:                                 ; preds = %bb.fe, %bb.fd, %lean_int_add.exit285, %bb.fg, %bb.fh, %bb.fi
  %.0.i283404 = phi ptr [ %i.nu, %lean_int_add.exit285 ], [ %i.nv, %bb.fg ], [ %i.nv, %bb.fh ], [ %i.nv, %bb.fi ], [ %i.nt, %bb.fe ], [ %i.ns, %bb.fd ]
  ret ptr %.0.i283404

bb.fj:                                            ; preds = %lean_dec.exit185
  %i.nz = load atomic i32, ptr @l_Std_Time_PlainDate_ofYearMonthDayClip___closed__1_once seq_cst, align 4, !tbaa !12
  %i.oa = icmp eq i32 %i.nz, 1
  br i1 %i.oa, label %bb.fk, label %bb.fl, !prof !13

bb.fk:                                            ; preds = %bb.fj
  %i.ob = load ptr, ptr @l_Std_Time_PlainDate_ofYearMonthDayClip___closed__1, align 8, !tbaa !10
  br label %lean_obj_once.exit287

bb.fl:                                            ; preds = %bb.fj
  %i.oc = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_PlainDate_ofYearMonthDayClip___closed__1, ptr noundef nonnull @l_Std_Time_PlainDate_ofYearMonthDayClip___closed__1_once, ptr noundef nonnull @_init_l_Std_Time_PlainDate_ofYearMonthDayClip___closed__1) #6
  br label %lean_obj_once.exit287

lean_obj_once.exit287:                            ; preds = %bb.fk, %bb.fl
  %.0.i286 = phi ptr [ %i.ob, %bb.fk ], [ %i.oc, %bb.fl ] ; 2 uses
  br i1 %.not.i203, label %.critedge.i291, label %bb.fm, !prof !14

bb.fm:                                            ; preds = %lean_obj_once.exit287
  %i.od = ptrtoint ptr %.0.i286 to i64            ; 2 uses
  %i.oe = and i64 %i.od, 1
  %.not11.i289 = icmp eq i64 %i.oe, 0
  br i1 %.not11.i289, label %.critedge.i291, label %bb.fn, !prof !14

bb.fn:                                            ; preds = %bb.fm
  %i.of = shl i64 %i.od, 31
  %i.og = ashr i64 %i.of, 32                      ; 2 uses
  %i.oh = icmp eq i64 %i.og, 0
  br i1 %i.oh, label %lean_int_mod.exit292, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.oi = shl i64 %i.ah, 31
  %i.oj = ashr i64 %i.oi, 32
  %i.ok = srem i64 %i.oj, %i.og
  %i.ol = shl nsw i64 %i.ok, 1
  %i.om = and i64 %i.ol, 8589934590
  %i.on = or disjoint i64 %i.om, 1
  %i.oo = inttoptr i64 %i.on to ptr
  br label %lean_int_mod.exit292

.critedge.i291:                                   ; preds = %bb.fm, %lean_obj_once.exit287
  %i.op = tail call ptr @lean_int_big_mod(ptr noundef %i.b, ptr noundef %.0.i286) #6
  br label %lean_int_mod.exit292

lean_int_mod.exit292:                             ; preds = %bb.fn, %bb.fo, %.critedge.i291
  %.1.i290 = phi ptr [ %i.op, %.critedge.i291 ], [ %i.b, %bb.fn ], [ %i.oo, %bb.fo ] ; 6 uses
  %i.oq = ptrtoint ptr %.1.i290 to i64            ; 2 uses
  %i.or = and i64 %i.bc, %i.oq
  %or.cond.not.i.i293 = icmp eq i64 %i.or, 0
  br i1 %or.cond.not.i.i293, label %.critedge.i.i295, label %bb.fp, !prof !17

bb.fp:                                            ; preds = %lean_int_mod.exit292
  %i.os = icmp eq ptr %.1.i290, %.0.i204
  br label %lean_int_dec_eq.exit296

.critedge.i.i295:                                 ; preds = %lean_int_mod.exit292
  %i.ot = tail call zeroext i1 @lean_int_big_eq(ptr noundef %.1.i290, ptr noundef %.0.i204) #6
  br label %lean_int_dec_eq.exit296

lean_int_dec_eq.exit296:                          ; preds = %bb.fp, %.critedge.i.i295
  %.0.i.i294 = phi i1 [ %i.os, %bb.fp ], [ %i.ot, %.critedge.i.i295 ] ; 4 uses
  %i.ou = and i64 %i.oq, 1
  %.not.i121 = icmp eq i64 %i.ou, 0
  br i1 %.not.i121, label %bb.fq, label %lean_dec.exit

bb.fq:                                            ; preds = %lean_int_dec_eq.exit296
  %i.ov = load i32, ptr %.1.i290, align 4, !tbaa !16 ; 3 uses
  %i.ow = icmp sgt i32 %i.ov, 1
  br i1 %i.ow, label %bb.fr, label %bb.fs, !prof !13

bb.fr:                                            ; preds = %bb.fq
  %i.ox = add nsw i32 %i.ov, -1
  store i32 %i.ox, ptr %.1.i290, align 4, !tbaa !16
  br label %lean_dec.exit

bb.fs:                                            ; preds = %bb.fq
  %.not.i.i = icmp eq i32 %i.ov, 0
  br i1 %.not.i.i, label %lean_dec.exit, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i290) #6
  br label %lean_dec.exit
}

declare ptr @l_Std_Time_Weekday_toOrdinal(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_PlainDate_alignedWeekOfMonth___closed__1() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDate___closed__0_once seq_cst, align 4, !tbaa !12
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instInhabitedPlainDate___closed__0, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__0, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDate___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_PlainDate_alignedWeekOfMonth___closed__0_once seq_cst, align 4, !tbaa !12
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_PlainDate_alignedWeekOfMonth___closed__0, align 8, !tbaa !10
  br label %lean_obj_once.exit4
end_hunk_3
begin_hunk_4_@l_Std_Time_PlainDate_weekOfYear:bb.a
  %i.l = load atomic i32, ptr @l_Std_Time_instReprPlainDate_repr___redArg___closed__8_once seq_cst, align 4, !tbaa !12
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %lean_obj_once.exit
  %i.n = load ptr, ptr @l_Std_Time_instReprPlainDate_repr___redArg___closed__8, align 8, !tbaa !10
  br label %lean_obj_once.exit151

bb.i:                                             ; preds = %lean_obj_once.exit
  %i.o = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instReprPlainDate_repr___redArg___closed__8, ptr noundef nonnull @l_Std_Time_instReprPlainDate_repr___redArg___closed__8_once, ptr noundef nonnull @_init_l_Std_Time_instReprPlainDate_repr___redArg___closed__8) #6
  br label %lean_obj_once.exit151

lean_obj_once.exit151:                            ; preds = %bb.h, %bb.i
  %.0.i150 = phi ptr [ %i.n, %bb.h ], [ %i.o, %bb.i ] ; 9 uses
  %.val.i.i152 = load i32, ptr %0, align 8, !tbaa !16 ; 3 uses
  %i.p = icmp sgt i32 %.val.i.i152, 0
  br i1 %i.p, label %bb.j, label %bb.k, !prof !13

bb.j:                                             ; preds = %lean_obj_once.exit151
  %i.q = add nuw i32 %.val.i.i152, 1
  store i32 %i.q, ptr %0, align 8, !tbaa !16
  br label %lean_inc_ref.exit154

bb.k:                                             ; preds = %lean_obj_once.exit151
  %.not.i.i153 = icmp eq i32 %.val.i.i152, 0
  br i1 %.not.i.i153, label %lean_inc_ref.exit154, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = atomicrmw add ptr %0, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit154

lean_inc_ref.exit154:                             ; preds = %bb.j, %bb.k, %bb.l
  %i.s = tail call zeroext i8 @l_Std_Time_PlainDate_weekday(ptr noundef nonnull %0)
  %i.t = tail call ptr @l_Std_Time_Weekday_toOrdinal(i8 noundef zeroext %i.s) #6 ; 6 uses
  %i.u = tail call ptr @l_Std_Time_Weekday_toOrdinal(i8 noundef zeroext %1) #6 ; 6 uses
  %i.v = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.w = and i64 %i.v, 1
  %.not.i155 = icmp eq i64 %i.w, 0                ; 2 uses
  %.pre239 = ptrtoint ptr %i.u to i64             ; 2 uses
  %.pre = and i64 %.pre239, 1
  %i.x = icmp eq i64 %.pre, 0                     ; 2 uses
  br i1 %.not.i155, label %lean_int_sub.exit, label %bb.m, !prof !14

bb.m:                                             ; preds = %lean_inc_ref.exit154
  br i1 %i.x, label %lean_int_sub.exit.thread300, label %bb.n, !prof !14

lean_int_sub.exit.thread300:                      ; preds = %bb.m
  %i.y = tail call ptr @lean_int_big_sub(ptr noundef %i.t, ptr noundef %i.u) #6
  br label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.z = shl i64 %i.v, 31
  %i.aa = ashr i64 %i.z, 32
  %i.ab = shl i64 %.pre239, 31
  %i.ac = ashr i64 %i.ab, 32
  %i.ad = sub nsw i64 %i.aa, %i.ac                ; 3 uses
  %i.ae = add nsw i64 %i.ad, 2147483648
  %i.af = icmp ult i64 %i.ae, 4294967296
  br i1 %i.af, label %bb.o, label %bb.p, !prof !13

bb.o:                                             ; preds = %bb.n
  %i.ag = shl nsw i64 %i.ad, 1
  %i.ah = and i64 %i.ag, 8589934590
  %i.ai = or disjoint i64 %i.ah, 1
  %i.aj = inttoptr i64 %i.ai to ptr
  br label %lean_dec.exit144

bb.p:                                             ; preds = %bb.n
  %i.ak = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.ad) #6
  br label %lean_dec.exit144

lean_int_sub.exit:                                ; preds = %lean_inc_ref.exit154
  %i.al = tail call ptr @lean_int_big_sub(ptr noundef %i.t, ptr noundef %i.u) #6 ; 2 uses
  br i1 %i.x, label %bb.q, label %lean_dec.exit148.thread

bb.q:                                             ; preds = %lean_int_sub.exit.thread300, %lean_int_sub.exit
  %i.am = phi ptr [ %i.y, %lean_int_sub.exit.thread300 ], [ %i.al, %lean_int_sub.exit ] ; 2 uses
  %i.an = load i32, ptr %i.u, align 4, !tbaa !16  ; 3 uses
  %i.ao = icmp sgt i32 %i.an, 1
  br i1 %i.ao, label %bb.r, label %bb.s, !prof !13

bb.r:                                             ; preds = %bb.q
  %i.ap = add nsw i32 %i.an, -1
  store i32 %i.ap, ptr %i.u, align 4, !tbaa !16
  br label %lean_dec.exit148

bb.s:                                             ; preds = %bb.q
  %.not.i.i146 = icmp eq i32 %i.an, 0
  br i1 %.not.i.i146, label %lean_dec.exit148, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.u) #6
  br label %lean_dec.exit148

lean_dec.exit148:                                 ; preds = %bb.r, %bb.s, %bb.t
  br i1 %.not.i155, label %lean_dec.exit148.thread, label %lean_dec.exit144

lean_dec.exit148.thread:                          ; preds = %lean_int_sub.exit, %lean_dec.exit148
  %.0.i156299304 = phi ptr [ %i.am, %lean_dec.exit148 ], [ %i.al, %lean_int_sub.exit ] ; 3 uses
  %i.aq = load i32, ptr %i.t, align 4, !tbaa !16  ; 3 uses
  %i.ar = icmp sgt i32 %i.aq, 1
  br i1 %i.ar, label %bb.u, label %bb.v, !prof !13

bb.u:                                             ; preds = %lean_dec.exit148.thread
  %i.as = add nsw i32 %i.aq, -1
  store i32 %i.as, ptr %i.t, align 4, !tbaa !16
  br label %lean_dec.exit144

bb.v:                                             ; preds = %lean_dec.exit148.thread
  %.not.i.i142 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i142, label %lean_dec.exit144, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.t) #6
  br label %lean_dec.exit144

lean_dec.exit144:                                 ; preds = %bb.o, %bb.p, %bb.u, %bb.v, %bb.w, %lean_dec.exit148
  %.0.i156299303 = phi ptr [ %.0.i156299304, %bb.u ], [ %.0.i156299304, %bb.v ], [ %.0.i156299304, %bb.w ], [ %i.am, %lean_dec.exit148 ], [ %i.ak, %bb.p ], [ %i.aj, %bb.o ] ; 6 uses
  %i.at = ptrtoint ptr %.0.i156299303 to i64      ; 2 uses
  %i.au = and i64 %i.at, 1
  %.not.i157 = icmp eq i64 %i.au, 0
  br i1 %.not.i157, label %bb.ab, label %bb.x, !prof !14

bb.x:                                             ; preds = %lean_dec.exit144
  %i.av = ptrtoint ptr %.0.i150 to i64            ; 2 uses
  %i.aw = and i64 %i.av, 1
  %.not7.i158 = icmp eq i64 %i.aw, 0
  br i1 %.not7.i158, label %lean_int_add.exit, label %bb.y, !prof !14

bb.y:                                             ; preds = %bb.x
  %i.ax = shl i64 %i.at, 31
  %i.ay = ashr i64 %i.ax, 32
  %i.az = shl i64 %i.av, 31
  %i.ba = ashr i64 %i.az, 32
  %i.bb = add nsw i64 %i.ay, %i.ba                ; 3 uses
  %i.bc = add nsw i64 %i.bb, 2147483648
  %i.bd = icmp ult i64 %i.bc, 4294967296
  br i1 %i.bd, label %bb.z, label %bb.aa, !prof !13

bb.z:                                             ; preds = %bb.y
  %i.be = shl nsw i64 %i.bb, 1
  %i.bf = and i64 %i.be, 8589934590
  %i.bg = or disjoint i64 %i.bf, 1
  %i.bh = inttoptr i64 %i.bg to ptr
  br label %lean_dec.exit140

bb.aa:                                            ; preds = %bb.y
  %i.bi = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.bb) #6
  br label %lean_dec.exit140

lean_int_add.exit:                                ; preds = %bb.x
  %i.bj = tail call ptr @lean_int_big_add(ptr noundef %.0.i156299303, ptr noundef %.0.i150) #6
  br label %lean_dec.exit140

bb.ab:                                            ; preds = %lean_dec.exit144
  %i.bk = tail call ptr @lean_int_big_add(ptr noundef %.0.i156299303, ptr noundef %.0.i150) #6 ; 3 uses
  %i.bl = load i32, ptr %.0.i156299303, align 4, !tbaa !16 ; 3 uses
  %i.bm = icmp sgt i32 %i.bl, 1
  br i1 %i.bm, label %bb.ac, label %bb.ad, !prof !13

bb.ac:                                            ; preds = %bb.ab
  %i.bn = add nsw i32 %i.bl, -1
  store i32 %i.bn, ptr %.0.i156299303, align 4, !tbaa !16
  br label %lean_dec.exit140

bb.ad:                                            ; preds = %bb.ab
  %.not.i.i138 = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i138, label %lean_dec.exit140, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i156299303) #6
  br label %lean_dec.exit140

lean_dec.exit140:                                 ; preds = %bb.aa, %bb.z, %lean_int_add.exit, %bb.ac, %bb.ad, %bb.ae
  %.0.i159308 = phi ptr [ %i.bj, %lean_int_add.exit ], [ %i.bk, %bb.ac ], [ %i.bk, %bb.ad ], [ %i.bk, %bb.ae ], [ %i.bi, %bb.aa ], [ %i.bh, %bb.z ] ; 7 uses
  %i.bo = ptrtoint ptr %.0.i159308 to i64         ; 2 uses
  %i.bp = and i64 %i.bo, 1
  %.not.i161 = icmp eq i64 %i.bp, 0
  br i1 %.not.i161, label %bb.ak, label %bb.af, !prof !14

bb.af:                                            ; preds = %lean_dec.exit140
  %i.bq = ptrtoint ptr %.0.i150 to i64            ; 2 uses
  %i.br = and i64 %i.bq, 1
  %.not21.i = icmp eq i64 %i.br, 0
  br i1 %.not21.i, label %lean_int_emod.exit, label %bb.ag, !prof !14

bb.ag:                                            ; preds = %bb.af
  %i.bs = shl i64 %i.bq, 31
  %i.bt = ashr i64 %i.bs, 32                      ; 3 uses
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %lean_dec.exit136, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bv = shl i64 %i.bo, 31
  %i.bw = ashr i64 %i.bv, 32
  %i.bx = srem i64 %i.bw, %i.bt                   ; 2 uses
  %i.by = icmp slt i64 %i.bx, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.bt, i1 true)
  %i.bz = select i1 %i.by, i64 %.p.i, i64 0
  %.0.i162 = add nsw i64 %i.bz, %i.bx             ; 3 uses
  %2 = icmp slt i64 %.0.i162, 2147483648
  br i1 %2, label %bb.ai, label %bb.aj, !prof !13

bb.ai:                                            ; preds = %bb.ah
  %i.ca = shl nsw i64 %.0.i162, 1
  %3 = and i64 %i.ca, 8589934590
  %i.cb = or disjoint i64 %3, 1
  %i.cc = inttoptr i64 %i.cb to ptr
  br label %lean_dec.exit136

bb.aj:                                            ; preds = %bb.ah
  %i.cd = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i162) #6
  br label %lean_dec.exit136

lean_int_emod.exit:                               ; preds = %bb.af
  %i.ce = tail call ptr @lean_int_big_emod(ptr noundef %.0.i159308, ptr noundef %.0.i150) #6
  br label %lean_dec.exit136

bb.ak:                                            ; preds = %lean_dec.exit140
  %i.cf = tail call ptr @lean_int_big_emod(ptr noundef %.0.i159308, ptr noundef %.0.i150) #6 ; 3 uses
  %i.cg = load i32, ptr %.0.i159308, align 4, !tbaa !16 ; 3 uses
  %i.ch = icmp sgt i32 %i.cg, 1
  br i1 %i.ch, label %bb.al, label %bb.am, !prof !13

bb.al:                                            ; preds = %bb.ak
  %i.ci = add nsw i32 %i.cg, -1
  store i32 %i.ci, ptr %.0.i159308, align 4, !tbaa !16
  br label %lean_dec.exit136

bb.am:                                            ; preds = %bb.ak
  %.not.i.i134 = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i134, label %lean_dec.exit136, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i159308) #6
  br label %lean_dec.exit136

lean_dec.exit136:                                 ; preds = %bb.aj, %bb.ai, %bb.ag, %lean_int_emod.exit, %bb.al, %bb.am, %bb.an
  %.1.i311 = phi ptr [ %i.ce, %lean_int_emod.exit ], [ %i.cf, %bb.al ], [ %i.cf, %bb.am ], [ %i.cf, %bb.an ], [ %i.cd, %bb.aj ], [ %i.cc, %bb.ai ], [ %.0.i159308, %bb.ag ] ; 6 uses
  %i.cj = ptrtoint ptr %.1.i311 to i64            ; 2 uses
  %i.ck = and i64 %i.cj, 1
  %.not.i164 = icmp eq i64 %i.ck, 0
  br i1 %.not.i164, label %bb.as, label %bb.ao, !prof !14

bb.ao:                                            ; preds = %lean_dec.exit136
  %i.cl = ptrtoint ptr %.0.i to i64               ; 2 uses
  %i.cm = and i64 %i.cl, 1
  %.not7.i165 = icmp eq i64 %i.cm, 0
  br i1 %.not7.i165, label %lean_int_add.exit168, label %bb.ap, !prof !14

bb.ap:                                            ; preds = %bb.ao
  %i.cn = shl i64 %i.cj, 31
  %i.co = ashr i64 %i.cn, 32
  %i.cp = shl i64 %i.cl, 31
  %i.cq = ashr i64 %i.cp, 32
  %i.cr = add nsw i64 %i.co, %i.cq                ; 3 uses
  %i.cs = add nsw i64 %i.cr, 2147483648
  %i.ct = icmp ult i64 %i.cs, 4294967296
  br i1 %i.ct, label %bb.aq, label %bb.ar, !prof !13

bb.aq:                                            ; preds = %bb.ap
  %i.cu = shl nsw i64 %i.cr, 1
  %i.cv = and i64 %i.cu, 8589934590
  %i.cw = or disjoint i64 %i.cv, 1
  %i.cx = inttoptr i64 %i.cw to ptr
  br label %lean_dec.exit132

bb.ar:                                            ; preds = %bb.ap
  %i.cy = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.cr) #6
  br label %lean_dec.exit132

lean_int_add.exit168:                             ; preds = %bb.ao
  %i.cz = tail call ptr @lean_int_big_add(ptr noundef %.1.i311, ptr noundef %.0.i) #6
  br label %lean_dec.exit132

bb.as:                                            ; preds = %lean_dec.exit136
  %i.da = tail call ptr @lean_int_big_add(ptr noundef %.1.i311, ptr noundef %.0.i) #6 ; 3 uses
  %i.db = load i32, ptr %.1.i311, align 4, !tbaa !16 ; 3 uses
  %i.dc = icmp sgt i32 %i.db, 1
  br i1 %i.dc, label %bb.at, label %bb.au, !prof !13

bb.at:                                            ; preds = %bb.as
  %i.dd = add nsw i32 %i.db, -1
  store i32 %i.dd, ptr %.1.i311, align 4, !tbaa !16
  br label %lean_dec.exit132

bb.au:                                            ; preds = %bb.as
  %.not.i.i130 = icmp eq i32 %i.db, 0
  br i1 %.not.i.i130, label %lean_dec.exit132, label %bb.av

bb.av:                                            ; preds = %bb.au
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i311) #6
  br label %lean_dec.exit132

lean_dec.exit132:                                 ; preds = %bb.ar, %bb.aq, %lean_int_add.exit168, %bb.at, %bb.au, %bb.av
  %.0.i166314 = phi ptr [ %i.cz, %lean_int_add.exit168 ], [ %i.da, %bb.at ], [ %i.da, %bb.au ], [ %i.da, %bb.av ], [ %i.cy, %bb.ar ], [ %i.cx, %bb.aq ] ; 6 uses
  %i.de = load atomic i32, ptr @l_Std_Time_PlainDate_weekday___closed__1_once seq_cst, align 4, !tbaa !12
  %i.df = icmp eq i32 %i.de, 1
  br i1 %i.df, label %bb.aw, label %bb.ax, !prof !13

bb.aw:                                            ; preds = %lean_dec.exit132
  %i.dg = load ptr, ptr @l_Std_Time_PlainDate_weekday___closed__1, align 8, !tbaa !10
  br label %lean_obj_once.exit170

bb.ax:                                            ; preds = %lean_dec.exit132
  %i.dh = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_PlainDate_weekday___closed__1, ptr noundef nonnull @l_Std_Time_PlainDate_weekday___closed__1_once, ptr noundef nonnull @_init_l_Std_Time_PlainDate_weekday___closed__1) #6
  br label %lean_obj_once.exit170

lean_obj_once.exit170:                            ; preds = %bb.aw, %bb.ax
  %.0.i169 = phi ptr [ %i.dg, %bb.aw ], [ %i.dh, %bb.ax ] ; 9 uses
  %i.di = ptrtoint ptr %.0.i166314 to i64         ; 2 uses
  %i.dj = and i64 %i.di, 1
  %.not.i171 = icmp eq i64 %i.dj, 0
  br i1 %.not.i171, label %bb.bc, label %bb.ay, !prof !14

bb.ay:                                            ; preds = %lean_obj_once.exit170
  %i.dk = ptrtoint ptr %.0.i to i64               ; 2 uses
  %i.dl = and i64 %i.dk, 1
  %.not7.i172 = icmp eq i64 %i.dl, 0
  br i1 %.not7.i172, label %lean_int_sub.exit175, label %bb.az, !prof !14

bb.az:                                            ; preds = %bb.ay
  %i.dm = shl i64 %i.di, 31
  %i.dn = ashr i64 %i.dm, 32
  %i.do = shl i64 %i.dk, 31
  %i.dp = ashr i64 %i.do, 32
  %i.dq = sub nsw i64 %i.dn, %i.dp                ; 3 uses
  %i.dr = add nsw i64 %i.dq, 2147483648
  %i.ds = icmp ult i64 %i.dr, 4294967296
  br i1 %i.ds, label %bb.ba, label %bb.bb, !prof !13

bb.ba:                                            ; preds = %bb.az
  %i.dt = shl nsw i64 %i.dq, 1
  %i.du = and i64 %i.dt, 8589934590
  %i.dv = or disjoint i64 %i.du, 1
  %i.dw = inttoptr i64 %i.dv to ptr
  br label %lean_dec.exit128

bb.bb:                                            ; preds = %bb.az
  %i.dx = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.dq) #6
  br label %lean_dec.exit128

lean_int_sub.exit175:                             ; preds = %bb.ay
  %i.dy = tail call ptr @lean_int_big_sub(ptr noundef %.0.i166314, ptr noundef %.0.i) #6
  br label %lean_dec.exit128

bb.bc:                                            ; preds = %lean_obj_once.exit170
  %i.dz = tail call ptr @lean_int_big_sub(ptr noundef %.0.i166314, ptr noundef %.0.i) #6 ; 3 uses
  %i.ea = load i32, ptr %.0.i166314, align 4, !tbaa !16 ; 3 uses
  %i.eb = icmp sgt i32 %i.ea, 1
  br i1 %i.eb, label %bb.bd, label %bb.be, !prof !13

bb.bd:                                            ; preds = %bb.bc
  %i.ec = add nsw i32 %i.ea, -1
  store i32 %i.ec, ptr %.0.i166314, align 4, !tbaa !16
  br label %lean_dec.exit128

bb.be:                                            ; preds = %bb.bc
  %.not.i.i126 = icmp eq i32 %i.ea, 0
  br i1 %.not.i.i126, label %lean_dec.exit128, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i166314) #6
  br label %lean_dec.exit128

lean_dec.exit128:                                 ; preds = %bb.bb, %bb.ba, %lean_int_sub.exit175, %bb.bd, %bb.be, %bb.bf
  %.0.i173317 = phi ptr [ %i.dy, %lean_int_sub.exit175 ], [ %i.dz, %bb.bd ], [ %i.dz, %bb.be ], [ %i.dz, %bb.bf ], [ %i.dx, %bb.bb ], [ %i.dw, %bb.ba ] ; 7 uses
  %i.ed = ptrtoint ptr %.0.i173317 to i64         ; 2 uses
  %i.ee = and i64 %i.ed, 1
  %.not.i176 = icmp eq i64 %i.ee, 0
  br i1 %.not.i176, label %bb.bl, label %bb.bg, !prof !14

bb.bg:                                            ; preds = %lean_dec.exit128
  %i.ef = ptrtoint ptr %.0.i169 to i64            ; 2 uses
  %i.eg = and i64 %i.ef, 1
  %.not21.i177 = icmp eq i64 %i.eg, 0
  br i1 %.not21.i177, label %lean_int_emod.exit182, label %bb.bh, !prof !14

bb.bh:                                            ; preds = %bb.bg
  %i.eh = shl i64 %i.ef, 31
  %i.ei = ashr i64 %i.eh, 32                      ; 3 uses
  %i.ej = icmp eq i64 %i.ei, 0
  br i1 %i.ej, label %lean_dec.exit124, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ek = shl i64 %i.ed, 31
  %i.el = ashr i64 %i.ek, 32
  %i.em = srem i64 %i.el, %i.ei                   ; 2 uses
  %i.en = icmp slt i64 %i.em, 0
  %.p.i178 = tail call i64 @llvm.abs.i64(i64 %i.ei, i1 true)
  %i.eo = select i1 %i.en, i64 %.p.i178, i64 0
  %.0.i179 = add nsw i64 %i.eo, %i.em             ; 3 uses
  %4 = icmp slt i64 %.0.i179, 2147483648
  br i1 %4, label %bb.bj, label %bb.bk, !prof !13

bb.bj:                                            ; preds = %bb.bi
  %i.ep = shl nsw i64 %.0.i179, 1
  %5 = and i64 %i.ep, 8589934590
  %i.eq = or disjoint i64 %5, 1
  %i.er = inttoptr i64 %i.eq to ptr
  br label %lean_dec.exit124

bb.bk:                                            ; preds = %bb.bi
  %i.es = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i179) #6
  br label %lean_dec.exit124

lean_int_emod.exit182:                            ; preds = %bb.bg
  %i.et = tail call ptr @lean_int_big_emod(ptr noundef %.0.i173317, ptr noundef %.0.i169) #6
  br label %lean_dec.exit124

bb.bl:                                            ; preds = %lean_dec.exit128
  %i.eu = tail call ptr @lean_int_big_emod(ptr noundef %.0.i173317, ptr noundef %.0.i169) #6 ; 3 uses
  %i.ev = load i32, ptr %.0.i173317, align 4, !tbaa !16 ; 3 uses
  %i.ew = icmp sgt i32 %i.ev, 1
  br i1 %i.ew, label %bb.bm, label %bb.bn, !prof !13

bb.bm:                                            ; preds = %bb.bl
  %i.ex = add nsw i32 %i.ev, -1
  store i32 %i.ex, ptr %.0.i173317, align 4, !tbaa !16
  br label %lean_dec.exit124

bb.bn:                                            ; preds = %bb.bl
  %.not.i.i122 = icmp eq i32 %i.ev, 0
  br i1 %.not.i.i122, label %lean_dec.exit124, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i173317) #6
  br label %lean_dec.exit124

lean_dec.exit124:                                 ; preds = %bb.bk, %bb.bj, %bb.bh, %lean_int_emod.exit182, %bb.bm, %bb.bn, %bb.bo
  %.1.i180320 = phi ptr [ %i.et, %lean_int_emod.exit182 ], [ %i.eu, %bb.bm ], [ %i.eu, %bb.bn ], [ %i.eu, %bb.bo ], [ %i.es, %bb.bk ], [ %i.er, %bb.bj ], [ %.0.i173317, %bb.bh ] ; 6 uses
  %i.ey = ptrtoint ptr %.1.i180320 to i64         ; 2 uses
  %i.ez = and i64 %i.ey, 1
  %.not.i183 = icmp eq i64 %i.ez, 0
  br i1 %.not.i183, label %bb.bt, label %bb.bp, !prof !14

bb.bp:                                            ; preds = %lean_dec.exit124
  %i.fa = ptrtoint ptr %.0.i169 to i64            ; 2 uses
  %i.fb = and i64 %i.fa, 1
  %.not7.i184 = icmp eq i64 %i.fb, 0
  br i1 %.not7.i184, label %lean_int_add.exit187, label %bb.bq, !prof !14

bb.bq:                                            ; preds = %bb.bp
  %i.fc = shl i64 %i.ey, 31
  %i.fd = ashr i64 %i.fc, 32
  %i.fe = shl i64 %i.fa, 31
  %i.ff = ashr i64 %i.fe, 32
  %i.fg = add nsw i64 %i.fd, %i.ff                ; 3 uses
  %i.fh = add nsw i64 %i.fg, 2147483648
  %i.fi = icmp ult i64 %i.fh, 4294967296
  br i1 %i.fi, label %bb.br, label %bb.bs, !prof !13

bb.br:                                            ; preds = %bb.bq
  %i.fj = shl nsw i64 %i.fg, 1
  %i.fk = and i64 %i.fj, 8589934590
  %i.fl = or disjoint i64 %i.fk, 1
  %i.fm = inttoptr i64 %i.fl to ptr
  br label %lean_dec.exit120

bb.bs:                                            ; preds = %bb.bq
  %i.fn = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.fg) #6
  br label %lean_dec.exit120

lean_int_add.exit187:                             ; preds = %bb.bp
  %i.fo = tail call ptr @lean_int_big_add(ptr noundef %.1.i180320, ptr noundef %.0.i169) #6
  br label %lean_dec.exit120

bb.bt:                                            ; preds = %lean_dec.exit124
  %i.fp = tail call ptr @lean_int_big_add(ptr noundef %.1.i180320, ptr noundef %.0.i169) #6 ; 3 uses
  %i.fq = load i32, ptr %.1.i180320, align 4, !tbaa !16 ; 3 uses
  %i.fr = icmp sgt i32 %i.fq, 1
  br i1 %i.fr, label %bb.bu, label %bb.bv, !prof !13

bb.bu:                                            ; preds = %bb.bt
  %i.fs = add nsw i32 %i.fq, -1
  store i32 %i.fs, ptr %.1.i180320, align 4, !tbaa !16
  br label %lean_dec.exit120

bb.bv:                                            ; preds = %bb.bt
  %.not.i.i118 = icmp eq i32 %i.fq, 0
  br i1 %.not.i.i118, label %lean_dec.exit120, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i180320) #6
  br label %lean_dec.exit120

lean_dec.exit120:                                 ; preds = %bb.bs, %bb.br, %lean_int_add.exit187, %bb.bu, %bb.bv, %bb.bw
  %.0.i185323 = phi ptr [ %i.fo, %lean_int_add.exit187 ], [ %i.fp, %bb.bu ], [ %i.fp, %bb.bv ], [ %i.fp, %bb.bw ], [ %i.fn, %bb.bs ], [ %i.fm, %bb.br ] ; 7 uses
  %i.ft = ptrtoint ptr %.0.i185323 to i64         ; 2 uses
  %i.fu = and i64 %i.ft, 1
  %.not.i188 = icmp eq i64 %i.fu, 0
  br i1 %.not.i188, label %bb.cc, label %bb.bx, !prof !14

bb.bx:                                            ; preds = %lean_dec.exit120
  %i.fv = ptrtoint ptr %.0.i169 to i64            ; 2 uses
  %i.fw = and i64 %i.fv, 1
  %.not21.i189 = icmp eq i64 %i.fw, 0
  br i1 %.not21.i189, label %lean_int_emod.exit194, label %bb.by, !prof !14

bb.by:                                            ; preds = %bb.bx
  %i.fx = shl i64 %i.fv, 31
  %i.fy = ashr i64 %i.fx, 32                      ; 3 uses
  %i.fz = icmp eq i64 %i.fy, 0
  br i1 %i.fz, label %lean_dec.exit116, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ga = shl i64 %i.ft, 31
  %i.gb = ashr i64 %i.ga, 32
  %i.gc = srem i64 %i.gb, %i.fy                   ; 2 uses
  %i.gd = icmp slt i64 %i.gc, 0
  %.p.i190 = tail call i64 @llvm.abs.i64(i64 %i.fy, i1 true)
  %i.ge = select i1 %i.gd, i64 %.p.i190, i64 0
  %.0.i191 = add nsw i64 %i.ge, %i.gc             ; 3 uses
  %6 = icmp slt i64 %.0.i191, 2147483648
  br i1 %6, label %bb.ca, label %bb.cb, !prof !13

bb.ca:                                            ; preds = %bb.bz
  %i.gf = shl nsw i64 %.0.i191, 1
  %7 = and i64 %i.gf, 8589934590
  %i.gg = or disjoint i64 %7, 1
  %i.gh = inttoptr i64 %i.gg to ptr
  br label %lean_dec.exit116

bb.cb:                                            ; preds = %bb.bz
  %i.gi = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i191) #6
  br label %lean_dec.exit116

lean_int_emod.exit194:                            ; preds = %bb.bx
  %i.gj = tail call ptr @lean_int_big_emod(ptr noundef %.0.i185323, ptr noundef %.0.i169) #6
  br label %lean_dec.exit116

bb.cc:                                            ; preds = %lean_dec.exit120
  %i.gk = tail call ptr @lean_int_big_emod(ptr noundef %.0.i185323, ptr noundef %.0.i169) #6 ; 3 uses
  %i.gl = load i32, ptr %.0.i185323, align 4, !tbaa !16 ; 3 uses
  %i.gm = icmp sgt i32 %i.gl, 1
  br i1 %i.gm, label %bb.cd, label %bb.ce, !prof !13

bb.cd:                                            ; preds = %bb.cc
  %i.gn = add nsw i32 %i.gl, -1
  store i32 %i.gn, ptr %.0.i185323, align 4, !tbaa !16
  br label %lean_dec.exit116

bb.ce:                                            ; preds = %bb.cc
  %.not.i.i114 = icmp eq i32 %i.gl, 0
  br i1 %.not.i.i114, label %lean_dec.exit116, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i185323) #6
  br label %lean_dec.exit116

lean_dec.exit116:                                 ; preds = %bb.cb, %bb.ca, %bb.by, %lean_int_emod.exit194, %bb.cd, %bb.ce, %bb.cf
  %.1.i192326 = phi ptr [ %i.gj, %lean_int_emod.exit194 ], [ %i.gk, %bb.cd ], [ %i.gk, %bb.ce ], [ %i.gk, %bb.cf ], [ %i.gi, %bb.cb ], [ %i.gh, %bb.ca ], [ %.0.i185323, %bb.by ] ; 6 uses
  %i.go = ptrtoint ptr %.1.i192326 to i64         ; 2 uses
  %i.gp = and i64 %i.go, 1
  %.not.i195 = icmp eq i64 %i.gp, 0
  br i1 %.not.i195, label %bb.ck, label %bb.cg, !prof !14

bb.cg:                                            ; preds = %lean_dec.exit116
  %i.gq = ptrtoint ptr %.0.i to i64               ; 2 uses
  %i.gr = and i64 %i.gq, 1
  %.not7.i196 = icmp eq i64 %i.gr, 0
  br i1 %.not7.i196, label %lean_int_add.exit199, label %bb.ch, !prof !14

bb.ch:                                            ; preds = %bb.cg
  %i.gs = shl i64 %i.go, 31
  %i.gt = ashr i64 %i.gs, 32
  %i.gu = shl i64 %i.gq, 31
  %i.gv = ashr i64 %i.gu, 32
  %i.gw = add nsw i64 %i.gt, %i.gv                ; 3 uses
  %i.gx = add nsw i64 %i.gw, 2147483648
  %i.gy = icmp ult i64 %i.gx, 4294967296
  br i1 %i.gy, label %bb.ci, label %bb.cj, !prof !13

bb.ci:                                            ; preds = %bb.ch
  %i.gz = shl nsw i64 %i.gw, 1
  %i.ha = and i64 %i.gz, 8589934590
  %i.hb = or disjoint i64 %i.ha, 1
  %i.hc = inttoptr i64 %i.hb to ptr
  br label %lean_dec.exit112

bb.cj:                                            ; preds = %bb.ch
  %i.hd = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.gw) #6
  br label %lean_dec.exit112

lean_int_add.exit199:                             ; preds = %bb.cg
  %i.he = tail call ptr @lean_int_big_add(ptr noundef %.1.i192326, ptr noundef %.0.i) #6
  br label %lean_dec.exit112

bb.ck:                                            ; preds = %lean_dec.exit116
  %i.hf = tail call ptr @lean_int_big_add(ptr noundef %.1.i192326, ptr noundef %.0.i) #6 ; 3 uses
  %i.hg = load i32, ptr %.1.i192326, align 4, !tbaa !16 ; 3 uses
  %i.hh = icmp sgt i32 %i.hg, 1
  br i1 %i.hh, label %bb.cl, label %bb.cm, !prof !13

bb.cl:                                            ; preds = %bb.ck
  %i.hi = add nsw i32 %i.hg, -1
  store i32 %i.hi, ptr %.1.i192326, align 4, !tbaa !16
  br label %lean_dec.exit112

bb.cm:                                            ; preds = %bb.ck
  %.not.i.i110 = icmp eq i32 %i.hg, 0
  br i1 %.not.i.i110, label %lean_dec.exit112, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i192326) #6
  br label %lean_dec.exit112

lean_dec.exit112:                                 ; preds = %bb.cj, %bb.ci, %lean_int_add.exit199, %bb.cl, %bb.cm, %bb.cn
  %.0.i197329 = phi ptr [ %i.he, %lean_int_add.exit199 ], [ %i.hf, %bb.cl ], [ %i.hf, %bb.cm ], [ %i.hf, %bb.cn ], [ %i.hd, %bb.cj ], [ %i.hc, %bb.ci ] ; 5 uses
  %i.hj = load atomic i32, ptr @l_Std_Time_PlainDate_ofEpochDay___closed__11_once seq_cst, align 4, !tbaa !12
  %i.hk = icmp eq i32 %i.hj, 1
  br i1 %i.hk, label %bb.co, label %bb.cp, !prof !13

bb.co:                                            ; preds = %lean_dec.exit112
  %i.hl = load ptr, ptr @l_Std_Time_PlainDate_ofEpochDay___closed__11, align 8, !tbaa !10
  br label %lean_obj_once.exit201

bb.cp:                                            ; preds = %lean_dec.exit112
  %i.hm = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_PlainDate_ofEpochDay___closed__11, ptr noundef nonnull @l_Std_Time_PlainDate_ofEpochDay___closed__11_once, ptr noundef nonnull @_init_l_Std_Time_PlainDate_ofEpochDay___closed__11) #6
  br label %lean_obj_once.exit201

lean_obj_once.exit201:                            ; preds = %bb.co, %bb.cp
  %.0.i200 = phi ptr [ %i.hl, %bb.co ], [ %i.hm, %bb.cp ] ; 3 uses
  %i.hn = tail call ptr @l_Std_Time_PlainDate_dayOfYear(ptr noundef nonnull %0) ; 6 uses
  %i.ho = load i32, ptr %0, align 8, !tbaa !16    ; 3 uses
  %i.hp = icmp sgt i32 %i.ho, 1
  br i1 %i.hp, label %bb.cq, label %bb.cr, !prof !13

bb.cq:                                            ; preds = %lean_obj_once.exit201
  %i.hq = add nsw i32 %i.ho, -1
  store i32 %i.hq, ptr %0, align 8, !tbaa !16
  br label %lean_dec_ref.exit

bb.cr:                                            ; preds = %lean_obj_once.exit201
  %.not.i67 = icmp eq i32 %i.ho, 0
  br i1 %.not.i67, label %lean_dec_ref.exit, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.cq, %bb.cr, %bb.cs
  %i.hr = ptrtoint ptr %.0.i200 to i64            ; 2 uses
  %i.hs = and i64 %i.hr, 1
  %.not.i202 = icmp eq i64 %i.hs, 0
  %.pre240 = ptrtoint ptr %i.hn to i64            ; 2 uses
  %.pre241 = and i64 %.pre240, 1
  %i.ht = icmp eq i64 %.pre241, 0                 ; 2 uses
  br i1 %.not.i202, label %lean_int_add.exit206, label %bb.ct, !prof !14

bb.ct:                                            ; preds = %lean_dec_ref.exit
  br i1 %i.ht, label %lean_int_add.exit206.thread334, label %bb.cu, !prof !14

lean_int_add.exit206.thread334:                   ; preds = %bb.ct
  %i.hu = tail call ptr @lean_int_big_add(ptr noundef %.0.i200, ptr noundef %i.hn) #6
  br label %bb.cx

bb.cu:                                            ; preds = %bb.ct
  %i.hv = shl i64 %i.hr, 31
  %i.hw = ashr i64 %i.hv, 32
  %i.hx = shl i64 %.pre240, 31
  %i.hy = ashr i64 %i.hx, 32
  %i.hz = add nsw i64 %i.hy, %i.hw                ; 3 uses
  %i.ia = add nsw i64 %i.hz, 2147483648
  %i.ib = icmp ult i64 %i.ia, 4294967296
  br i1 %i.ib, label %bb.cv, label %bb.cw, !prof !13

bb.cv:                                            ; preds = %bb.cu
  %i.ic = shl nsw i64 %i.hz, 1
  %i.id = and i64 %i.ic, 8589934590
  %i.ie = or disjoint i64 %i.id, 1
  %i.if = inttoptr i64 %i.ie to ptr
  br label %lean_dec.exit108

bb.cw:                                            ; preds = %bb.cu
  %i.ig = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.hz) #6
  br label %lean_dec.exit108

lean_int_add.exit206:                             ; preds = %lean_dec_ref.exit
  %i.ih = tail call ptr @lean_int_big_add(ptr noundef %.0.i200, ptr noundef %i.hn) #6 ; 2 uses
  br i1 %i.ht, label %bb.cx, label %lean_dec.exit108

bb.cx:                                            ; preds = %lean_int_add.exit206.thread334, %lean_int_add.exit206
  %i.ii = phi ptr [ %i.hu, %lean_int_add.exit206.thread334 ], [ %i.ih, %lean_int_add.exit206 ] ; 3 uses
  %i.ij = load i32, ptr %i.hn, align 4, !tbaa !16 ; 3 uses
  %i.ik = icmp sgt i32 %i.ij, 1
  br i1 %i.ik, label %bb.cy, label %bb.cz, !prof !13

bb.cy:                                            ; preds = %bb.cx
  %i.il = add nsw i32 %i.ij, -1
  store i32 %i.il, ptr %i.hn, align 4, !tbaa !16
  br label %lean_dec.exit108

bb.cz:                                            ; preds = %bb.cx
  %.not.i.i106 = icmp eq i32 %i.ij, 0
  br i1 %.not.i.i106, label %lean_dec.exit108, label %bb.da

bb.da:                                            ; preds = %bb.cz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.hn) #6
  br label %lean_dec.exit108

lean_dec.exit108:                                 ; preds = %bb.cw, %bb.cv, %bb.cy, %bb.cz, %bb.da, %lean_int_add.exit206
  %.0.i204333 = phi ptr [ %i.ih, %lean_int_add.exit206 ], [ %i.ii, %bb.cy ], [ %i.ii, %bb.cz ], [ %i.ii, %bb.da ], [ %i.ig, %bb.cw ], [ %i.if, %bb.cv ] ; 6 uses
  %i.im = ptrtoint ptr %.0.i197329 to i64         ; 2 uses
  %i.in = and i64 %i.im, 1
  %.not.i207 = icmp eq i64 %i.in, 0
  br i1 %.not.i207, label %bb.de, label %bb.db, !prof !14

bb.db:                                            ; preds = %lean_dec.exit108
  %i.io = shl i64 %i.im, 31
  %i.ip = ashr i64 %i.io, 32                      ; 2 uses
  %i.iq = sub nsw i64 0, %i.ip                    ; 2 uses
  %.not4.i = icmp eq i64 %i.ip, -2147483648
  br i1 %.not4.i, label %bb.dd, label %bb.dc, !prof !14

bb.dc:                                            ; preds = %bb.db
  %i.ir = shl nsw i64 %i.iq, 1
  %i.is = and i64 %i.ir, 8589934590
  %i.it = or disjoint i64 %i.is, 1
  %i.iu = inttoptr i64 %i.it to ptr
end_hunk_4
begin_hunk_5_@l_Std_Time_PlainDate_weekYear:bb.a
  %i.l = load atomic i32, ptr @l_Std_Time_instReprPlainDate_repr___redArg___closed__8_once seq_cst, align 4, !tbaa !12
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %lean_obj_once.exit
  %i.n = load ptr, ptr @l_Std_Time_instReprPlainDate_repr___redArg___closed__8, align 8, !tbaa !10
  br label %lean_obj_once.exit147

bb.i:                                             ; preds = %lean_obj_once.exit
  %i.o = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instReprPlainDate_repr___redArg___closed__8, ptr noundef nonnull @l_Std_Time_instReprPlainDate_repr___redArg___closed__8_once, ptr noundef nonnull @_init_l_Std_Time_instReprPlainDate_repr___redArg___closed__8) #6
  br label %lean_obj_once.exit147

lean_obj_once.exit147:                            ; preds = %bb.h, %bb.i
  %.0.i146 = phi ptr [ %i.n, %bb.h ], [ %i.o, %bb.i ] ; 9 uses
  %.val.i.i148 = load i32, ptr %0, align 8, !tbaa !16 ; 3 uses
  %i.p = icmp sgt i32 %.val.i.i148, 0
  br i1 %i.p, label %bb.j, label %bb.k, !prof !13

bb.j:                                             ; preds = %lean_obj_once.exit147
  %i.q = add nuw i32 %.val.i.i148, 1
  store i32 %i.q, ptr %0, align 8, !tbaa !16
  br label %lean_inc_ref.exit150

bb.k:                                             ; preds = %lean_obj_once.exit147
  %.not.i.i149 = icmp eq i32 %.val.i.i148, 0
  br i1 %.not.i.i149, label %lean_inc_ref.exit150, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = atomicrmw add ptr %0, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit150

lean_inc_ref.exit150:                             ; preds = %bb.j, %bb.k, %bb.l
  %i.s = tail call zeroext i8 @l_Std_Time_PlainDate_weekday(ptr noundef nonnull %0)
  %i.t = tail call ptr @l_Std_Time_Weekday_toOrdinal(i8 noundef zeroext %i.s) #6 ; 6 uses
  %i.u = tail call ptr @l_Std_Time_Weekday_toOrdinal(i8 noundef zeroext %1) #6 ; 6 uses
  %i.v = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.w = and i64 %i.v, 1
  %.not.i151 = icmp eq i64 %i.w, 0                ; 2 uses
  %.pre240 = ptrtoint ptr %i.u to i64             ; 2 uses
  %.pre = and i64 %.pre240, 1
  %i.x = icmp eq i64 %.pre, 0                     ; 2 uses
  br i1 %.not.i151, label %lean_int_sub.exit, label %bb.m, !prof !14

bb.m:                                             ; preds = %lean_inc_ref.exit150
  br i1 %i.x, label %lean_int_sub.exit.thread299, label %bb.n, !prof !14

lean_int_sub.exit.thread299:                      ; preds = %bb.m
  %i.y = tail call ptr @lean_int_big_sub(ptr noundef %i.t, ptr noundef %i.u) #6
  br label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.z = shl i64 %i.v, 31
  %i.aa = ashr i64 %i.z, 32
  %i.ab = shl i64 %.pre240, 31
  %i.ac = ashr i64 %i.ab, 32
  %i.ad = sub nsw i64 %i.aa, %i.ac                ; 3 uses
  %i.ae = add nsw i64 %i.ad, 2147483648
  %i.af = icmp ult i64 %i.ae, 4294967296
  br i1 %i.af, label %bb.o, label %bb.p, !prof !13

bb.o:                                             ; preds = %bb.n
  %i.ag = shl nsw i64 %i.ad, 1
  %i.ah = and i64 %i.ag, 8589934590
  %i.ai = or disjoint i64 %i.ah, 1
  %i.aj = inttoptr i64 %i.ai to ptr
  br label %lean_dec.exit140

bb.p:                                             ; preds = %bb.n
  %i.ak = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.ad) #6
  br label %lean_dec.exit140

lean_int_sub.exit:                                ; preds = %lean_inc_ref.exit150
  %i.al = tail call ptr @lean_int_big_sub(ptr noundef %i.t, ptr noundef %i.u) #6 ; 2 uses
  br i1 %i.x, label %bb.q, label %lean_dec.exit144.thread

bb.q:                                             ; preds = %lean_int_sub.exit.thread299, %lean_int_sub.exit
  %i.am = phi ptr [ %i.y, %lean_int_sub.exit.thread299 ], [ %i.al, %lean_int_sub.exit ] ; 2 uses
  %i.an = load i32, ptr %i.u, align 4, !tbaa !16  ; 3 uses
  %i.ao = icmp sgt i32 %i.an, 1
  br i1 %i.ao, label %bb.r, label %bb.s, !prof !13

bb.r:                                             ; preds = %bb.q
  %i.ap = add nsw i32 %i.an, -1
  store i32 %i.ap, ptr %i.u, align 4, !tbaa !16
  br label %lean_dec.exit144

bb.s:                                             ; preds = %bb.q
  %.not.i.i142 = icmp eq i32 %i.an, 0
  br i1 %.not.i.i142, label %lean_dec.exit144, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.u) #6
  br label %lean_dec.exit144

lean_dec.exit144:                                 ; preds = %bb.r, %bb.s, %bb.t
  br i1 %.not.i151, label %lean_dec.exit144.thread, label %lean_dec.exit140

lean_dec.exit144.thread:                          ; preds = %lean_int_sub.exit, %lean_dec.exit144
  %.0.i152298303 = phi ptr [ %i.am, %lean_dec.exit144 ], [ %i.al, %lean_int_sub.exit ] ; 3 uses
  %i.aq = load i32, ptr %i.t, align 4, !tbaa !16  ; 3 uses
  %i.ar = icmp sgt i32 %i.aq, 1
  br i1 %i.ar, label %bb.u, label %bb.v, !prof !13

bb.u:                                             ; preds = %lean_dec.exit144.thread
  %i.as = add nsw i32 %i.aq, -1
  store i32 %i.as, ptr %i.t, align 4, !tbaa !16
  br label %lean_dec.exit140

bb.v:                                             ; preds = %lean_dec.exit144.thread
  %.not.i.i138 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i138, label %lean_dec.exit140, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.t) #6
  br label %lean_dec.exit140

lean_dec.exit140:                                 ; preds = %bb.o, %bb.p, %bb.u, %bb.v, %bb.w, %lean_dec.exit144
  %.0.i152298302 = phi ptr [ %.0.i152298303, %bb.u ], [ %.0.i152298303, %bb.v ], [ %.0.i152298303, %bb.w ], [ %i.am, %lean_dec.exit144 ], [ %i.ak, %bb.p ], [ %i.aj, %bb.o ] ; 6 uses
  %i.at = ptrtoint ptr %.0.i152298302 to i64      ; 2 uses
  %i.au = and i64 %i.at, 1
  %.not.i153 = icmp eq i64 %i.au, 0
  br i1 %.not.i153, label %bb.ab, label %bb.x, !prof !14

bb.x:                                             ; preds = %lean_dec.exit140
  %i.av = ptrtoint ptr %.0.i146 to i64            ; 2 uses
  %i.aw = and i64 %i.av, 1
  %.not7.i154 = icmp eq i64 %i.aw, 0
  br i1 %.not7.i154, label %lean_int_add.exit, label %bb.y, !prof !14

bb.y:                                             ; preds = %bb.x
  %i.ax = shl i64 %i.at, 31
  %i.ay = ashr i64 %i.ax, 32
  %i.az = shl i64 %i.av, 31
  %i.ba = ashr i64 %i.az, 32
  %i.bb = add nsw i64 %i.ay, %i.ba                ; 3 uses
  %i.bc = add nsw i64 %i.bb, 2147483648
  %i.bd = icmp ult i64 %i.bc, 4294967296
  br i1 %i.bd, label %bb.z, label %bb.aa, !prof !13

bb.z:                                             ; preds = %bb.y
  %i.be = shl nsw i64 %i.bb, 1
  %i.bf = and i64 %i.be, 8589934590
  %i.bg = or disjoint i64 %i.bf, 1
  %i.bh = inttoptr i64 %i.bg to ptr
  br label %lean_dec.exit136

bb.aa:                                            ; preds = %bb.y
  %i.bi = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.bb) #6
  br label %lean_dec.exit136

lean_int_add.exit:                                ; preds = %bb.x
  %i.bj = tail call ptr @lean_int_big_add(ptr noundef %.0.i152298302, ptr noundef %.0.i146) #6
  br label %lean_dec.exit136

bb.ab:                                            ; preds = %lean_dec.exit140
  %i.bk = tail call ptr @lean_int_big_add(ptr noundef %.0.i152298302, ptr noundef %.0.i146) #6 ; 3 uses
  %i.bl = load i32, ptr %.0.i152298302, align 4, !tbaa !16 ; 3 uses
  %i.bm = icmp sgt i32 %i.bl, 1
  br i1 %i.bm, label %bb.ac, label %bb.ad, !prof !13

bb.ac:                                            ; preds = %bb.ab
  %i.bn = add nsw i32 %i.bl, -1
  store i32 %i.bn, ptr %.0.i152298302, align 4, !tbaa !16
  br label %lean_dec.exit136

bb.ad:                                            ; preds = %bb.ab
  %.not.i.i134 = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i134, label %lean_dec.exit136, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i152298302) #6
  br label %lean_dec.exit136

lean_dec.exit136:                                 ; preds = %bb.aa, %bb.z, %lean_int_add.exit, %bb.ac, %bb.ad, %bb.ae
  %.0.i155307 = phi ptr [ %i.bj, %lean_int_add.exit ], [ %i.bk, %bb.ac ], [ %i.bk, %bb.ad ], [ %i.bk, %bb.ae ], [ %i.bi, %bb.aa ], [ %i.bh, %bb.z ] ; 7 uses
  %i.bo = ptrtoint ptr %.0.i155307 to i64         ; 2 uses
  %i.bp = and i64 %i.bo, 1
  %.not.i157 = icmp eq i64 %i.bp, 0
  br i1 %.not.i157, label %bb.ak, label %bb.af, !prof !14

bb.af:                                            ; preds = %lean_dec.exit136
  %i.bq = ptrtoint ptr %.0.i146 to i64            ; 2 uses
  %i.br = and i64 %i.bq, 1
  %.not21.i = icmp eq i64 %i.br, 0
  br i1 %.not21.i, label %lean_int_emod.exit, label %bb.ag, !prof !14

bb.ag:                                            ; preds = %bb.af
  %i.bs = shl i64 %i.bq, 31
  %i.bt = ashr i64 %i.bs, 32                      ; 3 uses
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %lean_dec.exit132, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bv = shl i64 %i.bo, 31
  %i.bw = ashr i64 %i.bv, 32
  %i.bx = srem i64 %i.bw, %i.bt                   ; 2 uses
  %i.by = icmp slt i64 %i.bx, 0
  %.p.i = tail call i64 @llvm.abs.i64(i64 %i.bt, i1 true)
  %i.bz = select i1 %i.by, i64 %.p.i, i64 0
  %.0.i158 = add nsw i64 %i.bz, %i.bx             ; 3 uses
  %2 = icmp slt i64 %.0.i158, 2147483648
  br i1 %2, label %bb.ai, label %bb.aj, !prof !13

bb.ai:                                            ; preds = %bb.ah
  %i.ca = shl nsw i64 %.0.i158, 1
  %3 = and i64 %i.ca, 8589934590
  %i.cb = or disjoint i64 %3, 1
  %i.cc = inttoptr i64 %i.cb to ptr
  br label %lean_dec.exit132

bb.aj:                                            ; preds = %bb.ah
  %i.cd = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i158) #6
  br label %lean_dec.exit132

lean_int_emod.exit:                               ; preds = %bb.af
  %i.ce = tail call ptr @lean_int_big_emod(ptr noundef %.0.i155307, ptr noundef %.0.i146) #6
  br label %lean_dec.exit132

bb.ak:                                            ; preds = %lean_dec.exit136
  %i.cf = tail call ptr @lean_int_big_emod(ptr noundef %.0.i155307, ptr noundef %.0.i146) #6 ; 3 uses
  %i.cg = load i32, ptr %.0.i155307, align 4, !tbaa !16 ; 3 uses
  %i.ch = icmp sgt i32 %i.cg, 1
  br i1 %i.ch, label %bb.al, label %bb.am, !prof !13

bb.al:                                            ; preds = %bb.ak
  %i.ci = add nsw i32 %i.cg, -1
  store i32 %i.ci, ptr %.0.i155307, align 4, !tbaa !16
  br label %lean_dec.exit132

bb.am:                                            ; preds = %bb.ak
  %.not.i.i130 = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i130, label %lean_dec.exit132, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i155307) #6
  br label %lean_dec.exit132

lean_dec.exit132:                                 ; preds = %bb.aj, %bb.ai, %bb.ag, %lean_int_emod.exit, %bb.al, %bb.am, %bb.an
  %.1.i310 = phi ptr [ %i.ce, %lean_int_emod.exit ], [ %i.cf, %bb.al ], [ %i.cf, %bb.am ], [ %i.cf, %bb.an ], [ %i.cd, %bb.aj ], [ %i.cc, %bb.ai ], [ %.0.i155307, %bb.ag ] ; 6 uses
  %i.cj = ptrtoint ptr %.1.i310 to i64            ; 2 uses
  %i.ck = and i64 %i.cj, 1
  %.not.i160 = icmp eq i64 %i.ck, 0
  br i1 %.not.i160, label %bb.as, label %bb.ao, !prof !14

bb.ao:                                            ; preds = %lean_dec.exit132
  %i.cl = ptrtoint ptr %.0.i to i64               ; 2 uses
  %i.cm = and i64 %i.cl, 1
  %.not7.i161 = icmp eq i64 %i.cm, 0
  br i1 %.not7.i161, label %lean_int_add.exit164, label %bb.ap, !prof !14

bb.ap:                                            ; preds = %bb.ao
  %i.cn = shl i64 %i.cj, 31
  %i.co = ashr i64 %i.cn, 32
  %i.cp = shl i64 %i.cl, 31
  %i.cq = ashr i64 %i.cp, 32
  %i.cr = add nsw i64 %i.co, %i.cq                ; 3 uses
  %i.cs = add nsw i64 %i.cr, 2147483648
  %i.ct = icmp ult i64 %i.cs, 4294967296
  br i1 %i.ct, label %bb.aq, label %bb.ar, !prof !13

bb.aq:                                            ; preds = %bb.ap
  %i.cu = shl nsw i64 %i.cr, 1
  %i.cv = and i64 %i.cu, 8589934590
  %i.cw = or disjoint i64 %i.cv, 1
  %i.cx = inttoptr i64 %i.cw to ptr
  br label %lean_dec.exit128

bb.ar:                                            ; preds = %bb.ap
  %i.cy = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.cr) #6
  br label %lean_dec.exit128

lean_int_add.exit164:                             ; preds = %bb.ao
  %i.cz = tail call ptr @lean_int_big_add(ptr noundef %.1.i310, ptr noundef %.0.i) #6
  br label %lean_dec.exit128

bb.as:                                            ; preds = %lean_dec.exit132
  %i.da = tail call ptr @lean_int_big_add(ptr noundef %.1.i310, ptr noundef %.0.i) #6 ; 3 uses
  %i.db = load i32, ptr %.1.i310, align 4, !tbaa !16 ; 3 uses
  %i.dc = icmp sgt i32 %i.db, 1
  br i1 %i.dc, label %bb.at, label %bb.au, !prof !13

bb.at:                                            ; preds = %bb.as
  %i.dd = add nsw i32 %i.db, -1
  store i32 %i.dd, ptr %.1.i310, align 4, !tbaa !16
  br label %lean_dec.exit128

bb.au:                                            ; preds = %bb.as
  %.not.i.i126 = icmp eq i32 %i.db, 0
  br i1 %.not.i.i126, label %lean_dec.exit128, label %bb.av

bb.av:                                            ; preds = %bb.au
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i310) #6
  br label %lean_dec.exit128

lean_dec.exit128:                                 ; preds = %bb.ar, %bb.aq, %lean_int_add.exit164, %bb.at, %bb.au, %bb.av
  %.0.i162313 = phi ptr [ %i.cz, %lean_int_add.exit164 ], [ %i.da, %bb.at ], [ %i.da, %bb.au ], [ %i.da, %bb.av ], [ %i.cy, %bb.ar ], [ %i.cx, %bb.aq ] ; 6 uses
  %i.de = load atomic i32, ptr @l_Std_Time_PlainDate_weekday___closed__1_once seq_cst, align 4, !tbaa !12
  %i.df = icmp eq i32 %i.de, 1
  br i1 %i.df, label %bb.aw, label %bb.ax, !prof !13

bb.aw:                                            ; preds = %lean_dec.exit128
  %i.dg = load ptr, ptr @l_Std_Time_PlainDate_weekday___closed__1, align 8, !tbaa !10
  br label %lean_obj_once.exit166

bb.ax:                                            ; preds = %lean_dec.exit128
  %i.dh = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_PlainDate_weekday___closed__1, ptr noundef nonnull @l_Std_Time_PlainDate_weekday___closed__1_once, ptr noundef nonnull @_init_l_Std_Time_PlainDate_weekday___closed__1) #6
  br label %lean_obj_once.exit166

lean_obj_once.exit166:                            ; preds = %bb.aw, %bb.ax
  %.0.i165 = phi ptr [ %i.dg, %bb.aw ], [ %i.dh, %bb.ax ] ; 9 uses
  %i.di = ptrtoint ptr %.0.i162313 to i64         ; 2 uses
  %i.dj = and i64 %i.di, 1
  %.not.i167 = icmp eq i64 %i.dj, 0
  br i1 %.not.i167, label %bb.bc, label %bb.ay, !prof !14

bb.ay:                                            ; preds = %lean_obj_once.exit166
  %i.dk = ptrtoint ptr %.0.i to i64               ; 2 uses
  %i.dl = and i64 %i.dk, 1
  %.not7.i168 = icmp eq i64 %i.dl, 0
  br i1 %.not7.i168, label %lean_int_sub.exit171, label %bb.az, !prof !14

bb.az:                                            ; preds = %bb.ay
  %i.dm = shl i64 %i.di, 31
  %i.dn = ashr i64 %i.dm, 32
  %i.do = shl i64 %i.dk, 31
  %i.dp = ashr i64 %i.do, 32
  %i.dq = sub nsw i64 %i.dn, %i.dp                ; 3 uses
  %i.dr = add nsw i64 %i.dq, 2147483648
  %i.ds = icmp ult i64 %i.dr, 4294967296
  br i1 %i.ds, label %bb.ba, label %bb.bb, !prof !13

bb.ba:                                            ; preds = %bb.az
  %i.dt = shl nsw i64 %i.dq, 1
  %i.du = and i64 %i.dt, 8589934590
  %i.dv = or disjoint i64 %i.du, 1
  %i.dw = inttoptr i64 %i.dv to ptr
  br label %lean_dec.exit124

bb.bb:                                            ; preds = %bb.az
  %i.dx = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.dq) #6
  br label %lean_dec.exit124

lean_int_sub.exit171:                             ; preds = %bb.ay
  %i.dy = tail call ptr @lean_int_big_sub(ptr noundef %.0.i162313, ptr noundef %.0.i) #6
  br label %lean_dec.exit124

bb.bc:                                            ; preds = %lean_obj_once.exit166
  %i.dz = tail call ptr @lean_int_big_sub(ptr noundef %.0.i162313, ptr noundef %.0.i) #6 ; 3 uses
  %i.ea = load i32, ptr %.0.i162313, align 4, !tbaa !16 ; 3 uses
  %i.eb = icmp sgt i32 %i.ea, 1
  br i1 %i.eb, label %bb.bd, label %bb.be, !prof !13

bb.bd:                                            ; preds = %bb.bc
  %i.ec = add nsw i32 %i.ea, -1
  store i32 %i.ec, ptr %.0.i162313, align 4, !tbaa !16
  br label %lean_dec.exit124

bb.be:                                            ; preds = %bb.bc
  %.not.i.i122 = icmp eq i32 %i.ea, 0
  br i1 %.not.i.i122, label %lean_dec.exit124, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i162313) #6
  br label %lean_dec.exit124

lean_dec.exit124:                                 ; preds = %bb.bb, %bb.ba, %lean_int_sub.exit171, %bb.bd, %bb.be, %bb.bf
  %.0.i169316 = phi ptr [ %i.dy, %lean_int_sub.exit171 ], [ %i.dz, %bb.bd ], [ %i.dz, %bb.be ], [ %i.dz, %bb.bf ], [ %i.dx, %bb.bb ], [ %i.dw, %bb.ba ] ; 7 uses
  %i.ed = ptrtoint ptr %.0.i169316 to i64         ; 2 uses
  %i.ee = and i64 %i.ed, 1
  %.not.i172 = icmp eq i64 %i.ee, 0
  br i1 %.not.i172, label %bb.bl, label %bb.bg, !prof !14

bb.bg:                                            ; preds = %lean_dec.exit124
  %i.ef = ptrtoint ptr %.0.i165 to i64            ; 2 uses
  %i.eg = and i64 %i.ef, 1
  %.not21.i173 = icmp eq i64 %i.eg, 0
  br i1 %.not21.i173, label %lean_int_emod.exit178, label %bb.bh, !prof !14

bb.bh:                                            ; preds = %bb.bg
  %i.eh = shl i64 %i.ef, 31
  %i.ei = ashr i64 %i.eh, 32                      ; 3 uses
  %i.ej = icmp eq i64 %i.ei, 0
  br i1 %i.ej, label %lean_dec.exit120, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ek = shl i64 %i.ed, 31
  %i.el = ashr i64 %i.ek, 32
  %i.em = srem i64 %i.el, %i.ei                   ; 2 uses
  %i.en = icmp slt i64 %i.em, 0
  %.p.i174 = tail call i64 @llvm.abs.i64(i64 %i.ei, i1 true)
  %i.eo = select i1 %i.en, i64 %.p.i174, i64 0
  %.0.i175 = add nsw i64 %i.eo, %i.em             ; 3 uses
  %4 = icmp slt i64 %.0.i175, 2147483648
  br i1 %4, label %bb.bj, label %bb.bk, !prof !13

bb.bj:                                            ; preds = %bb.bi
  %i.ep = shl nsw i64 %.0.i175, 1
  %5 = and i64 %i.ep, 8589934590
  %i.eq = or disjoint i64 %5, 1
  %i.er = inttoptr i64 %i.eq to ptr
  br label %lean_dec.exit120

bb.bk:                                            ; preds = %bb.bi
  %i.es = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i175) #6
  br label %lean_dec.exit120

lean_int_emod.exit178:                            ; preds = %bb.bg
  %i.et = tail call ptr @lean_int_big_emod(ptr noundef %.0.i169316, ptr noundef %.0.i165) #6
  br label %lean_dec.exit120

bb.bl:                                            ; preds = %lean_dec.exit124
  %i.eu = tail call ptr @lean_int_big_emod(ptr noundef %.0.i169316, ptr noundef %.0.i165) #6 ; 3 uses
  %i.ev = load i32, ptr %.0.i169316, align 4, !tbaa !16 ; 3 uses
  %i.ew = icmp sgt i32 %i.ev, 1
  br i1 %i.ew, label %bb.bm, label %bb.bn, !prof !13

bb.bm:                                            ; preds = %bb.bl
  %i.ex = add nsw i32 %i.ev, -1
  store i32 %i.ex, ptr %.0.i169316, align 4, !tbaa !16
  br label %lean_dec.exit120

bb.bn:                                            ; preds = %bb.bl
  %.not.i.i118 = icmp eq i32 %i.ev, 0
  br i1 %.not.i.i118, label %lean_dec.exit120, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i169316) #6
  br label %lean_dec.exit120

lean_dec.exit120:                                 ; preds = %bb.bk, %bb.bj, %bb.bh, %lean_int_emod.exit178, %bb.bm, %bb.bn, %bb.bo
  %.1.i176319 = phi ptr [ %i.et, %lean_int_emod.exit178 ], [ %i.eu, %bb.bm ], [ %i.eu, %bb.bn ], [ %i.eu, %bb.bo ], [ %i.es, %bb.bk ], [ %i.er, %bb.bj ], [ %.0.i169316, %bb.bh ] ; 6 uses
  %i.ey = ptrtoint ptr %.1.i176319 to i64         ; 2 uses
  %i.ez = and i64 %i.ey, 1
  %.not.i179 = icmp eq i64 %i.ez, 0
  br i1 %.not.i179, label %bb.bt, label %bb.bp, !prof !14

bb.bp:                                            ; preds = %lean_dec.exit120
  %i.fa = ptrtoint ptr %.0.i165 to i64            ; 2 uses
  %i.fb = and i64 %i.fa, 1
  %.not7.i180 = icmp eq i64 %i.fb, 0
  br i1 %.not7.i180, label %lean_int_add.exit183, label %bb.bq, !prof !14

bb.bq:                                            ; preds = %bb.bp
  %i.fc = shl i64 %i.ey, 31
  %i.fd = ashr i64 %i.fc, 32
  %i.fe = shl i64 %i.fa, 31
  %i.ff = ashr i64 %i.fe, 32
  %i.fg = add nsw i64 %i.fd, %i.ff                ; 3 uses
  %i.fh = add nsw i64 %i.fg, 2147483648
  %i.fi = icmp ult i64 %i.fh, 4294967296
  br i1 %i.fi, label %bb.br, label %bb.bs, !prof !13

bb.br:                                            ; preds = %bb.bq
  %i.fj = shl nsw i64 %i.fg, 1
  %i.fk = and i64 %i.fj, 8589934590
  %i.fl = or disjoint i64 %i.fk, 1
  %i.fm = inttoptr i64 %i.fl to ptr
  br label %lean_dec.exit116

bb.bs:                                            ; preds = %bb.bq
  %i.fn = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.fg) #6
  br label %lean_dec.exit116

lean_int_add.exit183:                             ; preds = %bb.bp
  %i.fo = tail call ptr @lean_int_big_add(ptr noundef %.1.i176319, ptr noundef %.0.i165) #6
  br label %lean_dec.exit116

bb.bt:                                            ; preds = %lean_dec.exit120
  %i.fp = tail call ptr @lean_int_big_add(ptr noundef %.1.i176319, ptr noundef %.0.i165) #6 ; 3 uses
  %i.fq = load i32, ptr %.1.i176319, align 4, !tbaa !16 ; 3 uses
  %i.fr = icmp sgt i32 %i.fq, 1
  br i1 %i.fr, label %bb.bu, label %bb.bv, !prof !13

bb.bu:                                            ; preds = %bb.bt
  %i.fs = add nsw i32 %i.fq, -1
  store i32 %i.fs, ptr %.1.i176319, align 4, !tbaa !16
  br label %lean_dec.exit116

bb.bv:                                            ; preds = %bb.bt
  %.not.i.i114 = icmp eq i32 %i.fq, 0
  br i1 %.not.i.i114, label %lean_dec.exit116, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i176319) #6
  br label %lean_dec.exit116

lean_dec.exit116:                                 ; preds = %bb.bs, %bb.br, %lean_int_add.exit183, %bb.bu, %bb.bv, %bb.bw
  %.0.i181322 = phi ptr [ %i.fo, %lean_int_add.exit183 ], [ %i.fp, %bb.bu ], [ %i.fp, %bb.bv ], [ %i.fp, %bb.bw ], [ %i.fn, %bb.bs ], [ %i.fm, %bb.br ] ; 7 uses
  %i.ft = ptrtoint ptr %.0.i181322 to i64         ; 2 uses
  %i.fu = and i64 %i.ft, 1
  %.not.i184 = icmp eq i64 %i.fu, 0
  br i1 %.not.i184, label %bb.cc, label %bb.bx, !prof !14

bb.bx:                                            ; preds = %lean_dec.exit116
  %i.fv = ptrtoint ptr %.0.i165 to i64            ; 2 uses
  %i.fw = and i64 %i.fv, 1
  %.not21.i185 = icmp eq i64 %i.fw, 0
  br i1 %.not21.i185, label %lean_int_emod.exit190, label %bb.by, !prof !14

bb.by:                                            ; preds = %bb.bx
  %i.fx = shl i64 %i.fv, 31
  %i.fy = ashr i64 %i.fx, 32                      ; 3 uses
  %i.fz = icmp eq i64 %i.fy, 0
  br i1 %i.fz, label %lean_dec.exit112, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ga = shl i64 %i.ft, 31
  %i.gb = ashr i64 %i.ga, 32
  %i.gc = srem i64 %i.gb, %i.fy                   ; 2 uses
  %i.gd = icmp slt i64 %i.gc, 0
  %.p.i186 = tail call i64 @llvm.abs.i64(i64 %i.fy, i1 true)
  %i.ge = select i1 %i.gd, i64 %.p.i186, i64 0
  %.0.i187 = add nsw i64 %i.ge, %i.gc             ; 3 uses
  %6 = icmp slt i64 %.0.i187, 2147483648
  br i1 %6, label %bb.ca, label %bb.cb, !prof !13

bb.ca:                                            ; preds = %bb.bz
  %i.gf = shl nsw i64 %.0.i187, 1
  %7 = and i64 %i.gf, 8589934590
  %i.gg = or disjoint i64 %7, 1
  %i.gh = inttoptr i64 %i.gg to ptr
  br label %lean_dec.exit112

bb.cb:                                            ; preds = %bb.bz
  %i.gi = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %.0.i187) #6
  br label %lean_dec.exit112

lean_int_emod.exit190:                            ; preds = %bb.bx
  %i.gj = tail call ptr @lean_int_big_emod(ptr noundef %.0.i181322, ptr noundef %.0.i165) #6
  br label %lean_dec.exit112

bb.cc:                                            ; preds = %lean_dec.exit116
  %i.gk = tail call ptr @lean_int_big_emod(ptr noundef %.0.i181322, ptr noundef %.0.i165) #6 ; 3 uses
  %i.gl = load i32, ptr %.0.i181322, align 4, !tbaa !16 ; 3 uses
  %i.gm = icmp sgt i32 %i.gl, 1
  br i1 %i.gm, label %bb.cd, label %bb.ce, !prof !13

bb.cd:                                            ; preds = %bb.cc
  %i.gn = add nsw i32 %i.gl, -1
  store i32 %i.gn, ptr %.0.i181322, align 4, !tbaa !16
  br label %lean_dec.exit112

bb.ce:                                            ; preds = %bb.cc
  %.not.i.i110 = icmp eq i32 %i.gl, 0
  br i1 %.not.i.i110, label %lean_dec.exit112, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i181322) #6
  br label %lean_dec.exit112

lean_dec.exit112:                                 ; preds = %bb.cb, %bb.ca, %bb.by, %lean_int_emod.exit190, %bb.cd, %bb.ce, %bb.cf
  %.1.i188325 = phi ptr [ %i.gj, %lean_int_emod.exit190 ], [ %i.gk, %bb.cd ], [ %i.gk, %bb.ce ], [ %i.gk, %bb.cf ], [ %i.gi, %bb.cb ], [ %i.gh, %bb.ca ], [ %.0.i181322, %bb.by ] ; 6 uses
  %i.go = ptrtoint ptr %.1.i188325 to i64         ; 2 uses
  %i.gp = and i64 %i.go, 1
  %.not.i191 = icmp eq i64 %i.gp, 0
  br i1 %.not.i191, label %bb.ck, label %bb.cg, !prof !14

bb.cg:                                            ; preds = %lean_dec.exit112
  %i.gq = ptrtoint ptr %.0.i to i64               ; 2 uses
  %i.gr = and i64 %i.gq, 1
  %.not7.i192 = icmp eq i64 %i.gr, 0
  br i1 %.not7.i192, label %lean_int_add.exit195, label %bb.ch, !prof !14

bb.ch:                                            ; preds = %bb.cg
  %i.gs = shl i64 %i.go, 31
  %i.gt = ashr i64 %i.gs, 32
  %i.gu = shl i64 %i.gq, 31
  %i.gv = ashr i64 %i.gu, 32
  %i.gw = add nsw i64 %i.gt, %i.gv                ; 3 uses
  %i.gx = add nsw i64 %i.gw, 2147483648
  %i.gy = icmp ult i64 %i.gx, 4294967296
  br i1 %i.gy, label %bb.ci, label %bb.cj, !prof !13

bb.ci:                                            ; preds = %bb.ch
  %i.gz = shl nsw i64 %i.gw, 1
  %i.ha = and i64 %i.gz, 8589934590
  %i.hb = or disjoint i64 %i.ha, 1
  %i.hc = inttoptr i64 %i.hb to ptr
  br label %lean_dec.exit108

bb.cj:                                            ; preds = %bb.ch
  %i.hd = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.gw) #6
  br label %lean_dec.exit108

lean_int_add.exit195:                             ; preds = %bb.cg
  %i.he = tail call ptr @lean_int_big_add(ptr noundef %.1.i188325, ptr noundef %.0.i) #6
  br label %lean_dec.exit108

bb.ck:                                            ; preds = %lean_dec.exit112
  %i.hf = tail call ptr @lean_int_big_add(ptr noundef %.1.i188325, ptr noundef %.0.i) #6 ; 3 uses
  %i.hg = load i32, ptr %.1.i188325, align 4, !tbaa !16 ; 3 uses
  %i.hh = icmp sgt i32 %i.hg, 1
  br i1 %i.hh, label %bb.cl, label %bb.cm, !prof !13

bb.cl:                                            ; preds = %bb.ck
  %i.hi = add nsw i32 %i.hg, -1
  store i32 %i.hi, ptr %.1.i188325, align 4, !tbaa !16
  br label %lean_dec.exit108

bb.cm:                                            ; preds = %bb.ck
  %.not.i.i106 = icmp eq i32 %i.hg, 0
  br i1 %.not.i.i106, label %lean_dec.exit108, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i188325) #6
  br label %lean_dec.exit108

lean_dec.exit108:                                 ; preds = %bb.cj, %bb.ci, %lean_int_add.exit195, %bb.cl, %bb.cm, %bb.cn
  %.0.i193328 = phi ptr [ %i.he, %lean_int_add.exit195 ], [ %i.hf, %bb.cl ], [ %i.hf, %bb.cm ], [ %i.hf, %bb.cn ], [ %i.hd, %bb.cj ], [ %i.hc, %bb.ci ] ; 5 uses
  %i.hj = load atomic i32, ptr @l_Std_Time_PlainDate_ofEpochDay___closed__11_once seq_cst, align 4, !tbaa !12
  %i.hk = icmp eq i32 %i.hj, 1
  br i1 %i.hk, label %bb.co, label %bb.cp, !prof !13

bb.co:                                            ; preds = %lean_dec.exit108
  %i.hl = load ptr, ptr @l_Std_Time_PlainDate_ofEpochDay___closed__11, align 8, !tbaa !10
  br label %lean_obj_once.exit197

bb.cp:                                            ; preds = %lean_dec.exit108
  %i.hm = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_PlainDate_ofEpochDay___closed__11, ptr noundef nonnull @l_Std_Time_PlainDate_ofEpochDay___closed__11_once, ptr noundef nonnull @_init_l_Std_Time_PlainDate_ofEpochDay___closed__11) #6
  br label %lean_obj_once.exit197

lean_obj_once.exit197:                            ; preds = %bb.co, %bb.cp
  %.0.i196 = phi ptr [ %i.hl, %bb.co ], [ %i.hm, %bb.cp ] ; 3 uses
  %i.hn = tail call ptr @l_Std_Time_PlainDate_dayOfYear(ptr noundef nonnull %0) ; 6 uses
  %i.ho = load i32, ptr %0, align 8, !tbaa !16    ; 3 uses
  %i.hp = icmp sgt i32 %i.ho, 1
  br i1 %i.hp, label %bb.cq, label %bb.cr, !prof !13

bb.cq:                                            ; preds = %lean_obj_once.exit197
  %i.hq = add nsw i32 %i.ho, -1
  store i32 %i.hq, ptr %0, align 8, !tbaa !16
  br label %lean_dec_ref.exit

bb.cr:                                            ; preds = %lean_obj_once.exit197
  %.not.i67 = icmp eq i32 %i.ho, 0
  br i1 %.not.i67, label %lean_dec_ref.exit, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.cq, %bb.cr, %bb.cs
  %i.hr = ptrtoint ptr %.0.i196 to i64            ; 2 uses
  %i.hs = and i64 %i.hr, 1
  %.not.i198 = icmp eq i64 %i.hs, 0
  %.pre241 = ptrtoint ptr %i.hn to i64            ; 2 uses
  %.pre242 = and i64 %.pre241, 1
  %i.ht = icmp eq i64 %.pre242, 0                 ; 2 uses
  br i1 %.not.i198, label %lean_int_add.exit202, label %bb.ct, !prof !14

bb.ct:                                            ; preds = %lean_dec_ref.exit
  br i1 %i.ht, label %lean_int_add.exit202.thread333, label %bb.cu, !prof !14

lean_int_add.exit202.thread333:                   ; preds = %bb.ct
  %i.hu = tail call ptr @lean_int_big_add(ptr noundef %.0.i196, ptr noundef %i.hn) #6
  br label %bb.cx

bb.cu:                                            ; preds = %bb.ct
  %i.hv = shl i64 %i.hr, 31
  %i.hw = ashr i64 %i.hv, 32
  %i.hx = shl i64 %.pre241, 31
  %i.hy = ashr i64 %i.hx, 32
  %i.hz = add nsw i64 %i.hy, %i.hw                ; 3 uses
  %i.ia = add nsw i64 %i.hz, 2147483648
  %i.ib = icmp ult i64 %i.ia, 4294967296
  br i1 %i.ib, label %bb.cv, label %bb.cw, !prof !13

bb.cv:                                            ; preds = %bb.cu
  %i.ic = shl nsw i64 %i.hz, 1
  %i.id = and i64 %i.ic, 8589934590
  %i.ie = or disjoint i64 %i.id, 1
  %i.if = inttoptr i64 %i.ie to ptr
  br label %lean_dec.exit104

bb.cw:                                            ; preds = %bb.cu
  %i.ig = tail call ptr @lean_big_int64_to_int(i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %i.hz) #6
  br label %lean_dec.exit104

lean_int_add.exit202:                             ; preds = %lean_dec_ref.exit
  %i.ih = tail call ptr @lean_int_big_add(ptr noundef %.0.i196, ptr noundef %i.hn) #6 ; 2 uses
  br i1 %i.ht, label %bb.cx, label %lean_dec.exit104

bb.cx:                                            ; preds = %lean_int_add.exit202.thread333, %lean_int_add.exit202
  %i.ii = phi ptr [ %i.hu, %lean_int_add.exit202.thread333 ], [ %i.ih, %lean_int_add.exit202 ] ; 3 uses
  %i.ij = load i32, ptr %i.hn, align 4, !tbaa !16 ; 3 uses
  %i.ik = icmp sgt i32 %i.ij, 1
  br i1 %i.ik, label %bb.cy, label %bb.cz, !prof !13

bb.cy:                                            ; preds = %bb.cx
  %i.il = add nsw i32 %i.ij, -1
  store i32 %i.il, ptr %i.hn, align 4, !tbaa !16
  br label %lean_dec.exit104

bb.cz:                                            ; preds = %bb.cx
  %.not.i.i102 = icmp eq i32 %i.ij, 0
  br i1 %.not.i.i102, label %lean_dec.exit104, label %bb.da

bb.da:                                            ; preds = %bb.cz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.hn) #6
  br label %lean_dec.exit104

lean_dec.exit104:                                 ; preds = %bb.cw, %bb.cv, %bb.cy, %bb.cz, %bb.da, %lean_int_add.exit202
  %.0.i200332 = phi ptr [ %i.ih, %lean_int_add.exit202 ], [ %i.ii, %bb.cy ], [ %i.ii, %bb.cz ], [ %i.ii, %bb.da ], [ %i.ig, %bb.cw ], [ %i.if, %bb.cv ] ; 6 uses
  %i.im = ptrtoint ptr %.0.i193328 to i64         ; 2 uses
  %i.in = and i64 %i.im, 1
  %.not.i203 = icmp eq i64 %i.in, 0
  br i1 %.not.i203, label %bb.de, label %bb.db, !prof !14

bb.db:                                            ; preds = %lean_dec.exit104
  %i.io = shl i64 %i.im, 31
  %i.ip = ashr i64 %i.io, 32                      ; 2 uses
  %i.iq = sub nsw i64 0, %i.ip                    ; 2 uses
  %.not4.i = icmp eq i64 %i.ip, -2147483648
  br i1 %.not4.i, label %bb.dd, label %bb.dc, !prof !14

bb.dc:                                            ; preds = %bb.db
  %i.ir = shl nsw i64 %i.iq, 1
  %i.is = and i64 %i.ir, 8589934590
  %i.it = or disjoint i64 %i.is, 1
  %i.iu = inttoptr i64 %i.it to ptr
end_hunk_5
begin_hunk_6_@initialize_Std_Time_Date_PlainDate:bb.a
  %i.t = load i32, ptr %i.q, align 4, !tbaa !16   ; 3 uses
  %i.u = icmp sgt i32 %i.t, 1
  br i1 %i.u, label %bb.l, label %bb.m, !prof !13

bb.l:                                             ; preds = %bb.k
  %i.v = add nsw i32 %i.t, -1
  store i32 %i.v, ptr %i.q, align 4, !tbaa !16
  br label %lean_dec_ref.exit24

bb.m:                                             ; preds = %bb.k
  %.not.i23 = icmp eq i32 %i.t, 0
  br i1 %.not.i23, label %lean_dec_ref.exit24, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.q) #6
  br label %lean_dec_ref.exit24

lean_dec_ref.exit24:                              ; preds = %bb.l, %bb.m, %bb.n
  %i.w = tail call ptr @runtime_initialize_Std_Time_Date_PlainDate(i8 noundef zeroext %0) ; 5 uses
  %i.x = getelementptr i8, ptr %i.w, i64 4
  %.val29 = load i32, ptr %i.x, align 4
  %.mask.i35 = and i32 %.val29, -16777216
  %i.y = icmp eq i32 %.mask.i35, 16777216
  br i1 %i.y, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %lean_dec_ref.exit24
  %i.z = load i32, ptr %i.w, align 4, !tbaa !16   ; 3 uses
  %i.aa = icmp sgt i32 %i.z, 1
  br i1 %i.aa, label %bb.p, label %bb.q, !prof !13

bb.p:                                             ; preds = %bb.o
  %i.ab = add nsw i32 %i.z, -1
  store i32 %i.ab, ptr %i.w, align 4, !tbaa !16
  br label %lean_dec_ref.exit22

bb.q:                                             ; preds = %bb.o
  %.not.i21 = icmp eq i32 %i.z, 0
  br i1 %.not.i21, label %lean_dec_ref.exit22, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.w) #6
  br label %lean_dec_ref.exit22

lean_dec_ref.exit22:                              ; preds = %bb.p, %bb.q, %bb.r
  %.b.i = load i1, ptr @_G_meta_initialized, align 1
  br i1 %.b.i, label %bb.s, label %bb.u

bb.s:                                             ; preds = %lean_dec_ref.exit22
  tail call void @lean_inc_heartbeat() #6
  %i.ac = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #6 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.t, label %lean_dec_ref.exit

bb.t:                                             ; preds = %bb.s
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

bb.u:                                             ; preds = %lean_dec_ref.exit22
  store i1 true, ptr @_G_meta_initialized, align 1
  tail call void @lean_inc_heartbeat() #6
  %i.ae = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #6 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.v, label %lean_dec_ref.exit

bb.v:                                             ; preds = %bb.u
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_dec_ref.exit:                                ; preds = %bb.s, %bb.u
  %.sink6.i = phi ptr [ %i.ac, %bb.s ], [ %i.ae, %bb.u ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sink6.i, i64 4
  store i32 1, ptr %.sink6.i, align 4, !tbaa !16
  store i32 65552, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %.sink6.i, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.ah, align 8, !tbaa !10
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.sink6.i) #6
  br label %tailrecurse._crit_edge

.loopexit:                                        ; preds = %lean_dec_ref.exit24, %lean_dec_ref.exit26, %lean_dec_ref.exit28, %.lr.ph, %lean_io_result_mk_ok.exit
  %.0 = phi ptr [ %i.a, %lean_io_result_mk_ok.exit ], [ %i.q, %lean_dec_ref.exit26 ], [ %i.k, %lean_dec_ref.exit28 ], [ %i.e, %.lr.ph ], [ %i.w, %lean_dec_ref.exit24 ]
  ret ptr %.0
}

declare ptr @initialize_Std_Time_Date_Basic(i8 noundef zeroext) local_unnamed_addr #2

declare ptr @initialize_Std_Time_Date_Unit_Month(i8 noundef zeroext) local_unnamed_addr #2

declare ptr @initialize_Std_Time_Date_Unit_Year(i8 noundef zeroext) local_unnamed_addr #2

declare ptr @lean_big_size_t_to_int(i64 noundef) local_unnamed_addr #2

declare ptr @lean_int_big_add(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lean_big_int64_to_int(i64 noundef) local_unnamed_addr #2

declare ptr @lean_int_big_sub(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lean_int_big_emod(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lean_int_big_neg(ptr noundef) local_unnamed_addr #2

declare ptr @lean_int_big_ediv(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lean_int_big_mul(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lean_int_big_div(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @lean_int_big_lt(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @lean_int_big_le(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lean_int_big_mod(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @lean_int_big_eq(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @l_compareLex___boxed(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @l_compareOn___boxed(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @l_Std_Time_Year_instOrdOffset___aux__1___boxed(ptr noundef, ptr noundef) #2

declare ptr @l_Std_Time_Month_instOrdOrdinal___aux__1___boxed(ptr noundef, ptr noundef) #2

declare ptr @l_Std_Time_Day_instOrdOrdinal___aux__1___boxed(ptr noundef, ptr noundef) #2

declare ptr @lean_obj_once_cold(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lean_inc_heartbeat() local_unnamed_addr #2

declare noalias ptr @mi_malloc_small(i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @lean_internal_panic_out_of_memory() local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_init_l_Std_Time_instReprPlainDate_repr___redArg___closed__14() #1 {
bb.a:
  ret ptr inttoptr (i64 5 to ptr)
}

declare void @lean_dec_ref_cold(ptr noundef) local_unnamed_addr #2

declare void @lean_free_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_PlainDate_rollOver___closed__6() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_PlainDate_rollOver___closed__3_once seq_cst, align 4, !tbaa !12
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_PlainDate_rollOver___closed__3, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_PlainDate_rollOver___closed__3, ptr noundef nonnull @l_Std_Time_PlainDate_rollOver___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_PlainDate_rollOver___closed__3) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_PlainDate_rollOver___closed__5_once seq_cst, align 4, !tbaa !12
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_PlainDate_rollOver___closed__5, align 8, !tbaa !10
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_PlainDate_rollOver___closed__5, ptr noundef nonnull @l_Std_Time_PlainDate_rollOver___closed__5_once, ptr noundef nonnull @_init_l_Std_Time_PlainDate_rollOver___closed__5) #6
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
  br i1 %0, label %bb.i, label %bb.j, !prof !13

bb.i:                                             ; preds = %bb.h
  %i.u = shl nsw i64 %.0.i5, 1
  %1 = and i64 %i.u, 8589934590
  %i.v = or disjoint i64 %1, 1
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
define internal ptr @_init_l_Std_Time_PlainDate_rollOver___closed__3() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDate___closed__0_once seq_cst, align 4, !tbaa !12
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instInhabitedPlainDate___closed__0, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__0, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDate___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_PlainDate_rollOver___closed__2_once seq_cst, align 4, !tbaa !12
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_PlainDate_rollOver___closed__2, align 8, !tbaa !10
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_PlainDate_rollOver___closed__2, ptr noundef nonnull @l_Std_Time_PlainDate_rollOver___closed__2_once, ptr noundef nonnull @_init_l_Std_Time_PlainDate_rollOver___closed__2) #6
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
  br i1 %i.s, label %bb.h, label %bb.i, !prof !13

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
define internal ptr @_init_l_Std_Time_PlainDate_rollOver___closed__5() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_PlainDate_rollOver___closed__3_once seq_cst, align 4, !tbaa !12
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_PlainDate_rollOver___closed__3, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_PlainDate_rollOver___closed__3, ptr noundef nonnull @l_Std_Time_PlainDate_rollOver___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_PlainDate_rollOver___closed__3) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_PlainDate_rollOver___closed__4_once seq_cst, align 4, !tbaa !12
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_PlainDate_rollOver___closed__4, align 8, !tbaa !10
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_PlainDate_rollOver___closed__4, ptr noundef nonnull @l_Std_Time_PlainDate_rollOver___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_PlainDate_rollOver___closed__4) #6
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
  br i1 %i.s, label %bb.h, label %bb.i, !prof !13

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
define internal ptr @_init_l_Std_Time_PlainDate_rollOver___closed__2() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDate___closed__0_once seq_cst, align 4, !tbaa !12
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instInhabitedPlainDate___closed__0, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__0, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDate___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_PlainDate_rollOver___closed__1_once seq_cst, align 4, !tbaa !12
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_PlainDate_rollOver___closed__1, align 8, !tbaa !10
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_PlainDate_rollOver___closed__1, ptr noundef nonnull @l_Std_Time_PlainDate_rollOver___closed__1_once, ptr noundef nonnull @_init_l_Std_Time_PlainDate_rollOver___closed__1) #6
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
  br i1 %i.s, label %bb.h, label %bb.i, !prof !13

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
define internal ptr @_init_l_Std_Time_PlainDate_rollOver___closed__1() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_PlainDate_rollOver___closed__0_once seq_cst, align 4, !tbaa !12
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_PlainDate_rollOver___closed__0, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_PlainDate_rollOver___closed__0, ptr noundef nonnull @l_Std_Time_PlainDate_rollOver___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_PlainDate_rollOver___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDate___closed__0_once seq_cst, align 4, !tbaa !12
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_instInhabitedPlainDate___closed__0, align 8, !tbaa !10
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__0, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDate___closed__0) #6
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
  br i1 %i.s, label %bb.h, label %bb.i, !prof !13

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
define internal noundef nonnull ptr @_init_l_Std_Time_PlainDate_rollOver___closed__0() #1 {
bb.a:
  ret ptr inttoptr (i64 61 to ptr)
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_PlainDate_rollOver___closed__4() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_PlainDate_rollOver___closed__3_once seq_cst, align 4, !tbaa !12
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_PlainDate_rollOver___closed__3, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_PlainDate_rollOver___closed__3, ptr noundef nonnull @l_Std_Time_PlainDate_rollOver___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_PlainDate_rollOver___closed__3) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDate___closed__5_once seq_cst, align 4, !tbaa !12
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_instInhabitedPlainDate___closed__5, align 8, !tbaa !10
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__5, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__5_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDate___closed__5) #6
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
  br i1 %0, label %bb.i, label %bb.j, !prof !13

bb.i:                                             ; preds = %bb.h
  %i.u = shl nsw i64 %.0.i5, 1
  %1 = and i64 %i.u, 8589934590
  %i.v = or disjoint i64 %1, 1
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
define internal ptr @_init_l_Std_Time_instInhabitedPlainDate___closed__5() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDate___closed__0_once seq_cst, align 4, !tbaa !12
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instInhabitedPlainDate___closed__0, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__0, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDate___closed__0) #6
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
define internal ptr @_init_l_Std_Time_PlainDate_weekday___closed__0() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDate___closed__0_once seq_cst, align 4, !tbaa !12
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instInhabitedPlainDate___closed__0, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__0, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDate___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_instReprPlainDate_repr___redArg___closed__8_once seq_cst, align 4, !tbaa !12
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_instReprPlainDate_repr___redArg___closed__8, align 8, !tbaa !10
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instReprPlainDate_repr___redArg___closed__8, ptr noundef nonnull @l_Std_Time_instReprPlainDate_repr___redArg___closed__8_once, ptr noundef nonnull @_init_l_Std_Time_instReprPlainDate_repr___redArg___closed__8) #6
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
  br i1 %i.s, label %bb.h, label %bb.i, !prof !13

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
define internal ptr @_init_l_Std_Time_PlainDate_alignedWeekOfMonth___closed__0() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDate___closed__0_once seq_cst, align 4, !tbaa !12
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instInhabitedPlainDate___closed__0, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__0, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDate___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_PlainDate_weekday___closed__3_once seq_cst, align 4, !tbaa !12
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_PlainDate_weekday___closed__3, align 8, !tbaa !10
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_PlainDate_weekday___closed__3, ptr noundef nonnull @l_Std_Time_PlainDate_weekday___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_PlainDate_weekday___closed__3) #6
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
  br i1 %i.s, label %bb.h, label %bb.i, !prof !13

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
define internal noalias nonnull ptr @_init_l_Std_Time_instInhabitedPlainDate___closed__18() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDate___closed__17_once seq_cst, align 4, !tbaa !12
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instInhabitedPlainDate___closed__17, align 8, !tbaa !10
end_hunk_6
begin_hunk_7_@_init_l_Std_Time_instInhabitedPlainDate___closed__18:bb.a
; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_instInhabitedPlainDate___closed__17() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDate___closed__0_once seq_cst, align 4, !tbaa !12
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instInhabitedPlainDate___closed__0, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__0, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDate___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDate___closed__16_once seq_cst, align 4, !tbaa !12
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_instInhabitedPlainDate___closed__16, align 8, !tbaa !10
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__16, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__16_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDate___closed__16) #6
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
  br i1 %i.s, label %bb.h, label %bb.i, !prof !13

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
define internal ptr @_init_l_Std_Time_instInhabitedPlainDate___closed__9() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDate___closed__0_once seq_cst, align 4, !tbaa !12
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instInhabitedPlainDate___closed__0, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__0, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDate___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDate___closed__8_once seq_cst, align 4, !tbaa !12
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_instInhabitedPlainDate___closed__8, align 8, !tbaa !10
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__8, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__8_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDate___closed__8) #6
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
  br i1 %i.s, label %bb.h, label %bb.i, !prof !13

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
define internal ptr @_init_l_Std_Time_instInhabitedPlainDate___closed__16() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDate___closed__13_once seq_cst, align 4, !tbaa !12
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instInhabitedPlainDate___closed__13, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__13, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__13_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDate___closed__13) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDate___closed__15_once seq_cst, align 4, !tbaa !12
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_instInhabitedPlainDate___closed__15, align 8, !tbaa !10
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__15, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__15_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDate___closed__15) #6
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
  br i1 %0, label %bb.i, label %bb.j, !prof !13

bb.i:                                             ; preds = %bb.h
  %i.u = shl nsw i64 %.0.i5, 1
  %1 = and i64 %i.u, 8589934590
  %i.v = or disjoint i64 %1, 1
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
define internal ptr @_init_l_Std_Time_instInhabitedPlainDate___closed__13() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDate___closed__0_once seq_cst, align 4, !tbaa !12
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instInhabitedPlainDate___closed__0, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__0, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDate___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDate___closed__12_once seq_cst, align 4, !tbaa !12
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_instInhabitedPlainDate___closed__12, align 8, !tbaa !10
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__12, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__12_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDate___closed__12) #6
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
  br i1 %i.s, label %bb.h, label %bb.i, !prof !13

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
define internal ptr @_init_l_Std_Time_instInhabitedPlainDate___closed__15() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDate___closed__13_once seq_cst, align 4, !tbaa !12
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instInhabitedPlainDate___closed__13, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__13, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__13_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDate___closed__13) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDate___closed__14_once seq_cst, align 4, !tbaa !12
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_instInhabitedPlainDate___closed__14, align 8, !tbaa !10
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__14, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__14_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDate___closed__14) #6
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
  br i1 %i.s, label %bb.h, label %bb.i, !prof !13

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
define internal ptr @_init_l_Std_Time_instInhabitedPlainDate___closed__12() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDate___closed__0_once seq_cst, align 4, !tbaa !12
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instInhabitedPlainDate___closed__0, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__0, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDate___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDate___closed__11_once seq_cst, align 4, !tbaa !12
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_instInhabitedPlainDate___closed__11, align 8, !tbaa !10
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__11, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__11_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDate___closed__11) #6
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
  br i1 %i.s, label %bb.h, label %bb.i, !prof !13

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
define internal ptr @_init_l_Std_Time_instInhabitedPlainDate___closed__11() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDate___closed__10_once seq_cst, align 4, !tbaa !12
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instInhabitedPlainDate___closed__10, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__10, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__10_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDate___closed__10) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDate___closed__0_once seq_cst, align 4, !tbaa !12
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_instInhabitedPlainDate___closed__0, align 8, !tbaa !10
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__0, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDate___closed__0) #6
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
  br i1 %i.s, label %bb.h, label %bb.i, !prof !13

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
define internal noundef nonnull ptr @_init_l_Std_Time_instInhabitedPlainDate___closed__10() #1 {
bb.a:
  ret ptr inttoptr (i64 61 to ptr)
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_instInhabitedPlainDate___closed__14() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDate___closed__13_once seq_cst, align 4, !tbaa !12
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instInhabitedPlainDate___closed__13, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__13, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__13_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDate___closed__13) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDate___closed__5_once seq_cst, align 4, !tbaa !12
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_instInhabitedPlainDate___closed__5, align 8, !tbaa !10
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__5, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__5_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDate___closed__5) #6
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
  br i1 %0, label %bb.i, label %bb.j, !prof !13

bb.i:                                             ; preds = %bb.h
  %i.u = shl nsw i64 %.0.i5, 1
  %1 = and i64 %i.u, 8589934590
  %i.v = or disjoint i64 %1, 1
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
define internal ptr @_init_l_Std_Time_instInhabitedPlainDate___closed__8() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDate___closed__4_once seq_cst, align 4, !tbaa !12
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instInhabitedPlainDate___closed__4, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__4, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDate___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDate___closed__7_once seq_cst, align 4, !tbaa !12
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_instInhabitedPlainDate___closed__7, align 8, !tbaa !10
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__7, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__7_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDate___closed__7) #6
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
  br i1 %0, label %bb.i, label %bb.j, !prof !13

bb.i:                                             ; preds = %bb.h
  %i.u = shl nsw i64 %.0.i5, 1
  %1 = and i64 %i.u, 8589934590
  %i.v = or disjoint i64 %1, 1
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
define internal ptr @_init_l_Std_Time_instInhabitedPlainDate___closed__4() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDate___closed__0_once seq_cst, align 4, !tbaa !12
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instInhabitedPlainDate___closed__0, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__0, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDate___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDate___closed__3_once seq_cst, align 4, !tbaa !12
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_instInhabitedPlainDate___closed__3, align 8, !tbaa !10
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__3, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__3_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDate___closed__3) #6
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
  br i1 %i.s, label %bb.h, label %bb.i, !prof !13

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
define internal ptr @_init_l_Std_Time_instInhabitedPlainDate___closed__7() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDate___closed__4_once seq_cst, align 4, !tbaa !12
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instInhabitedPlainDate___closed__4, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__4, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDate___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDate___closed__6_once seq_cst, align 4, !tbaa !12
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_instInhabitedPlainDate___closed__6, align 8, !tbaa !10
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__6, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__6_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDate___closed__6) #6
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
  br i1 %i.s, label %bb.h, label %bb.i, !prof !13

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
define internal ptr @_init_l_Std_Time_instInhabitedPlainDate___closed__3() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDate___closed__0_once seq_cst, align 4, !tbaa !12
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instInhabitedPlainDate___closed__0, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__0, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDate___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDate___closed__2_once seq_cst, align 4, !tbaa !12
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_instInhabitedPlainDate___closed__2, align 8, !tbaa !10
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__2, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__2_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDate___closed__2) #6
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
  br i1 %i.s, label %bb.h, label %bb.i, !prof !13

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
define internal ptr @_init_l_Std_Time_instInhabitedPlainDate___closed__2() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDate___closed__1_once seq_cst, align 4, !tbaa !12
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instInhabitedPlainDate___closed__1, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__1, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__1_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDate___closed__1) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDate___closed__0_once seq_cst, align 4, !tbaa !12
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_instInhabitedPlainDate___closed__0, align 8, !tbaa !10
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__0, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__0_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDate___closed__0) #6
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
  br i1 %i.s, label %bb.h, label %bb.i, !prof !13

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
define internal noundef nonnull ptr @_init_l_Std_Time_instInhabitedPlainDate___closed__1() #1 {
bb.a:
  ret ptr inttoptr (i64 23 to ptr)
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Std_Time_instInhabitedPlainDate___closed__6() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDate___closed__4_once seq_cst, align 4, !tbaa !12
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instInhabitedPlainDate___closed__4, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__4, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__4_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDate___closed__4) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDate___closed__5_once seq_cst, align 4, !tbaa !12
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_instInhabitedPlainDate___closed__5, align 8, !tbaa !10
  br label %lean_obj_once.exit4

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__5, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__5_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDate___closed__5) #6
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
  br i1 %0, label %bb.i, label %bb.j, !prof !13

bb.i:                                             ; preds = %bb.h
  %i.u = shl nsw i64 %.0.i5, 1
  %1 = and i64 %i.u, 8589934590
  %i.v = or disjoint i64 %1, 1
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
define internal noalias nonnull ptr @_init_l_Std_Time_PlainDate_instInhabited___closed__0() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDate___closed__17_once seq_cst, align 4, !tbaa !12
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Std_Time_instInhabitedPlainDate___closed__17, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__17, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__17_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDate___closed__17) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  %i.e = load atomic i32, ptr @l_Std_Time_instInhabitedPlainDate___closed__9_once seq_cst, align 4, !tbaa !12
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Std_Time_instInhabitedPlainDate___closed__9, align 8, !tbaa !10
  br label %lean_obj_once.exit8

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__9, ptr noundef nonnull @l_Std_Time_instInhabitedPlainDate___closed__9_once, ptr noundef nonnull @_init_l_Std_Time_instInhabitedPlainDate___closed__9) #6
  br label %lean_obj_once.exit8

lean_obj_once.exit8:                              ; preds = %bb.d, %bb.e
  %.0.i7 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ]
  %i.i = load atomic i32, ptr @l_Std_Time_instReprPlainDate_repr___redArg___closed__25_once seq_cst, align 4, !tbaa !12
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.f, label %bb.g, !prof !13

bb.f:                                             ; preds = %lean_obj_once.exit8
  %i.k = load ptr, ptr @l_Std_Time_instReprPlainDate_repr___redArg___closed__25, align 8, !tbaa !10
  br label %lean_obj_once.exit10

bb.g:                                             ; preds = %lean_obj_once.exit8
  %i.l = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Std_Time_instReprPlainDate_repr___redArg___closed__25, ptr noundef nonnull @l_Std_Time_instReprPlainDate_repr___redArg___closed__25_once, ptr noundef nonnull @_init_l_Std_Time_instReprPlainDate_repr___redArg___closed__25) #6
  br label %lean_obj_once.exit10

lean_obj_once.exit10:                             ; preds = %bb.f, %bb.g
  %.0.i9 = phi ptr [ %i.k, %bb.f ], [ %i.l, %bb.g ]
  tail call void @lean_inc_heartbeat() #6
  %i.m = tail call noalias ptr @mi_malloc_small(i64 noundef 32) #6 ; 7 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.h, label %lean_alloc_ctor.exit

bb.h:                                             ; preds = %lean_obj_once.exit10
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_obj_once.exit10
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 1, ptr %i.m, align 4, !tbaa !16
  store i32 196640, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.0.i9, ptr %i.p, align 8, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %.0.i7, ptr %i.q, align 8, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %.0.i, ptr %i.r, align 8, !tbaa !10
  ret ptr %i.m
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"", !5, i64 0, !5, i64 4}
!12 = !{!11, !5, i64 0}
!13 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!14 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!15 = !{!"", !6, i64 0, !6, i64 4, !6, i64 6, !6, i64 7}
!16 = !{!15, !6, i64 0}
!17 = !{!"branch_weights", i32 4001, i32 4000000}
!18 = !{!"long", !5, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
end_hunk_7
