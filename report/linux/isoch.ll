Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/isoch?download=true
inline.NumInlined: 21
inline.NumDeleted: 13
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@agp_3_5_enable:bb.a
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %.thread94, %bb.i
  %.0.i.i = phi ptr [ %.val.i.i, %bb.i ], [ %i.bl, %.thread94 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.bj, ptr noundef nonnull @.str.1, ptr noundef %.0.i.i) #11
  br label %.loopexit104

bb.j:                                             ; preds = %.loopexit
  %i.bn = and i32 %i.bd, 15728640
  %i.bo = icmp samesign ult i32 %i.bn, 3145728
  br i1 %i.bo, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bp = getelementptr i8, ptr %i.n, i64 200
  %i.bq = getelementptr i8, ptr %i.at, i64 280
  %i.br = load ptr, ptr %i.bq, align 8            ; 2 uses
  %.not.i.i84 = icmp eq ptr %i.br, null
  br i1 %.not.i.i84, label %bb.l, label %pci_name.exit87

bb.l:                                             ; preds = %bb.k
  %i.bs = getelementptr i8, ptr %i.at, i64 200
  %.val.i.i86 = load ptr, ptr %i.bs, align 8
  br label %pci_name.exit87

pci_name.exit87:                                  ; preds = %bb.k, %bb.l
  %.0.i.i85 = phi ptr [ %.val.i.i86, %bb.l ], [ %i.br, %bb.k ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.bp, ptr noundef nonnull @.str.2, ptr noundef %.0.i.i85) #11
  br label %.loopexit104

bb.m:                                             ; preds = %bb.j
  %i.bt = getelementptr i8, ptr %.069122, i64 16
  store i8 %.pr, ptr %i.bt, align 8
  %i.bu = add nuw nsw i32 %i.bh, 4
  %i.bv = call i32 @pci_read_config_dword(ptr noundef %i.at, i32 noundef %i.bu, ptr noundef nonnull %i.j) #9 ; 0 uses
  %i.bw = load i32, ptr %i.j, align 4
  %i.bx = and i32 %i.bw, 8
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bz = getelementptr i8, ptr %i.n, i64 200
  %i.ca = getelementptr i8, ptr %i.at, i64 280
  %i.cb = load ptr, ptr %i.ca, align 8            ; 2 uses
  %.not.i.i88 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i88, label %bb.o, label %pci_name.exit91

bb.o:                                             ; preds = %bb.n
  %i.cc = getelementptr i8, ptr %i.at, i64 200
  %.val.i.i90 = load ptr, ptr %i.cc, align 8
  br label %pci_name.exit91

pci_name.exit91:                                  ; preds = %bb.n, %bb.o
  %.0.i.i89 = phi ptr [ %.val.i.i90, %bb.o ], [ %i.cb, %bb.n ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.bz, ptr noundef nonnull @.str.3, ptr noundef %.0.i.i89) #11
  br label %.loopexit104

bb.p:                                             ; preds = %bb.m, %.lr.ph123
  %.069 = load ptr, ptr %.069122, align 8         ; 2 uses
  %.not101 = icmp eq ptr %.069, %i.w
  br i1 %.not101, label %._crit_edge, label %.lr.ph123, !llvm.loop !14

