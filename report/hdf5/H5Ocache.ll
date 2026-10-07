Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Ocache?download=true
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@H5O__chunk_deserialize:bb.a
bb.d:                                             ; preds = %bb.c
  %i.r = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !14
  %i.s = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !14
  %i.t = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5O__chunk_deserialize, i32 noundef 1196, i64 noundef %i.r, i64 noundef %i.s, ptr noundef nonnull @.str.6) #7 ; 0 uses
  br label %.thread511

bb.e:                                             ; preds = %._crit_edge599, %.thread
  %i.u = phi ptr [ %i.p, %.thread ], [ %.pre600, %._crit_edge599 ] ; 2 uses
  %i.v = phi i64 [ %.pre, %.thread ], [ %i.i, %._crit_edge599 ] ; 3 uses
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.h, align 8, !tbaa !66
  %i.x = trunc i64 %i.v to i32                    ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 3 uses
  %i.z = and i64 %i.v, 4294967295                 ; 4 uses
  %i.aa = getelementptr inbounds nuw [40 x i8], ptr %i.u, i64 %i.z ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 0, ptr %i.ab, align 8, !tbaa !70
  store i64 %1, ptr %i.aa, align 8, !tbaa !94
  %i.ac = icmp eq i32 %i.x, 0                     ; 2 uses
  br i1 %i.ac, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !35
  %i.af = icmp eq i8 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 289
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !36
  %i.ai = zext i8 %i.ah to i32                    ; 3 uses
  %i.aj = lshr i32 %i.ai, 1
  %i.ak = and i32 %i.aj, 16
  %i.al = lshr i32 %i.ai, 2
  %i.am = and i32 %i.al, 4
  %i.an = and i32 %i.ai, 3
  %i.ao = shl nuw nsw i32 1, %i.an
  %i.ap = or disjoint i32 %i.ak, %i.am
  %i.aq = or disjoint i32 %i.ap, 10
  %i.ar = add nuw nsw i32 %i.aq, %i.ao
  %i.as = zext nneg i32 %i.ar to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.at = phi i64 [ %i.as, %bb.g ], [ 16, %bb.f ]
  %i.au = add i64 %i.at, %2
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %i.au, ptr %i.av, align 8, !tbaa !48
  %.phi.trans.insert601 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.pre602 = load i64, ptr %.phi.trans.insert601, align 8, !tbaa !48
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 %2, ptr %i.aw, align 8, !tbaa !48
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ax = phi i64 [ %2, %bb.i ], [ %.pre602, %bb.h ]
  %i.ay = tail call noalias ptr @H5FL_blk_malloc(ptr noundef nonnull @H5_chunk_image_blk_free_list, i64 noundef %i.ax) #7 ; 3 uses
  %i.az = load ptr, ptr %i.y, align 8, !tbaa !44
  %i.ba = getelementptr inbounds nuw [40 x i8], ptr %i.az, i64 %i.z ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  store ptr %i.ay, ptr %i.bb, align 8, !tbaa !49
  %i.bc = icmp eq ptr %i.ay, null
  br i1 %i.bc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bd = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !14
  %i.be = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !14
  %i.bf = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5O__chunk_deserialize, i32 noundef 1211, i64 noundef %i.bd, i64 noundef %i.be, ptr noundef nonnull @.str.6) #7 ; 0 uses
  br label %.thread511

bb.l:                                             ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  store ptr null, ptr %i.bg, align 8, !tbaa !95
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !48 ; 2 uses
  %i.bj = icmp ult i64 %4, %i.bi
  br i1 %i.bj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bk = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !14
  %i.bl = load i64, ptr @H5E_CANTCOPY_g, align 8, !tbaa !14
  %i.bm = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5O__chunk_deserialize, i32 noundef 1216, i64 noundef %i.bk, i64 noundef %i.bl, ptr noundef nonnull @.str.20) #7 ; 0 uses
  br label %.thread511

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ay, ptr align 1 %3, i64 %i.bi, i1 false)
  %i.bn = load ptr, ptr %i.bb, align 8, !tbaa !49 ; 7 uses
  %i.bo = load i64, ptr %i.bh, align 8, !tbaa !48 ; 4 uses
  %i.bp = getelementptr i8, ptr %i.bn, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.bp, i64 -1     ; 10 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !35  ; 4 uses
  br i1 %i.ac, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.bt = icmp eq i8 %i.bs, 1
  br i1 %i.bt, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 289
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !36
  %i.bw = zext i8 %i.bv to i32                    ; 3 uses
  %i.bx = lshr i32 %i.bw, 1
  %i.by = and i32 %i.bx, 16
  %i.bz = lshr i32 %i.bw, 2
  %i.ca = and i32 %i.bz, 4
  %i.cb = and i32 %i.bw, 3
  %i.cc = shl nuw nsw i32 1, %i.cb
  %i.cd = or disjoint i32 %i.by, %i.ca
  %i.ce = or disjoint i32 %i.cd, 10
  %i.cf = add nuw nsw i32 %i.ce, %i.cc
  %i.cg = add nsw i32 %i.cf, -4
  %i.ch = zext nneg i32 %i.cg to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.ci = phi i64 [ %i.ch, %bb.p ], [ 16, %bb.o ] ; 2 uses
  %i.cj = icmp ugt ptr %i.bn, %i.bq
  %i.ck = icmp ult i64 %i.bo, %i.ci
  %or.cond = select i1 %i.cj, i1 true, i1 %i.ck
  br i1 %or.cond, label %bb.r, label %.thread465

.thread465:                                       ; preds = %bb.q
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.ci
  br label %bb.y

bb.r:                                             ; preds = %bb.q
  %i.cm = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !14
  %i.cn = load i64, ptr @H5E_OVERFLOW_g, align 8, !tbaa !14
  %i.co = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5O__chunk_deserialize, i32 noundef 1228, i64 noundef %i.cm, i64 noundef %i.cn, ptr noundef nonnull @.str.7) #7 ; 0 uses
  br label %.thread511

