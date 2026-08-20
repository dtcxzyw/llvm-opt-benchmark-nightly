inline.NumInlined: 14
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@H5B2__split1:bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !46, !range !10, !noundef !11
  %i.bi = trunc nuw i8 %i.bh to i1
  %i.bj = tail call ptr @H5B2__protect_internal(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %i.bf, i16 noundef zeroext %i.ax, i1 noundef zeroext %i.bi, i32 noundef 0) #4 ; 4 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bl = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.bm = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !19
  %i.bn = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__split1, i32 noundef 178, i64 noundef %i.bl, i64 noundef %i.bm, ptr noundef nonnull @.str.3) #4 ; 0 uses
  br label %.thread

bb.i:                                             ; preds = %bb.g
  %i.bo = load ptr, ptr %i.aq, align 8, !tbaa !43 ; 2 uses
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %i.be
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !47
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %i.at
  %i.bs = tail call ptr @H5B2__protect_internal(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef %i.br, i16 noundef zeroext %i.ax, i1 noundef zeroext false, i32 noundef 0) #4 ; 4 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bu = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.bv = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !19
  %i.bw = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__split1, i32 noundef 182, i64 noundef %i.bu, i64 noundef %i.bv, ptr noundef nonnull @.str.3) #4 ; 0 uses
  br label %.thread

bb.k:                                             ; preds = %bb.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 272
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 272
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bj, i64 264
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !43
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 264
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !43
  br label %bb.s

bb.l:                                             ; preds = %bb.d
  %i.cd = tail call i32 @H5B2__create_leaf(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %i.au) #4
  %i.ce = icmp slt i32 %i.cd, 0
  br i1 %i.ce, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cf = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.cg = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !19
  %i.ch = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__split1, i32 noundef 201, i64 noundef %i.cf, i64 noundef %i.cg, ptr noundef nonnull @.str.4) #4 ; 0 uses
  br label %.thread

bb.n:                                             ; preds = %bb.l
  %i.ci = load ptr, ptr %i.aq, align 8, !tbaa !43
  %i.cj = zext i32 %6 to i64                      ; 3 uses
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.ci, i64 %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.cm = load i8, ptr %i.cl, align 8, !tbaa !46, !range !10, !noundef !11
  %i.cn = trunc nuw i8 %i.cm to i1
  %i.co = tail call ptr @H5B2__protect_leaf(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %i.ck, i1 noundef zeroext %i.cn, i32 noundef 0) #4 ; 3 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cq = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.cr = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !19
  %i.cs = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__split1, i32 noundef 210, i64 noundef %i.cq, i64 noundef %i.cr, ptr noundef nonnull @.str.5) #4 ; 0 uses
  br label %.thread

bb.p:                                             ; preds = %bb.n
  %i.ct = load ptr, ptr %i.aq, align 8, !tbaa !43 ; 2 uses
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.ct, i64 %i.cj
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !47
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %i.ct, i64 %i.at
  %i.cx = tail call ptr @H5B2__protect_leaf(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef %i.cw, i1 noundef zeroext false, i32 noundef 0) #4 ; 3 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cz = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.da = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !19
  %i.db = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__split1, i32 noundef 214, i64 noundef %i.cz, i64 noundef %i.da, ptr noundef nonnull @.str.5) #4 ; 0 uses
  br label %.thread

bb.r:                                             ; preds = %bb.p
  %i.dc = getelementptr inbounds nuw i8, ptr %i.co, i64 264
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cx, i64 264
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.k
  %.pre-phi = phi i64 [ %i.cj, %bb.r ], [ %i.be, %bb.k ] ; 3 uses
  %.2224 = phi ptr [ @H5AC_BT2_LEAF, %bb.r ], [ @H5AC_BT2_INT, %bb.k ] ; 2 uses
  %.2220 = phi i64 [ %i.cv, %bb.r ], [ %i.bq, %bb.k ]
  %.2212 = phi ptr [ %i.co, %bb.r ], [ %i.bj, %bb.k ] ; 3 uses
  %.2208 = phi ptr [ %i.cx, %bb.r ], [ %i.bs, %bb.k ] ; 3 uses
  %.2205 = phi ptr [ %i.dc, %bb.r ], [ %i.bx, %bb.k ] ; 2 uses
  %.2202 = phi ptr [ %i.dd, %bb.r ], [ %i.by, %bb.k ] ; 3 uses
  %.1193 = phi ptr [ null, %bb.r ], [ %i.ca, %bb.k ] ; 6 uses
  %.1191 = phi ptr [ null, %bb.r ], [ %i.cc, %bb.k ] ; 7 uses
  %i.de = load ptr, ptr %i.aq, align 8, !tbaa !43 ; 2 uses
  %.2216.in = getelementptr inbounds nuw [24 x i8], ptr %i.de, i64 %i.at
  %.2196.in = getelementptr inbounds nuw i8, ptr %.2208, i64 256
  %.2196 = load ptr, ptr %.2196.in, align 8, !tbaa !48
  %.2199.in = getelementptr inbounds nuw i8, ptr %.2212, i64 256
  %.2199 = load ptr, ptr %.2199.in, align 8, !tbaa !48 ; 2 uses
  %.2216 = load i64, ptr %.2216.in, align 8, !tbaa !47
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 264
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.de, i64 %.pre-phi
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load i16, ptr %i.dh, align 8, !tbaa !44 ; 2 uses
  %i.dj = zext i16 %i.di to i32                   ; 2 uses
  %i.dk = lshr i16 %i.di, 1                       ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !36 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !19
  %i.do = getelementptr inbounds nuw i8, ptr %.2196, i64 %i.dn
  %i.dp = zext nneg i16 %i.dk to i32              ; 2 uses
  %i.dq = add nuw nsw i32 %i.dp, 1                ; 2 uses
  %i.dr = zext nneg i32 %i.dq to i64              ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dr
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !19
  %i.du = getelementptr inbounds nuw i8, ptr %.2199, i64 %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !41
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !42
  %i.dz = sub nsw i32 %i.dj, %i.dq                ; 4 uses
  %i.ea = zext i32 %i.dz to i64
  %i.eb = mul i64 %i.dy, %i.ea
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.do, ptr align 1 %i.du, i64 %i.eb, i1 false)
  br i1 %i.ap, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ec = getelementptr inbounds nuw [24 x i8], ptr %.1193, i64 %i.dr
  %i.ed = sub nsw i32 %i.dj, %i.dp
  %narrow = mul nsw i32 %i.ed, 24
  %i.ee = sext i32 %narrow to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.1191, ptr nonnull align 8 %i.ec, i64 %i.ee, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 256
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !35
  %i.eh = load ptr, ptr %i.dl, align 8, !tbaa !36 ; 2 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %.pre-phi
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !19
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ej
  %i.el = zext nneg i16 %i.dk to i64
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.el
  %i.en = load i64, ptr %i.em, align 8, !tbaa !19
  %i.eo = getelementptr inbounds nuw i8, ptr %.2199, i64 %i.en
  %i.ep = load ptr, ptr %i.dv, align 8, !tbaa !41
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !42
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ek, ptr align 1 %i.eo, i64 %i.er, i1 false)
  store i16 %i.dk, ptr %.2205, align 2, !tbaa !49
  %i.es = load ptr, ptr %i.df, align 8, !tbaa !43 ; 2 uses
  %i.et = getelementptr inbounds nuw [24 x i8], ptr %i.es, i64 %.pre-phi ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 2 uses
  store i16 %i.dk, ptr %i.eu, align 8, !tbaa !44
  %i.ev = trunc i32 %i.dz to i16                  ; 2 uses
  store i16 %i.ev, ptr %.2202, align 2, !tbaa !49
  %i.ew = add i32 %6, 1
  %i.ex = zext i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [24 x i8], ptr %i.es, i64 %i.ex ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store i16 %i.ev, ptr %i.ez, align 8, !tbaa !44
  %i.fa = load i16, ptr %i.eu, align 8, !tbaa !44
  %i.fb = zext i16 %i.fa to i64                   ; 3 uses
  br i1 %i.ap, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %bb.u
  %i.fc = load i16, ptr %.2205, align 2, !tbaa !49 ; 2 uses
  %i.fd = zext i16 %i.fc to i64
  %i.fe = add nuw nsw i64 %i.fd, 1                ; 2 uses
  %xtraiter = and i64 %i.fe, 3                    ; 3 uses
  %i.ff = icmp ult i16 %i.fc, 3
  br i1 %i.ff, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.v
  %unroll_iter = and i64 %i.fe, 131068
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.new
  %indvars.iv = phi i64 [ 0, %.new ], [ %indvars.iv.next.3, %bb.w ] ; 5 uses
  %.0182295 = phi i64 [ %i.fb, %.new ], [ %i.fv, %bb.w ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.w ]
  %i.fg = getelementptr inbounds nuw [24 x i8], ptr %.1193, i64 %indvars.iv
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !45
  %i.fj = add i64 %i.fi, %.0182295
  %i.fk = getelementptr inbounds nuw [24 x i8], ptr %.1193, i64 %indvars.iv
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 40
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !45
  %i.fn = add i64 %i.fm, %i.fj
  %i.fo = getelementptr inbounds nuw [24 x i8], ptr %.1193, i64 %indvars.iv
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 64
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !45
  %i.fr = add i64 %i.fq, %i.fn
  %i.fs = getelementptr inbounds nuw [24 x i8], ptr %.1193, i64 %indvars.iv
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 88
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !45
  %i.fv = add i64 %i.fu, %i.fr                    ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.w, !llvm.loop !50

.unr-lcssa:                                       ; preds = %bb.w
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.v
  %indvars.iv.epil.init = phi i64 [ 0, %bb.v ], [ %indvars.iv.next.3, %.unr-lcssa ]
  %.0182295.epil.init = phi i64 [ %i.fb, %bb.v ], [ %i.fv, %.unr-lcssa ]
  %lcmp.mod317 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod317)
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.x ] ; 2 uses
  %.0182295.epil = phi i64 [ %.0182295.epil.init, %.epil.preheader ], [ %i.fz, %bb.x ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.x ]
  %i.fw = getelementptr inbounds nuw [24 x i8], ptr %.1193, i64 %indvars.iv.epil
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !45
  %i.fz = add i64 %i.fy, %.0182295.epil           ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.x, !llvm.loop !51

.epilog-lcssa:                                    ; preds = %bb.x, %.unr-lcssa
  %.lcssa315 = phi i64 [ %i.fv, %.unr-lcssa ], [ %i.fz, %bb.x ]
  %.mask293 = and i32 %i.dz, 65535
  %i.ga = zext nneg i32 %.mask293 to i64          ; 2 uses
  %i.gb = load i16, ptr %.2202, align 2, !tbaa !49 ; 2 uses
  %i.gc = zext i16 %i.gb to i64
  %i.gd = add nuw nsw i64 %i.gc, 1                ; 2 uses
  %xtraiter321 = and i64 %i.gd, 3                 ; 3 uses
  %i.ge = icmp ult i16 %i.gb, 3
  br i1 %i.ge, label %.epil.preheader320, label %.new318

.new318:                                          ; preds = %.epilog-lcssa
  %unroll_iter327 = and i64 %i.gd, 131068
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.new318
  %indvars.iv300 = phi i64 [ 0, %.new318 ], [ %indvars.iv.next301.3, %bb.y ] ; 5 uses
  %.0297 = phi i64 [ %i.ga, %.new318 ], [ %i.gu, %bb.y ]
  %niter328 = phi i64 [ 0, %.new318 ], [ %niter328.next.3, %bb.y ]
  %i.gf = getelementptr inbounds nuw [24 x i8], ptr %.1191, i64 %indvars.iv300
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !45
  %i.gi = add i64 %i.gh, %.0297
  %i.gj = getelementptr inbounds nuw [24 x i8], ptr %.1191, i64 %indvars.iv300
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 40
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !45
  %i.gm = add i64 %i.gl, %i.gi
  %i.gn = getelementptr inbounds nuw [24 x i8], ptr %.1191, i64 %indvars.iv300
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 64
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !45
  %i.gq = add i64 %i.gp, %i.gm
  %i.gr = getelementptr inbounds nuw [24 x i8], ptr %.1191, i64 %indvars.iv300
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 88
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !45
  %i.gu = add i64 %i.gt, %i.gq                    ; 3 uses
  %indvars.iv.next301.3 = add nuw nsw i64 %indvars.iv300, 4 ; 2 uses
  %niter328.next.3 = add i64 %niter328, 4         ; 2 uses
  %niter328.ncmp.3 = icmp eq i64 %niter328.next.3, %unroll_iter327
  br i1 %niter328.ncmp.3, label %.unr-lcssa319, label %bb.y, !llvm.loop !53

.unr-lcssa319:                                    ; preds = %bb.y
  %lcmp.mod323.not = icmp eq i64 %xtraiter321, 0
  br i1 %lcmp.mod323.not, label %.epilog-lcssa324, label %.epil.preheader320

.epil.preheader320:                               ; preds = %.unr-lcssa319, %.epilog-lcssa
  %indvars.iv300.epil.init = phi i64 [ 0, %.epilog-lcssa ], [ %indvars.iv.next301.3, %.unr-lcssa319 ]
  %.0297.epil.init = phi i64 [ %i.ga, %.epilog-lcssa ], [ %i.gu, %.unr-lcssa319 ]
  %lcmp.mod326 = icmp ne i64 %xtraiter321, 0
  tail call void @llvm.assume(i1 %lcmp.mod326)
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.epil.preheader320
  %indvars.iv300.epil = phi i64 [ %indvars.iv300.epil.init, %.epil.preheader320 ], [ %indvars.iv.next301.epil, %bb.z ] ; 2 uses
  %.0297.epil = phi i64 [ %.0297.epil.init, %.epil.preheader320 ], [ %i.gy, %bb.z ]
  %epil.iter322 = phi i64 [ 0, %.epil.preheader320 ], [ %epil.iter322.next, %bb.z ]
  %i.gv = getelementptr inbounds nuw [24 x i8], ptr %.1191, i64 %indvars.iv300.epil
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !45
  %i.gy = add i64 %i.gx, %.0297.epil              ; 2 uses
  %indvars.iv.next301.epil = add nuw nsw i64 %indvars.iv300.epil, 1
  %epil.iter322.next = add i64 %epil.iter322, 1   ; 2 uses
  %epil.iter322.cmp.not = icmp eq i64 %epil.iter322.next, %xtraiter321
  br i1 %epil.iter322.cmp.not, label %.epilog-lcssa324, label %bb.z, !llvm.loop !54

.epilog-lcssa324:                                 ; preds = %bb.z, %.unr-lcssa319
  %.lcssa = phi i64 [ %i.gu, %.unr-lcssa319 ], [ %i.gy, %bb.z ]
  %i.gz = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store i64 %.lcssa315, ptr %i.gz, align 8, !tbaa !45
  br label %bb.ab

bb.aa:                                            ; preds = %bb.u
  %i.ha = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store i64 %i.fb, ptr %i.ha, align 8, !tbaa !45
  %.mask = and i32 %i.dz, 65535
  %i.hb = zext nneg i32 %.mask to i64
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.epilog-lcssa324
  %.sink = phi i64 [ %i.hb, %bb.aa ], [ %.lcssa, %.epilog-lcssa324 ]
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store i64 %.sink, ptr %i.hc, align 8, !tbaa !45
  %i.hd = load i16, ptr %i.g, align 8, !tbaa !22
  %i.he = add i16 %i.hd, 1
  store i16 %i.he, ptr %i.g, align 8, !tbaa !22
  %i.hf = load i32, ptr %5, align 4, !tbaa !13
  %i.hg = or i32 %i.hf, 2
  store i32 %i.hg, ptr %5, align 4, !tbaa !13
  %i.hh = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.hi = load i16, ptr %i.hh, align 8, !tbaa !44
  %i.hj = add i16 %i.hi, 1
  store i16 %i.hj, ptr %i.hh, align 8, !tbaa !44
  %.not237 = icmp eq ptr %3, null
  br i1 %.not237, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hk = load i32, ptr %3, align 4, !tbaa !13
  %i.hl = or i32 %i.hk, 2
  store i32 %i.hl, ptr %3, align 4, !tbaa !13
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.hn = load i8, ptr %i.hm, align 8, !tbaa !46, !range !10, !noundef !11
  %i.ho = trunc nuw i8 %i.hn to i1
  %or.cond = and i1 %i.ap, %i.ho
  br i1 %or.cond, label %bb.ae, label %H5B2__update_child_flush_depends.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.hp = load i8, ptr @H5B2_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.hq = trunc nuw i8 %i.hp to i1
  %i.hr = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.hs = trunc nuw i8 %i.hr to i1
  %i.ht = xor i1 %i.hs, true
  %i.hu = select i1 %i.hq, i1 true, i1 %i.ht
  br i1 %i.hu, label %.lr.ph.i, label %H5B2__update_child_flush_depends.exit.thread, !prof !55

.lr.ph.i:                                         ; preds = %bb.ae
  %i.hv = load i16, ptr %.2202, align 2, !tbaa !49
  %i.hw = zext i16 %i.hv to i64
  %i.hx = add nsw i32 %i.ao, -1
  br label %bb.ag

bb.af:                                            ; preds = %bb.ag
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.hy = icmp eq i64 %indvars.iv.i, %i.hw
  br i1 %i.hy, label %H5B2__update_child_flush_depends.exit.thread, label %bb.ag, !llvm.loop !56

bb.ag:                                            ; preds = %bb.af, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.af ] ; 3 uses
  %i.hz = getelementptr inbounds nuw [24 x i8], ptr %.1191, i64 %indvars.iv.i
  %i.ia = tail call i32 @H5B2__update_flush_depend(ptr noundef %0, i32 noundef %i.hx, ptr noundef %i.hz, ptr noundef nonnull %.2212, ptr noundef nonnull %.2208)
  %i.ib = icmp slt i32 %i.ia, 0
  br i1 %i.ib, label %bb.ah, label %bb.af

