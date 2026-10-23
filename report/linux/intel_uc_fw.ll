Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_uc_fw?download=true
inline.NumInlined: 150
inline.NumDeleted: 66
begin_hunk_0_@intel_uc_fw_init_early:bb.a
  %.pre49 = load ptr, ptr %.phi.trans.insert48, align 8
  br label %__uc_fw_user_override.exit

bb.e:                                             ; preds = %____uc_fw_to_gt.exit
  %i.l = icmp ugt i32 %1, 2
  br i1 %i.l, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %intel_uc_fw_type_repr.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr i8, ptr %i.e, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  br label %intel_uc_fw_type_repr.exit.i

intel_uc_fw_type_repr.exit.i:                     ; preds = %bb.g, %bb.f
  %i.o = phi ptr [ %i.n, %bb.g ], [ null, %bb.f ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.o, ptr noundef @.str.16, ptr noundef nonnull @.str.57) #9
  br label %validate_fw_table_type.exit

bb.h:                                             ; preds = %bb.e
  %i.p = zext nneg i32 %1 to i64
  %i.q = getelementptr [16 x i8], ptr @blobs_all, i64 %i.p ; 2 uses
  %i.r = load ptr, ptr %i.q, align 16             ; 6 uses
  %i.s = getelementptr i8, ptr %i.q, i64 8
  %i.t = load i32, ptr %i.s, align 8              ; 5 uses
  %.not.i.a = icmp eq i32 %1, 2
  br i1 %.not.i.a, label %.loopexit, label %.lr.ph157.i

.lr.ph157.i:                                      ; preds = %bb.h
  %.not.i142.i = icmp eq ptr %i.e, null           ; 2 uses
  %i.u = getelementptr i8, ptr %i.e, i64 8        ; 2 uses
  %umax.i = tail call i32 @llvm.umax.i32(i32 %i.t, i32 2)
  %i.v = icmp eq i32 %1, 0
  %spec.select.i = select i1 %i.v, ptr @.str.54, ptr @.str.55 ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.ab, %.lr.ph157.i
  %.0127155.i = phi i32 [ 1, %.lr.ph157.i ], [ %i.w, %bb.ab ] ; 3 uses
  %i.w = add nuw i32 %.0127155.i, 1               ; 5 uses
  %i.x = icmp ult i32 %i.w, %i.t
  %i.y = sext i32 %.0127155.i to i64              ; 2 uses
  br i1 %i.x, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.z = getelementptr [18 x i8], ptr %i.r, i64 %i.y ; 7 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 5       ; 4 uses
  %i.ab = getelementptr i8, ptr %i.z, i64 13      ; 2 uses
  %i.ac = getelementptr i8, ptr %i.z, i64 14      ; 2 uses
  %i.ad = getelementptr i8, ptr %i.z, i64 15      ; 2 uses
  %i.ae = getelementptr i8, ptr %i.z, i64 16      ; 2 uses
  br i1 %.not.i142.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.k
  %.0154.us.i = phi i32 [ %i.bo, %bb.k ], [ %i.w, %.lr.ph.i ] ; 2 uses
  %i.af = load i32, ptr %i.z, align 1             ; 2 uses
  %i.ag = sext i32 %.0154.us.i to i64
  %i.ah = getelementptr [18 x i8], ptr %i.r, i64 %i.ag ; 7 uses
  %i.ai = load i32, ptr %i.ah, align 1
  %.not140.us.i = icmp eq i32 %i.af, %i.ai
  br i1 %.not140.us.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.split.us.i
  %i.aj = load ptr, ptr %i.aa, align 1
  %i.ak = getelementptr i8, ptr %i.ah, i64 5      ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 1
  %.not141.us.i = icmp eq ptr %i.aj, %i.al
  br i1 %.not141.us.i, label %__drm_to_dev.exit143.us.i, label %bb.k