bb.s:                                             ; preds = %bb.n
  %i.cp = icmp ugt i8 %i.bs, 1
  br i1 %i.cp, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  %or.cond445 = icmp slt i64 %i.bo, 4
  br i1 %or.cond445, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cq = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !14
  %i.cr = load i64, ptr @H5E_OVERFLOW_g, align 8, !tbaa !14
  %i.cs = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5O__chunk_deserialize, i32 noundef 1236, i64 noundef %i.cq, i64 noundef %i.cr, ptr noundef nonnull @.str.7) #7 ; 0 uses
  br label %.thread511

bb.v:                                             ; preds = %bb.t
  %i.ct = load i32, ptr %i.bn, align 1
  %i.cu = icmp ne i32 %i.ct, 1263027023
  %i.cv = zext i1 %i.cu to i32
  %.not411 = icmp eq i32 %i.cv, 0
  br i1 %.not411, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cw = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !14
  %i.cx = load i64, ptr @H5E_CANTLOAD_g, align 8, !tbaa !14
  %i.cy = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5O__chunk_deserialize, i32 noundef 1238, i64 noundef %i.cw, i64 noundef %i.cx, ptr noundef nonnull @.str.22) #7 ; 0 uses
  br label %.thread511

bb.x:                                             ; preds = %bb.v
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  br label %bb.y

bb.y:                                             ; preds = %.thread465, %bb.s, %bb.x
  %.1372 = phi ptr [ %i.cl, %.thread465 ], [ %i.cz, %bb.x ], [ %i.bn, %bb.s ] ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 4 uses
  %i.db = icmp eq i8 %i.bs, 1
  %.neg414 = select i1 %i.db, i64 0, i64 -4
  %i.dc = getelementptr i8, ptr %i.bn, i64 %.neg414
  %i.dd = getelementptr i8, ptr %i.dc, i64 %i.bo  ; 3 uses
  %i.de = icmp ult ptr %.1372, %i.dd
  br i1 %i.de, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.y
  %i.df = ptrtoint ptr %i.bq to i64               ; 3 uses
  %i.dg = add i64 %i.df, 1                        ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 289 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.dm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @H5O_msg_class_g, i64 200), align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.dp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @H5O_MSG_MTIME_NEW, i64 32), align 16
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.dr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @H5O_MSG_MTIME, i64 32), align 16
  %i.ds = load ptr, ptr getelementptr inbounds nuw (i8, ptr @H5O_MSG_REFCOUNT, i64 32), align 16
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.dv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @H5O_MSG_CONT, i64 32), align 16
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dx = ptrtoint ptr %i.dd to i64
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph, %bb.cy
  %.0357592 = phi i1 [ false, %.lr.ph ], [ %.6363, %bb.cy ] ; 3 uses
  %.0365591 = phi i32 [ 0, %.lr.ph ], [ %spec.select456, %bb.cy ]
  %.0368590 = phi i32 [ 0, %.lr.ph ], [ %.1369, %bb.cy ] ; 2 uses
  %.2373589 = phi ptr [ %.1372, %.lr.ph ], [ %.6377, %bb.cy ] ; 6 uses
  %i.dy = load i8, ptr %i.da, align 8, !tbaa !35
  %i.dz = icmp ne i8 %i.dy, 1                     ; 4 uses
  %i.ea = icmp ugt ptr %.2373589, %i.bq           ; 2 uses
  %i.eb = ptrtoint ptr %.2373589 to i64           ; 2 uses
  br i1 %i.dz, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ec = sub i64 %i.dg, %i.eb
  %i.ed = icmp ult i64 %i.ec, 2
  %or.cond638 = select i1 %i.ea, i1 true, i1 %i.ed
  br i1 %or.cond638, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ee = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !14
  %i.ef = load i64, ptr @H5E_OVERFLOW_g, align 8, !tbaa !14
  %i.eg = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5O__chunk_deserialize, i32 noundef 1257, i64 noundef %i.ee, i64 noundef %i.ef, ptr noundef nonnull @.str.7) #7 ; 0 uses
  br label %.thread511

bb.ac:                                            ; preds = %bb.aa
  %i.eh = load i16, ptr %.2373589, align 1
  %i.ei = zext i16 %i.eh to i32
  %i.ej = getelementptr inbounds nuw i8, ptr %.2373589, i64 2
  br label %bb.ag

bb.ad:                                            ; preds = %bb.z
  %i.ek = sub i64 %i.df, %i.eb
  %i.el = icmp eq i64 %i.ek, -1
  %or.cond449 = select i1 %i.ea, i1 true, i1 %i.el
  br i1 %or.cond449, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.em = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !14
  %i.en = load i64, ptr @H5E_OVERFLOW_g, align 8, !tbaa !14
  %i.eo = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5O__chunk_deserialize, i32 noundef 1262, i64 noundef %i.em, i64 noundef %i.en, ptr noundef nonnull @.str.7) #7 ; 0 uses
  br label %.thread511

bb.af:                                            ; preds = %bb.ad
  %i.ep = getelementptr inbounds nuw i8, ptr %.2373589, i64 1
  %i.eq = load i8, ptr %.2373589, align 1, !tbaa !50
  %i.er = zext i8 %i.eq to i32
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ac
  %.3374 = phi ptr [ %i.ej, %bb.ac ], [ %i.ep, %bb.af ] ; 7 uses
  %.0345 = phi i32 [ %i.ei, %bb.ac ], [ %i.er, %bb.af ] ; 5 uses
  %i.es = icmp ugt ptr %.3374, %i.bq
  %i.et = ptrtoint ptr %.3374 to i64
  %i.eu = sub i64 %i.dg, %i.et
  %i.ev = icmp ult i64 %i.eu, 2
  %or.cond641 = select i1 %i.es, i1 true, i1 %i.ev
  br i1 %or.cond641, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ew = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !14
  %i.ex = load i64, ptr @H5E_OVERFLOW_g, align 8, !tbaa !14
  %i.ey = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5O__chunk_deserialize, i32 noundef 1268, i64 noundef %i.ew, i64 noundef %i.ex, ptr noundef nonnull @.str.7) #7 ; 0 uses
  br label %.thread511