._crit_edge:                                      ; preds = %bb.p, %.preheader103
  %i.cd = load ptr, ptr %i.m, align 8             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #8
  %i.ce = zext i32 %.070.ph.lcssa114 to i64       ; 7 uses
  %i.cf = shl nuw nsw i64 %i.ce, 5
  %i.cg = call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, 137438953441) %i.cf, i32 noundef 3264) #12 ; 12 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %agp_3_5_isochronous_node_enable.exit.thread, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  store i32 0, ptr %i.b, align 4, !annotation !10
  store i32 0, ptr %i.c, align 4, !annotation !10
  store i32 0, ptr %i.d, align 4, !annotation !10
  store i32 0, ptr %i.e, align 4, !annotation !10
  store i16 0, ptr %i.f, align 2, !annotation !10
  store i16 0, ptr %i.g, align 2, !annotation !10
  %i.ci = load ptr, ptr %i.w, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store volatile ptr %i.w, ptr %i.w, align 8
  store volatile ptr %i.w, ptr %i.y, align 8
  %.not18.i.i = icmp eq ptr %i.ci, %i.w
  br i1 %.not18.i.i, label %agp_3_5_dev_list_sort.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.q
  store i32 0, ptr %i.a, align 4, !annotation !10
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %agp_3_5_dev_list_insert.exit.i.i, %.lr.ph.preheader.i.i
  %.019.i.i = phi ptr [ %i.cu, %agp_3_5_dev_list_insert.exit.i.i ], [ %i.ci, %.lr.ph.preheader.i.i ] ; 8 uses
  %i.cj = getelementptr i8, ptr %.019.i.i, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = getelementptr i8, ptr %.019.i.i, i64 16
  %i.cm = load i8, ptr %i.cl, align 8
  %i.cn = zext i8 %i.cm to i32
  %i.co = add nuw nsw i32 %i.cn, 12
  %i.cp = call i32 @pci_read_config_dword(ptr noundef %i.ck, i32 noundef %i.co, ptr noundef nonnull %i.a) #9 ; 0 uses
  %i.cq = load i32, ptr %i.a, align 4
  %i.cr = lshr i32 %i.cq, 16
  %i.cs = and i32 %i.cr, 255                      ; 2 uses
  %i.ct = getelementptr i8, ptr %.019.i.i, i64 20
  store i32 %i.cs, ptr %i.ct, align 4
  %i.cu = load ptr, ptr %.019.i.i, align 8        ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %.lr.ph.i.i
  %.0.in.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i ], [ %.0.i.i.i, %bb.s ]
  %.0.i.i.i = load ptr, ptr %.0.in.i.i.i, align 8 ; 5 uses
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, %i.w
  br i1 %.not.i.i.i, label %agp_3_5_dev_list_insert.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cv = getelementptr i8, ptr %.0.i.i.i, i64 20
  %i.cw = load i32, ptr %i.cv, align 4
  %i.cx = icmp ugt i32 %i.cw, %i.cs
  br i1 %i.cx, label %agp_3_5_dev_list_insert.exit.i.i, label %bb.r, !llvm.loop !15

agp_3_5_dev_list_insert.exit.i.i:                 ; preds = %bb.s, %bb.r
  %i.cy = getelementptr i8, ptr %.0.i.i.i, i64 8  ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8            ; 2 uses
  store ptr %.019.i.i, ptr %i.cy, align 8
  store ptr %.0.i.i.i, ptr %.019.i.i, align 8
  %i.da = getelementptr i8, ptr %.019.i.i, i64 8
  store ptr %i.cz, ptr %i.da, align 8
  store volatile ptr %.019.i.i, ptr %i.cz, align 8
  %.not.i.i92 = icmp eq ptr %i.cu, %i.w
  br i1 %.not.i.i92, label %agp_3_5_dev_list_sort.exit.i, label %.lr.ph.i.i, !llvm.loop !16

