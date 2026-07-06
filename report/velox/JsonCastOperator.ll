inline.NumInlined: 36270
inline.NumDeleted: 7697
loop-unroll.NumCompletelyUnrolled: 285
loop-unroll.NumRuntimeUnrolled: 91
loop-unroll.NumUnrolled: 376
begin_hunk_0_@_ZN3fmt3v116detail6bigint13divmod_assignERKS2_:bb.a
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !1475

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1440

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec116 = and i64 %i.b, 2147483640            ; 4 uses
  %i.bh = sub nsw i64 %i.an, %n.vec116
  %i.bi = sub nsw i64 %i.am, %n.vec116
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index117 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next119, %vec.epilog.vector.body ] ; 3 uses
  %i.bj = sub i64 %i.an, %index117
  %i.bk = sub i64 %i.am, %index117
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.bj
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -28
  %wide.load118 = load <8 x i32>, ptr %i.bm, align 4, !tbaa !3
  %i.bn = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %i.bk
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -28
  store <8 x i32> %wide.load118, ptr %i.bo, align 4, !tbaa !3
  %index.next119 = add nuw i64 %index117, 8       ; 2 uses
  %i.bp = icmp eq i64 %index.next119, %n.vec116
  br i1 %i.bp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1476

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n120 = icmp eq i64 %i.ao, %n.vec116
  br i1 %cmp.n120, label %._crit_edge.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv18.i.ph = phi i64 [ %i.an, %iter.check ], [ %i.an, %vector.memcheck ], [ %i.as, %vec.epilog.iter.check ], [ %i.bh, %vec.epilog.middle.block ] ; 4 uses
  %indvars.iv.i11.ph = phi i64 [ %i.am, %iter.check ], [ %i.am, %vector.memcheck ], [ %i.at, %vec.epilog.iter.check ], [ %i.bi, %vec.epilog.middle.block ] ; 2 uses
  %i.bq = add nsw i64 %indvars.iv18.i.ph, 1
  %xtraiter = and i64 %i.bq, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv18.i.prol = phi i64 [ %indvars.iv.next19.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv18.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv.i11.prol = phi i64 [ %indvars.iv.next.i12.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i11.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i.prol
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !3
  %i.bt = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11.prol
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !3
  %indvars.iv.next19.i.prol = add nsw i64 %indvars.iv18.i.prol, -1 ; 2 uses
  %indvars.iv.next.i12.prol = add nsw i64 %indvars.iv.i11.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !1477

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv18.i.unr = phi i64 [ %indvars.iv18.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next19.i.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv.i11.unr = phi i64 [ %indvars.iv.i11.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i12.prol, %vec.epilog.scalar.ph.prol ]
  %i.bu = icmp ult i64 %indvars.iv18.i.ph, 3
  br i1 %i.bu, label %._crit_edge.i, label %vec.epilog.scalar.ph

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i
  %i.bv = zext nneg i32 %i.y to i64
  %i.bw = shl nuw nsw i64 %i.bv, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %.pre.i, i8 0, i64 %i.bw, i1 false)
  %i.bx = load i32, ptr %i.d, align 8, !tbaa !1425
  %i.by = sub nsw i32 %i.bx, %i.y                 ; 2 uses
  store i32 %i.by, ptr %i.d, align 8, !tbaa !1425
  %.pre.pre = load i64, ptr %i.a, align 8, !tbaa !1432
  %.pre62.pre = load i64, ptr %i.g, align 8, !tbaa !1432
  br label %_ZN3fmt3v116detail6bigint5alignERKS2_.exit

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv18.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv.i11 = phi i64 [ %indvars.iv.next.i12.3, %vec.epilog.scalar.ph ], [ %indvars.iv.i11.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !3
  %i.cb = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !3
  %i.cc = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i
  %i.cd = getelementptr i8, ptr %i.cc, i64 -4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  %i.cg = getelementptr i8, ptr %i.cf, i64 -4
  store i32 %i.ce, ptr %i.cg, align 4, !tbaa !3
  %i.ch = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i
  %i.ci = getelementptr i8, ptr %i.ch, i64 -8
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3
  %i.ck = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  %i.cl = getelementptr i8, ptr %i.ck, i64 -8
  store i32 %i.cj, ptr %i.cl, align 4, !tbaa !3
  %indvars.iv.next19.i.2 = add nsw i64 %indvars.iv18.i, -3 ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv.next19.i.2
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3
  %i.co = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  %i.cp = getelementptr i8, ptr %i.co, i64 -12
  store i32 %i.cn, ptr %i.cp, align 4, !tbaa !3
  %indvars.iv.next19.i.3 = add nsw i64 %indvars.iv18.i, -4
  %indvars.iv.next.i12.3 = add nsw i64 %indvars.iv.i11, -4
  %.not.i13.3 = icmp eq i64 %indvars.iv.next19.i.2, 0
  br i1 %.not.i13.3, label %._crit_edge.i, label %vec.epilog.scalar.ph, !llvm.loop !1478

_ZN3fmt3v116detail6bigint5alignERKS2_.exit:       ; preds = %select.unfold, %._crit_edge.i
  %.pre62 = phi i64 [ %i.h, %select.unfold ], [ %.pre62.pre, %._crit_edge.i ]
  %.pre = phi i64 [ %i.b, %select.unfold ], [ %.pre.pre, %._crit_edge.i ]
  %i.cq = phi i32 [ %i.e, %select.unfold ], [ %i.by, %._crit_edge.i ]
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit33

_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit33: ; preds = %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit33.backedge, %_ZN3fmt3v116detail6bigint5alignERKS2_.exit
  %i.ct = phi i32 [ %i.cq, %_ZN3fmt3v116detail6bigint5alignERKS2_.exit ], [ %i.ff, %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit33.backedge ]
  %i.cu = phi i64 [ %.pre62, %_ZN3fmt3v116detail6bigint5alignERKS2_.exit ], [ %i.fh, %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit33.backedge ] ; 5 uses
  %i.cv = phi i64 [ %.pre, %_ZN3fmt3v116detail6bigint5alignERKS2_.exit ], [ %i.fc, %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit33.backedge ] ; 3 uses
  %.0 = phi i32 [ 0, %_ZN3fmt3v116detail6bigint5alignERKS2_.exit ], [ %i.fd, %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit33.backedge ]
  %i.cw = trunc i64 %i.cv to i32
  %.not21.i = icmp eq i64 %i.cu, 0
  br i1 %.not21.i, label %._crit_edge.thread.i, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit33
  %i.cx = load i32, ptr %i.j, align 8, !tbaa !1425
  %i.cy = sub i32 %i.cx, %i.ct
  %i.cz = load ptr, ptr %1, align 8, !tbaa !1423  ; 3 uses
  %i.da = load ptr, ptr %0, align 8, !tbaa !1423  ; 4 uses
  %i.db = sext i32 %i.cy to i64                   ; 2 uses
  %xtraiter136 = and i64 %i.cu, 1
  %i.dc = icmp eq i64 %i.cu, 1
  br i1 %i.dc, label %.epil.preheader, label %.lr.ph.i14.new

.lr.ph.i14.new:                                   ; preds = %.lr.ph.i14
  %unroll_iter = and i64 %i.cu, -2
  br label %bb.g

._crit_edge.i18.unr-lcssa:                        ; preds = %bb.g
  %lcmp.mod137.not = icmp eq i64 %xtraiter136, 0
  br i1 %lcmp.mod137.not, label %._crit_edge.i18, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.lr.ph.i14
  %indvars.iv.i15.epil.init = phi i64 [ %i.db, %.lr.ph.i14 ], [ %indvars.iv.next.i16.1, %._crit_edge.i18.unr-lcssa ] ; 2 uses
  %.01223.i.epil.init = phi i64 [ 0, %.lr.ph.i14 ], [ %i.ej, %._crit_edge.i18.unr-lcssa ]
  %.01822.i.epil.init = phi i64 [ 0, %.lr.ph.i14 ], [ %i.ei, %._crit_edge.i18.unr-lcssa ]
  %lcmp.mod140 = trunc i64 %i.cu to i1
  tail call void @llvm.assume(i1 %lcmp.mod140)
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %.01223.i.epil.init
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !3
  %i.df = getelementptr inbounds [4 x i8], ptr %i.da, i64 %indvars.iv.i15.epil.init ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !3
  %i.dh = zext i32 %i.dg to i64
  %i.di = zext i32 %i.de to i64
  %i.dj = add nuw nsw i64 %.01822.i.epil.init, %i.di
  %i.dk = sub nsw i64 %i.dh, %i.dj                ; 2 uses
  %i.dl = trunc i64 %i.dk to i32
  store i32 %i.dl, ptr %i.df, align 4, !tbaa !3
  %indvars.iv.next.i16.epil = add nsw i64 %indvars.iv.i15.epil.init, 1
  br label %._crit_edge.i18

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.eg, %._crit_edge.i18.unr-lcssa ], [ %i.dk, %.epil.preheader ]
  %indvars.iv.next.i16.lcssa = phi i64 [ %indvars.iv.next.i16.1, %._crit_edge.i18.unr-lcssa ], [ %indvars.iv.next.i16.epil, %.epil.preheader ]
  %i.dm = icmp sgt i64 %.lcssa, -1
  br i1 %i.dm, label %._crit_edge.thread.i, label %bb.h

bb.g:                                             ; preds = %bb.g, %.lr.ph.i14.new
  %indvars.iv.i15 = phi i64 [ %i.db, %.lr.ph.i14.new ], [ %indvars.iv.next.i16.1, %bb.g ] ; 3 uses
  %.01223.i = phi i64 [ 0, %.lr.ph.i14.new ], [ %i.ej, %bb.g ] ; 3 uses
  %.01822.i = phi i64 [ 0, %.lr.ph.i14.new ], [ %i.ei, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph.i14.new ], [ %niter.next.1, %bb.g ]
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %.01223.i
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !3
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.da, i64 %indvars.iv.i15 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !3
  %i.dr = zext i32 %i.dq to i64
  %i.ds = zext i32 %i.do to i64
  %i.dt = add nuw nsw i64 %.01822.i, %i.ds
  %i.du = sub nsw i64 %i.dr, %i.dt                ; 2 uses
  %i.dv = trunc i64 %i.du to i32
  store i32 %i.dv, ptr %i.dp, align 4, !tbaa !3
  %i.dw = lshr i64 %i.du, 63
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %.01223.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !3
  %i.ea = getelementptr [4 x i8], ptr %i.da, i64 %indvars.iv.i15
  %i.eb = getelementptr i8, ptr %i.ea, i64 4      ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !3
  %i.ed = zext i32 %i.ec to i64
  %i.ee = zext i32 %i.dz to i64
  %i.ef = add nuw nsw i64 %i.dw, %i.ee
  %i.eg = sub nsw i64 %i.ed, %i.ef                ; 3 uses
  %i.eh = trunc i64 %i.eg to i32
  store i32 %i.eh, ptr %i.eb, align 4, !tbaa !3
  %i.ei = lshr i64 %i.eg, 63                      ; 2 uses
  %indvars.iv.next.i16.1 = add nsw i64 %indvars.iv.i15, 2 ; 3 uses
  %i.ej = add nuw i64 %.01223.i, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i18.unr-lcssa, label %bb.g, !llvm.loop !1479

bb.h:                                             ; preds = %._crit_edge.i18
  %sext.i19 = shl i64 %indvars.iv.next.i16.lcssa, 32
  %2 = ashr exact i64 %sext.i19, 30
  %3 = getelementptr inbounds i8, ptr %i.da, i64 %2 ; 2 uses
  %i.ek = load i32, ptr %3, align 4, !tbaa !3
  %i.el = add i32 %i.ek, -1
  store i32 %i.el, ptr %3, align 4, !tbaa !3
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.h, %._crit_edge.i18, %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit33
  %i.em = load ptr, ptr %0, align 8
  %smin.i.i = tail call i32 @llvm.smin.i32(i32 %i.cw, i32 1) ; 2 uses
  %i.en = trunc i64 %i.cv to i32                  ; 2 uses
  %i.eo = icmp sgt i32 %i.en, 1
  br i1 %i.eo, label %.lr.ph99, label %.critedge.i.i

.lr.ph99:                                         ; preds = %._crit_edge.thread.i
  %i.ep = and i64 %i.cv, 2147483647
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %i.eq = trunc nuw i64 %i.et to i32              ; 2 uses
  %i.er = icmp sgt i32 %i.eq, 1
  br i1 %i.er, label %bb.j, label %.critedge.i.i, !llvm.loop !1480

bb.j:                                             ; preds = %.lr.ph99, %bb.i
  %i.es = phi i32 [ %i.en, %.lr.ph99 ], [ %i.eq, %bb.i ]
  %indvars.iv.i14.i98 = phi i64 [ %i.ep, %.lr.ph99 ], [ %i.et, %bb.i ]
  %i.et = add nsw i64 %indvars.iv.i14.i98, -1     ; 3 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !3
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %bb.i, label %..critedge.i.i_crit_edge, !llvm.loop !1480

..critedge.i.i_crit_edge:                         ; preds = %bb.j
  br label %.critedge.i.i, !llvm.loop !1480

.critedge.i.i:                                    ; preds = %bb.i, %..critedge.i.i_crit_edge, %._crit_edge.thread.i
  %.0.in.lcssa.i.i = phi i32 [ %smin.i.i, %._crit_edge.thread.i ], [ %i.es, %..critedge.i.i_crit_edge ], [ %smin.i.i, %bb.i ]
  %i.ex = zext i32 %.0.in.lcssa.i.i to i64        ; 3 uses
  %i.ey = load i64, ptr %i.cr, align 8, !tbaa !1424 ; 2 uses
  %i.ez = icmp ult i64 %i.ey, %i.ex
  br i1 %i.ez, label %bb.k, label %_ZN3fmt3v116detail6bigint16subtract_alignedERKS2_.exit

bb.k:                                             ; preds = %.critedge.i.i
  %i.fa = load ptr, ptr %i.cs, align 8, !tbaa !1421
  tail call void %i.fa(ptr noundef nonnull align 8 dereferenceable(164) %0, i64 noundef %i.ex), !inline_history !1481
  %.pre.i.i.i.i = load i64, ptr %i.cr, align 8, !tbaa !1424
  br label %_ZN3fmt3v116detail6bigint16subtract_alignedERKS2_.exit

_ZN3fmt3v116detail6bigint16subtract_alignedERKS2_.exit: ; preds = %.critedge.i.i, %bb.k
  %i.fb = phi i64 [ %i.ey, %.critedge.i.i ], [ %.pre.i.i.i.i, %bb.k ]
  %i.fc = tail call noundef i64 @llvm.umin.i64(i64 %i.ex, i64 %i.fb) ; 4 uses
  store i64 %i.fc, ptr %i.a, align 8, !tbaa !1432
  %i.fd = add nuw nsw i32 %.0, 1                  ; 4 uses
  %i.fe = trunc nuw i64 %i.fc to i32              ; 2 uses
  %i.ff = load i32, ptr %i.d, align 8, !tbaa !1425 ; 2 uses
  %i.fg = add nsw i32 %i.ff, %i.fe                ; 2 uses
  %i.fh = load i64, ptr %i.g, align 8, !tbaa !1432 ; 3 uses
  %i.fi = trunc i64 %i.fh to i32                  ; 2 uses
  %i.fj = load i32, ptr %i.j, align 8, !tbaa !1425
  %i.fk = add nsw i32 %i.fj, %i.fi                ; 2 uses
  %.not.i20 = icmp eq i32 %i.fg, %i.fk
  br i1 %.not.i20, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN3fmt3v116detail6bigint16subtract_alignedERKS2_.exit
  %i.fl = icmp sgt i32 %i.fg, %i.fk
  br i1 %i.fl, label %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit33.backedge, label %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit

bb.m:                                             ; preds = %_ZN3fmt3v116detail6bigint16subtract_alignedERKS2_.exit
  %i.fm = sub nsw i32 %i.fe, %i.fi
  %spec.store.select.i22 = tail call i32 @llvm.smax.i32(i32 %i.fm, i32 0)
  %i.fn = load ptr, ptr %0, align 8
  %i.fo = load ptr, ptr %1, align 8
  %sext.i23 = shl nuw i64 %i.fc, 32
  %i.fp = ashr exact i64 %sext.i23, 32            ; 3 uses
  %i.fq = zext nneg i32 %spec.store.select.i22 to i64 ; 3 uses
  %sext55.i24 = shl i64 %i.fh, 32
  %i.fr = ashr exact i64 %sext55.i24, 32          ; 2 uses
  %smin61 = tail call i64 @llvm.smin.i64(i64 %i.fp, i64 %i.fq)
  %.not35.not.i27103 = icmp sgt i64 %i.fp, %i.fq
  br i1 %.not35.not.i27103, label %.lr.ph107, label %._crit_edge108

bb.n:                                             ; preds = %.lr.ph107
  %.not35.not.i27 = icmp sgt i64 %indvars.iv.next.i29, %i.fq
  br i1 %.not35.not.i27, label %.lr.ph107, label %._crit_edge108, !llvm.loop !1462

.lr.ph107:                                        ; preds = %bb.m, %bb.n
  %indvars.iv.i26105 = phi i64 [ %indvars.iv.next.i29, %bb.n ], [ %i.fp, %bb.m ]
  %indvars.iv45.i25104 = phi i64 [ %indvars.iv.next46.i30, %bb.n ], [ %i.fr, %bb.m ]
  %indvars.iv.next.i29 = add nsw i64 %indvars.iv.i26105, -1 ; 3 uses
  %indvars.iv.next46.i30 = add nsw i64 %indvars.iv45.i25104, -1 ; 3 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv.next.i29
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !3  ; 2 uses
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.fo, i64 %indvars.iv.next46.i30
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !3  ; 2 uses
  %.not37.i31 = icmp eq i32 %i.ft, %i.fv
  br i1 %.not37.i31, label %bb.n, label %.loopexit.i32, !llvm.loop !1462

._crit_edge108:                                   ; preds = %bb.n, %bb.m
  %indvars.iv45.i25.lcssa = phi i64 [ %i.fr, %bb.m ], [ %indvars.iv.next46.i30, %bb.n ]
  %or.cond.not51 = icmp slt i64 %smin61, %indvars.iv45.i25.lcssa
  br i1 %or.cond.not51, label %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit, label %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit33.backedge

.loopexit.i32:                                    ; preds = %.lr.ph107
  %i.fw = icmp ugt i32 %i.ft, %i.fv
  br i1 %i.fw, label %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit33.backedge, label %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit

_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit33.backedge: ; preds = %.loopexit.i32, %bb.l, %._crit_edge108
  br label %_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit33, !llvm.loop !1482

_ZN3fmt3v116detail7compareERKNS1_6bigintES4_.exit: ; preds = %._crit_edge108, %.loopexit.i32, %bb.l, %._crit_edge, %bb.b, %.loopexit.i
  %.010 = phi i32 [ 0, %bb.b ], [ 0, %.loopexit.i ], [ 0, %._crit_edge ], [ %i.fd, %bb.l ], [ %i.fd, %.loopexit.i32 ], [ %i.fd, %._crit_edge108 ]
  ret i32 %.010
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE4growERNS2_6bufferIjEEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1424 ; 2 uses
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
  %i.h = load ptr, ptr %0, align 8, !tbaa !1423   ; 3 uses
  %i.i = shl i64 %.0, 2
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #52 ; 3 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.e, label %_ZN3fmt3v116detail9allocatorIjE8allocateEm.exit

bb.e:                                             ; preds = %bb.d
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #38 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !19
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #46
  unreachable

_ZN3fmt3v116detail9allocatorIjE8allocateEm.exit:  ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !1432 ; 2 uses
  %i.n = icmp ule i64 %i.m, %.0
  tail call void @llvm.assume(i1 %i.n)
  %i.o = shl i64 %i.m, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.j, ptr align 4 %i.h, i64 %i.o, i1 false)
  store ptr %i.j, ptr %0, align 8, !tbaa !1423
  store i64 %.0, ptr %i.a, align 8, !tbaa !1424
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not = icmp eq ptr %i.h, %i.p
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN3fmt3v116detail9allocatorIjE8allocateEm.exit
  tail call void @free(ptr noundef %i.h) #38
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN3fmt3v116detail9allocatorIjE8allocateEm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt3v116detail6bigint6squareEv(ptr noundef nonnull align 8 dereferenceable(164) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.fmt::v11::basic_memory_buffer.531", align 8 ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1432 ; 10 uses
  %i.c = trunc i64 %i.b to i32                    ; 5 uses
  %i.d = shl i32 %i.c, 1                          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #38
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %1, i8 0, i64 24, i1 false)
  store ptr @_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE4growERNS2_6bufferIjEEm, ptr %i.f, align 8, !tbaa !1421
  %i.g = load ptr, ptr %0, align 8, !tbaa !1423   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !1424 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.k = icmp eq ptr %i.g, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  store ptr %i.l, ptr %1, align 8, !tbaa !1423
  store i64 %i.i, ptr %i.e, align 8, !tbaa !1424
  %.not6.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not6.i.i.i, label %_ZN3fmt3v116detail4copyIjPjS3_TnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES5_T0_S8_S5_.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %.idx.i.i = shl i64 %i.b, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.j, i64 %.idx.i.i, i1 false), !tbaa !3
  br label %_ZN3fmt3v116detail4copyIjPjS3_TnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES5_T0_S8_S5_.exit.i.i