bb.ai:                                            ; preds = %bb.ag
  %i.ez = load i16, ptr %.3374, align 1           ; 2 uses
  %i.fa = zext i16 %i.ez to i64                   ; 6 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.3374, i64 2 ; 5 uses
  %i.fc = add nuw nsw i64 %i.fa, 7
  %i.fd = and i64 %i.fc, 131064
  %i.fe = icmp eq i64 %i.fd, %i.fa
  %.not417 = select i1 %i.dz, i1 true, i1 %i.fe
  br i1 %.not417, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ff = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !14
  %i.fg = load i64, ptr @H5E_CANTLOAD_g, align 8, !tbaa !14
  %i.fh = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5O__chunk_deserialize, i32 noundef 1271, i64 noundef %i.ff, i64 noundef %i.fg, ptr noundef nonnull @.str.23) #7 ; 0 uses
  br label %.thread511

bb.ak:                                            ; preds = %bb.ai
  %.not418 = icmp eq i16 %i.ez, 0
  br i1 %.not418, label %._crit_edge607, label %bb.al

._crit_edge607:                                   ; preds = %bb.ak
  %.pre608 = ptrtoint ptr %i.fb to i64
  br label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.fi = icmp ugt ptr %i.fb, %i.bq
  %i.fj = ptrtoint ptr %i.fb to i64               ; 2 uses
  %i.fk = sub i64 %i.dg, %i.fj
  %i.fl = icmp ult i64 %i.fk, %i.fa
  %or.cond644 = select i1 %i.fi, i1 true, i1 %i.fl
  br i1 %or.cond644, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.fm = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !14
  %i.fn = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !14
  %i.fo = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5O__chunk_deserialize, i32 noundef 1274, i64 noundef %i.fm, i64 noundef %i.fn, ptr noundef nonnull @.str.24) #7 ; 0 uses
  br label %.thread511

bb.an:                                            ; preds = %bb.al, %._crit_edge607
  %.pre-phi = phi i64 [ %.pre608, %._crit_edge607 ], [ %i.fj, %bb.al ]
  %i.fp = icmp ugt ptr %i.fb, %i.bq
  %i.fq = sub i64 %i.df, %.pre-phi
  %i.fr = icmp eq i64 %i.fq, -1
  %or.cond452 = select i1 %i.fp, i1 true, i1 %i.fr
  br i1 %or.cond452, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.fs = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !14
  %i.ft = load i64, ptr @H5E_OVERFLOW_g, align 8, !tbaa !14
  %i.fu = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5O__chunk_deserialize, i32 noundef 1278, i64 noundef %i.fs, i64 noundef %i.ft, ptr noundef nonnull @.str.7) #7 ; 0 uses
  br label %.thread511

bb.ap:                                            ; preds = %bb.an
  %i.fv = getelementptr inbounds nuw i8, ptr %.3374, i64 3 ; 6 uses
  %i.fw = load i8, ptr %i.fb, align 1, !tbaa !50  ; 3 uses
  %i.fx = zext i8 %i.fw to i32                    ; 5 uses
  %i.fy = and i32 %i.fx, 6
  %or.cond453.not = icmp eq i32 %i.fy, 6
  br i1 %or.cond453.not, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.fz = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !14
  %i.ga = load i64, ptr @H5E_CANTLOAD_g, align 8, !tbaa !14
  %i.gb = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5O__chunk_deserialize, i32 noundef 1283, i64 noundef %i.fz, i64 noundef %i.ga, ptr noundef nonnull @.str.26) #7 ; 0 uses
  br label %.thread511

bb.ar:                                            ; preds = %bb.ap
  %i.gc = and i32 %i.fx, 8
  %.not422 = icmp eq i32 %i.gc, 0
  %i.gd = and i32 %i.fx, 40
  %or.cond454.not = icmp eq i32 %i.gd, 40
  br i1 %or.cond454.not, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ge = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !14
  %i.gf = load i64, ptr @H5E_CANTLOAD_g, align 8, !tbaa !14
  %i.gg = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5O__chunk_deserialize, i32 noundef 1285, i64 noundef %i.ge, i64 noundef %i.gf, ptr noundef nonnull @.str.26) #7 ; 0 uses
  br label %.thread511

bb.at:                                            ; preds = %bb.ar
  %i.gh = and i32 %i.fx, 48                       ; 2 uses
  %or.cond455 = icmp eq i32 %i.gh, 32
  br i1 %or.cond455, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.gi = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !14
  %i.gj = load i64, ptr @H5E_CANTLOAD_g, align 8, !tbaa !14
  %i.gk = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5O__chunk_deserialize, i32 noundef 1287, i64 noundef %i.gi, i64 noundef %i.gj, ptr noundef nonnull @.str.26) #7 ; 0 uses
  br label %.thread511

bb.av:                                            ; preds = %bb.at
  br i1 %i.dz, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gl = icmp ugt ptr %i.fv, %i.bq
  %i.gm = ptrtoint ptr %i.fv to i64
  %i.gn = sub i64 %i.dg, %i.gm
  %i.go = icmp ult i64 %i.gn, 3
  %or.cond647 = select i1 %i.gl, i1 true, i1 %i.go
  br i1 %or.cond647, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.gp = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !14
  %i.gq = load i64, ptr @H5E_OVERFLOW_g, align 8, !tbaa !14
  %i.gr = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5O__chunk_deserialize, i32 noundef 1296, i64 noundef %i.gp, i64 noundef %i.gq, ptr noundef nonnull @.str.7) #7 ; 0 uses
  br label %.thread511