__drm_to_dev.exit143.us.i:                        ; preds = %bb.j
  %i.am = tail call ptr @intel_platform_name(i32 noundef %i.af) #10
  %i.an = getelementptr i8, ptr %i.ah, i64 4
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = zext i8 %i.ao to i32
  %i.aq = getelementptr i8, ptr %i.ah, i64 13
  %i.ar = load i8, ptr %i.aq, align 1, !range !12, !noundef !13
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = select i1 %i.as, ptr @.str.18, ptr @.str.19
  %i.au = getelementptr i8, ptr %i.ah, i64 14
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = zext i8 %i.av to i32
  %i.ax = getelementptr i8, ptr %i.ah, i64 15
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = zext i8 %i.ay to i32
  %i.ba = getelementptr i8, ptr %i.ah, i64 16
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = zext i8 %i.bb to i32
  %i.bd = load ptr, ptr %i.ak, align 1
  %i.be = load i8, ptr %i.ab, align 1, !range !12, !noundef !13
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = select i1 %i.bf, ptr @.str.18, ptr @.str.19
  %i.bh = load i8, ptr %i.ac, align 1
  %i.bi = zext i8 %i.bh to i32
  %i.bj = load i8, ptr %i.ad, align 1
  %i.bk = zext i8 %i.bj to i32
  %i.bl = load i8, ptr %i.ae, align 1
  %i.bm = zext i8 %i.bl to i32
  %i.bn = load ptr, ptr %i.aa, align 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef null, ptr noundef @.str.17, ptr noundef nonnull %spec.select.i, ptr noundef %i.am, i32 noundef %i.ap, ptr noundef nonnull %i.at, i32 noundef %i.aw, i32 noundef %i.az, i32 noundef %i.bc, ptr noundef %i.bd, ptr noundef nonnull %i.bg, i32 noundef %i.bi, i32 noundef %i.bk, i32 noundef %i.bm, ptr noundef %i.bn) #9
  br label %bb.k

bb.k:                                             ; preds = %__drm_to_dev.exit143.us.i, %bb.j, %.lr.ph.split.us.i
  %i.bo = add i32 %.0154.us.i, 1                  ; 2 uses
  %exitcond164.not.i = icmp eq i32 %i.bo, %i.t
  br i1 %exitcond164.not.i, label %._crit_edge.i, label %.lr.ph.split.us.i, !llvm.loop !17

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.m
  %.0154.i = phi i32 [ %i.cz, %bb.m ], [ %i.w, %.lr.ph.i ] ; 2 uses
  %i.bp = load i32, ptr %i.z, align 1             ; 2 uses
  %i.bq = sext i32 %.0154.i to i64
  %i.br = getelementptr [18 x i8], ptr %i.r, i64 %i.bq ; 7 uses
  %i.bs = load i32, ptr %i.br, align 1
  %.not140.i = icmp eq i32 %i.bp, %i.bs
  br i1 %.not140.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.split.i
  %i.bt = load ptr, ptr %i.aa, align 1
  %i.bu = getelementptr i8, ptr %i.br, i64 5      ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 1
  %.not141.i = icmp eq ptr %i.bt, %i.bv
  br i1 %.not141.i, label %__drm_to_dev.exit143.i, label %bb.m