bb.c:                                             ; preds = %bb.a
  store ptr %i.g, ptr %1, align 8, !tbaa !1423
  store i64 %i.i, ptr %i.e, align 8, !tbaa !1424
  store ptr %i.j, ptr %0, align 8, !tbaa !1423
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %_ZN3fmt3v116detail4copyIjPjS3_TnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES5_T0_S8_S5_.exit.i.i
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox12_GLOBAL__N_117castToJsonFromMapERKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS5_9CastHooksEE:bb.a
  %i.sn = load i32, ptr %i.sm, align 8, !tbaa !158 ; 6 uses
  %i.so = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.sp = load i32, ptr %i.so, align 8, !tbaa !159
  %i.sq = icmp eq i32 %i.sn, %i.sp
  br i1 %i.sq, label %bb.fa, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i134

bb.fa:                                            ; preds = %bb.ez
  %i.sr = load ptr, ptr %2, align 8, !tbaa !160   ; 2 uses
  %.not.i.i.i.i.i197 = icmp sgt i32 %i.sn, 0
  br i1 %.not.i.i.i.i.i197, label %bb.fb, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i134

bb.fb:                                            ; preds = %bb.fa
  %i.ss = and i32 %i.sn, 2147483584               ; 3 uses
  %i.st = zext nneg i32 %i.ss to i64
  %.not37.i.i.not.i.i.i.i199871.not = icmp eq i32 %i.ss, 0
  br i1 %.not37.i.i.not.i.i.i.i199871.not, label %.critedge.i.i.i.i.i.i200, label %.lr.ph873

bb.fc:                                            ; preds = %.lr.ph873
  %indvars.iv.next.i.i.i.i204 = add nuw nsw i64 %indvars.iv.i.i.i.i198872, 64 ; 2 uses
  %.not37.i.i.not.i.i.i.i199 = icmp samesign ult i64 %indvars.iv.next.i.i.i.i204, %i.st
  br i1 %.not37.i.i.not.i.i.i.i199, label %.lr.ph873, label %.critedge.i.i.i.i.i.i200, !llvm.loop !161

.lr.ph873:                                        ; preds = %bb.fb, %bb.fc
  %indvars.iv.i.i.i.i198872 = phi i64 [ %indvars.iv.next.i.i.i.i204, %bb.fc ], [ 0, %bb.fb ] ; 2 uses
  %i.su = lshr exact i64 %indvars.iv.i.i.i.i198872, 3
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sr, i64 %i.su
  %i.sw = load i64, ptr %i.sv, align 8, !tbaa !163
  %i.sx = icmp eq i64 %i.sw, -1
  br i1 %i.sx, label %bb.fc, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i134, !llvm.loop !161

.critedge.i.i.i.i.i.i200:                         ; preds = %bb.fc, %bb.fb
  %.not38.i.i.i.i.i.i201 = icmp eq i32 %i.sn, %i.ss
  br i1 %.not38.i.i.i.i.i.i201, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i134, label %bb.fd

bb.fd:                                            ; preds = %.critedge.i.i.i.i.i.i200
  %i.sy = lshr i32 %i.sn, 6
  %i.sz = and i32 %i.sn, 63
  %i.ta = zext nneg i32 %i.sz to i64
  %notmask.i40.i.i.i.i.i.i202 = shl nsw i64 -1, %i.ta
  %i.tb = zext nneg i32 %i.sy to i64
  %i.tc = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %i.tb
  %i.td = load i64, ptr %i.tc, align 8, !tbaa !163
  %.demorgan.i.i.i.i203 = or i64 %i.td, %notmask.i40.i.i.i.i.i.i202
  %i.te = icmp eq i64 %.demorgan.i.i.i.i203, -1
  %i.tf = zext i1 %i.te to i16
  %i.tg = or disjoint i16 %i.tf, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i134

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i134: ; preds = %.lr.ph873, %bb.fd, %.critedge.i.i.i.i.i.i200, %bb.fa, %bb.ez, %bb.ey
  %.sroa.0.0.insert.ext.i.i.i.i135 = phi i16 [ 256, %bb.ez ], [ 256, %bb.ey ], [ 257, %bb.fa ], [ 257, %.critedge.i.i.i.i.i.i200 ], [ %i.tg, %bb.fd ], [ 256, %.lr.ph873 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i135, ptr %i.sf, align 4
  %i.th = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i135 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i136

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i136: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i134, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i205
  %.0.in.i.i.i.i137 = phi i8 [ %.0.in.pre.i.i.i.i206, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i205 ], [ %i.th, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i134 ]
  %.0.i.i.i.i138 = trunc nuw i8 %.0.in.i.i.i.i137 to i1
  br i1 %.0.i.i.i.i138, label %bb.fe, label %bb.gn

bb.fe:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i136
  %i.ti = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.tj = load i32, ptr %i.ti, align 8, !tbaa !158 ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.tl = load i32, ptr %i.tk, align 4, !tbaa !149 ; 2 uses
  %i.tm = icmp slt i32 %i.tl, %i.tj
  br i1 %i.tm, label %.lr.ph.i.i.i180, label %.loopexit421

.lr.ph.i.i.i180:                                  ; preds = %bb.fe
  %i.tn = sext i32 %i.tl to i64
  br label %bb.ff

bb.ff:                                            ; preds = %"_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_117castToJsonFromMapERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS1_9CastHooksEEE3$_2ZNS2_22applyToSelectedNoThrowISL_EEvSB_T_EUlSN_E_EEvSB_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i.i.i", %.lr.ph.i.i.i180
  %indvars.iv.i.i.i = phi i64 [ %i.tn, %.lr.ph.i.i.i180 ], [ %indvars.iv.next.i.i.i, %"_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_117castToJsonFromMapERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS1_9CastHooksEEE3$_2ZNS2_22applyToSelectedNoThrowISL_EEvSB_T_EUlSN_E_EEvSB_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i.i.i" ] ; 4 uses
  %i.to = load ptr, ptr %24, align 8, !tbaa !2357, !nonnull !111, !align !171
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !2327 ; 2 uses
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !19
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 32
  %i.ts = load ptr, ptr %i.tr, align 8
  %i.tt = trunc nsw i64 %indvars.iv.i.i.i to i32  ; 3 uses
  %i.tu = invoke noundef zeroext i1 %i.ts(ptr noundef nonnull align 8 dereferenceable(94) %i.tp, i32 noundef %i.tt)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !inline_history !2359

.noexc.i.i.i:                                     ; preds = %bb.ff
  br i1 %i.tu, label %"_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_117castToJsonFromMapERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS1_9CastHooksEEE3$_2ZNS2_22applyToSelectedNoThrowISL_EEvSB_T_EUlSN_E_EEvSB_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i.i.i", label %bb.fg

bb.fg:                                            ; preds = %.noexc.i.i.i
  %i.tv = load ptr, ptr %24, align 8, !tbaa !2357, !nonnull !111, !align !171
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !2327 ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 120
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !617
  %i.tz = getelementptr inbounds [4 x i8], ptr %i.ty, i64 %indvars.iv.i.i.i
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !3  ; 3 uses
  %i.ub = icmp sgt i32 %i.ua, 0                   ; 2 uses
  br i1 %i.ub, label %.lr.ph.i.i.i.i, label %.._crit_edge_crit_edge.i.i.i.i

.._crit_edge_crit_edge.i.i.i.i:                   ; preds = %bb.fg
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4383.0..sroa_idx, align 8, !tbaa !2360 ; 2 uses
  %.pre16.i.i.i.i = load i64, ptr %.pre.i.i.i.i, align 8, !tbaa !163
  br label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.fg
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tw, i64 104
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !633
  %i.ue = getelementptr inbounds [4 x i8], ptr %i.ud, i64 %indvars.iv.i.i.i
  %i.uf = load i32, ptr %i.ue, align 4, !tbaa !3  ; 2 uses
  %i.ug = add nsw i32 %i.uf, %i.ua
  %i.uh = sext i32 %i.uf to i64
  %i.ui = sext i32 %i.ug to i64
  br label %bb.fh

._crit_edge.i.i.i.i:                              ; preds = %.noexc7.i.i.i, %.._crit_edge_crit_edge.i.i.i.i
  %i.uj = phi i64 [ %.pre16.i.i.i.i, %.._crit_edge_crit_edge.i.i.i.i ], [ %i.yj, %.noexc7.i.i.i ]
  %i.uk = phi ptr [ %.pre.i.i.i.i, %.._crit_edge_crit_edge.i.i.i.i ], [ %i.yh, %.noexc7.i.i.i ]
  %i.ul = shl nuw nsw i32 %i.ua, 1
  %i.um = or disjoint i32 %i.ul, 1
  %i.un = select i1 %i.ub, i32 %i.um, i32 2
  %i.uo = zext nneg i32 %i.un to i64
  %i.up = add i64 %i.uj, %i.uo
  store i64 %i.up, ptr %i.uk, align 8, !tbaa !163
  br label %"_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_117castToJsonFromMapERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS1_9CastHooksEEE3$_2ZNS2_22applyToSelectedNoThrowISL_EEvSB_T_EUlSN_E_EEvSB_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i.i.i"

bb.fh:                                            ; preds = %.noexc7.i.i.i, %.lr.ph.i.i.i.i
  %indvars.iv.i4.i.i.i = phi i64 [ %i.uh, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i5.i.i.i, %.noexc7.i.i.i ] ; 8 uses
  %i.uq = load ptr, ptr %.sroa.5384.0..sroa_idx, align 8, !tbaa !2361, !nonnull !111, !align !171 ; 2 uses
  %i.ur = getelementptr i8, ptr %i.uq, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.ur, align 8, !tbaa !641 ; 4 uses
  %i.us = getelementptr i8, ptr %i.uq, i64 32
  %.val13.i.i.i.i = load ptr, ptr %i.us, align 8, !tbaa !656 ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 58
  %i.uu = load i8, ptr %i.ut, align 2, !tbaa !653, !range !110, !noundef !111
  %i.uv = trunc nuw i8 %i.uu to i1
  %i.uw = trunc nsw i64 %indvars.iv.i4.i.i.i to i32 ; 3 uses
  br i1 %i.uv, label %_ZNK8facebook5velox12_GLOBAL__N_16AsJson2atEi.exit.i.i.i.i, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.ux = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 59
  %i.uy = load i8, ptr %i.ux, align 1, !tbaa !654, !range !110, !noundef !111
  %i.uz = trunc nuw i8 %i.uy to i1
  br i1 %i.uz, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %i.va = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 64
  %i.vb = load i32, ptr %i.va, align 8, !tbaa !671
  br label %_ZNK8facebook5velox12_GLOBAL__N_16AsJson2atEi.exit.i.i.i.i

bb.fk:                                            ; preds = %bb.fi
  %i.vc = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 8
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !655
  %i.ve = getelementptr inbounds [4 x i8], ptr %i.vd, i64 %indvars.iv.i4.i.i.i
  %i.vf = load i32, ptr %i.ve, align 4, !tbaa !3
  br label %_ZNK8facebook5velox12_GLOBAL__N_16AsJson2atEi.exit.i.i.i.i

_ZNK8facebook5velox12_GLOBAL__N_16AsJson2atEi.exit.i.i.i.i: ; preds = %bb.fk, %bb.fj, %bb.fh
  %.0.i.i.i.i.i.i = phi i32 [ %i.vf, %bb.fk ], [ %i.vb, %bb.fj ], [ %i.uw, %bb.fh ]
  %i.vg = load ptr, ptr %.val13.i.i.i.i, align 8, !tbaa !19
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 384
  %i.vi = load ptr, ptr %i.vh, align 8
  %i.vj = invoke noundef nonnull align 8 dereferenceable(16) ptr %i.vi(ptr noundef nonnull align 8 dereferenceable(208) %.val13.i.i.i.i, i32 noundef %.0.i.i.i.i.i.i)
          to label %.noexc6.i.i.i unwind label %.loopexit15.i.i.i, !inline_history !2359

.noexc6.i.i.i:                                    ; preds = %_ZNK8facebook5velox12_GLOBAL__N_16AsJson2atEi.exit.i.i.i.i
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.vj, align 8
  %i.vk = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !2362, !nonnull !111, !align !171 ; 5 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 8
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !641 ; 13 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 24
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !643 ; 4 uses
  %.not.i.i2.i.i = icmp eq ptr %i.vo, null
  br i1 %.not.i.i2.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i, label %bb.fl

bb.fl:                                            ; preds = %.noexc6.i.i.i
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vm, i64 58
  %i.vq = load i8, ptr %i.vp, align 2, !tbaa !653, !range !110, !noundef !111
  %i.vr = trunc nuw i8 %i.vq to i1
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vm, i64 57
  %i.vt = load i8, ptr %i.vs, align 1, !range !110
  %i.vu = trunc nuw i8 %i.vt to i1
  %or.cond.i.i.i.i = select i1 %i.vr, i1 true, i1 %i.vu
  br i1 %or.cond.i.i.i.i, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.vv = lshr i64 %indvars.iv.i4.i.i.i, 6
  %i.vw = and i64 %i.vv, 67108863
  %i.vx = getelementptr inbounds nuw [8 x i8], ptr %i.vo, i64 %i.vw
  %i.vy = load i64, ptr %i.vx, align 8, !tbaa !163
  %i.vz = and i64 %indvars.iv.i4.i.i.i, 63
  %i.wa = shl nuw i64 1, %i.vz
  %i.wb = and i64 %i.vy, %i.wa
  %.not.i.i.i3.i.i = icmp eq i64 %i.wb, 0
  br i1 %.not.i.i.i3.i.i, label %.noexc7.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i

bb.fn:                                            ; preds = %bb.fl
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vm, i64 59
  %i.wd = load i8, ptr %i.wc, align 1, !tbaa !654, !range !110, !noundef !111
  %i.we = trunc nuw i8 %i.wd to i1
  br i1 %i.we, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vm, i64 8
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !655
  %63 = shl nsw i64 %indvars.iv.i4.i.i.i, 2
  %64 = getelementptr inbounds i8, ptr %i.wg, i64 %63
  %i.wh = load i32, ptr %64, align 4, !tbaa !3
  %i.wi = zext i32 %i.wh to i64                   ; 2 uses
  %i.wj = lshr i64 %i.wi, 6
  %i.wk = getelementptr inbounds nuw [8 x i8], ptr %i.vo, i64 %i.wj
  %i.wl = load i64, ptr %i.wk, align 8, !tbaa !163
  %i.wm = and i64 %i.wi, 63
  %i.wn = shl nuw i64 1, %i.wm
  %i.wo = and i64 %i.wn, %i.wl
  %.not.i7.i.i.i.i = icmp eq i64 %i.wo, 0
  br i1 %.not.i7.i.i.i.i, label %.noexc7.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i: ; preds = %bb.fn
  %i.wp = load i64, ptr %i.vo, align 8, !tbaa !163
  %i.wq = and i64 %i.wp, 1
  %.not.i6.i.i.i.i = icmp eq i64 %i.wq, 0
  br i1 %.not.i6.i.i.i.i, label %.noexc7.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i, %bb.fo, %bb.fm, %.noexc6.i.i.i
  %i.wr = getelementptr inbounds nuw i8, ptr %i.vk, i64 72
  %i.ws = load i8, ptr %i.wr, align 8, !tbaa !224, !range !110, !noundef !111
  %i.wt = trunc nuw i8 %i.ws to i1
  br i1 %i.wt, label %bb.fp, label %bb.ft

bb.fp:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i
  %i.wu = getelementptr inbounds nuw i8, ptr %i.vk, i64 48
  %i.wv = load i64, ptr %i.wu, align 8, !tbaa !119
  %i.ww = add i64 %i.wv, 3
  %i.wx = getelementptr inbounds nuw i8, ptr %i.vk, i64 32
  %.val6.i.i.i = load ptr, ptr %i.wx, align 8, !tbaa !656 ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.vm, i64 58
  %i.wz = load i8, ptr %i.wy, align 2, !tbaa !653, !range !110, !noundef !111
  %i.xa = trunc nuw i8 %i.wz to i1
  br i1 %i.xa, label %_ZNK8facebook5velox12_GLOBAL__N_16AsJson2atEi.exit.i.i.i, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.xb = getelementptr inbounds nuw i8, ptr %i.vm, i64 59
  %i.xc = load i8, ptr %i.xb, align 1, !tbaa !654, !range !110, !noundef !111
  %i.xd = trunc nuw i8 %i.xc to i1
  br i1 %i.xd, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.xe = getelementptr inbounds nuw i8, ptr %i.vm, i64 64
  %i.xf = load i32, ptr %i.xe, align 8, !tbaa !671
  br label %_ZNK8facebook5velox12_GLOBAL__N_16AsJson2atEi.exit.i.i.i

bb.fs:                                            ; preds = %bb.fq
  %i.xg = getelementptr inbounds nuw i8, ptr %i.vm, i64 8
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !655
  %65 = shl nsw i64 %indvars.iv.i4.i.i.i, 2
  %66 = getelementptr inbounds i8, ptr %i.xh, i64 %65
  %i.xi = load i32, ptr %66, align 4, !tbaa !3
  br label %_ZNK8facebook5velox12_GLOBAL__N_16AsJson2atEi.exit.i.i.i

_ZNK8facebook5velox12_GLOBAL__N_16AsJson2atEi.exit.i.i.i: ; preds = %bb.fs, %bb.fr, %bb.fp
  %.0.i.i.i.i.i = phi i32 [ %i.xi, %bb.fs ], [ %i.xf, %bb.fr ], [ %i.uw, %bb.fp ]
  %i.xj = load ptr, ptr %.val6.i.i.i, align 8, !tbaa !19
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 384
  %i.xl = load ptr, ptr %i.xk, align 8
  %i.xm = invoke noundef nonnull align 8 dereferenceable(16) ptr %i.xl(ptr noundef nonnull align 8 dereferenceable(208) %.val6.i.i.i, i32 noundef %.0.i.i.i.i.i)
          to label %.noexc.i.i unwind label %.loopexit15.i.i.i, !inline_history !672

.noexc.i.i:                                       ; preds = %_ZNK8facebook5velox12_GLOBAL__N_16AsJson2atEi.exit.i.i.i
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.xm, align 8
  %i.xn = add i64 %i.ww, %.sroa.0.0.copyload.i.i.i.i
  br label %.noexc7.i.i.i

bb.ft:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i
  %i.xo = getelementptr inbounds nuw i8, ptr %i.vk, i64 32
  %.val4.i.i.i = load ptr, ptr %i.xo, align 8, !tbaa !656 ; 2 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %i.vm, i64 58
  %i.xq = load i8, ptr %i.xp, align 2, !tbaa !653, !range !110, !noundef !111
  %i.xr = trunc nuw i8 %i.xq to i1
  br i1 %i.xr, label %_ZNK8facebook5velox12_GLOBAL__N_16AsJson2atEi.exit13.i.i.i, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.xs = getelementptr inbounds nuw i8, ptr %i.vm, i64 59
  %i.xt = load i8, ptr %i.xs, align 1, !tbaa !654, !range !110, !noundef !111
  %i.xu = trunc nuw i8 %i.xt to i1
  br i1 %i.xu, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %i.xv = getelementptr inbounds nuw i8, ptr %i.vm, i64 64
  %i.xw = load i32, ptr %i.xv, align 8, !tbaa !671
  br label %_ZNK8facebook5velox12_GLOBAL__N_16AsJson2atEi.exit13.i.i.i

bb.fw:                                            ; preds = %bb.fu
  %i.xx = getelementptr inbounds nuw i8, ptr %i.vm, i64 8
  %i.xy = load ptr, ptr %i.xx, align 8, !tbaa !655
  %67 = shl nsw i64 %indvars.iv.i4.i.i.i, 2
  %68 = getelementptr inbounds i8, ptr %i.xy, i64 %67
  %i.xz = load i32, ptr %68, align 4, !tbaa !3
  br label %_ZNK8facebook5velox12_GLOBAL__N_16AsJson2atEi.exit13.i.i.i

_ZNK8facebook5velox12_GLOBAL__N_16AsJson2atEi.exit13.i.i.i: ; preds = %bb.fw, %bb.fv, %bb.ft
  %.0.i.i7.i.i.i = phi i32 [ %i.xz, %bb.fw ], [ %i.xw, %bb.fv ], [ %i.uw, %bb.ft ]
  %i.ya = load ptr, ptr %.val4.i.i.i, align 8, !tbaa !19
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 384
  %i.yc = load ptr, ptr %i.yb, align 8
  %i.yd = invoke noundef nonnull align 8 dereferenceable(16) ptr %i.yc(ptr noundef nonnull align 8 dereferenceable(208) %.val4.i.i.i, i32 noundef %.0.i.i7.i.i.i)
          to label %.noexc4.i.i unwind label %.loopexit15.i.i.i, !inline_history !672

.noexc4.i.i:                                      ; preds = %_ZNK8facebook5velox12_GLOBAL__N_16AsJson2atEi.exit13.i.i.i
  %.sroa.0.0.copyload.i8.i.i.i = load i64, ptr %i.yd, align 8
  br label %.noexc7.i.i.i

.noexc7.i.i.i:                                    ; preds = %.noexc4.i.i, %.noexc.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i, %bb.fo, %bb.fm
  %.0.i.i.i = phi i64 [ %.sroa.0.0.copyload.i8.i.i.i, %.noexc4.i.i ], [ %i.xn, %.noexc.i.i ], [ 4, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i ], [ 4, %bb.fm ], [ 4, %bb.fo ]
  %i.ye = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 4294967295
  %sext8.i.i = shl i64 %.0.i.i.i, 32
  %i.yf = ashr exact i64 %sext8.i.i, 32
  %i.yg = add nsw i64 %i.yf, %i.ye
  %i.yh = load ptr, ptr %.sroa.4383.0..sroa_idx, align 8, !tbaa !2360, !nonnull !111, !align !171 ; 3 uses
  %i.yi = load i64, ptr %i.yh, align 8, !tbaa !163
  %i.yj = add i64 %i.yg, %i.yi                    ; 2 uses
  store i64 %i.yj, ptr %i.yh, align 8, !tbaa !163
  %indvars.iv.next.i5.i.i.i = add nsw i64 %indvars.iv.i4.i.i.i, 1 ; 2 uses
  %i.yk = icmp slt i64 %indvars.iv.next.i5.i.i.i, %i.ui
  br i1 %i.yk, label %bb.fh, label %._crit_edge.i.i.i.i, !llvm.loop !2363

.loopexit15.i.i.i:                                ; preds = %_ZNK8facebook5velox12_GLOBAL__N_16AsJson2atEi.exit13.i.i.i, %_ZNK8facebook5velox12_GLOBAL__N_16AsJson2atEi.exit.i.i.i, %_ZNK8facebook5velox12_GLOBAL__N_16AsJson2atEi.exit.i.i.i.i
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.fx

.loopexit.split-lp.i.i.i:                         ; preds = %bb.ff
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.fx

bb.fx:                                            ; preds = %.loopexit.split-lp.i.i.i, %.loopexit15.i.i.i
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %.loopexit15.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ] ; 3 uses
  %i.yl = extractvalue { ptr, i32 } %lpad.phi.i.i.i, 0 ; 2 uses
  %i.ym = extractvalue { ptr, i32 } %lpad.phi.i.i.i, 1 ; 2 uses
  %i.yn = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #38
  %i.yo = icmp eq i32 %i.ym, %i.yn
  br i1 %i.yo, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %bb.fx
  %i.yp = call ptr @__cxa_begin_catch(ptr %i.yl) #38
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 8
  %i.yr = load ptr, ptr %i.yq, align 8, !tbaa !178 ; 2 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 144
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !102 ; 4 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yr, i64 152
  %i.yv = load i64, ptr %i.yu, align 8, !tbaa !119
  %i.yw = icmp eq i64 %i.yv, 4
  br i1 %i.yw, label %.lr.ph.i.i.i.preheader.i.preheader.i.i.i188, label %.loopexit.i.i.i186