bb.ay:                                            ; preds = %bb.aw
  %i.gs = getelementptr inbounds nuw i8, ptr %.3374, i64 6
  br label %bb.bd

bb.az:                                            ; preds = %bb.av
  %i.gt = load i8, ptr %i.dh, align 1, !tbaa !36
  %i.gu = and i8 %i.gt, 4
  %.not424 = icmp eq i8 %i.gu, 0
  br i1 %.not424, label %bb.bd, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gv = icmp ugt ptr %i.fv, %i.bq
  %i.gw = ptrtoint ptr %i.fv to i64
  %i.gx = sub i64 %i.dg, %i.gw
  %i.gy = icmp ult i64 %i.gx, 2
  %or.cond650 = select i1 %i.gv, i1 true, i1 %i.gy
  br i1 %or.cond650, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.gz = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !14
  %i.ha = load i64, ptr @H5E_OVERFLOW_g, align 8, !tbaa !14
  %i.hb = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5O__chunk_deserialize, i32 noundef 1303, i64 noundef %i.gz, i64 noundef %i.ha, ptr noundef nonnull @.str.7) #7 ; 0 uses
  br label %.thread511

bb.bc:                                            ; preds = %bb.ba
  %i.hc = load i16, ptr %i.fv, align 1
  %i.hd = zext i16 %i.hc to i32
  %i.he = getelementptr inbounds nuw i8, ptr %.3374, i64 5
  br label %bb.bd

bb.bd:                                            ; preds = %bb.az, %bb.bc, %bb.ay
  %.4375 = phi ptr [ %i.gs, %bb.ay ], [ %i.he, %bb.bc ], [ %i.fv, %bb.az ] ; 2 uses
  %.0 = phi i32 [ 0, %bb.ay ], [ %i.hd, %bb.bc ], [ 0, %bb.az ]
  %i.hf = icmp eq i32 %.0345, 0                   ; 2 uses
  %i.hg = zext i1 %i.hf to i32
  %spec.select456 = add i32 %.0365591, %i.hg      ; 2 uses
  %i.hh = load i32, ptr %i.di, align 8, !tbaa !96
  %i.hi = trunc i32 %i.hh to i1
  %or.cond10 = and i1 %i.hf, %i.hi
  %.pre603 = load i64, ptr %i.dj, align 8, !tbaa !43 ; 4 uses
  %.not425 = icmp ne i64 %.pre603, 0
  %or.cond651.not = select i1 %or.cond10, i1 %.not425, i1 false
  br i1 %or.cond651.not, label %bb.be, label %bb.bj

bb.be:                                            ; preds = %bb.bd
  %i.hj = load ptr, ptr %i.dk, align 8, !tbaa !55
  %i.hk = getelementptr [48 x i8], ptr %i.hj, i64 %.pre603 ; 4 uses
  %i.hl = getelementptr i8, ptr %i.hk, i64 -48
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !97
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !99
  %i.ho = icmp eq i32 %i.hn, 0
  br i1 %i.ho, label %bb.bf, label %bb.bj

bb.bf:                                            ; preds = %bb.be
  %i.hp = getelementptr i8, ptr %i.hk, i64 -32
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !58
  %i.hr = icmp eq i32 %i.hq, %i.x
  br i1 %i.hr, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  br i1 %i.dz, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.hs = load i8, ptr %i.dh, align 1, !tbaa !36
  %i.ht = lshr i8 %i.hs, 1
  %i.hu = and i8 %i.ht, 2
  %i.hv = or disjoint i8 %i.hu, 4
  %i.hw = zext nneg i8 %i.hv to i64
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bh
  %i.hx = phi i64 [ %i.hw, %bb.bh ], [ 8, %bb.bg ]
  %i.hy = add nuw nsw i64 %i.hx, %i.fa
  %i.hz = getelementptr i8, ptr %i.hk, i64 -8     ; 2 uses
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !100
  %i.ib = add i64 %i.hy, %i.ia
  store i64 %i.ib, ptr %i.hz, align 8, !tbaa !100
  %i.ic = getelementptr i8, ptr %i.hk, i64 -40
  store i8 1, ptr %i.ic, align 8, !tbaa !59
  %i.id = add i32 %.0368590, 1
  br label %bb.cr

bb.bj:                                            ; preds = %bb.bf, %bb.be, %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !38
  %i.ie = load i64, ptr %i.dl, align 8, !tbaa !101
  %.not426 = icmp ult i64 %.pre603, %i.ie
  br i1 %.not426, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.if = call i32 @H5O__alloc_msgs(ptr noundef nonnull %0, i64 noundef 1) #7
  %i.ig = icmp slt i32 %i.if, 0
  br i1 %i.ig, label %bb.bl, label %._crit_edge604

._crit_edge604:                                   ; preds = %bb.bk
  %.pre605 = load i64, ptr %i.dj, align 8, !tbaa !43
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.ih = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !14
  %i.ii = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !14
  %i.ij = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5O__chunk_deserialize, i32 noundef 1331, i64 noundef %i.ih, i64 noundef %i.ii, ptr noundef nonnull @.str.27) #7 ; 0 uses
  br label %.thread491

