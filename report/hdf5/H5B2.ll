Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5B2?download=true
begin_hunk_0_@H5B2_find:bb.a
  %i.x = call i32 %i.w(ptr noundef %1, ptr noundef nonnull %i.s, ptr noundef nonnull %i.a) #6
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !15
  %i.aa = load i64, ptr @H5E_CANTCOMPARE_g, align 8, !tbaa !15
  %i.ab = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2_find, i32 noundef 470, i64 noundef %i.z, i64 noundef %i.aa, ptr noundef nonnull @.str.15) #6 ; 0 uses
  br label %.thread204

bb.h:                                             ; preds = %bb.f
  %i.ac = load i32, ptr %i.a, align 4, !tbaa !39  ; 2 uses
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr %2, align 1, !tbaa !9
  br label %.thread204

bb.j:                                             ; preds = %bb.h
  %i.ae = icmp eq i32 %i.ac, 0
  br i1 %i.ae, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %.not184 = icmp eq ptr %3, null
  br i1 %.not184, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = load ptr, ptr %i.r, align 8, !tbaa !46
  %i.ag = call i32 %3(ptr noundef %i.af, ptr noundef %4) #6
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ai = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !15
  %i.aj = load i64, ptr @H5E_NOTFOUND_g, align 8, !tbaa !15
  %i.ak = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2_find, i32 noundef 478, i64 noundef %i.ai, i64 noundef %i.aj, ptr noundef nonnull @.str.16) #6 ; 0 uses
  br label %.thread204

bb.n:                                             ; preds = %bb.l, %bb.k
  store i8 1, ptr %2, align 1, !tbaa !9
  br label %.thread204

bb.o:                                             ; preds = %bb.j, %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 384 ; 4 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !49 ; 2 uses
  %.not171 = icmp eq ptr %i.am, null
  br i1 %.not171, label %bb.y, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 424
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !47
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !68
  %i.ar = call i32 %i.aq(ptr noundef %1, ptr noundef nonnull %i.am, ptr noundef nonnull %i.a) #6
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.at = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !15
  %i.au = load i64, ptr @H5E_CANTCOMPARE_g, align 8, !tbaa !15
  %i.av = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2_find, i32 noundef 485, i64 noundef %i.at, i64 noundef %i.au, ptr noundef nonnull @.str.15) #6 ; 0 uses
  br label %.thread204

bb.r:                                             ; preds = %bb.p
  %i.aw = load i32, ptr %i.a, align 4, !tbaa !39  ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i8 0, ptr %2, align 1, !tbaa !9
  br label %.thread204

bb.t:                                             ; preds = %bb.r
  %i.ay = icmp eq i32 %i.aw, 0
  br i1 %i.ay, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %.not183 = icmp eq ptr %3, null
  br i1 %.not183, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.az = load ptr, ptr %i.al, align 8, !tbaa !49
  %i.ba = call i32 %3(ptr noundef %i.az, ptr noundef %4) #6
  %i.bb = icmp slt i32 %i.ba, 0
  br i1 %i.bb, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bc = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !15
  %i.bd = load i64, ptr @H5E_NOTFOUND_g, align 8, !tbaa !15
  %i.be = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2_find, i32 noundef 493, i64 noundef %i.bc, i64 noundef %i.bd, ptr noundef nonnull @.str.16) #6 ; 0 uses
  br label %.thread204

bb.x:                                             ; preds = %bb.v, %bb.u
  store i8 1, ptr %2, align 1, !tbaa !9
  br label %.thread204

bb.y:                                             ; preds = %bb.t, %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %i.l, i64 284
  %i.bg = load i16, ptr %i.bf, align 4, !tbaa !41 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.l, i64 392 ; 3 uses
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !50, !range !10, !noundef !11
  %i.bj = trunc nuw i8 %i.bi to i1
  %spec.select = select i1 %i.bj, ptr %i.l, ptr null ; 2 uses
  store i32 -1, ptr %i.a, align 4, !tbaa !39
  %.not172230 = icmp eq i16 %i.bg, 0
  br i1 %.not172230, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.y
  %i.bk = getelementptr inbounds nuw i8, ptr %i.l, i64 424
  %i.bl = getelementptr inbounds nuw i8, ptr %i.l, i64 360 ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph, %bb.aw
  %.0149233 = phi i32 [ 0, %.lr.ph ], [ %.1150, %bb.aw ] ; 3 uses
  %.0152232 = phi i16 [ %i.bg, %.lr.ph ], [ %i.el, %bb.aw ] ; 2 uses
  %.1155231 = phi ptr [ %spec.select, %.lr.ph ], [ %spec.select188, %bb.aw ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.bm = call ptr @H5B2__protect_internal(ptr noundef nonnull %i.l, ptr noundef %.1155231, ptr noundef nonnull %5, i16 noundef zeroext %.0152232, i1 noundef zeroext false, i32 noundef 128) #6 ; 10 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bo = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !15
  %i.bp = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !15
  %i.bq = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2_find, i32 noundef 516, i64 noundef %i.bo, i64 noundef %i.bp, ptr noundef nonnull @.str.17) #6 ; 0 uses
  br label %.thread197

bb.ab:                                            ; preds = %bb.z
  %.not178 = icmp eq ptr %.1155231, null
  %.not179 = icmp eq ptr %.1155231, %i.l
  %or.cond193 = or i1 %.not178, %.not179
  br i1 %or.cond193, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.br = call i32 @H5AC_unpin_entry(ptr noundef nonnull %.1155231) #6
  %i.bs = icmp slt i32 %i.br, 0
  br i1 %i.bs, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.bt = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !15
  %i.bu = load i64, ptr @H5E_CANTUNPIN_g, align 8, !tbaa !15
  %i.bv = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2_find, i32 noundef 521, i64 noundef %i.bt, i64 noundef %i.bu, ptr noundef nonnull @.str.18) #6 ; 0 uses
  br label %.thread197

bb.ae:                                            ; preds = %bb.ac, %bb.ab
  %i.bw = load ptr, ptr %i.bk, align 8, !tbaa !47
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bm, i64 272 ; 2 uses
  %i.by = load i16, ptr %i.bx, align 8, !tbaa !52
  %i.bz = zext i16 %i.by to i32
  %i.ca = load ptr, ptr %i.bl, align 8, !tbaa !53
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bm, i64 256
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !54
  %i.cd = call i32 @H5B2__locate_record(ptr noundef %i.bw, i32 noundef %i.bz, ptr noundef %i.ca, ptr noundef %i.cc, ptr noundef %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #6
  %i.ce = icmp slt i32 %i.cd, 0
  br i1 %i.ce, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cf = load ptr, ptr %i.m, align 8, !tbaa !36
  %i.cg = load i64, ptr %5, align 8, !tbaa !55
  %i.ch = call i32 @H5AC_unprotect(ptr noundef %i.cf, ptr noundef nonnull @H5AC_BT2_INT, i64 noundef %i.cg, ptr noundef nonnull %i.bm, i32 noundef 0) #6 ; 0 uses
  %i.ci = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !15
  %i.cj = load i64, ptr @H5E_CANTCOMPARE_g, align 8, !tbaa !15
  %i.ck = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2_find, i32 noundef 530, i64 noundef %i.ci, i64 noundef %i.cj, ptr noundef nonnull @.str.15) #6 ; 0 uses
  br label %.thread197

bb.ag:                                            ; preds = %bb.ae
  %i.cl = load i32, ptr %i.a, align 4, !tbaa !39  ; 2 uses
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %.thread195, label %bb.ah

.thread195:                                       ; preds = %bb.ag
  %i.cn = load i32, ptr %i.b, align 4, !tbaa !39
  %i.co = add i32 %i.cn, 1                        ; 2 uses
  store i32 %i.co, ptr %i.b, align 4, !tbaa !39
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %.not180 = icmp eq i32 %i.cl, 0
  br i1 %.not180, label %bb.ao, label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.ah
  %.pr = load i32, ptr %i.b, align 4, !tbaa !39
  br label %bb.ai