.lr.ph.i.i.i.preheader.i.preheader.i.i.i188:      ; preds = %bb.fy
  %i.yx = load i8, ptr %i.yt, align 1, !tbaa !37
  %or.cond.not.i.i.i.i.i.i189 = icmp eq i8 %i.yx, 85
  br i1 %or.cond.not.i.i.i.i.i.i189, label %tailrecurse.i.i.i.i.i.i.i190, label %.loopexit.i.i.i186

tailrecurse.i.i.i.i.i.i.i190:                     ; preds = %.lr.ph.i.i.i.preheader.i.preheader.i.i.i188
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yt, i64 1
  %i.yz = load i8, ptr %i.yy, align 1, !tbaa !37
  %or.cond.not.i.i.i.1.i.i.i191 = icmp eq i8 %i.yz, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i191, label %tailrecurse.i.i.i.i.1.i.i.i192, label %.loopexit.i.i.i186

tailrecurse.i.i.i.i.1.i.i.i192:                   ; preds = %tailrecurse.i.i.i.i.i.i.i190
  %i.za = getelementptr inbounds nuw i8, ptr %i.yt, i64 2
  %i.zb = load i8, ptr %i.za, align 1, !tbaa !37
  %or.cond.not.i.i.i.2.i.i.i193 = icmp eq i8 %i.zb, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i193, label %tailrecurse.i.i.i.i.2.i.i.i194, label %.loopexit.i.i.i186

tailrecurse.i.i.i.i.2.i.i.i194:                   ; preds = %tailrecurse.i.i.i.i.1.i.i.i192
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yt, i64 3
  %i.zd = load i8, ptr %i.zc, align 1, !tbaa !37
  %or.cond.not.i.i.i.3.i.i.i195 = icmp eq i8 %i.zd, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i195, label %tailrecurse.i.i.i.i.3.i.i.i196, label %.loopexit.i.i.i186

tailrecurse.i.i.i.i.3.i.i.i196:                   ; preds = %tailrecurse.i.i.i.i.2.i.i.i194
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %22) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %1, i32 noundef %i.tt, ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.gg unwind label %bb.gi

.loopexit.i.i.i186:                               ; preds = %tailrecurse.i.i.i.i.2.i.i.i194, %tailrecurse.i.i.i.i.1.i.i.i192, %tailrecurse.i.i.i.i.i.i.i190, %.lr.ph.i.i.i.preheader.i.preheader.i.i.i188, %bb.fy
  invoke void @__cxa_rethrow() #46
          to label %bb.gm unwind label %bb.gf

bb.fz:                                            ; preds = %bb.fx
  %i.ze = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #38
  %i.zf = icmp eq i32 %i.ym, %i.ze
  br i1 %i.zf, label %bb.ga, label %.body209

bb.ga:                                            ; preds = %bb.fz
  %i.zg = call ptr @__cxa_begin_catch(ptr %i.yl) #38 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %21) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %1, i32 noundef %i.tt, ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %bb.gb unwind label %bb.gd

bb.gb:                                            ; preds = %bb.ga
  %i.zh = load ptr, ptr %21, align 8, !tbaa !116
  %.not.i.i.i.i183 = icmp eq ptr %i.zh, null
  br i1 %.not.i.i.i.i183, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i184, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %21) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i184

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i184: ; preds = %bb.gc, %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i184.invoke

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i184.invoke: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit11.i.i.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i184
  invoke void @__cxa_end_catch()
          to label %"_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_117castToJsonFromMapERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS1_9CastHooksEEE3$_2ZNS2_22applyToSelectedNoThrowISL_EEvSB_T_EUlSN_E_EEvSB_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i.i.i" unwind label %.loopexit416

bb.gd:                                            ; preds = %bb.ga
  %i.zi = landingpad { ptr, i32 }
          cleanup
  %i.zj = load ptr, ptr %21, align 8, !tbaa !116
  %.not.i8.i.i.i181 = icmp eq ptr %i.zj, null
  br i1 %.not.i8.i.i.i181, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i182, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %21) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i182

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i182: ; preds = %bb.ge, %bb.gd
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #38
  invoke void @__cxa_end_catch()
          to label %.body209 unwind label %bb.gl

bb.gf:                                            ; preds = %.loopexit.i.i.i186
  %i.zk = landingpad { ptr, i32 }
          cleanup
  br label %bb.gk

bb.gg:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i196
  %i.zl = load ptr, ptr %22, align 8, !tbaa !116
  %.not.i10.i.i.i = icmp eq ptr %i.zl, null
  br i1 %.not.i10.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit11.i.i.i, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %22) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit11.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit11.i.i.i: ; preds = %bb.gh, %bb.gg
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i184.invoke

bb.gi:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i196
  %i.zm = landingpad { ptr, i32 }
          cleanup
  %i.zn = load ptr, ptr %22, align 8, !tbaa !116
  %.not.i12.i.i.i = icmp eq ptr %i.zn, null
  br i1 %.not.i12.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit13.i.i.i, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %22) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit13.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit13.i.i.i: ; preds = %bb.gj, %bb.gi
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #38
  br label %bb.gk

bb.gk:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit13.i.i.i, %bb.gf
  %.pn.i.i.i.i187 = phi { ptr, i32 } [ %i.zm, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit13.i.i.i ], [ %i.zk, %bb.gf ]
  invoke void @__cxa_end_catch()
          to label %.body209 unwind label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i182
  %i.zo = landingpad { ptr, i32 }
          catch ptr null
  %i.zp = extractvalue { ptr, i32 } %i.zo, 0
  call void @__clang_call_terminate(ptr %i.zp) #48
  unreachable

bb.gm:                                            ; preds = %.loopexit.i.i.i186
  unreachable

"_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_117castToJsonFromMapERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS1_9CastHooksEEE3$_2ZNS2_22applyToSelectedNoThrowISL_EEvSB_T_EUlSN_E_EEvSB_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i.i.i": ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i184.invoke, %._crit_edge.i.i.i.i, %.noexc.i.i.i
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i.i = trunc i64 %indvars.iv.next.i.i.i to i32
  %exitcond.not.i.i.i185 = icmp eq i32 %i.tj, %lftr.wideiv.i.i.i
  br i1 %exitcond.not.i.i.i185, label %.loopexit421, label %bb.ff, !llvm.loop !2364

bb.gn:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i136
  %i.zq = load ptr, ptr %2, align 8, !tbaa !160   ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.zs = load i32, ptr %i.zr, align 4, !tbaa !149 ; 6 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.zu = load i32, ptr %i.zt, align 8, !tbaa !158 ; 6 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i139 = getelementptr inbounds nuw i8, ptr %20, i64 16
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox12_GLOBAL__N_117castToJsonFromMapERKNS0_10BaseVectorERNS0_4exec7EvalCtxERKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS5_9CastHooksEE:bb.a
  %i.aad = sub nsw i32 %i.zx, %i.zs               ; 2 uses
  %i.aae = zext nneg i32 %i.aad to i64
  %notmask.i.i.i.i.i.i.i.i179 = shl nsw i64 -1, %i.aae
  %i.aaf = xor i64 %notmask.i.i.i.i.i.i.i.i179, -1
  %i.aag = sub nsw i32 64, %i.aad
  %i.aah = zext nneg i32 %i.aag to i64
  %i.aai = shl i64 %i.aaf, %i.aah
  %i.aaj = and i64 %i.aai, %i.aac
  br label %.invoke794

.invoke794:                                       ; preds = %bb.jj, %bb.gp
  %i.aak = phi i64 [ %i.aaj, %bb.gp ], [ %i.ant, %bb.jj ]
  %i.aal = ashr i32 %i.zu, 6
  invoke fastcc void @"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_117castToJsonFromMapERKNS0_10BaseVectorERS4_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS3_9CastHooksEEE3$_2ZNS4_22applyToSelectedNoThrowISN_EEvSD_T_EUlSP_E_EEvSD_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim"(ptr noundef nonnull readonly align 8 dereferenceable(40) %20, i32 noundef %i.aal, i64 noundef %i.aak)
          to label %"_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_117castToJsonFromMapERKNS0_10BaseVectorERS4_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS3_9CastHooksEEE3$_2ZNS4_22applyToSelectedNoThrowISN_EEvSD_T_EUlSP_E_EEvSD_SP_T0_EUlSP_E_EEvPKmiiSP_.exit.i.i.i" unwind label %.loopexit.split-lp417.loopexit.split-lp.loopexit.split-lp

bb.gq:                                            ; preds = %bb.go
  %.not32.i.i.i.i.i.i144 = icmp eq i32 %i.zs, %i.zx
  br i1 %.not32.i.i.i.i.i.i144, label %.noexc212, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.aam = sdiv i32 %i.zs, 64
  %i.aan = sub nsw i32 %i.zx, %i.zs               ; 2 uses
  %i.aao = zext nneg i32 %i.aan to i64
  %notmask.i.i35.i.i.i.i.i.i145 = shl nsw i64 -1, %i.aao
  %i.aap = xor i64 %notmask.i.i35.i.i.i.i.i.i145, -1
  %i.aaq = sub nsw i32 64, %i.aan
  %i.aar = zext nneg i32 %i.aaq to i64
  %i.aas = shl i64 %i.aap, %i.aar
  invoke fastcc void @"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_117castToJsonFromMapERKNS0_10BaseVectorERS4_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS3_9CastHooksEEE3$_2ZNS4_22applyToSelectedNoThrowISN_EEvSD_T_EUlSP_E_EEvSD_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUlimE_clEim"(ptr noundef nonnull readonly align 8 dereferenceable(40) %20, i32 noundef %i.aam, i64 noundef %i.aas)
          to label %.noexc212 unwind label %.loopexit.split-lp417.loopexit.split-lp.loopexit.split-lp

.noexc212:                                        ; preds = %bb.gr, %bb.gq
  %i.aat = add nsw i32 %i.zx, 64                  ; 2 uses
  %.not3377.i.i.i.i.i.i = icmp sgt i32 %i.aat, %i.zy
  br i1 %.not3377.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i148, label %.lr.ph.i.i.i.i.i.i146

._crit_edge.i.i.i.i.i.i148:                       ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_117castToJsonFromMapERKNS0_10BaseVectorERS4_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS3_9CastHooksEEE3$_2ZNS4_22applyToSelectedNoThrowISN_EEvSD_T_EUlSP_E_EEvSD_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i.i.i", %.noexc212
  %.not34.i.i.i.i.i.i149 = icmp eq i32 %i.zu, %i.zy
  br i1 %.not34.i.i.i.i.i.i149, label %"_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_117castToJsonFromMapERKNS0_10BaseVectorERS4_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS3_9CastHooksEEE3$_2ZNS4_22applyToSelectedNoThrowISN_EEvSD_T_EUlSP_E_EEvSD_SP_T0_EUlSP_E_EEvPKmiiSP_.exit.i.i.i", label %bb.jj