bb.bm:                                            ; preds = %._crit_edge604, %bb.bj
  %i.ik = phi i64 [ %.pre605, %._crit_edge604 ], [ %.pre603, %bb.bj ] ; 2 uses
  %i.il = load ptr, ptr %i.dk, align 8, !tbaa !55
  %i.im = getelementptr inbounds nuw [48 x i8], ptr %i.il, i64 %i.ik ; 9 uses
  %i.in = add i64 %i.ik, 1
  store i64 %i.in, ptr %i.dj, align 8, !tbaa !43
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 8 ; 3 uses
  store i8 0, ptr %i.io, align 8, !tbaa !59
  %i.ip = getelementptr inbounds nuw i8, ptr %i.im, i64 9 ; 3 uses
  store i8 %i.fw, ptr %i.ip, align 1, !tbaa !102
  %i.iq = getelementptr inbounds nuw i8, ptr %i.im, i64 12
  store i32 %.0, ptr %i.iq, align 4, !tbaa !103
  %i.ir = getelementptr inbounds nuw i8, ptr %i.im, i64 24 ; 6 uses
  store ptr null, ptr %i.ir, align 8, !tbaa !104
  %i.is = getelementptr inbounds nuw i8, ptr %i.im, i64 32 ; 5 uses
  store ptr %.4375, ptr %i.is, align 8, !tbaa !105
  %i.it = getelementptr inbounds nuw i8, ptr %i.im, i64 40 ; 5 uses
  store i64 %i.fa, ptr %i.it, align 8, !tbaa !100
  %i.iu = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  store i32 %i.x, ptr %i.iu, align 8, !tbaa !58
  %i.iv = icmp samesign ugt i32 %.0345, 24
  br i1 %i.iv, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.iw = zext nneg i32 %.0345 to i64
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr @H5O_msg_class_g, i64 %i.iw
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !106 ; 3 uses
  %i.iz = icmp eq ptr %i.iy, null
  br i1 %i.iz, label %bb.bo, label %bb.bu

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.ja = call noalias ptr @H5FL_reg_malloc(ptr noundef nonnull @H5_H5O_unknown_t_reg_free_list) #7 ; 3 uses
  %i.jb = icmp eq ptr %i.ja, null
  br i1 %i.jb, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.jc = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !14
  %i.jd = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !14
  %i.je = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5O__chunk_deserialize, i32 noundef 1362, i64 noundef %i.jc, i64 noundef %i.jd, ptr noundef nonnull @.str.6) #7 ; 0 uses
  br label %.thread491

bb.bq:                                            ; preds = %bb.bo
  store i32 %.0345, ptr %i.ja, align 4, !tbaa !38
  store ptr %i.ja, ptr %i.ir, align 8, !tbaa !104
  store ptr %i.dm, ptr %i.im, align 8, !tbaa !97
  %i.jf = load i32, ptr %i.di, align 8, !tbaa !96
  %i.jg = and i32 %i.jf, 1
  %.not430 = icmp eq i32 %i.jg, 0                 ; 2 uses
  %or.cond457 = or i1 %.not422, %.not430
  %.not432 = icmp sgt i8 %i.fw, -1
  %or.cond458 = and i1 %.not432, %or.cond457
  br i1 %or.cond458, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jh = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !14
  %i.ji = load i64, ptr @H5E_BADMESG_g, align 8, !tbaa !14
  %i.jj = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5O__chunk_deserialize, i32 noundef 1378, i64 noundef %i.jh, i64 noundef %i.ji, ptr noundef nonnull @.str.28) #7 ; 0 uses
  br label %.thread491

bb.bs:                                            ; preds = %bb.bq
  %brmerge = icmp ne i32 %i.gh, 16
  %brmerge513 = or i1 %brmerge, %.not430
  br i1 %brmerge513, label %.thread469, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.jk = load i8, ptr %i.ip, align 1, !tbaa !102
  %i.jl = or i8 %i.jk, 32
  store i8 %i.jl, ptr %i.ip, align 1, !tbaa !102
  store i8 1, ptr %i.io, align 8, !tbaa !59
  br label %.thread469

bb.bu:                                            ; preds = %bb.bn
  %i.jm = and i32 %i.fx, 66
  %or.cond460 = icmp eq i32 %i.jm, 0
  br i1 %or.cond460, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jn = getelementptr inbounds nuw i8, ptr %i.iy, i64 24
  %i.jo = load i32, ptr %i.jn, align 8, !tbaa !107
  %i.jp = and i32 %i.jo, 1
  %.not429 = icmp eq i32 %i.jp, 0
  br i1 %.not429, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.jq = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !14
  %i.jr = load i64, ptr @H5E_CANTLOAD_g, align 8, !tbaa !14
  %i.js = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5O__chunk_deserialize, i32 noundef 1407, i64 noundef %i.jq, i64 noundef %i.jr, ptr noundef nonnull @.str.29) #7 ; 0 uses
  br label %.thread491

bb.bx:                                            ; preds = %bb.bu, %bb.bv
  store ptr %i.iy, ptr %i.im, align 8, !tbaa !97
  br label %.thread469

.thread469:                                       ; preds = %bb.bs, %bb.bt, %bb.bx
  %.3360 = phi i1 [ %.0357592, %bb.bx ], [ %.0357592, %bb.bs ], [ true, %bb.bt ] ; 2 uses
  %trunc = trunc nuw i32 %.0345 to i16
  switch i16 %trunc, label %bb.cn [
    i16 16, label %bb.by
    i16 22, label %bb.cc
    i16 14, label %bb.ch
    i16 18, label %bb.cj
    i16 6, label %bb.cl
    i16 12, label %bb.cm
  ]

bb.by:                                            ; preds = %.thread469
  %i.jt = load ptr, ptr %5, align 8, !tbaa !108
  %i.ju = load i64, ptr %i.it, align 8, !tbaa !100
  %i.jv = load ptr, ptr %i.is, align 8, !tbaa !105
  %i.jw = call ptr %i.dv(ptr noundef %i.jt, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.a, i64 noundef %i.ju, ptr noundef %i.jv) #7 ; 4 uses
  %i.jx = icmp eq ptr %i.jw, null
  br i1 %i.jx, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.jy = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !14
  %i.jz = load i64, ptr @H5E_BADMESG_g, align 8, !tbaa !14
  %i.ka = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5O__chunk_deserialize, i32 noundef 1423, i64 noundef %i.jy, i64 noundef %i.jz, ptr noundef nonnull @.str.30) #7 ; 0 uses
  br label %.thread491