bb.ai:                                            ; preds = %thread-pre-split, %.thread195
  %i.cp = phi i32 [ %.pr, %thread-pre-split ], [ %i.co, %.thread195 ] ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bm, i64 264
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !56
  %i.cs = zext i32 %i.cp to i64
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.cr, i64 %i.cs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.ct, i64 24, i1 false), !tbaa.struct !44
  %.not182 = icmp eq i32 %.0149233, 3
  br i1 %.not182, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cu = icmp eq i32 %i.cp, 0
  br i1 %i.cu, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.cv = and i32 %.0149233, -3
  %or.cond = icmp eq i32 %i.cv, 0
  %. = select i1 %or.cond, i32 2, i32 3
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.cw = load i16, ptr %i.bx, align 8, !tbaa !52
  %i.cx = zext i16 %i.cw to i32
  %i.cy = icmp eq i32 %i.cp, %i.cx
  br i1 %i.cy, label %7, label %bb.am

7:                                                ; preds = %bb.al
  %or.cond3.inv = icmp samesign ugt i32 %.0149233, 1
  %.187 = select i1 %or.cond3.inv, i32 3, i32 1
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %7, %bb.ak, %bb.ai
  %.1150 = phi i32 [ %., %bb.ak ], [ 3, %bb.ai ], [ %.187, %7 ], [ 3, %bb.al ] ; 2 uses
  %i.cz = load ptr, ptr %i.m, align 8, !tbaa !36
  %i.da = load i64, ptr %5, align 8, !tbaa !55
  %i.db = load i8, ptr %i.bh, align 8, !tbaa !50, !range !10, !noundef !11
  %i.dc = shl nuw nsw i8 %i.db, 2
  %i.dd = zext nneg i8 %i.dc to i32
  %i.de = call i32 @H5AC_unprotect(ptr noundef %i.cz, ptr noundef nonnull @H5AC_BT2_INT, i64 noundef %i.da, ptr noundef nonnull %i.bm, i32 noundef %i.dd) #6
  %i.df = icmp slt i32 %i.de, 0
  br i1 %i.df, label %bb.an, label %bb.aw

bb.an:                                            ; preds = %bb.am
  %i.dg = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !15
  %i.dh = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !15
  %i.di = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2_find, i32 noundef 560, i64 noundef %i.dg, i64 noundef %i.dh, ptr noundef nonnull @.str.19) #6 ; 0 uses
  br label %.thread197

bb.ao:                                            ; preds = %bb.ah
  %.not181 = icmp eq ptr %3, null
  br i1 %.not181, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bm, i64 256
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !54
  %i.dl = load ptr, ptr %i.bl, align 8, !tbaa !53
  %i.dm = load i32, ptr %i.b, align 4, !tbaa !39
  %i.dn = zext i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dn
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !15
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dp
  %i.dr = call i32 %3(ptr noundef %i.dq, ptr noundef %4) #6
  %i.ds = icmp slt i32 %i.dr, 0
  br i1 %i.ds, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.dt = load ptr, ptr %i.m, align 8, !tbaa !36
  %i.du = load i64, ptr %5, align 8, !tbaa !55
  %i.dv = call i32 @H5AC_unprotect(ptr noundef %i.dt, ptr noundef nonnull @H5AC_BT2_INT, i64 noundef %i.du, ptr noundef nonnull %i.bm, i32 noundef 0) #6
  %i.dw = icmp slt i32 %i.dv, 0
  %i.dx = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !15 ; 2 uses
  br i1 %i.dw, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.dy = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !15
  %i.dz = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2_find, i32 noundef 575, i64 noundef %i.dx, i64 noundef %i.dy, ptr noundef nonnull @.str.19) #6 ; 0 uses
  br label %.thread197

bb.as:                                            ; preds = %bb.aq
  %i.ea = load i64, ptr @H5E_NOTFOUND_g, align 8, !tbaa !15
  %i.eb = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2_find, i32 noundef 578, i64 noundef %i.dx, i64 noundef %i.ea, ptr noundef nonnull @.str.16) #6 ; 0 uses
  br label %.thread197

bb.at:                                            ; preds = %bb.ap, %bb.ao
  %i.ec = load ptr, ptr %i.m, align 8, !tbaa !36
  %i.ed = load i64, ptr %5, align 8, !tbaa !55
  %i.ee = call i32 @H5AC_unprotect(ptr noundef %i.ec, ptr noundef nonnull @H5AC_BT2_INT, i64 noundef %i.ed, ptr noundef nonnull %i.bm, i32 noundef 0) #6
  %i.ef = icmp slt i32 %i.ee, 0
  br i1 %i.ef, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.eg = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !15
  %i.eh = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !15
  %i.ei = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2_find, i32 noundef 583, i64 noundef %i.eg, i64 noundef %i.eh, ptr noundef nonnull @.str.19) #6 ; 0 uses
  br label %.thread197

bb.av:                                            ; preds = %bb.at
  store i8 1, ptr %2, align 1, !tbaa !9
  br label %.thread197

.thread197:                                       ; preds = %bb.aa, %bb.ad, %bb.af, %bb.an, %bb.ar, %bb.as, %bb.au, %bb.av
  %.4158.ph = phi ptr [ null, %bb.av ], [ null, %bb.au ], [ null, %bb.as ], [ null, %bb.ar ], [ null, %bb.an ], [ null, %bb.af ], [ %.1155231, %bb.ad ], [ %.1155231, %bb.aa ]
  %.1148.ph = phi i32 [ 0, %bb.av ], [ -1, %bb.au ], [ -1, %bb.as ], [ -1, %bb.ar ], [ -1, %bb.an ], [ -1, %bb.af ], [ -1, %bb.ad ], [ -1, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.by

bb.aw:                                            ; preds = %bb.am
  %i.ej = load i8, ptr %i.bh, align 8, !tbaa !50, !range !10, !noundef !11
  %i.ek = trunc nuw i8 %i.ej to i1
  %spec.select188 = select i1 %i.ek, ptr %i.bm, ptr null ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !44
  %i.el = add i16 %.0152232, -1                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.not172 = icmp eq i16 %i.el, 0
  br i1 %.not172, label %._crit_edge, label %bb.z

._crit_edge:                                      ; preds = %bb.aw, %bb.y
  %.1155.lcssa = phi ptr [ %spec.select, %bb.y ], [ %spec.select188, %bb.aw ] ; 6 uses
  %.0149.lcssa = phi i32 [ 0, %bb.y ], [ %.1150, %bb.aw ] ; 3 uses
  %i.em = call ptr @H5B2__protect_leaf(ptr noundef nonnull %i.l, ptr noundef %.1155.lcssa, ptr noundef nonnull %5, i1 noundef zeroext false, i32 noundef 128) #6 ; 7 uses
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %._crit_edge
  %i.eo = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !15
  %i.ep = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !15
  %i.eq = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2_find, i32 noundef 599, i64 noundef %i.eo, i64 noundef %i.ep, ptr noundef nonnull @.str.20) #6 ; 0 uses
  br label %bb.by

bb.ay:                                            ; preds = %._crit_edge
  %.not173 = icmp eq ptr %.1155.lcssa, null
  %.not174 = icmp eq ptr %.1155.lcssa, %i.l
  %or.cond194 = or i1 %.not173, %.not174
  br i1 %or.cond194, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.er = call i32 @H5AC_unpin_entry(ptr noundef nonnull %.1155.lcssa) #6
  %i.es = icmp slt i32 %i.er, 0
  br i1 %i.es, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.et = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !15
  %i.eu = load i64, ptr @H5E_CANTUNPIN_g, align 8, !tbaa !15
  %i.ev = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2_find, i32 noundef 604, i64 noundef %i.et, i64 noundef %i.eu, ptr noundef nonnull @.str.18) #6 ; 0 uses
  br label %bb.by

