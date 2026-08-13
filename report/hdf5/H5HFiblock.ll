inline.NumInlined: 21
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@H5HF__man_iblock_root_double:bb.a
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.az = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !51
  %i.ba = load i64, ptr @H5E_CANTFREE_g, align 8, !tbaa !51
  %i.bb = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5HF__man_iblock_root_double, i32 noundef 520, i64 noundef %i.az, i64 noundef %i.ba, ptr noundef nonnull @.str.23) #7 ; 0 uses
  br label %bb.ap

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !47  ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 304
  store i32 %spec.select148, ptr %i.bd, align 8, !tbaa !92
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 296 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !97
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 618
  %i.bh = load i8, ptr %i.bg, align 2, !tbaa !94
  %i.bi = zext i8 %i.bh to i32                    ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 697
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !95
  %i.bl = zext i8 %i.bk to i32
  %i.bm = load i32, ptr %i.t, align 8, !tbaa !33  ; 2 uses
  %.139 = call i32 @llvm.umin.i32(i32 %spec.select148, i32 %i.bm)
  %i.bn = load i32, ptr %i.p, align 8, !tbaa !45
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !77
  %.not = icmp eq i32 %i.bp, 0
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 617
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !96
  %i.bs = zext i8 %i.br to i32
  %i.bt = add nuw nsw i32 %i.bi, 4
  %i.bu = add nuw nsw i32 %i.bt, %i.bs
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.bv = phi i32 [ %i.bu, %bb.k ], [ %i.bi, %bb.j ]
  %i.bw = mul i32 %i.bv, %.139
  %spec.select = call i32 @llvm.usub.sat.i32(i32 %spec.select148, i32 %i.bm)
  %i.bx = mul i32 %spec.select, %i.bi
  %reass.add = add i32 %i.bw, %i.bx
  %reass.mul = mul i32 %reass.add, %i.bn
  %i.by = add nuw nsw i32 %i.bi, 9
  %i.bz = add nuw nsw i32 %i.by, %i.bl
  %i.ca = add i32 %i.bz, %reass.mul
  %i.cb = zext i32 %i.ca to i64
  store i64 %i.cb, ptr %i.be, align 8, !tbaa !97
  %i.cc = load ptr, ptr %i.am, align 8, !tbaa !64
  %i.cd = call zeroext i1 @H5F_use_tmp_space(ptr noundef %i.cc) #7
  %i.ce = load ptr, ptr %i.am, align 8, !tbaa !64 ; 2 uses
  %i.cf = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 296
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !97 ; 2 uses
  br i1 %i.cd, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ci = call i64 @H5MF_alloc_tmp(ptr noundef %i.ce, i64 noundef %i.ch) #7 ; 2 uses
  %i.cj = icmp eq i64 %i.ci, -1
  br i1 %i.cj, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ck = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !51
  %i.cl = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !51
  %i.cm = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5HF__man_iblock_root_double, i32 noundef 531, i64 noundef %i.ck, i64 noundef %i.cl, ptr noundef nonnull @.str.24) #7 ; 0 uses
  br label %bb.ap

bb.o:                                             ; preds = %bb.l
  %i.cn = call i64 @H5MF_alloc(ptr noundef %i.ce, i32 noundef 6, i64 noundef %i.ch) #7 ; 2 uses
  %i.co = icmp eq i64 %i.cn, -1
  br i1 %i.co, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cp = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !51
  %i.cq = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !51
  %i.cr = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5HF__man_iblock_root_double, i32 noundef 536, i64 noundef %i.cp, i64 noundef %i.cq, ptr noundef nonnull @.str.24) #7 ; 0 uses
  br label %bb.ap

bb.q:                                             ; preds = %bb.o, %bb.m
  %.0105 = phi i64 [ %i.ci, %bb.m ], [ %i.cn, %bb.o ] ; 4 uses
  %i.cs = load ptr, ptr %i.a, align 8, !tbaa !47  ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 296
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !97 ; 2 uses
  %.not135 = icmp eq i64 %i.bf, %i.cu
  br i1 %.not135, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cv = call i32 @H5AC_resize_entry(ptr noundef nonnull %i.cs, i64 noundef %i.cu) #7
  %i.cw = icmp slt i32 %i.cv, 0
  br i1 %i.cw, label %bb.s, label %._crit_edge163