bb.ca:                                            ; preds = %bb.by
  %i.kb = load ptr, ptr %i.dw, align 8, !tbaa !109 ; 2 uses
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !73
  %i.kd = trunc i64 %i.kc to i32
  %i.ke = add i32 %i.kd, 1
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  store i32 %i.ke, ptr %i.kf, align 8, !tbaa !75
  store ptr %i.jw, ptr %i.ir, align 8, !tbaa !104
  %i.kg = call fastcc i32 @H5O__add_cont_msg(ptr noundef nonnull %i.kb, ptr noundef %i.jw)
  %i.kh = icmp slt i32 %i.kg, 0
  br i1 %i.kh, label %bb.cb, label %bb.cn

bb.cb:                                            ; preds = %bb.ca
  %i.ki = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !14
  %i.kj = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !14
  %i.kk = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5O__chunk_deserialize, i32 noundef 1432, i64 noundef %i.ki, i64 noundef %i.kj, ptr noundef nonnull @.str.31) #7 ; 0 uses
  br label %.thread491

bb.cc:                                            ; preds = %.thread469
  %i.kl = load i8, ptr %i.da, align 8, !tbaa !35
  %i.km = icmp ult i8 %i.kl, 2
  br i1 %i.km, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.kn = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !14
  %i.ko = load i64, ptr @H5E_VERSION_g, align 8, !tbaa !14
  %i.kp = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5O__chunk_deserialize, i32 noundef 1441, i64 noundef %i.kn, i64 noundef %i.ko, ptr noundef nonnull @.str.32) #7 ; 0 uses
  br label %.thread491

bb.ce:                                            ; preds = %bb.cc
  %i.kq = load ptr, ptr %5, align 8, !tbaa !108
  %i.kr = load i64, ptr %i.it, align 8, !tbaa !100
  %i.ks = load ptr, ptr %i.is, align 8, !tbaa !105
  %i.kt = call ptr %i.ds(ptr noundef %i.kq, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.a, i64 noundef %i.kr, ptr noundef %i.ks) #7 ; 3 uses
  store ptr %i.kt, ptr %i.ir, align 8, !tbaa !104
  store i8 1, ptr %i.dt, align 8, !tbaa !110
  %.not437 = icmp eq ptr %i.kt, null
  br i1 %.not437, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.ku = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !14
  %i.kv = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !14
  %i.kw = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5O__chunk_deserialize, i32 noundef 1451, i64 noundef %i.ku, i64 noundef %i.kv, ptr noundef nonnull @.str.33) #7 ; 0 uses
  br label %.thread491

bb.cg:                                            ; preds = %bb.ce
  %i.kx = load i32, ptr %i.kt, align 4, !tbaa !38
  store i32 %i.kx, ptr %i.du, align 4, !tbaa !54
  br label %bb.cn

bb.ch:                                            ; preds = %.thread469
  %i.ky = load ptr, ptr %5, align 8, !tbaa !108
  %i.kz = load i64, ptr %i.it, align 8, !tbaa !100
  %i.la = load ptr, ptr %i.is, align 8, !tbaa !105
  %i.lb = call ptr %i.dr(ptr noundef %i.ky, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.a, i64 noundef %i.kz, ptr noundef %i.la) #7 ; 3 uses
  %.not436.not = icmp eq ptr %i.lb, null
  br i1 %.not436.not, label %.thread484, label %bb.ci

.thread484:                                       ; preds = %bb.ch
  %i.lc = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !14
  %i.ld = load i64, ptr @H5E_CANTDECODE_g, align 8, !tbaa !14
  %i.le = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5O__chunk_deserialize, i32 noundef 1464, i64 noundef %i.lc, i64 noundef %i.ld, ptr noundef nonnull @.str.34) #7 ; 0 uses
  br label %.thread491

bb.ci:                                            ; preds = %bb.ch
  store ptr %i.lb, ptr %i.ir, align 8, !tbaa !104
  %i.lf = load i64, ptr %i.lb, align 8, !tbaa !14
  store i64 %i.lf, ptr %i.dq, align 8, !tbaa !51
  br label %bb.cn

bb.cj:                                            ; preds = %.thread469
  %i.lg = load ptr, ptr %5, align 8, !tbaa !108
  %i.lh = load i64, ptr %i.it, align 8, !tbaa !100
  %i.li = load ptr, ptr %i.is, align 8, !tbaa !105
  %i.lj = call ptr %i.dp(ptr noundef %i.lg, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.a, i64 noundef %i.lh, ptr noundef %i.li) #7 ; 3 uses
  %.not435.not = icmp eq ptr %i.lj, null
  br i1 %.not435.not, label %.thread487, label %bb.ck

.thread487:                                       ; preds = %bb.cj
  %i.lk = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !14
  %i.ll = load i64, ptr @H5E_CANTDECODE_g, align 8, !tbaa !14
  %i.lm = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5O__chunk_deserialize, i32 noundef 1480, i64 noundef %i.lk, i64 noundef %i.ll, ptr noundef nonnull @.str.35) #7 ; 0 uses
  br label %.thread491

bb.ck:                                            ; preds = %bb.cj
  store ptr %i.lj, ptr %i.ir, align 8, !tbaa !104
  %i.ln = load i64, ptr %i.lj, align 8, !tbaa !14
  store i64 %i.ln, ptr %i.dq, align 8, !tbaa !51
  br label %bb.cn

bb.cl:                                            ; preds = %.thread469
  %i.lo = load i64, ptr %i.do, align 8, !tbaa !111
  %i.lp = add i64 %i.lo, 1
  store i64 %i.lp, ptr %i.do, align 8, !tbaa !111
  br label %bb.cn