agp_3_5_dev_list_sort.exit.i:                     ; preds = %agp_3_5_dev_list_insert.exit.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.db = load i32, ptr %i.o, align 8
  %i.dc = add i32 %i.db, 12
  %i.dd = call i32 @pci_read_config_dword(ptr noundef %i.cd, i32 noundef %i.dc, ptr noundef nonnull %i.c) #9 ; 0 uses
  %i.de = load i32, ptr %i.o, align 8
  %i.df = add i32 %i.de, 4
  %i.dg = call i32 @pci_read_config_dword(ptr noundef %i.cd, i32 noundef %i.df, ptr noundef nonnull %i.d) #9 ; 0 uses
  %i.dh = load i32, ptr %i.c, align 4             ; 2 uses
  %i.di = lshr i32 %i.dh, 16
  %i.dj = and i32 %i.di, 255
  %i.dk = lshr i32 %i.dh, 6
  %i.dl = and i32 %i.dk, 3                        ; 2 uses
  %i.dm = load i32, ptr %i.d, align 4
  %i.dn = lshr i32 %i.dm, 24
  %.0159.i = load ptr, ptr %i.w, align 8          ; 2 uses
  %.not160.i = icmp eq ptr %.0159.i, %i.w
  br i1 %.not160.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %agp_3_5_dev_list_sort.exit.i, %.lr.ph.i
  %.0164.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.0159.i, %agp_3_5_dev_list_sort.exit.i ] ; 4 uses
  %.0147163.i = phi i32 [ %i.ei, %.lr.ph.i ], [ %i.dl, %agp_3_5_dev_list_sort.exit.i ]
  %.0150162.i = phi i32 [ %i.eh, %.lr.ph.i ], [ 0, %agp_3_5_dev_list_sort.exit.i ]
  %.0151161.i = phi i32 [ %i.ej, %.lr.ph.i ], [ 0, %agp_3_5_dev_list_sort.exit.i ] ; 2 uses
  %i.do = getelementptr i8, ptr %.0164.i, i64 24
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = getelementptr i8, ptr %.0164.i, i64 16
  %i.dr = load i8, ptr %i.dq, align 8
  %i.ds = zext i8 %i.dr to i32
  %i.dt = add nuw nsw i32 %i.ds, 12
  %i.du = call i32 @pci_read_config_dword(ptr noundef %i.dp, i32 noundef %i.dt, ptr noundef nonnull %i.b) #9 ; 0 uses
  %i.dv = load i32, ptr %i.b, align 4             ; 3 uses
  %i.dw = lshr i32 %i.dv, 16
  %i.dx = and i32 %i.dw, 255                      ; 2 uses
  %i.dy = zext i32 %.0151161.i to i64
  %i.dz = getelementptr [32 x i8], ptr %i.cg, i64 %i.dy ; 4 uses
  store i32 %i.dx, ptr %i.dz, align 8
  %i.ea = lshr i32 %i.dv, 8
  %i.eb = and i32 %i.ea, 255
  %i.ec = getelementptr i8, ptr %i.dz, i64 4
  store i32 %i.eb, ptr %i.ec, align 4
  %i.ed = lshr i32 %i.dv, 6
  %i.ee = and i32 %i.ed, 3                        ; 2 uses
  %i.ef = getelementptr i8, ptr %i.dz, i64 8
  store i32 %i.ee, ptr %i.ef, align 8
  %i.eg = getelementptr i8, ptr %i.dz, i64 24
  store ptr %.0164.i, ptr %i.eg, align 8
  %i.eh = add i32 %i.dx, %.0150162.i              ; 2 uses
  %i.ei = call i32 @llvm.umax.i32(i32 %.0147163.i, i32 %i.ee) ; 2 uses
  %i.ej = add i32 %.0151161.i, 1
  %.0.i = load ptr, ptr %.0164.i, align 8         ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %i.w
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !17

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.ek = icmp ugt i32 %i.eh, %i.dj
  br i1 %i.ek, label %agp_3_5_isochronous_node_enable.exit, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %agp_3_5_dev_list_sort.exit.i
  %.0147.lcssa205.i = phi i32 [ %i.ei, %._crit_edge.i ], [ %i.dl, %agp_3_5_dev_list_sort.exit.i ] ; 6 uses
  %i.el = load i32, ptr %i.o, align 8
  %i.em = add i32 %i.el, 32
  %i.en = call i32 @pci_read_config_word(ptr noundef %i.cd, i32 noundef %i.em, ptr noundef nonnull %i.f) #9 ; 0 uses
  %i.eo = load i16, ptr %i.f, align 2
  %i.ep = and i16 %i.eo, -193
  %.0147.tr.i = trunc nuw nsw i32 %.0147.lcssa205.i to i16
  %i.eq = shl nuw nsw i16 %.0147.tr.i, 6
  %1 = or i16 %i.ep, %i.eq                        ; 2 uses
  store i16 %1, ptr %i.f, align 2
  %i.er = load i32, ptr %i.o, align 8
  %i.es = add i32 %i.er, 32
  %i.et = call i32 @pci_write_config_word(ptr noundef %i.cd, i32 noundef %i.es, i16 noundef zeroext %1) #9 ; 0 uses
  %i.eu = load i32, ptr %i.o, align 8
  %i.ev = add i32 %i.eu, 12
  %i.ew = call i32 @pci_read_config_dword(ptr noundef %i.cd, i32 noundef %i.ev, ptr noundef nonnull %i.c) #9 ; 0 uses
  %i.ex = load i32, ptr %i.c, align 4
  %i.ey = lshr i32 %i.ex, 8
  %i.ez = and i32 %i.ey, 255                      ; 4 uses
  %.not179.i = icmp eq i32 %.070.ph.lcssa114, 0
  br i1 %.not179.i, label %._crit_edge176.i, label %.lr.ph169.i

.lr.ph169.i:                                      ; preds = %._crit_edge.thread.i
  %i.fa = add nuw nsw i32 %.0147.lcssa205.i, 1    ; 3 uses
  %i.fb = add nsw i64 %i.ce, -1                   ; 2 uses
  %xtraiter = and i64 %i.ce, 1
  %i.fc = icmp eq i64 %i.fb, 0
  br i1 %i.fc, label %.epil.preheader, label %.lr.ph169.i.new