bb.ah:                                            ; preds = %bb.ag
  %i.ic = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.id = load i64, ptr @H5E_CANTUPDATE_g, align 8, !tbaa !19
  %i.ie = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__update_child_flush_depends, i32 noundef 1989, i64 noundef %i.ic, i64 noundef %i.id, ptr noundef nonnull @.str.29) #4 ; 0 uses
  %i.if = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.ig = load i64, ptr @H5E_CANTUPDATE_g, align 8, !tbaa !19
  %i.ih = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__split1, i32 noundef 294, i64 noundef %i.if, i64 noundef %i.ig, ptr noundef nonnull @.str.6) #4 ; 0 uses
  br label %H5B2__update_child_flush_depends.exit.thread

H5B2__update_child_flush_depends.exit.thread:     ; preds = %bb.af, %bb.ah, %bb.ad, %bb.ae
  %.3 = phi i32 [ -1, %bb.ah ], [ 0, %bb.ad ], [ 0, %bb.ae ], [ 0, %bb.af ]
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !57
  %i.ik = tail call i32 @H5AC_unprotect(ptr noundef %i.ij, ptr noundef nonnull %.2224, i64 noundef %.2220, ptr noundef nonnull %.2212, i32 noundef 2) #4
  %i.il = icmp slt i32 %i.ik, 0
  br i1 %i.il, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %H5B2__update_child_flush_depends.exit.thread
  %i.im = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.in = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !19
  %i.io = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__split1, i32 noundef 313, i64 noundef %i.im, i64 noundef %i.in, ptr noundef nonnull @.str.7) #4 ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %H5B2__update_child_flush_depends.exit.thread
  %.4.ph = phi i32 [ -1, %bb.ai ], [ %.3, %H5B2__update_child_flush_depends.exit.thread ]
  %i.ip = load ptr, ptr %i.ii, align 8, !tbaa !57
  %i.iq = tail call i32 @H5AC_unprotect(ptr noundef %i.ip, ptr noundef nonnull %.2224, i64 noundef %.2216, ptr noundef nonnull %.2208, i32 noundef 2) #4
  %i.ir = icmp slt i32 %i.iq, 0
  br i1 %i.ir, label %bb.ak, label %.thread

bb.ak:                                            ; preds = %bb.aj
  %i.is = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.it = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !19
  %i.iu = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__split1, i32 noundef 315, i64 noundef %i.is, i64 noundef %i.it, ptr noundef nonnull @.str.7) #4 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.q, %bb.o, %bb.m, %bb.j, %bb.h, %bb.f, %bb.a, %bb.ak, %bb.aj
  %.5 = phi i32 [ -1, %bb.ak ], [ %.4.ph, %bb.aj ], [ 0, %bb.a ], [ -1, %bb.j ], [ -1, %bb.f ], [ -1, %bb.h ], [ -1, %bb.m ], [ -1, %bb.o ], [ -1, %bb.q ]
  ret i32 %.5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare i32 @H5B2__create_internal(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

declare ptr @H5B2__protect_internal(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare i32 @H5B2__create_leaf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @H5B2__protect_leaf(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @H5AC_unprotect(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5B2__split_root(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %1 = alloca %struct.H5B2_node_ptr_t, align 8    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 0, ptr %i.a, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.b = load i8, ptr @H5B2_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = xor i1 %i.e, true
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  br i1 %i.g, label %bb.b, label %.thread, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 7 uses
  %i.i = load i16, ptr %i.h, align 4, !tbaa !58
  %i.j = add i16 %i.i, 1                          ; 2 uses
  store i16 %i.j, ptr %i.h, align 4, !tbaa !58
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !59
  %i.m = zext i16 %i.j to i64
  %i.n = add nuw nsw i64 %i.m, 1
  %i.o = tail call ptr @H5FL_seq_realloc(ptr noundef nonnull @H5_H5B2_node_info_t_seq_free_list, ptr noundef %i.l, i64 noundef %i.n) #4 ; 3 uses
  store ptr %i.o, ptr %i.k, align 8, !tbaa !59
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = load i64, ptr @H5E_RESOURCE_g, align 8, !tbaa !19
  %i.r = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !19
  %i.s = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__split_root, i32 noundef 351, i64 noundef %i.q, i64 noundef %i.r, ptr noundef nonnull @.str.8) #4 ; 0 uses
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.u = load i32, ptr %i.t, align 4, !tbaa !60
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 330
  %i.w = load i8, ptr %i.v, align 2, !tbaa !61
  %i.x = zext i8 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 286
  %i.z = load i8, ptr %i.y, align 2, !tbaa !62
  %i.aa = zext i8 %i.z to i32
  %i.ab = add nuw nsw i32 %i.aa, %i.x
end_hunk_0
begin_hunk_1_@H5B2__redistribute2:bb.a
bb.e:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !43   ; 2 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.k
  %i.x = load i64, ptr %i.w, align 8, !tbaa !47
  %i.y = add i32 %3, 1
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.z
  %i.ab = load i8, ptr %i.n, align 8, !tbaa !46, !range !10, !noundef !11
  %i.ac = trunc nuw i8 %i.ab to i1
  %i.ad = tail call ptr @H5B2__protect_internal(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %i.aa, i16 noundef zeroext %i.m, i1 noundef zeroext %i.ac, i32 noundef 0) #4 ; 4 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.ag = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !19
  %i.ah = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__redistribute2, i32 noundef 448, i64 noundef %i.af, i64 noundef %i.ag, ptr noundef nonnull @.str.5) #4 ; 0 uses
  br label %.thread

bb.g:                                             ; preds = %bb.e
  %i.ai = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %i.z
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 272
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 272
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 264
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !43
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 264
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !43
  br label %bb.m

bb.h:                                             ; preds = %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !46, !range !10, !noundef !11
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = tail call ptr @H5B2__protect_leaf(ptr noundef %0, ptr noundef %2, ptr noundef %i.l, i1 noundef zeroext %i.as, i32 noundef 0) #4 ; 3 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.av = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.aw = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !19
  %i.ax = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__redistribute2, i32 noundef 472, i64 noundef %i.av, i64 noundef %i.aw, ptr noundef nonnull @.str.5) #4 ; 0 uses
  br label %.thread

bb.j:                                             ; preds = %bb.h
  %i.ay = load ptr, ptr %i.i, align 8, !tbaa !43  ; 2 uses
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.ay, i64 %i.k
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !47
  %i.bb = add i32 %3, 1
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.ay, i64 %i.bc
  %i.be = load i8, ptr %i.aq, align 8, !tbaa !46, !range !10, !noundef !11
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = tail call ptr @H5B2__protect_leaf(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %i.bd, i1 noundef zeroext %i.bf, i32 noundef 0) #4 ; 3 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bi = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.bj = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !19
  %i.bk = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__redistribute2, i32 noundef 476, i64 noundef %i.bi, i64 noundef %i.bj, ptr noundef nonnull @.str.5) #4 ; 0 uses
  br label %.thread

bb.l:                                             ; preds = %bb.j
  %i.bl = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %i.bc
  %i.bn = getelementptr inbounds nuw i8, ptr %i.at, i64 264
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 264
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.g
  %.0294 = phi ptr [ @H5AC_BT2_INT, %bb.g ], [ @H5AC_BT2_LEAF, %bb.l ] ; 2 uses
  %.2292 = phi i64 [ %i.x, %bb.g ], [ %i.ba, %bb.l ]
  %.2288.in = phi ptr [ %i.aj, %bb.g ], [ %i.bm, %bb.l ]
  %.2284 = phi ptr [ %i.q, %bb.g ], [ %i.at, %bb.l ] ; 4 uses
  %.2280 = phi ptr [ %i.ad, %bb.g ], [ %i.bg, %bb.l ] ; 4 uses
  %.2277 = phi ptr [ %i.ak, %bb.g ], [ %i.bn, %bb.l ] ; 10 uses
  %.2274 = phi ptr [ %i.al, %bb.g ], [ %i.bo, %bb.l ] ; 5 uses
  %.1265 = phi ptr [ %i.an, %bb.g ], [ null, %bb.l ] ; 3 uses
  %.1263 = phi ptr [ %i.ap, %bb.g ], [ null, %bb.l ] ; 17 uses
  %.2268.in = getelementptr inbounds nuw i8, ptr %.2280, i64 256
  %.2268 = load ptr, ptr %.2268.in, align 8, !tbaa !48 ; 8 uses
  %.2271.in = getelementptr inbounds nuw i8, ptr %.2284, i64 256
  %.2271 = load ptr, ptr %.2271.in, align 8, !tbaa !48 ; 4 uses
  %.2288 = load i64, ptr %.2288.in, align 8, !tbaa !47
  %i.bp = load i16, ptr %.2277, align 2, !tbaa !49 ; 6 uses
  %i.bq = zext i16 %i.bp to i32
  %i.br = load i16, ptr %.2274, align 2, !tbaa !49 ; 6 uses
  %i.bs = zext i16 %i.br to i32
  %i.bt = icmp ult i16 %i.bp, %i.br
  %i.bu = add nuw nsw i32 %i.bs, %i.bq
  %i.bv = lshr i32 %i.bu, 1                       ; 4 uses
  %i.bw = trunc nuw i32 %i.bv to i16              ; 8 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 7 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !36 ; 4 uses
  br i1 %i.bt, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.bz = sub i16 %i.br, %i.bw                    ; 5 uses
  %i.ca = zext i16 %i.bp to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.ca
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !19
  %i.cd = getelementptr inbounds nuw i8, ptr %.2271, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !35
  %i.cg = zext i32 %3 to i64                      ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !19
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 4 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !41
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !42
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cd, ptr align 1 %i.cj, i64 %i.cn, i1 false)
  %i.co = zext i16 %i.bz to i32                   ; 2 uses
  %i.cp = icmp ugt i16 %i.bz, 1
  br i1 %i.cp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cq = load ptr, ptr %i.bx, align 8, !tbaa !36 ; 2 uses
  %i.cr = load i16, ptr %.2277, align 2, !tbaa !49
  %i.cs = zext i16 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !19
  %i.cw = getelementptr inbounds nuw i8, ptr %.2271, i64 %i.cv
  %i.cx = load i64, ptr %i.cq, align 8, !tbaa !19
  %i.cy = getelementptr inbounds nuw i8, ptr %.2268, i64 %i.cx
  %i.cz = load ptr, ptr %i.ck, align 8, !tbaa !41
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load i64, ptr %i.da, align 8, !tbaa !42
  %i.dc = add nsw i32 %i.co, -1
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = mul i64 %i.db, %i.dd
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cw, ptr align 1 %i.cy, i64 %i.de, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.df = load ptr, ptr %i.ce, align 8, !tbaa !35
  %i.dg = load ptr, ptr %i.bx, align 8, !tbaa !36 ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.cg
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !19
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.di
  %i.dk = zext i16 %i.bz to i64                   ; 8 uses
  %i.dl = getelementptr [8 x i8], ptr %i.dg, i64 %i.dk
  %i.dm = getelementptr i8, ptr %i.dl, i64 -8
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !19
  %i.do = getelementptr inbounds nuw i8, ptr %.2268, i64 %i.dn
  %i.dp = load ptr, ptr %i.ck, align 8, !tbaa !41
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !42
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dj, ptr align 1 %i.do, i64 %i.dr, i1 false)
  %i.ds = load ptr, ptr %i.bx, align 8, !tbaa !36 ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !19
  %i.du = getelementptr inbounds nuw i8, ptr %.2268, i64 %i.dt
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dk
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !19
  %i.dx = getelementptr inbounds nuw i8, ptr %.2268, i64 %i.dw
  %i.dy = load ptr, ptr %i.ck, align 8, !tbaa !41
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !42
  %i.eb = zext nneg i32 %i.bv to i64
  %i.ec = mul i64 %i.ea, %i.eb
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.du, ptr align 1 %i.dx, i64 %i.ec, i1 false)
  br i1 %i.h, label %.preheader, label %.thread355

.preheader:                                       ; preds = %bb.p
  %.not410 = icmp eq i16 %i.br, %i.bw
  br i1 %.not410, label %._crit_edge408, label %.lr.ph407.preheader

.lr.ph407.preheader:                              ; preds = %.preheader
  %xtraiter431 = and i64 %i.dk, 3                 ; 3 uses
  %i.ed = icmp ult i16 %i.bz, 4
  br i1 %i.ed, label %.lr.ph407.epil.preheader, label %.lr.ph407.preheader.new

.lr.ph407.preheader.new:                          ; preds = %.lr.ph407.preheader
  %unroll_iter436 = and i64 %i.dk, 65532
  br label %.lr.ph407

.lr.ph407:                                        ; preds = %.lr.ph407, %.lr.ph407.preheader.new
  %indvars.iv413 = phi i64 [ 0, %.lr.ph407.preheader.new ], [ %indvars.iv.next414.3, %.lr.ph407 ] ; 5 uses
  %.0242405 = phi i64 [ %i.dk, %.lr.ph407.preheader.new ], [ %i.et, %.lr.ph407 ]
  %niter437 = phi i64 [ 0, %.lr.ph407.preheader.new ], [ %niter437.next.3, %.lr.ph407 ]
  %i.ee = getelementptr inbounds nuw [24 x i8], ptr %.1263, i64 %indvars.iv413
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !45
  %i.eh = add i64 %i.eg, %.0242405
  %i.ei = getelementptr inbounds nuw [24 x i8], ptr %.1263, i64 %indvars.iv413
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 40
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !45
  %i.el = add i64 %i.ek, %i.eh
  %i.em = getelementptr inbounds nuw [24 x i8], ptr %.1263, i64 %indvars.iv413
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 64
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !45
  %i.ep = add i64 %i.eo, %i.el
  %i.eq = getelementptr inbounds nuw [24 x i8], ptr %.1263, i64 %indvars.iv413
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 88
  %i.es = load i64, ptr %i.er, align 8, !tbaa !45
  %i.et = add i64 %i.es, %i.ep                    ; 3 uses
  %indvars.iv.next414.3 = add nuw nsw i64 %indvars.iv413, 4 ; 2 uses
  %niter437.next.3 = add i64 %niter437, 4         ; 2 uses
  %niter437.ncmp.3 = icmp eq i64 %niter437.next.3, %unroll_iter436
  br i1 %niter437.ncmp.3, label %._crit_edge408.loopexit.unr-lcssa, label %.lr.ph407, !llvm.loop !77

._crit_edge408.loopexit.unr-lcssa:                ; preds = %.lr.ph407
  %lcmp.mod433.not = icmp eq i64 %xtraiter431, 0
  br i1 %lcmp.mod433.not, label %._crit_edge408, label %.lr.ph407.epil.preheader

.lr.ph407.epil.preheader:                         ; preds = %._crit_edge408.loopexit.unr-lcssa, %.lr.ph407.preheader
  %indvars.iv413.epil.init = phi i64 [ 0, %.lr.ph407.preheader ], [ %indvars.iv.next414.3, %._crit_edge408.loopexit.unr-lcssa ]
  %.0242405.epil.init = phi i64 [ %i.dk, %.lr.ph407.preheader ], [ %i.et, %._crit_edge408.loopexit.unr-lcssa ]
  %lcmp.mod435 = icmp ne i64 %xtraiter431, 0
  tail call void @llvm.assume(i1 %lcmp.mod435)
  br label %.lr.ph407.epil

.lr.ph407.epil:                                   ; preds = %.lr.ph407.epil, %.lr.ph407.epil.preheader
  %indvars.iv413.epil = phi i64 [ %indvars.iv413.epil.init, %.lr.ph407.epil.preheader ], [ %indvars.iv.next414.epil, %.lr.ph407.epil ] ; 2 uses
  %.0242405.epil = phi i64 [ %.0242405.epil.init, %.lr.ph407.epil.preheader ], [ %i.ex, %.lr.ph407.epil ]
  %epil.iter432 = phi i64 [ 0, %.lr.ph407.epil.preheader ], [ %epil.iter432.next, %.lr.ph407.epil ]
  %i.eu = getelementptr inbounds nuw [24 x i8], ptr %.1263, i64 %indvars.iv413.epil
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !45
  %i.ex = add i64 %i.ew, %.0242405.epil           ; 2 uses
  %indvars.iv.next414.epil = add nuw nsw i64 %indvars.iv413.epil, 1
  %epil.iter432.next = add i64 %epil.iter432, 1   ; 2 uses
  %epil.iter432.cmp.not = icmp eq i64 %epil.iter432.next, %xtraiter431
  br i1 %epil.iter432.cmp.not, label %._crit_edge408, label %.lr.ph407.epil, !llvm.loop !78

._crit_edge408:                                   ; preds = %._crit_edge408.loopexit.unr-lcssa, %.lr.ph407.epil, %.preheader
  %.0242.lcssa = phi i64 [ 0, %.preheader ], [ %i.et, %._crit_edge408.loopexit.unr-lcssa ], [ %i.ex, %.lr.ph407.epil ] ; 4 uses
  %i.ey = sub nsw i64 0, %.0242.lcssa             ; 3 uses
  %i.ez = load i16, ptr %.2277, align 2, !tbaa !49
  %i.fa = zext i16 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [24 x i8], ptr %.1265, i64 %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.fd = mul nuw nsw i64 %i.dk, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fc, ptr align 8 %.1263, i64 %i.fd, i1 false)
  %i.fe = getelementptr inbounds nuw [24 x i8], ptr %.1263, i64 %i.dk
  %i.ff = mul nuw nsw i32 %i.bv, 24
  %narrow = add nuw nsw i32 %i.ff, 24
  %i.fg = zext nneg i32 %narrow to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.1263, ptr noundef nonnull align 8 dereferenceable(1) %i.fe, i64 %i.fg, i1 false)
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.fi = load i8, ptr %i.fh, align 8, !tbaa !46, !range !10, !noundef !11
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %bb.q, label %.thread355

