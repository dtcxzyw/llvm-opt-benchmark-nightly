Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5B2int?download=true
inline.NumInlined: 14
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@H5B2__redistribute2:bb.a
  br i1 %i.lo, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.lp = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.lq = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !19
  %i.lr = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__redistribute2, i32 noundef 660, i64 noundef %i.lp, i64 noundef %i.lq, ptr noundef nonnull @.str.13) #4 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.7.ph = phi i32 [ -1, %bb.ag ], [ %.6, %bb.af ]
  %i.ls = load ptr, ptr %i.ll, align 8, !tbaa !51
  %i.lt = tail call i32 @H5AC_unprotect(ptr noundef %i.ls, ptr noundef nonnull %.0294, i64 noundef %.2288, ptr noundef nonnull %.2280, i32 noundef %.3251) #4
  %i.lu = icmp slt i32 %i.lt, 0
  br i1 %i.lu, label %bb.ai, label %.thread

bb.ai:                                            ; preds = %bb.ah
  %i.lv = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.lw = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !19
  %i.lx = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__redistribute2, i32 noundef 662, i64 noundef %i.lv, i64 noundef %i.lw, ptr noundef nonnull @.str.13) #4 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.i, %bb.f, %bb.d, %bb.a, %bb.ai, %bb.ah
  %.8 = phi i32 [ -1, %bb.ai ], [ %.7.ph, %bb.ah ], [ 0, %bb.a ], [ -1, %bb.f ], [ -1, %bb.d ], [ -1, %bb.i ], [ -1, %bb.k ]
  ret i32 %.8
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5B2__redistribute3(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5B2_init_g, align 1, !tbaa !10, !range !11, !noundef !12
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !11
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.thread, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.g = zext i16 %1 to i32                       ; 4 uses
  %i.h = icmp ugt i16 %1, 1                       ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 7 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42
  %i.k = add i32 %4, -1
  %i.l = zext i32 %i.k to i64                     ; 3 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.l ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.n = add i16 %1, -1                           ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !45, !range !11, !noundef !12
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = tail call ptr @H5B2__protect_internal(ptr noundef %0, ptr noundef %2, ptr noundef %i.m, i16 noundef zeroext %i.n, i1 noundef zeroext %i.q, i32 noundef 0) #4 ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.u = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !19
  %i.v = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__redistribute3, i32 noundef 721, i64 noundef %i.t, i64 noundef %i.u, ptr noundef nonnull @.str.3) #4 ; 0 uses
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.i, align 8, !tbaa !42   ; 2 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.l
  %i.y = load i64, ptr %i.x, align 8, !tbaa !46
  %i.z = zext i32 %4 to i64                       ; 2 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.z
  %i.ab = load i8, ptr %i.o, align 8, !tbaa !45, !range !11, !noundef !12
  %i.ac = trunc nuw i8 %i.ab to i1
  %i.ad = tail call ptr @H5B2__protect_internal(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %i.aa, i16 noundef zeroext %i.n, i1 noundef zeroext %i.ac, i32 noundef 0) #4 ; 4 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.ag = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !19
  %i.ah = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__redistribute3, i32 noundef 726, i64 noundef %i.af, i64 noundef %i.ag, ptr noundef nonnull @.str.3) #4 ; 0 uses
  br label %.thread

bb.g:                                             ; preds = %bb.e
  %i.ai = load ptr, ptr %i.i, align 8, !tbaa !42  ; 2 uses
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %i.z
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !46
  %i.al = add i32 %4, 1
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %i.am
  %i.ao = load i8, ptr %i.o, align 8, !tbaa !45, !range !11, !noundef !12
  %i.ap = trunc nuw i8 %i.ao to i1
  %i.aq = tail call ptr @H5B2__protect_internal(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %i.an, i16 noundef zeroext %i.n, i1 noundef zeroext %i.ap, i32 noundef 0) #4 ; 4 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.as = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.at = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !19
  %i.au = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__redistribute3, i32 noundef 731, i64 noundef %i.as, i64 noundef %i.at, ptr noundef nonnull @.str.3) #4 ; 0 uses
  br label %.thread

bb.i:                                             ; preds = %bb.g
  %i.av = load ptr, ptr %i.i, align 8, !tbaa !42
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %i.am
  %i.ax = getelementptr inbounds nuw i8, ptr %i.r, i64 272
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ad, i64 272
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 272
  %i.ba = getelementptr inbounds nuw i8, ptr %i.r, i64 264
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !42
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ad, i64 264
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !42
  %i.be = getelementptr inbounds nuw i8, ptr %i.aq, i64 264
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !42
  br label %bb.q