bb.bb:                                            ; preds = %bb.az, %bb.ay
  %i.ew = getelementptr inbounds nuw i8, ptr %i.l, i64 424 ; 3 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !47
  %i.ey = getelementptr inbounds nuw i8, ptr %i.em, i64 264 ; 2 uses
  %i.ez = load i16, ptr %i.ey, align 8, !tbaa !58
  %i.fa = zext i16 %i.ez to i32
  %i.fb = getelementptr inbounds nuw i8, ptr %i.l, i64 360 ; 4 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !53
  %i.fd = getelementptr inbounds nuw i8, ptr %i.em, i64 256 ; 4 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !59
  %i.ff = call i32 @H5B2__locate_record(ptr noundef %i.ex, i32 noundef %i.fa, ptr noundef %i.fc, ptr noundef %i.fe, ptr noundef %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #6
  %i.fg = icmp slt i32 %i.ff, 0
  br i1 %i.fg, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.fh = load ptr, ptr %i.m, align 8, !tbaa !36
  %i.fi = load i64, ptr %5, align 8, !tbaa !55
  %i.fj = call i32 @H5AC_unprotect(ptr noundef %i.fh, ptr noundef nonnull @H5AC_BT2_LEAF, i64 noundef %i.fi, ptr noundef nonnull %i.em, i32 noundef 0) #6 ; 0 uses
  %i.fk = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !15
  %i.fl = load i64, ptr @H5E_CANTCOMPARE_g, align 8, !tbaa !15
  %i.fm = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2_find, i32 noundef 613, i64 noundef %i.fk, i64 noundef %i.fl, ptr noundef nonnull @.str.15) #6 ; 0 uses
  br label %.thread204

bb.bd:                                            ; preds = %bb.bb
  %i.fn = load i32, ptr %i.a, align 4, !tbaa !39
  %.not175 = icmp eq i32 %i.fn, 0
  br i1 %.not175, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fo = load ptr, ptr %i.m, align 8, !tbaa !36
  %i.fp = load i64, ptr %5, align 8, !tbaa !55
  %i.fq = call i32 @H5AC_unprotect(ptr noundef %i.fo, ptr noundef nonnull @H5AC_BT2_LEAF, i64 noundef %i.fp, ptr noundef nonnull %i.em, i32 noundef 0) #6
  %i.fr = icmp slt i32 %i.fq, 0
  br i1 %i.fr, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.fs = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !15
  %i.ft = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !15
  %i.fu = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2_find, i32 noundef 619, i64 noundef %i.fs, i64 noundef %i.ft, ptr noundef nonnull @.str.19) #6 ; 0 uses
  br label %.thread204

bb.bg:                                            ; preds = %bb.be
  store i8 0, ptr %2, align 1, !tbaa !9
  br label %.thread204

bb.bh:                                            ; preds = %bb.bd
  %.not176 = icmp eq ptr %3, null
  br i1 %.not176, label %bb.bm, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fv = load ptr, ptr %i.fd, align 8, !tbaa !59
  %i.fw = load ptr, ptr %i.fb, align 8, !tbaa !53
  %i.fx = load i32, ptr %i.b, align 4, !tbaa !39
  %i.fy = zext i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %i.fy
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !15
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.ga
  %i.gc = call i32 %3(ptr noundef %i.gb, ptr noundef %4) #6
  %i.gd = icmp slt i32 %i.gc, 0
  br i1 %i.gd, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  %i.ge = load ptr, ptr %i.m, align 8, !tbaa !36
  %i.gf = load i64, ptr %5, align 8, !tbaa !55
  %i.gg = call i32 @H5AC_unprotect(ptr noundef %i.ge, ptr noundef nonnull @H5AC_BT2_LEAF, i64 noundef %i.gf, ptr noundef nonnull %i.em, i32 noundef 0) #6
  %i.gh = icmp slt i32 %i.gg, 0
  %i.gi = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !15 ; 2 uses
  br i1 %i.gh, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.gj = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !15
  %i.gk = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2_find, i32 noundef 630, i64 noundef %i.gi, i64 noundef %i.gj, ptr noundef nonnull @.str.19) #6 ; 0 uses
  br label %.thread204

bb.bl:                                            ; preds = %bb.bj
  %i.gl = load i64, ptr @H5E_NOTFOUND_g, align 8, !tbaa !15
  %i.gm = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2_find, i32 noundef 633, i64 noundef %i.gi, i64 noundef %i.gl, ptr noundef nonnull @.str.16) #6 ; 0 uses
  br label %.thread204

bb.bm:                                            ; preds = %bb.bi, %bb.bh
  %.not177 = icmp eq i32 %.0149.lcssa, 3
  br i1 %.not177, label %bb.bv, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gn = load i32, ptr %i.b, align 4, !tbaa !39  ; 2 uses
  %i.go = icmp eq i32 %i.gn, 0
  %i.gp = and i32 %.0149.lcssa, -3
  %or.cond5 = icmp eq i32 %i.gp, 0
  %or.cond189 = select i1 %i.go, i1 %or.cond5, i1 false
  br i1 %or.cond189, label %bb.bo, label %bb.br

bb.bo:                                            ; preds = %bb.bn
  %i.gq = load ptr, ptr %i.r, align 8, !tbaa !46  ; 2 uses
  %i.gr = icmp eq ptr %i.gq, null
  %.pre = load ptr, ptr %i.ew, align 8, !tbaa !47
  %i.gs = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !60 ; 2 uses
  br i1 %i.gr, label %bb.bp, label %._crit_edge246

bb.bp:                                            ; preds = %bb.bo
  %i.gu = call noalias ptr @malloc(i64 noundef %i.gt) #7 ; 3 uses
  store ptr %i.gu, ptr %i.r, align 8, !tbaa !46
  %i.gv = icmp eq ptr %i.gu, null
  br i1 %i.gv, label %bb.bq, label %._crit_edge246

bb.bq:                                            ; preds = %bb.bp
  %i.gw = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !15
  %i.gx = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !15
  %i.gy = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2_find, i32 noundef 644, i64 noundef %i.gw, i64 noundef %i.gx, ptr noundef nonnull @.str.21) #6 ; 0 uses
  br label %.thread204

._crit_edge246:                                   ; preds = %bb.bo, %bb.bp
  %i.gz = phi ptr [ %i.gu, %bb.bp ], [ %i.gq, %bb.bo ]
  %i.ha = load ptr, ptr %i.fd, align 8, !tbaa !59
  %i.hb = load ptr, ptr %i.fb, align 8, !tbaa !53
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !15
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.hc
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gz, ptr align 1 %i.hd, i64 %i.gt, i1 false)
  %.pre248 = load i32, ptr %i.b, align 4, !tbaa !39
  br label %bb.br

bb.br:                                            ; preds = %._crit_edge246, %bb.bn
  %i.he = phi i32 [ %.pre248, %._crit_edge246 ], [ %i.gn, %bb.bn ] ; 2 uses
  %i.hf = load i16, ptr %i.ey, align 8, !tbaa !58
  %i.hg = zext i16 %i.hf to i32
  %i.hh = add nsw i32 %i.hg, -1
  %i.hi = icmp eq i32 %i.he, %i.hh
  %or.cond7 = icmp samesign ult i32 %.0149.lcssa, 2
  %or.cond190 = select i1 %i.hi, i1 %or.cond7, i1 false
  br i1 %or.cond190, label %bb.bs, label %bb.bv

bb.bs:                                            ; preds = %bb.br
  %i.hj = load ptr, ptr %i.al, align 8, !tbaa !49 ; 2 uses
  %i.hk = icmp eq ptr %i.hj, null
  %.pre249 = load ptr, ptr %i.ew, align 8, !tbaa !47
  %i.hl = getelementptr inbounds nuw i8, ptr %.pre249, i64 16
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !60 ; 2 uses
  br i1 %i.hk, label %bb.bt, label %._crit_edge250

bb.bt:                                            ; preds = %bb.bs
  %i.hn = call noalias ptr @malloc(i64 noundef %i.hm) #7 ; 3 uses
  store ptr %i.hn, ptr %i.al, align 8, !tbaa !49
  %i.ho = icmp eq ptr %i.hn, null
  br i1 %i.ho, label %bb.bu, label %._crit_edge250

