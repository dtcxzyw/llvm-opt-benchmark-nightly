inline.NumInlined: 3422
inline.NumDeleted: 950
begin_hunk_0_@_ZN3fmt3v126detail6bigint13divmod_assignERKS2_:bb.a
  %i.ap = sub nsw i64 %i.an, %i.am
  %i.aq = and i64 %i.ap, 4611686018427387896
  %diff.check = icmp eq i64 %i.aq, 0
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.b, 2147483640               ; 4 uses
  %i.ar = sub nsw i64 %i.an, %n.vec
  %i.as = sub nsw i64 %i.am, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.at = sub i64 %i.an, %index
  %i.au = sub i64 %i.am, %index
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.at ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -12
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 -28
  %wide.load = load <4 x i32>, ptr %i.aw, align 4, !tbaa !3
  %wide.load107 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !3
  %i.ay = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %i.au ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -12
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 -28
  store <4 x i32> %wide.load, ptr %i.az, align 4, !tbaa !3
  store <4 x i32> %wide.load107, ptr %i.ba, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !546

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv18.i.ph = phi i64 [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.i ], [ %i.ar, %middle.block ] ; 4 uses
  %indvars.iv.i11.ph = phi i64 [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph.i ], [ %i.as, %middle.block ] ; 2 uses
  %i.bc = add nsw i64 %indvars.iv18.i.ph, 1
  %xtraiter = and i64 %i.bc, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv18.i.prol = phi i64 [ %indvars.iv.next19.i.prol, %scalar.ph.prol ], [ %indvars.iv18.i.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv.i11.prol = phi i64 [ %indvars.iv.next.i12.prol, %scalar.ph.prol ], [ %indvars.iv.i11.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i.prol
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !3
  %i.bf = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11.prol
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !3
  %indvars.iv.next19.i.prol = add nsw i64 %indvars.iv18.i.prol, -1 ; 2 uses
  %indvars.iv.next.i12.prol = add nsw i64 %indvars.iv.i11.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !547

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv18.i.unr = phi i64 [ %indvars.iv18.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next19.i.prol, %scalar.ph.prol ]
  %indvars.iv.i11.unr = phi i64 [ %indvars.iv.i11.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i12.prol, %scalar.ph.prol ]
  %i.bg = icmp ult i64 %indvars.iv18.i.ph, 3
  br i1 %i.bg, label %.lr.ph.preheader.i.i, label %scalar.ph

.lr.ph.preheader.i.i:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i
  %i.bh = xor i32 %i.k, -1
  %i.bi = add i32 %i.e, %i.bh
  %i.bj = zext i32 %i.bi to i64
  %i.bk = shl nuw nsw i64 %i.bj, 2
  %i.bl = add nuw nsw i64 %i.bk, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.pre.i, i8 0, i64 %i.bl, i1 false), !tbaa !3
  %i.bm = load i32, ptr %i.d, align 8, !tbaa !498
  %i.bn = sub nsw i32 %i.bm, %i.y                 ; 2 uses
  store i32 %i.bn, ptr %i.d, align 8, !tbaa !498
  %.pre.pre = load i64, ptr %i.g, align 8, !tbaa !506
  br label %_ZN3fmt3v126detail6bigint5alignERKS2_.exit

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i.3, %scalar.ph ], [ %indvars.iv18.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv.i11 = phi i64 [ %indvars.iv.next.i12.3, %scalar.ph ], [ %indvars.iv.i11.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !3
  %i.bq = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !3
  %i.br = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i
  %i.bs = getelementptr i8, ptr %i.br, i64 -4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !3
  %i.bu = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  %i.bv = getelementptr i8, ptr %i.bu, i64 -4
  store i32 %i.bt, ptr %i.bv, align 4, !tbaa !3
  %i.bw = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i
  %i.bx = getelementptr i8, ptr %i.bw, i64 -8
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3
  %i.bz = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  %i.ca = getelementptr i8, ptr %i.bz, i64 -8
  store i32 %i.by, ptr %i.ca, align 4, !tbaa !3
  %indvars.iv.next19.i.2 = add nsw i64 %indvars.iv18.i, -3 ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv.next19.i.2
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3
  %i.cd = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  %i.ce = getelementptr i8, ptr %i.cd, i64 -12
  store i32 %i.cc, ptr %i.ce, align 4, !tbaa !3
  %indvars.iv.next19.i.3 = add nsw i64 %indvars.iv18.i, -4
  %indvars.iv.next.i12.3 = add nsw i64 %indvars.iv.i11, -4
  %.not.i13.3 = icmp eq i64 %indvars.iv.next19.i.2, 0
  br i1 %.not.i13.3, label %.lr.ph.preheader.i.i, label %scalar.ph, !llvm.loop !548

_ZN3fmt3v126detail6bigint5alignERKS2_.exit:       ; preds = %select.unfold, %.lr.ph.preheader.i.i
  %.pre = phi i64 [ %i.h, %select.unfold ], [ %.pre.pre, %.lr.ph.preheader.i.i ]
  %i.cf = phi i32 [ %i.e, %select.unfold ], [ %i.bn, %.lr.ph.preheader.i.i ]
  %i.cg = phi i64 [ %i.b, %select.unfold ], [ %i.ai, %.lr.ph.preheader.i.i ]
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit32

_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit32: ; preds = %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit32.backedge, %_ZN3fmt3v126detail6bigint5alignERKS2_.exit
  %i.cj = phi i32 [ %i.cf, %_ZN3fmt3v126detail6bigint5alignERKS2_.exit ], [ %i.ev, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit32.backedge ]
  %i.ck = phi i64 [ %.pre, %_ZN3fmt3v126detail6bigint5alignERKS2_.exit ], [ %i.ex, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit32.backedge ] ; 5 uses
  %i.cl = phi i64 [ %i.cg, %_ZN3fmt3v126detail6bigint5alignERKS2_.exit ], [ %i.es, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit32.backedge ] ; 3 uses
  %.0 = phi i32 [ 0, %_ZN3fmt3v126detail6bigint5alignERKS2_.exit ], [ %i.et, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit32.backedge ]
  %i.cm = trunc i64 %i.cl to i32
  %.not21.i = icmp eq i64 %i.ck, 0
  br i1 %.not21.i, label %._crit_edge.thread.i, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit32
  %i.cn = load i32, ptr %i.j, align 8, !tbaa !498
  %i.co = sub i32 %i.cn, %i.cj
  %i.cp = load ptr, ptr %1, align 8, !tbaa !496   ; 3 uses
  %i.cq = load ptr, ptr %0, align 8, !tbaa !496   ; 4 uses
  %i.cr = sext i32 %i.co to i64                   ; 2 uses
  %xtraiter122 = and i64 %i.ck, 1
  %i.cs = icmp eq i64 %i.ck, 1
  br i1 %i.cs, label %.epil.preheader, label %.lr.ph.i14.new

.lr.ph.i14.new:                                   ; preds = %.lr.ph.i14
  %unroll_iter = and i64 %i.ck, -2
  br label %bb.g

._crit_edge.i.unr-lcssa:                          ; preds = %bb.g
  %lcmp.mod123.not = icmp eq i64 %xtraiter122, 0
  br i1 %lcmp.mod123.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i14
  %indvars.iv.i15.epil.init = phi i64 [ %i.cr, %.lr.ph.i14 ], [ %indvars.iv.next.i16.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.01223.i.epil.init = phi i64 [ 0, %.lr.ph.i14 ], [ %i.dz, %._crit_edge.i.unr-lcssa ]
  %.01822.i.epil.init = phi i64 [ 0, %.lr.ph.i14 ], [ %i.dy, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod126 = trunc i64 %i.ck to i1
  tail call void @llvm.assume(i1 %lcmp.mod126)
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %.01223.i.epil.init
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !3
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %indvars.iv.i15.epil.init ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3
  %i.cx = zext i32 %i.cw to i64
  %i.cy = zext i32 %i.cu to i64
  %i.cz = add nuw nsw i64 %.01822.i.epil.init, %i.cy
  %i.da = sub nsw i64 %i.cx, %i.cz                ; 2 uses
  %i.db = trunc i64 %i.da to i32
  store i32 %i.db, ptr %i.cv, align 4, !tbaa !3
  %indvars.iv.next.i16.epil = add nsw i64 %indvars.iv.i15.epil.init, 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.dw, %._crit_edge.i.unr-lcssa ], [ %i.da, %.epil.preheader ]
  %indvars.iv.next.i16.lcssa = phi i64 [ %indvars.iv.next.i16.1, %._crit_edge.i.unr-lcssa ], [ %indvars.iv.next.i16.epil, %.epil.preheader ]
  %i.dc = icmp sgt i64 %.lcssa, -1
  br i1 %i.dc, label %._crit_edge.thread.i, label %bb.h

bb.g:                                             ; preds = %bb.g, %.lr.ph.i14.new
  %indvars.iv.i15 = phi i64 [ %i.cr, %.lr.ph.i14.new ], [ %indvars.iv.next.i16.1, %bb.g ] ; 3 uses
  %.01223.i = phi i64 [ 0, %.lr.ph.i14.new ], [ %i.dz, %bb.g ] ; 3 uses
  %.01822.i = phi i64 [ 0, %.lr.ph.i14.new ], [ %i.dy, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph.i14.new ], [ %niter.next.1, %bb.g ]
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %.01223.i
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !3
  %i.df = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %indvars.iv.i15 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !3
  %i.dh = zext i32 %i.dg to i64
  %i.di = zext i32 %i.de to i64
  %i.dj = add nuw nsw i64 %.01822.i, %i.di
  %i.dk = sub nsw i64 %i.dh, %i.dj                ; 2 uses
  %i.dl = trunc i64 %i.dk to i32
  store i32 %i.dl, ptr %i.df, align 4, !tbaa !3
  %i.dm = lshr i64 %i.dk, 63
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %.01223.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !3
  %i.dq = getelementptr [4 x i8], ptr %i.cq, i64 %indvars.iv.i15
  %i.dr = getelementptr i8, ptr %i.dq, i64 4      ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !3
  %i.dt = zext i32 %i.ds to i64
  %i.du = zext i32 %i.dp to i64
  %i.dv = add nuw nsw i64 %i.dm, %i.du
  %i.dw = sub nsw i64 %i.dt, %i.dv                ; 3 uses
  %i.dx = trunc i64 %i.dw to i32
  store i32 %i.dx, ptr %i.dr, align 4, !tbaa !3
  %i.dy = lshr i64 %i.dw, 63                      ; 2 uses
  %indvars.iv.next.i16.1 = add nsw i64 %indvars.iv.i15, 2 ; 3 uses
  %i.dz = add nuw i64 %.01223.i, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.g, !llvm.loop !549

bb.h:                                             ; preds = %._crit_edge.i
  %sext.i18 = shl i64 %indvars.iv.next.i16.lcssa, 32
  %2 = ashr exact i64 %sext.i18, 30
  %3 = getelementptr inbounds i8, ptr %i.cq, i64 %2 ; 2 uses
  %i.ea = load i32, ptr %3, align 4, !tbaa !3
  %i.eb = add i32 %i.ea, -1
  store i32 %i.eb, ptr %3, align 4, !tbaa !3
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.h, %._crit_edge.i, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit32
  %i.ec = load ptr, ptr %0, align 8
  %smin.i.i = tail call i32 @llvm.smin.i32(i32 %i.cm, i32 1) ; 2 uses
  %i.ed = trunc i64 %i.cl to i32                  ; 2 uses
  %i.ee = icmp sgt i32 %i.ed, 1
  br i1 %i.ee, label %.lr.ph96, label %.critedge.i.i

.lr.ph96:                                         ; preds = %._crit_edge.thread.i
  %i.ef = and i64 %i.cl, 2147483647
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %i.eg = trunc nuw i64 %i.ej to i32              ; 2 uses
  %i.eh = icmp sgt i32 %i.eg, 1
  br i1 %i.eh, label %bb.j, label %.critedge.i.i, !llvm.loop !550

bb.j:                                             ; preds = %.lr.ph96, %bb.i
  %i.ei = phi i32 [ %i.ed, %.lr.ph96 ], [ %i.eg, %bb.i ]
  %indvars.iv.i14.i95 = phi i64 [ %i.ef, %.lr.ph96 ], [ %i.ej, %bb.i ]
  %i.ej = add nsw i64 %indvars.iv.i14.i95, -1     ; 3 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !3
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %bb.i, label %..critedge.i.i_crit_edge, !llvm.loop !550

..critedge.i.i_crit_edge:                         ; preds = %bb.j
  br label %.critedge.i.i, !llvm.loop !550

.critedge.i.i:                                    ; preds = %bb.i, %..critedge.i.i_crit_edge, %._crit_edge.thread.i
  %.0.in.lcssa.i.i = phi i32 [ %smin.i.i, %._crit_edge.thread.i ], [ %i.ei, %..critedge.i.i_crit_edge ], [ %smin.i.i, %bb.i ]
  %i.en = zext i32 %.0.in.lcssa.i.i to i64        ; 3 uses
  %i.eo = load i64, ptr %i.ch, align 8, !tbaa !497 ; 2 uses
  %i.ep = icmp ult i64 %i.eo, %i.en
  br i1 %i.ep, label %bb.k, label %_ZN3fmt3v126detail6bigint16subtract_alignedERKS2_.exit

bb.k:                                             ; preds = %.critedge.i.i
  %i.eq = load ptr, ptr %i.ci, align 8, !tbaa !494
  tail call void %i.eq(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef %i.en), !inline_history !551
  %.pre.i.i.i.i = load i64, ptr %i.ch, align 8, !tbaa !497
  br label %_ZN3fmt3v126detail6bigint16subtract_alignedERKS2_.exit

_ZN3fmt3v126detail6bigint16subtract_alignedERKS2_.exit: ; preds = %.critedge.i.i, %bb.k
  %i.er = phi i64 [ %i.eo, %.critedge.i.i ], [ %.pre.i.i.i.i, %bb.k ]
  %i.es = tail call noundef i64 @llvm.umin.i64(i64 %i.en, i64 %i.er) ; 4 uses
  store i64 %i.es, ptr %i.a, align 8, !tbaa !506
  %i.et = add nuw nsw i32 %.0, 1                  ; 4 uses
  %i.eu = trunc nuw i64 %i.es to i32              ; 2 uses
  %i.ev = load i32, ptr %i.d, align 8, !tbaa !498 ; 2 uses
  %i.ew = add nsw i32 %i.ev, %i.eu                ; 2 uses
  %i.ex = load i64, ptr %i.g, align 8, !tbaa !506 ; 3 uses
  %i.ey = trunc i64 %i.ex to i32                  ; 2 uses
  %i.ez = load i32, ptr %i.j, align 8, !tbaa !498
  %i.fa = add nsw i32 %i.ez, %i.ey                ; 2 uses
  %.not.i19 = icmp eq i32 %i.ew, %i.fa
  br i1 %.not.i19, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN3fmt3v126detail6bigint16subtract_alignedERKS2_.exit
  %i.fb = icmp sgt i32 %i.ew, %i.fa
  br i1 %i.fb, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit32.backedge, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit

bb.m:                                             ; preds = %_ZN3fmt3v126detail6bigint16subtract_alignedERKS2_.exit
  %i.fc = sub nsw i32 %i.eu, %i.ey
  %spec.store.select.i21 = tail call i32 @llvm.smax.i32(i32 %i.fc, i32 0)
  %i.fd = load ptr, ptr %0, align 8
  %i.fe = load ptr, ptr %1, align 8
  %sext.i22 = shl nuw i64 %i.es, 32
  %i.ff = ashr exact i64 %sext.i22, 32            ; 3 uses
  %i.fg = zext nneg i32 %spec.store.select.i21 to i64 ; 3 uses
  %sext55.i23 = shl i64 %i.ex, 32
  %i.fh = ashr exact i64 %sext55.i23, 32          ; 2 uses
  %smin60 = tail call i64 @llvm.smin.i64(i64 %i.ff, i64 %i.fg)
  %.not35.not.i26100 = icmp sgt i64 %i.ff, %i.fg
  br i1 %.not35.not.i26100, label %.lr.ph104, label %._crit_edge105

bb.n:                                             ; preds = %.lr.ph104
  %.not35.not.i26 = icmp sgt i64 %indvars.iv.next.i28, %i.fg
  br i1 %.not35.not.i26, label %.lr.ph104, label %._crit_edge105, !llvm.loop !533

.lr.ph104:                                        ; preds = %bb.m, %bb.n
  %indvars.iv.i25102 = phi i64 [ %indvars.iv.next.i28, %bb.n ], [ %i.ff, %bb.m ]
  %indvars.iv45.i24101 = phi i64 [ %indvars.iv.next46.i29, %bb.n ], [ %i.fh, %bb.m ]
  %indvars.iv.next.i28 = add nsw i64 %indvars.iv.i25102, -1 ; 3 uses
  %indvars.iv.next46.i29 = add nsw i64 %indvars.iv45.i24101, -1 ; 3 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv.next.i28
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !3  ; 2 uses
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.fe, i64 %indvars.iv.next46.i29
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !3  ; 2 uses
  %.not37.i30 = icmp eq i32 %i.fj, %i.fl
  br i1 %.not37.i30, label %bb.n, label %.loopexit.i31, !llvm.loop !533

._crit_edge105:                                   ; preds = %bb.n, %bb.m
  %indvars.iv45.i24.lcssa = phi i64 [ %i.fh, %bb.m ], [ %indvars.iv.next46.i29, %bb.n ]
  %or.cond.not50 = icmp slt i64 %smin60, %indvars.iv45.i24.lcssa
  br i1 %or.cond.not50, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit32.backedge

.loopexit.i31:                                    ; preds = %.lr.ph104
  %i.fm = icmp ugt i32 %i.fj, %i.fl
  br i1 %i.fm, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit32.backedge, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit

_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit32.backedge: ; preds = %.loopexit.i31, %bb.l, %._crit_edge105
  br label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit32, !llvm.loop !552

_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit: ; preds = %._crit_edge105, %.loopexit.i31, %bb.l, %._crit_edge, %bb.b, %.loopexit.i
  %.010 = phi i32 [ 0, %bb.b ], [ 0, %.loopexit.i ], [ 0, %._crit_edge ], [ %i.et, %bb.l ], [ %i.et, %.loopexit.i31 ], [ %i.et, %._crit_edge105 ]
  ret i32 %.010
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE4growERNS2_6bufferIjEEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !497  ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = add i64 %i.c, %i.b                       ; 3 uses
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ugt i64 %i.d, 4611686018427387903
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef i64 @llvm.umax.i64(i64 %1, i64 4611686018427387903)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i64 [ %i.d, %bb.b ], [ %i.g, %bb.c ], [ %1, %bb.a ] ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !496    ; 3 uses
  %i.i = shl i64 %.0, 2
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #40 ; 3 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.e, label %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit

bb.e:                                             ; preds = %bb.d
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #34 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !34
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #38
  unreachable

_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit:  ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !506  ; 2 uses
  %i.n = icmp ule i64 %i.m, %.0
  tail call void @llvm.assume(i1 %i.n)
  %i.o = shl i64 %i.m, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.j, ptr align 4 %i.h, i64 %i.o, i1 false)
  store ptr %i.j, ptr %0, align 8, !tbaa !496
  store i64 %.0, ptr %i.a, align 8, !tbaa !497
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not = icmp eq ptr %i.h, %i.p
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit
  tail call void @free(ptr noundef %i.h) #34
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail6bigint6squareEv(ptr noundef nonnull align 8 dereferenceable(172) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.fmt::v12::basic_memory_buffer.73", align 8 ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !506  ; 10 uses
  %i.c = trunc i64 %i.b to i32                    ; 6 uses
  %i.d = shl i32 %i.c, 1                          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(161) %1, i8 0, i64 24, i1 false)
  store ptr @_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE4growERNS2_6bufferIjEEm, ptr %i.f, align 8, !tbaa !494
  %i.g = load ptr, ptr %0, align 8, !tbaa !496    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !497  ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.k = icmp eq ptr %i.g, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  store ptr %i.l, ptr %1, align 8, !tbaa !496
  store i64 %i.i, ptr %i.e, align 8, !tbaa !497
  %.not6.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not6.i.i.i, label %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %.idx.i.i = shl i64 %i.b, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.j, i64 %.idx.i.i, i1 false), !tbaa !3
  br label %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i

bb.c:                                             ; preds = %bb.a
  store ptr %i.g, ptr %1, align 8, !tbaa !496
  store i64 %i.i, ptr %i.e, align 8, !tbaa !497
  store ptr %i.j, ptr %0, align 8, !tbaa !496
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i
end_hunk_0