__drm_to_dev.exit143.i:                           ; preds = %bb.l
  %i.bw = load ptr, ptr %i.u, align 8
  %i.bx = tail call ptr @intel_platform_name(i32 noundef %i.bp) #10
  %i.by = getelementptr i8, ptr %i.br, i64 4
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = zext i8 %i.bz to i32
  %i.cb = getelementptr i8, ptr %i.br, i64 13
  %i.cc = load i8, ptr %i.cb, align 1, !range !12, !noundef !13
  %i.cd = trunc nuw i8 %i.cc to i1
  %i.ce = select i1 %i.cd, ptr @.str.18, ptr @.str.19
  %i.cf = getelementptr i8, ptr %i.br, i64 14
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = zext i8 %i.cg to i32
  %i.ci = getelementptr i8, ptr %i.br, i64 15
  %i.cj = load i8, ptr %i.ci, align 1
  %i.ck = zext i8 %i.cj to i32
  %i.cl = getelementptr i8, ptr %i.br, i64 16
  %i.cm = load i8, ptr %i.cl, align 1
  %i.cn = zext i8 %i.cm to i32
  %i.co = load ptr, ptr %i.bu, align 1
  %i.cp = load i8, ptr %i.ab, align 1, !range !12, !noundef !13
  %i.cq = trunc nuw i8 %i.cp to i1
  %i.cr = select i1 %i.cq, ptr @.str.18, ptr @.str.19
  %i.cs = load i8, ptr %i.ac, align 1
  %i.ct = zext i8 %i.cs to i32
  %i.cu = load i8, ptr %i.ad, align 1
  %i.cv = zext i8 %i.cu to i32
  %i.cw = load i8, ptr %i.ae, align 1
  %i.cx = zext i8 %i.cw to i32
  %i.cy = load ptr, ptr %i.aa, align 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.bw, ptr noundef @.str.17, ptr noundef nonnull %spec.select.i, ptr noundef %i.bx, i32 noundef %i.ca, ptr noundef nonnull %i.ce, i32 noundef %i.ch, i32 noundef %i.ck, i32 noundef %i.cn, ptr noundef %i.co, ptr noundef nonnull %i.cr, i32 noundef %i.ct, i32 noundef %i.cv, i32 noundef %i.cx, ptr noundef %i.cy) #9
  br label %bb.m

bb.m:                                             ; preds = %__drm_to_dev.exit143.i, %bb.l, %.lr.ph.split.i
  %i.cz = add i32 %.0154.i, 1                     ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.cz, %i.t
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.split.i, !llvm.loop !17

._crit_edge.i:                                    ; preds = %bb.m, %bb.k, %bb.i
  %i.da = getelementptr [18 x i8], ptr %i.r, i64 %i.y ; 12 uses
  %i.db = load i32, ptr %i.da, align 1            ; 7 uses
  %i.dc = add i32 %.0127155.i, -1
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr [18 x i8], ptr %i.r, i64 %i.dd ; 11 uses
  %i.df = load i32, ptr %i.de, align 1            ; 3 uses
  %i.dg = icmp ult i32 %i.db, %i.df
  br i1 %i.dg, label %bb.ab, label %bb.n

bb.n:                                             ; preds = %._crit_edge.i
  %i.dh = icmp eq i32 %i.db, %i.df
  br i1 %i.dh, label %bb.o, label %bb.z

bb.o:                                             ; preds = %bb.n
  %i.di = getelementptr i8, ptr %i.da, i64 4
  %i.dj = load i8, ptr %i.di, align 1             ; 2 uses
  %i.dk = getelementptr i8, ptr %i.de, i64 4
  %i.dl = load i8, ptr %i.dk, align 1             ; 2 uses
  %i.dm = icmp ult i8 %i.dj, %i.dl
  br i1 %i.dm, label %bb.ab, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not136.i = icmp eq i8 %i.dj, %i.dl
  br i1 %.not136.i, label %bb.q, label %bb.z

bb.q:                                             ; preds = %bb.p
  %i.dn = getelementptr i8, ptr %i.da, i64 14
  %i.do = load i8, ptr %i.dn, align 1             ; 4 uses
  %i.dp = getelementptr i8, ptr %i.de, i64 14
  %i.dq = load i8, ptr %i.dp, align 1             ; 5 uses
  %i.dr = icmp ult i8 %i.do, %i.dq
  br i1 %i.dr, label %bb.ab, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ds = getelementptr i8, ptr %i.da, i64 13
  %i.dt = load i8, ptr %i.ds, align 1, !range !12, !noundef !13
  %i.du = trunc nuw i8 %i.dt to i1
  %i.dv = getelementptr i8, ptr %i.de, i64 13
  %i.dw = load i8, ptr %i.dv, align 1, !range !12, !noundef !13 ; 2 uses
  br i1 %i.du, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not.i = icmp eq i8 %i.dw, 0
  %.not138.i = icmp eq i8 %i.do, %i.dq
  %or.cond151.i = and i1 %.not138.i, %.not.i
  br i1 %or.cond151.i, label %bb.w, label %bb.z