._crit_edge163:                                   ; preds = %bb.r
  %.pre164 = load ptr, ptr %i.a, align 8, !tbaa !47
  br label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cx = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !51
  %i.cy = load i64, ptr @H5E_CANTRESIZE_g, align 8, !tbaa !51
  %i.cz = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5HF__man_iblock_root_double, i32 noundef 542, i64 noundef %i.cx, i64 noundef %i.cy, ptr noundef nonnull @.str.25) #7 ; 0 uses
  br label %bb.ap

bb.t:                                             ; preds = %._crit_edge163, %bb.q
  %i.da = phi ptr [ %.pre164, %._crit_edge163 ], [ %i.cs, %bb.q ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 288
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !71 ; 3 uses
  %.not136 = icmp ne i64 %i.dc, -1
  %i.dd = icmp eq i64 %i.dc, %.0105
  %or.cond = and i1 %.not136, %i.dd
  br i1 %or.cond, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.de = load ptr, ptr %i.am, align 8, !tbaa !64
  %i.df = call i32 @H5AC_move_entry(ptr noundef %i.de, ptr noundef nonnull @H5AC_FHEAP_IBLOCK, i64 noundef %i.dc, i64 noundef %.0105) #7
  %i.dg = icmp slt i32 %i.df, 0
  br i1 %i.dg, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dh = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !51
  %i.di = load i64, ptr @H5E_CANTMOVE_g, align 8, !tbaa !51
  %i.dj = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5HF__man_iblock_root_double, i32 noundef 548, i64 noundef %i.dh, i64 noundef %i.di, ptr noundef nonnull @.str.26) #7 ; 0 uses
  br label %bb.ap

bb.w:                                             ; preds = %bb.u
  %i.dk = load ptr, ptr %i.a, align 8, !tbaa !47  ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 288
  store i64 %.0105, ptr %i.dl, align 8, !tbaa !71
  br label %bb.x

bb.x:                                             ; preds = %bb.t, %bb.w
  %i.dm = phi ptr [ %i.da, %bb.t ], [ %i.dk, %bb.w ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 344
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !53
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 304
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !92
  %i.dr = load i32, ptr %i.p, align 8, !tbaa !45
  %i.ds = mul i32 %i.dr, %i.dq
  %i.dt = zext i32 %i.ds to i64
  %i.du = call ptr @H5FL_seq_realloc(ptr noundef nonnull @H5_H5HF_indirect_ent_t_seq_free_list, ptr noundef %i.do, i64 noundef %i.dt) #7 ; 2 uses
  %i.dv = load ptr, ptr %i.a, align 8, !tbaa !47  ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 344
  store ptr %i.du, ptr %i.dw, align 8, !tbaa !53
  %i.dx = icmp eq ptr %i.du, null
  br i1 %i.dx, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dy = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !51
  %i.dz = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !51
  %i.ea = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5HF__man_iblock_root_double, i32 noundef 555, i64 noundef %i.dy, i64 noundef %i.dz, ptr noundef nonnull @.str.27) #7 ; 0 uses
  br label %bb.ap

bb.z:                                             ; preds = %bb.x
  br i1 %.0112, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.eb = load i32, ptr %i.c, align 4, !tbaa !57  ; 2 uses
  %i.ec = sub i32 %.0113, %i.eb
  %i.ed = call i32 @H5HF__hdr_skip_blocks(ptr noundef nonnull %0, ptr noundef nonnull %i.dv, i32 noundef %i.eb, i32 noundef %i.ec) #7
  %i.ee = icmp slt i32 %i.ed, 0
  br i1 %i.ee, label %bb.ab, label %._crit_edge165

._crit_edge165:                                   ; preds = %bb.aa
  %.pre166 = load ptr, ptr %i.a, align 8, !tbaa !47
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ef = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !51
  %i.eg = load i64, ptr @H5E_CANTDEC_g, align 8, !tbaa !51
  %i.eh = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5HF__man_iblock_root_double, i32 noundef 561, i64 noundef %i.ef, i64 noundef %i.eg, ptr noundef nonnull @.str.18) #7 ; 0 uses
  br label %bb.ap