bb.bu:                                            ; preds = %bb.bt
  %i.hp = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !15
  %i.hq = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !15
  %i.hr = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2_find, i32 noundef 653, i64 noundef %i.hp, i64 noundef %i.hq, ptr noundef nonnull @.str.22) #6 ; 0 uses
  br label %.thread204

._crit_edge250:                                   ; preds = %bb.bs, %bb.bt
  %i.hs = phi ptr [ %i.hn, %bb.bt ], [ %i.hj, %bb.bs ]
  %i.ht = load ptr, ptr %i.fd, align 8, !tbaa !59
  %i.hu = load ptr, ptr %i.fb, align 8, !tbaa !53
  %i.hv = zext i32 %i.he to i64
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %i.hv
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !15
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.hx
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hs, ptr align 1 %i.hy, i64 %i.hm, i1 false)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bm, %._crit_edge250, %bb.br
  %i.hz = load ptr, ptr %i.m, align 8, !tbaa !36
  %i.ia = load i64, ptr %5, align 8, !tbaa !55
  %i.ib = call i32 @H5AC_unprotect(ptr noundef %i.hz, ptr noundef nonnull @H5AC_BT2_LEAF, i64 noundef %i.ia, ptr noundef nonnull %i.em, i32 noundef 0) #6
  %i.ic = icmp slt i32 %i.ib, 0
  br i1 %i.ic, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.id = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !15
  %i.ie = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !15
  %i.if = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2_find, i32 noundef 662, i64 noundef %i.id, i64 noundef %i.ie, ptr noundef nonnull @.str.19) #6 ; 0 uses
  br label %.thread204

bb.bx:                                            ; preds = %bb.bv
  store i8 1, ptr %2, align 1, !tbaa !9
  br label %.thread204

bb.by:                                            ; preds = %.thread197, %bb.ax, %bb.ba
  %.7 = phi ptr [ %.4158.ph, %.thread197 ], [ %.1155.lcssa, %bb.ax ], [ %.1155.lcssa, %bb.ba ] ; 3 uses
  %.3 = phi i32 [ %.1148.ph, %.thread197 ], [ -1, %bb.ax ], [ -1, %bb.ba ] ; 2 uses
  %.not185 = icmp eq ptr %.7, null
  %.not186 = icmp eq ptr %.7, %i.l
  %or.cond192 = or i1 %.not185, %.not186
  br i1 %or.cond192, label %.thread204, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ig = call i32 @H5AC_unpin_entry(ptr noundef nonnull %.7) #6
  %i.ih = icmp slt i32 %i.ig, 0
  br i1 %i.ih, label %bb.ca, label %.thread204

bb.ca:                                            ; preds = %bb.bz
  %i.ii = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !15
  %i.ij = load i64, ptr @H5E_CANTUNPIN_g, align 8, !tbaa !15
  %i.ik = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2_find, i32 noundef 672, i64 noundef %i.ii, i64 noundef %i.ij, ptr noundef nonnull @.str.18) #6 ; 0 uses
  br label %.thread204

.thread204:                                       ; preds = %bb.bx, %bb.bw, %bb.bu, %bb.bq, %bb.bl, %bb.bk, %bb.bg, %bb.bf, %bb.bc, %bb.x, %bb.w, %bb.s, %bb.q, %bb.n, %bb.m, %bb.i, %bb.g, %bb.d, %bb.b, %bb.bz, %bb.ca, %bb.by
  %.4 = phi i32 [ -1, %bb.ca ], [ %.3, %bb.bz ], [ 0, %bb.b ], [ %.3, %bb.by ], [ 0, %bb.bx ], [ -1, %bb.bw ], [ -1, %bb.bu ], [ -1, %bb.bq ], [ -1, %bb.bl ], [ -1, %bb.bk ], [ 0, %bb.bg ], [ -1, %bb.bf ], [ -1, %bb.bc ], [ 0, %bb.x ], [ -1, %bb.w ], [ 0, %bb.s ], [ -1, %bb.q ], [ 0, %bb.n ], [ -1, %bb.m ], [ 0, %bb.i ], [ -1, %bb.g ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  ret i32 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @H5B2__protect_internal(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare i32 @H5AC_unpin_entry(ptr noundef) local_unnamed_addr #2

declare i32 @H5B2__locate_record(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5AC_unprotect(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @H5B2__protect_leaf(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5B2_index(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.H5B2_node_ptr_t, align 8    ; 13 uses
  %6 = alloca %struct.H5B2_node_ptr_t, align 8    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  %i.a = load i8, ptr @H5B2_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.b, label %.thread, !prof !12

.thread:                                          ; preds = %bb.a
  store i8 1, ptr @H5B2_init_g, align 1, !tbaa !9
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = xor i1 %i.d, true
  %i.g = select i1 %i.b, i1 true, i1 %i.f
  br i1 %i.g, label %bb.c, label %.thread135, !prof !42

bb.c:                                             ; preds = %.thread, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21
  %i.j = load ptr, ptr %0, align 8, !tbaa !20     ; 12 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 288 ; 5 uses
  store ptr %i.i, ptr %i.k, align 8, !tbaa !36
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !tbaa.struct !44
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.n = load i16, ptr %i.m, align 8, !tbaa !45
  %i.o = icmp eq i16 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !15
  %i.q = load i64, ptr @H5E_NOTFOUND_g, align 8, !tbaa !15
  %i.r = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2_index, i32 noundef 718, i64 noundef %i.p, i64 noundef %i.q, ptr noundef nonnull @.str.23) #6 ; 0 uses
  br label %.thread135

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !70   ; 2 uses
  %.not = icmp ult i64 %2, %i.t
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !15
  %i.v = load i64, ptr @H5E_NOTFOUND_g, align 8, !tbaa !15
  %i.w = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2_index, i32 noundef 722, i64 noundef %i.u, i64 noundef %i.v, ptr noundef nonnull @.str.24) #6 ; 0 uses
  br label %.thread135

bb.g:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 284
  %i.y = load i16, ptr %i.x, align 4, !tbaa !41   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 392 ; 5 uses
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !50, !range !10, !noundef !11
  %i.ab = trunc nuw i8 %i.aa to i1
  %spec.select = select i1 %i.ab, ptr %i.j, ptr null ; 2 uses
  %i.ac = icmp eq i32 %1, 1
  %.neg = xor i64 %2, -1
  %i.ad = add i64 %i.t, %.neg
  %.0107 = select i1 %i.ac, i64 %i.ad, i64 %2     ; 2 uses
  %.not115171 = icmp eq i16 %i.y, 0
  br i1 %.not115171, label %._crit_edge, label %.lr.ph175

.lr.ph175:                                        ; preds = %bb.g, %bb.ab
  %.099174 = phi i16 [ %i.db, %bb.ab ], [ %i.y, %bb.g ] ; 2 uses
  %.1102173 = phi ptr [ %.6, %bb.ab ], [ %spec.select, %bb.g ] ; 6 uses
  %.1108172 = phi i64 [ %.2109148216, %bb.ab ], [ %.0107, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.ae = call ptr @H5B2__protect_internal(ptr noundef %i.j, ptr noundef %.1102173, ptr noundef nonnull %5, i16 noundef zeroext %.099174, i1 noundef zeroext false, i32 noundef 128) #6 ; 10 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph175
  %i.ag = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !15
  %i.ah = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !15
  %i.ai = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2_index, i32 noundef 744, i64 noundef %i.ag, i64 noundef %i.ah, ptr noundef nonnull @.str.17) #6 ; 0 uses
  br label %.thread128

bb.i:                                             ; preds = %.lr.ph175
  %.not118 = icmp eq ptr %.1102173, null
  %.not119 = icmp eq ptr %.1102173, %i.j
  %or.cond126 = or i1 %.not118, %.not119
  br i1 %or.cond126, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = call i32 @H5AC_unpin_entry(ptr noundef nonnull %.1102173) #6
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.al = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !15
  %i.am = load i64, ptr @H5E_CANTUNPIN_g, align 8, !tbaa !15
  %i.an = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2_index, i32 noundef 749, i64 noundef %i.al, i64 noundef %i.am, ptr noundef nonnull @.str.18) #6 ; 0 uses
  br label %.thread128

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 272 ; 2 uses
  %i.ap = load i16, ptr %i.ao, align 8, !tbaa !52 ; 3 uses
  %i.aq = zext i16 %i.ap to i64
  %.not178 = icmp eq i16 %i.ap, 0
  br i1 %.not178, label %.loopexit, label %.lr.ph

end_hunk_0
begin_hunk_1_@H5B2_neighbor:bb.a
  %i.m = load i64, ptr %i.l, align 8, !tbaa !40
  %.not = icmp eq i64 %i.m, -1
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !15
  %i.o = load i64, ptr @H5E_NOTFOUND_g, align 8, !tbaa !15
  %i.p = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2_neighbor, i32 noundef 1087, i64 noundef %i.n, i64 noundef %i.o, ptr noundef nonnull @.str.23) #6 ; 0 uses
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 284
  %i.r = load i16, ptr %i.q, align 4, !tbaa !41   ; 2 uses
  %.not23 = icmp eq i16 %i.r, 0
  br i1 %.not23, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = tail call i32 @H5B2__neighbor_internal(ptr noundef nonnull %i.j, i16 noundef zeroext %i.r, ptr noundef nonnull %i.l, ptr noundef null, i32 noundef %1, ptr noundef nonnull %i.j, ptr noundef %2, ptr noundef %3, ptr noundef %4) #6
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.u = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !15
  %i.v = load i64, ptr @H5E_NOTFOUND_g, align 8, !tbaa !15
  %i.w = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2_neighbor, i32 noundef 1093, i64 noundef %i.u, i64 noundef %i.v, ptr noundef nonnull @.str.30) #6 ; 0 uses
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.x = tail call i32 @H5B2__neighbor_leaf(ptr noundef nonnull %i.j, ptr noundef nonnull %i.l, ptr noundef null, i32 noundef %1, ptr noundef nonnull %i.j, ptr noundef %2, ptr noundef %3, ptr noundef %4) #6
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !15
  %i.aa = load i64, ptr @H5E_NOTFOUND_g, align 8, !tbaa !15
  %i.ab = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2_neighbor, i32 noundef 1097, i64 noundef %i.z, i64 noundef %i.aa, ptr noundef nonnull @.str.31) #6 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.g, %bb.i, %bb.h, %bb.f, %bb.b
  %.0 = phi i32 [ -1, %bb.g ], [ 0, %bb.f ], [ -1, %bb.i ], [ 0, %bb.h ], [ -1, %bb.d ], [ 0, %bb.b ]
  ret i32 %.0
}