.lr.ph.i.i.i.i.i.i146:                            ; preds = %.noexc212, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_117castToJsonFromMapERKNS0_10BaseVectorERS4_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS3_9CastHooksEEE3$_2ZNS4_22applyToSelectedNoThrowISN_EEvSD_T_EUlSP_E_EEvSD_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i.i.i"
  %i.aau = phi i32 [ %i.anq, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_117castToJsonFromMapERKNS0_10BaseVectorERS4_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS3_9CastHooksEEE3$_2ZNS4_22applyToSelectedNoThrowISN_EEvSD_T_EUlSP_E_EEvSD_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i.i.i" ], [ %i.aat, %.noexc212 ] ; 2 uses
  %.078.i.i.i.i.i.i = phi i32 [ %i.aau, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_117castToJsonFromMapERKNS0_10BaseVectorERS4_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS3_9CastHooksEEE3$_2ZNS4_22applyToSelectedNoThrowISN_EEvSD_T_EUlSP_E_EEvSD_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i.i.i" ], [ %i.zx, %.noexc212 ] ; 2 uses
  %i.aav = sdiv i32 %.078.i.i.i.i.i.i, 64         ; 3 uses
  %i.aaw = sext i32 %i.aav to i64
  %i.aax = getelementptr inbounds [8 x i8], ptr %i.zq, i64 %i.aaw
  %i.aay = load i64, ptr %i.aax, align 8, !tbaa !163 ; 2 uses
  switch i64 %i.aay, label %.lr.ph.i.i.i.i.i.i.i174 [
    i64 -1, label %bb.gs
    i64 0, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_117castToJsonFromMapERKNS0_10BaseVectorERS4_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS3_9CastHooksEEE3$_2ZNS4_22applyToSelectedNoThrowISN_EEvSD_T_EUlSP_E_EEvSD_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i.i.i"
  ]

.lr.ph.i.i.i.i.i.i.i174:                          ; preds = %.lr.ph.i.i.i.i.i.i146
  %i.aaz = shl nsw i32 %i.aav, 6
  br label %bb.ib

bb.gs:                                            ; preds = %.lr.ph.i.i.i.i.i.i146
  %i.aba = shl nsw i32 %i.aav, 6                  ; 2 uses
  %i.abb = add i32 %i.aba, 64
  %i.abc = sext i32 %i.abb to i64
  %.0.off.i.i.i.i.i.i151 = add i32 %.078.i.i.i.i.i.i, 127
  %.not84.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i151, 64
  br i1 %.not84.i.i.i.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_117castToJsonFromMapERKNS0_10BaseVectorERS4_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS3_9CastHooksEEE3$_2ZNS4_22applyToSelectedNoThrowISN_EEvSD_T_EUlSP_E_EEvSD_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i.i.i", label %.lr.ph83.i.i.i.i.i.i.i

.lr.ph83.i.i.i.i.i.i.i:                           ; preds = %bb.gs
  %i.abd = sext i32 %i.aba to i64
  br label %bb.gt

bb.gt:                                            ; preds = %"_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_117castToJsonFromMapERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS1_9CastHooksEEE3$_2ZNS2_22applyToSelectedNoThrowISL_EEvSB_T_EUlSN_E_EEvSB_SN_T0_ENKUlSN_E_clImEEDaSN_.exit.i.i.i.i.i.i.i", %.lr.ph83.i.i.i.i.i.i.i
  %.081.i.i.i.i.i.i.i = phi i64 [ %i.abd, %.lr.ph83.i.i.i.i.i.i.i ], [ %i.ahh, %"_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_117castToJsonFromMapERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS1_9CastHooksEEE3$_2ZNS2_22applyToSelectedNoThrowISL_EEvSB_T_EUlSN_E_EEvSB_SN_T0_ENKUlSN_E_clImEEDaSN_.exit.i.i.i.i.i.i.i" ] ; 3 uses
  %i.abe = load ptr, ptr %24, align 8, !tbaa !2357, !nonnull !111, !align !171
  %i.abf = load ptr, ptr %i.abe, align 8, !tbaa !2327 ; 2 uses
  %i.abg = trunc i64 %.081.i.i.i.i.i.i.i to i32   ; 3 uses
  %i.abh = load ptr, ptr %i.abf, align 8, !tbaa !19
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abh, i64 32
  %i.abj = load ptr, ptr %i.abi, align 8
  %i.abk = invoke noundef zeroext i1 %i.abj(ptr noundef nonnull align 8 dereferenceable(94) %i.abf, i32 noundef %i.abg)
          to label %.noexc.i.i.i.i.i.i.i171 unwind label %.loopexit.split-lp.i.i.i.i.i.i.i, !inline_history !2365

.noexc.i.i.i.i.i.i.i171:                          ; preds = %bb.gt
  br i1 %i.abk, label %"_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_117castToJsonFromMapERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS1_9CastHooksEEE3$_2ZNS2_22applyToSelectedNoThrowISL_EEvSB_T_EUlSN_E_EEvSB_SN_T0_ENKUlSN_E_clImEEDaSN_.exit.i.i.i.i.i.i.i", label %bb.gu

bb.gu:                                            ; preds = %.noexc.i.i.i.i.i.i.i171
  %i.abl = load ptr, ptr %24, align 8, !tbaa !2357, !nonnull !111, !align !171
  %i.abm = load ptr, ptr %i.abl, align 8, !tbaa !2327 ; 2 uses
  %sext.i.i.i.i.i.i.i.i172 = shl i64 %.081.i.i.i.i.i.i.i, 32
  %i.abn = ashr exact i64 %sext.i.i.i.i.i.i.i.i172, 32 ; 2 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abm, i64 120
  %i.abp = load ptr, ptr %i.abo, align 8, !tbaa !617
  %i.abq = getelementptr inbounds [4 x i8], ptr %i.abp, i64 %i.abn
  %i.abr = load i32, ptr %i.abq, align 4, !tbaa !3 ; 3 uses
  %i.abs = icmp sgt i32 %i.abr, 0                 ; 2 uses
  br i1 %i.abs, label %.lr.ph.i.i.i.i.i.i.i.i, label %.._crit_edge_crit_edge.i.i.i.i.i.i.i.i

.._crit_edge_crit_edge.i.i.i.i.i.i.i.i:           ; preds = %bb.gu
  %.pre.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4383.0..sroa_idx, align 8, !tbaa !2360 ; 2 uses
  %.pre16.i.i.i.i.i.i.i.i = load i64, ptr %.pre.i.i.i.i.i.i.i.i, align 8, !tbaa !163
  br label %._crit_edge.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.gu
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abm, i64 104
  %i.abu = load ptr, ptr %i.abt, align 8, !tbaa !633
  %i.abv = getelementptr inbounds [4 x i8], ptr %i.abu, i64 %i.abn
  %i.abw = load i32, ptr %i.abv, align 4, !tbaa !3 ; 2 uses
  %i.abx = add nsw i32 %i.abw, %i.abr
  %i.aby = sext i32 %i.abw to i64
  %i.abz = sext i32 %i.abx to i64
  br label %bb.gv

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.noexc20.i.i.i.i.i.i.i173, %.._crit_edge_crit_edge.i.i.i.i.i.i.i.i
  %i.aca = phi i64 [ %.pre16.i.i.i.i.i.i.i.i, %.._crit_edge_crit_edge.i.i.i.i.i.i.i.i ], [ %i.aga, %.noexc20.i.i.i.i.i.i.i173 ]
  %i.acb = phi ptr [ %.pre.i.i.i.i.i.i.i.i, %.._crit_edge_crit_edge.i.i.i.i.i.i.i.i ], [ %i.afy, %.noexc20.i.i.i.i.i.i.i173 ]
  %i.acc = shl nuw nsw i32 %i.abr, 1
  %i.acd = or disjoint i32 %i.acc, 1
  %i.ace = select i1 %i.abs, i32 %i.acd, i32 2
  %i.acf = zext nneg i32 %i.ace to i64
  %i.acg = add i64 %i.aca, %i.acf
  store i64 %i.acg, ptr %i.acb, align 8, !tbaa !163
  br label %"_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_117castToJsonFromMapERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS1_9CastHooksEEE3$_2ZNS2_22applyToSelectedNoThrowISL_EEvSB_T_EUlSN_E_EEvSB_SN_T0_ENKUlSN_E_clImEEDaSN_.exit.i.i.i.i.i.i.i"

bb.gv:                                            ; preds = %.noexc20.i.i.i.i.i.i.i173, %.lr.ph.i.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i.i = phi i64 [ %i.aby, %.lr.ph.i.i.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i.i.i, %.noexc20.i.i.i.i.i.i.i173 ] ; 8 uses
  %i.ach = load ptr, ptr %.sroa.5384.0..sroa_idx, align 8, !tbaa !2361, !nonnull !111, !align !171 ; 2 uses
  %i.aci = getelementptr i8, ptr %i.ach, i64 8
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.aci, align 8, !tbaa !641 ; 4 uses
  %i.acj = getelementptr i8, ptr %i.ach, i64 32
  %.val13.i.i.i.i.i.i.i.i = load ptr, ptr %i.acj, align 8, !tbaa !656 ; 2 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i, i64 58
  %i.acl = load i8, ptr %i.ack, align 2, !tbaa !653, !range !110, !noundef !111
  %i.acm = trunc nuw i8 %i.acl to i1
  %i.acn = trunc nsw i64 %indvars.iv.i.i.i.i.i.i.i.i to i32 ; 3 uses
  br i1 %i.acm, label %_ZNK8facebook5velox12_GLOBAL__N_16AsJson2atEi.exit.i.i.i.i.i.i.i.i, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.aco = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i, i64 59
  %i.acp = load i8, ptr %i.aco, align 1, !tbaa !654, !range !110, !noundef !111
  %i.acq = trunc nuw i8 %i.acp to i1
  br i1 %i.acq, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %bb.gw
  %i.acr = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i, i64 64
  %i.acs = load i32, ptr %i.acr, align 8, !tbaa !671
  br label %_ZNK8facebook5velox12_GLOBAL__N_16AsJson2atEi.exit.i.i.i.i.i.i.i.i

bb.gy:                                            ; preds = %bb.gw
  %i.act = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i, i64 8
  %i.acu = load ptr, ptr %i.act, align 8, !tbaa !655
  %i.acv = getelementptr inbounds [4 x i8], ptr %i.acu, i64 %indvars.iv.i.i.i.i.i.i.i.i
  %i.acw = load i32, ptr %i.acv, align 4, !tbaa !3
  br label %_ZNK8facebook5velox12_GLOBAL__N_16AsJson2atEi.exit.i.i.i.i.i.i.i.i

_ZNK8facebook5velox12_GLOBAL__N_16AsJson2atEi.exit.i.i.i.i.i.i.i.i: ; preds = %bb.gy, %bb.gx, %bb.gv
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.acw, %bb.gy ], [ %i.acs, %bb.gx ], [ %i.acn, %bb.gv ]
  %i.acx = load ptr, ptr %.val13.i.i.i.i.i.i.i.i, align 8, !tbaa !19
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acx, i64 384
  %i.acz = load ptr, ptr %i.acy, align 8
  %i.ada = invoke noundef nonnull align 8 dereferenceable(16) ptr %i.acz(ptr noundef nonnull align 8 dereferenceable(208) %.val13.i.i.i.i.i.i.i.i, i32 noundef %.0.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc19.i.i.i.i.i.i.i unwind label %.loopexit56.i.i.i.i.i.i.i, !inline_history !2365

.noexc19.i.i.i.i.i.i.i:                           ; preds = %_ZNK8facebook5velox12_GLOBAL__N_16AsJson2atEi.exit.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ada, align 8
  %i.adb = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !2362, !nonnull !111, !align !171 ; 5 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %i.adb, i64 8
  %i.add = load ptr, ptr %i.adc, align 8, !tbaa !641 ; 13 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %i.add, i64 24
  %i.adf = load ptr, ptr %i.ade, align 8, !tbaa !643 ; 4 uses
  %.not.i.i39.i.i.i.i.i.i = icmp eq ptr %i.adf, null
  br i1 %.not.i.i39.i.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i42.i.i.i.i.i.i, label %bb.gz

bb.gz:                                            ; preds = %.noexc19.i.i.i.i.i.i.i
  %i.adg = getelementptr inbounds nuw i8, ptr %i.add, i64 58
  %i.adh = load i8, ptr %i.adg, align 2, !tbaa !653, !range !110, !noundef !111
  %i.adi = trunc nuw i8 %i.adh to i1
  %i.adj = getelementptr inbounds nuw i8, ptr %i.add, i64 57
  %i.adk = load i8, ptr %i.adj, align 1, !range !110
  %i.adl = trunc nuw i8 %i.adk to i1
  %or.cond.i.i40.i.i.i.i.i.i = select i1 %i.adi, i1 true, i1 %i.adl
  br i1 %or.cond.i.i40.i.i.i.i.i.i, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %bb.gz
  %i.adm = lshr i64 %indvars.iv.i.i.i.i.i.i.i.i, 6
  %i.adn = and i64 %i.adm, 67108863
  %i.ado = getelementptr inbounds nuw [8 x i8], ptr %i.adf, i64 %i.adn
  %i.adp = load i64, ptr %i.ado, align 8, !tbaa !163
  %i.adq = and i64 %indvars.iv.i.i.i.i.i.i.i.i, 63
  %i.adr = shl nuw i64 1, %i.adq
  %i.ads = and i64 %i.adp, %i.adr
  %.not.i.i.i55.i.i.i.i.i.i = icmp eq i64 %i.ads, 0
  br i1 %.not.i.i.i55.i.i.i.i.i.i, label %.noexc20.i.i.i.i.i.i.i173, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i42.i.i.i.i.i.i

bb.hb:                                            ; preds = %bb.gz
  %i.adt = getelementptr inbounds nuw i8, ptr %i.add, i64 59
  %i.adu = load i8, ptr %i.adt, align 1, !tbaa !654, !range !110, !noundef !111
  %i.adv = trunc nuw i8 %i.adu to i1
  br i1 %i.adv, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i53.i.i.i.i.i.i, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.adw = getelementptr inbounds nuw i8, ptr %i.add, i64 8
  %i.adx = load ptr, ptr %i.adw, align 8, !tbaa !655
  %69 = shl nsw i64 %indvars.iv.i.i.i.i.i.i.i.i, 2
  %70 = getelementptr inbounds i8, ptr %i.adx, i64 %69
  %i.ady = load i32, ptr %70, align 4, !tbaa !3
  %i.adz = zext i32 %i.ady to i64                 ; 2 uses
  %i.aea = lshr i64 %i.adz, 6
  %i.aeb = getelementptr inbounds nuw [8 x i8], ptr %i.adf, i64 %i.aea
  %i.aec = load i64, ptr %i.aeb, align 8, !tbaa !163
  %i.aed = and i64 %i.adz, 63
  %i.aee = shl nuw i64 1, %i.aed
  %i.aef = and i64 %i.aee, %i.aec
  %.not.i7.i.i41.i.i.i.i.i.i = icmp eq i64 %i.aef, 0
  br i1 %.not.i7.i.i41.i.i.i.i.i.i, label %.noexc20.i.i.i.i.i.i.i173, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i42.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i53.i.i.i.i.i.i: ; preds = %bb.hb
  %i.aeg = load i64, ptr %i.adf, align 8, !tbaa !163
  %i.aeh = and i64 %i.aeg, 1
  %.not.i6.i.i54.i.i.i.i.i.i = icmp eq i64 %i.aeh, 0
  br i1 %.not.i6.i.i54.i.i.i.i.i.i, label %.noexc20.i.i.i.i.i.i.i173, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i42.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i42.i.i.i.i.i.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i53.i.i.i.i.i.i, %bb.hc, %bb.ha, %.noexc19.i.i.i.i.i.i.i
  %i.aei = getelementptr inbounds nuw i8, ptr %i.adb, i64 72
  %i.aej = load i8, ptr %i.aei, align 8, !tbaa !224, !range !110, !noundef !111
  %i.aek = trunc nuw i8 %i.aej to i1
  br i1 %i.aek, label %bb.hd, label %bb.hh

bb.hd:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i42.i.i.i.i.i.i
  %i.ael = getelementptr inbounds nuw i8, ptr %i.adb, i64 48
  %i.aem = load i64, ptr %i.ael, align 8, !tbaa !119
  %i.aen = add i64 %i.aem, 3
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.adb, i64 32
  %.val6.i49.i.i.i.i.i.i = load ptr, ptr %i.aeo, align 8, !tbaa !656 ; 2 uses
  %i.aep = getelementptr inbounds nuw i8, ptr %i.add, i64 58
  %i.aeq = load i8, ptr %i.aep, align 2, !tbaa !653, !range !110, !noundef !111
  %i.aer = trunc nuw i8 %i.aeq to i1
  br i1 %i.aer, label %_ZNK8facebook5velox12_GLOBAL__N_16AsJson2atEi.exit.i50.i.i.i.i.i.i, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.aes = getelementptr inbounds nuw i8, ptr %i.add, i64 59
  %i.aet = load i8, ptr %i.aes, align 1, !tbaa !654, !range !110, !noundef !111
  %i.aeu = trunc nuw i8 %i.aet to i1
  br i1 %i.aeu, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %bb.he
  %i.aev = getelementptr inbounds nuw i8, ptr %i.add, i64 64
  %i.aew = load i32, ptr %i.aev, align 8, !tbaa !671
  br label %_ZNK8facebook5velox12_GLOBAL__N_16AsJson2atEi.exit.i50.i.i.i.i.i.i

bb.hg:                                            ; preds = %bb.he
  %i.aex = getelementptr inbounds nuw i8, ptr %i.add, i64 8
  %i.aey = load ptr, ptr %i.aex, align 8, !tbaa !655
  %71 = shl nsw i64 %indvars.iv.i.i.i.i.i.i.i.i, 2
  %72 = getelementptr inbounds i8, ptr %i.aey, i64 %71
  %i.aez = load i32, ptr %72, align 4, !tbaa !3
  br label %_ZNK8facebook5velox12_GLOBAL__N_16AsJson2atEi.exit.i50.i.i.i.i.i.i

_ZNK8facebook5velox12_GLOBAL__N_16AsJson2atEi.exit.i50.i.i.i.i.i.i: ; preds = %bb.hg, %bb.hf, %bb.hd
  %.0.i.i.i51.i.i.i.i.i.i = phi i32 [ %i.aez, %bb.hg ], [ %i.aew, %bb.hf ], [ %i.acn, %bb.hd ]
  %i.afa = load ptr, ptr %.val6.i49.i.i.i.i.i.i, align 8, !tbaa !19
  %i.afb = getelementptr inbounds nuw i8, ptr %i.afa, i64 384
  %i.afc = load ptr, ptr %i.afb, align 8
  %i.afd = invoke noundef nonnull align 8 dereferenceable(16) ptr %i.afc(ptr noundef nonnull align 8 dereferenceable(208) %.val6.i49.i.i.i.i.i.i, i32 noundef %.0.i.i.i51.i.i.i.i.i.i)
          to label %.noexc56.i.i.i.i.i.i unwind label %.loopexit56.i.i.i.i.i.i.i, !inline_history !672

.noexc56.i.i.i.i.i.i:                             ; preds = %_ZNK8facebook5velox12_GLOBAL__N_16AsJson2atEi.exit.i50.i.i.i.i.i.i
  %.sroa.0.0.copyload.i.i52.i.i.i.i.i.i = load i64, ptr %i.afd, align 8
  %i.afe = add i64 %i.aen, %.sroa.0.0.copyload.i.i52.i.i.i.i.i.i
  br label %.noexc20.i.i.i.i.i.i.i173

bb.hh:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i42.i.i.i.i.i.i
  %i.aff = getelementptr inbounds nuw i8, ptr %i.adb, i64 32
  %.val4.i43.i.i.i.i.i.i = load ptr, ptr %i.aff, align 8, !tbaa !656 ; 2 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %i.add, i64 58
  %i.afh = load i8, ptr %i.afg, align 2, !tbaa !653, !range !110, !noundef !111
  %i.afi = trunc nuw i8 %i.afh to i1
  br i1 %i.afi, label %_ZNK8facebook5velox12_GLOBAL__N_16AsJson2atEi.exit13.i44.i.i.i.i.i.i, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.afj = getelementptr inbounds nuw i8, ptr %i.add, i64 59
  %i.afk = load i8, ptr %i.afj, align 1, !tbaa !654, !range !110, !noundef !111
  %i.afl = trunc nuw i8 %i.afk to i1
  br i1 %i.afl, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %bb.hi
  %i.afm = getelementptr inbounds nuw i8, ptr %i.add, i64 64
  %i.afn = load i32, ptr %i.afm, align 8, !tbaa !671
  br label %_ZNK8facebook5velox12_GLOBAL__N_16AsJson2atEi.exit13.i44.i.i.i.i.i.i

bb.hk:                                            ; preds = %bb.hi
  %i.afo = getelementptr inbounds nuw i8, ptr %i.add, i64 8
  %i.afp = load ptr, ptr %i.afo, align 8, !tbaa !655
  %73 = shl nsw i64 %indvars.iv.i.i.i.i.i.i.i.i, 2
  %74 = getelementptr inbounds i8, ptr %i.afp, i64 %73
  %i.afq = load i32, ptr %74, align 4, !tbaa !3
  br label %_ZNK8facebook5velox12_GLOBAL__N_16AsJson2atEi.exit13.i44.i.i.i.i.i.i

_ZNK8facebook5velox12_GLOBAL__N_16AsJson2atEi.exit13.i44.i.i.i.i.i.i: ; preds = %bb.hk, %bb.hj, %bb.hh
  %.0.i.i7.i45.i.i.i.i.i.i = phi i32 [ %i.afq, %bb.hk ], [ %i.afn, %bb.hj ], [ %i.acn, %bb.hh ]
  %i.afr = load ptr, ptr %.val4.i43.i.i.i.i.i.i, align 8, !tbaa !19
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afr, i64 384
  %i.aft = load ptr, ptr %i.afs, align 8
  %i.afu = invoke noundef nonnull align 8 dereferenceable(16) ptr %i.aft(ptr noundef nonnull align 8 dereferenceable(208) %.val4.i43.i.i.i.i.i.i, i32 noundef %.0.i.i7.i45.i.i.i.i.i.i)
          to label %.noexc57.i.i.i.i.i.i unwind label %.loopexit56.i.i.i.i.i.i.i, !inline_history !672

.noexc57.i.i.i.i.i.i:                             ; preds = %_ZNK8facebook5velox12_GLOBAL__N_16AsJson2atEi.exit13.i44.i.i.i.i.i.i
  %.sroa.0.0.copyload.i8.i46.i.i.i.i.i.i = load i64, ptr %i.afu, align 8
  br label %.noexc20.i.i.i.i.i.i.i173

.noexc20.i.i.i.i.i.i.i173:                        ; preds = %.noexc57.i.i.i.i.i.i, %.noexc56.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i53.i.i.i.i.i.i, %bb.hc, %bb.ha
  %.0.i48.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.copyload.i8.i46.i.i.i.i.i.i, %.noexc57.i.i.i.i.i.i ], [ %i.afe, %.noexc56.i.i.i.i.i.i ], [ 4, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i53.i.i.i.i.i.i ], [ 4, %bb.ha ], [ 4, %bb.hc ]
  %i.afv = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, 4294967295
  %sext61.i.i.i.i.i.i = shl i64 %.0.i48.i.i.i.i.i.i, 32
  %i.afw = ashr exact i64 %sext61.i.i.i.i.i.i, 32
  %i.afx = add nsw i64 %i.afw, %i.afv
  %i.afy = load ptr, ptr %.sroa.4383.0..sroa_idx, align 8, !tbaa !2360, !nonnull !111, !align !171 ; 3 uses
  %i.afz = load i64, ptr %i.afy, align 8, !tbaa !163
  %i.aga = add i64 %i.afx, %i.afz                 ; 2 uses
  store i64 %i.aga, ptr %i.afy, align 8, !tbaa !163
  %indvars.iv.next.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.agb = icmp slt i64 %indvars.iv.next.i.i.i.i.i.i.i.i, %i.abz
  br i1 %i.agb, label %bb.gv, label %._crit_edge.i.i.i.i.i.i.i.i, !llvm.loop !2366

.loopexit56.i.i.i.i.i.i.i:                        ; preds = %_ZNK8facebook5velox12_GLOBAL__N_16AsJson2atEi.exit13.i44.i.i.i.i.i.i, %_ZNK8facebook5velox12_GLOBAL__N_16AsJson2atEi.exit.i50.i.i.i.i.i.i, %_ZNK8facebook5velox12_GLOBAL__N_16AsJson2atEi.exit.i.i.i.i.i.i.i.i
  %lpad.loopexit.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.hl

.loopexit.split-lp.i.i.i.i.i.i.i:                 ; preds = %bb.gt
  %lpad.loopexit.split-lp.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.hl

bb.hl:                                            ; preds = %.loopexit.split-lp.i.i.i.i.i.i.i, %.loopexit56.i.i.i.i.i.i.i
  %lpad.phi.i.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i.i.i, %.loopexit56.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i ] ; 3 uses
  %i.agc = extractvalue { ptr, i32 } %lpad.phi.i.i.i.i.i.i.i, 0 ; 2 uses
  %i.agd = extractvalue { ptr, i32 } %lpad.phi.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.age = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #38
  %i.agf = icmp eq i32 %i.agd, %i.age
  br i1 %i.agf, label %bb.hm, label %bb.hn