bb.ac:                                            ; preds = %._crit_edge165, %bb.z
  %i.ei = phi ptr [ %.pre166, %._crit_edge165 ], [ %i.dv, %bb.z ] ; 5 uses
  %i.ej = load i32, ptr %i.p, align 8, !tbaa !45  ; 8 uses
  %i.ek = mul i32 %i.ej, %i.s                     ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 304
  %i.em = load i32, ptr %i.el, align 8, !tbaa !92 ; 2 uses
  %i.en = mul i32 %i.em, %i.ej                    ; 2 uses
  %i.eo = icmp ult i32 %i.ek, %i.en
  br i1 %i.eo, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.ac
  %i.ep = zext i32 %i.en to i64                   ; 2 uses
  %i.eq = zext i32 %i.ek to i64                   ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ei, i64 344
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !53 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !85 ; 3 uses
  %i.ev = sub nsw i64 %i.ep, %i.eq                ; 3 uses
  %xtraiter = and i64 %i.ev, 1
  %i.ew = add nsw i64 %i.ep, -1
  %i.ex = icmp eq i64 %i.ew, %i.eq
  br i1 %i.ex, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.ev, -2
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.lr.ph.new
  %.0106151 = phi i64 [ 0, %.lr.ph.new ], [ %i.fh, %bb.ad ]
  %.0109150 = phi i64 [ %i.eq, %.lr.ph.new ], [ %i.fi, %bb.ad ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.ad ]
  %.lhs.trunc = trunc i64 %.0109150 to i32
  %i.ey = udiv i32 %.lhs.trunc, %i.ej
  %.zext = zext i32 %i.ey to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %.0109150
  store i64 -1, ptr %i.ez, align 8, !tbaa !98
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %.zext
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !51
  %i.fc = add i64 %i.fb, %.0106151
  %2 = trunc i64 %.0109150 to i32
  %.lhs.trunc.1 = add i32 %2, 1
  %i.fd = udiv i32 %.lhs.trunc.1, %i.ej
  %.zext.1 = zext i32 %i.fd to i64
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %.0109150
  %3 = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store i64 -1, ptr %3, align 8, !tbaa !98
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %.zext.1
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !51
  %i.fh = add i64 %i.fg, %i.fc                    ; 3 uses
  %i.fi = add nuw nsw i64 %.0109150, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.ad, !llvm.loop !105

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.ad
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.0106151.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.fh, %._crit_edge.loopexit.unr-lcssa ]
  %.0109150.epil.init = phi i64 [ %i.eq, %.lr.ph ], [ %i.fi, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod178 = trunc i64 %i.ev to i1
  call void @llvm.assume(i1 %lcmp.mod178)
  %.lhs.trunc.epil = trunc i64 %.0109150.epil.init to i32
  %i.fj = udiv i32 %.lhs.trunc.epil, %i.ej
  %.zext.epil = zext i32 %i.fj to i64
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %.0109150.epil.init
  store i64 -1, ptr %i.fk, align 8, !tbaa !98
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %.zext.epil
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !51
  %i.fn = add i64 %i.fm, %.0106151.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.ac
  %.0106.lcssa = phi i64 [ 0, %bb.ac ], [ %i.fh, %._crit_edge.loopexit.unr-lcssa ], [ %i.fn, %.epil.preheader ]
  %i.fo = load i32, ptr %i.bo, align 4, !tbaa !77
  %.not137 = icmp eq i32 %i.fo, 0
  br i1 %.not137, label %.thread, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge
  %i.fp = load i32, ptr %i.t, align 8, !tbaa !33  ; 2 uses
  %i.fq = icmp ult i32 %i.s, %i.fp
  br i1 %i.fq, label %bb.af, label %.thread

bb.af:                                            ; preds = %bb.ae
  %.140 = call i32 @llvm.umin.i32(i32 %i.em, i32 %i.fp) ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ei, i64 352
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !54
  %i.ft = mul i32 %.140, %i.ej
  %i.fu = zext i32 %i.ft to i64
  %i.fv = call ptr @H5FL_seq_realloc(ptr noundef nonnull @H5_H5HF_indirect_filt_ent_t_seq_free_list, ptr noundef %i.fs, i64 noundef %i.fu) #7 ; 7 uses
  %i.fw = load ptr, ptr %i.a, align 8, !tbaa !47  ; 4 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 352
  store ptr %i.fv, ptr %i.fx, align 8, !tbaa !54
  %i.fy = icmp eq ptr %i.fv, null
  br i1 %i.fy, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fz = load i32, ptr %i.p, align 8, !tbaa !45  ; 5 uses
  %i.ga = mul i32 %i.fz, %i.s                     ; 2 uses
  %i.gb = mul i32 %i.fz, %.140                    ; 2 uses
  %i.gc = zext i32 %i.gb to i64                   ; 3 uses
  %i.gd = icmp ult i32 %i.ga, %i.gb
  br i1 %i.gd, label %.lr.ph156.preheader, label %.thread

.lr.ph156.preheader:                              ; preds = %bb.ag
  %i.ge = zext i32 %i.ga to i64                   ; 4 uses
  %i.gf = sub nsw i64 %i.gc, %i.ge
  %xtraiter179 = and i64 %i.gf, 3                 ; 2 uses
  %lcmp.mod180.not = icmp eq i64 %xtraiter179, 0
  br i1 %lcmp.mod180.not, label %.lr.ph156.prol.loopexit, label %.lr.ph156.prol

.lr.ph156.prol:                                   ; preds = %.lr.ph156.preheader, %.lr.ph156.prol
  %.1110154.prol = phi i64 [ %i.gi, %.lr.ph156.prol ], [ %i.ge, %.lr.ph156.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph156.prol ], [ 0, %.lr.ph156.preheader ]
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr %i.fv, i64 %.1110154.prol ; 2 uses
  store i64 0, ptr %i.gg, align 8, !tbaa !79
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  store i32 0, ptr %i.gh, align 8, !tbaa !82
  %i.gi = add nuw nsw i64 %.1110154.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter179
  br i1 %prol.iter.cmp.not, label %.lr.ph156.prol.loopexit, label %.lr.ph156.prol, !llvm.loop !106

.lr.ph156.prol.loopexit:                          ; preds = %.lr.ph156.prol, %.lr.ph156.preheader
  %.1110154.unr = phi i64 [ %i.ge, %.lr.ph156.preheader ], [ %i.gi, %.lr.ph156.prol ]
  %i.gj = sub nsw i64 %i.ge, %i.gc
  %i.gk = icmp ugt i64 %i.gj, -4
  br i1 %i.gk, label %.thread, label %.lr.ph156

.lr.ph156:                                        ; preds = %.lr.ph156.prol.loopexit, %.lr.ph156
  %.1110154 = phi i64 [ %i.gw, %.lr.ph156 ], [ %.1110154.unr, %.lr.ph156.prol.loopexit ] ; 5 uses
  %i.gl = getelementptr inbounds nuw [16 x i8], ptr %i.fv, i64 %.1110154 ; 2 uses
  store i64 0, ptr %i.gl, align 8, !tbaa !79
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  store i32 0, ptr %i.gm, align 8, !tbaa !82
  %i.gn = getelementptr inbounds nuw [16 x i8], ptr %i.fv, i64 %.1110154 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  store i64 0, ptr %i.go, align 8, !tbaa !79
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  store i32 0, ptr %i.gp, align 8, !tbaa !82
  %i.gq = getelementptr inbounds nuw [16 x i8], ptr %i.fv, i64 %.1110154 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 32
  store i64 0, ptr %i.gr, align 8, !tbaa !79
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 40
  store i32 0, ptr %i.gs, align 8, !tbaa !82
  %i.gt = getelementptr inbounds nuw [16 x i8], ptr %i.fv, i64 %.1110154 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 48
  store i64 0, ptr %i.gu, align 8, !tbaa !79
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 56
  store i32 0, ptr %i.gv, align 8, !tbaa !82
  %i.gw = add nuw nsw i64 %.1110154, 4            ; 2 uses
  %exitcond160.not.3 = icmp eq i64 %i.gw, %i.gc
  br i1 %exitcond160.not.3, label %.thread, label %.lr.ph156, !llvm.loop !108

bb.ah:                                            ; preds = %bb.af
  %i.gx = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !51
  %i.gy = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !51
  %i.gz = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5HF__man_iblock_root_double, i32 noundef 584, i64 noundef %i.gx, i64 noundef %i.gy, ptr noundef nonnull @.str.28) #7 ; 0 uses
  br label %bb.ap