bb.q:                                             ; preds = %._crit_edge408
  %i.fk = load i8, ptr @H5B2_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.fl = trunc nuw i8 %i.fk to i1
  %i.fm = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.fn = trunc nuw i8 %i.fm to i1
  %i.fo = xor i1 %i.fn, true
  %i.fp = select i1 %i.fl, i1 true, i1 %i.fo
  %i.fq = icmp ne i16 %i.br, %i.bw
  %or.cond.i = and i1 %i.fq, %i.fp
  br i1 %or.cond.i, label %.lr.ph.i, label %.thread355, !prof !55

.lr.ph.i:                                         ; preds = %bb.q
  %4 = add nuw nsw i32 %i.co, 1
  %i.fr = load i16, ptr %.2277, align 2, !tbaa !49
  %i.fs = zext i16 %i.fr to i32                   ; 2 uses
  %i.ft = add nuw nsw i32 %4, %i.fs
  %i.fu = add nuw nsw i32 %i.fs, 1
  %i.fv = add nsw i32 %i.g, -1
  %i.fw = zext nneg i32 %i.fu to i64
  %zext418 = zext nneg i32 %i.ft to i64
  br label %bb.s

bb.r:                                             ; preds = %bb.s
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.fx = icmp eq i64 %indvars.iv.next.i, %zext418
  br i1 %i.fx, label %.thread355, label %bb.s, !llvm.loop !56

bb.s:                                             ; preds = %bb.r, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.fw, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.r ] ; 2 uses
  %i.fy = getelementptr inbounds nuw [24 x i8], ptr %.1265, i64 %indvars.iv.i
  %i.fz = tail call i32 @H5B2__update_flush_depend(ptr noundef %0, i32 noundef %i.fv, ptr noundef %i.fy, ptr noundef nonnull %.2280, ptr noundef nonnull %.2284)
  %i.ga = icmp slt i32 %i.fz, 0
  br i1 %i.ga, label %bb.t, label %bb.r

.thread355:                                       ; preds = %bb.r, %._crit_edge408, %bb.p, %bb.q
  %.0256353 = phi i64 [ %i.ey, %._crit_edge408 ], [ 0, %bb.p ], [ %i.ey, %bb.q ], [ %i.ey, %bb.r ]
  %.0259351 = phi i64 [ %.0242.lcssa, %._crit_edge408 ], [ 0, %bb.p ], [ %.0242.lcssa, %bb.q ], [ %.0242.lcssa, %bb.r ]
  %i.gb = load i16, ptr %.2277, align 2, !tbaa !49
  %i.gc = add i16 %i.gb, %i.bz
  store i16 %i.gc, ptr %.2277, align 2, !tbaa !49
  br label %bb.ac

bb.t:                                             ; preds = %bb.s
  %i.gd = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.ge = load i64, ptr @H5E_CANTUPDATE_g, align 8, !tbaa !19
  %i.gf = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__update_child_flush_depends, i32 noundef 1989, i64 noundef %i.gd, i64 noundef %i.ge, ptr noundef nonnull @.str.29) #4 ; 0 uses
  %i.gg = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.gh = load i64, ptr @H5E_CANTUPDATE_g, align 8, !tbaa !19
  %i.gi = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__redistribute2, i32 noundef 553, i64 noundef %i.gg, i64 noundef %i.gh, ptr noundef nonnull @.str.6) #4 ; 0 uses
  br label %bb.af

bb.u:                                             ; preds = %bb.m
  %i.gj = sub i16 %i.bp, %i.bw                    ; 6 uses
  %i.gk = zext i16 %i.gj to i64                   ; 7 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.gk
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !19
  %i.gn = getelementptr inbounds nuw i8, ptr %.2268, i64 %i.gm
  %i.go = load i64, ptr %i.by, align 8, !tbaa !19
  %i.gp = getelementptr inbounds nuw i8, ptr %.2268, i64 %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 4 uses
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !41
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !42
  %i.gu = zext i16 %i.br to i64
  %i.gv = mul i64 %i.gt, %i.gu
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.gn, ptr align 1 %i.gp, i64 %i.gv, i1 false)
  %i.gw = load ptr, ptr %i.bx, align 8, !tbaa !36 ; 2 uses
  %i.gx = zext i16 %i.gj to i32                   ; 3 uses
  %i.gy = add nsw i32 %i.gx, -1
  %i.gz = sext i32 %i.gy to i64                   ; 2 uses
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.gw, i64 %i.gz
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !19
  %i.hc = getelementptr inbounds nuw i8, ptr %.2268, i64 %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !35
  %i.hf = zext i32 %3 to i64                      ; 3 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.hf
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !19
  %i.hi = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.hh
  %i.hj = load ptr, ptr %i.gq, align 8, !tbaa !41
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !42
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hc, ptr align 1 %i.hi, i64 %i.hl, i1 false)
  %i.hm = icmp ugt i16 %i.gj, 1
  br i1 %i.hm, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.hn = load ptr, ptr %i.bx, align 8, !tbaa !36 ; 2 uses
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !19
  %i.hp = getelementptr inbounds nuw i8, ptr %.2268, i64 %i.ho
  %i.hq = load i16, ptr %.2277, align 2, !tbaa !49
  %i.hr = zext i16 %i.hq to i32
  %i.hs = sub nsw i32 %i.hr, %i.gx
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr [8 x i8], ptr %i.hn, i64 %i.ht
  %i.hv = getelementptr i8, ptr %i.hu, i64 8
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !19
  %i.hx = getelementptr inbounds nuw i8, ptr %.2271, i64 %i.hw
  %i.hy = load ptr, ptr %i.gq, align 8, !tbaa !41
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !42
  %i.ib = mul i64 %i.ia, %i.gz
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hp, ptr align 1 %i.hx, i64 %i.ib, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ic = load ptr, ptr %i.hd, align 8, !tbaa !35
  %i.id = load ptr, ptr %i.bx, align 8, !tbaa !36 ; 2 uses
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %i.hf
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !19
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.if
  %i.ih = load i16, ptr %.2277, align 2, !tbaa !49
  %i.ii = zext i16 %i.ih to i32
  %i.ij = sub nsw i32 %i.ii, %i.gx
  %i.ik = sext i32 %i.ij to i64
  %i.il = getelementptr inbounds [8 x i8], ptr %i.id, i64 %i.ik
  %i.im = load i64, ptr %i.il, align 8, !tbaa !19
  %i.in = getelementptr inbounds nuw i8, ptr %.2271, i64 %i.im
  %i.io = load ptr, ptr %i.gq, align 8, !tbaa !41
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !42
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ig, ptr align 1 %i.in, i64 %i.iq, i1 false)
  br i1 %i.h, label %bb.x, label %.thread370

bb.x:                                             ; preds = %bb.w
  %i.ir = getelementptr inbounds nuw [24 x i8], ptr %.1263, i64 %i.gk
  %i.is = load i16, ptr %.2274, align 2, !tbaa !49
  %i.it = zext i16 %i.is to i64
  %i.iu = mul nuw nsw i64 %i.it, 24
  %i.iv = add nuw nsw i64 %i.iu, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ir, ptr noundef nonnull align 8 dereferenceable(1) %.1263, i64 %i.iv, i1 false)
  %i.iw = zext nneg i32 %i.bv to i64
  %i.ix = getelementptr inbounds nuw [24 x i8], ptr %.1265, i64 %i.iw
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 24
  %i.iz = mul nuw nsw i64 %i.gk, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.1263, ptr nonnull align 8 %i.iy, i64 %i.iz, i1 false)
  %.not = icmp eq i16 %i.bp, %i.bw
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.x
  %xtraiter = and i64 %i.gk, 3                    ; 3 uses
  %i.ja = icmp ult i16 %i.gj, 4
  br i1 %i.ja, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.gk, 65532
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %.0240403 = phi i64 [ %i.gk, %.lr.ph.preheader.new ], [ %i.jq, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.jb = getelementptr inbounds nuw [24 x i8], ptr %.1263, i64 %indvars.iv
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !45
  %i.je = add i64 %i.jd, %.0240403
  %i.jf = getelementptr inbounds nuw [24 x i8], ptr %.1263, i64 %indvars.iv
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 40
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !45
  %i.ji = add i64 %i.jh, %i.je
  %i.jj = getelementptr inbounds nuw [24 x i8], ptr %.1263, i64 %indvars.iv
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 64
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !45
  %i.jm = add i64 %i.jl, %i.ji
  %i.jn = getelementptr inbounds nuw [24 x i8], ptr %.1263, i64 %indvars.iv
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 88
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !45
  %i.jq = add i64 %i.jp, %i.jm                    ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !79

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.0240403.epil.init = phi i64 [ %i.gk, %.lr.ph.preheader ], [ %i.jq, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod430 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod430)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %.0240403.epil = phi i64 [ %.0240403.epil.init, %.lr.ph.epil.preheader ], [ %i.ju, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.jr = getelementptr inbounds nuw [24 x i8], ptr %.1263, i64 %indvars.iv.epil
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !45
  %i.ju = add i64 %i.jt, %.0240403.epil           ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !80

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.x
  %.0240.lcssa = phi i64 [ 0, %bb.x ], [ %i.jq, %._crit_edge.loopexit.unr-lcssa ], [ %i.ju, %.lr.ph.epil ] ; 4 uses
  %i.jv = sub nsw i64 0, %.0240.lcssa             ; 3 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.jx = load i8, ptr %i.jw, align 8, !tbaa !46, !range !10, !noundef !11
  %i.jy = trunc nuw i8 %i.jx to i1
  br i1 %i.jy, label %bb.y, label %.thread370

bb.y:                                             ; preds = %._crit_edge
  %i.jz = load i8, ptr @H5B2_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.ka = trunc nuw i8 %i.jz to i1
  %i.kb = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.kc = trunc nuw i8 %i.kb to i1
  %i.kd = xor i1 %i.kc, true
  %i.ke = select i1 %i.ka, i1 true, i1 %i.kd
  %i.kf = icmp ne i16 %i.bp, %i.bw
  %or.cond.i314 = and i1 %i.kf, %i.ke
  br i1 %or.cond.i314, label %.lr.ph.i316, label %.thread370, !prof !55

.lr.ph.i316:                                      ; preds = %bb.y
  %i.kg = add nsw i32 %i.g, -1
  %zext = zext i16 %i.gj to i64
  br label %bb.aa

bb.z:                                             ; preds = %bb.aa
  %indvars.iv.next.i318 = add nuw nsw i64 %indvars.iv.i317, 1 ; 2 uses
  %i.kh = icmp eq i64 %indvars.iv.next.i318, %zext
  br i1 %i.kh, label %.thread370, label %bb.aa, !llvm.loop !56

bb.aa:                                            ; preds = %bb.z, %.lr.ph.i316
  %indvars.iv.i317 = phi i64 [ 0, %.lr.ph.i316 ], [ %indvars.iv.next.i318, %bb.z ] ; 2 uses
  %i.ki = getelementptr inbounds nuw [24 x i8], ptr %.1263, i64 %indvars.iv.i317
  %i.kj = tail call i32 @H5B2__update_flush_depend(ptr noundef %0, i32 noundef %i.kg, ptr noundef nonnull %i.ki, ptr noundef nonnull %.2284, ptr noundef nonnull %.2280)
  %i.kk = icmp slt i32 %i.kj, 0
  br i1 %i.kk, label %bb.ab, label %bb.z

.thread370:                                       ; preds = %bb.z, %._crit_edge, %bb.w, %bb.y
  %.1257368 = phi i64 [ %.0240.lcssa, %._crit_edge ], [ 0, %bb.w ], [ %.0240.lcssa, %bb.y ], [ %.0240.lcssa, %bb.z ]
  %.1260366 = phi i64 [ %i.jv, %._crit_edge ], [ 0, %bb.w ], [ %i.jv, %bb.y ], [ %i.jv, %bb.z ]
  store i16 %i.bw, ptr %.2277, align 2, !tbaa !49
  %i.kl = load i16, ptr %.2274, align 2, !tbaa !49
  %i.km = add i16 %i.kl, %i.gj
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.kn = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.ko = load i64, ptr @H5E_CANTUPDATE_g, align 8, !tbaa !19
  %i.kp = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__update_child_flush_depends, i32 noundef 1989, i64 noundef %i.kn, i64 noundef %i.ko, ptr noundef nonnull @.str.29) #4 ; 0 uses
  %i.kq = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.kr = load i64, ptr @H5E_CANTUPDATE_g, align 8, !tbaa !19
  %i.ks = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__redistribute2, i32 noundef 616, i64 noundef %i.kq, i64 noundef %i.kr, ptr noundef nonnull @.str.6) #4 ; 0 uses
  br label %bb.af

bb.ac:                                            ; preds = %.thread370, %.thread355
  %.pre-phi = phi i64 [ %i.hf, %.thread370 ], [ %i.cg, %.thread355 ]
  %storemerge = phi i16 [ %i.km, %.thread370 ], [ %i.bw, %.thread355 ]
  %.2261 = phi i64 [ %.1260366, %.thread370 ], [ %.0259351, %.thread355 ]
  %.2258 = phi i64 [ %.1257368, %.thread370 ], [ %.0256353, %.thread355 ]
  store i16 %storemerge, ptr %.2274, align 2, !tbaa !49
  %i.kt = load i16, ptr %.2277, align 2, !tbaa !49 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !43 ; 2 uses
  %i.kw = getelementptr inbounds nuw [24 x i8], ptr %i.kv, i64 %.pre-phi ; 3 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  store i16 %i.kt, ptr %i.kx, align 8, !tbaa !44
  %i.ky = load i16, ptr %.2274, align 2, !tbaa !49 ; 2 uses
  %i.kz = add i32 %3, 1
  %i.la = zext i32 %i.kz to i64
  %i.lb = getelementptr inbounds nuw [24 x i8], ptr %i.kv, i64 %i.la ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  store i16 %i.ky, ptr %i.lc, align 8, !tbaa !44
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lb, i64 16 ; 3 uses
  br i1 %i.h, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.le = getelementptr inbounds nuw i8, ptr %i.kw, i64 16 ; 2 uses
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !45
  %i.lg = add nsw i64 %i.lf, %.2261
  store i64 %i.lg, ptr %i.le, align 8, !tbaa !45
  %i.lh = load i64, ptr %i.ld, align 8, !tbaa !45
  %i.li = add nsw i64 %i.lh, %.2258
  store i64 %i.li, ptr %i.ld, align 8, !tbaa !45
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.lj = zext i16 %i.kt to i64
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kw, i64 16
  store i64 %i.lj, ptr %i.lk, align 8, !tbaa !45
  %i.ll = zext i16 %i.ky to i64
  store i64 %i.ll, ptr %i.ld, align 8, !tbaa !45
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.t, %bb.ab
  %.3251 = phi i32 [ 2, %bb.ad ], [ 2, %bb.ae ], [ 0, %bb.t ], [ 0, %bb.ab ] ; 2 uses
  %.6 = phi i32 [ 0, %bb.ad ], [ 0, %bb.ae ], [ -1, %bb.t ], [ -1, %bb.ab ]
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !57
  %i.lo = tail call i32 @H5AC_unprotect(ptr noundef %i.ln, ptr noundef nonnull %.0294, i64 noundef %.2292, ptr noundef nonnull %.2284, i32 noundef %.3251) #4
  %i.lp = icmp slt i32 %i.lo, 0
  br i1 %i.lp, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.lq = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.lr = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !19
  %i.ls = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__redistribute2, i32 noundef 660, i64 noundef %i.lq, i64 noundef %i.lr, ptr noundef nonnull @.str.13) #4 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.7.ph = phi i32 [ -1, %bb.ag ], [ %.6, %bb.af ]
  %i.lt = load ptr, ptr %i.lm, align 8, !tbaa !57
  %i.lu = tail call i32 @H5AC_unprotect(ptr noundef %i.lt, ptr noundef nonnull %.0294, i64 noundef %.2288, ptr noundef nonnull %.2280, i32 noundef %.3251) #4
  %i.lv = icmp slt i32 %i.lu, 0
  br i1 %i.lv, label %bb.ai, label %.thread

bb.ai:                                            ; preds = %bb.ah
  %i.lw = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.lx = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !19
  %i.ly = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__redistribute2, i32 noundef 662, i64 noundef %i.lw, i64 noundef %i.lx, ptr noundef nonnull @.str.13) #4 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.i, %bb.f, %bb.d, %bb.a, %bb.ai, %bb.ah
  %.8 = phi i32 [ -1, %bb.ai ], [ %.7.ph, %bb.ah ], [ 0, %bb.a ], [ -1, %bb.f ], [ -1, %bb.d ], [ -1, %bb.i ], [ -1, %bb.k ]
  ret i32 %.8
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5B2__redistribute3(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5B2_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.thread, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = zext i16 %1 to i32                       ; 4 uses
  %i.h = icmp ugt i16 %1, 1                       ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 7 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.k = add i32 %4, -1
  %i.l = zext i32 %i.k to i64                     ; 3 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.l ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.n = add i16 %1, -1                           ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !46, !range !10, !noundef !11
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
  %i.w = load ptr, ptr %i.i, align 8, !tbaa !43   ; 2 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.l
  %i.y = load i64, ptr %i.x, align 8, !tbaa !47
  %i.z = zext i32 %4 to i64                       ; 2 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.z
  %i.ab = load i8, ptr %i.o, align 8, !tbaa !46, !range !10, !noundef !11
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
  %i.ai = load ptr, ptr %i.i, align 8, !tbaa !43  ; 2 uses
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %i.z
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !47
  %i.al = add i32 %4, 1
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %i.am
  %i.ao = load i8, ptr %i.o, align 8, !tbaa !46, !range !10, !noundef !11
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
  %i.av = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %i.am
  %i.ax = getelementptr inbounds nuw i8, ptr %i.r, i64 272
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ad, i64 272
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 272
  %i.ba = getelementptr inbounds nuw i8, ptr %i.r, i64 264
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !43
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ad, i64 264
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !43
  %i.be = getelementptr inbounds nuw i8, ptr %i.aq, i64 264
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !43
  br label %bb.q

bb.j:                                             ; preds = %bb.b
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !46, !range !10, !noundef !11
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
end_hunk_1
begin_hunk_2_@H5B2__redistribute3:bb.a
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bx = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.by = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !19
  %i.bz = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__redistribute3, i32 noundef 764, i64 noundef %i.bx, i64 noundef %i.by, ptr noundef nonnull @.str.5) #4 ; 0 uses
  br label %.thread