bb.j:                                             ; preds = %bb.b
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !45, !range !11, !noundef !12
  %i.bi = trunc nuw i8 %i.bh to i1
  %i.bj = tail call ptr @H5B2__protect_leaf(ptr noundef %0, ptr noundef %2, ptr noundef %i.m, i1 noundef zeroext %i.bi, i32 noundef 0) #4 ; 3 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bl = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.bm = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !19
  %i.bn = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__redistribute3, i32 noundef 760, i64 noundef %i.bl, i64 noundef %i.bm, ptr noundef nonnull @.str.5) #4 ; 0 uses
  br label %.thread

bb.l:                                             ; preds = %bb.j
  %i.bo = load ptr, ptr %i.i, align 8, !tbaa !42  ; 2 uses
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %i.l
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !46
  %i.br = zext i32 %4 to i64                      ; 2 uses
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %i.br
  %i.bt = load i8, ptr %i.bg, align 8, !tbaa !45, !range !11, !noundef !12
  %i.bu = trunc nuw i8 %i.bt to i1
  %i.bv = tail call ptr @H5B2__protect_leaf(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %i.bs, i1 noundef zeroext %i.bu, i32 noundef 0) #4 ; 3 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bx = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.by = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !19
  %i.bz = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__redistribute3, i32 noundef 764, i64 noundef %i.bx, i64 noundef %i.by, ptr noundef nonnull @.str.5) #4 ; 0 uses
  br label %.thread

bb.n:                                             ; preds = %bb.l
  %i.ca = load ptr, ptr %i.i, align 8, !tbaa !42  ; 2 uses
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %i.br
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !46
  %i.cd = add i32 %4, 1
  %i.ce = zext i32 %i.cd to i64                   ; 2 uses
  %i.cf = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %i.ce
  %i.cg = load i8, ptr %i.bg, align 8, !tbaa !45, !range !11, !noundef !12
  %i.ch = trunc nuw i8 %i.cg to i1
  %i.ci = tail call ptr @H5B2__protect_leaf(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %i.cf, i1 noundef zeroext %i.ch, i32 noundef 0) #4 ; 3 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ck = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.cl = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !19
  %i.cm = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__redistribute3, i32 noundef 768, i64 noundef %i.ck, i64 noundef %i.cl, ptr noundef nonnull @.str.5) #4 ; 0 uses
  br label %.thread

bb.p:                                             ; preds = %bb.n
  %i.cn = load ptr, ptr %i.i, align 8, !tbaa !42
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %i.ce
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bj, i64 264
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bv, i64 264
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ci, i64 264
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.i
  %.1558 = phi ptr [ %i.bb, %bb.i ], [ null, %bb.p ] ; 3 uses
  %.1556 = phi ptr [ %i.bf, %bb.i ], [ null, %bb.p ] ; 17 uses
  %.1554 = phi ptr [ %i.bd, %bb.i ], [ null, %bb.p ] ; 20 uses
  %.0551 = phi ptr [ @H5AC_BT2_INT, %bb.i ], [ @H5AC_BT2_LEAF, %bb.p ] ; 3 uses
  %.2549 = phi i64 [ %i.y, %bb.i ], [ %i.bq, %bb.p ]
  %.2545.in = phi ptr [ %i.aw, %bb.i ], [ %i.co, %bb.p ]
  %.2541 = phi i64 [ %i.ak, %bb.i ], [ %i.cc, %bb.p ]
  %.2537 = phi ptr [ %i.r, %bb.i ], [ %i.bj, %bb.p ] ; 4 uses
  %.2533 = phi ptr [ %i.aq, %bb.i ], [ %i.ci, %bb.p ] ; 4 uses
  %.2529 = phi ptr [ %i.ad, %bb.i ], [ %i.bv, %bb.p ] ; 6 uses
  %.2526 = phi ptr [ %i.ax, %bb.i ], [ %i.cp, %bb.p ] ; 7 uses
  %.2523 = phi ptr [ %i.az, %bb.i ], [ %i.cr, %bb.p ] ; 6 uses
  %.2520 = phi ptr [ %i.ay, %bb.i ], [ %i.cq, %bb.p ] ; 5 uses
  %.2511.in = getelementptr inbounds nuw i8, ptr %.2529, i64 256
  %.2511 = load ptr, ptr %.2511.in, align 8, !tbaa !47 ; 12 uses
  %.2514.in = getelementptr inbounds nuw i8, ptr %.2533, i64 256
  %.2514 = load ptr, ptr %.2514.in, align 8, !tbaa !47 ; 8 uses
  %.2517.in = getelementptr inbounds nuw i8, ptr %.2537, i64 256
  %.2517 = load ptr, ptr %.2517.in, align 8, !tbaa !47 ; 4 uses
  %.2545 = load i64, ptr %.2545.in, align 8, !tbaa !46
  %i.cs = load i16, ptr %.2526, align 2, !tbaa !48 ; 2 uses
  %i.ct = zext i16 %i.cs to i32                   ; 2 uses
  %i.cu = load i16, ptr %.2520, align 2, !tbaa !48 ; 3 uses
  %i.cv = zext i16 %i.cu to i32
  %i.cw = add nuw nsw i32 %i.cv, %i.ct
  %i.cx = load i16, ptr %.2523, align 2, !tbaa !48 ; 2 uses
  %i.cy = zext i16 %i.cx to i32                   ; 2 uses
  %i.cz = add nuw nsw i32 %i.cw, %i.cy            ; 3 uses
  %i.da = udiv i32 %i.cz, 3                       ; 3 uses
  %i.db = trunc nuw i32 %i.da to i16
  %i.dc = sub nuw nsw i32 %i.cz, %i.da
  %i.dd = lshr i32 %i.dc, 1                       ; 4 uses
  %i.de = trunc i32 %i.dd to i16
  %i.df = and i32 %i.dd, 65535                    ; 9 uses
  %5 = add nuw nsw i32 %i.da, %i.dd
  %i.dg = sub nsw i32 %i.cz, %5                   ; 2 uses
  %i.dh = trunc i32 %i.dg to i16
  %i.di = icmp samesign ugt i32 %i.df, %i.ct
  br i1 %i.di, label %bb.r, label %bb.z