declare i32 @H5B2__neighbor_internal(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5B2__neighbor_leaf(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5B2_modify(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i1 noundef zeroext %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.H5B2_node_ptr_t, align 8    ; 15 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 11 uses
  %6 = alloca %struct.H5B2_node_ptr_t, align 8    ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.e = load i8, ptr @H5B2_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  %i.g = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.h = trunc nuw i8 %i.g to i1                  ; 2 uses
  %i.i = select i1 %i.f, i1 true, i1 %i.h
  br i1 %i.i, label %bb.b, label %.thread, !prof !12

.thread:                                          ; preds = %bb.a
  store i8 1, ptr @H5B2_init_g, align 1, !tbaa !9
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = xor i1 %i.h, true
  %i.k = select i1 %i.f, i1 true, i1 %i.j
  br i1 %i.k, label %bb.c, label %.thread172, !prof !13

bb.c:                                             ; preds = %.thread, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21
  %i.n = load ptr, ptr %0, align 8, !tbaa !20     ; 16 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 288 ; 9 uses
  store ptr %i.m, ptr %i.o, align 8, !tbaa !36
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !tbaa.struct !44
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.r = load i16, ptr %i.q, align 8, !tbaa !45
  %i.s = icmp eq i16 %i.r, 0
  br i1 %i.s, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %2, label %.thread172, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !15
  %i.u = load i64, ptr @H5E_NOTFOUND_g, align 8, !tbaa !15
  %i.v = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2_modify, i32 noundef 1153, i64 noundef %i.t, i64 noundef %i.u, ptr noundef nonnull @.str.23) #6 ; 0 uses
  br label %.thread172

bb.f:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 284
  %i.x = load i16, ptr %i.w, align 4, !tbaa !41   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 392 ; 3 uses
  %i.z = load i8, ptr %i.y, align 8, !tbaa !50, !range !10, !noundef !11
  %i.aa = trunc nuw i8 %i.z to i1
  %spec.select = select i1 %i.aa, ptr %i.n, ptr null ; 2 uses
  store i32 -1, ptr %i.a, align 4, !tbaa !39
  %.not198 = icmp eq i16 %i.x, 0
  br i1 %.not198, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 424
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 360 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.ac
  %.0129201 = phi i16 [ %i.x, %.lr.ph ], [ %i.df, %bb.ac ] ; 2 uses
  %.0131200 = phi i32 [ 0, %.lr.ph ], [ %.1132, %bb.ac ] ; 3 uses
  %.1136199 = phi ptr [ %spec.select, %.lr.ph ], [ %spec.select156, %bb.ac ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.ad = call ptr @H5B2__protect_internal(ptr noundef nonnull %i.n, ptr noundef %.1136199, ptr noundef nonnull %5, i16 noundef zeroext %.0129201, i1 noundef zeroext false, i32 noundef 0) #6 ; 10 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.af = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !15
  %i.ag = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !15
  %i.ah = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2_modify, i32 noundef 1174, i64 noundef %i.af, i64 noundef %i.ag, ptr noundef nonnull @.str.17) #6 ; 0 uses
  br label %.thread165

bb.i:                                             ; preds = %bb.g
  %.not149 = icmp eq ptr %.1136199, null
  %.not150 = icmp eq ptr %.1136199, %i.n
  %or.cond161 = or i1 %.not149, %.not150
  br i1 %or.cond161, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = call i32 @H5AC_unpin_entry(ptr noundef nonnull %.1136199) #6
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ak = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !15
  %i.al = load i64, ptr @H5E_CANTUNPIN_g, align 8, !tbaa !15
  %i.am = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2_modify, i32 noundef 1179, i64 noundef %i.ak, i64 noundef %i.al, ptr noundef nonnull @.str.18) #6 ; 0 uses
  br label %.thread165

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.an = load ptr, ptr %i.ab, align 8, !tbaa !47
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 272 ; 2 uses
  %i.ap = load i16, ptr %i.ao, align 8, !tbaa !52
  %i.aq = zext i16 %i.ap to i32
  %i.ar = load ptr, ptr %i.ac, align 8, !tbaa !53
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 256
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !54
  %i.au = call i32 @H5B2__locate_record(ptr noundef %i.an, i32 noundef %i.aq, ptr noundef %i.ar, ptr noundef %i.at, ptr noundef %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #6
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aw = load ptr, ptr %i.o, align 8, !tbaa !36
  %i.ax = load i64, ptr %5, align 8, !tbaa !55
  %i.ay = call i32 @H5AC_unprotect(ptr noundef %i.aw, ptr noundef nonnull @H5AC_BT2_INT, i64 noundef %i.ax, ptr noundef nonnull %i.ad, i32 noundef 0) #6 ; 0 uses
  %i.az = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !15
  %i.ba = load i64, ptr @H5E_CANTCOMPARE_g, align 8, !tbaa !15
  %i.bb = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2_modify, i32 noundef 1188, i64 noundef %i.az, i64 noundef %i.ba, ptr noundef nonnull @.str.15) #6 ; 0 uses
  br label %.thread165

bb.n:                                             ; preds = %bb.l
  %i.bc = load i32, ptr %i.a, align 4, !tbaa !39  ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %.thread163, label %bb.o

.thread163:                                       ; preds = %bb.n
  %i.be = load i32, ptr %i.b, align 4, !tbaa !39
  %i.bf = add i32 %i.be, 1                        ; 2 uses
  store i32 %i.bf, ptr %i.b, align 4, !tbaa !39
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %.not151 = icmp eq i32 %i.bc, 0
  br i1 %.not151, label %bb.v, label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.o
  %.pr = load i32, ptr %i.b, align 4, !tbaa !39
  br label %bb.p

bb.p:                                             ; preds = %thread-pre-split, %.thread163
  %i.bg = phi i32 [ %.pr, %thread-pre-split ], [ %i.bf, %.thread163 ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ad, i64 264
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !56
  %i.bj = zext i32 %i.bg to i64
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bi, i64 %i.bj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 24, i1 false), !tbaa.struct !44
  %.not152 = icmp eq i32 %.0131200, 3
  br i1 %.not152, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bl = icmp eq i32 %i.bg, 0
  br i1 %i.bl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bm = and i32 %.0131200, -3
  %or.cond = icmp eq i32 %i.bm, 0
  %. = select i1 %or.cond, i32 2, i32 3
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bn = load i16, ptr %i.ao, align 8, !tbaa !52
  %i.bo = zext i16 %i.bn to i32
  %i.bp = icmp eq i32 %i.bg, %i.bo
  br i1 %i.bp, label %7, label %bb.t

7:                                                ; preds = %bb.s
  %or.cond3.inv = icmp samesign ugt i32 %.0131200, 1
  %.155 = select i1 %or.cond3.inv, i32 3, i32 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %7, %bb.r, %bb.p
  %.1132 = phi i32 [ %., %bb.r ], [ 3, %bb.p ], [ %.155, %7 ], [ 3, %bb.s ] ; 2 uses
  %i.bq = load ptr, ptr %i.o, align 8, !tbaa !36
  %i.br = load i64, ptr %5, align 8, !tbaa !55
  %i.bs = load i8, ptr %i.y, align 8, !tbaa !50, !range !10, !noundef !11
  %i.bt = shl nuw nsw i8 %i.bs, 2
  %i.bu = zext nneg i8 %i.bt to i32
  %i.bv = call i32 @H5AC_unprotect(ptr noundef %i.bq, ptr noundef nonnull @H5AC_BT2_INT, i64 noundef %i.br, ptr noundef nonnull %i.ad, i32 noundef %i.bu) #6
  %i.bw = icmp slt i32 %i.bv, 0
  br i1 %i.bw, label %bb.u, label %bb.ac

bb.u:                                             ; preds = %bb.t
  %i.bx = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !15
  %i.by = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !15
  %i.bz = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2_modify, i32 noundef 1219, i64 noundef %i.bx, i64 noundef %i.by, ptr noundef nonnull @.str.19) #6 ; 0 uses
  br label %.thread165