bb.hm:                                            ; preds = %bb.hl
  %i.agg = call ptr @__cxa_begin_catch(ptr %i.agc) #38
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agg, i64 8
  %i.agi = load ptr, ptr %i.agh, align 8, !tbaa !178 ; 2 uses
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agi, i64 144
  %i.agk = load ptr, ptr %i.agj, align 8, !tbaa !102 ; 4 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agi, i64 152
  %i.agm = load i64, ptr %i.agl, align 8, !tbaa !119
  %i.agn = icmp eq i64 %i.agm, 4
  br i1 %i.agn, label %.lr.ph.i.i.i.preheader.i.preheader.i.i.i.i.i.i.i158, label %.loopexit.i.i.i.i.i.i.i156

.lr.ph.i.i.i.preheader.i.preheader.i.i.i.i.i.i.i158: ; preds = %bb.hm
  %i.ago = load i8, ptr %i.agk, align 1, !tbaa !37
  %or.cond.not.i.i.i.i.i.i.i.i.i.i159 = icmp eq i8 %i.ago, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i.i.i159, label %tailrecurse.i.i.i.i.i.i.i.i.i.i.i160, label %.loopexit.i.i.i.i.i.i.i156

tailrecurse.i.i.i.i.i.i.i.i.i.i.i160:             ; preds = %.lr.ph.i.i.i.preheader.i.preheader.i.i.i.i.i.i.i158
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agk, i64 1
  %i.agq = load i8, ptr %i.agp, align 1, !tbaa !37
  %or.cond.not.i.i.i.1.i.i.i.i.i.i.i161 = icmp eq i8 %i.agq, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i.i.i161, label %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i162, label %.loopexit.i.i.i.i.i.i.i156

tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i162:           ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i.i.i160
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agk, i64 2
  %i.ags = load i8, ptr %i.agr, align 1, !tbaa !37
  %or.cond.not.i.i.i.2.i.i.i.i.i.i.i163 = icmp eq i8 %i.ags, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i.i.i163, label %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i164, label %.loopexit.i.i.i.i.i.i.i156

tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i164:           ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i162
  %i.agt = getelementptr inbounds nuw i8, ptr %i.agk, i64 3
  %i.agu = load i8, ptr %i.agt, align 1, !tbaa !37
  %or.cond.not.i.i.i.3.i.i.i.i.i.i.i165 = icmp eq i8 %i.agu, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i.i.i165, label %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i166, label %.loopexit.i.i.i.i.i.i.i156

tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i166:           ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i164
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %17) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %1, i32 noundef %i.abg, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.hu unwind label %bb.hw

.loopexit.i.i.i.i.i.i.i156:                       ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i.i.i164, %tailrecurse.i.i.i.i.1.i.i.i.i.i.i.i162, %tailrecurse.i.i.i.i.i.i.i.i.i.i.i160, %.lr.ph.i.i.i.preheader.i.preheader.i.i.i.i.i.i.i158, %bb.hm
  invoke void @__cxa_rethrow() #46
          to label %bb.ia unwind label %bb.ht

bb.hn:                                            ; preds = %bb.hl
  %i.agv = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #38
  %i.agw = icmp eq i32 %i.agd, %i.agv
  br i1 %i.agw, label %bb.ho, label %.body209

bb.ho:                                            ; preds = %bb.hn
  %i.agx = call ptr @__cxa_begin_catch(ptr %i.agc) #38 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %16) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %1, i32 noundef %i.abg, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.hp unwind label %bb.hr

bb.hp:                                            ; preds = %bb.ho
  %i.agy = load ptr, ptr %16, align 8, !tbaa !116
  %.not.i.i.i.i.i.i.i.i154 = icmp eq ptr %i.agy, null
  br i1 %.not.i.i.i.i.i.i.i.i154, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i155, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %16) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i155

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i155: ; preds = %bb.hq, %bb.hp
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i155.invoke

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i155.invoke: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24.i.i.i.i.i.i.i170, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i155
  invoke void @__cxa_end_catch()
          to label %"_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_117castToJsonFromMapERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS1_9CastHooksEEE3$_2ZNS2_22applyToSelectedNoThrowISL_EEvSB_T_EUlSN_E_EEvSB_SN_T0_ENKUlSN_E_clImEEDaSN_.exit.i.i.i.i.i.i.i" unwind label %.loopexit.split-lp417.loopexit.split-lp.loopexit

bb.hr:                                            ; preds = %bb.ho
  %i.agz = landingpad { ptr, i32 }
          cleanup
  %i.aha = load ptr, ptr %16, align 8, !tbaa !116
  %.not.i21.i.i.i.i.i.i.i = icmp eq ptr %i.aha, null
  br i1 %.not.i21.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i.i, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %16) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i.i: ; preds = %bb.hs, %bb.hr
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #38
  invoke void @__cxa_end_catch()
          to label %.body209 unwind label %bb.hz

bb.ht:                                            ; preds = %.loopexit.i.i.i.i.i.i.i156
  %i.ahb = landingpad { ptr, i32 }
          cleanup
  br label %bb.hy

bb.hu:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i166
  %i.ahc = load ptr, ptr %17, align 8, !tbaa !116
  %.not.i23.i.i.i.i.i.i.i169 = icmp eq ptr %i.ahc, null
  br i1 %.not.i23.i.i.i.i.i.i.i169, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24.i.i.i.i.i.i.i170, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24.i.i.i.i.i.i.i170

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24.i.i.i.i.i.i.i170: ; preds = %bb.hv, %bb.hu
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i155.invoke

bb.hw:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i166
  %i.ahd = landingpad { ptr, i32 }
          cleanup
  %i.ahe = load ptr, ptr %17, align 8, !tbaa !116
  %.not.i25.i.i.i.i.i.i.i167 = icmp eq ptr %i.ahe, null
  br i1 %.not.i25.i.i.i.i.i.i.i167, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit26.i.i.i.i.i.i.i168, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit26.i.i.i.i.i.i.i168

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit26.i.i.i.i.i.i.i168: ; preds = %bb.hx, %bb.hw
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38
  br label %bb.hy

bb.hy:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit26.i.i.i.i.i.i.i168, %bb.ht
  %.pn.i18.i.i.i.i.i.i.i157 = phi { ptr, i32 } [ %i.ahd, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit26.i.i.i.i.i.i.i168 ], [ %i.ahb, %bb.ht ]
  invoke void @__cxa_end_catch()
          to label %.body209 unwind label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i.i
  %i.ahf = landingpad { ptr, i32 }
          catch ptr null
  %i.ahg = extractvalue { ptr, i32 } %i.ahf, 0
  call void @__clang_call_terminate(ptr %i.ahg) #48
  unreachable

bb.ia:                                            ; preds = %.loopexit.i.i.i.i.i.i.i156
  unreachable

"_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_117castToJsonFromMapERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS1_9CastHooksEEE3$_2ZNS2_22applyToSelectedNoThrowISL_EEvSB_T_EUlSN_E_EEvSB_SN_T0_ENKUlSN_E_clImEEDaSN_.exit.i.i.i.i.i.i.i": ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i155.invoke, %._crit_edge.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i171
  %i.ahh = add nuw i64 %.081.i.i.i.i.i.i.i, 1     ; 2 uses
  %i.ahi = icmp ult i64 %i.ahh, %i.abc
  br i1 %i.ahi, label %bb.gt, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_117castToJsonFromMapERKNS0_10BaseVectorERS4_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS3_9CastHooksEEE3$_2ZNS4_22applyToSelectedNoThrowISN_EEvSD_T_EUlSP_E_EEvSD_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i.i.i", !llvm.loop !2367

bb.ib:                                            ; preds = %"_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_117castToJsonFromMapERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS1_9CastHooksEEE3$_2ZNS2_22applyToSelectedNoThrowISL_EEvSB_T_EUlSN_E_EEvSB_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i174
  %.01580.i.i.i.i.i.i.i = phi i64 [ %i.aay, %.lr.ph.i.i.i.i.i.i.i174 ], [ %i.anp, %"_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_117castToJsonFromMapERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS1_9CastHooksEEE3$_2ZNS2_22applyToSelectedNoThrowISL_EEvSB_T_EUlSN_E_EEvSB_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i.i.i.i.i.i.i" ] ; 3 uses
  %i.ahj = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01580.i.i.i.i.i.i.i, i1 true)
  %i.ahk = trunc nuw nsw i64 %i.ahj to i32
  %i.ahl = or disjoint i32 %i.aaz, %i.ahk         ; 4 uses
  %i.ahm = load ptr, ptr %24, align 8, !tbaa !2357, !nonnull !111, !align !171
  %i.ahn = load ptr, ptr %i.ahm, align 8, !tbaa !2327 ; 2 uses
  %i.aho = load ptr, ptr %i.ahn, align 8, !tbaa !19
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.aho, i64 32
  %i.ahq = load ptr, ptr %i.ahp, align 8
  %i.ahr = invoke noundef zeroext i1 %i.ahq(ptr noundef nonnull align 8 dereferenceable(94) %i.ahn, i32 noundef %i.ahl)
          to label %.noexc40.i.i.i.i.i.i.i unwind label %.loopexit.split-lp61.i.i.i.i.i.i.i, !inline_history !2359

.noexc40.i.i.i.i.i.i.i:                           ; preds = %bb.ib
  br i1 %i.ahr, label %"_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_117castToJsonFromMapERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS1_9CastHooksEEE3$_2ZNS2_22applyToSelectedNoThrowISL_EEvSB_T_EUlSN_E_EEvSB_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i.i.i.i.i.i.i", label %bb.ic

bb.ic:                                            ; preds = %.noexc40.i.i.i.i.i.i.i
  %i.ahs = load ptr, ptr %24, align 8, !tbaa !2357, !nonnull !111, !align !171
  %i.aht = load ptr, ptr %i.ahs, align 8, !tbaa !2327 ; 2 uses
  %i.ahu = sext i32 %i.ahl to i64                 ; 2 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.aht, i64 120
  %i.ahw = load ptr, ptr %i.ahv, align 8, !tbaa !617
  %i.ahx = getelementptr inbounds [4 x i8], ptr %i.ahw, i64 %i.ahu
  %i.ahy = load i32, ptr %i.ahx, align 4, !tbaa !3 ; 3 uses
  %i.ahz = icmp sgt i32 %i.ahy, 0                 ; 2 uses
  br i1 %i.ahz, label %.lr.ph.i32.i.i.i.i.i.i.i, label %.._crit_edge_crit_edge.i27.i.i.i.i.i.i.i

.._crit_edge_crit_edge.i27.i.i.i.i.i.i.i:         ; preds = %bb.ic
  %.pre.i29.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4383.0..sroa_idx, align 8, !tbaa !2360 ; 2 uses
  %.pre16.i30.i.i.i.i.i.i.i = load i64, ptr %.pre.i29.i.i.i.i.i.i.i, align 8, !tbaa !163
  br label %._crit_edge.i31.i.i.i.i.i.i.i

.lr.ph.i32.i.i.i.i.i.i.i:                         ; preds = %bb.ic
  %i.aia = getelementptr inbounds nuw i8, ptr %i.aht, i64 104
  %i.aib = load ptr, ptr %i.aia, align 8, !tbaa !633
  %i.aic = getelementptr inbounds [4 x i8], ptr %i.aib, i64 %i.ahu
  %i.aid = load i32, ptr %i.aic, align 4, !tbaa !3 ; 2 uses
  %i.aie = add nsw i32 %i.aid, %i.ahy
  %i.aif = sext i32 %i.aid to i64
  %i.aig = sext i32 %i.aie to i64
  br label %bb.id