bb.n:                                             ; preds = %bb.l
  %i.ca = load ptr, ptr %i.i, align 8, !tbaa !43  ; 2 uses
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %i.br
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !47
  %i.cd = add i32 %4, 1
  %i.ce = zext i32 %i.cd to i64                   ; 2 uses
  %i.cf = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %i.ce
  %i.cg = load i8, ptr %i.bg, align 8, !tbaa !46, !range !10, !noundef !11
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
  %i.cn = load ptr, ptr %i.i, align 8, !tbaa !43
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
  %.2511 = load ptr, ptr %.2511.in, align 8, !tbaa !48 ; 12 uses
  %.2514.in = getelementptr inbounds nuw i8, ptr %.2533, i64 256
  %.2514 = load ptr, ptr %.2514.in, align 8, !tbaa !48 ; 8 uses
  %.2517.in = getelementptr inbounds nuw i8, ptr %.2537, i64 256
  %.2517 = load ptr, ptr %.2517.in, align 8, !tbaa !48 ; 4 uses
  %.2545 = load i64, ptr %.2545.in, align 8, !tbaa !47
  %i.cs = load i16, ptr %.2526, align 2, !tbaa !49 ; 2 uses
  %i.ct = zext i16 %i.cs to i32                   ; 2 uses
  %i.cu = load i16, ptr %.2520, align 2, !tbaa !49 ; 3 uses
  %i.cv = zext i16 %i.cu to i32
  %i.cw = add nuw nsw i32 %i.cv, %i.ct
  %i.cx = load i16, ptr %.2523, align 2, !tbaa !49 ; 2 uses
  %i.cy = zext i16 %i.cx to i32                   ; 2 uses
  %i.cz = add nuw nsw i32 %i.cw, %i.cy            ; 3 uses
  %i.da = udiv i32 %i.cz, 3                       ; 3 uses
  %i.db = trunc nuw i32 %i.da to i16
  %i.dc = sub nsw i32 %i.cz, %i.da
  %i.dd = lshr i32 %i.dc, 1                       ; 4 uses
  %i.de = trunc i32 %i.dd to i16
  %i.df = and i32 %i.dd, 65535                    ; 9 uses
  %i.dg = add nuw i32 %i.da, %i.dd
  %i.dh = sub i32 %i.cz, %i.dg                    ; 2 uses
  %i.di = trunc i32 %i.dh to i16
  %i.dj = icmp samesign ugt i32 %i.df, %i.ct
  br i1 %i.dj, label %bb.r, label %bb.z

bb.r:                                             ; preds = %bb.q
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 4 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !36 ; 2 uses
  %i.dm = zext i16 %i.cs to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dm
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !19
  %i.dp = getelementptr inbounds nuw i8, ptr %.2517, i64 %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !35
  %i.ds = add i32 %4, -1
  %i.dt = zext i32 %i.ds to i64                   ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dt
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !19
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 4 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !41
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !42
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dp, ptr align 1 %i.dw, i64 %i.ea, i1 false)
  %i.eb = add nsw i32 %i.df, -1
  %i.ec = load i16, ptr %.2526, align 2, !tbaa !49
  %i.ed = zext i16 %i.ec to i32                   ; 2 uses
  %i.ee = icmp samesign ugt i32 %i.eb, %i.ed
  br i1 %i.ee, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ef = add nuw nsw i32 %i.ed, 1                ; 2 uses
  %i.eg = sub nsw i32 %i.dd, %i.ef                ; 2 uses
  %i.eh = trunc i32 %i.eg to i16
  %i.ei = load ptr, ptr %i.dk, align 8, !tbaa !36 ; 2 uses
  %i.ej = zext nneg i32 %i.ef to i64
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.ej
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !19
  %i.em = getelementptr inbounds nuw i8, ptr %.2517, i64 %i.el
  %i.en = load i64, ptr %i.ei, align 8, !tbaa !19
  %i.eo = getelementptr inbounds nuw i8, ptr %.2511, i64 %i.en
  %i.ep = load ptr, ptr %i.dx, align 8, !tbaa !41
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !42
  %.mask = and i32 %i.eg, 65535
  %i.es = zext nneg i32 %.mask to i64
  %i.et = mul i64 %i.er, %i.es
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.em, ptr align 1 %i.eo, i64 %i.et, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0453 = phi i16 [ %i.eh, %bb.s ], [ 0, %bb.r ] ; 2 uses
  %i.eu = load ptr, ptr %i.dq, align 8, !tbaa !35
  %i.ev = load ptr, ptr %i.dk, align 8, !tbaa !36 ; 2 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.dt
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !19
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.ex
  %i.ez = zext i16 %.0453 to i64
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.ez
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !19
  %i.fc = getelementptr inbounds nuw i8, ptr %.2511, i64 %i.fb
  %i.fd = load ptr, ptr %i.dx, align 8, !tbaa !41
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !42
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ey, ptr align 1 %i.fc, i64 %i.ff, i1 false)
  %i.fg = add i16 %.0453, 1                       ; 4 uses
  %i.fh = load ptr, ptr %i.dk, align 8, !tbaa !36 ; 2 uses
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !19
  %i.fj = getelementptr inbounds nuw i8, ptr %.2511, i64 %i.fi
  %i.fk = zext i16 %i.fg to i64
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.fk
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !19
  %i.fn = getelementptr inbounds nuw i8, ptr %.2511, i64 %i.fm
  %i.fo = load ptr, ptr %i.dx, align 8, !tbaa !41
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !42
  %i.fr = load i16, ptr %.2520, align 2, !tbaa !49
  %i.fs = zext i16 %i.fr to i32
  %i.ft = zext i16 %i.fg to i32                   ; 2 uses
  %i.fu = sub nsw i32 %i.fs, %i.ft
  %i.fv = sext i32 %i.fu to i64
  %i.fw = mul i64 %i.fq, %i.fv
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.fj, ptr align 1 %i.fn, i64 %i.fw, i1 false)
  br i1 %i.h, label %bb.u, label %.thread653

bb.u:                                             ; preds = %bb.t
  %i.fx = load i16, ptr %.2526, align 2, !tbaa !49 ; 2 uses
  %i.fy = zext i16 %i.fx to i32                   ; 2 uses
  %i.fz = sub nsw i32 %i.df, %i.fy                ; 3 uses
  %i.ga = zext i16 %i.fx to i64
  %i.gb = getelementptr inbounds nuw [24 x i8], ptr %.1558, i64 %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %i.gd = zext i32 %i.fz to i64                   ; 5 uses
  %i.ge = mul nuw nsw i64 %i.gd, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gc, ptr align 8 %.1554, i64 %i.ge, i1 false)
  %.not = icmp eq i32 %i.df, %i.fy
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.u
  %xtraiter = and i64 %i.gd, 3                    ; 3 uses
  %i.gf = icmp ult i32 %i.fz, 4
  br i1 %i.gf, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.gd, 4294967292
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %.0452776 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.gv, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.gg = getelementptr inbounds nuw [24 x i8], ptr %.1554, i64 %indvars.iv
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !45
  %i.gj = add i64 %i.gi, %.0452776
  %i.gk = getelementptr inbounds nuw [24 x i8], ptr %.1554, i64 %indvars.iv
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 40
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !45
  %i.gn = add i64 %i.gm, %i.gj
  %i.go = getelementptr inbounds nuw [24 x i8], ptr %.1554, i64 %indvars.iv
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 64
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !45
  %i.gr = add i64 %i.gq, %i.gn
  %i.gs = getelementptr inbounds nuw [24 x i8], ptr %.1554, i64 %indvars.iv
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 88
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !45
  %i.gv = add i64 %i.gu, %i.gr                    ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !81

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.0452776.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.gv, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod854 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod854)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.epil ], [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.0452776.epil = phi i64 [ %i.gz, %.lr.ph.epil ], [ %.0452776.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.gw = getelementptr inbounds nuw [24 x i8], ptr %.1554, i64 %indvars.iv.epil
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !45
  %i.gz = add i64 %i.gy, %.0452776.epil           ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !82

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.u
  %.0452.lcssa = phi i64 [ 0, %bb.u ], [ %i.gv, %._crit_edge.loopexit.unr-lcssa ], [ %i.gz, %.lr.ph.epil ]
  %i.ha = add i64 %.0452.lcssa, %i.gd             ; 4 uses
  %i.hb = sub nsw i64 0, %i.ha                    ; 3 uses
  %i.hc = getelementptr inbounds nuw [24 x i8], ptr %.1554, i64 %i.gd
  %i.hd = load i16, ptr %.2520, align 2, !tbaa !49
  %i.he = zext i16 %i.hd to i32
  %reass.sub = sub nsw i32 %i.he, %i.fz
  %i.hf = add nsw i32 %reass.sub, 1
  %i.hg = zext i32 %i.hf to i64
  %i.hh = mul nuw nsw i64 %i.hg, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.1554, ptr align 8 %i.hc, i64 %i.hh, i1 false)
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.hj = load i8, ptr %i.hi, align 8, !tbaa !46, !range !10, !noundef !11
  %i.hk = trunc nuw i8 %i.hj to i1
  br i1 %i.hk, label %bb.v, label %.thread653

bb.v:                                             ; preds = %._crit_edge
  %i.hl = load i8, ptr @H5B2_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.hm = trunc nuw i8 %i.hl to i1
  %i.hn = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.ho = trunc nuw i8 %i.hn to i1
  %i.hp = xor i1 %i.ho, true
  %i.hq = select i1 %i.hm, i1 true, i1 %i.hp
  %i.hr = icmp ne i16 %i.fg, 0
  %or.cond.i = and i1 %i.hr, %i.hq
  br i1 %or.cond.i, label %.lr.ph.i, label %.thread653, !prof !55

.lr.ph.i:                                         ; preds = %bb.v
  %5 = add nuw nsw i32 %i.ft, 1
  %i.hs = load i16, ptr %.2526, align 2, !tbaa !49
  %i.ht = zext i16 %i.hs to i32                   ; 2 uses
  %i.hu = add nuw nsw i32 %5, %i.ht
  %i.hv = add nuw nsw i32 %i.ht, 1
  %i.hw = add nsw i32 %i.g, -1
  %i.hx = zext nneg i32 %i.hv to i64
  %zext = zext nneg i32 %i.hu to i64
  br label %bb.x

bb.w:                                             ; preds = %bb.x
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.hy = icmp eq i64 %indvars.iv.next.i, %zext
  br i1 %i.hy, label %.thread653, label %bb.x, !llvm.loop !56

bb.x:                                             ; preds = %bb.w, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.hx, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.w ] ; 2 uses
  %i.hz = getelementptr inbounds nuw [24 x i8], ptr %.1558, i64 %indvars.iv.i
  %i.ia = tail call i32 @H5B2__update_flush_depend(ptr noundef %0, i32 noundef %i.hw, ptr noundef %i.hz, ptr noundef nonnull %.2529, ptr noundef nonnull %.2537)
  %i.ib = icmp slt i32 %i.ia, 0
  br i1 %i.ib, label %bb.y, label %bb.w

.thread653:                                       ; preds = %bb.w, %._crit_edge, %bb.t, %bb.v
  %.0490651 = phi i64 [ %i.hb, %._crit_edge ], [ 0, %bb.t ], [ %i.hb, %bb.v ], [ %i.hb, %bb.w ]
  %.0504649 = phi i64 [ %i.ha, %._crit_edge ], [ 0, %bb.t ], [ %i.ha, %bb.v ], [ %i.ha, %bb.w ]
  %i.ic = sub i16 %i.cu, %i.fg
  %.pre = load i16, ptr %.2523, align 2, !tbaa !49 ; 2 uses
  %.pre821.a = zext i16 %.pre to i32
  br label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.id = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.ie = load i64, ptr @H5E_CANTUPDATE_g, align 8, !tbaa !19
  %i.if = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__update_child_flush_depends, i32 noundef 1989, i64 noundef %i.id, i64 noundef %i.ie, ptr noundef nonnull @.str.29) #4 ; 0 uses
  %i.ig = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.ih = load i64, ptr @H5E_CANTUPDATE_g, align 8, !tbaa !19
  %i.ii = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__redistribute3, i32 noundef 849, i64 noundef %i.ig, i64 noundef %i.ih, ptr noundef nonnull @.str.6) #4 ; 0 uses
  br label %.thread715

bb.z:                                             ; preds = %.thread653, %bb.q
  %.pre-phi = phi i32 [ %.pre821.a, %.thread653 ], [ %i.cy, %bb.q ] ; 3 uses
  %i.ij = phi i16 [ %.pre, %.thread653 ], [ %i.cx, %bb.q ]
  %.1505 = phi i64 [ %.0504649, %.thread653 ], [ 0, %bb.q ] ; 3 uses
  %.1491 = phi i64 [ %.0490651, %.thread653 ], [ 0, %bb.q ] ; 3 uses
  %.1469 = phi i32 [ 2, %.thread653 ], [ 0, %bb.q ] ; 5 uses
  %.1 = phi i16 [ %i.ic, %.thread653 ], [ %i.cu, %bb.q ] ; 3 uses
  %i.ik = and i32 %i.dh, 65535                    ; 7 uses
  %i.il = icmp samesign ugt i32 %i.ik, %.pre-phi
  br i1 %i.il, label %bb.aa, label %bb.ai

bb.aa:                                            ; preds = %bb.z
  %i.im = sub nuw nsw i32 %i.ik, %.pre-phi        ; 7 uses
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 4 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !36 ; 2 uses
  %i.ip = zext nneg i32 %i.im to i64              ; 6 uses
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %i.ip
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !19
  %i.is = getelementptr inbounds nuw i8, ptr %.2514, i64 %i.ir
  %i.it = load i64, ptr %i.io, align 8, !tbaa !19
  %i.iu = getelementptr inbounds nuw i8, ptr %.2514, i64 %i.it
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 4 uses
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !41
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !42
  %i.iz = zext i16 %i.ij to i64
  %i.ja = mul i64 %i.iy, %i.iz
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.is, ptr align 1 %i.iu, i64 %i.ja, i1 false)
  %i.jb = load ptr, ptr %i.in, align 8, !tbaa !36 ; 2 uses
  %i.jc = add nsw i32 %i.im, -1
  %i.jd = zext i32 %i.jc to i64                   ; 2 uses
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.jd
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !19
  %i.jg = getelementptr inbounds nuw i8, ptr %.2514, i64 %i.jf
  %i.jh = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !35
  %i.jj = zext i32 %4 to i64                      ; 2 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.jj
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !19
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.jl
  %i.jn = load ptr, ptr %i.iv, align 8, !tbaa !41
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !42
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jg, ptr align 1 %i.jm, i64 %i.jp, i1 false)
  %i.jq = icmp samesign ugt i32 %i.im, 1
  br i1 %i.jq, label %bb.ab, label %._crit_edge823

._crit_edge823:                                   ; preds = %bb.aa
  %.pre824 = zext i16 %.1 to i32
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.jr = load ptr, ptr %i.in, align 8, !tbaa !36 ; 2 uses
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !19
  %i.jt = getelementptr inbounds nuw i8, ptr %.2514, i64 %i.js
  %i.ju = zext i16 %.1 to i32                     ; 2 uses
  %i.jv = add nuw nsw i32 %i.ju, 1
  %i.jw = sub nsw i32 %i.jv, %i.im
  %i.jx = zext i32 %i.jw to i64
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %i.jx
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !19
  %i.ka = getelementptr inbounds nuw i8, ptr %.2511, i64 %i.jz
  %i.kb = load ptr, ptr %i.iv, align 8, !tbaa !41
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !42
  %i.ke = mul i64 %i.kd, %i.jd
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jt, ptr align 1 %i.ka, i64 %i.ke, i1 false)
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge823, %bb.ab
  %.pre-phi825 = phi i32 [ %.pre824, %._crit_edge823 ], [ %i.ju, %bb.ab ]
  %i.kf = load ptr, ptr %i.jh, align 8, !tbaa !35
  %i.kg = load ptr, ptr %i.in, align 8, !tbaa !36 ; 2 uses
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %i.jj
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !19
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.ki
  %i.kk = sub nsw i32 %.pre-phi825, %i.im         ; 3 uses
  %i.kl = zext i32 %i.kk to i64
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %i.kl
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !19
  %i.ko = getelementptr inbounds nuw i8, ptr %.2511, i64 %i.kn
  %i.kp = load ptr, ptr %i.iv, align 8, !tbaa !41
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !42
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kj, ptr align 1 %i.ko, i64 %i.kr, i1 false)
  br i1 %i.h, label %bb.ad, label %.thread670

bb.ad:                                            ; preds = %bb.ac
  %i.ks = getelementptr inbounds nuw [24 x i8], ptr %.1556, i64 %i.ip
  %i.kt = load i16, ptr %.2523, align 2, !tbaa !49
  %i.ku = zext i16 %i.kt to i64
  %i.kv = mul nuw nsw i64 %i.ku, 24
  %i.kw = add nuw nsw i64 %i.kv, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ks, ptr noundef nonnull align 8 dereferenceable(1) %.1556, i64 %i.kw, i1 false)
  %i.kx = add nsw i32 %i.kk, 1
  %i.ky = zext i32 %i.kx to i64
  %i.kz = getelementptr inbounds nuw [24 x i8], ptr %.1554, i64 %i.ky
  %i.la = mul nuw nsw i64 %i.ip, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.1556, ptr align 8 %i.kz, i64 %i.la, i1 false)
  %.not796 = icmp eq i32 %i.ik, %.pre-phi
  br i1 %.not796, label %._crit_edge782, label %.lr.ph781.preheader