bb.v:                                             ; preds = %bb.o
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ad, i64 256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !54
  %i.cc = load ptr, ptr %i.ac, align 8, !tbaa !53
  %i.cd = load i32, ptr %i.b, align 4, !tbaa !39
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !15
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cg
  %i.ci = call i32 %3(ptr noundef %i.ch, ptr noundef %4, ptr noundef nonnull %i.c) #6
  %i.cj = icmp slt i32 %i.ci, 0
  br i1 %i.cj, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.ck = load ptr, ptr %i.o, align 8, !tbaa !36
  %i.cl = load i64, ptr %5, align 8, !tbaa !55
  %i.cm = call i32 @H5AC_unprotect(ptr noundef %i.ck, ptr noundef nonnull @H5AC_BT2_INT, i64 noundef %i.cl, ptr noundef nonnull %i.ad, i32 noundef 0) #6
  %i.cn = icmp slt i32 %i.cm, 0
  %i.co = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !15 ; 2 uses
  br i1 %i.cn, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cp = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !15
  %i.cq = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2_modify, i32 noundef 1239, i64 noundef %i.co, i64 noundef %i.cp, ptr noundef nonnull @.str.19) #6 ; 0 uses
  br label %bb.ab

bb.y:                                             ; preds = %bb.w
  %i.cr = load i64, ptr @H5E_CANTMODIFY_g, align 8, !tbaa !15
  %i.cs = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2_modify, i32 noundef 1242, i64 noundef %i.co, i64 noundef %i.cr, ptr noundef nonnull @.str.32) #6 ; 0 uses
  br label %bb.ab

bb.z:                                             ; preds = %bb.v
  %i.ct = load i8, ptr %i.c, align 1, !tbaa !9, !range !10, !noundef !11
  %i.cu = shl nuw nsw i8 %i.ct, 1
  %i.cv = zext nneg i8 %i.cu to i32
  %i.cw = load ptr, ptr %i.o, align 8, !tbaa !36
  %i.cx = load i64, ptr %5, align 8, !tbaa !55
  %i.cy = call i32 @H5AC_unprotect(ptr noundef %i.cw, ptr noundef nonnull @H5AC_BT2_INT, i64 noundef %i.cx, ptr noundef nonnull %i.ad, i32 noundef %i.cv) #6
  %i.cz = icmp slt i32 %i.cy, 0
  br i1 %i.cz, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.da = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !15
  %i.db = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !15
  %i.dc = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2_modify, i32 noundef 1250, i64 noundef %i.da, i64 noundef %i.db, ptr noundef nonnull @.str.19) #6 ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa, %bb.y, %bb.x
  %.1127 = phi i32 [ -1, %bb.x ], [ -1, %bb.y ], [ -1, %bb.aa ], [ 0, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  br label %.thread165

.thread165:                                       ; preds = %bb.h, %bb.k, %bb.m, %bb.u, %bb.ab
  %.5140.ph = phi ptr [ null, %bb.ab ], [ null, %bb.u ], [ null, %bb.m ], [ %.1136199, %bb.k ], [ %.1136199, %bb.h ]
  %.3.ph = phi i32 [ %.1127, %bb.ab ], [ -1, %bb.u ], [ -1, %bb.m ], [ -1, %bb.k ], [ -1, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.be

bb.ac:                                            ; preds = %bb.t
  %i.dd = load i8, ptr %i.y, align 8, !tbaa !50, !range !10, !noundef !11
  %i.de = trunc nuw i8 %i.dd to i1
  %spec.select156 = select i1 %i.de, ptr %i.ad, ptr null ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !44
  %i.df = add i16 %.0129201, -1                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.not = icmp eq i16 %i.df, 0
  br i1 %.not, label %._crit_edge, label %bb.g

._crit_edge:                                      ; preds = %bb.ac, %bb.f
  %.1136.lcssa = phi ptr [ %spec.select, %bb.f ], [ %spec.select156, %bb.ac ] ; 6 uses
  %.0131.lcssa = phi i32 [ 0, %bb.f ], [ %.1132, %bb.ac ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i8 0, ptr %i.d, align 1, !tbaa !9
  %i.dg = call ptr @H5B2__protect_leaf(ptr noundef nonnull %i.n, ptr noundef %.1136.lcssa, ptr noundef nonnull %5, i1 noundef zeroext false, i32 noundef 0) #6 ; 7 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %._crit_edge
  %i.di = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !15
  %i.dj = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !15
  %i.dk = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2_modify, i32 noundef 1266, i64 noundef %i.di, i64 noundef %i.dj, ptr noundef nonnull @.str.20) #6 ; 0 uses
  br label %bb.bd

bb.ae:                                            ; preds = %._crit_edge
  %.not145 = icmp eq ptr %.1136.lcssa, null
  %.not146 = icmp eq ptr %.1136.lcssa, %i.n
  %or.cond162 = or i1 %.not145, %.not146
  br i1 %or.cond162, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dl = call i32 @H5AC_unpin_entry(ptr noundef nonnull %.1136.lcssa) #6
  %i.dm = icmp slt i32 %i.dl, 0
  br i1 %i.dm, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dn = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !15
  %i.do = load i64, ptr @H5E_CANTUNPIN_g, align 8, !tbaa !15
  %i.dp = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2_modify, i32 noundef 1271, i64 noundef %i.dn, i64 noundef %i.do, ptr noundef nonnull @.str.18) #6 ; 0 uses
  br label %bb.bd

bb.ah:                                            ; preds = %bb.af, %bb.ae
  %i.dq = getelementptr inbounds nuw i8, ptr %i.n, i64 424 ; 3 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !47
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dg, i64 264 ; 2 uses
  %i.dt = load i16, ptr %i.ds, align 8, !tbaa !58
  %i.du = zext i16 %i.dt to i32
  %i.dv = getelementptr inbounds nuw i8, ptr %i.n, i64 360 ; 4 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !53
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dg, i64 256 ; 4 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !59
  %i.dz = call i32 @H5B2__locate_record(ptr noundef %i.dr, i32 noundef %i.du, ptr noundef %i.dw, ptr noundef %i.dy, ptr noundef %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #6
  %i.ea = icmp slt i32 %i.dz, 0
  br i1 %i.ea, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.eb = load ptr, ptr %i.o, align 8, !tbaa !36
  %i.ec = load i64, ptr %5, align 8, !tbaa !55
  %i.ed = call i32 @H5AC_unprotect(ptr noundef %i.eb, ptr noundef nonnull @H5AC_BT2_LEAF, i64 noundef %i.ec, ptr noundef nonnull %i.dg, i32 noundef 0) #6 ; 0 uses
  %i.ee = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !15
  %i.ef = load i64, ptr @H5E_CANTCOMPARE_g, align 8, !tbaa !15
  %i.eg = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2_modify, i32 noundef 1280, i64 noundef %i.ee, i64 noundef %i.ef, ptr noundef nonnull @.str.15) #6 ; 0 uses
  br label %bb.bd

bb.aj:                                            ; preds = %bb.ah
  %i.eh = load i32, ptr %i.a, align 4, !tbaa !39
  %.not147 = icmp eq i32 %i.eh, 0
  br i1 %.not147, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ei = load ptr, ptr %i.o, align 8, !tbaa !36
  %i.ej = load i64, ptr %5, align 8, !tbaa !55
  %i.ek = call i32 @H5AC_unprotect(ptr noundef %i.ei, ptr noundef nonnull @H5AC_BT2_LEAF, i64 noundef %i.ej, ptr noundef nonnull %i.dg, i32 noundef 0) #6
  %i.el = icmp slt i32 %i.ek, 0
  br i1 %i.el, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.em = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !15
  %i.en = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !15
  %i.eo = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2_modify, i32 noundef 1286, i64 noundef %i.em, i64 noundef %i.en, ptr noundef nonnull @.str.19) #6 ; 0 uses
  br label %bb.bd