bb.t:                                             ; preds = %bb.r
  %3 = trunc nuw i8 %i.dw to i1
  br i1 %3, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not137.i = icmp eq i8 %i.dq, 0
  %i.dx = icmp eq i8 %i.do, %i.dq
  %or.cond.i = or i1 %.not137.i, %i.dx
  br i1 %or.cond.i, label %bb.ab, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.not138.old.i = icmp eq i8 %i.do, %i.dq
  br i1 %.not138.old.i, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v, %bb.s
  %i.dy = getelementptr i8, ptr %i.da, i64 15
  %i.dz = load i8, ptr %i.dy, align 1             ; 2 uses
  %i.ea = getelementptr i8, ptr %i.de, i64 15
  %i.eb = load i8, ptr %i.ea, align 1             ; 2 uses
  %i.ec = icmp ult i8 %i.dz, %i.eb
  br i1 %i.ec, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not139.i = icmp eq i8 %i.dz, %i.eb
  br i1 %.not139.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ed = getelementptr i8, ptr %i.da, i64 16
  %i.ee = load i8, ptr %i.ed, align 1
  %i.ef = getelementptr i8, ptr %i.de, i64 16
  %i.eg = load i8, ptr %i.ef, align 1
  %i.eh = icmp ult i8 %i.ee, %i.eg
  br i1 %i.eh, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.v, %bb.s, %bb.p, %bb.n
  %.lcssa.i = phi i32 [ %i.df, %bb.n ], [ %i.db, %bb.p ], [ %i.db, %bb.s ], [ %i.db, %bb.v ], [ %i.db, %bb.x ], [ %i.db, %bb.y ]
  br i1 %.not.i142.i, label %__drm_to_dev.exit147.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ei = load ptr, ptr %i.u, align 8
  br label %__drm_to_dev.exit147.i

__drm_to_dev.exit147.i:                           ; preds = %bb.aa, %bb.z
  %i.ej = phi ptr [ %i.ei, %bb.aa ], [ null, %bb.z ]
  %i.ek = tail call ptr @intel_platform_name(i32 noundef %.lcssa.i) #10
  %i.el = getelementptr i8, ptr %i.de, i64 4
  %i.em = load i8, ptr %i.el, align 1
  %i.en = zext i8 %i.em to i32
  %i.eo = getelementptr i8, ptr %i.de, i64 13
  %i.ep = load i8, ptr %i.eo, align 1, !range !12, !noundef !13
  %i.eq = trunc nuw i8 %i.ep to i1
  %i.er = select i1 %i.eq, ptr @.str.18, ptr @.str.19
  %i.es = getelementptr i8, ptr %i.de, i64 14
  %i.et = load i8, ptr %i.es, align 1
  %i.eu = zext i8 %i.et to i32
  %i.ev = getelementptr i8, ptr %i.de, i64 15
  %i.ew = load i8, ptr %i.ev, align 1
  %i.ex = zext i8 %i.ew to i32
  %i.ey = getelementptr i8, ptr %i.de, i64 16
  %i.ez = load i8, ptr %i.ey, align 1
  %i.fa = zext i8 %i.ez to i32
  %i.fb = load i32, ptr %i.da, align 1
  %i.fc = tail call ptr @intel_platform_name(i32 noundef %i.fb) #10
  %i.fd = getelementptr i8, ptr %i.da, i64 4
  %i.fe = load i8, ptr %i.fd, align 1
  %i.ff = zext i8 %i.fe to i32
  %i.fg = getelementptr i8, ptr %i.da, i64 13
  %i.fh = load i8, ptr %i.fg, align 1, !range !12, !noundef !13
  %i.fi = trunc nuw i8 %i.fh to i1
  %i.fj = select i1 %i.fi, ptr @.str.18, ptr @.str.19
  %i.fk = getelementptr i8, ptr %i.da, i64 14
  %i.fl = load i8, ptr %i.fk, align 1
  %i.fm = zext i8 %i.fl to i32
  %i.fn = getelementptr i8, ptr %i.da, i64 15
  %i.fo = load i8, ptr %i.fn, align 1
  %i.fp = zext i8 %i.fo to i32
  %i.fq = getelementptr i8, ptr %i.da, i64 16
  %i.fr = load i8, ptr %i.fq, align 1
  %i.fs = zext i8 %i.fr to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.ej, ptr noundef @.str.20, ptr noundef nonnull %spec.select.i, ptr noundef %i.ek, i32 noundef %i.en, ptr noundef nonnull %i.er, i32 noundef %i.eu, i32 noundef %i.ex, i32 noundef %i.fa, ptr noundef %i.fc, i32 noundef %i.ff, ptr noundef nonnull %i.fj, i32 noundef %i.fm, i32 noundef %i.fp, i32 noundef %i.fs) #9
  br label %validate_fw_table_type.exit