.lr.ph781.preheader:                              ; preds = %bb.ad
  %xtraiter855 = and i64 %i.ip, 3                 ; 3 uses
  %i.lb = icmp samesign ult i32 %i.im, 4
  br i1 %i.lb, label %.lr.ph781.epil.preheader, label %.lr.ph781.preheader.new

.lr.ph781.preheader.new:                          ; preds = %.lr.ph781.preheader
  %unroll_iter860 = and i64 %i.ip, 65532
  br label %.lr.ph781

.lr.ph781:                                        ; preds = %.lr.ph781, %.lr.ph781.preheader.new
  %indvars.iv803 = phi i64 [ 0, %.lr.ph781.preheader.new ], [ %indvars.iv.next804.3, %.lr.ph781 ] ; 5 uses
  %.0450778 = phi i64 [ 0, %.lr.ph781.preheader.new ], [ %i.lr, %.lr.ph781 ]
  %niter861 = phi i64 [ 0, %.lr.ph781.preheader.new ], [ %niter861.next.3, %.lr.ph781 ]
  %i.lc = getelementptr inbounds nuw [24 x i8], ptr %.1556, i64 %indvars.iv803
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !45
  %i.lf = add i64 %i.le, %.0450778
  %i.lg = getelementptr inbounds nuw [24 x i8], ptr %.1556, i64 %indvars.iv803
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 40
  %i.li = load i64, ptr %i.lh, align 8, !tbaa !45
  %i.lj = add i64 %i.li, %i.lf
  %i.lk = getelementptr inbounds nuw [24 x i8], ptr %.1556, i64 %indvars.iv803
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 64
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !45
  %i.ln = add i64 %i.lm, %i.lj
  %i.lo = getelementptr inbounds nuw [24 x i8], ptr %.1556, i64 %indvars.iv803
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 88
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !45
  %i.lr = add i64 %i.lq, %i.ln                    ; 3 uses
  %indvars.iv.next804.3 = add nuw nsw i64 %indvars.iv803, 4 ; 2 uses
  %niter861.next.3 = add i64 %niter861, 4         ; 2 uses
  %niter861.ncmp.3 = icmp eq i64 %niter861.next.3, %unroll_iter860
  br i1 %niter861.ncmp.3, label %._crit_edge782.loopexit.unr-lcssa, label %.lr.ph781, !llvm.loop !83

._crit_edge782.loopexit.unr-lcssa:                ; preds = %.lr.ph781
  %lcmp.mod857.not = icmp eq i64 %xtraiter855, 0
  br i1 %lcmp.mod857.not, label %._crit_edge782, label %.lr.ph781.epil.preheader

.lr.ph781.epil.preheader:                         ; preds = %._crit_edge782.loopexit.unr-lcssa, %.lr.ph781.preheader
  %indvars.iv803.epil.init = phi i64 [ 0, %.lr.ph781.preheader ], [ %indvars.iv.next804.3, %._crit_edge782.loopexit.unr-lcssa ]
  %.0450778.epil.init = phi i64 [ 0, %.lr.ph781.preheader ], [ %i.lr, %._crit_edge782.loopexit.unr-lcssa ]
  %lcmp.mod859 = icmp ne i64 %xtraiter855, 0
  tail call void @llvm.assume(i1 %lcmp.mod859)
  br label %.lr.ph781.epil

.lr.ph781.epil:                                   ; preds = %.lr.ph781.epil, %.lr.ph781.epil.preheader
  %indvars.iv803.epil = phi i64 [ %indvars.iv.next804.epil, %.lr.ph781.epil ], [ %indvars.iv803.epil.init, %.lr.ph781.epil.preheader ] ; 2 uses
  %.0450778.epil = phi i64 [ %i.lv, %.lr.ph781.epil ], [ %.0450778.epil.init, %.lr.ph781.epil.preheader ]
  %epil.iter856 = phi i64 [ %epil.iter856.next, %.lr.ph781.epil ], [ 0, %.lr.ph781.epil.preheader ]
  %i.ls = getelementptr inbounds nuw [24 x i8], ptr %.1556, i64 %indvars.iv803.epil
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !45
  %i.lv = add i64 %i.lu, %.0450778.epil           ; 2 uses
  %indvars.iv.next804.epil = add nuw nsw i64 %indvars.iv803.epil, 1
  %epil.iter856.next = add i64 %epil.iter856, 1   ; 2 uses
  %epil.iter856.cmp.not = icmp eq i64 %epil.iter856.next, %xtraiter855
  br i1 %epil.iter856.cmp.not, label %._crit_edge782, label %.lr.ph781.epil, !llvm.loop !84

._crit_edge782:                                   ; preds = %._crit_edge782.loopexit.unr-lcssa, %.lr.ph781.epil, %bb.ad
  %.0450.lcssa = phi i64 [ 0, %bb.ad ], [ %i.lr, %._crit_edge782.loopexit.unr-lcssa ], [ %i.lv, %.lr.ph781.epil ]
  %i.lw = add i64 %.0450.lcssa, %i.ip             ; 4 uses
  %i.lx = sub nsw i64 %.1491, %i.lw               ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.lz = load i8, ptr %i.ly, align 8, !tbaa !46, !range !10, !noundef !11
  %i.ma = trunc nuw i8 %i.lz to i1
  br i1 %i.ma, label %bb.ae, label %.thread670

bb.ae:                                            ; preds = %._crit_edge782
  %i.mb = load i8, ptr @H5B2_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.mc = trunc nuw i8 %i.mb to i1
  %i.md = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.me = trunc nuw i8 %i.md to i1
  %i.mf = xor i1 %i.me, true
  %i.mg = select i1 %i.mc, i1 true, i1 %i.mf
  br i1 %i.mg, label %.lr.ph.i589, label %.thread670, !prof !55

.lr.ph.i589:                                      ; preds = %bb.ae
  %i.mh = add nsw i32 %i.g, -1
  br label %bb.ag

bb.af:                                            ; preds = %bb.ag
  %indvars.iv.next.i591 = add nuw nsw i64 %indvars.iv.i590, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next.i591 to i32
  %exitcond808 = icmp eq i32 %i.im, %lftr.wideiv
  br i1 %exitcond808, label %.thread670, label %bb.ag, !llvm.loop !56

bb.ag:                                            ; preds = %bb.af, %.lr.ph.i589
  %indvars.iv.i590 = phi i64 [ 0, %.lr.ph.i589 ], [ %indvars.iv.next.i591, %bb.af ] ; 2 uses
  %i.mi = getelementptr inbounds nuw [24 x i8], ptr %.1556, i64 %indvars.iv.i590
  %i.mj = tail call i32 @H5B2__update_flush_depend(ptr noundef %0, i32 noundef %i.mh, ptr noundef nonnull %i.mi, ptr noundef nonnull %.2529, ptr noundef nonnull %.2533)
  %i.mk = icmp slt i32 %i.mj, 0
  br i1 %i.mk, label %bb.ah, label %bb.af

.thread670:                                       ; preds = %bb.af, %._crit_edge782, %bb.ac, %bb.ae
  %.2492668 = phi i64 [ %i.lx, %._crit_edge782 ], [ %.1491, %bb.ac ], [ %i.lx, %bb.ae ], [ %i.lx, %bb.af ]
  %.0499666 = phi i64 [ %i.lw, %._crit_edge782 ], [ 0, %bb.ac ], [ %i.lw, %bb.ae ], [ %i.lw, %bb.af ]
  %i.ml = trunc i32 %i.kk to i16
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.mm = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.mn = load i64, ptr @H5E_CANTUPDATE_g, align 8, !tbaa !19
  %i.mo = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__update_child_flush_depends, i32 noundef 1989, i64 noundef %i.mm, i64 noundef %i.mn, ptr noundef nonnull @.str.29) #4 ; 0 uses
  %i.mp = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.mq = load i64, ptr @H5E_CANTUPDATE_g, align 8, !tbaa !19
  %i.mr = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__redistribute3, i32 noundef 910, i64 noundef %i.mp, i64 noundef %i.mq, ptr noundef nonnull @.str.6) #4 ; 0 uses
  br label %.thread715

bb.ai:                                            ; preds = %.thread670, %bb.z
  %.1500 = phi i64 [ %.0499666, %.thread670 ], [ 0, %bb.z ] ; 3 uses
  %.3493 = phi i64 [ %.2492668, %.thread670 ], [ %.1491, %bb.z ] ; 3 uses
  %.1479 = phi i32 [ 2, %.thread670 ], [ 0, %bb.z ] ; 3 uses
  %.3471 = phi i32 [ 2, %.thread670 ], [ %.1469, %bb.z ] ; 2 uses
  %.3 = phi i16 [ %i.ml, %.thread670 ], [ %.1, %bb.z ] ; 3 uses
  %i.ms = load i16, ptr %.2526, align 2, !tbaa !49
  %i.mt = zext i16 %i.ms to i32                   ; 3 uses
  %i.mu = icmp samesign ult i32 %i.df, %i.mt
  br i1 %i.mu, label %bb.aj, label %bb.ar

bb.aj:                                            ; preds = %bb.ai
  %i.mv = sub nuw nsw i32 %i.mt, %i.df            ; 6 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 4 uses
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !36 ; 2 uses
  %i.my = zext nneg i32 %i.mv to i64              ; 6 uses
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.mx, i64 %i.my
  %i.na = load i64, ptr %i.mz, align 8, !tbaa !19
  %i.nb = getelementptr inbounds nuw i8, ptr %.2511, i64 %i.na
  %i.nc = load i64, ptr %i.mx, align 8, !tbaa !19
  %i.nd = getelementptr inbounds nuw i8, ptr %.2511, i64 %i.nc
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 4 uses
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !41
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 16
  %i.nh = load i64, ptr %i.ng, align 8, !tbaa !42
  %i.ni = zext i16 %.3 to i64                     ; 2 uses
  %i.nj = mul i64 %i.nh, %i.ni
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.nb, ptr align 1 %i.nd, i64 %i.nj, i1 false)
  %i.nk = load ptr, ptr %i.mw, align 8, !tbaa !36 ; 2 uses
  %i.nl = add nsw i32 %i.mv, -1
  %i.nm = zext i32 %i.nl to i64                   ; 2 uses
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.nk, i64 %i.nm
  %i.no = load i64, ptr %i.nn, align 8, !tbaa !19
  %i.np = getelementptr inbounds nuw i8, ptr %.2511, i64 %i.no
  %i.nq = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !35
  %i.ns = add i32 %4, -1
  %i.nt = zext i32 %i.ns to i64                   ; 2 uses
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.nk, i64 %i.nt
  %i.nv = load i64, ptr %i.nu, align 8, !tbaa !19
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.nv
  %i.nx = load ptr, ptr %i.ne, align 8, !tbaa !41
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 16
  %i.nz = load i64, ptr %i.ny, align 8, !tbaa !42
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.np, ptr align 1 %i.nw, i64 %i.nz, i1 false)
  %i.oa = icmp samesign ugt i32 %i.mv, 1
  br i1 %i.oa, label %bb.ak, label %._crit_edge822

._crit_edge822:                                   ; preds = %bb.aj
  %.pre826 = zext nneg i32 %i.df to i64
  br label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ob = load ptr, ptr %i.mw, align 8, !tbaa !36 ; 2 uses
  %i.oc = load i64, ptr %i.ob, align 8, !tbaa !19
  %i.od = getelementptr inbounds nuw i8, ptr %.2511, i64 %i.oc
  %i.oe = zext nneg i32 %i.df to i64              ; 2 uses
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.ob, i64 %i.oe
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 8
  %i.oh = load i64, ptr %i.og, align 8, !tbaa !19
  %i.oi = getelementptr inbounds nuw i8, ptr %.2517, i64 %i.oh
  %i.oj = load ptr, ptr %i.ne, align 8, !tbaa !41
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 16
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !42
  %i.om = mul i64 %i.ol, %i.nm
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.od, ptr align 1 %i.oi, i64 %i.om, i1 false)
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge822, %bb.ak
  %.pre-phi827 = phi i64 [ %.pre826, %._crit_edge822 ], [ %i.oe, %bb.ak ] ; 2 uses
  %i.on = load ptr, ptr %i.nq, align 8, !tbaa !35
  %i.oo = load ptr, ptr %i.mw, align 8, !tbaa !36 ; 2 uses
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %i.oo, i64 %i.nt
  %i.oq = load i64, ptr %i.op, align 8, !tbaa !19
  %i.or = getelementptr inbounds nuw i8, ptr %i.on, i64 %i.oq
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %i.oo, i64 %.pre-phi827
  %i.ot = load i64, ptr %i.os, align 8, !tbaa !19
  %i.ou = getelementptr inbounds nuw i8, ptr %.2517, i64 %i.ot
  %i.ov = load ptr, ptr %i.ne, align 8, !tbaa !41
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 16
  %i.ox = load i64, ptr %i.ow, align 8, !tbaa !42
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.or, ptr align 1 %i.ou, i64 %i.ox, i1 false)
  br i1 %i.h, label %bb.am, label %.thread688

bb.am:                                            ; preds = %bb.al
  %i.oy = getelementptr inbounds nuw [24 x i8], ptr %.1554, i64 %i.my
  %i.oz = mul nuw nsw i64 %i.ni, 24
  %i.pa = add nuw nsw i64 %i.oz, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.oy, ptr noundef nonnull align 8 dereferenceable(1) %.1554, i64 %i.pa, i1 false)
  %i.pb = getelementptr inbounds nuw [24 x i8], ptr %.1558, i64 %.pre-phi827
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 24
  %i.pd = mul nuw nsw i64 %i.my, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.1554, ptr nonnull align 8 %i.pc, i64 %i.pd, i1 false)
  %.not797 = icmp eq i32 %i.df, %i.mt
  br i1 %.not797, label %._crit_edge788, label %.lr.ph787.preheader

.lr.ph787.preheader:                              ; preds = %bb.am
  %xtraiter862 = and i64 %i.my, 3                 ; 3 uses
  %i.pe = icmp samesign ult i32 %i.mv, 4
  br i1 %i.pe, label %.lr.ph787.epil.preheader, label %.lr.ph787.preheader.new

.lr.ph787.preheader.new:                          ; preds = %.lr.ph787.preheader
  %unroll_iter867 = and i64 %i.my, 65532
  br label %.lr.ph787

.lr.ph787:                                        ; preds = %.lr.ph787, %.lr.ph787.preheader.new
  %indvars.iv809 = phi i64 [ 0, %.lr.ph787.preheader.new ], [ %indvars.iv.next810.3, %.lr.ph787 ] ; 5 uses
  %.0448784 = phi i64 [ 0, %.lr.ph787.preheader.new ], [ %i.pu, %.lr.ph787 ]
  %niter868 = phi i64 [ 0, %.lr.ph787.preheader.new ], [ %niter868.next.3, %.lr.ph787 ]
  %i.pf = getelementptr inbounds nuw [24 x i8], ptr %.1554, i64 %indvars.iv809
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 16
  %i.ph = load i64, ptr %i.pg, align 8, !tbaa !45
  %i.pi = add i64 %i.ph, %.0448784
  %i.pj = getelementptr inbounds nuw [24 x i8], ptr %.1554, i64 %indvars.iv809
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 40
  %i.pl = load i64, ptr %i.pk, align 8, !tbaa !45
  %i.pm = add i64 %i.pl, %i.pi
  %i.pn = getelementptr inbounds nuw [24 x i8], ptr %.1554, i64 %indvars.iv809
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 64
  %i.pp = load i64, ptr %i.po, align 8, !tbaa !45
  %i.pq = add i64 %i.pp, %i.pm
  %i.pr = getelementptr inbounds nuw [24 x i8], ptr %.1554, i64 %indvars.iv809
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 88
  %i.pt = load i64, ptr %i.ps, align 8, !tbaa !45
  %i.pu = add i64 %i.pt, %i.pq                    ; 3 uses
  %indvars.iv.next810.3 = add nuw nsw i64 %indvars.iv809, 4 ; 2 uses
  %niter868.next.3 = add i64 %niter868, 4         ; 2 uses
  %niter868.ncmp.3 = icmp eq i64 %niter868.next.3, %unroll_iter867
  br i1 %niter868.ncmp.3, label %._crit_edge788.loopexit.unr-lcssa, label %.lr.ph787, !llvm.loop !85

._crit_edge788.loopexit.unr-lcssa:                ; preds = %.lr.ph787
  %lcmp.mod864.not = icmp eq i64 %xtraiter862, 0
  br i1 %lcmp.mod864.not, label %._crit_edge788, label %.lr.ph787.epil.preheader

.lr.ph787.epil.preheader:                         ; preds = %._crit_edge788.loopexit.unr-lcssa, %.lr.ph787.preheader
  %indvars.iv809.epil.init = phi i64 [ 0, %.lr.ph787.preheader ], [ %indvars.iv.next810.3, %._crit_edge788.loopexit.unr-lcssa ]
  %.0448784.epil.init = phi i64 [ 0, %.lr.ph787.preheader ], [ %i.pu, %._crit_edge788.loopexit.unr-lcssa ]
  %lcmp.mod866 = icmp ne i64 %xtraiter862, 0
  tail call void @llvm.assume(i1 %lcmp.mod866)
  br label %.lr.ph787.epil