.lr.ph169.i.new:                                  ; preds = %.lr.ph169.i
  %unroll_iter = and i64 %i.ce, 4294967294
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph169.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph169.i.new ], [ %indvars.iv.next.i.1, %bb.t ] ; 3 uses
  %.0149167.i = phi i32 [ 0, %.lr.ph169.i.new ], [ %i.fp, %bb.t ]
  %niter = phi i64 [ 0, %.lr.ph169.i.new ], [ %niter.next.1, %bb.t ]
  %i.fd = getelementptr [32 x i8], ptr %i.cg, i64 %indvars.iv.i ; 3 uses
  %i.fe = getelementptr i8, ptr %i.fd, i64 8
  store i32 %.0147.lcssa205.i, ptr %i.fe, align 8
  %i.ff = load i32, ptr %i.fd, align 8
  %i.fg = udiv i32 %i.ff, %i.fa                   ; 2 uses
  %i.fh = getelementptr i8, ptr %i.fd, i64 4
  store i32 %i.fg, ptr %i.fh, align 4
  %i.fi = add i32 %i.fg, %.0149167.i
  %i.fj = getelementptr [32 x i8], ptr %i.cg, i64 %indvars.iv.i ; 3 uses
  %i.fk = getelementptr i8, ptr %i.fj, i64 32
  %i.fl = getelementptr i8, ptr %i.fj, i64 40
  store i32 %.0147.lcssa205.i, ptr %i.fl, align 8
  %i.fm = load i32, ptr %i.fk, align 8
  %i.fn = udiv i32 %i.fm, %i.fa                   ; 2 uses
  %i.fo = getelementptr i8, ptr %i.fj, i64 36
  store i32 %i.fn, ptr %i.fo, align 4
  %i.fp = add i32 %i.fn, %i.fi                    ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge170.i.unr-lcssa, label %bb.t, !llvm.loop !18

._crit_edge170.i.unr-lcssa:                       ; preds = %bb.t
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge170.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge170.i.unr-lcssa, %.lr.ph169.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph169.i ], [ %indvars.iv.next.i.1, %._crit_edge170.i.unr-lcssa ]
  %.0149167.i.epil.init = phi i32 [ 0, %.lr.ph169.i ], [ %i.fp, %._crit_edge170.i.unr-lcssa ]
  %lcmp.mod214 = trunc i32 %.070.ph.lcssa114 to i1
  call void @llvm.assume(i1 %lcmp.mod214)
  %i.fq = getelementptr [32 x i8], ptr %i.cg, i64 %indvars.iv.i.epil.init ; 3 uses
  %i.fr = getelementptr i8, ptr %i.fq, i64 8
  store i32 %.0147.lcssa205.i, ptr %i.fr, align 8
  %i.fs = load i32, ptr %i.fq, align 8
  %i.ft = udiv i32 %i.fs, %i.fa                   ; 2 uses
  %i.fu = getelementptr i8, ptr %i.fq, i64 4
  store i32 %i.ft, ptr %i.fu, align 4
  %i.fv = add i32 %i.ft, %.0149167.i.epil.init
  br label %._crit_edge170.i

._crit_edge170.i:                                 ; preds = %._crit_edge170.i.unr-lcssa, %.epil.preheader
  %.lcssa196 = phi i32 [ %i.fp, %._crit_edge170.i.unr-lcssa ], [ %i.fv, %.epil.preheader ] ; 2 uses
  %i.fw = icmp ugt i32 %.lcssa196, %i.ez
  br i1 %i.fw, label %agp_3_5_isochronous_node_enable.exit, label %.lr.ph175.i.preheader

.lr.ph175.i.preheader:                            ; preds = %._crit_edge170.i
  %xtraiter215 = and i64 %i.ce, 1
  %i.fx = icmp eq i64 %i.fb, 0
  br i1 %i.fx, label %.lr.ph175.i.epil.preheader, label %.lr.ph175.i.preheader.new

.lr.ph175.i.preheader.new:                        ; preds = %.lr.ph175.i.preheader
  %unroll_iter219 = and i64 %i.ce, 4294967294
  br label %.lr.ph175.i