bb.cm:                                            ; preds = %.thread469
  %i.lq = load i64, ptr %i.dn, align 8, !tbaa !112
  %i.lr = add i64 %i.lq, 1
  store i64 %i.lr, ptr %i.dn, align 8, !tbaa !112
  br label %bb.cn

bb.cn:                                            ; preds = %bb.ck, %bb.ci, %bb.cg, %bb.ca, %.thread469, %bb.cm, %bb.cl
  %i.ls = load i32, ptr %i.a, align 4, !tbaa !38
  %i.lt = and i32 %i.ls, 2
  %.not438 = icmp eq i32 %i.lt, 0
  br i1 %.not438, label %bb.cq, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.lu = load i32, ptr %i.di, align 8, !tbaa !96
  %i.lv = and i32 %i.lu, 1
  %.not439 = icmp eq i32 %i.lv, 0
  br i1 %.not439, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  store i8 1, ptr %i.io, align 8, !tbaa !59
  br label %bb.cq

.thread491:                                       ; preds = %bb.bl, %bb.bw, %.thread484, %.thread487, %bb.bp, %bb.br, %bb.bz, %bb.cb, %bb.cd, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %.thread511

bb.cq:                                            ; preds = %bb.cn, %bb.co, %bb.cp
  %.5362 = phi i1 [ %.3360, %bb.cn ], [ true, %bb.cp ], [ %.3360, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.bi
  %.1369 = phi i32 [ %i.id, %bb.bi ], [ %.0368590, %bb.cq ] ; 2 uses
  %.6363 = phi i1 [ %.0357592, %bb.bi ], [ %.5362, %bb.cq ] ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.4375, i64 %i.fa ; 5 uses
  %i.lx = ptrtoint ptr %i.lw to i64
  %i.ly = sub i64 %i.dx, %i.lx                    ; 5 uses
  %i.lz = icmp sgt i64 %i.ly, 0
  br i1 %i.lz, label %bb.cs, label %bb.cy

bb.cs:                                            ; preds = %bb.cr
  %i.ma = load i8, ptr %i.da, align 8, !tbaa !35
  %i.mb = icmp eq i8 %i.ma, 1
  br i1 %i.mb, label %bb.ct, label %.thread496

bb.ct:                                            ; preds = %bb.cs
  %i.mc = icmp samesign ult i64 %i.ly, 8
  br i1 %i.mc, label %bb.cu, label %bb.cy

.thread496:                                       ; preds = %bb.cs
  %i.md = load i8, ptr %i.dh, align 1, !tbaa !36
  %i.me = lshr i8 %i.md, 1
  %i.mf = and i8 %i.me, 2
  %i.mg = or disjoint i8 %i.mf, 4
  %i.mh = zext nneg i8 %i.mg to i64
  %i.mi = icmp samesign ult i64 %i.ly, %i.mh
  br i1 %i.mi, label %bb.cv, label %bb.cy

bb.cu:                                            ; preds = %bb.ct
  %i.mj = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !14
  %i.mk = load i64, ptr @H5E_BADMESG_g, align 8, !tbaa !14
  %i.ml = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5O__chunk_deserialize, i32 noundef 1511, i64 noundef %i.mj, i64 noundef %i.mk, ptr noundef nonnull @.str.36) #7 ; 0 uses
  br label %.thread511

bb.cv:                                            ; preds = %.thread496
  %.not442 = icmp eq i32 %spec.select456, 0
  br i1 %.not442, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.mm = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !14
  %i.mn = load i64, ptr @H5E_BADMESG_g, align 8, !tbaa !14
  %i.mo = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5O__chunk_deserialize, i32 noundef 1515, i64 noundef %i.mm, i64 noundef %i.mn, ptr noundef nonnull @.str.37) #7 ; 0 uses
  br label %.thread511

bb.cx:                                            ; preds = %bb.cv
  %i.mp = load ptr, ptr %i.y, align 8, !tbaa !44
  %i.mq = getelementptr inbounds nuw [40 x i8], ptr %i.mp, i64 %i.z
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  store i64 %i.ly, ptr %i.mr, align 8, !tbaa !70
  %i.ms = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.ly
  br label %bb.cy

bb.cy:                                            ; preds = %.thread496, %bb.cr, %bb.ct, %bb.cx
  %.6377 = phi ptr [ %i.lw, %bb.cr ], [ %i.lw, %.thread496 ], [ %i.ms, %bb.cx ], [ %i.lw, %bb.ct ] ; 3 uses
  %i.mt = icmp ult ptr %.6377, %i.dd
  br i1 %i.mt, label %bb.z, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %bb.cy
  %.pre606 = load i8, ptr %i.da, align 8, !tbaa !35
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.y
  %i.mu = phi i8 [ %i.bs, %bb.y ], [ %.pre606, %._crit_edge.loopexit ]
  %.2373.lcssa = phi ptr [ %.1372, %bb.y ], [ %.6377, %._crit_edge.loopexit ] ; 4 uses
  %.0368.lcssa = phi i32 [ 0, %bb.y ], [ %.1369, %._crit_edge.loopexit ] ; 2 uses
  %.0357.lcssa = phi i1 [ false, %bb.y ], [ %.6363, %._crit_edge.loopexit ]
  %i.mv = icmp ugt i8 %i.mu, 1
  br i1 %i.mv, label %bb.cz, label %bb.dc

bb.cz:                                            ; preds = %._crit_edge
  %i.mw = icmp ugt ptr %.2373.lcssa, %i.bq
  br i1 %i.mw, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.mx = ptrtoint ptr %i.bq to i64
  %i.my = ptrtoint ptr %.2373.lcssa to i64
  %i.mz = add i64 %i.mx, 1
  %i.na = sub i64 %i.mz, %i.my
  %i.nb = icmp ult i64 %i.na, 4
  br i1 %i.nb, label %bb.db, label %.thread506