._crit_edge.i31.i.i.i.i.i.i.i:                    ; preds = %.noexc42.i.i.i.i.i.i.i, %.._crit_edge_crit_edge.i27.i.i.i.i.i.i.i
  %i.aih = phi i64 [ %.pre16.i30.i.i.i.i.i.i.i, %.._crit_edge_crit_edge.i27.i.i.i.i.i.i.i ], [ %i.amh, %.noexc42.i.i.i.i.i.i.i ]
  %i.aii = phi ptr [ %.pre.i29.i.i.i.i.i.i.i, %.._crit_edge_crit_edge.i27.i.i.i.i.i.i.i ], [ %i.amf, %.noexc42.i.i.i.i.i.i.i ]
  %i.aij = shl nuw nsw i32 %i.ahy, 1
  %i.aik = or disjoint i32 %i.aij, 1
  %i.ail = select i1 %i.ahz, i32 %i.aik, i32 2
  %i.aim = zext nneg i32 %i.ail to i64
  %i.ain = add i64 %i.aih, %i.aim
  store i64 %i.ain, ptr %i.aii, align 8, !tbaa !163
  br label %"_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_117castToJsonFromMapERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS1_9CastHooksEEE3$_2ZNS2_22applyToSelectedNoThrowISL_EEvSB_T_EUlSN_E_EEvSB_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i.i.i.i.i.i.i"

bb.id:                                            ; preds = %.noexc42.i.i.i.i.i.i.i, %.lr.ph.i32.i.i.i.i.i.i.i
  %indvars.iv.i33.i.i.i.i.i.i.i = phi i64 [ %i.aif, %.lr.ph.i32.i.i.i.i.i.i.i ], [ %indvars.iv.next.i39.i.i.i.i.i.i.i, %.noexc42.i.i.i.i.i.i.i ] ; 8 uses
  %i.aio = load ptr, ptr %.sroa.5384.0..sroa_idx, align 8, !tbaa !2361, !nonnull !111, !align !171 ; 2 uses
  %i.aip = getelementptr i8, ptr %i.aio, i64 8
  %.val.i34.i.i.i.i.i.i.i = load ptr, ptr %i.aip, align 8, !tbaa !641 ; 4 uses
  %i.aiq = getelementptr i8, ptr %i.aio, i64 32
  %.val13.i35.i.i.i.i.i.i.i = load ptr, ptr %i.aiq, align 8, !tbaa !656 ; 2 uses
  %i.air = getelementptr inbounds nuw i8, ptr %.val.i34.i.i.i.i.i.i.i, i64 58
  %i.ais = load i8, ptr %i.air, align 2, !tbaa !653, !range !110, !noundef !111
  %i.ait = trunc nuw i8 %i.ais to i1
  %i.aiu = trunc nsw i64 %indvars.iv.i33.i.i.i.i.i.i.i to i32 ; 3 uses
  br i1 %i.ait, label %_ZNK8facebook5velox12_GLOBAL__N_16AsJson2atEi.exit.i36.i.i.i.i.i.i.i, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.aiv = getelementptr inbounds nuw i8, ptr %.val.i34.i.i.i.i.i.i.i, i64 59
  %i.aiw = load i8, ptr %i.aiv, align 1, !tbaa !654, !range !110, !noundef !111
  %i.aix = trunc nuw i8 %i.aiw to i1
  br i1 %i.aix, label %bb.if, label %bb.ig

bb.if:                                            ; preds = %bb.ie
  %i.aiy = getelementptr inbounds nuw i8, ptr %.val.i34.i.i.i.i.i.i.i, i64 64
  %i.aiz = load i32, ptr %i.aiy, align 8, !tbaa !671
  br label %_ZNK8facebook5velox12_GLOBAL__N_16AsJson2atEi.exit.i36.i.i.i.i.i.i.i

bb.ig:                                            ; preds = %bb.ie
  %i.aja = getelementptr inbounds nuw i8, ptr %.val.i34.i.i.i.i.i.i.i, i64 8
  %i.ajb = load ptr, ptr %i.aja, align 8, !tbaa !655
  %i.ajc = getelementptr inbounds [4 x i8], ptr %i.ajb, i64 %indvars.iv.i33.i.i.i.i.i.i.i
  %i.ajd = load i32, ptr %i.ajc, align 4, !tbaa !3
  br label %_ZNK8facebook5velox12_GLOBAL__N_16AsJson2atEi.exit.i36.i.i.i.i.i.i.i

_ZNK8facebook5velox12_GLOBAL__N_16AsJson2atEi.exit.i36.i.i.i.i.i.i.i: ; preds = %bb.ig, %bb.if, %bb.id
  %.0.i.i.i37.i.i.i.i.i.i.i = phi i32 [ %i.ajd, %bb.ig ], [ %i.aiz, %bb.if ], [ %i.aiu, %bb.id ]
  %i.aje = load ptr, ptr %.val13.i35.i.i.i.i.i.i.i, align 8, !tbaa !19
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.aje, i64 384
  %i.ajg = load ptr, ptr %i.ajf, align 8
  %i.ajh = invoke noundef nonnull align 8 dereferenceable(16) ptr %i.ajg(ptr noundef nonnull align 8 dereferenceable(208) %.val13.i35.i.i.i.i.i.i.i, i32 noundef %.0.i.i.i37.i.i.i.i.i.i.i)
          to label %.noexc41.i.i.i.i.i.i.i unwind label %.loopexit60.i.i.i.i.i.i.i, !inline_history !2359

.noexc41.i.i.i.i.i.i.i:                           ; preds = %_ZNK8facebook5velox12_GLOBAL__N_16AsJson2atEi.exit.i36.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i.i38.i.i.i.i.i.i.i = load i64, ptr %i.ajh, align 8
  %i.aji = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !2362, !nonnull !111, !align !171 ; 5 uses
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aji, i64 8
  %i.ajk = load ptr, ptr %i.ajj, align 8, !tbaa !641 ; 13 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajk, i64 24
  %i.ajm = load ptr, ptr %i.ajl, align 8, !tbaa !643 ; 4 uses
  %.not.i.i37.i.i.i.i.i.i = icmp eq ptr %i.ajm, null
  br i1 %.not.i.i37.i.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i.i.i, label %bb.ih

bb.ih:                                            ; preds = %.noexc41.i.i.i.i.i.i.i
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajk, i64 58
  %i.ajo = load i8, ptr %i.ajn, align 2, !tbaa !653, !range !110, !noundef !111
  %i.ajp = trunc nuw i8 %i.ajo to i1
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajk, i64 57
  %i.ajr = load i8, ptr %i.ajq, align 1, !range !110
  %i.ajs = trunc nuw i8 %i.ajr to i1
  %or.cond.i.i.i.i.i.i.i.i = select i1 %i.ajp, i1 true, i1 %i.ajs
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.ii, label %bb.ij

bb.ii:                                            ; preds = %bb.ih
  %i.ajt = lshr i64 %indvars.iv.i33.i.i.i.i.i.i.i, 6
  %i.aju = and i64 %i.ajt, 67108863
  %i.ajv = getelementptr inbounds nuw [8 x i8], ptr %i.ajm, i64 %i.aju
  %i.ajw = load i64, ptr %i.ajv, align 8, !tbaa !163
  %i.ajx = and i64 %indvars.iv.i33.i.i.i.i.i.i.i, 63
  %i.ajy = shl nuw i64 1, %i.ajx
  %i.ajz = and i64 %i.ajw, %i.ajy
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ajz, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.noexc42.i.i.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i.i.i

bb.ij:                                            ; preds = %bb.ih
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajk, i64 59
  %i.akb = load i8, ptr %i.aka, align 1, !tbaa !654, !range !110, !noundef !111
  %i.akc = trunc nuw i8 %i.akb to i1
  br i1 %i.akc, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i.i.i, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.akd = getelementptr inbounds nuw i8, ptr %i.ajk, i64 8
  %i.ake = load ptr, ptr %i.akd, align 8, !tbaa !655
  %75 = shl nsw i64 %indvars.iv.i33.i.i.i.i.i.i.i, 2
  %76 = getelementptr inbounds i8, ptr %i.ake, i64 %75
  %i.akf = load i32, ptr %76, align 4, !tbaa !3
  %i.akg = zext i32 %i.akf to i64                 ; 2 uses
  %i.akh = lshr i64 %i.akg, 6
  %i.aki = getelementptr inbounds nuw [8 x i8], ptr %i.ajm, i64 %i.akh
  %i.akj = load i64, ptr %i.aki, align 8, !tbaa !163
  %i.akk = and i64 %i.akg, 63
  %i.akl = shl nuw i64 1, %i.akk
  %i.akm = and i64 %i.akl, %i.akj
  %.not.i7.i.i.i.i.i.i.i.i = icmp eq i64 %i.akm, 0
  br i1 %.not.i7.i.i.i.i.i.i.i.i, label %.noexc42.i.i.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i.i.i: ; preds = %bb.ij
  %i.akn = load i64, ptr %i.ajm, align 8, !tbaa !163
  %i.ako = and i64 %i.akn, 1
  %.not.i6.i.i.i.i.i.i.i.i = icmp eq i64 %i.ako, 0
  br i1 %.not.i6.i.i.i.i.i.i.i.i, label %.noexc42.i.i.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i.i.i, %bb.ik, %bb.ii, %.noexc41.i.i.i.i.i.i.i
  %i.akp = getelementptr inbounds nuw i8, ptr %i.aji, i64 72
  %i.akq = load i8, ptr %i.akp, align 8, !tbaa !224, !range !110, !noundef !111
  %i.akr = trunc nuw i8 %i.akq to i1
  br i1 %i.akr, label %bb.il, label %bb.ip

bb.il:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i.i.i
  %i.aks = getelementptr inbounds nuw i8, ptr %i.aji, i64 48
  %i.akt = load i64, ptr %i.aks, align 8, !tbaa !119
  %i.aku = add i64 %i.akt, 3
  %i.akv = getelementptr inbounds nuw i8, ptr %i.aji, i64 32
  %.val6.i.i.i.i.i.i.i = load ptr, ptr %i.akv, align 8, !tbaa !656 ; 2 uses
  %i.akw = getelementptr inbounds nuw i8, ptr %i.ajk, i64 58
  %i.akx = load i8, ptr %i.akw, align 2, !tbaa !653, !range !110, !noundef !111
  %i.aky = trunc nuw i8 %i.akx to i1
  br i1 %i.aky, label %_ZNK8facebook5velox12_GLOBAL__N_16AsJson2atEi.exit.i.i.i.i.i.i.i, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.akz = getelementptr inbounds nuw i8, ptr %i.ajk, i64 59
  %i.ala = load i8, ptr %i.akz, align 1, !tbaa !654, !range !110, !noundef !111
  %i.alb = trunc nuw i8 %i.ala to i1
  br i1 %i.alb, label %bb.in, label %bb.io

bb.in:                                            ; preds = %bb.im
  %i.alc = getelementptr inbounds nuw i8, ptr %i.ajk, i64 64
  %i.ald = load i32, ptr %i.alc, align 8, !tbaa !671
  br label %_ZNK8facebook5velox12_GLOBAL__N_16AsJson2atEi.exit.i.i.i.i.i.i.i

bb.io:                                            ; preds = %bb.im
  %i.ale = getelementptr inbounds nuw i8, ptr %i.ajk, i64 8
  %i.alf = load ptr, ptr %i.ale, align 8, !tbaa !655
  %77 = shl nsw i64 %indvars.iv.i33.i.i.i.i.i.i.i, 2
  %78 = getelementptr inbounds i8, ptr %i.alf, i64 %77
  %i.alg = load i32, ptr %78, align 4, !tbaa !3
  br label %_ZNK8facebook5velox12_GLOBAL__N_16AsJson2atEi.exit.i.i.i.i.i.i.i

_ZNK8facebook5velox12_GLOBAL__N_16AsJson2atEi.exit.i.i.i.i.i.i.i: ; preds = %bb.io, %bb.in, %bb.il
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.alg, %bb.io ], [ %i.ald, %bb.in ], [ %i.aiu, %bb.il ]
  %i.alh = load ptr, ptr %.val6.i.i.i.i.i.i.i, align 8, !tbaa !19
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alh, i64 384
  %i.alj = load ptr, ptr %i.ali, align 8
  %i.alk = invoke noundef nonnull align 8 dereferenceable(16) ptr %i.alj(ptr noundef nonnull align 8 dereferenceable(208) %.val6.i.i.i.i.i.i.i, i32 noundef %.0.i.i.i.i.i.i.i.i.i)
          to label %.noexc.i.i.i.i.i.i177 unwind label %.loopexit60.i.i.i.i.i.i.i, !inline_history !672

.noexc.i.i.i.i.i.i177:                            ; preds = %_ZNK8facebook5velox12_GLOBAL__N_16AsJson2atEi.exit.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.alk, align 8
  %i.all = add i64 %i.aku, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i
  br label %.noexc42.i.i.i.i.i.i.i

bb.ip:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i.i.i
  %i.alm = getelementptr inbounds nuw i8, ptr %i.aji, i64 32
  %.val4.i.i.i.i.i.i.i = load ptr, ptr %i.alm, align 8, !tbaa !656 ; 2 uses
  %i.aln = getelementptr inbounds nuw i8, ptr %i.ajk, i64 58
  %i.alo = load i8, ptr %i.aln, align 2, !tbaa !653, !range !110, !noundef !111
  %i.alp = trunc nuw i8 %i.alo to i1
  br i1 %i.alp, label %_ZNK8facebook5velox12_GLOBAL__N_16AsJson2atEi.exit13.i.i.i.i.i.i.i, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.alq = getelementptr inbounds nuw i8, ptr %i.ajk, i64 59
  %i.alr = load i8, ptr %i.alq, align 1, !tbaa !654, !range !110, !noundef !111
  %i.als = trunc nuw i8 %i.alr to i1
  br i1 %i.als, label %bb.ir, label %bb.is

bb.ir:                                            ; preds = %bb.iq
  %i.alt = getelementptr inbounds nuw i8, ptr %i.ajk, i64 64
  %i.alu = load i32, ptr %i.alt, align 8, !tbaa !671
  br label %_ZNK8facebook5velox12_GLOBAL__N_16AsJson2atEi.exit13.i.i.i.i.i.i.i

bb.is:                                            ; preds = %bb.iq
  %i.alv = getelementptr inbounds nuw i8, ptr %i.ajk, i64 8
  %i.alw = load ptr, ptr %i.alv, align 8, !tbaa !655
  %79 = shl nsw i64 %indvars.iv.i33.i.i.i.i.i.i.i, 2
  %80 = getelementptr inbounds i8, ptr %i.alw, i64 %79
  %i.alx = load i32, ptr %80, align 4, !tbaa !3
  br label %_ZNK8facebook5velox12_GLOBAL__N_16AsJson2atEi.exit13.i.i.i.i.i.i.i

_ZNK8facebook5velox12_GLOBAL__N_16AsJson2atEi.exit13.i.i.i.i.i.i.i: ; preds = %bb.is, %bb.ir, %bb.ip
  %.0.i.i7.i.i.i.i.i.i.i = phi i32 [ %i.alx, %bb.is ], [ %i.alu, %bb.ir ], [ %i.aiu, %bb.ip ]
  %i.aly = load ptr, ptr %.val4.i.i.i.i.i.i.i, align 8, !tbaa !19
  %i.alz = getelementptr inbounds nuw i8, ptr %i.aly, i64 384
  %i.ama = load ptr, ptr %i.alz, align 8
  %i.amb = invoke noundef nonnull align 8 dereferenceable(16) ptr %i.ama(ptr noundef nonnull align 8 dereferenceable(208) %.val4.i.i.i.i.i.i.i, i32 noundef %.0.i.i7.i.i.i.i.i.i.i)
          to label %.noexc38.i.i.i.i.i.i unwind label %.loopexit60.i.i.i.i.i.i.i, !inline_history !672

.noexc38.i.i.i.i.i.i:                             ; preds = %_ZNK8facebook5velox12_GLOBAL__N_16AsJson2atEi.exit13.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i8.i.i.i.i.i.i.i = load i64, ptr %i.amb, align 8
  br label %.noexc42.i.i.i.i.i.i.i

.noexc42.i.i.i.i.i.i.i:                           ; preds = %.noexc38.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i177, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i.i.i, %bb.ik, %bb.ii
  %.0.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.copyload.i8.i.i.i.i.i.i.i, %.noexc38.i.i.i.i.i.i ], [ %i.all, %.noexc.i.i.i.i.i.i177 ], [ 4, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i.i.i ], [ 4, %bb.ii ], [ 4, %bb.ik ]
  %i.amc = and i64 %.sroa.0.0.copyload.i.i38.i.i.i.i.i.i.i, 4294967295
  %sext65.i.i.i.i.i.i = shl i64 %.0.i.i.i.i.i.i.i, 32
  %i.amd = ashr exact i64 %sext65.i.i.i.i.i.i, 32
  %i.ame = add nsw i64 %i.amd, %i.amc
  %i.amf = load ptr, ptr %.sroa.4383.0..sroa_idx, align 8, !tbaa !2360, !nonnull !111, !align !171 ; 3 uses
  %i.amg = load i64, ptr %i.amf, align 8, !tbaa !163
  %i.amh = add i64 %i.ame, %i.amg                 ; 2 uses
  store i64 %i.amh, ptr %i.amf, align 8, !tbaa !163
  %indvars.iv.next.i39.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.i33.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ami = icmp slt i64 %indvars.iv.next.i39.i.i.i.i.i.i.i, %i.aig
  br i1 %i.ami, label %bb.id, label %._crit_edge.i31.i.i.i.i.i.i.i, !llvm.loop !2363

.loopexit60.i.i.i.i.i.i.i:                        ; preds = %_ZNK8facebook5velox12_GLOBAL__N_16AsJson2atEi.exit13.i.i.i.i.i.i.i, %_ZNK8facebook5velox12_GLOBAL__N_16AsJson2atEi.exit.i.i.i.i.i.i.i, %_ZNK8facebook5velox12_GLOBAL__N_16AsJson2atEi.exit.i36.i.i.i.i.i.i.i
  %lpad.loopexit62.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.it

.loopexit.split-lp61.i.i.i.i.i.i.i:               ; preds = %bb.ib
  %lpad.loopexit.split-lp63.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  br label %bb.it

bb.it:                                            ; preds = %.loopexit.split-lp61.i.i.i.i.i.i.i, %.loopexit60.i.i.i.i.i.i.i
  %lpad.phi64.i.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit62.i.i.i.i.i.i.i, %.loopexit60.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp63.i.i.i.i.i.i.i, %.loopexit.split-lp61.i.i.i.i.i.i.i ] ; 3 uses
  %i.amj = extractvalue { ptr, i32 } %lpad.phi64.i.i.i.i.i.i.i, 0 ; 2 uses
  %i.amk = extractvalue { ptr, i32 } %lpad.phi64.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.aml = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #38
  %i.amm = icmp eq i32 %i.amk, %i.aml
  br i1 %i.amm, label %bb.iu, label %bb.iv