bb.am:                                            ; preds = %bb.ak
  br i1 %2, label %bb.bd, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ep = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !15
  %i.eq = load i64, ptr @H5E_NOTFOUND_g, align 8, !tbaa !15
  %i.er = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2_modify, i32 noundef 1292, i64 noundef %i.ep, i64 noundef %i.eq, ptr noundef nonnull @.str.33) #6 ; 0 uses
  br label %bb.bd

bb.ao:                                            ; preds = %bb.aj
  %i.es = load ptr, ptr %i.dx, align 8, !tbaa !59
  %i.et = load ptr, ptr %i.dv, align 8, !tbaa !53
  %i.eu = load i32, ptr %i.b, align 4, !tbaa !39
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.ev
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !15
  %i.ey = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.ex
  %i.ez = call i32 %3(ptr noundef %i.ey, ptr noundef %4, ptr noundef nonnull %i.d) #6
  %i.fa = icmp slt i32 %i.ez, 0
  br i1 %i.fa, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.fb = load ptr, ptr %i.o, align 8, !tbaa !36
  %i.fc = load i64, ptr %5, align 8, !tbaa !55
  %i.fd = call i32 @H5AC_unprotect(ptr noundef %i.fb, ptr noundef nonnull @H5AC_BT2_LEAF, i64 noundef %i.fc, ptr noundef nonnull %i.dg, i32 noundef 0) #6
  %i.fe = icmp slt i32 %i.fd, 0
  %i.ff = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !15 ; 2 uses
  br i1 %i.fe, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.fg = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !15
  %i.fh = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2_modify, i32 noundef 1302, i64 noundef %i.ff, i64 noundef %i.fg, ptr noundef nonnull @.str.19) #6 ; 0 uses
  br label %bb.bd

bb.ar:                                            ; preds = %bb.ap
  %i.fi = load i64, ptr @H5E_CANTMODIFY_g, align 8, !tbaa !15
  %i.fj = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2_modify, i32 noundef 1305, i64 noundef %i.ff, i64 noundef %i.fi, ptr noundef nonnull @.str.32) #6 ; 0 uses
  br label %bb.bd

bb.as:                                            ; preds = %bb.ao
  %.not148 = icmp eq i32 %.0131.lcssa, 3
  br i1 %.not148, label %bb.bb, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fk = load i32, ptr %i.b, align 4, !tbaa !39  ; 2 uses
  %i.fl = icmp eq i32 %i.fk, 0
  %i.fm = and i32 %.0131.lcssa, -3
  %or.cond5 = icmp eq i32 %i.fm, 0
  %or.cond157 = select i1 %i.fl, i1 %or.cond5, i1 false
  br i1 %or.cond157, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.fn = getelementptr inbounds nuw i8, ptr %i.n, i64 376 ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !46 ; 2 uses
  %i.fp = icmp eq ptr %i.fo, null
  %.pre = load ptr, ptr %i.dq, align 8, !tbaa !47
  %i.fq = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !60 ; 2 uses
  br i1 %i.fp, label %bb.av, label %._crit_edge214

bb.av:                                            ; preds = %bb.au
  %i.fs = call noalias ptr @malloc(i64 noundef %i.fr) #7 ; 3 uses
  store ptr %i.fs, ptr %i.fn, align 8, !tbaa !46
  %i.ft = icmp eq ptr %i.fs, null
  br i1 %i.ft, label %bb.aw, label %._crit_edge214

bb.aw:                                            ; preds = %bb.av
  %i.fu = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !15
  %i.fv = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !15
  %i.fw = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2_modify, i32 noundef 1316, i64 noundef %i.fu, i64 noundef %i.fv, ptr noundef nonnull @.str.21) #6 ; 0 uses
  br label %bb.bd

._crit_edge214:                                   ; preds = %bb.au, %bb.av
  %i.fx = phi ptr [ %i.fs, %bb.av ], [ %i.fo, %bb.au ]
  %i.fy = load ptr, ptr %i.dx, align 8, !tbaa !59
  %i.fz = load ptr, ptr %i.dv, align 8, !tbaa !53
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !15
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.ga
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fx, ptr align 1 %i.gb, i64 %i.fr, i1 false)
  %.pre216 = load i32, ptr %i.b, align 4, !tbaa !39
  br label %bb.ax

bb.ax:                                            ; preds = %._crit_edge214, %bb.at
  %i.gc = phi i32 [ %.pre216, %._crit_edge214 ], [ %i.fk, %bb.at ] ; 2 uses
  %i.gd = load i16, ptr %i.ds, align 8, !tbaa !58
  %i.ge = zext i16 %i.gd to i32
  %i.gf = add nsw i32 %i.ge, -1
  %i.gg = icmp eq i32 %i.gc, %i.gf
  %or.cond7 = icmp samesign ult i32 %.0131.lcssa, 2
  %or.cond158 = select i1 %i.gg, i1 %or.cond7, i1 false
  br i1 %or.cond158, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  %i.gh = getelementptr inbounds nuw i8, ptr %i.n, i64 384 ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !49 ; 2 uses
  %i.gj = icmp eq ptr %i.gi, null
  %.pre217 = load ptr, ptr %i.dq, align 8, !tbaa !47
  %i.gk = getelementptr inbounds nuw i8, ptr %.pre217, i64 16
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !60 ; 2 uses
  br i1 %i.gj, label %bb.az, label %._crit_edge218