.lr.ph787.epil:                                   ; preds = %.lr.ph787.epil, %.lr.ph787.epil.preheader
  %indvars.iv809.epil = phi i64 [ %indvars.iv.next810.epil, %.lr.ph787.epil ], [ %indvars.iv809.epil.init, %.lr.ph787.epil.preheader ] ; 2 uses
  %.0448784.epil = phi i64 [ %i.py, %.lr.ph787.epil ], [ %.0448784.epil.init, %.lr.ph787.epil.preheader ]
  %epil.iter863 = phi i64 [ %epil.iter863.next, %.lr.ph787.epil ], [ 0, %.lr.ph787.epil.preheader ]
  %i.pv = getelementptr inbounds nuw [24 x i8], ptr %.1554, i64 %indvars.iv809.epil
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 16
  %i.px = load i64, ptr %i.pw, align 8, !tbaa !45
  %i.py = add i64 %i.px, %.0448784.epil           ; 2 uses
  %indvars.iv.next810.epil = add nuw nsw i64 %indvars.iv809.epil, 1
  %epil.iter863.next = add i64 %epil.iter863, 1   ; 2 uses
  %epil.iter863.cmp.not = icmp eq i64 %epil.iter863.next, %xtraiter862
  br i1 %epil.iter863.cmp.not, label %._crit_edge788, label %.lr.ph787.epil, !llvm.loop !86

._crit_edge788:                                   ; preds = %._crit_edge788.loopexit.unr-lcssa, %.lr.ph787.epil, %bb.am
  %.0448.lcssa = phi i64 [ 0, %bb.am ], [ %i.pu, %._crit_edge788.loopexit.unr-lcssa ], [ %i.py, %.lr.ph787.epil ]
  %i.pz = add i64 %.0448.lcssa, %i.my             ; 2 uses
  %i.qa = sub nsw i64 %.1505, %i.pz               ; 3 uses
  %i.qb = add nsw i64 %i.pz, %.3493               ; 3 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.qd = load i8, ptr %i.qc, align 8, !tbaa !46, !range !10, !noundef !11
  %i.qe = trunc nuw i8 %i.qd to i1
  br i1 %i.qe, label %bb.an, label %.thread688

bb.an:                                            ; preds = %._crit_edge788
  %i.qf = load i8, ptr @H5B2_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.qg = trunc nuw i8 %i.qf to i1
  %i.qh = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.qi = trunc nuw i8 %i.qh to i1
  %i.qj = xor i1 %i.qi, true
  %i.qk = select i1 %i.qg, i1 true, i1 %i.qj
  br i1 %i.qk, label %.lr.ph.i597, label %.thread688, !prof !55

.lr.ph.i597:                                      ; preds = %bb.an
  %i.ql = add nsw i32 %i.g, -1
  br label %bb.ap

bb.ao:                                            ; preds = %bb.ap
  %indvars.iv.next.i599 = add nuw nsw i64 %indvars.iv.i598, 1 ; 2 uses
  %lftr.wideiv814 = trunc i64 %indvars.iv.next.i599 to i32
  %exitcond815 = icmp eq i32 %i.mv, %lftr.wideiv814
  br i1 %exitcond815, label %.thread688, label %bb.ap, !llvm.loop !56

bb.ap:                                            ; preds = %bb.ao, %.lr.ph.i597
  %indvars.iv.i598 = phi i64 [ 0, %.lr.ph.i597 ], [ %indvars.iv.next.i599, %bb.ao ] ; 2 uses
  %i.qm = getelementptr inbounds nuw [24 x i8], ptr %.1554, i64 %indvars.iv.i598
  %i.qn = tail call i32 @H5B2__update_flush_depend(ptr noundef %0, i32 noundef %i.ql, ptr noundef nonnull %i.qm, ptr noundef nonnull %.2537, ptr noundef nonnull %.2529)
  %i.qo = icmp slt i32 %i.qn, 0
  br i1 %i.qo, label %bb.aq, label %bb.ao

.thread688:                                       ; preds = %bb.ao, %._crit_edge788, %bb.al, %bb.an
  %.4494686 = phi i64 [ %i.qb, %._crit_edge788 ], [ %.3493, %bb.al ], [ %i.qb, %bb.an ], [ %i.qb, %bb.ao ]
  %.2506684 = phi i64 [ %i.qa, %._crit_edge788 ], [ %.1505, %bb.al ], [ %i.qa, %bb.an ], [ %i.qa, %bb.ao ]
  %i.qp = trunc nuw i32 %i.mv to i16
  %i.qq = add i16 %.3, %i.qp
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.qr = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.qs = load i64, ptr @H5E_CANTUPDATE_g, align 8, !tbaa !19
  %i.qt = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__update_child_flush_depends, i32 noundef 1989, i64 noundef %i.qr, i64 noundef %i.qs, ptr noundef nonnull @.str.29) #4 ; 0 uses
  %i.qu = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.qv = load i64, ptr @H5E_CANTUPDATE_g, align 8, !tbaa !19
  %i.qw = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__redistribute3, i32 noundef 968, i64 noundef %i.qu, i64 noundef %i.qv, ptr noundef nonnull @.str.6) #4 ; 0 uses
  br label %.thread715

bb.ar:                                            ; preds = %.thread688, %bb.ai
  %.3507 = phi i64 [ %.2506684, %.thread688 ], [ %.1505, %bb.ai ]
  %.5495 = phi i64 [ %.4494686, %.thread688 ], [ %.3493, %bb.ai ] ; 3 uses
  %.3487 = phi i32 [ 2, %.thread688 ], [ %.1469, %bb.ai ] ; 2 uses
  %.5473 = phi i32 [ 2, %.thread688 ], [ %.3471, %bb.ai ] ; 2 uses
  %.5 = phi i16 [ %i.qq, %.thread688 ], [ %.3, %bb.ai ] ; 2 uses
  %i.qx = load i16, ptr %.2523, align 2, !tbaa !49
  %i.qy = zext i16 %i.qx to i32                   ; 2 uses
  %i.qz = icmp samesign ult i32 %i.ik, %i.qy
  br i1 %i.qz, label %bb.as, label %..thread706_crit_edge

..thread706_crit_edge:                            ; preds = %bb.ar
  %.pre828 = zext i32 %4 to i64
  br label %.thread706

bb.as:                                            ; preds = %bb.ar
  %i.ra = sub nuw nsw i32 %i.qy, %i.ik            ; 4 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 4 uses
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !36 ; 2 uses
  %i.rd = zext i16 %.5 to i64
  %i.re = getelementptr inbounds nuw [8 x i8], ptr %i.rc, i64 %i.rd
  %i.rf = load i64, ptr %i.re, align 8, !tbaa !19
  %i.rg = getelementptr inbounds nuw i8, ptr %.2511, i64 %i.rf
  %i.rh = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !35
  %i.rj = zext i32 %4 to i64                      ; 6 uses
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %i.rc, i64 %i.rj
  %i.rl = load i64, ptr %i.rk, align 8, !tbaa !19
  %i.rm = getelementptr inbounds nuw i8, ptr %i.ri, i64 %i.rl
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 4 uses
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !41
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 16
  %i.rq = load i64, ptr %i.rp, align 8, !tbaa !42
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rg, ptr align 1 %i.rm, i64 %i.rq, i1 false)
  %i.rr = load ptr, ptr %i.rb, align 8, !tbaa !36 ; 2 uses
  %i.rs = zext i16 %.5 to i32
  %i.rt = add nuw nsw i32 %i.rs, 1                ; 2 uses
  %i.ru = zext nneg i32 %i.rt to i64              ; 3 uses
  %i.rv = getelementptr inbounds nuw [8 x i8], ptr %i.rr, i64 %i.ru
  %i.rw = load i64, ptr %i.rv, align 8, !tbaa !19
  %i.rx = getelementptr inbounds nuw i8, ptr %.2511, i64 %i.rw
  %i.ry = load i64, ptr %i.rr, align 8, !tbaa !19
  %i.rz = getelementptr inbounds nuw i8, ptr %.2514, i64 %i.ry
  %i.sa = load ptr, ptr %i.rn, align 8, !tbaa !41
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 16
  %i.sc = load i64, ptr %i.sb, align 8, !tbaa !42
  %i.sd = add nsw i32 %i.ra, -1
  %i.se = zext i32 %i.sd to i64                   ; 2 uses
  %i.sf = mul i64 %i.sc, %i.se
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.rx, ptr align 1 %i.rz, i64 %i.sf, i1 false)
  %i.sg = load ptr, ptr %i.rh, align 8, !tbaa !35
  %i.sh = load ptr, ptr %i.rb, align 8, !tbaa !36 ; 2 uses
  %i.si = getelementptr inbounds nuw [8 x i8], ptr %i.sh, i64 %i.rj
  %i.sj = load i64, ptr %i.si, align 8, !tbaa !19
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sg, i64 %i.sj
  %i.sl = getelementptr inbounds nuw [8 x i8], ptr %i.sh, i64 %i.se
  %i.sm = load i64, ptr %i.sl, align 8, !tbaa !19
  %i.sn = getelementptr inbounds nuw i8, ptr %.2514, i64 %i.sm
  %i.so = load ptr, ptr %i.rn, align 8, !tbaa !41
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 16
  %i.sq = load i64, ptr %i.sp, align 8, !tbaa !42
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sk, ptr align 1 %i.sn, i64 %i.sq, i1 false)
  %i.sr = load ptr, ptr %i.rb, align 8, !tbaa !36 ; 2 uses
  %i.ss = load i64, ptr %i.sr, align 8, !tbaa !19
  %i.st = getelementptr inbounds nuw i8, ptr %.2514, i64 %i.ss
  %i.su = zext nneg i32 %i.ra to i64              ; 6 uses
  %i.sv = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %i.su
  %i.sw = load i64, ptr %i.sv, align 8, !tbaa !19
  %i.sx = getelementptr inbounds nuw i8, ptr %.2514, i64 %i.sw
  %i.sy = load ptr, ptr %i.rn, align 8, !tbaa !41
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 16
  %i.ta = load i64, ptr %i.sz, align 8, !tbaa !42
  %i.tb = zext nneg i32 %i.ik to i64
  %i.tc = mul i64 %i.ta, %i.tb
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.st, ptr align 1 %i.sx, i64 %i.tc, i1 false)
  br i1 %i.h, label %.lr.ph793.preheader, label %.thread706

.lr.ph793.preheader:                              ; preds = %bb.as
  %i.td = getelementptr inbounds nuw [24 x i8], ptr %.1554, i64 %i.ru
  %i.te = mul nuw nsw i64 %i.su, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.td, ptr align 8 %.1556, i64 %i.te, i1 false)
  %xtraiter869 = and i64 %i.su, 3                 ; 3 uses
  %i.tf = add nsw i32 %i.ra, -1
  %i.tg = icmp ult i32 %i.tf, 3
  br i1 %i.tg, label %.lr.ph793.epil.preheader, label %.lr.ph793.preheader.new

.lr.ph793.preheader.new:                          ; preds = %.lr.ph793.preheader
  %unroll_iter874 = and i64 %i.su, 65532
  br label %.lr.ph793

.lr.ph793:                                        ; preds = %.lr.ph793, %.lr.ph793.preheader.new
  %indvars.iv816 = phi i64 [ 0, %.lr.ph793.preheader.new ], [ %indvars.iv.next817.3, %.lr.ph793 ] ; 5 uses
  %.0446790 = phi i64 [ 0, %.lr.ph793.preheader.new ], [ %i.tw, %.lr.ph793 ]
  %niter875 = phi i64 [ 0, %.lr.ph793.preheader.new ], [ %niter875.next.3, %.lr.ph793 ]
  %i.th = getelementptr inbounds nuw [24 x i8], ptr %.1556, i64 %indvars.iv816
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 16
  %i.tj = load i64, ptr %i.ti, align 8, !tbaa !45
  %i.tk = add i64 %i.tj, %.0446790
  %i.tl = getelementptr inbounds nuw [24 x i8], ptr %.1556, i64 %indvars.iv816
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 40
  %i.tn = load i64, ptr %i.tm, align 8, !tbaa !45
  %i.to = add i64 %i.tn, %i.tk
  %i.tp = getelementptr inbounds nuw [24 x i8], ptr %.1556, i64 %indvars.iv816
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 64
  %i.tr = load i64, ptr %i.tq, align 8, !tbaa !45
  %i.ts = add i64 %i.tr, %i.to
  %i.tt = getelementptr inbounds nuw [24 x i8], ptr %.1556, i64 %indvars.iv816
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 88
  %i.tv = load i64, ptr %i.tu, align 8, !tbaa !45
  %i.tw = add i64 %i.tv, %i.ts                    ; 3 uses
  %indvars.iv.next817.3 = add nuw nsw i64 %indvars.iv816, 4 ; 2 uses
  %niter875.next.3 = add i64 %niter875, 4         ; 2 uses
  %niter875.ncmp.3 = icmp eq i64 %niter875.next.3, %unroll_iter874
  br i1 %niter875.ncmp.3, label %._crit_edge794.unr-lcssa, label %.lr.ph793, !llvm.loop !87

._crit_edge794.unr-lcssa:                         ; preds = %.lr.ph793
  %lcmp.mod871.not = icmp eq i64 %xtraiter869, 0
  br i1 %lcmp.mod871.not, label %._crit_edge794, label %.lr.ph793.epil.preheader

.lr.ph793.epil.preheader:                         ; preds = %._crit_edge794.unr-lcssa, %.lr.ph793.preheader
  %indvars.iv816.epil.init = phi i64 [ 0, %.lr.ph793.preheader ], [ %indvars.iv.next817.3, %._crit_edge794.unr-lcssa ]
  %.0446790.epil.init = phi i64 [ 0, %.lr.ph793.preheader ], [ %i.tw, %._crit_edge794.unr-lcssa ]
  %lcmp.mod873 = icmp ne i64 %xtraiter869, 0
  tail call void @llvm.assume(i1 %lcmp.mod873)
  br label %.lr.ph793.epil

.lr.ph793.epil:                                   ; preds = %.lr.ph793.epil, %.lr.ph793.epil.preheader
  %indvars.iv816.epil = phi i64 [ %indvars.iv816.epil.init, %.lr.ph793.epil.preheader ], [ %indvars.iv.next817.epil, %.lr.ph793.epil ] ; 2 uses
  %.0446790.epil = phi i64 [ %.0446790.epil.init, %.lr.ph793.epil.preheader ], [ %i.ua, %.lr.ph793.epil ]
  %epil.iter870 = phi i64 [ 0, %.lr.ph793.epil.preheader ], [ %epil.iter870.next, %.lr.ph793.epil ]
  %i.tx = getelementptr inbounds nuw [24 x i8], ptr %.1556, i64 %indvars.iv816.epil
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 16
  %i.tz = load i64, ptr %i.ty, align 8, !tbaa !45
  %i.ua = add i64 %i.tz, %.0446790.epil           ; 2 uses
  %indvars.iv.next817.epil = add nuw nsw i64 %indvars.iv816.epil, 1
  %epil.iter870.next = add i64 %epil.iter870, 1   ; 2 uses
  %epil.iter870.cmp.not = icmp eq i64 %epil.iter870.next, %xtraiter869
  br i1 %epil.iter870.cmp.not, label %._crit_edge794, label %.lr.ph793.epil, !llvm.loop !88

._crit_edge794:                                   ; preds = %.lr.ph793.epil, %._crit_edge794.unr-lcssa
  %.lcssa = phi i64 [ %i.tw, %._crit_edge794.unr-lcssa ], [ %i.ua, %.lr.ph793.epil ]
  %i.ub = add i64 %.lcssa, %i.su                  ; 2 uses
  %i.uc = sub nsw i64 %.1500, %i.ub               ; 3 uses
  %i.ud = add nsw i64 %i.ub, %.5495               ; 3 uses
  %i.ue = getelementptr inbounds nuw [24 x i8], ptr %.1556, i64 %i.su
  %i.uf = mul nuw nsw i32 %i.ik, 24
  %narrow = add nuw nsw i32 %i.uf, 24
  %i.ug = zext nneg i32 %narrow to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.1556, ptr noundef nonnull align 8 dereferenceable(1) %i.ue, i64 %i.ug, i1 false)
  %i.uh = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ui = load i8, ptr %i.uh, align 8, !tbaa !46, !range !10, !noundef !11
  %i.uj = trunc nuw i8 %i.ui to i1
  br i1 %i.uj, label %bb.at, label %.thread706

bb.at:                                            ; preds = %._crit_edge794
  %6 = add nuw nsw i32 %i.rt, %i.ra
  %i.uk = load i8, ptr @H5B2_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.ul = trunc nuw i8 %i.uk to i1
  %i.um = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.un = trunc nuw i8 %i.um to i1
  %i.uo = xor i1 %i.un, true
  %i.up = select i1 %i.ul, i1 true, i1 %i.uo
  br i1 %i.up, label %.lr.ph.i605, label %.thread706, !prof !55

.lr.ph.i605:                                      ; preds = %bb.at
  %i.uq = add nsw i32 %i.g, -1
  br label %bb.av

bb.au:                                            ; preds = %bb.av
  %indvars.iv.next.i607 = add nuw nsw i64 %indvars.iv.i606, 1 ; 2 uses
  %lftr.wideiv.i608 = trunc i64 %indvars.iv.next.i607 to i32
  %exitcond.not.i609 = icmp eq i32 %6, %lftr.wideiv.i608
  br i1 %exitcond.not.i609, label %.thread706, label %bb.av, !llvm.loop !56

bb.av:                                            ; preds = %bb.au, %.lr.ph.i605
  %indvars.iv.i606 = phi i64 [ %i.ru, %.lr.ph.i605 ], [ %indvars.iv.next.i607, %bb.au ] ; 2 uses
  %i.ur = getelementptr inbounds nuw [24 x i8], ptr %.1554, i64 %indvars.iv.i606
  %i.us = tail call i32 @H5B2__update_flush_depend(ptr noundef %0, i32 noundef %i.uq, ptr noundef %i.ur, ptr noundef nonnull %.2533, ptr noundef nonnull %.2529)
  %i.ut = icmp slt i32 %i.us, 0
  br i1 %i.ut, label %bb.aw, label %bb.au