bb.iu:                                            ; preds = %bb.it
  %i.amn = call ptr @__cxa_begin_catch(ptr %i.amj) #38
  %i.amo = getelementptr inbounds nuw i8, ptr %i.amn, i64 8
  %i.amp = load ptr, ptr %i.amo, align 8, !tbaa !178 ; 2 uses
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amp, i64 144
  %i.amr = load ptr, ptr %i.amq, align 8, !tbaa !102 ; 4 uses
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amp, i64 152
  %i.amt = load i64, ptr %i.ams, align 8, !tbaa !119
  %i.amu = icmp eq i64 %i.amt, 4
  br i1 %i.amu, label %.lr.ph.i.i.i.preheader.i43.preheader.i.i.i.i.i.i.i, label %.loopexit59.i.i.i.i.i.i.i

.lr.ph.i.i.i.preheader.i43.preheader.i.i.i.i.i.i.i: ; preds = %bb.iu
  %i.amv = load i8, ptr %i.amr, align 1, !tbaa !37
  %or.cond.not.i.i.i45.i.i.i.i.i.i.i = icmp eq i8 %i.amv, 85
  br i1 %or.cond.not.i.i.i45.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i46.i.i.i.i.i.i.i, label %.loopexit59.i.i.i.i.i.i.i

tailrecurse.i.i.i.i46.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.preheader.i43.preheader.i.i.i.i.i.i.i
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amr, i64 1
  %i.amx = load i8, ptr %i.amw, align 1, !tbaa !37
  %or.cond.not.i.i.i45.1.i.i.i.i.i.i.i = icmp eq i8 %i.amx, 83
  br i1 %or.cond.not.i.i.i45.1.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i46.1.i.i.i.i.i.i.i, label %.loopexit59.i.i.i.i.i.i.i

tailrecurse.i.i.i.i46.1.i.i.i.i.i.i.i:            ; preds = %tailrecurse.i.i.i.i46.i.i.i.i.i.i.i
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amr, i64 2
  %i.amz = load i8, ptr %i.amy, align 1, !tbaa !37
  %or.cond.not.i.i.i45.2.i.i.i.i.i.i.i = icmp eq i8 %i.amz, 69
  br i1 %or.cond.not.i.i.i45.2.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i46.2.i.i.i.i.i.i.i, label %.loopexit59.i.i.i.i.i.i.i

tailrecurse.i.i.i.i46.2.i.i.i.i.i.i.i:            ; preds = %tailrecurse.i.i.i.i46.1.i.i.i.i.i.i.i
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amr, i64 3
  %i.anb = load i8, ptr %i.ana, align 1, !tbaa !37
  %or.cond.not.i.i.i45.3.i.i.i.i.i.i.i = icmp eq i8 %i.anb, 82
  br i1 %or.cond.not.i.i.i45.3.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i46.3.i.i.i.i.i.i.i, label %.loopexit59.i.i.i.i.i.i.i

tailrecurse.i.i.i.i46.3.i.i.i.i.i.i.i:            ; preds = %tailrecurse.i.i.i.i46.2.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %19) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %1, i32 noundef %i.ahl, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.jc unwind label %bb.je

.loopexit59.i.i.i.i.i.i.i:                        ; preds = %tailrecurse.i.i.i.i46.2.i.i.i.i.i.i.i, %tailrecurse.i.i.i.i46.1.i.i.i.i.i.i.i, %tailrecurse.i.i.i.i46.i.i.i.i.i.i.i, %.lr.ph.i.i.i.preheader.i43.preheader.i.i.i.i.i.i.i, %bb.iu
  invoke void @__cxa_rethrow() #46
          to label %bb.ji unwind label %bb.jb

bb.iv:                                            ; preds = %bb.it
  %i.anc = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #38
  %i.and = icmp eq i32 %i.amk, %i.anc
  br i1 %i.and, label %bb.iw, label %.body209

bb.iw:                                            ; preds = %bb.iv
  %i.ane = call ptr @__cxa_begin_catch(ptr %i.amj) #38 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #38
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %18) #38
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %1, i32 noundef %i.ahl, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.ix unwind label %bb.iz

bb.ix:                                            ; preds = %bb.iw
  %i.anf = load ptr, ptr %18, align 8, !tbaa !116
  %.not.i48.i.i.i.i.i.i.i = icmp eq ptr %i.anf, null
  br i1 %.not.i48.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit49.i.i.i.i.i.i.i, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %18) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit49.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit49.i.i.i.i.i.i.i: ; preds = %bb.iy, %bb.ix
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit53.i.i.i.i.i.i.i.invoke

bb.iz:                                            ; preds = %bb.iw
  %i.ang = landingpad { ptr, i32 }
          cleanup
  %i.anh = load ptr, ptr %18, align 8, !tbaa !116
  %.not.i50.i.i.i.i.i.i.i = icmp eq ptr %i.anh, null
  br i1 %.not.i50.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit51.i.i.i.i.i.i.i, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %18) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit51.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit51.i.i.i.i.i.i.i: ; preds = %bb.ja, %bb.iz
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #38
  invoke void @__cxa_end_catch()
          to label %.body209 unwind label %bb.jh

bb.jb:                                            ; preds = %.loopexit59.i.i.i.i.i.i.i
  %i.ani = landingpad { ptr, i32 }
          cleanup
  br label %bb.jg

bb.jc:                                            ; preds = %tailrecurse.i.i.i.i46.3.i.i.i.i.i.i.i
  %i.anj = load ptr, ptr %19, align 8, !tbaa !116
  %.not.i52.i.i.i.i.i.i.i = icmp eq ptr %i.anj, null
  br i1 %.not.i52.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit53.i.i.i.i.i.i.i, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %19) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit53.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit53.i.i.i.i.i.i.i: ; preds = %bb.jd, %bb.jc
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit53.i.i.i.i.i.i.i.invoke

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit53.i.i.i.i.i.i.i.invoke: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit49.i.i.i.i.i.i.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit53.i.i.i.i.i.i.i
  invoke void @__cxa_end_catch()
          to label %"_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_117castToJsonFromMapERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS1_9CastHooksEEE3$_2ZNS2_22applyToSelectedNoThrowISL_EEvSB_T_EUlSN_E_EEvSB_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i.i.i.i.i.i.i" unwind label %.loopexit.split-lp417.loopexit

bb.je:                                            ; preds = %tailrecurse.i.i.i.i46.3.i.i.i.i.i.i.i
  %i.ank = landingpad { ptr, i32 }
          cleanup
  %i.anl = load ptr, ptr %19, align 8, !tbaa !116
  %.not.i54.i.i.i.i.i.i.i = icmp eq ptr %i.anl, null
  br i1 %.not.i54.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit55.i.i.i.i.i.i.i, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %19) #38
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit55.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit55.i.i.i.i.i.i.i: ; preds = %bb.jf, %bb.je
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #38
  br label %bb.jg

bb.jg:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit55.i.i.i.i.i.i.i, %bb.jb
  %.pn.i.i.i.i.i.i.i.i176 = phi { ptr, i32 } [ %i.ank, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit55.i.i.i.i.i.i.i ], [ %i.ani, %bb.jb ]
  invoke void @__cxa_end_catch()
          to label %.body209 unwind label %bb.jh

bb.jh:                                            ; preds = %bb.jg, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit51.i.i.i.i.i.i.i
  %i.anm = landingpad { ptr, i32 }
          catch ptr null
  %i.ann = extractvalue { ptr, i32 } %i.anm, 0
  call void @__clang_call_terminate(ptr %i.ann) #48
  unreachable

bb.ji:                                            ; preds = %.loopexit59.i.i.i.i.i.i.i
  unreachable

"_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_117castToJsonFromMapERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS1_9CastHooksEEE3$_2ZNS2_22applyToSelectedNoThrowISL_EEvSB_T_EUlSN_E_EEvSB_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i.i.i.i.i.i.i": ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit53.i.i.i.i.i.i.i.invoke, %._crit_edge.i31.i.i.i.i.i.i.i, %.noexc40.i.i.i.i.i.i.i
  %i.ano = add i64 %.01580.i.i.i.i.i.i.i, -1
  %i.anp = and i64 %i.ano, %.01580.i.i.i.i.i.i.i  ; 2 uses
  %.not.i.i.i.i.i.i.i175 = icmp eq i64 %i.anp, 0
  br i1 %.not.i.i.i.i.i.i.i175, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_117castToJsonFromMapERKNS0_10BaseVectorERS4_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS3_9CastHooksEEE3$_2ZNS4_22applyToSelectedNoThrowISN_EEvSD_T_EUlSP_E_EEvSD_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i.i.i", label %bb.ib, !llvm.loop !2368

"_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_117castToJsonFromMapERKNS0_10BaseVectorERS4_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS3_9CastHooksEEE3$_2ZNS4_22applyToSelectedNoThrowISN_EEvSD_T_EUlSP_E_EEvSD_SP_T0_EUlSP_E_EEvPKmiibSP_ENKUliE_clEi.exit.i.i.i.i.i.i": ; preds = %"_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_117castToJsonFromMapERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS1_9CastHooksEEE3$_2ZNS2_22applyToSelectedNoThrowISL_EEvSB_T_EUlSN_E_EEvSB_SN_T0_ENKUlSN_E_clImEEDaSN_.exit.i.i.i.i.i.i.i", %"_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNS0_12_GLOBAL__N_117castToJsonFromMapERKNS0_10BaseVectorERS2_RKNS0_17SelectivityVectorERNS0_10FlatVectorINS0_10StringViewEEERKSt10shared_ptrINS1_9CastHooksEEE3$_2ZNS2_22applyToSelectedNoThrowISL_EEvSB_T_EUlSN_E_EEvSB_SN_T0_ENKUlSN_E_clIiEEDaSN_.exit.i.i.i.i.i.i.i", %bb.gs, %.lr.ph.i.i.i.i.i.i146
  %i.anq = add nsw i32 %i.aau, 64                 ; 2 uses
  %.not33.i.i.i.i.i.i147 = icmp sgt i32 %i.anq, %i.zy
  br i1 %.not33.i.i.i.i.i.i147, label %._crit_edge.i.i.i.i.i.i148, label %.lr.ph.i.i.i.i.i.i146, !llvm.loop !2369

bb.jj:                                            ; preds = %._crit_edge.i.i.i.i.i.i148
  %i.anr = and i32 %i.zu, 63
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE31EvE5applyES6_RNS0_4exec13GenericWriterE:bb.a
  %i.ar = icmp sgt i32 %i.an, 0
  tail call void @llvm.assume(i1 %i.ar), !noalias !10061
  %i.as = load i32, ptr %i.ao, align 4, !tbaa !3, !noalias !10061
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !37, !noalias !10061
  %i.aw = icmp eq i8 %i.av, 125
  br i1 %i.aw, label %bb.f, label %.lr.ph985

bb.f:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %i.q, i64 36
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store ptr %i.ay, ptr %i.r, align 8, !tbaa !9617, !noalias !10061
  %i.az = add nsw i32 %i.an, -1
  %or.cond.i.i.i.i = icmp ne i32 %i.an, 2147483647
  tail call void @llvm.assume(i1 %or.cond.i.i.i.i), !noalias !10061
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !9615, !noalias !10061
  br label %.lr.ph985

.lr.ph985:                                        ; preds = %bb.f, %bb.e
  %.sroa.0341.sroa.4.0.copyload = load i32, ptr %i.p, align 8, !tbaa !3, !noalias !10061 ; 17 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.q, i64 36 ; 12 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 4 uses
  %i.bc = add nuw nsw i32 %.sroa.0341.sroa.4.0.copyload, 1 ; 13 uses
  %or.cond.i.i.i = icmp ult i32 %.sroa.0341.sroa.4.0.copyload, 2147483646
  %i.bd = icmp ne i32 %.sroa.0341.sroa.4.0.copyload, 0
  %i.be = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 3 uses
  %.sroa.0264.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 9 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %.sroa.0466.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.0466.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.0466.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.0467.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0467.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.0467.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.29.8..sroa_idx515 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.sroa.36.8..sroa_idx544 = getelementptr inbounds nuw i8, ptr %13, i64 12
  %.sroa.37.8..sroa_idx568 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %.sroa.29.8..sroa_idx509 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.36.8..sroa_idx538 = getelementptr inbounds nuw i8, ptr %12, i64 12
  %.sroa.37.8..sroa_idx562 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %.sroa.29.8..sroa_idx507 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.36.8..sroa_idx536 = getelementptr inbounds nuw i8, ptr %11, i64 12
  %.sroa.37.8..sroa_idx560 = getelementptr inbounds nuw i8, ptr %11, i64 16
  %.sroa.29.8..sroa_idx505 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.36.8..sroa_idx534 = getelementptr inbounds nuw i8, ptr %10, i64 12
  %.sroa.37.8..sroa_idx558 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.sroa.29.8..sroa_idx501 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.36.8..sroa_idx530 = getelementptr inbounds nuw i8, ptr %9, i64 12
  %.sroa.37.8..sroa_idx554 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sroa.29.8..sroa_idx499 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.36.8..sroa_idx528 = getelementptr inbounds nuw i8, ptr %8, i64 12
  %.sroa.37.8..sroa_idx552 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.29.8..sroa_idx497 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.36.8..sroa_idx526 = getelementptr inbounds nuw i8, ptr %7, i64 12
  %.sroa.37.8..sroa_idx550 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.29.8..sroa_idx495 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.36.8..sroa_idx524 = getelementptr inbounds nuw i8, ptr %6, i64 12
  %.sroa.37.8..sroa_idx548 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.29.8..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.36.8..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 12
  %.sroa.37.8..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bv = add nsw i32 %.sroa.0341.sroa.4.0.copyload, -1 ; 2 uses
  %.pre1141 = load i32, ptr %i.ba, align 4, !tbaa !9615 ; 2 uses
  %i.bw = icmp sgt i32 %.sroa.0341.sroa.4.0.copyload, 0
  %.not7081479 = icmp slt i32 %.pre1141, %.sroa.0341.sroa.4.0.copyload
  br i1 %.not7081479, label %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit, label %.lr.ph1480

.lr.ph1480:                                       ; preds = %.lr.ph985, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit
  %i.bx = phi i32 [ %i.uj, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit ], [ %.pre1141, %.lr.ph985 ]
  %i.by = load i32, ptr %i.bb, align 8, !tbaa !9796, !noalias !10066 ; 2 uses
  %.not.i67 = icmp eq i32 %i.by, 0
  br i1 %.not.i67, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph1480
  store ptr null, ptr %i.be, align 8, !tbaa !9145, !noalias !10066
  store i32 0, ptr %i.ba, align 4, !tbaa !9615, !noalias !10066
  br label %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit

bb.h:                                             ; preds = %.lr.ph1480
  %i.bz = load ptr, ptr %i.r, align 8, !tbaa !9625, !noalias !10069 ; 4 uses
  %i.ca = icmp ugt ptr %i.bz, %i.u
  call void @llvm.assume(i1 %i.ca), !noalias !10069
  %i.cb = icmp eq i32 %i.bx, %.sroa.0341.sroa.4.0.copyload
  call void @llvm.assume(i1 %i.cb), !noalias !10069
  call void @llvm.assume(i1 %i.bw), !noalias !10069
  %i.cc = load ptr, ptr %i.q, align 8, !tbaa !9618, !noalias !10069 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 4 ; 3 uses
  store ptr %i.cd, ptr %i.r, align 8, !tbaa !9617, !noalias !10069
  %i.ce = load i32, ptr %i.bz, align 4, !tbaa !3, !noalias !10069
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cf ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !37, !noalias !10069
  %.not.i.i68 = icmp eq i8 %i.ch, 34
  br i1 %.not.i.i68, label %.critedge.i70, label %bb.i

.critedge.i70:                                    ; preds = %bb.h
  %i.ci = icmp ugt ptr %i.cd, %i.u
  call void @llvm.assume(i1 %i.ci), !noalias !10069
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 15 uses
  store ptr %i.cj, ptr %i.r, align 8, !tbaa !9617, !noalias !10069
  %i.ck = load i32, ptr %i.cd, align 4, !tbaa !3, !noalias !10069
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !37, !noalias !10069
  %.not.i15.i = icmp eq i8 %i.cn, 58
  br i1 %.not.i15.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.critedge.i70, %bb.h
  store i32 3, ptr %i.bb, align 8, !tbaa !9796, !noalias !10069
  store ptr null, ptr %i.be, align 8, !tbaa !9145
  store i32 0, ptr %i.ba, align 4, !tbaa !9615
  br label %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit

bb.j:                                             ; preds = %.critedge.i70
  %i.co = getelementptr inbounds nuw i8, ptr %i.cg, i64 1
  call void @llvm.assume(i1 %or.cond.i.i.i)
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !9615, !noalias !10069
  %i.cp = icmp ugt ptr %i.cj, %i.u
  call void @llvm.assume(i1 %i.cp), !noalias !10072
  call void @llvm.assume(i1 %i.bd), !noalias !10072
  %i.cq = load ptr, ptr %i.be, align 8, !tbaa !9145, !noalias !10077
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !9148, !noalias !10082 ; 2 uses
  %i.ct = load ptr, ptr %i.bf, align 8, !tbaa !241, !noalias !10082
  %i.cu = load ptr, ptr %i.cs, align 8, !tbaa !19, !noalias !10082
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8, !noalias !10082
  %i.cx = call noundef ptr %i.cw(ptr noundef nonnull align 8 dereferenceable(48) %i.cs, ptr noundef nonnull %i.co, ptr noundef %i.ct, i1 noundef zeroext true) #38, !noalias !10082, !inline_history !10085 ; 5 uses
  %.not.i.i65 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i65, label %_ZN8simdjson8fallback8ondemand6object5startERNS1_14value_iteratorE.exit, label %_ZNSt12__shared_ptrIKN8facebook5velox8JsonTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox8JsonTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.j
  %i.cy = load ptr, ptr %i.bf, align 8, !tbaa !241, !noalias !10082 ; 30 uses
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = sub i64 %i.cz, %i.da                    ; 17 uses
  store ptr %i.cx, ptr %i.bf, align 8, !tbaa !241, !noalias !10082
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #38
  store i64 %i.db, ptr %33, align 8, !tbaa !163
  store ptr %i.cy, ptr %.sroa.0264.sroa.5.0..sroa_idx, align 8, !tbaa !241
  %i.dc = load ptr, ptr %i.o, align 8, !tbaa !7
  %i.dd = icmp eq ptr %i.dc, @_ZZN8facebook5velox8JsonType3getEvE9kInstance
  br i1 %i.dd, label %.critedge, label %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit

_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit: ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox8JsonTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.de = load ptr, ptr %i.r, align 8, !tbaa !9617 ; 3 uses
  %i.df = icmp eq ptr %i.de, %i.cj                ; 2 uses
  %spec.select = select i1 %i.df, ptr %i.de, ptr %i.cj
  %.sink = load ptr, ptr %i.q, align 8, !tbaa !9618
  %.sink1339 = load i32, ptr %spec.select, align 4, !tbaa !3
  %i.dg = zext i32 %.sink1339 to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %.sink, i64 %i.dg ; 2 uses
  %.0.copyload.i.i = load i32, ptr %i.dh, align 1 ; 2 uses
  %.not.i58 = icmp eq i32 %.0.copyload.i.i, 1819047278
  br i1 %.not.i58, label %bb.k, label %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_nullEPKh.exit

bb.k:                                             ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !37
  %i.dk = zext i8 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8internal24structural_or_whitespaceE, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !146, !range !110, !noundef !111
  %.not709 = icmp eq i8 %i.dm, 0
  br i1 %.not709, label %_ZN8simdjson8fallback8ondemand14value_iterator7is_nullEv.exit, label %.critedge.i

_ZNK8simdjson8fallback8ondemand14value_iterator10parse_nullEPKh.exit: ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator20peek_non_root_scalarEPKc.exit
  %i.dn = and i32 %.0.copyload.i.i, 255
  %.not = icmp eq i32 %i.dn, 110                  ; 2 uses
  %i.do = select i1 %.not, i64 73014444032, i64 0
  br i1 %.not, label %_ZN8simdjson8fallback8ondemand14value_iterator7is_nullEv.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.k, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_nullEPKh.exit
  %.sroa.0331.0.insert.insert1188 = phi i64 [ %i.do, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_nullEPKh.exit ], [ 1, %bb.k ] ; 3 uses
  %i.dp = trunc nuw i64 %.sroa.0331.0.insert.insert1188 to i1
  %brmerge.not = and i1 %i.df, %i.dp
  br i1 %brmerge.not, label %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit.thread, label %_ZN8simdjson8fallback8ondemand14value_iterator7is_nullEv.exit

_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit.thread: ; preds = %.critedge.i
  %i.dq = load i32, ptr %i.ba, align 4, !tbaa !9615
  %i.dr = icmp eq i32 %i.dq, %i.bc
  call void @llvm.assume(i1 %i.dr)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  store ptr %i.ds, ptr %i.r, align 8, !tbaa !9617
  store i32 %.sroa.0341.sroa.4.0.copyload, ptr %i.ba, align 4, !tbaa !9615
  br label %bb.m

_ZN8simdjson8fallback8ondemand14value_iterator7is_nullEv.exit: ; preds = %bb.k, %.critedge.i, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_nullEPKh.exit
  %.sroa.0331.0.insert.insert1189 = phi i64 [ 73014444032, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_nullEPKh.exit ], [ %.sroa.0331.0.insert.insert1188, %.critedge.i ], [ 73014444032, %bb.k ]
  %.sroa.0323.0 = phi i64 [ 0, %_ZNK8simdjson8fallback8ondemand14value_iterator10parse_nullEPKh.exit ], [ %.sroa.0331.0.insert.insert1188, %.critedge.i ], [ 0, %bb.k ]
  %.sroa.5262.0.extract.shift = lshr i64 %.sroa.0331.0.insert.insert1189, 32 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.5262.0.extract.shift, 0
  br i1 %.not.i, label %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit, label %bb.l

bb.l:                                             ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator7is_nullEv.exit
  %.sroa.5262.0.extract.trunc = trunc nuw nsw i64 %.sroa.5262.0.extract.shift to i32
  %i.dt = call ptr @__cxa_allocate_exception(i64 16) #38 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8simdjson14simdjson_errorE, i64 16), ptr %i.dt, align 8, !tbaa !19
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store i32 %.sroa.5262.0.extract.trunc, ptr %i.du, align 8, !tbaa !9158
  call void @__cxa_throw(ptr nonnull %i.dt, ptr nonnull @_ZTIN8simdjson14simdjson_errorE, ptr nonnull @_ZNSt9exceptionD2Ev) #46
  unreachable

_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit: ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator7is_nullEv.exit
  %i.dv = trunc i64 %.sroa.0323.0 to i1
  br i1 %i.dv, label %bb.m, label %.critedge

bb.m:                                             ; preds = %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit.thread, %_ZNO8simdjson8internal20simdjson_result_baseIbE10take_valueEv.exit
  %i.dw = load ptr, ptr %i.h, align 8, !tbaa !7
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load i8, ptr %i.dx, align 8, !tbaa !13  ; 2 uses
  switch i8 %i.dy, label %bb.at [
    i8 0, label %bb.n
    i8 3, label %bb.r
    i8 1, label %bb.u
    i8 2, label %bb.y
    i8 4, label %bb.ab
    i8 10, label %bb.ae
    i8 5, label %bb.ai
    i8 6, label %bb.aj
    i8 7, label %bb.al
    i8 8, label %bb.ao
    i8 9, label %bb.ap
    i8 30, label %bb.aq
    i8 31, label %bb.ar
    i8 32, label %bb.as
  ]

bb.n:                                             ; preds = %bb.m
  %i.dz = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEES5_E8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %i.a) ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.db
  call void @llvm.lifetime.start.p0(ptr nonnull %31)
  store ptr %i.cy, ptr %31, align 8, !noalias !10086
  store ptr %i.ea, ptr %i.bm, align 8, !noalias !10086
  %i.eb = call i24 @_ZN5folly6detail11str_to_boolEPNS_5RangeIPKcEE(ptr noundef nonnull %31) #38, !noalias !10086 ; 2 uses
  %.sroa.01.0.extract.trunc.i.i.i.i.i = trunc i24 %i.eb to i8
  %i.ec = icmp eq i8 %.sroa.01.0.extract.trunc.i.i.i.i.i, 1
  br i1 %i.ec, label %bb.o, label %bb.q, !prof !112

bb.o:                                             ; preds = %bb.n
  %.sroa.5.0.extract.shift.i.i.i.i.i = lshr i24 %i.eb, 16
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %31, align 8, !tbaa !241, !noalias !10089 ; 2 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.bm, align 8, !tbaa !241, !noalias !10089 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %31)
  %.not14.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i.i.i.i
  br i1 %.not14.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox12_GLOBAL__N_110fromStringIbEEN8simdjson15simdjson_resultIT_EERKSt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %.01115.i.i.i.i.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ed, %.sroa.2.0.copyload.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox12_GLOBAL__N_110fromStringIbEEN8simdjson15simdjson_resultIT_EERKSt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.o, %bb.p
  %.01115.i.i.i.i.i.i.i.i = phi ptr [ %i.ed, %bb.p ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, %bb.o ] ; 2 uses
  %i.ee = load i8, ptr %.01115.i.i.i.i.i.i.i.i, align 1, !tbaa !37
  %i.ef = sext i8 %i.ee to i32
  %i.eg = call i32 @isspace(i32 noundef %i.ef) #51
  %.not12.not.i.i.not.i.i.i.i.i.i = icmp eq i32 %i.eg, 0
  br i1 %.not12.not.i.i.not.i.i.i.i.i.i, label %_ZN8simdjson8fallback8ondemand5field13unescaped_keyEb.exit.thread689, label %bb.p

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %31)
  br label %_ZN8simdjson8fallback8ondemand5field13unescaped_keyEb.exit.thread689

_ZN8facebook5velox12_GLOBAL__N_110fromStringIbEEN8simdjson15simdjson_resultIT_EERKSt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i: ; preds = %bb.p, %bb.o
  %.sroa.0.0.extract.trunc.i.i = trunc nuw i24 %.sroa.5.0.extract.shift.i.i.i.i.i to i8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !3919, !nonnull !111, !align !171
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !2609 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !9401, !nonnull !111, !align !1314
  %i.em = load i32, ptr %i.el, align 4, !tbaa !3
  %i.en = load ptr, ptr %i.ej, align 8, !tbaa !19
  %i.eo = load ptr, ptr %i.en, align 8
  call void %i.eo(ptr noundef nonnull align 8 dereferenceable(12) %i.ej, i32 noundef %i.em), !inline_history !10094
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ej, i64 12
  store i8 %.sroa.0.0.extract.trunc.i.i, ptr %i.ep, align 4, !tbaa !146
  br label %_ZZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE31EvE5applyES6_RNS0_4exec13GenericWriterEENKUlvE_clEv.exit.thread658.thread

bb.r:                                             ; preds = %bb.m
  %i.eq = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEES5_E8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %i.a) ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.db
  call void @llvm.lifetime.start.p0(ptr nonnull %30)
  store ptr %i.cy, ptr %30, align 8, !noalias !10095
  store ptr %i.er, ptr %i.bl, align 8, !noalias !10095
  %i.es = call i64 @_ZN5folly6detail15str_to_integralIiEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr noundef nonnull %30) #38, !noalias !10095 ; 2 uses
  %i.et = and i64 %i.es, 255
  %i.eu = icmp eq i64 %i.et, 1
  br i1 %i.eu, label %bb.s, label %_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.thread.i.i.i, !prof !112

bb.s:                                             ; preds = %bb.r
  %.sroa.0.0.copyload.i.i.i.i.i.i.i17.i = load ptr, ptr %30, align 8, !tbaa !241, !noalias !10098 ; 2 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i.i18.i = load ptr, ptr %i.bl, align 8, !tbaa !241, !noalias !10098 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %30)
  %.not14.i.i.i.i.i.i.i19.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i17.i, %.sroa.2.0.copyload.i.i.i.i.i.i.i18.i
  br i1 %.not14.i.i.i.i.i.i.i19.i, label %_ZN8facebook5velox12_GLOBAL__N_110fromStringIiEEN8simdjson15simdjson_resultIT_EERKSt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i20.i

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i20.i
  %i.ev = getelementptr inbounds nuw i8, ptr %.01115.i.i.i.i.i.i.i21.i, i64 1 ; 2 uses
  %.not.i.i.i.i.i.i.i23.i = icmp eq ptr %i.ev, %.sroa.2.0.copyload.i.i.i.i.i.i.i18.i
  br i1 %.not.i.i.i.i.i.i.i23.i, label %_ZN8facebook5velox12_GLOBAL__N_110fromStringIiEEN8simdjson15simdjson_resultIT_EERKSt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i20.i

.lr.ph.i.i.i.i.i.i.i20.i:                         ; preds = %bb.s, %bb.t
  %.01115.i.i.i.i.i.i.i21.i = phi ptr [ %i.ev, %bb.t ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i17.i, %bb.s ] ; 2 uses
  %i.ew = load i8, ptr %.01115.i.i.i.i.i.i.i21.i, align 1, !tbaa !37
  %i.ex = sext i8 %i.ew to i32
  %i.ey = call i32 @isspace(i32 noundef %i.ex) #51
  %.not12.not.i.i.not.i.i.i.i.i22.i = icmp eq i32 %i.ey, 0
  br i1 %.not12.not.i.i.not.i.i.i.i.i22.i, label %_ZN8simdjson8fallback8ondemand5field13unescaped_keyEb.exit.thread689, label %bb.t

_ZN5folly5tryToIiEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.thread.i.i.i: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %30)
  br label %_ZN8simdjson8fallback8ondemand5field13unescaped_keyEb.exit.thread689

_ZN8facebook5velox12_GLOBAL__N_110fromStringIiEEN8simdjson15simdjson_resultIT_EERKSt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i: ; preds = %bb.t, %bb.s
  %.sroa.63.0.extract.shift.i.i.i = lshr i64 %i.es, 32
  %.sroa.0.0.extract.trunc.i24.i = trunc nuw i64 %.sroa.63.0.extract.shift.i.i.i to i32
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !3919, !nonnull !111, !align !171
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !2609
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !4366
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !9401, !nonnull !111, !align !1314
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !3
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.fd, i64 %i.fh
  store i32 %.sroa.0.0.extract.trunc.i24.i, ptr %i.fi, align 4, !tbaa !3
  br label %_ZZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE31EvE5applyES6_RNS0_4exec13GenericWriterEENKUlvE_clEv.exit.thread658.thread

bb.u:                                             ; preds = %bb.m
  %i.fj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEES5_E8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %i.a) ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.db
  call void @llvm.lifetime.start.p0(ptr nonnull %29)
  store ptr %i.cy, ptr %29, align 8, !noalias !10103
  store ptr %i.fk, ptr %i.bk, align 8, !noalias !10103
  %i.fl = call i24 @_ZN5folly6detail15str_to_integralIaEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr noundef nonnull %29) #38, !noalias !10103 ; 2 uses
  %.sroa.01.0.extract.trunc.i.i.i.i25.i = trunc i24 %i.fl to i8
  %i.fm = icmp eq i8 %.sroa.01.0.extract.trunc.i.i.i.i25.i, 1
  br i1 %i.fm, label %bb.v, label %bb.x, !prof !112

bb.v:                                             ; preds = %bb.u
  %.sroa.5.0.extract.shift.i.i.i.i27.i = lshr i24 %i.fl, 16
  %.sroa.0.0.copyload.i.i.i.i.i.i.i28.i = load ptr, ptr %29, align 8, !tbaa !241, !noalias !10106 ; 2 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i.i29.i = load ptr, ptr %i.bk, align 8, !tbaa !241, !noalias !10106 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %29)
  %.not14.i.i.i.i.i.i.i30.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i28.i, %.sroa.2.0.copyload.i.i.i.i.i.i.i29.i
  br i1 %.not14.i.i.i.i.i.i.i30.i, label %_ZN8facebook5velox12_GLOBAL__N_110fromStringIaEEN8simdjson15simdjson_resultIT_EERKSt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i31.i

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i31.i
  %i.fn = getelementptr inbounds nuw i8, ptr %.01115.i.i.i.i.i.i.i32.i, i64 1 ; 2 uses
  %.not.i.i.i.i.i.i.i34.i = icmp eq ptr %i.fn, %.sroa.2.0.copyload.i.i.i.i.i.i.i29.i
  br i1 %.not.i.i.i.i.i.i.i34.i, label %_ZN8facebook5velox12_GLOBAL__N_110fromStringIaEEN8simdjson15simdjson_resultIT_EERKSt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i31.i

.lr.ph.i.i.i.i.i.i.i31.i:                         ; preds = %bb.v, %bb.w
  %.01115.i.i.i.i.i.i.i32.i = phi ptr [ %i.fn, %bb.w ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i28.i, %bb.v ] ; 2 uses
  %i.fo = load i8, ptr %.01115.i.i.i.i.i.i.i32.i, align 1, !tbaa !37
  %i.fp = sext i8 %i.fo to i32
  %i.fq = call i32 @isspace(i32 noundef %i.fp) #51
  %.not12.not.i.i.not.i.i.i.i.i33.i = icmp eq i32 %i.fq, 0
  br i1 %.not12.not.i.i.not.i.i.i.i.i33.i, label %_ZN8simdjson8fallback8ondemand5field13unescaped_keyEb.exit.thread689, label %bb.w

bb.x:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %29)
  br label %_ZN8simdjson8fallback8ondemand5field13unescaped_keyEb.exit.thread689

_ZN8facebook5velox12_GLOBAL__N_110fromStringIaEEN8simdjson15simdjson_resultIT_EERKSt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i: ; preds = %bb.w, %bb.v
  %.sroa.0.0.extract.trunc.i35.i = trunc nuw i24 %.sroa.5.0.extract.shift.i.i.i.i27.i to i8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !3919, !nonnull !111, !align !171
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !2609
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !4942
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !9401, !nonnull !111, !align !1314
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !3
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds i8, ptr %i.fv, i64 %i.fz
  store i8 %.sroa.0.0.extract.trunc.i35.i, ptr %i.ga, align 1, !tbaa !37
  br label %_ZZN8facebook5velox12_GLOBAL__N_121CastFromJsonTypedImplIN8simdjson8fallback8ondemand5valueEE14KindDispatcherILNS0_8TypeKindE31EvE5applyES6_RNS0_4exec13GenericWriterEENKUlvE_clEv.exit.thread658.thread

bb.y:                                             ; preds = %bb.m
  %i.gb = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN8facebook5velox4exec9MapWriterINS0_7GenericINS0_7AnyTypeELb0ELb0EEES5_E8add_nullEv(ptr noundef nonnull align 8 dereferenceable(48) %i.a) ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.db
  call void @llvm.lifetime.start.p0(ptr nonnull %28)
  store ptr %i.cy, ptr %28, align 8, !noalias !10111
  store ptr %i.gc, ptr %i.bj, align 8, !noalias !10111
  %i.gd = call i32 @_ZN5folly6detail15str_to_integralIsEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr noundef nonnull %28) #38, !noalias !10111 ; 2 uses
  %i.ge = and i32 %i.gd, 255
  %i.gf = icmp eq i32 %i.ge, 1
  br i1 %i.gf, label %bb.z, label %_ZN5folly5tryToIsEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.thread.i.i.i, !prof !112

bb.z:                                             ; preds = %bb.y
  %.sroa.0.0.copyload.i.i.i.i.i.i.i37.i = load ptr, ptr %28, align 8, !tbaa !241, !noalias !10114 ; 2 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i.i38.i = load ptr, ptr %i.bj, align 8, !tbaa !241, !noalias !10114 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  %.not14.i.i.i.i.i.i.i39.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i37.i, %.sroa.2.0.copyload.i.i.i.i.i.i.i38.i
  br i1 %.not14.i.i.i.i.i.i.i39.i, label %_ZN8facebook5velox12_GLOBAL__N_110fromStringIsEEN8simdjson15simdjson_resultIT_EERKSt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i40.i

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i40.i
  %i.gg = getelementptr inbounds nuw i8, ptr %.01115.i.i.i.i.i.i.i41.i, i64 1 ; 2 uses
  %.not.i.i.i.i.i.i.i43.i = icmp eq ptr %i.gg, %.sroa.2.0.copyload.i.i.i.i.i.i.i38.i
  br i1 %.not.i.i.i.i.i.i.i43.i, label %_ZN8facebook5velox12_GLOBAL__N_110fromStringIsEEN8simdjson15simdjson_resultIT_EERKSt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i40.i

.lr.ph.i.i.i.i.i.i.i40.i:                         ; preds = %bb.z, %bb.aa
  %.01115.i.i.i.i.i.i.i41.i = phi ptr [ %i.gg, %bb.aa ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i37.i, %bb.z ] ; 2 uses
  %i.gh = load i8, ptr %.01115.i.i.i.i.i.i.i41.i, align 1, !tbaa !37
  %i.gi = sext i8 %i.gh to i32
end_hunk_3