bb.az:                                            ; preds = %bb.ay
  %i.gm = call noalias ptr @malloc(i64 noundef %i.gl) #7 ; 3 uses
  store ptr %i.gm, ptr %i.gh, align 8, !tbaa !49
  %i.gn = icmp eq ptr %i.gm, null
  br i1 %i.gn, label %bb.ba, label %._crit_edge218

bb.ba:                                            ; preds = %bb.az
  %i.go = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !15
  %i.gp = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !15
  %i.gq = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2_modify, i32 noundef 1325, i64 noundef %i.go, i64 noundef %i.gp, ptr noundef nonnull @.str.22) #6 ; 0 uses
  br label %bb.bd

._crit_edge218:                                   ; preds = %bb.ay, %bb.az
  %i.gr = phi ptr [ %i.gm, %bb.az ], [ %i.gi, %bb.ay ]
  %i.gs = load ptr, ptr %i.dx, align 8, !tbaa !59
  %i.gt = load ptr, ptr %i.dv, align 8, !tbaa !53
  %i.gu = zext i32 %i.gc to i64
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.gu
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !15
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.gw
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gr, ptr align 1 %i.gx, i64 %i.gl, i1 false)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.as, %._crit_edge218, %bb.ax
  %i.gy = load i8, ptr %i.d, align 1, !tbaa !9, !range !10, !noundef !11
  %i.gz = shl nuw nsw i8 %i.gy, 1
  %i.ha = zext nneg i8 %i.gz to i32
  %i.hb = load ptr, ptr %i.o, align 8, !tbaa !36
  %i.hc = load i64, ptr %5, align 8, !tbaa !55
  %i.hd = call i32 @H5AC_unprotect(ptr noundef %i.hb, ptr noundef nonnull @H5AC_BT2_LEAF, i64 noundef %i.hc, ptr noundef nonnull %i.dg, i32 noundef %i.ha) #6
  %i.he = icmp slt i32 %i.hd, 0
  br i1 %i.he, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.hf = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !15
  %i.hg = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !15
  %i.hh = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2_modify, i32 noundef 1337, i64 noundef %i.hf, i64 noundef %i.hg, ptr noundef nonnull @.str.19) #6 ; 0 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bb, %bb.am, %bb.bc, %bb.ba, %bb.aw, %bb.ar, %bb.aq, %bb.an, %bb.al, %bb.ai, %bb.ag, %bb.ad
  %.7 = phi ptr [ %.1136.lcssa, %bb.ad ], [ %.1136.lcssa, %bb.ag ], [ null, %bb.ai ], [ null, %bb.al ], [ null, %bb.am ], [ null, %bb.an ], [ null, %bb.aq ], [ null, %bb.ar ], [ null, %bb.aw ], [ null, %bb.ba ], [ null, %bb.bc ], [ null, %bb.bb ]
  %.4 = phi i32 [ -1, %bb.ad ], [ -1, %bb.ag ], [ -1, %bb.ai ], [ -1, %bb.al ], [ 0, %bb.am ], [ -1, %bb.an ], [ -1, %bb.aq ], [ -1, %bb.ar ], [ -1, %bb.aw ], [ -1, %bb.ba ], [ -1, %bb.bc ], [ 0, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  br label %bb.be

bb.be:                                            ; preds = %.thread165, %bb.bd
  %.8 = phi ptr [ %.5140.ph, %.thread165 ], [ %.7, %bb.bd ] ; 3 uses
  %.5 = phi i32 [ %.3.ph, %.thread165 ], [ %.4, %bb.bd ] ; 2 uses
  %.not153 = icmp eq ptr %.8, null
  %.not154 = icmp eq ptr %.8, %i.n
  %or.cond160 = or i1 %.not153, %.not154
  br i1 %or.cond160, label %.thread172, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hi = call i32 @H5AC_unpin_entry(ptr noundef nonnull %.8) #6
  %i.hj = icmp slt i32 %i.hi, 0
  br i1 %i.hj, label %bb.bg, label %.thread172

bb.bg:                                            ; preds = %bb.bf
  %i.hk = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !15
  %i.hl = load i64, ptr @H5E_CANTUNPIN_g, align 8, !tbaa !15
  %i.hm = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2_modify, i32 noundef 1344, i64 noundef %i.hk, i64 noundef %i.hl, ptr noundef nonnull @.str.18) #6 ; 0 uses
  br label %.thread172

.thread172:                                       ; preds = %bb.e, %bb.d, %bb.b, %bb.bf, %bb.bg, %bb.be
  %.6 = phi i32 [ -1, %bb.bg ], [ %.5, %bb.bf ], [ 0, %bb.b ], [ %.5, %bb.be ], [ -1, %bb.e ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  ret i32 %.6
}

declare i64 @H5B2__hdr_fuse_decr(ptr noundef) local_unnamed_addr #2

declare i32 @H5B2__hdr_decr(ptr noundef) local_unnamed_addr #2

declare i32 @H5B2__hdr_delete(ptr noundef) local_unnamed_addr #2

declare ptr @H5FL_reg_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5B2_delete(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5B2_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.b, label %.thread, !prof !12

.thread:                                          ; preds = %bb.a
  store i8 1, ptr @H5B2_init_g, align 1, !tbaa !9
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = xor i1 %i.d, true
  %i.g = select i1 %i.b, i1 true, i1 %i.f
  br i1 %i.g, label %bb.c, label %.thread21, !prof !13

bb.c:                                             ; preds = %.thread, %bb.b
  %i.h = tail call ptr @H5B2__hdr_protect(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef 0) #6 ; 8 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !15
  %i.k = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !15
  %i.l = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2_delete, i32 noundef 1481, i64 noundef %i.j, i64 noundef %i.k, ptr noundef nonnull @.str.3) #6 ; 0 uses
  br label %.thread21

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 336
  store ptr %3, ptr %i.m, align 8, !tbaa !72
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 344
  store ptr %4, ptr %i.n, align 8, !tbaa !73
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 320
  %i.p = load i64, ptr %i.o, align 8, !tbaa !74
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 328
  store i8 1, ptr %i.q, align 8, !tbaa !37
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 288
  store ptr %0, ptr %i.r, align 8, !tbaa !36
  %i.s = tail call i32 @H5B2__hdr_delete(ptr noundef nonnull %i.h) #6
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.h, label %.thread21

bb.h:                                             ; preds = %bb.g
  %i.u = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !15
  %i.v = load i64, ptr @H5E_CANTDELETE_g, align 8, !tbaa !15
  %i.w = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2_delete, i32 noundef 1496, i64 noundef %i.u, i64 noundef %i.v, ptr noundef nonnull @.str.35) #6 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.0 = phi i32 [ -1, %bb.h ], [ 0, %bb.f ]
  %i.x = tail call i32 @H5B2__hdr_unprotect(ptr noundef nonnull %i.h, i32 noundef 0) #6
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %bb.j, label %.thread21

bb.j:                                             ; preds = %bb.i
  %i.z = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !15
  %i.aa = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !15
  %i.ab = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2_delete, i32 noundef 1503, i64 noundef %i.z, i64 noundef %i.aa, ptr noundef nonnull @.str.6) #6 ; 0 uses
  br label %.thread21

.thread21:                                        ; preds = %bb.g, %bb.d, %bb.i, %bb.j, %bb.b
  %.1 = phi i32 [ -1, %bb.j ], [ %.0, %bb.i ], [ 0, %bb.b ], [ 0, %bb.g ], [ -1, %bb.d ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5B2_depend(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20     ; 3 uses
  %i.b = load i8, ptr @H5B2_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  %i.f = select i1 %i.c, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.thread, !prof !12

.thread:                                          ; preds = %bb.a
  store i8 1, ptr @H5B2_init_g, align 1, !tbaa !9
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = xor i1 %i.e, true
  %i.h = select i1 %i.c, i1 true, i1 %i.g
  br i1 %i.h, label %bb.c, label %bb.g, !prof !13

bb.c:                                             ; preds = %.thread, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 408 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !75
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  store ptr %i.m, ptr %i.n, align 8, !tbaa !36
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !76
end_hunk_1