.lr.ph175.i:                                      ; preds = %bb.w, %.lr.ph175.i.preheader.new
  %indvars.iv185.i = phi i64 [ 0, %.lr.ph175.i.preheader.new ], [ %indvars.iv.next186.i.1, %bb.w ] ; 3 uses
  %.0148173.i = phi i32 [ 0, %.lr.ph175.i.preheader.new ], [ %i.gt, %bb.w ]
  %niter220 = phi i64 [ 0, %.lr.ph175.i.preheader.new ], [ %niter220.next.1, %bb.w ]
  %i.fy = getelementptr [32 x i8], ptr %i.cg, i64 %indvars.iv185.i ; 3 uses
  %i.fz = getelementptr i8, ptr %i.fy, i64 4
  %i.ga = load i32, ptr %i.fz, align 4            ; 3 uses
  %i.gb = getelementptr i8, ptr %i.fy, i64 16     ; 2 uses
  store i32 %i.ga, ptr %i.gb, align 8
  %i.gc = getelementptr i8, ptr %i.fy, i64 8
  %i.gd = load i32, ptr %i.gc, align 8            ; 2 uses
  %i.ge = icmp ugt i32 %i.gd, 1
  br i1 %i.ge, label %bb.u, label %.lr.ph175.i.1

bb.u:                                             ; preds = %.lr.ph175.i
  %i.gf = add i32 %i.gd, -1
  %i.gg = shl i32 %i.ga, %i.gf                    ; 2 uses
  store i32 %i.gg, ptr %i.gb, align 8
  br label %.lr.ph175.i.1

.lr.ph175.i.1:                                    ; preds = %bb.u, %.lr.ph175.i
  %i.gh = phi i32 [ %i.gg, %bb.u ], [ %i.ga, %.lr.ph175.i ]
  %i.gi = add i32 %i.gh, %.0148173.i
  %i.gj = getelementptr [32 x i8], ptr %i.cg, i64 %indvars.iv185.i ; 3 uses
  %i.gk = getelementptr i8, ptr %i.gj, i64 36
  %i.gl = load i32, ptr %i.gk, align 4            ; 3 uses
  %i.gm = getelementptr i8, ptr %i.gj, i64 48     ; 2 uses
  store i32 %i.gl, ptr %i.gm, align 8
  %i.gn = getelementptr i8, ptr %i.gj, i64 40
  %i.go = load i32, ptr %i.gn, align 8            ; 2 uses
  %i.gp = icmp ugt i32 %i.go, 1
  br i1 %i.gp, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph175.i.1
  %i.gq = add i32 %i.go, -1
  %i.gr = shl i32 %i.gl, %i.gq                    ; 2 uses
  store i32 %i.gr, ptr %i.gm, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph175.i.1
  %i.gs = phi i32 [ %i.gr, %bb.v ], [ %i.gl, %.lr.ph175.i.1 ]
  %i.gt = add i32 %i.gs, %i.gi                    ; 3 uses
  %indvars.iv.next186.i.1 = add nuw nsw i64 %indvars.iv185.i, 2 ; 2 uses
  %niter220.next.1 = add i64 %niter220, 2         ; 2 uses
  %niter220.ncmp.1 = icmp eq i64 %niter220.next.1, %unroll_iter219
  br i1 %niter220.ncmp.1, label %._crit_edge176.i.loopexit.unr-lcssa, label %.lr.ph175.i, !llvm.loop !19

._crit_edge176.i.loopexit.unr-lcssa:              ; preds = %bb.w
  %lcmp.mod216.not = icmp eq i64 %xtraiter215, 0
  br i1 %lcmp.mod216.not, label %._crit_edge176.i.loopexit, label %.lr.ph175.i.epil.preheader

.lr.ph175.i.epil.preheader:                       ; preds = %._crit_edge176.i.loopexit.unr-lcssa, %.lr.ph175.i.preheader
  %indvars.iv185.i.epil.init = phi i64 [ 0, %.lr.ph175.i.preheader ], [ %indvars.iv.next186.i.1, %._crit_edge176.i.loopexit.unr-lcssa ]
  %.0148173.i.epil.init = phi i32 [ 0, %.lr.ph175.i.preheader ], [ %i.gt, %._crit_edge176.i.loopexit.unr-lcssa ]
  %lcmp.mod218 = trunc i32 %.070.ph.lcssa114 to i1
  call void @llvm.assume(i1 %lcmp.mod218)
  %i.gu = getelementptr [32 x i8], ptr %i.cg, i64 %indvars.iv185.i.epil.init ; 3 uses
  %i.gv = getelementptr i8, ptr %i.gu, i64 4
  %i.gw = load i32, ptr %i.gv, align 4            ; 3 uses
  %i.gx = getelementptr i8, ptr %i.gu, i64 16     ; 2 uses
  store i32 %i.gw, ptr %i.gx, align 8
  %i.gy = getelementptr i8, ptr %i.gu, i64 8
  %i.gz = load i32, ptr %i.gy, align 8            ; 2 uses
  %i.ha = icmp ugt i32 %i.gz, 1
  br i1 %i.ha, label %bb.x, label %._crit_edge176.i.loopexit.epilog-lcssa