bb.aw:                                            ; preds = %bb.av
  %i.uu = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.uv = load i64, ptr @H5E_CANTUPDATE_g, align 8, !tbaa !19
  %i.uw = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__update_child_flush_depends, i32 noundef 1989, i64 noundef %i.uu, i64 noundef %i.uv, ptr noundef nonnull @.str.29) #4 ; 0 uses
  %i.ux = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.uy = load i64, ptr @H5E_CANTUPDATE_g, align 8, !tbaa !19
  %i.uz = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__redistribute3, i32 noundef 1025, i64 noundef %i.ux, i64 noundef %i.uy, ptr noundef nonnull @.str.6) #4 ; 0 uses
  br label %.thread715

.thread706:                                       ; preds = %bb.au, %..thread706_crit_edge, %bb.at, %bb.as, %._crit_edge794
  %.pre-phi829 = phi i64 [ %.pre828, %..thread706_crit_edge ], [ %i.rj, %._crit_edge794 ], [ %i.rj, %bb.at ], [ %i.rj, %bb.as ], [ %i.rj, %bb.au ]
  %.3502 = phi i64 [ %.1500, %..thread706_crit_edge ], [ %i.uc, %._crit_edge794 ], [ %i.uc, %bb.at ], [ %.1500, %bb.as ], [ %i.uc, %bb.au ]
  %.7497 = phi i64 [ %.5495, %..thread706_crit_edge ], [ %i.ud, %._crit_edge794 ], [ %i.ud, %bb.at ], [ %.5495, %bb.as ], [ %i.ud, %bb.au ]
  %.3481 = phi i32 [ %.1479, %..thread706_crit_edge ], [ 2, %._crit_edge794 ], [ 2, %bb.at ], [ 2, %bb.as ], [ 2, %bb.au ]
  %.7475 = phi i32 [ %.5473, %..thread706_crit_edge ], [ 2, %._crit_edge794 ], [ 2, %bb.at ], [ 2, %bb.as ], [ 2, %bb.au ]
  store i16 %i.de, ptr %.2526, align 2, !tbaa !49
  store i16 %i.db, ptr %.2520, align 2, !tbaa !49
  store i16 %i.di, ptr %.2523, align 2, !tbaa !49
  %i.va = load i16, ptr %.2526, align 2, !tbaa !49 ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !43 ; 3 uses
  %i.vd = add i32 %4, -1
  %i.ve = zext i32 %i.vd to i64
  %i.vf = getelementptr inbounds nuw [24 x i8], ptr %i.vc, i64 %i.ve ; 3 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 8
  store i16 %i.va, ptr %i.vg, align 8, !tbaa !44
  %i.vh = load i16, ptr %.2520, align 2, !tbaa !49 ; 2 uses
  %i.vi = getelementptr inbounds nuw [24 x i8], ptr %i.vc, i64 %.pre-phi829 ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 8
  store i16 %i.vh, ptr %i.vj, align 8, !tbaa !44
  %i.vk = load i16, ptr %.2523, align 2, !tbaa !49 ; 2 uses
  %i.vl = add i32 %4, 1
  %i.vm = zext i32 %i.vl to i64
  %i.vn = getelementptr inbounds nuw [24 x i8], ptr %i.vc, i64 %i.vm ; 3 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 8
  store i16 %i.vk, ptr %i.vo, align 8, !tbaa !44
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vi, i64 16 ; 3 uses
  br i1 %i.h, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %.thread706
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vf, i64 16 ; 2 uses
  %i.vr = load i64, ptr %i.vq, align 8, !tbaa !45
  %i.vs = add nsw i64 %i.vr, %.3507
  store i64 %i.vs, ptr %i.vq, align 8, !tbaa !45
  %i.vt = load i64, ptr %i.vp, align 8, !tbaa !45
  %i.vu = add nsw i64 %i.vt, %.7497
  store i64 %i.vu, ptr %i.vp, align 8, !tbaa !45
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vn, i64 16 ; 2 uses
  %i.vw = load i64, ptr %i.vv, align 8, !tbaa !45
  %i.vx = add nsw i64 %i.vw, %.3502
  store i64 %i.vx, ptr %i.vv, align 8, !tbaa !45
  br label %bb.az

bb.ay:                                            ; preds = %.thread706
  %i.vy = zext i16 %i.va to i64
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vf, i64 16
  store i64 %i.vy, ptr %i.vz, align 8, !tbaa !45
  %i.wa = zext i16 %i.vh to i64
  store i64 %i.wa, ptr %i.vp, align 8, !tbaa !45
  %i.wb = zext i16 %i.vk to i64
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vn, i64 16
  store i64 %i.wb, ptr %i.wc, align 8, !tbaa !45
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.wd = load i32, ptr %3, align 4, !tbaa !13
  %i.we = or i32 %i.wd, 2
  store i32 %i.we, ptr %3, align 4, !tbaa !13
  br label %.thread715

.thread715:                                       ; preds = %bb.az, %bb.aw, %bb.aq, %bb.ah, %bb.y
  %.5489 = phi i32 [ %.3487, %bb.az ], [ 0, %bb.y ], [ %.1469, %bb.ah ], [ %.1469, %bb.aq ], [ %.3487, %bb.aw ]
  %.5483 = phi i32 [ %.3481, %bb.az ], [ 0, %bb.y ], [ 0, %bb.ah ], [ %.1479, %bb.aq ], [ %.1479, %bb.aw ]
  %.9477 = phi i32 [ %.7475, %bb.az ], [ 0, %bb.y ], [ %.1469, %bb.ah ], [ %.3471, %bb.aq ], [ %.5473, %bb.aw ]
  %.12 = phi i32 [ 0, %bb.az ], [ -1, %bb.y ], [ -1, %bb.ah ], [ -1, %bb.aq ], [ -1, %bb.aw ]
  %i.wf = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !57
  %i.wh = tail call i32 @H5AC_unprotect(ptr noundef %i.wg, ptr noundef nonnull %.0551, i64 noundef %.2549, ptr noundef nonnull %.2537, i32 noundef %.5489) #4
  %i.wi = icmp slt i32 %i.wh, 0
  br i1 %i.wi, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %.thread715
  %i.wj = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.wk = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !19
  %i.wl = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__redistribute3, i32 noundef 1083, i64 noundef %i.wj, i64 noundef %i.wk, ptr noundef nonnull @.str.13) #4 ; 0 uses
  br label %bb.bb

bb.bb:                                            ; preds = %.thread715, %bb.ba
  %.13 = phi i32 [ -1, %bb.ba ], [ %.12, %.thread715 ]
  %i.wm = load ptr, ptr %i.wf, align 8, !tbaa !57
  %i.wn = tail call i32 @H5AC_unprotect(ptr noundef %i.wm, ptr noundef nonnull %.0551, i64 noundef %.2541, ptr noundef nonnull %.2529, i32 noundef %.9477) #4
  %i.wo = icmp slt i32 %i.wn, 0
  br i1 %i.wo, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.wp = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.wq = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !19
  %i.wr = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__redistribute3, i32 noundef 1086, i64 noundef %i.wp, i64 noundef %i.wq, ptr noundef nonnull @.str.13) #4 ; 0 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.14.ph = phi i32 [ -1, %bb.bc ], [ %.13, %bb.bb ]
  %i.ws = load ptr, ptr %i.wf, align 8, !tbaa !57
  %i.wt = tail call i32 @H5AC_unprotect(ptr noundef %i.ws, ptr noundef nonnull %.0551, i64 noundef %.2545, ptr noundef nonnull %.2533, i32 noundef %.5483) #4
  %i.wu = icmp slt i32 %i.wt, 0
  br i1 %i.wu, label %bb.be, label %.thread

bb.be:                                            ; preds = %bb.bd
  %i.wv = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.ww = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !19
  %i.wx = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__redistribute3, i32 noundef 1088, i64 noundef %i.wv, i64 noundef %i.ww, ptr noundef nonnull @.str.13) #4 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.o, %bb.m, %bb.k, %bb.h, %bb.f, %bb.d, %bb.a, %bb.be, %bb.bd
  %.15 = phi i32 [ -1, %bb.be ], [ %.14.ph, %bb.bd ], [ 0, %bb.a ], [ -1, %bb.h ], [ -1, %bb.d ], [ -1, %bb.f ], [ -1, %bb.k ], [ -1, %bb.m ], [ -1, %bb.o ]
  ret i32 %.15
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5B2__merge2(ptr noundef %0, i16 noundef zeroext %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, ptr noundef %4, ptr nofree noundef captures(none) %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5B2_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.thread, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = zext i16 %1 to i32
  %i.h = icmp ugt i16 %1, 1                       ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 264 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.k = zext i32 %6 to i64                       ; 6 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.k ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.m = add i16 %1, -1                           ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.o = load i8, ptr %i.n, align 8, !tbaa !46, !range !10, !noundef !11
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = tail call ptr @H5B2__protect_internal(ptr noundef %0, ptr noundef %4, ptr noundef %i.l, i16 noundef zeroext %i.m, i1 noundef zeroext %i.p, i32 noundef 0) #4 ; 4 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.t = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !19
  %i.u = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__merge2, i32 noundef 1141, i64 noundef %i.s, i64 noundef %i.t, ptr noundef nonnull @.str.3) #4 ; 0 uses
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !43   ; 2 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.k
  %i.x = load i64, ptr %i.w, align 8, !tbaa !47
  %i.y = add i32 %6, 1
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.z
  %i.ab = tail call ptr @H5B2__protect_internal(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef %i.aa, i16 noundef zeroext %i.m, i1 noundef zeroext false, i32 noundef 0) #4 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.ae = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !19
  %i.af = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__merge2, i32 noundef 1146, i64 noundef %i.ad, i64 noundef %i.ae, ptr noundef nonnull @.str.3) #4 ; 0 uses
  br label %.thread

bb.g:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.z
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 272
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 272
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 264
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 264
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !43
  br label %bb.m

bb.h:                                             ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !46, !range !10, !noundef !11
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = tail call ptr @H5B2__protect_leaf(ptr noundef %0, ptr noundef %4, ptr noundef %i.l, i1 noundef zeroext %i.aq, i32 noundef 0) #4 ; 3 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.at = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
end_hunk_2
begin_hunk_3_@H5B2__merge3:bb.a
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !43
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ao, i64 264
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !43
  br label %bb.q

bb.j:                                             ; preds = %bb.b
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !46, !range !10, !noundef !11
  %i.bg = trunc nuw i8 %i.bf to i1
  %i.bh = tail call ptr @H5B2__protect_leaf(ptr noundef %0, ptr noundef %4, ptr noundef %i.m, i1 noundef zeroext %i.bg, i32 noundef 0) #4 ; 3 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bj = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.bk = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !19
  %i.bl = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__merge3, i32 noundef 1360, i64 noundef %i.bj, i64 noundef %i.bk, ptr noundef nonnull @.str.5) #4 ; 0 uses
  br label %.thread

bb.l:                                             ; preds = %bb.j
  %i.bm = load ptr, ptr %i.i, align 8, !tbaa !43  ; 2 uses
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %i.l
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !47
  %i.bp = zext i32 %6 to i64                      ; 2 uses
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %i.bp
  %i.br = load i8, ptr %i.be, align 8, !tbaa !46, !range !10, !noundef !11
  %i.bs = trunc nuw i8 %i.br to i1
  %i.bt = tail call ptr @H5B2__protect_leaf(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef %i.bq, i1 noundef zeroext %i.bs, i32 noundef 0) #4 ; 3 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bv = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.bw = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !19
  %i.bx = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__merge3, i32 noundef 1364, i64 noundef %i.bv, i64 noundef %i.bw, ptr noundef nonnull @.str.5) #4 ; 0 uses
  br label %.thread

bb.n:                                             ; preds = %bb.l
  %i.by = load ptr, ptr %i.i, align 8, !tbaa !43  ; 2 uses
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %i.by, i64 %i.bp
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !47
  %i.cb = add i32 %6, 1
  %i.cc = zext i32 %i.cb to i64                   ; 2 uses
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %i.by, i64 %i.cc
  %i.ce = tail call ptr @H5B2__protect_leaf(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef %i.cd, i1 noundef zeroext false, i32 noundef 0) #4 ; 3 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cg = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.ch = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !19
  %i.ci = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__merge3, i32 noundef 1368, i64 noundef %i.cg, i64 noundef %i.ch, ptr noundef nonnull @.str.5) #4 ; 0 uses
  br label %.thread

bb.p:                                             ; preds = %bb.n
  %i.cj = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.cj, i64 %i.cc
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bh, i64 264
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bt, i64 264
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ce, i64 264
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.i
  %.0304 = phi ptr [ @H5AC_BT2_LEAF, %bb.p ], [ @H5AC_BT2_INT, %bb.i ] ; 3 uses
  %.2302 = phi i64 [ %i.bo, %bb.p ], [ %i.y, %bb.i ]
  %.2298.in = phi ptr [ %i.ck, %bb.p ], [ %i.au, %bb.i ]
  %.2294 = phi i64 [ %i.ca, %bb.p ], [ %i.ak, %bb.i ]
  %.2290 = phi ptr [ %i.bh, %bb.p ], [ %i.r, %bb.i ] ; 3 uses
  %.2286 = phi ptr [ %i.ce, %bb.p ], [ %i.ao, %bb.i ] ; 3 uses
  %.2282 = phi ptr [ %i.bt, %bb.p ], [ %i.ad, %bb.i ] ; 4 uses
  %.2279 = phi ptr [ %i.cl, %bb.p ], [ %i.av, %bb.i ] ; 7 uses
  %.2276 = phi ptr [ %i.cn, %bb.p ], [ %i.ax, %bb.i ] ; 5 uses
  %.2273 = phi ptr [ %i.cm, %bb.p ], [ %i.aw, %bb.i ] ; 11 uses
  %.1261 = phi ptr [ null, %bb.p ], [ %i.az, %bb.i ] ; 2 uses
  %.1259 = phi ptr [ null, %bb.p ], [ %i.bd, %bb.i ]
  %.1257 = phi ptr [ null, %bb.p ], [ %i.bb, %bb.i ] ; 10 uses
  %.2264.in = getelementptr inbounds nuw i8, ptr %.2282, i64 256
  %.2264 = load ptr, ptr %.2264.in, align 8, !tbaa !48 ; 6 uses
  %.2267.in = getelementptr inbounds nuw i8, ptr %.2286, i64 256
  %.2267 = load ptr, ptr %.2267.in, align 8, !tbaa !48
  %.2270.in = getelementptr inbounds nuw i8, ptr %.2290, i64 256
  %.2270 = load ptr, ptr %.2270.in, align 8, !tbaa !48 ; 2 uses
  %.2298 = load i64, ptr %.2298.in, align 8, !tbaa !47
  %i.co = load i16, ptr %.2279, align 2, !tbaa !49 ; 2 uses
  %i.cp = zext i16 %i.co to i32                   ; 3 uses
  %i.cq = load i16, ptr %.2273, align 2, !tbaa !49
  %i.cr = zext i16 %i.cq to i32
  %i.cs = load i16, ptr %.2276, align 2, !tbaa !49
  %i.ct = zext i16 %i.cs to i32
  %i.cu = add nuw nsw i32 %i.cp, 1
  %i.cv = add nuw nsw i32 %i.cu, %i.cr
  %i.cw = add nuw nsw i32 %i.cv, %i.ct
  %i.cx = lshr i32 %i.cw, 1                       ; 2 uses
  %i.cy = sub nsw i32 %i.cx, %i.cp                ; 7 uses
  %i.cz = zext i32 %i.cy to i64                   ; 8 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 7 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !36 ; 2 uses
  %i.dc = zext i16 %i.co to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.dc
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !19
  %i.df = getelementptr inbounds nuw i8, ptr %.2270, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 256 ; 4 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !35
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.l
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !19
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 7 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !41
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !42
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.df, ptr align 1 %i.dk, i64 %i.do, i1 false)
  %i.dp = load ptr, ptr %i.da, align 8, !tbaa !36 ; 2 uses
  %i.dq = load i16, ptr %.2279, align 2, !tbaa !49
  %i.dr = zext i16 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !19
  %i.dv = getelementptr inbounds nuw i8, ptr %.2270, i64 %i.du
  %i.dw = load i64, ptr %i.dp, align 8, !tbaa !19
  %i.dx = getelementptr inbounds nuw i8, ptr %.2264, i64 %i.dw
  %i.dy = load ptr, ptr %i.dl, align 8, !tbaa !41
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !42
  %i.eb = add nsw i32 %i.cy, -1
  %i.ec = zext i32 %i.eb to i64                   ; 2 uses
  %i.ed = mul i64 %i.ea, %i.ec
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dv, ptr align 1 %i.dx, i64 %i.ed, i1 false)
  %i.ee = load ptr, ptr %i.dg, align 8, !tbaa !35
  %i.ef = load ptr, ptr %i.da, align 8, !tbaa !36 ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.l
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !19
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.eh
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.ec
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !19
  %i.el = getelementptr inbounds nuw i8, ptr %.2264, i64 %i.ek
  %i.em = load ptr, ptr %i.dl, align 8, !tbaa !41
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !42
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ei, ptr align 1 %i.el, i64 %i.eo, i1 false)
  %i.ep = load ptr, ptr %i.da, align 8, !tbaa !36 ; 2 uses
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !19
  %i.er = getelementptr inbounds nuw i8, ptr %.2264, i64 %i.eq
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.cz
  %i.et = load i64, ptr %i.es, align 8, !tbaa !19
  %i.eu = getelementptr inbounds nuw i8, ptr %.2264, i64 %i.et
  %i.ev = load ptr, ptr %i.dl, align 8, !tbaa !41
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !42
  %i.ey = load i16, ptr %.2273, align 2, !tbaa !49
  %i.ez = zext i16 %i.ey to i32
  %i.fa = sub nsw i32 %i.ez, %i.cy
  %i.fb = zext i32 %i.fa to i64
  %i.fc = mul i64 %i.ex, %i.fb
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.er, ptr align 1 %i.eu, i64 %i.fc, i1 false)
  br i1 %i.h, label %bb.r, label %.thread366