.thread:                                          ; preds = %.lr.ph156.prol.loopexit, %.lr.ph156, %bb.ag, %bb.ae, %._crit_edge
  %i.ha = phi i32 [ %i.ej, %._crit_edge ], [ %i.fz, %bb.ag ], [ %i.ej, %bb.ae ], [ %i.fz, %.lr.ph156 ], [ %i.fz, %.lr.ph156.prol.loopexit ]
  %i.hb = phi ptr [ %i.ei, %._crit_edge ], [ %i.fw, %bb.ag ], [ %i.ei, %bb.ae ], [ %i.fw, %.lr.ph156 ], [ %i.fw, %.lr.ph156.prol.loopexit ] ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 304
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !92 ; 2 uses
  %i.he = load i32, ptr %i.t, align 8, !tbaa !33  ; 2 uses
  %i.hf = icmp ugt i32 %i.hd, %i.he
  br i1 %i.hf, label %bb.ai, label %.thread144

bb.ai:                                            ; preds = %.thread
  %i.hg = sub nuw i32 %i.hd, %i.he                ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hb, i64 320
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !46
  %i.hj = mul i32 %i.ha, %i.hg
  %i.hk = zext i32 %i.hj to i64
  %i.hl = call ptr @H5FL_seq_realloc(ptr noundef nonnull @H5_H5HF_indirect_ptr_t_seq_free_list, ptr noundef %i.hi, i64 noundef %i.hk) #7 ; 2 uses
  %i.hm = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 320
  store ptr %i.hl, ptr %i.hn, align 8, !tbaa !46
  %i.ho = icmp eq ptr %i.hl, null
  br i1 %i.ho, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hp = load i32, ptr %i.t, align 8, !tbaa !33
  %.0 = call i32 @llvm.usub.sat.i32(i32 %i.s, i32 %i.hp)
  %i.hq = load i32, ptr %i.p, align 8, !tbaa !45  ; 2 uses
  %i.hr = mul i32 %.0, %i.hq                      ; 2 uses
  %i.hs = mul i32 %i.hq, %i.hg                    ; 2 uses
  %i.ht = zext i32 %i.hs to i64                   ; 3 uses
  %i.hu = icmp ult i32 %i.hr, %i.hs
  br i1 %i.hu, label %.lr.ph159.preheader, label %.thread144