bb.ab:                                            ; preds = %bb.y, %bb.w, %bb.u, %bb.q, %bb.o, %._crit_edge.i
  %exitcond165.not.i = icmp eq i32 %i.w, %umax.i
  br i1 %exitcond165.not.i, label %.loopexit.loopexit, label %bb.i, !llvm.loop !18

validate_fw_table_type.exit:                      ; preds = %__drm_to_dev.exit147.i, %intel_uc_fw_type_repr.exit.i
  %i.ft = getelementptr i8, ptr %.0.i, i64 3009
  store i8 1, ptr %i.ft, align 1
  br label %bb.an

.loopexit.loopexit:                               ; preds = %bb.ab
  %.pre = load ptr, ptr %i.g, align 8
  %.pre43 = load i32, ptr %0, align 8             ; 2 uses
  %.phi.trans.insert = zext i32 %.pre43 to i64
  %.phi.trans.insert44 = getelementptr [16 x i8], ptr @blobs_all, i64 %.phi.trans.insert ; 2 uses
  %.pre45 = load ptr, ptr %.phi.trans.insert44, align 16
  %.phi.trans.insert46 = getelementptr i8, ptr %.phi.trans.insert44, i64 8
  %.pre47 = load i32, ptr %.phi.trans.insert46, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %.loopexit.loopexit
  %i.fu = phi i32 [ %.pre47, %.loopexit.loopexit ], [ %i.t, %bb.h ]
  %i.fv = phi ptr [ %.pre45, %.loopexit.loopexit ], [ %i.r, %bb.h ]
  %i.fw = phi i32 [ %.pre43, %.loopexit.loopexit ], [ 2, %bb.h ]
  %i.fx = phi ptr [ %.pre, %.loopexit.loopexit ], [ %i.h, %bb.h ]
  %i.fy = load i32, ptr %i.fx, align 8
  %i.fz = getelementptr i8, ptr %i.e, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = getelementptr i8, ptr %i.ga, i64 -128
  %i.gc = load i8, ptr %i.gb, align 8
  %i.gd = getelementptr i8, ptr %i.e, i64 1668
  %i.ge = load i32, ptr %i.gd, align 4            ; 2 uses
  %i.gf = shl i32 %i.ge, 20
  %i.gg = shl i32 %i.ge, 30
  %i.gh = and i32 %i.gf, %i.gg
  %i.gi = icmp slt i32 %i.gh, 0
  %spec.select.i21 = select i1 %i.gi, i32 34, i32 %i.fy ; 2 uses
  %i.gj = getelementptr i8, ptr %0, i64 32        ; 6 uses
  %umax.i22 = tail call i32 @llvm.umax.i32(i32 %i.fu, i32 1)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ai, %.loopexit
  %.04154.i = phi i32 [ 0, %.loopexit ], [ %i.hl, %bb.ai ] ; 2 uses
  %i.gk = sext i32 %.04154.i to i64
  %i.gl = getelementptr [18 x i8], ptr %i.fv, i64 %i.gk ; 7 uses
  %i.gm = load i32, ptr %i.gl, align 1            ; 2 uses
  %.not.i23 = icmp ugt i32 %spec.select.i21, %i.gm
  br i1 %.not.i23, label %.critedge.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gn = getelementptr i8, ptr %i.gl, i64 5      ; 2 uses
  %.not45.i = icmp eq i32 %spec.select.i21, %i.gm
  br i1 %.not45.i, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.go = getelementptr i8, ptr %i.gl, i64 4
  %i.gp = load i8, ptr %i.go, align 1
  %i.gq = icmp ult i8 %i.gc, %i.gp
  br i1 %i.gq, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gr = load ptr, ptr %i.gj, align 8            ; 2 uses
  %.not46.i = icmp eq ptr %i.gr, null
  %i.gs = load ptr, ptr %i.gn, align 1            ; 3 uses
  br i1 %.not46.i, label %.critedge.thread.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gt = icmp eq ptr %i.gr, %i.gs
  br i1 %i.gt, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store ptr null, ptr %i.gj, align 8
  br label %bb.ai