.thread366:                                       ; preds = %bb.q
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 392
  br label %H5B2__update_child_flush_depends.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.fe = load i16, ptr %.2279, align 2, !tbaa !49
  %i.ff = zext i16 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [24 x i8], ptr %.1261, i64 %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fi = mul nuw nsw i64 %i.cz, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.fh, ptr align 8 %.1257, i64 %i.fi, i1 false)
  %.not433 = icmp eq i32 %i.cx, %i.cp
  br i1 %.not433, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.r
  %xtraiter = and i64 %i.cz, 3                    ; 3 uses
  %i.fj = icmp ult i32 %i.cy, 4
  br i1 %i.fj, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.cz, 4294967292
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %.0254431 = phi i64 [ %i.cz, %.lr.ph.preheader.new ], [ %i.fz, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.fk = getelementptr inbounds nuw [24 x i8], ptr %.1257, i64 %indvars.iv
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !45
  %i.fn = add i64 %i.fm, %.0254431
  %i.fo = getelementptr inbounds nuw [24 x i8], ptr %.1257, i64 %indvars.iv
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 40
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !45
  %i.fr = add i64 %i.fq, %i.fn
  %i.fs = getelementptr inbounds nuw [24 x i8], ptr %.1257, i64 %indvars.iv
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 64
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !45
  %i.fv = add i64 %i.fu, %i.fr
  %i.fw = getelementptr inbounds nuw [24 x i8], ptr %.1257, i64 %indvars.iv
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 88
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !45
  %i.fz = add i64 %i.fy, %i.fv                    ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !89

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.0254431.epil.init = phi i64 [ %i.cz, %.lr.ph.preheader ], [ %i.fz, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod457 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod457)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.epil ], [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.0254431.epil = phi i64 [ %i.gd, %.lr.ph.epil ], [ %.0254431.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ga = getelementptr inbounds nuw [24 x i8], ptr %.1257, i64 %indvars.iv.epil
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !45
  %i.gd = add i64 %i.gc, %.0254431.epil           ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !90

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.r
  %.0254.lcssa = phi i64 [ 0, %bb.r ], [ %i.fz, %._crit_edge.loopexit.unr-lcssa ], [ %i.gd, %.lr.ph.epil ] ; 3 uses
  %i.ge = getelementptr inbounds nuw [24 x i8], ptr %.1257, i64 %i.cz
  %i.gf = load i16, ptr %.2273, align 2, !tbaa !49
  %i.gg = zext i16 %i.gf to i32
  %reass.sub = sub nsw i32 %i.gg, %i.cy
  %i.gh = add nsw i32 %reass.sub, 1
  %i.gi = zext i32 %i.gh to i64
  %i.gj = mul nuw nsw i64 %i.gi, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.1257, ptr align 8 %i.ge, i64 %i.gj, i1 false)
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 4 uses
  %i.gl = load i8, ptr %i.gk, align 8, !tbaa !46, !range !10, !noundef !11
  %i.gm = trunc nuw i8 %i.gl to i1
  br i1 %i.gm, label %bb.s, label %H5B2__update_child_flush_depends.exit.thread

bb.s:                                             ; preds = %._crit_edge
  %i.gn = load i16, ptr %.2279, align 2, !tbaa !49
  %i.go = zext i16 %i.gn to i32                   ; 2 uses
  %i.gp = add nuw nsw i32 %i.go, 1                ; 2 uses
  %i.gq = add nsw i32 %i.cy, 1
  %i.gr = add nsw i32 %i.gq, %i.go                ; 2 uses
  %i.gs = load i8, ptr @H5B2_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.gt = trunc nuw i8 %i.gs to i1
  %i.gu = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.gv = trunc nuw i8 %i.gu to i1
  %i.gw = xor i1 %i.gv, true
  %i.gx = select i1 %i.gt, i1 true, i1 %i.gw
  %i.gy = icmp ult i32 %i.gp, %i.gr
  %or.cond.i = and i1 %i.gy, %i.gx
  br i1 %or.cond.i, label %.lr.ph.i, label %H5B2__update_child_flush_depends.exit.thread, !prof !55

.lr.ph.i:                                         ; preds = %bb.s
  %i.gz = add nsw i32 %i.g, -1
  %i.ha = zext nneg i32 %i.gp to i64
  br label %bb.u

bb.t:                                             ; preds = %bb.u
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.gr, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %H5B2__update_child_flush_depends.exit.thread, label %bb.u, !llvm.loop !56

bb.u:                                             ; preds = %bb.t, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.ha, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.t ] ; 2 uses
  %i.hb = getelementptr inbounds nuw [24 x i8], ptr %.1261, i64 %indvars.iv.i
  %i.hc = tail call i32 @H5B2__update_flush_depend(ptr noundef %0, i32 noundef %i.gz, ptr noundef %i.hb, ptr noundef nonnull %.2282, ptr noundef nonnull %.2290)
  %i.hd = icmp slt i32 %i.hc, 0
  br i1 %i.hd, label %bb.v, label %bb.t

bb.v:                                             ; preds = %bb.u
  %i.he = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.hf = load i64, ptr @H5E_CANTUPDATE_g, align 8, !tbaa !19
  %i.hg = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__update_child_flush_depends, i32 noundef 1989, i64 noundef %i.he, i64 noundef %i.hf, ptr noundef nonnull @.str.29) #4 ; 0 uses
  %i.hh = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.hi = load i64, ptr @H5E_CANTUPDATE_g, align 8, !tbaa !19
  %i.hj = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__merge3, i32 noundef 1429, i64 noundef %i.hh, i64 noundef %i.hi, ptr noundef nonnull @.str.6) #4 ; 0 uses
  br label %bb.ae

H5B2__update_child_flush_depends.exit.thread:     ; preds = %bb.t, %bb.s, %._crit_edge, %.thread366
  %i.hk = phi ptr [ %i.fd, %.thread366 ], [ %i.gk, %._crit_edge ], [ %i.gk, %bb.s ], [ %i.gk, %bb.t ] ; 2 uses
  %.1255370 = phi i64 [ %i.cz, %.thread366 ], [ %.0254.lcssa, %._crit_edge ], [ %.0254.lcssa, %bb.s ], [ %.0254.lcssa, %bb.t ] ; 2 uses
  %i.hl = load i16, ptr %.2279, align 2, !tbaa !49
  %i.hm = trunc i32 %i.cy to i16                  ; 2 uses
  %i.hn = add i16 %i.hl, %i.hm
  store i16 %i.hn, ptr %.2279, align 2, !tbaa !49
  %i.ho = load i16, ptr %.2273, align 2, !tbaa !49
  %i.hp = sub i16 %i.ho, %i.hm                    ; 2 uses
  store i16 %i.hp, ptr %.2273, align 2, !tbaa !49
  %i.hq = load ptr, ptr %i.da, align 8, !tbaa !36 ; 2 uses
  %i.hr = zext i16 %i.hp to i64
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %i.hr
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !19
  %i.hu = getelementptr inbounds nuw i8, ptr %.2264, i64 %i.ht
  %i.hv = load ptr, ptr %i.dg, align 8, !tbaa !35
  %i.hw = zext i32 %6 to i64                      ; 3 uses
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %i.hw
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !19
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hy
  %i.ia = load ptr, ptr %i.dl, align 8, !tbaa !41
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !42
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hu, ptr align 1 %i.hz, i64 %i.ic, i1 false)
  %i.id = load ptr, ptr %i.da, align 8, !tbaa !36 ; 2 uses
  %i.ie = load i16, ptr %.2273, align 2, !tbaa !49
  %i.if = zext i16 %i.ie to i64
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %i.if
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !19
  %i.ij = getelementptr inbounds nuw i8, ptr %.2264, i64 %i.ii
  %i.ik = load i64, ptr %i.id, align 8, !tbaa !19
  %i.il = getelementptr inbounds nuw i8, ptr %.2267, i64 %i.ik
  %i.im = load ptr, ptr %i.dl, align 8, !tbaa !41
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  %i.io = load i64, ptr %i.in, align 8, !tbaa !42
  %i.ip = load i16, ptr %.2276, align 2, !tbaa !49
  %i.iq = zext i16 %i.ip to i64
  %i.ir = mul i64 %i.io, %i.iq
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ij, ptr align 1 %i.il, i64 %i.ir, i1 false)
  %.pre436 = load i16, ptr %.2273, align 2, !tbaa !49 ; 2 uses
  %.pre439 = load i16, ptr %.2276, align 2, !tbaa !49 ; 2 uses
  br i1 %i.h, label %bb.w, label %.thread380

bb.w:                                             ; preds = %H5B2__update_child_flush_depends.exit.thread
  %i.is = zext i16 %.pre436 to i64
  %i.it = getelementptr inbounds nuw [24 x i8], ptr %.1257, i64 %i.is
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.iv = zext i16 %.pre439 to i64
  %i.iw = mul nuw nsw i64 %i.iv, 24
  %i.ix = add nuw nsw i64 %i.iw, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.iu, ptr noundef nonnull align 8 dereferenceable(1) %.1259, i64 %i.ix, i1 false)
  %i.iy = load i8, ptr %i.hk, align 8, !tbaa !46, !range !10, !noundef !11
  %i.iz = trunc nuw i8 %i.iy to i1
  %.pre437 = load i16, ptr %.2273, align 2, !tbaa !49 ; 3 uses
  %.pre440 = load i16, ptr %.2276, align 2, !tbaa !49 ; 3 uses
  br i1 %i.iz, label %bb.x, label %.thread380

bb.x:                                             ; preds = %bb.w
  %i.ja = zext i16 %.pre437 to i32                ; 2 uses
  %i.jb = add nuw nsw i32 %i.ja, 1                ; 2 uses
  %i.jc = zext i16 %.pre440 to i32
  %i.jd = add nuw nsw i32 %i.ja, 2
  %i.je = add nuw nsw i32 %i.jd, %i.jc            ; 2 uses
  %i.jf = load i8, ptr @H5B2_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.jg = trunc nuw i8 %i.jf to i1
  %i.jh = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.ji = trunc nuw i8 %i.jh to i1
  %i.jj = xor i1 %i.ji, true
  %i.jk = select i1 %i.jg, i1 true, i1 %i.jj
  %i.jl = icmp samesign ult i32 %i.jb, %i.je
  %or.cond.i325 = and i1 %i.jl, %i.jk
  br i1 %or.cond.i325, label %.lr.ph.i327, label %.thread380, !prof !55

.lr.ph.i327:                                      ; preds = %bb.x
  %i.jm = add nsw i32 %i.g, -1
  %i.jn = zext nneg i32 %i.jb to i64
  %zext = zext nneg i32 %i.je to i64
  br label %bb.z

bb.y:                                             ; preds = %bb.z
  %indvars.iv.next.i329 = add nuw nsw i64 %indvars.iv.i328, 1 ; 2 uses
  %i.jo = icmp eq i64 %indvars.iv.next.i329, %zext
  br i1 %i.jo, label %.thread380.loopexit, label %bb.z, !llvm.loop !56

bb.z:                                             ; preds = %bb.y, %.lr.ph.i327
  %indvars.iv.i328 = phi i64 [ %i.jn, %.lr.ph.i327 ], [ %indvars.iv.next.i329, %bb.y ] ; 2 uses
  %i.jp = getelementptr inbounds nuw [24 x i8], ptr %.1257, i64 %indvars.iv.i328
  %i.jq = tail call i32 @H5B2__update_flush_depend(ptr noundef %0, i32 noundef %i.jm, ptr noundef %i.jp, ptr noundef nonnull %.2286, ptr noundef nonnull %.2282)
  %i.jr = icmp slt i32 %i.jq, 0
  br i1 %i.jr, label %bb.aa, label %bb.y

bb.aa:                                            ; preds = %bb.z
  %i.js = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.jt = load i64, ptr @H5E_CANTUPDATE_g, align 8, !tbaa !19
  %i.ju = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__update_child_flush_depends, i32 noundef 1989, i64 noundef %i.js, i64 noundef %i.jt, ptr noundef nonnull @.str.29) #4 ; 0 uses
  %i.jv = load i64, ptr @H5E_BTREE_g, align 8, !tbaa !19
  %i.jw = load i64, ptr @H5E_CANTUPDATE_g, align 8, !tbaa !19
  %i.jx = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5B2__merge3, i32 noundef 1461, i64 noundef %i.jv, i64 noundef %i.jw, ptr noundef nonnull @.str.6) #4 ; 0 uses
  br label %bb.ae

.thread380.loopexit:                              ; preds = %bb.y
  %.pre = load i16, ptr %.2273, align 2, !tbaa !49
  %.pre438 = load i16, ptr %.2276, align 2, !tbaa !49
  br label %.thread380

.thread380:                                       ; preds = %.thread380.loopexit, %bb.x, %H5B2__update_child_flush_depends.exit.thread, %bb.w
  %i.jy = phi i16 [ %.pre438, %.thread380.loopexit ], [ %.pre440, %bb.x ], [ %.pre439, %H5B2__update_child_flush_depends.exit.thread ], [ %.pre440, %bb.w ]
  %i.jz = phi i16 [ %.pre, %.thread380.loopexit ], [ %.pre437, %bb.x ], [ %.pre436, %H5B2__update_child_flush_depends.exit.thread ], [ %.pre437, %bb.w ]
  %i.ka = add i16 %i.jz, 1
  %i.kb = add i16 %i.ka, %i.jy
  store i16 %i.kb, ptr %.2273, align 2, !tbaa !49
  %i.kc = load i8, ptr %i.hk, align 8, !tbaa !46, !range !10, !noundef !11
  %i.kd = trunc nuw i8 %i.kc to i1
  %spec.select = select i1 %i.kd, i32 1, i32 259  ; 2 uses
  %i.ke = load i16, ptr %.2279, align 2, !tbaa !49
  %i.kf = getelementptr inbounds nuw i8, ptr %4, i64 264 ; 2 uses
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !43 ; 3 uses
  %i.kh = getelementptr inbounds nuw [24 x i8], ptr %i.kg, i64 %i.l ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  store i16 %i.ke, ptr %i.ki, align 8, !tbaa !44
  %i.kj = load i16, ptr %.2273, align 2, !tbaa !49
  %i.kk = getelementptr inbounds nuw [24 x i8], ptr %i.kg, i64 %i.hw ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  store i16 %i.kj, ptr %i.kl, align 8, !tbaa !44
  %i.km = getelementptr inbounds nuw i8, ptr %i.kh, i64 16 ; 2 uses
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !45
  %i.ko = add i64 %i.kn, %.1255370
  store i64 %i.ko, ptr %i.km, align 8, !tbaa !45
  %i.kp = add i32 %6, 1                           ; 4 uses
  %i.kq = zext i32 %i.kp to i64                   ; 3 uses
  %i.kr = getelementptr inbounds nuw [24 x i8], ptr %i.kg, i64 %i.kq
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !45
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kk, i64 16 ; 2 uses
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !45
  %reass.sub434 = sub i64 %i.kt, %.1255370
  %i.kw = add i64 %reass.sub434, 1
  %i.kx = add i64 %i.kw, %i.kv
  store i64 %i.kx, ptr %i.ku, align 8, !tbaa !45
  %i.ky = getelementptr inbounds nuw i8, ptr %4, i64 272 ; 4 uses
  %i.kz = load i16, ptr %i.ky, align 8, !tbaa !22 ; 2 uses
  %i.la = zext i16 %i.kz to i32                   ; 2 uses
  %i.lb = icmp ult i32 %i.kp, %i.la
  br i1 %i.lb, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.thread380
  %i.lc = load ptr, ptr %i.dg, align 8, !tbaa !35 ; 2 uses
  %i.ld = load ptr, ptr %i.da, align 8, !tbaa !36 ; 2 uses
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %i.hw
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !19
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.lf
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %i.kq
  %i.li = load i64, ptr %i.lh, align 8, !tbaa !19
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.li
  %i.lk = load ptr, ptr %i.dl, align 8, !tbaa !41
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !42
  %i.ln = sub nuw nsw i32 %i.la, %i.kp
  %i.lo = zext nneg i32 %i.ln to i64
  %i.lp = mul i64 %i.lm, %i.lo
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.lg, ptr align 1 %i.lj, i64 %i.lp, i1 false)
  %i.lq = load ptr, ptr %i.kf, align 8, !tbaa !43 ; 2 uses
  %i.lr = getelementptr inbounds nuw [24 x i8], ptr %i.lq, i64 %i.kq
  %i.ls = sext i32 %6 to i64
  %i.lt = getelementptr [24 x i8], ptr %i.lq, i64 %i.ls
  %i.lu = getelementptr i8, ptr %i.lt, i64 48
  %i.lv = load i16, ptr %i.ky, align 8, !tbaa !22
  %i.lw = zext i16 %i.lv to i32
  %i.lx = sub nsw i32 %i.lw, %i.kp
  %i.ly = zext i32 %i.lx to i64
  %i.lz = mul nuw nsw i64 %i.ly, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.lr, ptr align 8 %i.lu, i64 %i.lz, i1 false)
  %.pre441 = load i16, ptr %i.ky, align 8, !tbaa !22
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.thread380
  %i.ma = phi i16 [ %.pre441, %bb.ab ], [ %i.kz, %.thread380 ]
  %i.mb = add i16 %i.ma, -1
  store i16 %i.mb, ptr %i.ky, align 8, !tbaa !22
  %i.mc = load i32, ptr %5, align 4, !tbaa !13
  %i.md = or i32 %i.mc, 2
end_hunk_3
