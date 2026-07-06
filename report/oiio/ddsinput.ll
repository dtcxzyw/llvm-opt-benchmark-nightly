inline.NumInlined: 3419
inline.NumDeleted: 948
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 79
begin_hunk_0_@_ZN3fmt3v126detail6bigint13divmod_assignERKS2_:bb.a
  %i.aq = shl nsw i64 %i.ap, 2
  %i.ar = add nsw i64 %i.aq, -1
  %diff.check = icmp ult i64 %i.ar, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.b, 2147483640               ; 4 uses
  %i.as = sub nsw i64 %i.an, %n.vec
  %i.at = sub nsw i64 %i.am, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.au = sub i64 %i.an, %index
  %i.av = sub i64 %i.am, %index
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.au ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -12
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 -28
  %wide.load = load <4 x i32>, ptr %i.ax, align 4, !tbaa !3
  %wide.load107 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !3
  %i.az = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %i.av ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -12
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 -28
  store <4 x i32> %wide.load, ptr %i.ba, align 4, !tbaa !3
  store <4 x i32> %wide.load107, ptr %i.bb, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !548

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv18.i.ph = phi i64 [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.i ], [ %i.as, %middle.block ] ; 4 uses
  %indvars.iv.i11.ph = phi i64 [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph.i ], [ %i.at, %middle.block ] ; 2 uses
  %i.bd = add nsw i64 %indvars.iv18.i.ph, 1
  %xtraiter = and i64 %i.bd, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv18.i.prol = phi i64 [ %indvars.iv.next19.i.prol, %scalar.ph.prol ], [ %indvars.iv18.i.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv.i11.prol = phi i64 [ %indvars.iv.next.i12.prol, %scalar.ph.prol ], [ %indvars.iv.i11.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i.prol
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !3
  %i.bg = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11.prol
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !3
  %indvars.iv.next19.i.prol = add nsw i64 %indvars.iv18.i.prol, -1 ; 2 uses
  %indvars.iv.next.i12.prol = add nsw i64 %indvars.iv.i11.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !549

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv18.i.unr = phi i64 [ %indvars.iv18.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next19.i.prol, %scalar.ph.prol ]
  %indvars.iv.i11.unr = phi i64 [ %indvars.iv.i11.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i12.prol, %scalar.ph.prol ]
  %i.bh = icmp ult i64 %indvars.iv18.i.ph, 3
  br i1 %i.bh, label %.lr.ph.preheader.i.i, label %scalar.ph

.lr.ph.preheader.i.i:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i
  %i.bi = xor i32 %i.k, -1
  %i.bj = add i32 %i.e, %i.bi
  %i.bk = zext i32 %i.bj to i64
  %i.bl = shl nuw nsw i64 %i.bk, 2
  %i.bm = add nuw nsw i64 %i.bl, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.pre.i, i8 0, i64 %i.bm, i1 false), !tbaa !3
  %i.bn = load i32, ptr %i.d, align 8, !tbaa !500
  %i.bo = sub nsw i32 %i.bn, %i.y                 ; 2 uses
  store i32 %i.bo, ptr %i.d, align 8, !tbaa !500
  %.pre.pre = load i64, ptr %i.g, align 8, !tbaa !508
  br label %_ZN3fmt3v126detail6bigint5alignERKS2_.exit

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i.3, %scalar.ph ], [ %indvars.iv18.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv.i11 = phi i64 [ %indvars.iv.next.i12.3, %scalar.ph ], [ %indvars.iv.i11.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !3
  %i.br = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !3
  %i.bs = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i
  %i.bt = getelementptr i8, ptr %i.bs, i64 -4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.bv = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  %i.bw = getelementptr i8, ptr %i.bv, i64 -4
  store i32 %i.bu, ptr %i.bw, align 4, !tbaa !3
  %i.bx = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i
  %i.by = getelementptr i8, ptr %i.bx, i64 -8
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !3
  %i.ca = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  %i.cb = getelementptr i8, ptr %i.ca, i64 -8
  store i32 %i.bz, ptr %i.cb, align 4, !tbaa !3
  %indvars.iv.next19.i.2 = add nsw i64 %indvars.iv18.i, -3 ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv.next19.i.2
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !3
  %i.ce = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  %i.cf = getelementptr i8, ptr %i.ce, i64 -12
  store i32 %i.cd, ptr %i.cf, align 4, !tbaa !3
  %indvars.iv.next19.i.3 = add nsw i64 %indvars.iv18.i, -4
  %indvars.iv.next.i12.3 = add nsw i64 %indvars.iv.i11, -4
  %.not.i13.3 = icmp eq i64 %indvars.iv.next19.i.2, 0
  br i1 %.not.i13.3, label %.lr.ph.preheader.i.i, label %scalar.ph, !llvm.loop !550

_ZN3fmt3v126detail6bigint5alignERKS2_.exit:       ; preds = %select.unfold, %.lr.ph.preheader.i.i
  %.pre = phi i64 [ %i.h, %select.unfold ], [ %.pre.pre, %.lr.ph.preheader.i.i ]
  %i.cg = phi i32 [ %i.e, %select.unfold ], [ %i.bo, %.lr.ph.preheader.i.i ]
  %i.ch = phi i64 [ %i.b, %select.unfold ], [ %i.ai, %.lr.ph.preheader.i.i ]
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit32

_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit32: ; preds = %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit32.backedge, %_ZN3fmt3v126detail6bigint5alignERKS2_.exit
  %i.ck = phi i32 [ %i.cg, %_ZN3fmt3v126detail6bigint5alignERKS2_.exit ], [ %i.ew, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit32.backedge ]
  %i.cl = phi i64 [ %.pre, %_ZN3fmt3v126detail6bigint5alignERKS2_.exit ], [ %i.ey, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit32.backedge ] ; 5 uses
  %i.cm = phi i64 [ %i.ch, %_ZN3fmt3v126detail6bigint5alignERKS2_.exit ], [ %i.et, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit32.backedge ] ; 3 uses
  %.0 = phi i32 [ 0, %_ZN3fmt3v126detail6bigint5alignERKS2_.exit ], [ %i.eu, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit32.backedge ]
  %i.cn = trunc i64 %i.cm to i32
  %.not21.i = icmp eq i64 %i.cl, 0
  br i1 %.not21.i, label %._crit_edge.thread.i, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit32
  %i.co = load i32, ptr %i.j, align 8, !tbaa !500
  %i.cp = sub i32 %i.co, %i.ck
  %i.cq = load ptr, ptr %1, align 8, !tbaa !498   ; 3 uses
  %i.cr = load ptr, ptr %0, align 8, !tbaa !498   ; 4 uses
  %i.cs = sext i32 %i.cp to i64                   ; 2 uses
  %xtraiter122 = and i64 %i.cl, 1
  %i.ct = icmp eq i64 %i.cl, 1
  br i1 %i.ct, label %.epil.preheader, label %.lr.ph.i14.new

.lr.ph.i14.new:                                   ; preds = %.lr.ph.i14
  %unroll_iter = and i64 %i.cl, -2
  br label %bb.g

._crit_edge.i.unr-lcssa:                          ; preds = %bb.g
  %lcmp.mod123.not = icmp eq i64 %xtraiter122, 0
  br i1 %lcmp.mod123.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i14
  %indvars.iv.i15.epil.init = phi i64 [ %i.cs, %.lr.ph.i14 ], [ %indvars.iv.next.i16.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.01223.i.epil.init = phi i64 [ 0, %.lr.ph.i14 ], [ %i.ea, %._crit_edge.i.unr-lcssa ]
  %.01822.i.epil.init = phi i64 [ 0, %.lr.ph.i14 ], [ %i.dz, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod126 = trunc i64 %i.cl to i1
  tail call void @llvm.assume(i1 %lcmp.mod126)
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %.01223.i.epil.init
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !3
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %indvars.iv.i15.epil.init ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !3
  %i.cy = zext i32 %i.cx to i64
  %i.cz = zext i32 %i.cv to i64
  %i.da = add nuw nsw i64 %.01822.i.epil.init, %i.cz
  %i.db = sub nsw i64 %i.cy, %i.da                ; 2 uses
  %i.dc = trunc i64 %i.db to i32
  store i32 %i.dc, ptr %i.cw, align 4, !tbaa !3
  %indvars.iv.next.i16.epil = add nsw i64 %indvars.iv.i15.epil.init, 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.dx, %._crit_edge.i.unr-lcssa ], [ %i.db, %.epil.preheader ]
  %indvars.iv.next.i16.lcssa = phi i64 [ %indvars.iv.next.i16.1, %._crit_edge.i.unr-lcssa ], [ %indvars.iv.next.i16.epil, %.epil.preheader ]
  %i.dd = icmp sgt i64 %.lcssa, -1
  br i1 %i.dd, label %._crit_edge.thread.i, label %bb.h

bb.g:                                             ; preds = %bb.g, %.lr.ph.i14.new
  %indvars.iv.i15 = phi i64 [ %i.cs, %.lr.ph.i14.new ], [ %indvars.iv.next.i16.1, %bb.g ] ; 3 uses
  %.01223.i = phi i64 [ 0, %.lr.ph.i14.new ], [ %i.ea, %bb.g ] ; 3 uses
  %.01822.i = phi i64 [ 0, %.lr.ph.i14.new ], [ %i.dz, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph.i14.new ], [ %niter.next.1, %bb.g ]
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %.01223.i
  %i.df = load i32, ptr %i.de, align 4, !tbaa !3
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %indvars.iv.i15 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !3
  %i.di = zext i32 %i.dh to i64
  %i.dj = zext i32 %i.df to i64
  %i.dk = add nuw nsw i64 %.01822.i, %i.dj
  %i.dl = sub nsw i64 %i.di, %i.dk                ; 2 uses
  %i.dm = trunc i64 %i.dl to i32
  store i32 %i.dm, ptr %i.dg, align 4, !tbaa !3
  %i.dn = lshr i64 %i.dl, 63
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %.01223.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !3
  %i.dr = getelementptr [4 x i8], ptr %i.cr, i64 %indvars.iv.i15
  %i.ds = getelementptr i8, ptr %i.dr, i64 4      ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !3
  %i.du = zext i32 %i.dt to i64
  %i.dv = zext i32 %i.dq to i64
  %i.dw = add nuw nsw i64 %i.dn, %i.dv
  %i.dx = sub nsw i64 %i.du, %i.dw                ; 3 uses
  %i.dy = trunc i64 %i.dx to i32
  store i32 %i.dy, ptr %i.ds, align 4, !tbaa !3
  %i.dz = lshr i64 %i.dx, 63                      ; 2 uses
  %indvars.iv.next.i16.1 = add nsw i64 %indvars.iv.i15, 2 ; 3 uses
  %i.ea = add nuw i64 %.01223.i, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.g, !llvm.loop !551

bb.h:                                             ; preds = %._crit_edge.i
  %2 = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %indvars.iv.next.i16.lcssa ; 2 uses
  %i.eb = load i32, ptr %2, align 4, !tbaa !3
  %i.ec = add i32 %i.eb, -1
  store i32 %i.ec, ptr %2, align 4, !tbaa !3
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.h, %._crit_edge.i, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit32
  %i.ed = load ptr, ptr %0, align 8
  %smin.i.i = tail call i32 @llvm.smin.i32(i32 %i.cn, i32 1) ; 2 uses
  %i.ee = trunc i64 %i.cm to i32                  ; 2 uses
  %i.ef = icmp sgt i32 %i.ee, 1
  br i1 %i.ef, label %.lr.ph96, label %.critedge.i.i

.lr.ph96:                                         ; preds = %._crit_edge.thread.i
  %i.eg = and i64 %i.cm, 2147483647
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %i.eh = trunc nuw i64 %i.ek to i32              ; 2 uses
  %i.ei = icmp sgt i32 %i.eh, 1
  br i1 %i.ei, label %bb.j, label %.critedge.i.i, !llvm.loop !552

bb.j:                                             ; preds = %.lr.ph96, %bb.i
  %i.ej = phi i32 [ %i.ee, %.lr.ph96 ], [ %i.eh, %bb.i ]
  %indvars.iv.i14.i95 = phi i64 [ %i.eg, %.lr.ph96 ], [ %i.ek, %bb.i ]
  %i.ek = add nsw i64 %indvars.iv.i14.i95, -1     ; 3 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !3
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %bb.i, label %..critedge.i.i_crit_edge, !llvm.loop !552

..critedge.i.i_crit_edge:                         ; preds = %bb.j
  br label %.critedge.i.i, !llvm.loop !552

.critedge.i.i:                                    ; preds = %bb.i, %..critedge.i.i_crit_edge, %._crit_edge.thread.i
  %.0.in.lcssa.i.i = phi i32 [ %smin.i.i, %._crit_edge.thread.i ], [ %i.ej, %..critedge.i.i_crit_edge ], [ %smin.i.i, %bb.i ]
  %i.eo = zext i32 %.0.in.lcssa.i.i to i64        ; 3 uses
  %i.ep = load i64, ptr %i.ci, align 8, !tbaa !499 ; 2 uses
  %i.eq = icmp ult i64 %i.ep, %i.eo
  br i1 %i.eq, label %bb.k, label %_ZN3fmt3v126detail6bigint16subtract_alignedERKS2_.exit

bb.k:                                             ; preds = %.critedge.i.i
  %i.er = load ptr, ptr %i.cj, align 8, !tbaa !496
  tail call void %i.er(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef %i.eo), !inline_history !553
  %.pre.i.i.i.i = load i64, ptr %i.ci, align 8, !tbaa !499
  br label %_ZN3fmt3v126detail6bigint16subtract_alignedERKS2_.exit

_ZN3fmt3v126detail6bigint16subtract_alignedERKS2_.exit: ; preds = %.critedge.i.i, %bb.k
  %i.es = phi i64 [ %i.ep, %.critedge.i.i ], [ %.pre.i.i.i.i, %bb.k ]
  %i.et = tail call noundef i64 @llvm.umin.i64(i64 %i.eo, i64 %i.es) ; 4 uses
  store i64 %i.et, ptr %i.a, align 8, !tbaa !508
  %i.eu = add nuw nsw i32 %.0, 1                  ; 4 uses
  %i.ev = trunc nuw i64 %i.et to i32              ; 2 uses
  %i.ew = load i32, ptr %i.d, align 8, !tbaa !500 ; 2 uses
  %i.ex = add nsw i32 %i.ew, %i.ev                ; 2 uses
  %i.ey = load i64, ptr %i.g, align 8, !tbaa !508 ; 3 uses
  %i.ez = trunc i64 %i.ey to i32                  ; 2 uses
  %i.fa = load i32, ptr %i.j, align 8, !tbaa !500
  %i.fb = add nsw i32 %i.fa, %i.ez                ; 2 uses
  %.not.i19 = icmp eq i32 %i.ex, %i.fb
  br i1 %.not.i19, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN3fmt3v126detail6bigint16subtract_alignedERKS2_.exit
  %i.fc = icmp sgt i32 %i.ex, %i.fb
  br i1 %i.fc, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit32.backedge, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit

bb.m:                                             ; preds = %_ZN3fmt3v126detail6bigint16subtract_alignedERKS2_.exit
  %i.fd = sub nsw i32 %i.ev, %i.ez
  %spec.store.select.i21 = tail call i32 @llvm.smax.i32(i32 %i.fd, i32 0)
  %i.fe = load ptr, ptr %0, align 8
  %i.ff = load ptr, ptr %1, align 8
  %sext.i22 = shl nuw i64 %i.et, 32
  %i.fg = ashr exact i64 %sext.i22, 32            ; 3 uses
  %i.fh = zext nneg i32 %spec.store.select.i21 to i64 ; 3 uses
  %sext55.i23 = shl i64 %i.ey, 32
  %i.fi = ashr exact i64 %sext55.i23, 32          ; 2 uses
  %smin60 = tail call i64 @llvm.smin.i64(i64 %i.fg, i64 %i.fh)
  %.not35.not.i26100 = icmp sgt i64 %i.fg, %i.fh
  br i1 %.not35.not.i26100, label %.lr.ph104, label %._crit_edge105

bb.n:                                             ; preds = %.lr.ph104
  %.not35.not.i26 = icmp sgt i64 %indvars.iv.next.i28, %i.fh
  br i1 %.not35.not.i26, label %.lr.ph104, label %._crit_edge105, !llvm.loop !535

.lr.ph104:                                        ; preds = %bb.m, %bb.n
  %indvars.iv.i25102 = phi i64 [ %indvars.iv.next.i28, %bb.n ], [ %i.fg, %bb.m ]
  %indvars.iv45.i24101 = phi i64 [ %indvars.iv.next46.i29, %bb.n ], [ %i.fi, %bb.m ]
  %indvars.iv.next.i28 = add nsw i64 %indvars.iv.i25102, -1 ; 3 uses
  %indvars.iv.next46.i29 = add nsw i64 %indvars.iv45.i24101, -1 ; 3 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %indvars.iv.next.i28
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !3  ; 2 uses
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %indvars.iv.next46.i29
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !3  ; 2 uses
  %.not37.i30 = icmp eq i32 %i.fk, %i.fm
  br i1 %.not37.i30, label %bb.n, label %.loopexit.i31, !llvm.loop !535

._crit_edge105:                                   ; preds = %bb.n, %bb.m
  %indvars.iv45.i24.lcssa = phi i64 [ %i.fi, %bb.m ], [ %indvars.iv.next46.i29, %bb.n ]
  %or.cond.not50 = icmp slt i64 %smin60, %indvars.iv45.i24.lcssa
  br i1 %or.cond.not50, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit32.backedge

.loopexit.i31:                                    ; preds = %.lr.ph104
  %i.fn = icmp ugt i32 %i.fk, %i.fm
  br i1 %i.fn, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit32.backedge, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit

_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit32.backedge: ; preds = %.loopexit.i31, %bb.l, %._crit_edge105
  br label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit32, !llvm.loop !554

_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit: ; preds = %._crit_edge105, %.loopexit.i31, %bb.l, %._crit_edge, %bb.b, %.loopexit.i
  %.010 = phi i32 [ 0, %bb.b ], [ 0, %.loopexit.i ], [ 0, %._crit_edge ], [ %i.eu, %bb.l ], [ %i.eu, %.loopexit.i31 ], [ %i.eu, %._crit_edge105 ]
  ret i32 %.010
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE4growERNS2_6bufferIjEEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !499  ; 2 uses
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
  %i.h = load ptr, ptr %0, align 8, !tbaa !498    ; 3 uses
  %i.i = shl i64 %.0, 2
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #40 ; 3 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.e, label %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit

bb.e:                                             ; preds = %bb.d
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #34 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !34
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #37
  unreachable

_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit:  ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !508  ; 2 uses
  %i.n = icmp ule i64 %i.m, %.0
  tail call void @llvm.assume(i1 %i.n)
  %i.o = shl i64 %i.m, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.j, ptr align 4 %i.h, i64 %i.o, i1 false)
  store ptr %i.j, ptr %0, align 8, !tbaa !498
  store i64 %.0, ptr %i.a, align 8, !tbaa !499
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
  %i.b = load i64, ptr %i.a, align 8, !tbaa !508  ; 10 uses
  %i.c = trunc i64 %i.b to i32                    ; 6 uses
  %i.d = shl i32 %i.c, 1                          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(161) %1, i8 0, i64 24, i1 false)
  store ptr @_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE4growERNS2_6bufferIjEEm, ptr %i.f, align 8, !tbaa !496
  %i.g = load ptr, ptr %0, align 8, !tbaa !498    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !499  ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.k = icmp eq ptr %i.g, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  store ptr %i.l, ptr %1, align 8, !tbaa !498
  store i64 %i.i, ptr %i.e, align 8, !tbaa !499
  %.not6.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not6.i.i.i, label %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %.idx.i.i = shl i64 %i.b, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.j, i64 %.idx.i.i, i1 false), !tbaa !3
  br label %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i

bb.c:                                             ; preds = %bb.a
  store ptr %i.g, ptr %1, align 8, !tbaa !498
  store i64 %i.i, ptr %i.e, align 8, !tbaa !499
  store ptr %i.j, ptr %0, align 8, !tbaa !498
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i
end_hunk_0