.critedge.thread.i:                               ; preds = %bb.af
  store ptr %i.gs, ptr %i.gj, align 8
  %i.gu = load ptr, ptr %i.gn, align 1
  %i.gv = getelementptr i8, ptr %0, i64 8
  store ptr %i.gu, ptr %i.gv, align 8
  %i.gw = getelementptr i8, ptr %i.gl, i64 14
  %i.gx = load i8, ptr %i.gw, align 1
  %i.gy = zext i8 %i.gx to i32
  %i.gz = getelementptr i8, ptr %0, i64 16
  store i32 %i.gy, ptr %i.gz, align 8
  %i.ha = getelementptr i8, ptr %i.gl, i64 15
  %i.hb = load i8, ptr %i.ha, align 1
  %i.hc = zext i8 %i.hb to i32
  %i.hd = getelementptr i8, ptr %0, i64 20
  store i32 %i.hc, ptr %i.hd, align 4
  %i.he = getelementptr i8, ptr %i.gl, i64 16
  %i.hf = load i8, ptr %i.he, align 1
  %i.hg = zext i8 %i.hf to i32
  %i.hh = getelementptr i8, ptr %0, i64 24
  store i32 %i.hg, ptr %i.hh, align 8
  %i.hi = getelementptr i8, ptr %i.gl, i64 17
  %i.hj = load i8, ptr %i.hi, align 1, !range !12, !noundef !13
  %i.hk = getelementptr i8, ptr %0, i64 408
  store i8 %i.hj, ptr %i.hk, align 8
  br label %__uc_fw_auto_select.exit

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.ae, %bb.ad
  %i.hl = add nuw i32 %.04154.i, 1                ; 2 uses
  %exitcond.not.i24 = icmp eq i32 %i.hl, %umax.i22
  br i1 %exitcond.not.i24, label %.critedge.i, label %bb.ac, !llvm.loop !0

.critedge.i:                                      ; preds = %bb.ai, %bb.ac
  %i.hm = load ptr, ptr %i.gj, align 8
  %.not47.i = icmp eq ptr %i.hm, null
  br i1 %.not47.i, label %__uc_fw_auto_select.exit, label %bb.aj

bb.aj:                                            ; preds = %.critedge.i
  store ptr null, ptr %i.gj, align 8
  br label %__uc_fw_auto_select.exit

__uc_fw_auto_select.exit:                         ; preds = %.critedge.thread.i, %.critedge.i, %bb.aj
  %i.hn = phi ptr [ %i.gs, %.critedge.thread.i ], [ null, %.critedge.i ], [ null, %bb.aj ] ; 2 uses
  switch i32 %i.fw, label %__uc_fw_user_override.exit [
    i32 0, label %bb.ak
    i32 1, label %bb.al
    i32 2, label %__override_guc_firmware_path.exit.i
  ]
end_hunk_0