bb.r:                                             ; preds = %bb.q
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 4 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !39 ; 2 uses
  %i.dl = zext i16 %i.cs to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.dl
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !19
  %i.do = getelementptr inbounds nuw i8, ptr %.2517, i64 %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !34
  %i.dr = add i32 %4, -1
  %i.ds = zext i32 %i.dr to i64                   ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.ds
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !19
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 4 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !40
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !41
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.do, ptr align 1 %i.dv, i64 %i.dz, i1 false)
  %i.ea = add nsw i32 %i.df, -1
  %i.eb = load i16, ptr %.2526, align 2, !tbaa !48
  %i.ec = zext i16 %i.eb to i32                   ; 2 uses
  %i.ed = icmp samesign ugt i32 %i.ea, %i.ec
  br i1 %i.ed, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ee = add nuw nsw i32 %i.ec, 1                ; 2 uses
  %i.ef = sub nsw i32 %i.dd, %i.ee                ; 2 uses
  %i.eg = trunc i32 %i.ef to i16
  %i.eh = load ptr, ptr %i.dj, align 8, !tbaa !39 ; 2 uses
  %i.ei = zext nneg i32 %i.ee to i64
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.ei
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !19
  %i.el = getelementptr inbounds nuw i8, ptr %.2517, i64 %i.ek
  %i.em = load i64, ptr %i.eh, align 8, !tbaa !19
  %i.en = getelementptr inbounds nuw i8, ptr %.2511, i64 %i.em
  %i.eo = load ptr, ptr %i.dw, align 8, !tbaa !40
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !41
  %.mask = and i32 %i.ef, 65535
  %i.er = zext nneg i32 %.mask to i64
  %i.es = mul i64 %i.eq, %i.er
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.el, ptr align 1 %i.en, i64 %i.es, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0453 = phi i16 [ %i.eg, %bb.s ], [ 0, %bb.r ] ; 2 uses
  %i.et = load ptr, ptr %i.dp, align 8, !tbaa !34
  %i.eu = load ptr, ptr %i.dj, align 8, !tbaa !39 ; 2 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.ds
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !19
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.ew
  %i.ey = zext i16 %.0453 to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.ey
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !19
  %i.fb = getelementptr inbounds nuw i8, ptr %.2511, i64 %i.fa
  %i.fc = load ptr, ptr %i.dw, align 8, !tbaa !40
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !41
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ex, ptr align 1 %i.fb, i64 %i.fe, i1 false)
  %i.ff = add i16 %.0453, 1                       ; 4 uses
  %i.fg = load ptr, ptr %i.dj, align 8, !tbaa !39 ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !19
  %i.fi = getelementptr inbounds nuw i8, ptr %.2511, i64 %i.fh
  %i.fj = zext i16 %i.ff to i64
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.fj
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !19
  %i.fm = getelementptr inbounds nuw i8, ptr %.2511, i64 %i.fl
  %i.fn = load ptr, ptr %i.dw, align 8, !tbaa !40
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !41
  %i.fq = load i16, ptr %.2520, align 2, !tbaa !48
  %i.fr = zext i16 %i.fq to i32
  %i.fs = zext i16 %i.ff to i32                   ; 2 uses
  %i.ft = sub nsw i32 %i.fr, %i.fs
  %i.fu = sext i32 %i.ft to i64
  %i.fv = mul i64 %i.fp, %i.fu
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.fi, ptr align 1 %i.fm, i64 %i.fv, i1 false)
  br i1 %i.h, label %bb.u, label %.thread653