.lr.ph159.preheader:                              ; preds = %bb.aj
  %i.hv = zext i32 %i.hr to i64                   ; 4 uses
  %i.hw = sub nsw i64 %i.ht, %i.hv
  %xtraiter181 = and i64 %i.hw, 3                 ; 2 uses
  %lcmp.mod182.not = icmp eq i64 %xtraiter181, 0
  br i1 %lcmp.mod182.not, label %.lr.ph159.prol.loopexit, label %.lr.ph159.prol

.lr.ph159.prol:                                   ; preds = %.lr.ph159.preheader, %.lr.ph159.prol
  %.2111157.prol = phi i64 [ %i.ib, %.lr.ph159.prol ], [ %i.hv, %.lr.ph159.preheader ] ; 2 uses
  %prol.iter183 = phi i64 [ %prol.iter183.next, %.lr.ph159.prol ], [ 0, %.lr.ph159.preheader ]
  %i.hx = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 320
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !46
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %.2111157.prol
  store ptr null, ptr %i.ia, align 8, !tbaa !47
  %i.ib = add nuw nsw i64 %.2111157.prol, 1       ; 2 uses
  %prol.iter183.next = add i64 %prol.iter183, 1   ; 2 uses
  %prol.iter183.cmp.not = icmp eq i64 %prol.iter183.next, %xtraiter181
  br i1 %prol.iter183.cmp.not, label %.lr.ph159.prol.loopexit, label %.lr.ph159.prol, !llvm.loop !109

.lr.ph159.prol.loopexit:                          ; preds = %.lr.ph159.prol, %.lr.ph159.preheader
  %.2111157.unr = phi i64 [ %i.hv, %.lr.ph159.preheader ], [ %i.ib, %.lr.ph159.prol ]
  %i.ic = sub nsw i64 %i.hv, %i.ht
  %i.id = icmp ugt i64 %i.ic, -4
  br i1 %i.id, label %.thread144, label %.lr.ph159

.lr.ph159:                                        ; preds = %.lr.ph159.prol.loopexit, %.lr.ph159
  %.2111157 = phi i64 [ %i.ix, %.lr.ph159 ], [ %.2111157.unr, %.lr.ph159.prol.loopexit ] ; 5 uses
  %i.ie = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 320
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !46
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %.2111157
  store ptr null, ptr %i.ih, align 8, !tbaa !47
  %i.ii = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 320
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !46
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %.2111157
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  store ptr null, ptr %i.im, align 8, !tbaa !47
  %i.in = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 320
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !46
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %.2111157
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  store ptr null, ptr %i.ir, align 8, !tbaa !47
  %i.is = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 320
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !46
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %.2111157
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 24
  store ptr null, ptr %i.iw, align 8, !tbaa !47
  %i.ix = add nuw nsw i64 %.2111157, 4            ; 2 uses
  %exitcond161.not.3 = icmp eq i64 %i.ix, %i.ht
end_hunk_0