.thread506:                                       ; preds = %bb.da
  %i.nc = getelementptr inbounds nuw i8, ptr %.2373.lcssa, i64 4
  br label %bb.dc

bb.db:                                            ; preds = %bb.da, %bb.cz
  %i.nd = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !14
  %i.ne = load i64, ptr @H5E_OVERFLOW_g, align 8, !tbaa !14
  %i.nf = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5O__chunk_deserialize, i32 noundef 1533, i64 noundef %i.nd, i64 noundef %i.ne, ptr noundef nonnull @.str.7) #7 ; 0 uses
  br label %.thread511

bb.dc:                                            ; preds = %.thread506, %._crit_edge
  %.8379 = phi ptr [ %i.nc, %.thread506 ], [ %.2373.lcssa, %._crit_edge ]
  %i.ng = load ptr, ptr %i.y, align 8, !tbaa !44
  %i.nh = getelementptr inbounds nuw [40 x i8], ptr %i.ng, i64 %i.z ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 24
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !49
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  %i.nl = load i64, ptr %i.nk, align 8, !tbaa !48
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nj, i64 %i.nl
  %.not415 = icmp eq ptr %.8379, %i.nm
  br i1 %.not415, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.nn = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !14
  %i.no = load i64, ptr @H5E_OVERFLOW_g, align 8, !tbaa !14
  %i.np = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5O__chunk_deserialize, i32 noundef 1539, i64 noundef %i.nn, i64 noundef %i.no, ptr noundef nonnull @.str.38) #7 ; 0 uses
  br label %.thread511

bb.de:                                            ; preds = %bb.dc
  br i1 %.0357.lcssa, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  store i8 1, ptr %6, align 1, !tbaa !9
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %.not416 = icmp eq i32 %.0368.lcssa, 0
  br i1 %.not416, label %bb.dj, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.nq = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !113
  %i.ns = add i32 %i.nr, %.0368.lcssa
  store i32 %i.ns, ptr %i.nq, align 4, !tbaa !113
  store i8 1, ptr %6, align 1, !tbaa !9
  br label %bb.dj

.thread511:                                       ; preds = %bb.bb, %.thread491, %bb.au, %bb.cw, %bb.cu, %bb.ax, %bb.as, %bb.aq, %bb.ae, %bb.ao, %bb.am, %bb.aj, %bb.ah, %bb.ab, %bb.d, %bb.w, %bb.u, %bb.r, %bb.db, %bb.dd, %bb.m, %bb.k
  %i.nt = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !109
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 16
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !76 ; 2 uses
  %.not443 = icmp eq ptr %i.nw, null
  br i1 %.not443, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %.thread511
  %i.nx = call ptr @H5FL_seq_free(ptr noundef nonnull @H5_H5O_cont_t_seq_free_list, ptr noundef nonnull %i.nw) #7
  %i.ny = load ptr, ptr %i.nt, align 8, !tbaa !109 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 16
  store ptr %i.nx, ptr %i.nz, align 8, !tbaa !76
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ny, i64 8
  store i64 0, ptr %i.oa, align 8, !tbaa !77
  br label %bb.dj

bb.dj:                                            ; preds = %bb.dh, %bb.dg, %bb.a, %bb.di, %.thread511
  %.18 = phi i32 [ -1, %bb.di ], [ -1, %.thread511 ], [ 0, %bb.a ], [ 0, %bb.dg ], [ 0, %bb.dh ]
  ret i32 %.18
}

declare ptr @H5FL_seq_realloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare noalias ptr @H5FL_blk_malloc(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare i32 @H5O__alloc_msgs(ptr noundef, i64 noundef) local_unnamed_addr #4

declare noalias ptr @H5FL_reg_malloc(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @H5O__add_cont_msg(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr @H5O_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.f, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %0, align 8, !tbaa !73     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !77   ; 2 uses
  %.not = icmp ult i64 %i.g, %i.i
  br i1 %.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre30 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !76
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = shl i64 %i.i, 1                          ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  %spec.select = select i1 %i.k, i64 2, i64 %i.j  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !76
  %i.n = tail call ptr @H5FL_seq_realloc(ptr noundef nonnull @H5_H5O_cont_t_seq_free_list, ptr noundef %i.m, i64 noundef %spec.select) #7 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  store i64 %spec.select, ptr %i.h, align 8, !tbaa !77
  store ptr %i.n, ptr %i.l, align 8, !tbaa !76
  %.pre = load i64, ptr %0, align 8, !tbaa !73
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !14
  %i.q = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !14
  %i.r = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.H5O__add_cont_msg, i32 noundef 959, i64 noundef %i.p, i64 noundef %i.q, ptr noundef nonnull @.str.6) #7 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge, %.thread
  %i.s = phi ptr [ %i.n, %.thread ], [ %.pre30, %._crit_edge ]
  %i.t = phi i64 [ %.pre, %.thread ], [ %i.g, %._crit_edge ] ; 2 uses
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %0, align 8, !tbaa !73
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %i.w = load <2 x i64>, ptr %1, align 8, !tbaa !14
  store <2 x i64> %i.w, ptr %i.v, align 8, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load i32, ptr %i.x, align 8, !tbaa !75
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i32 %i.y, ptr %i.z, align 8, !tbaa !75
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.a, %bb.e
  %.2 = phi i32 [ 0, %bb.e ], [ -1, %bb.d ], [ 0, %bb.a ]
  ret i32 %.2
}

declare ptr @H5FL_seq_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @H5O__chunk_serialize(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr @H5O_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.j, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !43   ; 2 uses
  %.not48 = icmp eq i64 %i.h, 0
  br i1 %.not48, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !55
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %i.k = phi i64 [ %i.w, %bb.f ], [ %i.h, %.lr.ph.preheader ] ; 2 uses
end_hunk_0