bb.u:                                             ; preds = %bb.t
  %i.fw = load i16, ptr %.2526, align 2, !tbaa !48 ; 2 uses
  %i.fx = zext i16 %i.fw to i32                   ; 2 uses
  %i.fy = sub nsw i32 %i.df, %i.fx                ; 3 uses
  %i.fz = zext i16 %i.fw to i64
  %i.ga = getelementptr inbounds nuw [24 x i8], ptr %.1558, i64 %i.fz
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  %i.gc = zext i32 %i.fy to i64                   ; 5 uses
  %i.gd = mul nuw nsw i64 %i.gc, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gb, ptr align 8 %.1554, i64 %i.gd, i1 false)
  %.not = icmp eq i32 %i.df, %i.fx
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.u
  %xtraiter = and i64 %i.gc, 3                    ; 3 uses
  %i.ge = icmp ult i32 %i.fy, 4
  br i1 %i.ge, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.gc, 4294967292
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %.0452776 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.gu, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.gf = getelementptr inbounds nuw [24 x i8], ptr %.1554, i64 %indvars.iv
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !44
  %i.gi = add i64 %i.gh, %.0452776
  %i.gj = getelementptr inbounds nuw [24 x i8], ptr %.1554, i64 %indvars.iv
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 40
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !44
  %i.gm = add i64 %i.gl, %i.gi
  %i.gn = getelementptr inbounds nuw [24 x i8], ptr %.1554, i64 %indvars.iv
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 64
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !44
  %i.gq = add i64 %i.gp, %i.gm
  %i.gr = getelementptr inbounds nuw [24 x i8], ptr %.1554, i64 %indvars.iv
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 88
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !44
  %i.gu = add i64 %i.gt, %i.gq                    ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !83

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.0452776.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.gu, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod854 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod854)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.epil ], [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.0452776.epil = phi i64 [ %i.gy, %.lr.ph.epil ], [ %.0452776.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.gv = getelementptr inbounds nuw [24 x i8], ptr %.1554, i64 %indvars.iv.epil
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !44
  %i.gy = add i64 %i.gx, %.0452776.epil           ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !84

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.u
  %.0452.lcssa = phi i64 [ 0, %bb.u ], [ %i.gu, %._crit_edge.loopexit.unr-lcssa ], [ %i.gy, %.lr.ph.epil ]
  %i.gz = add i64 %.0452.lcssa, %i.gc             ; 4 uses
  %i.ha = sub nsw i64 0, %i.gz                    ; 3 uses
  %i.hb = getelementptr inbounds nuw [24 x i8], ptr %.1554, i64 %i.gc
  %i.hc = load i16, ptr %.2520, align 2, !tbaa !48
  %i.hd = zext i16 %i.hc to i32
  %reass.sub = sub nsw i32 %i.hd, %i.fy
  %i.he = add nsw i32 %reass.sub, 1
  %i.hf = zext i32 %i.he to i64
  %i.hg = mul nuw nsw i64 %i.hf, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.1554, ptr align 8 %i.hb, i64 %i.hg, i1 false)
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.hi = load i8, ptr %i.hh, align 8, !tbaa !45, !range !11, !noundef !12
  %i.hj = trunc nuw i8 %i.hi to i1
  br i1 %i.hj, label %bb.v, label %.thread653

bb.v:                                             ; preds = %._crit_edge
  %i.hk = load i8, ptr @H5B2_init_g, align 1, !tbaa !10, !range !11, !noundef !12
  %i.hl = trunc nuw i8 %i.hk to i1
  %i.hm = load i8, ptr @H5_libterm_g, align 1, !range !11
  %i.hn = trunc nuw i8 %i.hm to i1
  %i.ho = xor i1 %i.hn, true
  %i.hp = select i1 %i.hl, i1 true, i1 %i.ho
  %i.hq = icmp ne i16 %i.ff, 0
  %or.cond.i = and i1 %i.hq, %i.hp
  br i1 %or.cond.i, label %.lr.ph.i, label %.thread653, !prof !50

.lr.ph.i:                                         ; preds = %bb.v
  %i.hr = add nuw nsw i32 %i.fs, 1
  %i.hs = load i16, ptr %.2526, align 2, !tbaa !48
  %i.ht = zext i16 %i.hs to i32                   ; 2 uses
  %i.hu = add nuw nsw i32 %i.hr, %i.ht
  %i.hv = add nuw nsw i32 %i.ht, 1
  %i.hw = add nsw i32 %i.g, -1
  %i.hx = zext nneg i32 %i.hv to i64
  %zext = zext nneg i32 %i.hu to i64
  br label %bb.x

bb.w:                                             ; preds = %bb.x
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.hy = icmp eq i64 %indvars.iv.next.i, %zext
  br i1 %i.hy, label %.thread653, label %bb.x, !llvm.loop !0

bb.x:                                             ; preds = %bb.w, %.lr.ph.i
end_hunk_0