bb.x:                                             ; preds = %.lr.ph175.i.epil.preheader
  %i.hb = add i32 %i.gz, -1
  %i.hc = shl i32 %i.gw, %i.hb                    ; 2 uses
  store i32 %i.hc, ptr %i.gx, align 8
  br label %._crit_edge176.i.loopexit.epilog-lcssa

._crit_edge176.i.loopexit.epilog-lcssa:           ; preds = %bb.x, %.lr.ph175.i.epil.preheader
  %i.hd = phi i32 [ %i.hc, %bb.x ], [ %i.gw, %.lr.ph175.i.epil.preheader ]
  %i.he = add i32 %i.hd, %.0148173.i.epil.init
  br label %._crit_edge176.i.loopexit

._crit_edge176.i.loopexit:                        ; preds = %._crit_edge176.i.loopexit.unr-lcssa, %._crit_edge176.i.loopexit.epilog-lcssa
  %.lcssa = phi i32 [ %i.gt, %._crit_edge176.i.loopexit.unr-lcssa ], [ %i.he, %._crit_edge176.i.loopexit.epilog-lcssa ]
  %i.hf = sub nuw nsw i32 %i.ez, %.lcssa196
  br label %._crit_edge176.i

._crit_edge176.i:                                 ; preds = %._crit_edge176.i.loopexit, %._crit_edge.thread.i
  %i.hg = phi i32 [ %i.ez, %._crit_edge.thread.i ], [ %i.hf, %._crit_edge176.i.loopexit ]
  %.0148.lcssa.i = phi i32 [ 0, %._crit_edge.thread.i ], [ %.lcssa, %._crit_edge176.i.loopexit ] ; 2 uses
  %i.hh = add i32 %.070.ph.lcssa114, -1
  %i.hi = zext i32 %i.hh to i64                   ; 2 uses
  %i.hj = getelementptr [32 x i8], ptr %i.cg, i64 %i.hi
  %i.hk = getelementptr i8, ptr %i.hj, i64 4      ; 2 uses
  %i.hl = load i32, ptr %i.hk, align 4
  %i.hm = add i32 %i.hl, %i.hg
  store i32 %i.hm, ptr %i.hk, align 4
  %i.hn = call i32 @llvm.usub.sat.i32(i32 %.0147.lcssa205.i, i32 1)
  %i.ho = shl nuw nsw i32 %i.ez, %i.hn            ; 3 uses
  %i.hp = icmp ugt i32 %.0148.lcssa.i, %i.ho
  br i1 %i.hp, label %agp_3_5_isochronous_node_enable.exit, label %bb.y

bb.y:                                             ; preds = %._crit_edge176.i
  %i.hq = sub nsw i32 %i.dn, %i.ho                ; 2 uses
  %i.hr = udiv i32 %i.hq, %.070.ph.lcssa114       ; 2 uses
  %i.hs = urem i32 %i.hq, %.070.ph.lcssa114
  %i.ht = sub nuw nsw i32 %i.ho, %.0148.lcssa.i
  %i.hu = add i32 %i.ht, %i.hr
  %i.hv = add i32 %i.hu, %i.hs
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %bb.y
  %indvars.iv190.i = phi i64 [ 0, %bb.y ], [ %indvars.iv.next191.i, %bb.z ] ; 3 uses
  %i.hw = getelementptr [32 x i8], ptr %i.cg, i64 %indvars.iv190.i ; 4 uses
  %i.hx = getelementptr i8, ptr %i.hw, i64 24
  %i.hy = load ptr, ptr %i.hx, align 8            ; 2 uses
  %i.hz = getelementptr i8, ptr %i.hy, i64 24
  %i.ia = load ptr, ptr %i.hz, align 8            ; 4 uses
  %i.ib = icmp eq i64 %indvars.iv190.i, %i.hi
  %i.ic = select i1 %i.ib, i32 %i.hv, i32 %i.hr
  %i.id = getelementptr i8, ptr %i.hw, i64 16     ; 3 uses
  %i.ie = load i32, ptr %i.id, align 8
end_hunk_0
