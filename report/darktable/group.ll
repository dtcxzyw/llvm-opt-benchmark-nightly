Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/group?download=true
inline.NumInlined: 32
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_group_get_mask:bb.a
bb.f:                                             ; preds = %bb.e
  %i.co = tail call i32 %i.cn(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ce, ptr noundef %i.cf, ptr noundef %i.cg, ptr noundef %i.ch, ptr noundef %i.ci, ptr noundef %i.cj) #11, !inline_history !117
  %i.cp = icmp ne i32 %i.co, 0
  %i.cq = zext i1 %i.cp to i32
  br label %dt_masks_get_mask.exit

dt_masks_get_mask.exit:                           ; preds = %bb.d, %bb.e, %bb.f
  %.not471 = phi i32 [ %i.cq, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !80
  %i.ct = and i32 %i.cs, 4
  %.not468 = icmp eq i32 %i.ct, 0
  br i1 %.not468, label %bb.i, label %bb.g

bb.g:                                             ; preds = %dt_masks_get_mask.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  %i.cu = call i32 @gettimeofday(ptr noundef nonnull %11, ptr noundef null) #11 ; 0 uses
  %i.cv = load <2 x i64>, ptr %11, align 16, !tbaa !118
  %i.cw = add nsw <2 x i64> %i.cv, <i64 -1290608000, i64 0>
  %i.cx = sitofp <2 x i64> %i.cw to <2 x double>
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  %.val = load i32, ptr %i.n, align 4, !tbaa !119 ; 16 uses
  %.val474 = load i32, ptr %i.o, align 16, !tbaa !120 ; 6 uses
  %i.cy = sext i32 %.val474 to i64
  %i.cz = sext i32 %.val to i64                   ; 10 uses
  %i.da = shl nsw i64 %i.cz, 2
  %i.db = mul i64 %i.da, %i.cy
  %i.dc = tail call ptr @dt_alloc_aligned(i64 noundef %i.db) #11 ; 11 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dc, i64 64) ]
  %i.dd = load i32, ptr %i.cj, align 4, !tbaa !82 ; 4 uses
  %..i = tail call i32 @llvm.smin.i32(i32 %i.dd, i32 %.val474) ; 2 uses
  %i.de = icmp sgt i32 %..i, 0
  %i.df = icmp sgt i32 %.val, 0                   ; 2 uses
  %or.cond.i = and i1 %i.df, %i.de
  br i1 %or.cond.i, label %.preheader2.preheader.i, label %._crit_edge8.split.i

.preheader2.preheader.i:                          ; preds = %bb.g
  %wide.trip.count47.i = zext nneg i32 %..i to i64
  %wide.trip.count.i = zext nneg i32 %.val to i64 ; 6 uses
  %min.iters.check897 = icmp ult i32 %.val, 4
  %min.iters.check899 = icmp ult i32 %.val, 32
  %i.dg = and i64 %wide.trip.count.i, 28
  %n.vec901 = and i64 %wide.trip.count.i, 2147483616 ; 4 uses
  %cmp.n906 = icmp eq i64 %n.vec901, %wide.trip.count.i
  %min.epilog.iters.check911 = icmp eq i64 %i.dg, 0
  %n.vec913 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n918 = icmp eq i64 %n.vec913, %wide.trip.count.i
  br label %iter.check908

iter.check908:                                    ; preds = %._crit_edge.i, %.preheader2.preheader.i
  %indvars.iv44.i = phi i64 [ 0, %.preheader2.preheader.i ], [ %indvars.iv.next45.i, %._crit_edge.i ] ; 2 uses
  %i.dh = mul nuw nsw i64 %indvars.iv44.i, %i.cz
  %i.di = getelementptr [4 x i8], ptr %i.dc, i64 %i.dh ; 3 uses
  br i1 %min.iters.check897, label %vec.epilog.scalar.ph909.preheader, label %vector.main.loop.iter.check898

vector.main.loop.iter.check898:                   ; preds = %iter.check908
  br i1 %min.iters.check899, label %vec.epilog.ph912, label %vector.body902

vector.body902:                                   ; preds = %vector.main.loop.iter.check898, %vector.body902
  %index903 = phi i64 [ %index.next904, %vector.body902 ], [ 0, %vector.main.loop.iter.check898 ] ; 2 uses
  %i.dj = getelementptr [4 x i8], ptr %i.di, i64 %index903 ; 4 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 32
  %i.dl = getelementptr i8, ptr %i.dj, i64 64
  %i.dm = getelementptr i8, ptr %i.dj, i64 96
  store <8 x float> splat (float 1.000000e+00), ptr %i.dj, align 4, !tbaa !121
  store <8 x float> splat (float 1.000000e+00), ptr %i.dk, align 4, !tbaa !121
  store <8 x float> splat (float 1.000000e+00), ptr %i.dl, align 4, !tbaa !121
  store <8 x float> splat (float 1.000000e+00), ptr %i.dm, align 4, !tbaa !121
  %index.next904 = add nuw i64 %index903, 32      ; 2 uses
  %i.dn = icmp eq i64 %index.next904, %n.vec901
  br i1 %i.dn, label %middle.block905, label %vector.body902, !llvm.loop !122

middle.block905:                                  ; preds = %vector.body902
  br i1 %cmp.n906, label %._crit_edge.i, label %vec.epilog.iter.check910

vec.epilog.iter.check910:                         ; preds = %middle.block905
  br i1 %min.epilog.iters.check911, label %vec.epilog.scalar.ph909.preheader, label %vec.epilog.ph912, !prof !86

vec.epilog.ph912:                                 ; preds = %vector.main.loop.iter.check898, %vec.epilog.iter.check910
  %vec.epilog.resume.val907 = phi i64 [ %n.vec901, %vec.epilog.iter.check910 ], [ 0, %vector.main.loop.iter.check898 ]
  br label %vec.epilog.vector.body914

vec.epilog.vector.body914:                        ; preds = %vec.epilog.vector.body914, %vec.epilog.ph912
  %index915 = phi i64 [ %vec.epilog.resume.val907, %vec.epilog.ph912 ], [ %index.next916, %vec.epilog.vector.body914 ] ; 2 uses
  %i.do = getelementptr [4 x i8], ptr %i.di, i64 %index915
  store <4 x float> splat (float 1.000000e+00), ptr %i.do, align 4, !tbaa !121
  %index.next916 = add nuw i64 %index915, 4       ; 2 uses
  %i.dp = icmp eq i64 %index.next916, %n.vec913
  br i1 %i.dp, label %vec.epilog.middle.block917, label %vec.epilog.vector.body914, !llvm.loop !123

vec.epilog.middle.block917:                       ; preds = %vec.epilog.vector.body914
  br i1 %cmp.n918, label %._crit_edge.i, label %vec.epilog.scalar.ph909.preheader

vec.epilog.scalar.ph909.preheader:                ; preds = %iter.check908, %vec.epilog.iter.check910, %vec.epilog.middle.block917
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check908 ], [ %n.vec901, %vec.epilog.iter.check910 ], [ %n.vec913, %vec.epilog.middle.block917 ]
  br label %vec.epilog.scalar.ph909

._crit_edge8.split.i:                             ; preds = %._crit_edge.i, %bb.g
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.dd, i32 0) ; 5 uses
  %i.dq = load i32, ptr %i.ch, align 4, !tbaa !82
  %i.dr = add nsw i32 %i.dq, %i.dd                ; 2 uses
  %.108.i = tail call i32 @llvm.smin.i32(i32 %.val474, i32 %i.dr) ; 5 uses
  %i.ds = icmp slt i32 %spec.select.i, %.108.i
  br i1 %i.ds, label %.preheader1.lr.ph.i, label %._crit_edge22.i

.preheader1.lr.ph.i:                              ; preds = %._crit_edge8.split.i
  %i.dt = load i32, ptr %i.ci, align 4, !tbaa !82 ; 4 uses
  %.110.i = tail call i32 @llvm.smin.i32(i32 %i.dt, i32 %.val) ; 10 uses
  %i.du = icmp sgt i32 %.110.i, 0                 ; 2 uses
  %spec.select111.i = tail call i32 @llvm.smax.i32(i32 %i.dt, i32 0) ; 2 uses
  %i.dv = load i32, ptr %i.cg, align 4, !tbaa !82 ; 3 uses
  %i.dw = add nsw i32 %i.dv, %i.dt                ; 2 uses
  %.112.i = tail call i32 @llvm.smin.i32(i32 %.val, i32 %i.dw) ; 2 uses
  %i.dx = icmp slt i32 %spec.select111.i, %.112.i
  %i.dy = sext i32 %i.dd to i64                   ; 3 uses
  %i.dz = sext i32 %i.dv to i64                   ; 3 uses
  %i.ea = sext i32 %i.dt to i64                   ; 2 uses
  %spec.select113.i = tail call i32 @llvm.smax.i32(i32 %i.dw, i32 0) ; 4 uses
  %i.eb = icmp slt i32 %spec.select113.i, %.val   ; 3 uses
  br i1 %i.dx, label %.preheader1.lr.ph.split.us.i, label %.preheader1.lr.ph.split.i

.preheader1.lr.ph.split.us.i:                     ; preds = %.preheader1.lr.ph.i
  %i.ec = load ptr, ptr %i.cf, align 8, !tbaa !124 ; 3 uses
  %i.ed = zext nneg i32 %spec.select111.i to i64  ; 7 uses
  %i.ee = zext nneg i32 %spec.select113.i to i64  ; 6 uses
  %i.ef = zext nneg i32 %spec.select.i to i64     ; 5 uses
  %wide.trip.count102.i = zext i32 %.108.i to i64 ; 3 uses
  %wide.trip.count87.i = zext i32 %.110.i to i64  ; 6 uses
  %wide.trip.count92.i = zext nneg i32 %.112.i to i64 ; 6 uses
  %wide.trip.count97.i = zext i32 %.val to i64    ; 2 uses
  %i.eg = sub nsw i64 %wide.trip.count97.i, %i.ee ; 7 uses
  %i.eh = shl nsw i64 %i.cz, 2
  %i.ei = mul i64 %i.eh, %i.ef
  %i.ej = shl nuw nsw i64 %i.ed, 2                ; 2 uses
  %i.ek = getelementptr i8, ptr %i.dc, i64 %i.ei
  %scevgep = getelementptr i8, ptr %i.ek, i64 %i.ej
  %i.el = xor i64 %i.ef, -1
  %i.em = add nsw i64 %i.el, %wide.trip.count102.i
  %i.en = shl nsw i64 %i.em, 2
  %i.eo = mul i64 %i.en, %i.cz
  %i.ep = mul nsw i64 %i.cz, %i.ef
  %i.eq = add i64 %i.ep, %wide.trip.count92.i
  %i.er = shl i64 %i.eq, 2
  %i.es = getelementptr i8, ptr %i.dc, i64 %i.eo
  %scevgep748 = getelementptr i8, ptr %i.es, i64 %i.er
  %i.et = sub nsw i64 %i.ef, %i.dy
  %i.eu = shl nsw i64 %i.et, 2
  %i.ev = mul i64 %i.eu, %i.dz
  %i.ew = add i64 %i.ev, %i.ej
  %i.ex = shl nsw i64 %i.ea, 2                    ; 2 uses
  %i.ey = sub i64 %i.ew, %i.ex
  %scevgep749 = getelementptr i8, ptr %i.ec, i64 %i.ey
  %i.ez = shl nuw nsw i64 %wide.trip.count102.i, 2
  %i.fa = add nsw i64 %i.ez, -4
  %i.fb = shl nsw i64 %i.dy, 2
  %i.fc = sub nsw i64 %i.fa, %i.fb
  %i.fd = mul i64 %i.fc, %i.dz
  %i.fe = shl nuw nsw i64 %wide.trip.count92.i, 2
  %i.ff = add i64 %i.fd, %i.fe
  %i.fg = sub i64 %i.ff, %i.ex
  %scevgep750 = getelementptr i8, ptr %i.ec, i64 %i.fg
  %i.fh = sub nsw i64 %wide.trip.count92.i, %i.ed ; 7 uses
  %min.iters.check780 = icmp ult i32 %.110.i, 4
  %min.iters.check782 = icmp ult i32 %.110.i, 32
  %i.fi = and i64 %wide.trip.count87.i, 28
  %n.vec784 = and i64 %wide.trip.count87.i, 2147483616 ; 4 uses
  %cmp.n789 = icmp eq i64 %n.vec784, %wide.trip.count87.i
  %min.epilog.iters.check794 = icmp eq i64 %i.fi, 0
  %n.vec796 = and i64 %wide.trip.count87.i, 2147483644 ; 3 uses
  %cmp.n801 = icmp eq i64 %n.vec796, %wide.trip.count87.i
  %min.iters.check752 = icmp ult i64 %i.fh, 8
  %bound0 = icmp ult ptr %scevgep, %scevgep750
  %bound1 = icmp ult ptr %scevgep749, %scevgep748
  %found.conflict = and i1 %bound0, %bound1
  %i.fj = or i32 %i.dv, %.val
  %i.fk = icmp slt i32 %i.fj, 0
  %i.fl = or i1 %found.conflict, %i.fk
  %min.iters.check754 = icmp ult i64 %i.fh, 32
  %i.fm = and i64 %i.fh, 24
  %n.vec756 = and i64 %i.fh, -32                  ; 4 uses
  %i.fn = add nsw i64 %n.vec756, %i.ed
  %cmp.n764 = icmp eq i64 %i.fh, %n.vec756
  %min.epilog.iters.check770 = icmp eq i64 %i.fm, 0
  %n.vec772 = and i64 %i.fh, -8                   ; 3 uses
  %i.fo = add nsw i64 %n.vec772, %i.ed
  %cmp.n778 = icmp eq i64 %i.fh, %n.vec772
  %min.iters.check724 = icmp ult i64 %i.eg, 8
  %min.iters.check726 = icmp ult i64 %i.eg, 32
  %i.fp = and i64 %i.eg, 24
  %n.vec728 = and i64 %i.eg, -32                  ; 4 uses
  %i.fq = add nsw i64 %n.vec728, %i.ee
  %cmp.n733 = icmp eq i64 %i.eg, %n.vec728
  %min.epilog.iters.check739 = icmp eq i64 %i.fp, 0
  %n.vec741 = and i64 %i.eg, -8                   ; 3 uses
  %i.fr = add nsw i64 %n.vec741, %i.ee
  %cmp.n746 = icmp eq i64 %i.eg, %n.vec741
  br label %.preheader1.us.i

.preheader1.us.i:                                 ; preds = %._crit_edge20.us.i, %.preheader1.lr.ph.split.us.i
  %indvars.iv99.i = phi i64 [ %indvars.iv.next100.i, %._crit_edge20.us.i ], [ %i.ef, %.preheader1.lr.ph.split.us.i ] ; 3 uses
  %i.fs = mul nsw i64 %indvars.iv99.i, %i.cz      ; 2 uses
  br i1 %i.du, label %iter.check791, label %iter.check767

vec.epilog.scalar.ph792:                          ; preds = %vec.epilog.scalar.ph792.preheader, %vec.epilog.scalar.ph792
  %indvars.iv84.i = phi i64 [ %indvars.iv.next85.i, %vec.epilog.scalar.ph792 ], [ %indvars.iv84.i.ph, %vec.epilog.scalar.ph792.preheader ] ; 2 uses
  %i.ft = getelementptr [4 x i8], ptr %i.if, i64 %indvars.iv84.i
  store float 1.000000e+00, ptr %i.ft, align 4, !tbaa !121
  %indvars.iv.next85.i = add nuw nsw i64 %indvars.iv84.i, 1 ; 2 uses
  %exitcond88.not.i = icmp eq i64 %indvars.iv.next85.i, %wide.trip.count87.i
  br i1 %exitcond88.not.i, label %iter.check767, label %vec.epilog.scalar.ph792, !llvm.loop !125

iter.check767:                                    ; preds = %vec.epilog.scalar.ph792, %middle.block788, %vec.epilog.middle.block800, %.preheader1.us.i
  %i.fu = sub nsw i64 %indvars.iv99.i, %i.dy
  %i.fv = mul nsw i64 %i.fu, %i.dz
  %invariant.op.us.i = sub i64 %i.fv, %i.ea
  %i.fw = getelementptr [4 x i8], ptr %i.dc, i64 %i.fs ; 14 uses
  %i.fx = getelementptr [4 x i8], ptr %i.ec, i64 %invariant.op.us.i ; 11 uses
  %brmerge = select i1 %min.iters.check752, i1 true, i1 %i.fl
  br i1 %brmerge, label %vec.epilog.scalar.ph768.preheader, label %vector.main.loop.iter.check753

vector.main.loop.iter.check753:                   ; preds = %iter.check767
  br i1 %min.iters.check754, label %vec.epilog.ph771, label %vector.body757

vector.body757:                                   ; preds = %vector.main.loop.iter.check753, %vector.body757
  %index758 = phi i64 [ %index.next762, %vector.body757 ], [ 0, %vector.main.loop.iter.check753 ] ; 2 uses
  %i.fy = add nuw i64 %index758, %i.ed            ; 2 uses
  %i.fz = getelementptr [4 x i8], ptr %i.fx, i64 %i.fy ; 4 uses
  %i.ga = getelementptr i8, ptr %i.fz, i64 32
  %i.gb = getelementptr i8, ptr %i.fz, i64 64
  %i.gc = getelementptr i8, ptr %i.fz, i64 96
  %wide.load = load <8 x float>, ptr %i.fz, align 4, !tbaa !121, !alias.scope !126
  %wide.load759 = load <8 x float>, ptr %i.ga, align 4, !tbaa !121, !alias.scope !126
  %wide.load760 = load <8 x float>, ptr %i.gb, align 4, !tbaa !121, !alias.scope !126
  %wide.load761 = load <8 x float>, ptr %i.gc, align 4, !tbaa !121, !alias.scope !126
  %i.gd = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %wide.load
  %i.ge = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %wide.load759
  %i.gf = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %wide.load760
  %i.gg = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %wide.load761
  %i.gh = getelementptr [4 x i8], ptr %i.fw, i64 %i.fy ; 4 uses
  %i.gi = getelementptr i8, ptr %i.gh, i64 32
  %i.gj = getelementptr i8, ptr %i.gh, i64 64
  %i.gk = getelementptr i8, ptr %i.gh, i64 96
  store <8 x float> %i.gd, ptr %i.gh, align 4, !tbaa !121, !alias.scope !129, !noalias !126
  store <8 x float> %i.ge, ptr %i.gi, align 4, !tbaa !121, !alias.scope !129, !noalias !126
  store <8 x float> %i.gf, ptr %i.gj, align 4, !tbaa !121, !alias.scope !129, !noalias !126
  store <8 x float> %i.gg, ptr %i.gk, align 4, !tbaa !121, !alias.scope !129, !noalias !126
  %index.next762 = add nuw i64 %index758, 32      ; 2 uses
  %i.gl = icmp eq i64 %index.next762, %n.vec756
  br i1 %i.gl, label %middle.block763, label %vector.body757, !llvm.loop !131

middle.block763:                                  ; preds = %vector.body757
  br i1 %cmp.n764, label %._crit_edge15.us.i, label %vec.epilog.iter.check769

vec.epilog.iter.check769:                         ; preds = %middle.block763
  br i1 %min.epilog.iters.check770, label %vec.epilog.scalar.ph768.preheader, label %vec.epilog.ph771, !prof !132

vec.epilog.ph771:                                 ; preds = %vector.main.loop.iter.check753, %vec.epilog.iter.check769
  %vec.epilog.resume.val765 = phi i64 [ %n.vec756, %vec.epilog.iter.check769 ], [ 0, %vector.main.loop.iter.check753 ]
  br label %vec.epilog.vector.body773

vec.epilog.vector.body773:                        ; preds = %vec.epilog.vector.body773, %vec.epilog.ph771
  %index774 = phi i64 [ %vec.epilog.resume.val765, %vec.epilog.ph771 ], [ %index.next776, %vec.epilog.vector.body773 ] ; 2 uses
  %i.gm = add nuw i64 %index774, %i.ed            ; 2 uses
  %i.gn = getelementptr [4 x i8], ptr %i.fx, i64 %i.gm
  %wide.load775 = load <8 x float>, ptr %i.gn, align 4, !tbaa !121, !alias.scope !126
  %i.go = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %wide.load775
  %i.gp = getelementptr [4 x i8], ptr %i.fw, i64 %i.gm
  store <8 x float> %i.go, ptr %i.gp, align 4, !tbaa !121, !alias.scope !129, !noalias !126
  %index.next776 = add nuw i64 %index774, 8       ; 2 uses
  %i.gq = icmp eq i64 %index.next776, %n.vec772
  br i1 %i.gq, label %vec.epilog.middle.block777, label %vec.epilog.vector.body773, !llvm.loop !133

vec.epilog.middle.block777:                       ; preds = %vec.epilog.vector.body773
  br i1 %cmp.n778, label %._crit_edge15.us.i, label %vec.epilog.scalar.ph768.preheader

vec.epilog.scalar.ph768.preheader:                ; preds = %iter.check767, %vec.epilog.iter.check769, %vec.epilog.middle.block777
  %indvars.iv89.i.ph = phi i64 [ %i.ed, %iter.check767 ], [ %i.fo, %vec.epilog.middle.block777 ], [ %i.fn, %vec.epilog.iter.check769 ] ; 4 uses
  %i.gr = sub nsw i64 %wide.trip.count92.i, %indvars.iv89.i.ph
  %xtraiter = and i64 %i.gr, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph768.prol.loopexit, label %vec.epilog.scalar.ph768.prol

vec.epilog.scalar.ph768.prol:                     ; preds = %vec.epilog.scalar.ph768.preheader, %vec.epilog.scalar.ph768.prol
  %indvars.iv89.i.prol = phi i64 [ %indvars.iv.next90.i.prol, %vec.epilog.scalar.ph768.prol ], [ %indvars.iv89.i.ph, %vec.epilog.scalar.ph768.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph768.prol ], [ 0, %vec.epilog.scalar.ph768.preheader ]
  %i.gs = getelementptr [4 x i8], ptr %i.fx, i64 %indvars.iv89.i.prol
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !121
  %i.gu = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.gt
  %i.gv = getelementptr [4 x i8], ptr %i.fw, i64 %indvars.iv89.i.prol
  store float %i.gu, ptr %i.gv, align 4, !tbaa !121
  %indvars.iv.next90.i.prol = add nuw nsw i64 %indvars.iv89.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph768.prol.loopexit, label %vec.epilog.scalar.ph768.prol, !llvm.loop !134

vec.epilog.scalar.ph768.prol.loopexit:            ; preds = %vec.epilog.scalar.ph768.prol, %vec.epilog.scalar.ph768.preheader
  %indvars.iv89.i.unr = phi i64 [ %indvars.iv89.i.ph, %vec.epilog.scalar.ph768.preheader ], [ %indvars.iv.next90.i.prol, %vec.epilog.scalar.ph768.prol ]
  %i.gw = sub nsw i64 %indvars.iv89.i.ph, %wide.trip.count92.i
  %i.gx = icmp ugt i64 %i.gw, -8
  br i1 %i.gx, label %._crit_edge15.us.i, label %vec.epilog.scalar.ph768

vec.epilog.scalar.ph768:                          ; preds = %vec.epilog.scalar.ph768.prol.loopexit, %vec.epilog.scalar.ph768
  %indvars.iv89.i = phi i64 [ %indvars.iv.next90.i.7, %vec.epilog.scalar.ph768 ], [ %indvars.iv89.i.unr, %vec.epilog.scalar.ph768.prol.loopexit ] ; 10 uses
  %i.gy = getelementptr [4 x i8], ptr %i.fx, i64 %indvars.iv89.i
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !121
  %i.ha = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.gz
  %i.hb = getelementptr [4 x i8], ptr %i.fw, i64 %indvars.iv89.i
  store float %i.ha, ptr %i.hb, align 4, !tbaa !121
  %indvars.iv.next90.i = add nuw nsw i64 %indvars.iv89.i, 1 ; 2 uses
  %i.hc = getelementptr [4 x i8], ptr %i.fx, i64 %indvars.iv.next90.i
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !121
  %i.he = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.hd
  %i.hf = getelementptr [4 x i8], ptr %i.fw, i64 %indvars.iv.next90.i
  store float %i.he, ptr %i.hf, align 4, !tbaa !121
  %indvars.iv.next90.i.1 = add nuw nsw i64 %indvars.iv89.i, 2 ; 2 uses
  %i.hg = getelementptr [4 x i8], ptr %i.fx, i64 %indvars.iv.next90.i.1
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !121
  %i.hi = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.hh
  %i.hj = getelementptr [4 x i8], ptr %i.fw, i64 %indvars.iv.next90.i.1
  store float %i.hi, ptr %i.hj, align 4, !tbaa !121
  %indvars.iv.next90.i.2 = add nuw nsw i64 %indvars.iv89.i, 3 ; 2 uses
  %i.hk = getelementptr [4 x i8], ptr %i.fx, i64 %indvars.iv.next90.i.2
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !121
  %i.hm = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.hl
  %i.hn = getelementptr [4 x i8], ptr %i.fw, i64 %indvars.iv.next90.i.2
  store float %i.hm, ptr %i.hn, align 4, !tbaa !121
  %indvars.iv.next90.i.3 = add nuw nsw i64 %indvars.iv89.i, 4 ; 2 uses
  %i.ho = getelementptr [4 x i8], ptr %i.fx, i64 %indvars.iv.next90.i.3
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !121
  %i.hq = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.hp
  %i.hr = getelementptr [4 x i8], ptr %i.fw, i64 %indvars.iv.next90.i.3
  store float %i.hq, ptr %i.hr, align 4, !tbaa !121
  %indvars.iv.next90.i.4 = add nuw nsw i64 %indvars.iv89.i, 5 ; 2 uses
  %i.hs = getelementptr [4 x i8], ptr %i.fx, i64 %indvars.iv.next90.i.4
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !121
  %i.hu = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ht
  %i.hv = getelementptr [4 x i8], ptr %i.fw, i64 %indvars.iv.next90.i.4
  store float %i.hu, ptr %i.hv, align 4, !tbaa !121
  %indvars.iv.next90.i.5 = add nuw nsw i64 %indvars.iv89.i, 6 ; 2 uses
  %i.hw = getelementptr [4 x i8], ptr %i.fx, i64 %indvars.iv.next90.i.5
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !121
  %i.hy = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.hx
  %i.hz = getelementptr [4 x i8], ptr %i.fw, i64 %indvars.iv.next90.i.5
  store float %i.hy, ptr %i.hz, align 4, !tbaa !121
  %indvars.iv.next90.i.6 = add nuw nsw i64 %indvars.iv89.i, 7 ; 2 uses
  %i.ia = getelementptr [4 x i8], ptr %i.fx, i64 %indvars.iv.next90.i.6
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !121
  %i.ic = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ib
  %i.id = getelementptr [4 x i8], ptr %i.fw, i64 %indvars.iv.next90.i.6
  store float %i.ic, ptr %i.id, align 4, !tbaa !121
  %indvars.iv.next90.i.7 = add nuw nsw i64 %indvars.iv89.i, 8 ; 2 uses
  %exitcond93.not.i.7 = icmp eq i64 %indvars.iv.next90.i.7, %wide.trip.count92.i
  br i1 %exitcond93.not.i.7, label %._crit_edge15.us.i, label %vec.epilog.scalar.ph768, !llvm.loop !136

.lr.ph19.us.i:                                    ; preds = %.lr.ph19.us.i.preheader, %.lr.ph19.us.i
  %indvars.iv94.i = phi i64 [ %indvars.iv.next95.i, %.lr.ph19.us.i ], [ %indvars.iv94.i.ph, %.lr.ph19.us.i.preheader ] ; 2 uses
  %i.ie = getelementptr [4 x i8], ptr %i.fw, i64 %indvars.iv94.i
  store float 1.000000e+00, ptr %i.ie, align 4, !tbaa !121
  %indvars.iv.next95.i = add nuw nsw i64 %indvars.iv94.i, 1 ; 2 uses
  %exitcond98.not.i = icmp eq i64 %indvars.iv.next95.i, %wide.trip.count97.i
  br i1 %exitcond98.not.i, label %._crit_edge20.us.i, label %.lr.ph19.us.i, !llvm.loop !137

._crit_edge20.us.i:                               ; preds = %.lr.ph19.us.i, %middle.block732, %vec.epilog.middle.block745, %._crit_edge15.us.i
  %indvars.iv.next100.i = add nuw nsw i64 %indvars.iv99.i, 1 ; 2 uses
  %exitcond103.not.i = icmp eq i64 %indvars.iv.next100.i, %wide.trip.count102.i
  br i1 %exitcond103.not.i, label %._crit_edge22.i, label %.preheader1.us.i

iter.check791:                                    ; preds = %.preheader1.us.i
  %i.if = getelementptr [4 x i8], ptr %i.dc, i64 %i.fs ; 3 uses
  br i1 %min.iters.check780, label %vec.epilog.scalar.ph792.preheader, label %vector.main.loop.iter.check781

vector.main.loop.iter.check781:                   ; preds = %iter.check791
  br i1 %min.iters.check782, label %vec.epilog.ph795, label %vector.body785

vector.body785:                                   ; preds = %vector.main.loop.iter.check781, %vector.body785
  %index786 = phi i64 [ %index.next787, %vector.body785 ], [ 0, %vector.main.loop.iter.check781 ] ; 2 uses
  %i.ig = getelementptr [4 x i8], ptr %i.if, i64 %index786 ; 4 uses
  %i.ih = getelementptr i8, ptr %i.ig, i64 32
  %i.ii = getelementptr i8, ptr %i.ig, i64 64
  %i.ij = getelementptr i8, ptr %i.ig, i64 96
  store <8 x float> splat (float 1.000000e+00), ptr %i.ig, align 4, !tbaa !121
  store <8 x float> splat (float 1.000000e+00), ptr %i.ih, align 4, !tbaa !121
  store <8 x float> splat (float 1.000000e+00), ptr %i.ii, align 4, !tbaa !121
  store <8 x float> splat (float 1.000000e+00), ptr %i.ij, align 4, !tbaa !121
  %index.next787 = add nuw i64 %index786, 32      ; 2 uses
  %i.ik = icmp eq i64 %index.next787, %n.vec784
  br i1 %i.ik, label %middle.block788, label %vector.body785, !llvm.loop !138

middle.block788:                                  ; preds = %vector.body785
  br i1 %cmp.n789, label %iter.check767, label %vec.epilog.iter.check793

vec.epilog.iter.check793:                         ; preds = %middle.block788
  br i1 %min.epilog.iters.check794, label %vec.epilog.scalar.ph792.preheader, label %vec.epilog.ph795, !prof !86

vec.epilog.ph795:                                 ; preds = %vector.main.loop.iter.check781, %vec.epilog.iter.check793
  %vec.epilog.resume.val790 = phi i64 [ %n.vec784, %vec.epilog.iter.check793 ], [ 0, %vector.main.loop.iter.check781 ]
  br label %vec.epilog.vector.body797

vec.epilog.vector.body797:                        ; preds = %vec.epilog.vector.body797, %vec.epilog.ph795
  %index798 = phi i64 [ %vec.epilog.resume.val790, %vec.epilog.ph795 ], [ %index.next799, %vec.epilog.vector.body797 ] ; 2 uses
  %i.il = getelementptr [4 x i8], ptr %i.if, i64 %index798
  store <4 x float> splat (float 1.000000e+00), ptr %i.il, align 4, !tbaa !121
  %index.next799 = add nuw i64 %index798, 4       ; 2 uses
  %i.im = icmp eq i64 %index.next799, %n.vec796
  br i1 %i.im, label %vec.epilog.middle.block800, label %vec.epilog.vector.body797, !llvm.loop !139

vec.epilog.middle.block800:                       ; preds = %vec.epilog.vector.body797
  br i1 %cmp.n801, label %iter.check767, label %vec.epilog.scalar.ph792.preheader

vec.epilog.scalar.ph792.preheader:                ; preds = %iter.check791, %vec.epilog.iter.check793, %vec.epilog.middle.block800
  %indvars.iv84.i.ph = phi i64 [ 0, %iter.check791 ], [ %n.vec784, %vec.epilog.iter.check793 ], [ %n.vec796, %vec.epilog.middle.block800 ]
  br label %vec.epilog.scalar.ph792

._crit_edge15.us.i:                               ; preds = %vec.epilog.scalar.ph768.prol.loopexit, %vec.epilog.scalar.ph768, %vec.epilog.middle.block777, %middle.block763
  br i1 %i.eb, label %iter.check736, label %._crit_edge20.us.i

iter.check736:                                    ; preds = %._crit_edge15.us.i
  br i1 %min.iters.check724, label %.lr.ph19.us.i.preheader, label %vector.main.loop.iter.check725

vector.main.loop.iter.check725:                   ; preds = %iter.check736
  br i1 %min.iters.check726, label %vec.epilog.ph740, label %vector.ph727

vector.ph727:                                     ; preds = %vector.main.loop.iter.check725
  %invariant.gep1254 = getelementptr [4 x i8], ptr %i.fw, i64 %i.ee
  br label %vector.body729

vector.body729:                                   ; preds = %vector.body729, %vector.ph727
  %index730 = phi i64 [ 0, %vector.ph727 ], [ %index.next731, %vector.body729 ] ; 2 uses
  %gep1255 = getelementptr [4 x i8], ptr %invariant.gep1254, i64 %index730 ; 4 uses
  %i.in = getelementptr i8, ptr %gep1255, i64 32
  %i.io = getelementptr i8, ptr %gep1255, i64 64
  %i.ip = getelementptr i8, ptr %gep1255, i64 96
  store <8 x float> splat (float 1.000000e+00), ptr %gep1255, align 4, !tbaa !121
  store <8 x float> splat (float 1.000000e+00), ptr %i.in, align 4, !tbaa !121
  store <8 x float> splat (float 1.000000e+00), ptr %i.io, align 4, !tbaa !121
  store <8 x float> splat (float 1.000000e+00), ptr %i.ip, align 4, !tbaa !121
  %index.next731 = add nuw i64 %index730, 32      ; 2 uses
  %i.iq = icmp eq i64 %index.next731, %n.vec728
  br i1 %i.iq, label %middle.block732, label %vector.body729, !llvm.loop !140

middle.block732:                                  ; preds = %vector.body729
  br i1 %cmp.n733, label %._crit_edge20.us.i, label %vec.epilog.iter.check738

vec.epilog.iter.check738:                         ; preds = %middle.block732
  br i1 %min.epilog.iters.check739, label %.lr.ph19.us.i.preheader, label %vec.epilog.ph740, !prof !132

vec.epilog.ph740:                                 ; preds = %vector.main.loop.iter.check725, %vec.epilog.iter.check738
  %vec.epilog.resume.val734 = phi i64 [ %n.vec728, %vec.epilog.iter.check738 ], [ 0, %vector.main.loop.iter.check725 ]
  %invariant.gep1256 = getelementptr [4 x i8], ptr %i.fw, i64 %i.ee
  br label %vec.epilog.vector.body742

vec.epilog.vector.body742:                        ; preds = %vec.epilog.vector.body742, %vec.epilog.ph740
  %index743 = phi i64 [ %vec.epilog.resume.val734, %vec.epilog.ph740 ], [ %index.next744, %vec.epilog.vector.body742 ] ; 2 uses
  %gep1257 = getelementptr [4 x i8], ptr %invariant.gep1256, i64 %index743
  store <8 x float> splat (float 1.000000e+00), ptr %gep1257, align 4, !tbaa !121
  %index.next744 = add nuw i64 %index743, 8       ; 2 uses
  %i.ir = icmp eq i64 %index.next744, %n.vec741
  br i1 %i.ir, label %vec.epilog.middle.block745, label %vec.epilog.vector.body742, !llvm.loop !141

vec.epilog.middle.block745:                       ; preds = %vec.epilog.vector.body742
  br i1 %cmp.n746, label %._crit_edge20.us.i, label %.lr.ph19.us.i.preheader

.lr.ph19.us.i.preheader:                          ; preds = %iter.check736, %vec.epilog.iter.check738, %vec.epilog.middle.block745
  %indvars.iv94.i.ph = phi i64 [ %i.ee, %iter.check736 ], [ %i.fq, %vec.epilog.iter.check738 ], [ %i.fr, %vec.epilog.middle.block745 ]
  br label %.lr.ph19.us.i

.preheader1.lr.ph.split.i:                        ; preds = %.preheader1.lr.ph.i
  br i1 %i.du, label %.preheader1.lr.ph.split.split.us.i, label %.preheader1.lr.ph.split.split.i

.preheader1.lr.ph.split.split.us.i:               ; preds = %.preheader1.lr.ph.split.i
  br i1 %i.eb, label %.preheader1.us24.us.preheader.i, label %.preheader1.us24.preheader.i

.preheader1.us24.preheader.i:                     ; preds = %.preheader1.lr.ph.split.split.us.i
  %i.is = zext nneg i32 %spec.select.i to i64
  %wide.trip.count67.i = zext nneg i32 %.108.i to i64
  %wide.trip.count62.i = zext nneg i32 %.110.i to i64 ; 6 uses
  %min.iters.check850 = icmp ult i32 %.110.i, 4
  %min.iters.check852 = icmp ult i32 %.110.i, 32
  %i.it = and i64 %wide.trip.count62.i, 28
  %n.vec854 = and i64 %wide.trip.count62.i, 2147483616 ; 4 uses
  %cmp.n859 = icmp eq i64 %n.vec854, %wide.trip.count62.i
  %min.epilog.iters.check864 = icmp eq i64 %i.it, 0
  %n.vec866 = and i64 %wide.trip.count62.i, 2147483644 ; 3 uses
  %cmp.n871 = icmp eq i64 %n.vec866, %wide.trip.count62.i
  br label %iter.check861

.preheader1.us24.us.preheader.i:                  ; preds = %.preheader1.lr.ph.split.split.us.i
  %i.iu = zext nneg i32 %spec.select113.i to i64  ; 6 uses
  %i.iv = zext nneg i32 %spec.select.i to i64
  %wide.trip.count82.i = zext nneg i32 %.108.i to i64
  %wide.trip.count72.i = zext nneg i32 %.110.i to i64 ; 6 uses
  %wide.trip.count77.i = zext nneg i32 %.val to i64 ; 2 uses
  %i.iw = sub nsw i64 %wide.trip.count77.i, %i.iu ; 7 uses
  %min.iters.check827 = icmp ult i32 %.110.i, 4
  %min.iters.check829 = icmp ult i32 %.110.i, 32
  %i.ix = and i64 %wide.trip.count72.i, 28
  %n.vec831 = and i64 %wide.trip.count72.i, 2147483616 ; 4 uses
  %cmp.n836 = icmp eq i64 %n.vec831, %wide.trip.count72.i
  %min.epilog.iters.check841 = icmp eq i64 %i.ix, 0
  %n.vec843 = and i64 %wide.trip.count72.i, 2147483644 ; 3 uses
  %cmp.n848 = icmp eq i64 %n.vec843, %wide.trip.count72.i
  %min.iters.check803 = icmp ult i64 %i.iw, 8
  %min.iters.check805 = icmp ult i64 %i.iw, 32
  %i.iy = and i64 %i.iw, 24
  %n.vec807 = and i64 %i.iw, -32                  ; 4 uses
  %i.iz = add nsw i64 %n.vec807, %i.iu
  %cmp.n812 = icmp eq i64 %i.iw, %n.vec807
  %min.epilog.iters.check818 = icmp eq i64 %i.iy, 0
  %n.vec820 = and i64 %i.iw, -8                   ; 3 uses
  %i.ja = add nsw i64 %n.vec820, %i.iu
  %cmp.n825 = icmp eq i64 %i.iw, %n.vec820
  br label %iter.check838

iter.check838:                                    ; preds = %._crit_edge20.us31.us.i, %.preheader1.us24.us.preheader.i
  %indvars.iv79.i = phi i64 [ %i.iv, %.preheader1.us24.us.preheader.i ], [ %indvars.iv.next80.i, %._crit_edge20.us31.us.i ] ; 2 uses
  %i.jb = mul nsw i64 %indvars.iv79.i, %i.cz
  %i.jc = getelementptr [4 x i8], ptr %i.dc, i64 %i.jb ; 6 uses
  br i1 %min.iters.check827, label %vec.epilog.scalar.ph839.preheader, label %vector.main.loop.iter.check828

vector.main.loop.iter.check828:                   ; preds = %iter.check838
  br i1 %min.iters.check829, label %vec.epilog.ph842, label %vector.body832

vector.body832:                                   ; preds = %vector.main.loop.iter.check828, %vector.body832
  %index833 = phi i64 [ %index.next834, %vector.body832 ], [ 0, %vector.main.loop.iter.check828 ] ; 2 uses
  %i.jd = getelementptr [4 x i8], ptr %i.jc, i64 %index833 ; 4 uses
  %i.je = getelementptr i8, ptr %i.jd, i64 32
  %i.jf = getelementptr i8, ptr %i.jd, i64 64
  %i.jg = getelementptr i8, ptr %i.jd, i64 96
  store <8 x float> splat (float 1.000000e+00), ptr %i.jd, align 4, !tbaa !121
  store <8 x float> splat (float 1.000000e+00), ptr %i.je, align 4, !tbaa !121
  store <8 x float> splat (float 1.000000e+00), ptr %i.jf, align 4, !tbaa !121
  store <8 x float> splat (float 1.000000e+00), ptr %i.jg, align 4, !tbaa !121
  %index.next834 = add nuw i64 %index833, 32      ; 2 uses
  %i.jh = icmp eq i64 %index.next834, %n.vec831
  br i1 %i.jh, label %middle.block835, label %vector.body832, !llvm.loop !142

middle.block835:                                  ; preds = %vector.body832
  br i1 %cmp.n836, label %iter.check815, label %vec.epilog.iter.check840

vec.epilog.iter.check840:                         ; preds = %middle.block835
  br i1 %min.epilog.iters.check841, label %vec.epilog.scalar.ph839.preheader, label %vec.epilog.ph842, !prof !86

vec.epilog.ph842:                                 ; preds = %vector.main.loop.iter.check828, %vec.epilog.iter.check840
  %vec.epilog.resume.val837 = phi i64 [ %n.vec831, %vec.epilog.iter.check840 ], [ 0, %vector.main.loop.iter.check828 ]
  br label %vec.epilog.vector.body844

vec.epilog.vector.body844:                        ; preds = %vec.epilog.vector.body844, %vec.epilog.ph842
  %index845 = phi i64 [ %vec.epilog.resume.val837, %vec.epilog.ph842 ], [ %index.next846, %vec.epilog.vector.body844 ] ; 2 uses
  %i.ji = getelementptr [4 x i8], ptr %i.jc, i64 %index845
  store <4 x float> splat (float 1.000000e+00), ptr %i.ji, align 4, !tbaa !121
  %index.next846 = add nuw i64 %index845, 4       ; 2 uses
  %i.jj = icmp eq i64 %index.next846, %n.vec843
  br i1 %i.jj, label %vec.epilog.middle.block847, label %vec.epilog.vector.body844, !llvm.loop !143

vec.epilog.middle.block847:                       ; preds = %vec.epilog.vector.body844
  br i1 %cmp.n848, label %iter.check815, label %vec.epilog.scalar.ph839.preheader

vec.epilog.scalar.ph839.preheader:                ; preds = %iter.check838, %vec.epilog.iter.check840, %vec.epilog.middle.block847
  %indvars.iv69.i.ph = phi i64 [ 0, %iter.check838 ], [ %n.vec831, %vec.epilog.iter.check840 ], [ %n.vec843, %vec.epilog.middle.block847 ]
  br label %vec.epilog.scalar.ph839

vec.epilog.scalar.ph839:                          ; preds = %vec.epilog.scalar.ph839.preheader, %vec.epilog.scalar.ph839
  %indvars.iv69.i = phi i64 [ %indvars.iv.next70.i, %vec.epilog.scalar.ph839 ], [ %indvars.iv69.i.ph, %vec.epilog.scalar.ph839.preheader ] ; 2 uses
  %i.jk = getelementptr [4 x i8], ptr %i.jc, i64 %indvars.iv69.i
  store float 1.000000e+00, ptr %i.jk, align 4, !tbaa !121
  %indvars.iv.next70.i = add nuw nsw i64 %indvars.iv69.i, 1 ; 2 uses
  %exitcond73.not.i = icmp eq i64 %indvars.iv.next70.i, %wide.trip.count72.i
  br i1 %exitcond73.not.i, label %iter.check815, label %vec.epilog.scalar.ph839, !llvm.loop !144

iter.check815:                                    ; preds = %vec.epilog.scalar.ph839, %vec.epilog.middle.block847, %middle.block835
  br i1 %min.iters.check803, label %._crit_edge10.us29.us.i.preheader, label %vector.main.loop.iter.check804

vector.main.loop.iter.check804:                   ; preds = %iter.check815
  br i1 %min.iters.check805, label %vec.epilog.ph819, label %vector.ph806

vector.ph806:                                     ; preds = %vector.main.loop.iter.check804
  %invariant.gep1250 = getelementptr [4 x i8], ptr %i.jc, i64 %i.iu
  br label %vector.body808

vector.body808:                                   ; preds = %vector.body808, %vector.ph806
  %index809 = phi i64 [ 0, %vector.ph806 ], [ %index.next810, %vector.body808 ] ; 2 uses
  %gep1251 = getelementptr [4 x i8], ptr %invariant.gep1250, i64 %index809 ; 4 uses
  %i.jl = getelementptr i8, ptr %gep1251, i64 32
  %i.jm = getelementptr i8, ptr %gep1251, i64 64
  %i.jn = getelementptr i8, ptr %gep1251, i64 96
  store <8 x float> splat (float 1.000000e+00), ptr %gep1251, align 4, !tbaa !121
  store <8 x float> splat (float 1.000000e+00), ptr %i.jl, align 4, !tbaa !121
  store <8 x float> splat (float 1.000000e+00), ptr %i.jm, align 4, !tbaa !121
  store <8 x float> splat (float 1.000000e+00), ptr %i.jn, align 4, !tbaa !121
  %index.next810 = add nuw i64 %index809, 32      ; 2 uses
  %i.jo = icmp eq i64 %index.next810, %n.vec807
  br i1 %i.jo, label %middle.block811, label %vector.body808, !llvm.loop !145

middle.block811:                                  ; preds = %vector.body808
  br i1 %cmp.n812, label %._crit_edge20.us31.us.i, label %vec.epilog.iter.check817

vec.epilog.iter.check817:                         ; preds = %middle.block811
  br i1 %min.epilog.iters.check818, label %._crit_edge10.us29.us.i.preheader, label %vec.epilog.ph819, !prof !132

vec.epilog.ph819:                                 ; preds = %vector.main.loop.iter.check804, %vec.epilog.iter.check817
  %vec.epilog.resume.val813 = phi i64 [ %n.vec807, %vec.epilog.iter.check817 ], [ 0, %vector.main.loop.iter.check804 ]
  %invariant.gep1252 = getelementptr [4 x i8], ptr %i.jc, i64 %i.iu
  br label %vec.epilog.vector.body821

vec.epilog.vector.body821:                        ; preds = %vec.epilog.vector.body821, %vec.epilog.ph819
  %index822 = phi i64 [ %vec.epilog.resume.val813, %vec.epilog.ph819 ], [ %index.next823, %vec.epilog.vector.body821 ] ; 2 uses
  %gep1253 = getelementptr [4 x i8], ptr %invariant.gep1252, i64 %index822
  store <8 x float> splat (float 1.000000e+00), ptr %gep1253, align 4, !tbaa !121
  %index.next823 = add nuw i64 %index822, 8       ; 2 uses
  %i.jp = icmp eq i64 %index.next823, %n.vec820
  br i1 %i.jp, label %vec.epilog.middle.block824, label %vec.epilog.vector.body821, !llvm.loop !146

vec.epilog.middle.block824:                       ; preds = %vec.epilog.vector.body821
  br i1 %cmp.n825, label %._crit_edge20.us31.us.i, label %._crit_edge10.us29.us.i.preheader

._crit_edge10.us29.us.i.preheader:                ; preds = %iter.check815, %vec.epilog.iter.check817, %vec.epilog.middle.block824
  %indvars.iv74.i.ph = phi i64 [ %i.iu, %iter.check815 ], [ %i.iz, %vec.epilog.iter.check817 ], [ %i.ja, %vec.epilog.middle.block824 ]
  br label %._crit_edge10.us29.us.i

._crit_edge10.us29.us.i:                          ; preds = %._crit_edge10.us29.us.i.preheader, %._crit_edge10.us29.us.i
  %indvars.iv74.i = phi i64 [ %indvars.iv.next75.i, %._crit_edge10.us29.us.i ], [ %indvars.iv74.i.ph, %._crit_edge10.us29.us.i.preheader ] ; 2 uses
  %i.jq = getelementptr [4 x i8], ptr %i.jc, i64 %indvars.iv74.i
  store float 1.000000e+00, ptr %i.jq, align 4, !tbaa !121
  %indvars.iv.next75.i = add nuw nsw i64 %indvars.iv74.i, 1 ; 2 uses
  %exitcond78.not.i = icmp eq i64 %indvars.iv.next75.i, %wide.trip.count77.i
  br i1 %exitcond78.not.i, label %._crit_edge20.us31.us.i, label %._crit_edge10.us29.us.i, !llvm.loop !147

._crit_edge20.us31.us.i:                          ; preds = %._crit_edge10.us29.us.i, %vec.epilog.middle.block824, %middle.block811
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1 ; 2 uses
  %exitcond83.not.i = icmp eq i64 %indvars.iv.next80.i, %wide.trip.count82.i
  br i1 %exitcond83.not.i, label %._crit_edge22.i, label %iter.check838

iter.check861:                                    ; preds = %._crit_edge10.us29.i, %.preheader1.us24.preheader.i
  %indvars.iv64.i = phi i64 [ %i.is, %.preheader1.us24.preheader.i ], [ %indvars.iv.next65.i, %._crit_edge10.us29.i ] ; 2 uses
  %i.jr = mul nsw i64 %indvars.iv64.i, %i.cz
  %i.js = getelementptr [4 x i8], ptr %i.dc, i64 %i.jr ; 3 uses
  br i1 %min.iters.check850, label %vec.epilog.scalar.ph862.preheader, label %vector.main.loop.iter.check851

vector.main.loop.iter.check851:                   ; preds = %iter.check861
  br i1 %min.iters.check852, label %vec.epilog.ph865, label %vector.body855

vector.body855:                                   ; preds = %vector.main.loop.iter.check851, %vector.body855
  %index856 = phi i64 [ %index.next857, %vector.body855 ], [ 0, %vector.main.loop.iter.check851 ] ; 2 uses
  %i.jt = getelementptr [4 x i8], ptr %i.js, i64 %index856 ; 4 uses
  %i.ju = getelementptr i8, ptr %i.jt, i64 32
  %i.jv = getelementptr i8, ptr %i.jt, i64 64
  %i.jw = getelementptr i8, ptr %i.jt, i64 96
  store <8 x float> splat (float 1.000000e+00), ptr %i.jt, align 4, !tbaa !121
  store <8 x float> splat (float 1.000000e+00), ptr %i.ju, align 4, !tbaa !121
  store <8 x float> splat (float 1.000000e+00), ptr %i.jv, align 4, !tbaa !121
  store <8 x float> splat (float 1.000000e+00), ptr %i.jw, align 4, !tbaa !121
  %index.next857 = add nuw i64 %index856, 32      ; 2 uses
  %i.jx = icmp eq i64 %index.next857, %n.vec854
  br i1 %i.jx, label %middle.block858, label %vector.body855, !llvm.loop !148

middle.block858:                                  ; preds = %vector.body855
  br i1 %cmp.n859, label %._crit_edge10.us29.i, label %vec.epilog.iter.check863

vec.epilog.iter.check863:                         ; preds = %middle.block858
  br i1 %min.epilog.iters.check864, label %vec.epilog.scalar.ph862.preheader, label %vec.epilog.ph865, !prof !86

vec.epilog.ph865:                                 ; preds = %vector.main.loop.iter.check851, %vec.epilog.iter.check863
  %vec.epilog.resume.val860 = phi i64 [ %n.vec854, %vec.epilog.iter.check863 ], [ 0, %vector.main.loop.iter.check851 ]
  br label %vec.epilog.vector.body867

vec.epilog.vector.body867:                        ; preds = %vec.epilog.vector.body867, %vec.epilog.ph865
  %index868 = phi i64 [ %vec.epilog.resume.val860, %vec.epilog.ph865 ], [ %index.next869, %vec.epilog.vector.body867 ] ; 2 uses
  %i.jy = getelementptr [4 x i8], ptr %i.js, i64 %index868
  store <4 x float> splat (float 1.000000e+00), ptr %i.jy, align 4, !tbaa !121
  %index.next869 = add nuw i64 %index868, 4       ; 2 uses
  %i.jz = icmp eq i64 %index.next869, %n.vec866
  br i1 %i.jz, label %vec.epilog.middle.block870, label %vec.epilog.vector.body867, !llvm.loop !149

vec.epilog.middle.block870:                       ; preds = %vec.epilog.vector.body867
  br i1 %cmp.n871, label %._crit_edge10.us29.i, label %vec.epilog.scalar.ph862.preheader

vec.epilog.scalar.ph862.preheader:                ; preds = %iter.check861, %vec.epilog.iter.check863, %vec.epilog.middle.block870
  %indvars.iv59.i.ph = phi i64 [ 0, %iter.check861 ], [ %n.vec854, %vec.epilog.iter.check863 ], [ %n.vec866, %vec.epilog.middle.block870 ]
  br label %vec.epilog.scalar.ph862

vec.epilog.scalar.ph862:                          ; preds = %vec.epilog.scalar.ph862.preheader, %vec.epilog.scalar.ph862
  %indvars.iv59.i = phi i64 [ %indvars.iv.next60.i, %vec.epilog.scalar.ph862 ], [ %indvars.iv59.i.ph, %vec.epilog.scalar.ph862.preheader ] ; 2 uses
  %i.ka = getelementptr [4 x i8], ptr %i.js, i64 %indvars.iv59.i
  store float 1.000000e+00, ptr %i.ka, align 4, !tbaa !121
  %indvars.iv.next60.i = add nuw nsw i64 %indvars.iv59.i, 1 ; 2 uses
  %exitcond63.not.i = icmp eq i64 %indvars.iv.next60.i, %wide.trip.count62.i
  br i1 %exitcond63.not.i, label %._crit_edge10.us29.i, label %vec.epilog.scalar.ph862, !llvm.loop !150

._crit_edge10.us29.i:                             ; preds = %vec.epilog.scalar.ph862, %vec.epilog.middle.block870, %middle.block858
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1 ; 2 uses
  %exitcond68.not.i = icmp eq i64 %indvars.iv.next65.i, %wide.trip.count67.i
  br i1 %exitcond68.not.i, label %._crit_edge22.i, label %iter.check861

.preheader1.lr.ph.split.split.i:                  ; preds = %.preheader1.lr.ph.split.i
  br i1 %i.eb, label %.preheader1.preheader.i, label %._crit_edge22.i

.preheader1.preheader.i:                          ; preds = %.preheader1.lr.ph.split.split.i
  %i.kb = zext nneg i32 %spec.select113.i to i64  ; 6 uses
  %i.kc = zext nneg i32 %spec.select.i to i64
  %wide.trip.count57.i = zext nneg i32 %.108.i to i64
  %wide.trip.count52.i = zext nneg i32 %.val to i64 ; 2 uses
  %i.kd = sub nsw i64 %wide.trip.count52.i, %i.kb ; 7 uses
  %min.iters.check873 = icmp ult i64 %i.kd, 8
  %min.iters.check875 = icmp ult i64 %i.kd, 32
  %i.ke = and i64 %i.kd, 24
  %n.vec877 = and i64 %i.kd, -32                  ; 4 uses
  %i.kf = add nsw i64 %n.vec877, %i.kb
  %cmp.n882 = icmp eq i64 %i.kd, %n.vec877
  %min.epilog.iters.check888 = icmp eq i64 %i.ke, 0
  %n.vec890 = and i64 %i.kd, -8                   ; 3 uses
  %i.kg = add nsw i64 %n.vec890, %i.kb
  %cmp.n895 = icmp eq i64 %i.kd, %n.vec890
  br label %iter.check885

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph909, %vec.epilog.middle.block917, %middle.block905
  %indvars.iv.next45.i = add nuw nsw i64 %indvars.iv44.i, 1 ; 2 uses
  %exitcond48.not.i = icmp eq i64 %indvars.iv.next45.i, %wide.trip.count47.i
  br i1 %exitcond48.not.i, label %._crit_edge8.split.i, label %iter.check908

vec.epilog.scalar.ph909:                          ; preds = %vec.epilog.scalar.ph909.preheader, %vec.epilog.scalar.ph909
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph909 ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph909.preheader ] ; 2 uses
  %i.kh = getelementptr [4 x i8], ptr %i.di, i64 %indvars.iv.i
  store float 1.000000e+00, ptr %i.kh, align 4, !tbaa !121
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %vec.epilog.scalar.ph909, !llvm.loop !151

iter.check885:                                    ; preds = %._crit_edge20.i, %.preheader1.preheader.i
  %indvars.iv54.i = phi i64 [ %i.kc, %.preheader1.preheader.i ], [ %indvars.iv.next55.i, %._crit_edge20.i ] ; 2 uses
  %i.ki = mul nsw i64 %indvars.iv54.i, %i.cz
  %i.kj = getelementptr [4 x i8], ptr %i.dc, i64 %i.ki ; 3 uses
  br i1 %min.iters.check873, label %vec.epilog.scalar.ph886.preheader, label %vector.main.loop.iter.check874

vector.main.loop.iter.check874:                   ; preds = %iter.check885
  br i1 %min.iters.check875, label %vec.epilog.ph889, label %vector.ph876

vector.ph876:                                     ; preds = %vector.main.loop.iter.check874
  %invariant.gep1246 = getelementptr [4 x i8], ptr %i.kj, i64 %i.kb
  br label %vector.body878

vector.body878:                                   ; preds = %vector.body878, %vector.ph876
  %index879 = phi i64 [ 0, %vector.ph876 ], [ %index.next880, %vector.body878 ] ; 2 uses
  %gep1247 = getelementptr [4 x i8], ptr %invariant.gep1246, i64 %index879 ; 4 uses
  %i.kk = getelementptr i8, ptr %gep1247, i64 32
  %i.kl = getelementptr i8, ptr %gep1247, i64 64
  %i.km = getelementptr i8, ptr %gep1247, i64 96
  store <8 x float> splat (float 1.000000e+00), ptr %gep1247, align 4, !tbaa !121
  store <8 x float> splat (float 1.000000e+00), ptr %i.kk, align 4, !tbaa !121
  store <8 x float> splat (float 1.000000e+00), ptr %i.kl, align 4, !tbaa !121
  store <8 x float> splat (float 1.000000e+00), ptr %i.km, align 4, !tbaa !121
  %index.next880 = add nuw i64 %index879, 32      ; 2 uses
  %i.kn = icmp eq i64 %index.next880, %n.vec877
  br i1 %i.kn, label %middle.block881, label %vector.body878, !llvm.loop !152

middle.block881:                                  ; preds = %vector.body878
  br i1 %cmp.n882, label %._crit_edge20.i, label %vec.epilog.iter.check887

vec.epilog.iter.check887:                         ; preds = %middle.block881
  br i1 %min.epilog.iters.check888, label %vec.epilog.scalar.ph886.preheader, label %vec.epilog.ph889, !prof !132

vec.epilog.ph889:                                 ; preds = %vector.main.loop.iter.check874, %vec.epilog.iter.check887
  %vec.epilog.resume.val883 = phi i64 [ %n.vec877, %vec.epilog.iter.check887 ], [ 0, %vector.main.loop.iter.check874 ]
  %invariant.gep1248 = getelementptr [4 x i8], ptr %i.kj, i64 %i.kb
  br label %vec.epilog.vector.body891

vec.epilog.vector.body891:                        ; preds = %vec.epilog.vector.body891, %vec.epilog.ph889
  %index892 = phi i64 [ %vec.epilog.resume.val883, %vec.epilog.ph889 ], [ %index.next893, %vec.epilog.vector.body891 ] ; 2 uses
  %gep1249 = getelementptr [4 x i8], ptr %invariant.gep1248, i64 %index892
  store <8 x float> splat (float 1.000000e+00), ptr %gep1249, align 4, !tbaa !121
  %index.next893 = add nuw i64 %index892, 8       ; 2 uses
  %i.ko = icmp eq i64 %index.next893, %n.vec890
  br i1 %i.ko, label %vec.epilog.middle.block894, label %vec.epilog.vector.body891, !llvm.loop !153

vec.epilog.middle.block894:                       ; preds = %vec.epilog.vector.body891
  br i1 %cmp.n895, label %._crit_edge20.i, label %vec.epilog.scalar.ph886.preheader

vec.epilog.scalar.ph886.preheader:                ; preds = %iter.check885, %vec.epilog.iter.check887, %vec.epilog.middle.block894
  %indvars.iv49.i.ph = phi i64 [ %i.kb, %iter.check885 ], [ %i.kf, %vec.epilog.iter.check887 ], [ %i.kg, %vec.epilog.middle.block894 ]
  br label %vec.epilog.scalar.ph886

._crit_edge22.i:                                  ; preds = %._crit_edge20.i, %._crit_edge10.us29.i, %._crit_edge20.us31.us.i, %._crit_edge20.us.i, %.preheader1.lr.ph.split.split.i, %._crit_edge8.split.i
  %spec.select109.i = tail call i32 @llvm.smax.i32(i32 %i.dr, i32 0) ; 2 uses
  %i.kp = icmp slt i32 %spec.select109.i, %.val474
  %or.cond39.i = and i1 %i.df, %i.kp
  br i1 %or.cond39.i, label %.preheader.preheader.i, label %_inverse_mask.exit

.preheader.preheader.i:                           ; preds = %._crit_edge22.i
  %i.kq = zext nneg i32 %spec.select109.i to i64
  %wide.trip.count112.i = zext nneg i32 %.val474 to i64
  %wide.trip.count107.i = zext nneg i32 %.val to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %.val, 4
  %min.iters.check719 = icmp ult i32 %.val, 32
  %i.kr = and i64 %wide.trip.count107.i, 28
  %n.vec = and i64 %wide.trip.count107.i, 2147483616 ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count107.i
  %min.epilog.iters.check = icmp eq i64 %i.kr, 0
  %n.vec720 = and i64 %wide.trip.count107.i, 2147483644 ; 3 uses
  %cmp.n723 = icmp eq i64 %n.vec720, %wide.trip.count107.i
  br label %iter.check

._crit_edge20.i:                                  ; preds = %vec.epilog.scalar.ph886, %vec.epilog.middle.block894, %middle.block881
  %indvars.iv.next55.i = add nuw nsw i64 %indvars.iv54.i, 1 ; 2 uses
  %exitcond58.not.i = icmp eq i64 %indvars.iv.next55.i, %wide.trip.count57.i
  br i1 %exitcond58.not.i, label %._crit_edge22.i, label %iter.check885

vec.epilog.scalar.ph886:                          ; preds = %vec.epilog.scalar.ph886.preheader, %vec.epilog.scalar.ph886
  %indvars.iv49.i = phi i64 [ %indvars.iv.next50.i, %vec.epilog.scalar.ph886 ], [ %indvars.iv49.i.ph, %vec.epilog.scalar.ph886.preheader ] ; 2 uses
  %i.ks = getelementptr [4 x i8], ptr %i.kj, i64 %indvars.iv49.i
  store float 1.000000e+00, ptr %i.ks, align 4, !tbaa !121
  %indvars.iv.next50.i = add nuw nsw i64 %indvars.iv49.i, 1 ; 2 uses
  %exitcond53.not.i = icmp eq i64 %indvars.iv.next50.i, %wide.trip.count52.i
  br i1 %exitcond53.not.i, label %._crit_edge20.i, label %vec.epilog.scalar.ph886, !llvm.loop !154

iter.check:                                       ; preds = %._crit_edge36.i, %.preheader.preheader.i
  %indvars.iv109.i = phi i64 [ %i.kq, %.preheader.preheader.i ], [ %indvars.iv.next110.i, %._crit_edge36.i ] ; 2 uses
  %i.kt = mul nuw nsw i64 %indvars.iv109.i, %i.cz
  %i.ku = getelementptr [4 x i8], ptr %i.dc, i64 %i.kt ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check719, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.kv = getelementptr [4 x i8], ptr %i.ku, i64 %index ; 4 uses
  %i.kw = getelementptr i8, ptr %i.kv, i64 32
  %i.kx = getelementptr i8, ptr %i.kv, i64 64
  %i.ky = getelementptr i8, ptr %i.kv, i64 96
  store <8 x float> splat (float 1.000000e+00), ptr %i.kv, align 4, !tbaa !121
  store <8 x float> splat (float 1.000000e+00), ptr %i.kw, align 4, !tbaa !121
  store <8 x float> splat (float 1.000000e+00), ptr %i.kx, align 4, !tbaa !121
  store <8 x float> splat (float 1.000000e+00), ptr %i.ky, align 4, !tbaa !121
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.kz = icmp eq i64 %index.next, %n.vec
  br i1 %i.kz, label %middle.block, label %vector.body, !llvm.loop !155

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge36.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !86

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index721 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next722, %vec.epilog.vector.body ] ; 2 uses
  %i.la = getelementptr [4 x i8], ptr %i.ku, i64 %index721
  store <4 x float> splat (float 1.000000e+00), ptr %i.la, align 4, !tbaa !121
  %index.next722 = add nuw i64 %index721, 4       ; 2 uses
  %i.lb = icmp eq i64 %index.next722, %n.vec720
  br i1 %i.lb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !156

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n723, label %._crit_edge36.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv104.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec720, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge36.i:                                  ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next110.i = add nuw nsw i64 %indvars.iv109.i, 1 ; 2 uses
  %exitcond113.not.i = icmp eq i64 %indvars.iv.next110.i, %wide.trip.count112.i
  br i1 %exitcond113.not.i, label %_inverse_mask.exit, label %iter.check

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv104.i = phi i64 [ %indvars.iv.next105.i, %vec.epilog.scalar.ph ], [ %indvars.iv104.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.lc = getelementptr [4 x i8], ptr %i.ku, i64 %indvars.iv104.i
  store float 1.000000e+00, ptr %i.lc, align 4, !tbaa !121
  %indvars.iv.next105.i = add nuw nsw i64 %indvars.iv104.i, 1 ; 2 uses
  %exitcond108.not.i = icmp eq i64 %indvars.iv.next105.i, %wide.trip.count107.i
  br i1 %exitcond108.not.i, label %._crit_edge36.i, label %vec.epilog.scalar.ph, !llvm.loop !157

_inverse_mask.exit:                               ; preds = %._crit_edge36.i, %._crit_edge22.i
  %i.ld = load ptr, ptr %i.cf, align 8, !tbaa !124
  tail call void @free(ptr noundef %i.ld) #11
  store ptr %i.dc, ptr %i.cf, align 8, !tbaa !124
  store i32 0, ptr %i.cj, align 4, !tbaa !82
  store i32 0, ptr %i.ci, align 4, !tbaa !82
  store i32 %.val, ptr %i.cg, align 4, !tbaa !82
  store i32 %.val474, ptr %i.ch, align 4, !tbaa !82
  %i.le = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !70
  %i.lf = and i32 %i.le, 4112
  %or.cond472.not = icmp eq i32 %i.lf, 4112
  br i1 %or.cond472.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_inverse_mask.exit
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  %i.lh = call i32 @gettimeofday(ptr noundef nonnull %10, ptr noundef null) #11 ; 0 uses
  %i.li = load <2 x i64>, ptr %10, align 16, !tbaa !118
  %i.lj = add nsw <2 x i64> %i.li, <i64 -1290608000, i64 0>
  %i.lk = sitofp <2 x i64> %i.lj to <2 x double>
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  %i.ll = fsub reassoc nsz arcp contract afn <2 x double> %i.lk, %i.cx ; 2 uses
  %i.lm = extractelement <2 x double> %i.ll, i64 1
  %reass.mul = fmul reassoc nnan nsz arcp contract afn double %i.lm, f0x3EB0C6F7A0B5ED8D
  %i.ln = extractelement <2 x double> %i.ll, i64 0
  %i.lo = fadd reassoc nsz arcp contract afn double %i.ln, %reass.mul
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.1, ptr noundef nonnull %i.lg, double noundef %i.lo) #11
  br label %bb.i

bb.i:                                             ; preds = %_inverse_mask.exit, %bb.h, %dt_masks_get_mask.exit
  %i.lp = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  %i.lq = load float, ptr %i.lp, align 4, !tbaa !81
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv
  store float %i.lq, ptr %i.lr, align 4, !tbaa !121
  %i.ls = load i32, ptr %i.cr, align 4, !tbaa !80
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  store i32 %i.ls, ptr %i.lt, align 4, !tbaa !82
  %spec.select = add nsw i32 %.not471, %.0435507
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.c
  %.1 = phi i32 [ %.0435507, %bb.c ], [ %spec.select, %bb.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.lu = getelementptr inbounds nuw i8, ptr %.0434508, i64 8
  %.0434 = load ptr, ptr %i.lu, align 8, !tbaa !11 ; 2 uses
  %.not = icmp eq ptr %.0434, null
  br i1 %.not, label %._crit_edge, label %bb.c

.loopexit1175:                                    ; preds = %.preheader500, %vec.epilog.middle.block999, %middle.block959
  %.0433..lcssa = phi i32 [ %i.by, %vec.epilog.middle.block999 ], [ %i.bj, %middle.block959 ], [ %.0433., %.preheader500 ] ; 10 uses
  %.lcssa718 = phi i32 [ %i.bw, %vec.epilog.middle.block999 ], [ %i.bh, %middle.block959 ], [ %i.mp, %.preheader500 ] ; 10 uses
  %.lcssa717 = phi i32 [ %i.bx, %vec.epilog.middle.block999 ], [ %i.bi, %middle.block959 ], [ %i.mt, %.preheader500 ]
  %.lcssa = phi i32 [ %i.bv, %vec.epilog.middle.block999 ], [ %i.bg, %middle.block959 ], [ %i.mx, %.preheader500 ]
  store i32 %.0433..lcssa, ptr %6, align 4, !tbaa !82
  store i32 %.lcssa718, ptr %7, align 4, !tbaa !82
  %i.lv = sub nsw i32 %.lcssa717, %.0433..lcssa   ; 20 uses
end_hunk_0
begin_hunk_1_@_group_get_mask:bb.a
  %wide.load1148 = load <8 x float>, ptr %i.pc, align 4, !tbaa !121, !alias.scope !159
  %wide.load1149 = load <8 x float>, ptr %i.pd, align 4, !tbaa !121, !alias.scope !159
  %wide.load1150 = load <8 x float>, ptr %i.pe, align 4, !tbaa !121, !alias.scope !159
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %index1146 ; 4 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 32
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pf, i64 64
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pf, i64 96
  %wide.load1151 = load <8 x float>, ptr %i.pf, align 4, !tbaa !121, !alias.scope !162, !noalias !159
  %wide.load1152 = load <8 x float>, ptr %i.pg, align 4, !tbaa !121, !alias.scope !162, !noalias !159
  %wide.load1153 = load <8 x float>, ptr %i.ph, align 4, !tbaa !121, !alias.scope !162, !noalias !159
  %wide.load1154 = load <8 x float>, ptr %i.pi, align 4, !tbaa !121, !alias.scope !162, !noalias !159
  %i.pj = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat1144, %wide.load1151
  %i.pk = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat1144, %wide.load1152
  %i.pl = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat1144, %wide.load1153
  %i.pm = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat1144, %wide.load1154
  %i.pn = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.load1147, <8 x float> %i.pj)
  %i.po = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.load1148, <8 x float> %i.pk)
  %i.pp = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.load1149, <8 x float> %i.pl)
  %i.pq = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %wide.load1150, <8 x float> %i.pm)
  store <8 x float> %i.pn, ptr %i.pb, align 4, !tbaa !121, !alias.scope !159
  store <8 x float> %i.po, ptr %i.pc, align 4, !tbaa !121, !alias.scope !159
  store <8 x float> %i.pp, ptr %i.pd, align 4, !tbaa !121, !alias.scope !159
  store <8 x float> %i.pq, ptr %i.pe, align 4, !tbaa !121, !alias.scope !159
  %index.next1155 = add nuw i64 %index1146, 32    ; 2 uses
  %i.pr = icmp eq i64 %index.next1155, %n.vec1142
  br i1 %i.pr, label %middle.block1156, label %vector.body1145, !llvm.loop !164

middle.block1156:                                 ; preds = %vector.body1145
  br i1 %cmp.n1157, label %._crit_edge518, label %vec.epilog.iter.check1161

vec.epilog.iter.check1161:                        ; preds = %middle.block1156
  br i1 %min.epilog.iters.check1162, label %vec.epilog.scalar.ph1160.preheader, label %vec.epilog.ph1163, !prof !86

vec.epilog.ph1163:                                ; preds = %vector.main.loop.iter.check1139, %vec.epilog.iter.check1161
  %vec.epilog.resume.val1158 = phi i64 [ %n.vec1142, %vec.epilog.iter.check1161 ], [ 0, %vector.main.loop.iter.check1139 ]
  br label %vec.epilog.vector.body1167

vec.epilog.vector.body1167:                       ; preds = %vec.epilog.vector.body1167, %vec.epilog.ph1163
  %index1168 = phi i64 [ %vec.epilog.resume.val1158, %vec.epilog.ph1163 ], [ %index.next1171, %vec.epilog.vector.body1167 ] ; 3 uses
  %i.ps = trunc nuw nsw i64 %index1168 to i32
  %i.pt = add i32 %invariant.op519, %i.ps
  %i.pu = sext i32 %i.pt to i64
  %i.pv = getelementptr inbounds [4 x i8], ptr %i.nv, i64 %i.pu ; 2 uses
  %wide.load1169 = load <4 x float>, ptr %i.pv, align 4, !tbaa !121, !alias.scope !159
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %index1168
  %wide.load1170 = load <4 x float>, ptr %i.pw, align 4, !tbaa !121, !alias.scope !162, !noalias !159
  %i.px = fmul reassoc nsz arcp contract afn <4 x float> %broadcast.splat1166, %wide.load1170
  %i.py = tail call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %wide.load1169, <4 x float> %i.px)
  store <4 x float> %i.py, ptr %i.pv, align 4, !tbaa !121, !alias.scope !159
  %index.next1171 = add nuw i64 %index1168, 4     ; 2 uses
  %i.pz = icmp eq i64 %index.next1171, %n.vec1164
  br i1 %i.pz, label %vec.epilog.middle.block1172, label %vec.epilog.vector.body1167, !llvm.loop !165

vec.epilog.middle.block1172:                      ; preds = %vec.epilog.vector.body1167
  br i1 %cmp.n1173, label %._crit_edge518, label %vec.epilog.scalar.ph1160.preheader

vec.epilog.scalar.ph1160.preheader:               ; preds = %vector.memcheck1129, %vector.scevcheck1128, %iter.check1159, %vec.epilog.iter.check1161, %vec.epilog.middle.block1172
  %indvars.iv583.ph = phi i64 [ 0, %iter.check1159 ], [ 0, %vector.scevcheck1128 ], [ 0, %vector.memcheck1129 ], [ %n.vec1142, %vec.epilog.iter.check1161 ], [ %n.vec1164, %vec.epilog.middle.block1172 ] ; 3 uses
  br i1 %lcmp.mod1211.not, label %vec.epilog.scalar.ph1160.prol.loopexit, label %vec.epilog.scalar.ph1160.prol

vec.epilog.scalar.ph1160.prol:                    ; preds = %vec.epilog.scalar.ph1160.preheader, %vec.epilog.scalar.ph1160.prol
  %indvars.iv583.prol = phi i64 [ %indvars.iv.next584.prol, %vec.epilog.scalar.ph1160.prol ], [ %indvars.iv583.ph, %vec.epilog.scalar.ph1160.preheader ] ; 3 uses
  %prol.iter1212 = phi i64 [ %prol.iter1212.next, %vec.epilog.scalar.ph1160.prol ], [ 0, %vec.epilog.scalar.ph1160.preheader ]
  %i.qa = trunc nuw nsw i64 %indvars.iv583.prol to i32
  %.reass520.prol = add i32 %invariant.op519, %i.qa
  %i.qb = sext i32 %.reass520.prol to i64
  %i.qc = getelementptr inbounds [4 x i8], ptr %i.nv, i64 %i.qb ; 2 uses
  %i.qd = load float, ptr %i.qc, align 4, !tbaa !121
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %indvars.iv583.prol
  %i.qf = load float, ptr %i.qe, align 4, !tbaa !121
  %i.qg = fmul reassoc nsz arcp contract afn float %i.nz, %i.qf
  %i.qh = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.qd, float %i.qg)
  store float %i.qh, ptr %i.qc, align 4, !tbaa !121
  %indvars.iv.next584.prol = add nuw nsw i64 %indvars.iv583.prol, 1 ; 2 uses
  %prol.iter1212.next = add i64 %prol.iter1212, 1 ; 2 uses
  %prol.iter1212.cmp.not = icmp eq i64 %prol.iter1212.next, %xtraiter1210
  br i1 %prol.iter1212.cmp.not, label %vec.epilog.scalar.ph1160.prol.loopexit, label %vec.epilog.scalar.ph1160.prol, !llvm.loop !166

vec.epilog.scalar.ph1160.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1160.prol, %vec.epilog.scalar.ph1160.preheader
  %indvars.iv583.unr = phi i64 [ %indvars.iv583.ph, %vec.epilog.scalar.ph1160.preheader ], [ %indvars.iv.next584.prol, %vec.epilog.scalar.ph1160.prol ]
  %i.qi = sub nsw i64 %indvars.iv583.ph, %wide.trip.count586
  %i.qj = icmp ugt i64 %i.qi, -4
  br i1 %i.qj, label %._crit_edge518, label %vec.epilog.scalar.ph1160

._crit_edge518:                                   ; preds = %vec.epilog.scalar.ph1160.prol.loopexit, %vec.epilog.scalar.ph1160, %vec.epilog.middle.block1172, %middle.block1156
  %indvars.iv.next589 = add nuw nsw i64 %indvars.iv588, 1 ; 2 uses
  %exitcond592.not = icmp eq i64 %indvars.iv.next589, %wide.trip.count591
  br i1 %exitcond592.not, label %.loopexit, label %iter.check1159

vec.epilog.scalar.ph1160:                         ; preds = %vec.epilog.scalar.ph1160.prol.loopexit, %vec.epilog.scalar.ph1160
  %indvars.iv583 = phi i64 [ %indvars.iv.next584.3, %vec.epilog.scalar.ph1160 ], [ %indvars.iv583.unr, %vec.epilog.scalar.ph1160.prol.loopexit ] ; 6 uses
  %i.qk = trunc nuw nsw i64 %indvars.iv583 to i32
  %.reass520 = add i32 %invariant.op519, %i.qk
  %i.ql = sext i32 %.reass520 to i64
  %i.qm = getelementptr inbounds [4 x i8], ptr %i.nv, i64 %i.ql ; 2 uses
  %i.qn = load float, ptr %i.qm, align 4, !tbaa !121
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %indvars.iv583
  %i.qp = load float, ptr %i.qo, align 4, !tbaa !121
  %i.qq = fmul reassoc nsz arcp contract afn float %i.nz, %i.qp
  %i.qr = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.qn, float %i.qq)
  store float %i.qr, ptr %i.qm, align 4, !tbaa !121
  %indvars.iv.next584 = add nuw nsw i64 %indvars.iv583, 1 ; 2 uses
  %i.qs = trunc nuw nsw i64 %indvars.iv.next584 to i32
  %.reass520.1 = add i32 %invariant.op519, %i.qs
  %i.qt = sext i32 %.reass520.1 to i64
  %i.qu = getelementptr inbounds [4 x i8], ptr %i.nv, i64 %i.qt ; 2 uses
  %i.qv = load float, ptr %i.qu, align 4, !tbaa !121
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %indvars.iv.next584
  %i.qx = load float, ptr %i.qw, align 4, !tbaa !121
  %i.qy = fmul reassoc nsz arcp contract afn float %i.nz, %i.qx
  %i.qz = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.qv, float %i.qy)
  store float %i.qz, ptr %i.qu, align 4, !tbaa !121
  %indvars.iv.next584.1 = add nuw nsw i64 %indvars.iv583, 2 ; 2 uses
  %i.ra = trunc nuw nsw i64 %indvars.iv.next584.1 to i32
  %.reass520.2 = add i32 %invariant.op519, %i.ra
  %i.rb = sext i32 %.reass520.2 to i64
  %i.rc = getelementptr inbounds [4 x i8], ptr %i.nv, i64 %i.rb ; 2 uses
  %i.rd = load float, ptr %i.rc, align 4, !tbaa !121
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %indvars.iv.next584.1
  %i.rf = load float, ptr %i.re, align 4, !tbaa !121
  %i.rg = fmul reassoc nsz arcp contract afn float %i.nz, %i.rf
  %i.rh = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.rd, float %i.rg)
  store float %i.rh, ptr %i.rc, align 4, !tbaa !121
  %indvars.iv.next584.2 = add nuw nsw i64 %indvars.iv583, 3 ; 2 uses
  %i.ri = trunc nuw nsw i64 %indvars.iv.next584.2 to i32
  %.reass520.3 = add i32 %invariant.op519, %i.ri
  %i.rj = sext i32 %.reass520.3 to i64
  %i.rk = getelementptr inbounds [4 x i8], ptr %i.nv, i64 %i.rj ; 2 uses
  %i.rl = load float, ptr %i.rk, align 4, !tbaa !121
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %indvars.iv.next584.2
  %i.rn = load float, ptr %i.rm, align 4, !tbaa !121
  %i.ro = fmul reassoc nsz arcp contract afn float %i.nz, %i.rn
  %i.rp = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.rl, float %i.ro)
  store float %i.rp, ptr %i.rk, align 4, !tbaa !121
  %indvars.iv.next584.3 = add nuw nsw i64 %indvars.iv583, 4 ; 2 uses
  %exitcond587.not.3 = icmp eq i64 %indvars.iv.next584.3, %wide.trip.count586
  br i1 %exitcond587.not.3, label %._crit_edge518, label %vec.epilog.scalar.ph1160, !llvm.loop !167

bb.n:                                             ; preds = %dt_get_debug_wtime.exit
  %i.rq = and i32 %i.nj, 16
  %.not462 = icmp eq i32 %i.rq, 0
  br i1 %.not462, label %bb.s, label %.preheader496

.preheader496:                                    ; preds = %bb.n
  br i1 %i.md, label %.preheader489.lr.ph, label %.loopexit

.preheader489.lr.ph:                              ; preds = %.preheader496
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv650
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv650
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv650
  %i.ru = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv650
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv650
  br i1 %i.me, label %.preheader489.lr.ph.split, label %.loopexit

.preheader489.lr.ph.split:                        ; preds = %.preheader489.lr.ph
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv650
  %i.rx = load ptr, ptr %3, align 8, !tbaa !124   ; 2 uses
  %i.ry = load i32, ptr %i.rw, align 4, !tbaa !82
  %invariant.op531 = sub i32 %.lcssa718, %i.ry
  br label %.preheader489

.preheader489:                                    ; preds = %.preheader489.lr.ph.split, %._crit_edge525
  %indvars.iv605 = phi i64 [ 0, %.preheader489.lr.ph.split ], [ %indvars.iv.next606, %._crit_edge525 ] ; 3 uses
  %i.rz = trunc nuw nsw i64 %indvars.iv605 to i32 ; 2 uses
  %i.sa = mul i32 %i.lv, %i.rz
  %i.sb = zext i32 %i.sa to i64
  %i.sc = shl nuw nsw i64 %i.sb, 2
  %scevgep596 = getelementptr i8, ptr %i.rx, i64 %i.sc
  %i.sd = mul nuw nsw i64 %indvars.iv605, %i.mg
  %.reass532 = add i32 %invariant.op531, %i.rz    ; 3 uses
  %i.se = icmp sgt i32 %.reass532, -1
  br i1 %i.se, label %.lr.ph524.split.us, label %._crit_edge525.sink.split

.lr.ph524.split.us:                               ; preds = %.preheader489
  %i.sf = load i32, ptr %i.rr, align 4, !tbaa !82
  %i.sg = icmp slt i32 %.reass532, %i.sf
  br i1 %i.sg, label %.lr.ph524.split.us.split.us, label %._crit_edge525.sink.split

.lr.ph524.split.us.split.us:                      ; preds = %.lr.ph524.split.us
  %i.sh = load i32, ptr %i.rs, align 4, !tbaa !82
  %invariant.op526 = sub i32 %.0433..lcssa, %i.sh
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.rx, i64 %i.sd
  br label %bb.o

bb.o:                                             ; preds = %.thread.us.us, %.lr.ph524.split.us.split.us
  %indvars.iv600 = phi i64 [ %indvars.iv.next601, %.thread.us.us ], [ 0, %.lr.ph524.split.us.split.us ] ; 3 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv600 ; 2 uses
  %i.si = load float, ptr %gep, align 4, !tbaa !121 ; 2 uses
  %i.sj = trunc nuw nsw i64 %indvars.iv600 to i32
  %.reass527 = add i32 %invariant.op526, %i.sj    ; 3 uses
  %i.sk = icmp sgt i32 %.reass527, -1
  br i1 %i.sk, label %bb.p, label %.thread.us.us

bb.p:                                             ; preds = %bb.o
  %i.sl = load i32, ptr %i.rt, align 4, !tbaa !82 ; 2 uses
  %i.sm = icmp slt i32 %.reass527, %i.sl
  br i1 %i.sm, label %bb.q, label %.thread.us.us

bb.q:                                             ; preds = %bb.p
  %i.sn = load ptr, ptr %i.ru, align 8, !tbaa !124
  %i.so = mul nsw i32 %i.sl, %.reass532
  %i.sp = add nuw i32 %.reass527, %i.so
  %i.sq = sext i32 %i.sp to i64
  %i.sr = getelementptr inbounds [4 x i8], ptr %i.sn, i64 %i.sq
  %i.ss = load float, ptr %i.sr, align 4, !tbaa !121 ; 2 uses
  %i.st = fcmp reassoc nsz arcp contract afn ogt float %i.si, 0.000000e+00
  %i.su = fcmp reassoc nsz arcp contract afn ogt float %i.ss, 0.000000e+00
  %or.cond.us.us = select i1 %i.st, i1 %i.su, i1 false
  br i1 %or.cond.us.us, label %bb.r, label %.thread.us.us

bb.r:                                             ; preds = %bb.q
  %i.sv = load float, ptr %i.rv, align 4, !tbaa !121
  %i.sw = fmul reassoc nsz arcp contract afn float %i.sv, %i.ss
  %i.sx = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.si, float %i.sw)
  br label %.thread.us.us

.thread.us.us:                                    ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %storemerge479.us.us = phi float [ %i.sx, %bb.r ], [ 0.000000e+00, %bb.q ], [ 0.000000e+00, %bb.p ], [ 0.000000e+00, %bb.o ]
  store float %storemerge479.us.us, ptr %gep, align 4, !tbaa !121
  %indvars.iv.next601 = add nuw nsw i64 %indvars.iv600, 1 ; 2 uses
  %exitcond604.not = icmp eq i64 %indvars.iv.next601, %i.mg
  br i1 %exitcond604.not, label %._crit_edge525, label %bb.o

._crit_edge525.sink.split:                        ; preds = %.lr.ph524.split.us, %.preheader489
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep596, i8 0, i64 %i.mh, i1 false), !tbaa !121
  br label %._crit_edge525

._crit_edge525:                                   ; preds = %.thread.us.us, %._crit_edge525.sink.split
  %indvars.iv.next606 = add nuw nsw i64 %indvars.iv605, 1 ; 2 uses
  %exitcond609.not = icmp eq i64 %indvars.iv.next606, %wide.trip.count608
  br i1 %exitcond609.not, label %.loopexit, label %.preheader489

bb.s:                                             ; preds = %bb.n
  %i.sy = and i32 %i.nj, 32
  %.not463 = icmp eq i32 %i.sy, 0
  br i1 %.not463, label %bb.x, label %.preheader494

.preheader494:                                    ; preds = %bb.s
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv650
  %i.ta = load i32, ptr %i.sz, align 4, !tbaa !82 ; 2 uses
  %i.tb = icmp sgt i32 %i.ta, 0
  br i1 %i.tb, label %.preheader488.lr.ph, label %.loopexit

.preheader488.lr.ph:                              ; preds = %.preheader494
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv650
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !82 ; 5 uses
  %i.te = icmp sgt i32 %i.td, 0
  br i1 %i.te, label %.preheader488.lr.ph.split, label %.loopexit

.preheader488.lr.ph.split:                        ; preds = %.preheader488.lr.ph
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv650
  %i.tg = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv650
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv650
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv650
  %i.tj = load ptr, ptr %3, align 8, !tbaa !124   ; 7 uses
  %i.tk = load i32, ptr %i.ti, align 4, !tbaa !82 ; 2 uses
  %invariant.op541 = sub i32 %i.tk, %.lcssa718
  %i.tl = load i32, ptr %i.th, align 4, !tbaa !82 ; 2 uses
  %invariant.op536 = sub i32 %i.tl, %.0433..lcssa
  %i.tm = load ptr, ptr %i.tg, align 8, !tbaa !124 ; 3 uses
  %i.tn = load float, ptr %i.tf, align 4, !tbaa !121 ; 5 uses
  %i.to = zext nneg i32 %i.td to i64
  %wide.trip.count618 = zext nneg i32 %i.ta to i64 ; 2 uses
  %wide.trip.count613 = zext nneg i32 %i.td to i64 ; 11 uses
  %i.tp = add nsw i64 %wide.trip.count613, -1     ; 2 uses
  %i.tq = shl nuw nsw i64 %wide.trip.count618, 2
  %i.tr = mul nuw i64 %i.tq, %wide.trip.count613
  %scevgep1083 = getelementptr i8, ptr %i.tm, i64 %i.tr
  %i.ts = sub i32 %i.tl, %.0433..lcssa
  %i.tt = sub i32 %i.tk, %.lcssa718
  %i.tu = mul i32 %i.lv, %i.tt
  %i.tv = add i32 %i.ts, %i.tu
  %i.tw = shl nuw nsw i64 %wide.trip.count613, 2
  %scevgep1085 = getelementptr i8, ptr %i.tj, i64 %i.tw
  %min.iters.check1091 = icmp ult i32 %i.td, 8
  %i.tx = trunc nsw i64 %i.tp to i32
  %i.ty = icmp ugt i64 %i.tp, 4294967295
  %min.iters.check1093 = icmp ult i32 %i.td, 32
  %i.tz = and i64 %wide.trip.count613, 24
  %n.vec1095 = and i64 %wide.trip.count613, 2147483616 ; 4 uses
  %broadcast.splatinsert1096 = insertelement <8 x float> poison, float %i.tn, i64 0
  %broadcast.splat1097 = shufflevector <8 x float> %broadcast.splatinsert1096, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %cmp.n1110 = icmp eq i64 %n.vec1095, %wide.trip.count613
  %min.epilog.iters.check1115 = icmp eq i64 %i.tz, 0
  %n.vec1117 = and i64 %wide.trip.count613, 2147483640 ; 3 uses
  %broadcast.splatinsert1118 = insertelement <8 x float> poison, float %i.tn, i64 0
  %broadcast.splat1119 = shufflevector <8 x float> %broadcast.splatinsert1118, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n1126 = icmp eq i64 %n.vec1117, %wide.trip.count613
  %xtraiter1213 = and i64 %wide.trip.count613, 1
  %lcmp.mod1214.not = icmp eq i64 %xtraiter1213, 0
  %i.ua = add nsw i64 %wide.trip.count613, -1
  br label %iter.check1112

iter.check1112:                                   ; preds = %.preheader488.lr.ph.split, %._crit_edge535
  %indvars.iv615 = phi i64 [ 0, %.preheader488.lr.ph.split ], [ %indvars.iv.next616, %._crit_edge535 ] ; 4 uses
  %i.ub = trunc i64 %indvars.iv615 to i32
  %i.uc = mul i32 %i.lv, %i.ub
  %i.ud = add i32 %i.uc, %i.tv
  %i.ue = sext i32 %i.ud to i64
  %i.uf = shl nsw i64 %i.ue, 2                    ; 2 uses
  %scevgep1084 = getelementptr i8, ptr %i.tj, i64 %i.uf
  %scevgep1086 = getelementptr i8, ptr %scevgep1085, i64 %i.uf
  %i.ug = trunc nuw nsw i64 %indvars.iv615 to i32
  %.reass542 = add i32 %invariant.op541, %i.ug
  %i.uh = mul nsw i32 %.reass542, %i.lv
  %invariant.op538 = add i32 %invariant.op536, %i.uh ; 7 uses
  %i.ui = mul nuw nsw i64 %indvars.iv615, %i.to
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.tm, i64 %i.ui ; 5 uses
  br i1 %min.iters.check1091, label %vec.epilog.scalar.ph1113.preheader, label %vector.scevcheck1081

vector.scevcheck1081:                             ; preds = %iter.check1112
  %i.uk = add i32 %invariant.op538, %i.tx
  %i.ul = icmp slt i32 %i.uk, %invariant.op538
  %i.um = or i1 %i.ul, %i.ty
  br i1 %i.um, label %vec.epilog.scalar.ph1113.preheader, label %vector.memcheck1082

vector.memcheck1082:                              ; preds = %vector.scevcheck1081
  %bound01087 = icmp ult ptr %i.tm, %scevgep1086
  %bound11088 = icmp ult ptr %scevgep1084, %scevgep1083
  %found.conflict1089 = and i1 %bound01087, %bound11088
  br i1 %found.conflict1089, label %vec.epilog.scalar.ph1113.preheader, label %vector.main.loop.iter.check1092

vector.main.loop.iter.check1092:                  ; preds = %vector.memcheck1082
  br i1 %min.iters.check1093, label %vec.epilog.ph1116, label %vector.body1098

vector.body1098:                                  ; preds = %vector.main.loop.iter.check1092, %vector.body1098
  %index1099 = phi i64 [ %index.next1108, %vector.body1098 ], [ 0, %vector.main.loop.iter.check1092 ] ; 3 uses
  %i.un = trunc i64 %index1099 to i32
  %i.uo = add i32 %invariant.op538, %i.un
  %i.up = sext i32 %i.uo to i64
  %i.uq = getelementptr [4 x i8], ptr %i.tj, i64 %i.up ; 5 uses
  %i.ur = getelementptr i8, ptr %i.uq, i64 32     ; 2 uses
  %i.us = getelementptr i8, ptr %i.uq, i64 64     ; 2 uses
  %i.ut = getelementptr i8, ptr %i.uq, i64 96     ; 2 uses
  %wide.load1100 = load <8 x float>, ptr %i.uq, align 4, !tbaa !121, !alias.scope !168 ; 2 uses
  %wide.load1101 = load <8 x float>, ptr %i.ur, align 4, !tbaa !121, !alias.scope !168 ; 2 uses
  %wide.load1102 = load <8 x float>, ptr %i.us, align 4, !tbaa !121, !alias.scope !168 ; 2 uses
  %wide.load1103 = load <8 x float>, ptr %i.ut, align 4, !tbaa !121, !alias.scope !168 ; 2 uses
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %i.uj, i64 %index1099 ; 4 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 32
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uu, i64 64
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uu, i64 96
  %wide.load1104 = load <8 x float>, ptr %i.uu, align 4, !tbaa !121, !alias.scope !171, !noalias !168
  %wide.load1105 = load <8 x float>, ptr %i.uv, align 4, !tbaa !121, !alias.scope !171, !noalias !168
  %wide.load1106 = load <8 x float>, ptr %i.uw, align 4, !tbaa !121, !alias.scope !171, !noalias !168
  %wide.load1107 = load <8 x float>, ptr %i.ux, align 4, !tbaa !121, !alias.scope !171, !noalias !168
  %i.uy = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat1097, %wide.load1104 ; 2 uses
  %i.uz = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat1097, %wide.load1105 ; 2 uses
  %i.va = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat1097, %wide.load1106 ; 2 uses
  %i.vb = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat1097, %wide.load1107 ; 2 uses
  %i.vc = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load1100, zeroinitializer
  %i.vd = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load1101, zeroinitializer
  %i.ve = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load1102, zeroinitializer
  %i.vf = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load1103, zeroinitializer
  %i.vg = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.uy, zeroinitializer
  %i.vh = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.uz, zeroinitializer
  %i.vi = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.va, zeroinitializer
  %i.vj = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.vb, zeroinitializer
  %i.vk = select <8 x i1> %i.vc, <8 x i1> %i.vg, <8 x i1> zeroinitializer
  %i.vl = select <8 x i1> %i.vd, <8 x i1> %i.vh, <8 x i1> zeroinitializer
  %i.vm = select <8 x i1> %i.ve, <8 x i1> %i.vi, <8 x i1> zeroinitializer
  %i.vn = select <8 x i1> %i.vf, <8 x i1> %i.vj, <8 x i1> zeroinitializer
  %i.vo = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.uy
  %i.vp = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.uz
  %i.vq = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.va
  %i.vr = fsub reassoc nnan nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.vb
  %i.vs = fmul reassoc nsz arcp contract afn <8 x float> %i.vo, %wide.load1100
  %i.vt = fmul reassoc nsz arcp contract afn <8 x float> %i.vp, %wide.load1101
  %i.vu = fmul reassoc nsz arcp contract afn <8 x float> %i.vq, %wide.load1102
  %i.vv = fmul reassoc nsz arcp contract afn <8 x float> %i.vr, %wide.load1103
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %i.vs, ptr align 4 %i.uq, <8 x i1> %i.vk), !tbaa !121, !alias.scope !168
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %i.vt, ptr align 4 %i.ur, <8 x i1> %i.vl), !tbaa !121, !alias.scope !168
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %i.vu, ptr align 4 %i.us, <8 x i1> %i.vm), !tbaa !121, !alias.scope !168
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %i.vv, ptr align 4 %i.ut, <8 x i1> %i.vn), !tbaa !121, !alias.scope !168
  %index.next1108 = add nuw i64 %index1099, 32    ; 2 uses
  %i.vw = icmp eq i64 %index.next1108, %n.vec1095
  br i1 %i.vw, label %middle.block1109, label %vector.body1098, !llvm.loop !173

middle.block1109:                                 ; preds = %vector.body1098
  br i1 %cmp.n1110, label %._crit_edge535, label %vec.epilog.iter.check1114

vec.epilog.iter.check1114:                        ; preds = %middle.block1109
  br i1 %min.epilog.iters.check1115, label %vec.epilog.scalar.ph1113.preheader, label %vec.epilog.ph1116, !prof !132

vec.epilog.ph1116:                                ; preds = %vector.main.loop.iter.check1092, %vec.epilog.iter.check1114
  %vec.epilog.resume.val1111 = phi i64 [ %n.vec1095, %vec.epilog.iter.check1114 ], [ 0, %vector.main.loop.iter.check1092 ]
  br label %vec.epilog.vector.body1120

vec.epilog.vector.body1120:                       ; preds = %vec.epilog.vector.body1120, %vec.epilog.ph1116
  %index1121 = phi i64 [ %vec.epilog.resume.val1111, %vec.epilog.ph1116 ], [ %index.next1124, %vec.epilog.vector.body1120 ] ; 3 uses
  %i.vx = trunc i64 %index1121 to i32
  %i.vy = add i32 %invariant.op538, %i.vx
  %i.vz = sext i32 %i.vy to i64
  %i.wa = getelementptr [4 x i8], ptr %i.tj, i64 %i.vz ; 2 uses
  %wide.load1122 = load <8 x float>, ptr %i.wa, align 4, !tbaa !121, !alias.scope !168 ; 2 uses
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %i.uj, i64 %index1121
  %wide.load1123 = load <8 x float>, ptr %i.wb, align 4, !tbaa !121, !alias.scope !171, !noalias !168
  %i.wc = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat1119, %wide.load1123 ; 2 uses
  %i.wd = fcmp reassoc nsz arcp contract afn ogt <8 x float> %wide.load1122, zeroinitializer
  %i.we = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.wc, zeroinitializer
  %i.wf = select <8 x i1> %i.wd, <8 x i1> %i.we, <8 x i1> zeroinitializer
end_hunk_1
begin_hunk_2_@_group_get_mask:bb.a

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv620.unr = phi i64 [ %indvars.iv620.ph, %scalar.ph.preheader ], [ %indvars.iv.next621.prol, %scalar.ph.prol.loopexit.unr-lcssa ]
  %i.aau = icmp eq i64 %indvars.iv620.ph, %i.ys
  br i1 %i.aau, label %._crit_edge545, label %scalar.ph

._crit_edge545:                                   ; preds = %scalar.ph.prol.loopexit, %bb.ae, %middle.block1078
  %indvars.iv.next626 = add nuw nsw i64 %indvars.iv625, 1 ; 2 uses
  %exitcond629.not = icmp eq i64 %indvars.iv.next626, %wide.trip.count628
  br i1 %exitcond629.not, label %.loopexit, label %.preheader487

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %bb.ae
  %indvars.iv620 = phi i64 [ %indvars.iv.next621.1, %bb.ae ], [ %indvars.iv620.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.aav = trunc nuw nsw i64 %indvars.iv620 to i32
  %.reass549 = add i32 %invariant.op548, %i.aav
  %i.aaw = sext i32 %.reass549 to i64
  %i.aax = getelementptr inbounds [4 x i8], ptr %i.yc, i64 %i.aaw ; 2 uses
  %i.aay = load float, ptr %i.aax, align 4, !tbaa !121 ; 4 uses
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %indvars.iv620
  %i.aba = load float, ptr %i.aaz, align 4, !tbaa !121
  %i.abb = fmul reassoc nsz arcp contract afn float %i.yg, %i.aba ; 4 uses
  %i.abc = fcmp reassoc nsz arcp contract afn ogt float %i.aay, 0.000000e+00
  %i.abd = fcmp reassoc nsz arcp contract afn ogt float %i.abb, 0.000000e+00
  %or.cond5 = select i1 %i.abc, i1 %i.abd, i1 false
  br i1 %or.cond5, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %scalar.ph
  %i.abe = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.aay
  %i.abf = fmul reassoc nsz arcp contract afn float %i.abb, %i.abe
  %i.abg = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.abb
  %i.abh = fmul reassoc nsz arcp contract afn float %i.abg, %i.aay
  %i.abi = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.abf, float %i.abh)
  br label %scalar.ph.1

bb.ab:                                            ; preds = %scalar.ph
  %i.abj = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.aay, float %i.abb)
  br label %scalar.ph.1

scalar.ph.1:                                      ; preds = %bb.ab, %bb.aa
  %storemerge = phi float [ %i.abj, %bb.ab ], [ %i.abi, %bb.aa ]
  store float %storemerge, ptr %i.aax, align 4, !tbaa !121
  %indvars.iv.next621 = add nuw nsw i64 %indvars.iv620, 1 ; 2 uses
  %i.abk = trunc nuw nsw i64 %indvars.iv.next621 to i32
  %.reass549.1 = add i32 %invariant.op548, %i.abk
  %i.abl = sext i32 %.reass549.1 to i64
  %i.abm = getelementptr inbounds [4 x i8], ptr %i.yc, i64 %i.abl ; 2 uses
  %i.abn = load float, ptr %i.abm, align 4, !tbaa !121 ; 4 uses
  %i.abo = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %indvars.iv.next621
  %i.abp = load float, ptr %i.abo, align 4, !tbaa !121
  %i.abq = fmul reassoc nsz arcp contract afn float %i.yg, %i.abp ; 4 uses
  %i.abr = fcmp reassoc nsz arcp contract afn ogt float %i.abn, 0.000000e+00
  %i.abs = fcmp reassoc nsz arcp contract afn ogt float %i.abq, 0.000000e+00
  %or.cond5.1 = select i1 %i.abr, i1 %i.abs, i1 false
  br i1 %or.cond5.1, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %scalar.ph.1
  %i.abt = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.abn, float %i.abq)
  br label %bb.ae

bb.ad:                                            ; preds = %scalar.ph.1
  %i.abu = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.abn
  %i.abv = fmul reassoc nsz arcp contract afn float %i.abq, %i.abu
  %i.abw = fsub reassoc nnan nsz arcp contract afn float 1.000000e+00, %i.abq
  %i.abx = fmul reassoc nsz arcp contract afn float %i.abw, %i.abn
  %i.aby = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.abv, float %i.abx)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %storemerge.1 = phi float [ %i.abt, %bb.ac ], [ %i.aby, %bb.ad ]
  store float %storemerge.1, ptr %i.abm, align 4, !tbaa !121
  %indvars.iv.next621.1 = add nuw nsw i64 %indvars.iv620, 2 ; 2 uses
  %exitcond624.not.1 = icmp eq i64 %indvars.iv.next621.1, %wide.trip.count623
  br i1 %exitcond624.not.1, label %._crit_edge545, label %scalar.ph, !llvm.loop !182

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge555
  %indvars.iv645 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next646, %._crit_edge555 ] ; 3 uses
  %i.abz = trunc nuw nsw i64 %indvars.iv645 to i32
  %.reass562 = add i32 %invariant.op561, %i.abz   ; 5 uses
  %i.aca = icmp sgt i32 %.reass562, -1
  %i.acb = mul nuw nsw i64 %indvars.iv645, %i.mg  ; 3 uses
  br i1 %i.aca, label %.lr.ph554.split.us, label %iter.check1046

iter.check1046:                                   ; preds = %.preheader
  %invariant.gep701 = getelementptr inbounds nuw [4 x i8], ptr %i.zb, i64 %i.acb ; 3 uses
  br i1 %min.iters.check1033, label %.lr.ph554.split.preheader, label %vector.main.loop.iter.check1034

vector.main.loop.iter.check1034:                  ; preds = %iter.check1046
  br i1 %min.iters.check1035, label %vec.epilog.ph1050, label %vector.body1040

vector.body1040:                                  ; preds = %vector.main.loop.iter.check1034, %vector.body1040
  %index1041 = phi i64 [ %index.next1042, %vector.body1040 ], [ 0, %vector.main.loop.iter.check1034 ] ; 2 uses
  %i.acc = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep701, i64 %index1041 ; 4 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acc, i64 32
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acc, i64 64
  %i.acf = getelementptr inbounds nuw i8, ptr %i.acc, i64 96
  store <8 x float> %broadcast.splat1039, ptr %i.acc, align 4, !tbaa !121
  store <8 x float> %broadcast.splat1039, ptr %i.acd, align 4, !tbaa !121
  store <8 x float> %broadcast.splat1039, ptr %i.ace, align 4, !tbaa !121
  store <8 x float> %broadcast.splat1039, ptr %i.acf, align 4, !tbaa !121
  %index.next1042 = add nuw i64 %index1041, 32    ; 2 uses
  %i.acg = icmp eq i64 %index.next1042, %n.vec1037
  br i1 %i.acg, label %middle.block1043, label %vector.body1040, !llvm.loop !183

middle.block1043:                                 ; preds = %vector.body1040
  br i1 %cmp.n1044, label %._crit_edge555, label %vec.epilog.iter.check1048

vec.epilog.iter.check1048:                        ; preds = %middle.block1043
  br i1 %min.epilog.iters.check1049, label %.lr.ph554.split.preheader, label %vec.epilog.ph1050, !prof !86

vec.epilog.ph1050:                                ; preds = %vector.main.loop.iter.check1034, %vec.epilog.iter.check1048
  %vec.epilog.resume.val1045 = phi i64 [ %n.vec1037, %vec.epilog.iter.check1048 ], [ 0, %vector.main.loop.iter.check1034 ]
  br label %vec.epilog.vector.body1054

vec.epilog.vector.body1054:                       ; preds = %vec.epilog.vector.body1054, %vec.epilog.ph1050
  %index1055 = phi i64 [ %vec.epilog.resume.val1045, %vec.epilog.ph1050 ], [ %index.next1056, %vec.epilog.vector.body1054 ] ; 2 uses
  %i.ach = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep701, i64 %index1055
  store <4 x float> %broadcast.splat1053, ptr %i.ach, align 4, !tbaa !121
  %index.next1056 = add nuw i64 %index1055, 4     ; 2 uses
  %i.aci = icmp eq i64 %index.next1056, %n.vec1051
  br i1 %i.aci, label %vec.epilog.middle.block1057, label %vec.epilog.vector.body1054, !llvm.loop !184

vec.epilog.middle.block1057:                      ; preds = %vec.epilog.vector.body1054
  br i1 %cmp.n1058, label %._crit_edge555, label %.lr.ph554.split.preheader

.lr.ph554.split.preheader:                        ; preds = %iter.check1046, %vec.epilog.iter.check1048, %vec.epilog.middle.block1057
  %indvars.iv630.ph = phi i64 [ 0, %iter.check1046 ], [ %n.vec1037, %vec.epilog.iter.check1048 ], [ %n.vec1051, %vec.epilog.middle.block1057 ]
  br label %.lr.ph554.split

.lr.ph554.split.us:                               ; preds = %.preheader
  %i.acj = load i32, ptr %i.yt, align 4, !tbaa !82
  %i.ack = icmp slt i32 %.reass562, %i.acj
  br i1 %i.ack, label %.lr.ph554.split.us.split.us, label %iter.check1019

iter.check1019:                                   ; preds = %.lr.ph554.split.us
  %invariant.gep703 = getelementptr inbounds nuw [4 x i8], ptr %i.zb, i64 %i.acb ; 3 uses
  br i1 %min.iters.check1006, label %.lr.ph554.split.us.split.preheader, label %vector.main.loop.iter.check1007

vector.main.loop.iter.check1007:                  ; preds = %iter.check1019
  br i1 %min.iters.check1008, label %vec.epilog.ph1023, label %vector.body1013

vector.body1013:                                  ; preds = %vector.main.loop.iter.check1007, %vector.body1013
  %index1014 = phi i64 [ %index.next1015, %vector.body1013 ], [ 0, %vector.main.loop.iter.check1007 ] ; 2 uses
  %i.acl = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep703, i64 %index1014 ; 4 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 32
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acl, i64 64
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acl, i64 96
  store <8 x float> %broadcast.splat1012, ptr %i.acl, align 4, !tbaa !121
  store <8 x float> %broadcast.splat1012, ptr %i.acm, align 4, !tbaa !121
  store <8 x float> %broadcast.splat1012, ptr %i.acn, align 4, !tbaa !121
  store <8 x float> %broadcast.splat1012, ptr %i.aco, align 4, !tbaa !121
  %index.next1015 = add nuw i64 %index1014, 32    ; 2 uses
  %i.acp = icmp eq i64 %index.next1015, %n.vec1010
  br i1 %i.acp, label %middle.block1016, label %vector.body1013, !llvm.loop !185

middle.block1016:                                 ; preds = %vector.body1013
  br i1 %cmp.n1017, label %._crit_edge555, label %vec.epilog.iter.check1021

vec.epilog.iter.check1021:                        ; preds = %middle.block1016
  br i1 %min.epilog.iters.check1022, label %.lr.ph554.split.us.split.preheader, label %vec.epilog.ph1023, !prof !86

vec.epilog.ph1023:                                ; preds = %vector.main.loop.iter.check1007, %vec.epilog.iter.check1021
  %vec.epilog.resume.val1018 = phi i64 [ %n.vec1010, %vec.epilog.iter.check1021 ], [ 0, %vector.main.loop.iter.check1007 ]
  br label %vec.epilog.vector.body1027

vec.epilog.vector.body1027:                       ; preds = %vec.epilog.vector.body1027, %vec.epilog.ph1023
  %index1028 = phi i64 [ %vec.epilog.resume.val1018, %vec.epilog.ph1023 ], [ %index.next1029, %vec.epilog.vector.body1027 ] ; 2 uses
  %i.acq = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep703, i64 %index1028
  store <4 x float> %broadcast.splat1026, ptr %i.acq, align 4, !tbaa !121
  %index.next1029 = add nuw i64 %index1028, 4     ; 2 uses
  %i.acr = icmp eq i64 %index.next1029, %n.vec1024
  br i1 %i.acr, label %vec.epilog.middle.block1030, label %vec.epilog.vector.body1027, !llvm.loop !186

vec.epilog.middle.block1030:                      ; preds = %vec.epilog.vector.body1027
  br i1 %cmp.n1031, label %._crit_edge555, label %.lr.ph554.split.us.split.preheader

.lr.ph554.split.us.split.preheader:               ; preds = %iter.check1019, %vec.epilog.iter.check1021, %vec.epilog.middle.block1030
  %indvars.iv635.ph = phi i64 [ 0, %iter.check1019 ], [ %n.vec1010, %vec.epilog.iter.check1021 ], [ %n.vec1024, %vec.epilog.middle.block1030 ]
  br label %.lr.ph554.split.us.split

.lr.ph554.split.us.split.us:                      ; preds = %.lr.ph554.split.us
  %i.acs = load i32, ptr %i.yu, align 4, !tbaa !82
  %invariant.op556 = sub i32 %.0433..lcssa, %i.acs ; 3 uses
  %invariant.gep705 = getelementptr inbounds nuw [4 x i8], ptr %i.zb, i64 %i.acb ; 3 uses
  br i1 %i.mk, label %.epil.preheader, label %.lr.ph554.split.us.split.us.new

.lr.ph554.split.us.split.us.new:                  ; preds = %.lr.ph554.split.us.split.us, %bb.ak
  %indvars.iv640 = phi i64 [ %indvars.iv.next641.1, %bb.ak ], [ 0, %.lr.ph554.split.us.split.us ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %bb.ak ], [ 0, %.lr.ph554.split.us.split.us ]
  %i.act = trunc nuw nsw i64 %indvars.iv640 to i32
  %.reass557 = add i32 %invariant.op556, %i.act   ; 3 uses
  %i.acu = icmp sgt i32 %.reass557, -1
  br i1 %i.acu, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %.lr.ph554.split.us.split.us.new
  %i.acv = load i32, ptr %i.yv, align 4, !tbaa !82 ; 2 uses
  %i.acw = icmp slt i32 %.reass557, %i.acv
  br i1 %i.acw, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.acx = load ptr, ptr %i.yw, align 8, !tbaa !124
  %i.acy = mul nsw i32 %i.acv, %.reass562
  %i.acz = add nuw i32 %.reass557, %i.acy
  %i.ada = sext i32 %i.acz to i64
  %i.adb = getelementptr inbounds [4 x i8], ptr %i.acx, i64 %i.ada
  %i.adc = load float, ptr %i.adb, align 4, !tbaa !121
  %.pre667 = fmul reassoc nsz arcp contract afn float %i.za, %i.adc
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %.lr.ph554.split.us.split.us.new
  %.pre-phi = phi float [ %.pre667, %bb.ag ], [ %i.zc, %bb.af ], [ %i.zc, %.lr.ph554.split.us.split.us.new ]
  %gep706 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep705, i64 %indvars.iv640
  store float %.pre-phi, ptr %gep706, align 4, !tbaa !121
  %indvars.iv.next641 = or disjoint i64 %indvars.iv640, 1 ; 2 uses
  %i.add = trunc nuw nsw i64 %indvars.iv.next641 to i32
  %.reass557.1 = add i32 %invariant.op556, %i.add ; 3 uses
  %i.ade = icmp sgt i32 %.reass557.1, -1
  br i1 %i.ade, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.adf = load i32, ptr %i.yv, align 4, !tbaa !82 ; 2 uses
  %i.adg = icmp slt i32 %.reass557.1, %i.adf
  br i1 %i.adg, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.adh = load ptr, ptr %i.yw, align 8, !tbaa !124
  %i.adi = mul nsw i32 %i.adf, %.reass562
  %i.adj = add nuw i32 %.reass557.1, %i.adi
  %i.adk = sext i32 %i.adj to i64
  %i.adl = getelementptr inbounds [4 x i8], ptr %i.adh, i64 %i.adk
  %i.adm = load float, ptr %i.adl, align 4, !tbaa !121
  %.pre667.1 = fmul reassoc nsz arcp contract afn float %i.za, %i.adm
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %.pre-phi.1 = phi float [ %.pre667.1, %bb.aj ], [ %i.zc, %bb.ai ], [ %i.zc, %bb.ah ]
  %gep706.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep705, i64 %indvars.iv.next641
  store float %.pre-phi.1, ptr %gep706.1, align 4, !tbaa !121
  %indvars.iv.next641.1 = add nuw nsw i64 %indvars.iv640, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge555.loopexit.unr-lcssa, label %.lr.ph554.split.us.split.us.new

.lr.ph554.split.us.split:                         ; preds = %.lr.ph554.split.us.split.preheader, %.lr.ph554.split.us.split
  %indvars.iv635 = phi i64 [ %indvars.iv.next636, %.lr.ph554.split.us.split ], [ %indvars.iv635.ph, %.lr.ph554.split.us.split.preheader ] ; 2 uses
  %gep704 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep703, i64 %indvars.iv635
  store float %i.zc, ptr %gep704, align 4, !tbaa !121
  %indvars.iv.next636 = add nuw nsw i64 %indvars.iv635, 1 ; 2 uses
  %exitcond639.not = icmp eq i64 %indvars.iv.next636, %i.mg
  br i1 %exitcond639.not, label %._crit_edge555, label %.lr.ph554.split.us.split, !llvm.loop !187

._crit_edge555.loopexit.unr-lcssa:                ; preds = %bb.ak
  br i1 %lcmp.mod1220.not, label %._crit_edge555, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge555.loopexit.unr-lcssa, %.lr.ph554.split.us.split.us
  %indvars.iv640.epil.init = phi i64 [ 0, %.lr.ph554.split.us.split.us ], [ %indvars.iv.next641.1, %._crit_edge555.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod1221)
  %i.adn = trunc nuw nsw i64 %indvars.iv640.epil.init to i32
  %.reass557.epil = add i32 %invariant.op556, %i.adn ; 3 uses
  %i.ado = icmp sgt i32 %.reass557.epil, -1
  br i1 %i.ado, label %bb.al, label %._crit_edge555.loopexit.epilog-lcssa

bb.al:                                            ; preds = %.epil.preheader
  %i.adp = load i32, ptr %i.yv, align 4, !tbaa !82 ; 2 uses
  %i.adq = icmp slt i32 %.reass557.epil, %i.adp
  br i1 %i.adq, label %bb.am, label %._crit_edge555.loopexit.epilog-lcssa

bb.am:                                            ; preds = %bb.al
  %i.adr = load ptr, ptr %i.yw, align 8, !tbaa !124
  %i.ads = mul nsw i32 %i.adp, %.reass562
  %i.adt = add nuw i32 %.reass557.epil, %i.ads
  %i.adu = sext i32 %i.adt to i64
  %i.adv = getelementptr inbounds [4 x i8], ptr %i.adr, i64 %i.adu
  %i.adw = load float, ptr %i.adv, align 4, !tbaa !121
  %.pre667.epil = fmul reassoc nsz arcp contract afn float %i.za, %i.adw
  br label %._crit_edge555.loopexit.epilog-lcssa

._crit_edge555.loopexit.epilog-lcssa:             ; preds = %bb.am, %bb.al, %.epil.preheader
  %.pre-phi.epil = phi float [ %.pre667.epil, %bb.am ], [ %i.zc, %bb.al ], [ %i.zc, %.epil.preheader ]
  %gep706.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep705, i64 %indvars.iv640.epil.init
  store float %.pre-phi.epil, ptr %gep706.epil, align 4, !tbaa !121
  br label %._crit_edge555

._crit_edge555:                                   ; preds = %.lr.ph554.split, %.lr.ph554.split.us.split, %._crit_edge555.loopexit.epilog-lcssa, %._crit_edge555.loopexit.unr-lcssa, %middle.block1043, %vec.epilog.middle.block1057, %middle.block1016, %vec.epilog.middle.block1030
  %indvars.iv.next646 = add nuw nsw i64 %indvars.iv645, 1 ; 2 uses
  %exitcond649.not = icmp eq i64 %indvars.iv.next646, %wide.trip.count648
  br i1 %exitcond649.not, label %.loopexit, label %.preheader

.lr.ph554.split:                                  ; preds = %.lr.ph554.split.preheader, %.lr.ph554.split
  %indvars.iv630 = phi i64 [ %indvars.iv.next631, %.lr.ph554.split ], [ %indvars.iv630.ph, %.lr.ph554.split.preheader ] ; 2 uses
  %gep702 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep701, i64 %indvars.iv630
  store float %i.zc, ptr %gep702, align 4, !tbaa !121
  %indvars.iv.next631 = add nuw nsw i64 %indvars.iv630, 1 ; 2 uses
  %exitcond634.not = icmp eq i64 %indvars.iv.next631, %i.mg
  br i1 %exitcond634.not, label %._crit_edge555, label %.lr.ph554.split, !llvm.loop !188

.loopexit:                                        ; preds = %._crit_edge518, %._crit_edge525, %._crit_edge535, %._crit_edge545, %._crit_edge555, %.preheader498, %.preheader490.lr.ph, %.preheader496, %.preheader489.lr.ph, %.preheader494, %.preheader488.lr.ph, %.preheader492, %.preheader487.lr.ph, %.preheader491, %.preheader.lr.ph
  %i.adx = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !70 ; 2 uses
  %i.ady = and i32 %i.adx, 4112
  %or.cond473.not = icmp eq i32 %i.ady, 4112
  br i1 %or.cond473.not, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %i.adz = call i32 @gettimeofday(ptr noundef nonnull %8, ptr noundef null) #11 ; 0 uses
  %i.aea = load i64, ptr %8, align 8, !tbaa !71
  %i.aeb = add nsw i64 %i.aea, -1290608000
  %i.aec = sitofp reassoc nsz arcp contract afn i64 %i.aeb to double
  %i.aed = load i64, ptr %i.mf, align 8, !tbaa !73
  %i.aee = sitofp reassoc nsz arcp contract afn i64 %i.aed to double
  %i.aef = fmul reassoc nnan nsz arcp contract afn double %i.aee, f0x3EB0C6F7A0B5ED8D
  %i.aeg = fadd reassoc nsz arcp contract afn double %i.aef, %i.aec
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  %i.aeh = fsub reassoc nsz arcp contract afn double %i.aeg, %i.nh
  %i.aei = trunc nuw nsw i64 %indvars.iv650 to i32
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.2, i32 noundef %i.aei, double noundef %i.aeh) #11
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !70
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.loopexit
  %i.aej = phi i32 [ %.pre, %bb.an ], [ %i.adx, %.loopexit ]
  %indvars.iv.next651 = add nuw nsw i64 %indvars.iv650, 1 ; 2 uses
  %exitcond654.not = icmp eq i64 %indvars.iv.next651, %i.d
  br i1 %exitcond654.not, label %bb.k, label %bb.l

bb.ap:                                            ; preds = %bb.k, %bb.ap
  %indvars.iv655 = phi i64 [ 0, %bb.k ], [ %indvars.iv.next656, %bb.ap ] ; 2 uses
  %i.aek = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv655
  %i.ael = load ptr, ptr %i.aek, align 8, !tbaa !124
  tail call void @free(ptr noundef %i.ael) #11
  %indvars.iv.next656 = add nuw nsw i64 %indvars.iv655, 1 ; 2 uses
  %exitcond659.not = icmp eq i64 %indvars.iv.next656, %i.d
  br i1 %exitcond659.not, label %.sink.split, label %bb.ap

._crit_edge.thread:                               ; preds = %bb.b, %._crit_edge
  tail call void @free(ptr noundef %i.l) #11
  tail call void @free(ptr noundef %i.k) #11
  tail call void @free(ptr noundef %i.j) #11
  tail call void @free(ptr noundef %i.i) #11
  tail call void @free(ptr noundef %i.h) #11
  tail call void @free(ptr noundef %i.g) #11
  br label %bb.aq

bb.aq:                                            ; preds = %._crit_edge.thread, %bb.aq
  %indvars.iv660 = phi i64 [ 0, %._crit_edge.thread ], [ %indvars.iv.next661, %bb.aq ] ; 2 uses
  %i.aem = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv660
  %i.aen = load ptr, ptr %i.aem, align 8, !tbaa !124
  tail call void @free(ptr noundef %i.aen) #11
  %indvars.iv.next661 = add nuw nsw i64 %indvars.iv660, 1 ; 2 uses
  %exitcond665.not = icmp eq i64 %indvars.iv.next661, %i.d
  br i1 %exitcond665.not, label %.sink.split, label %bb.aq

.sink.split:                                      ; preds = %bb.ap, %bb.aq
  %.1438.ph = phi i32 [ 0, %bb.aq ], [ 1, %bb.ap ]
  tail call void @free(ptr noundef nonnull %i.e) #11
  br label %bb.ar

bb.ar:                                            ; preds = %.sink.split, %bb.a
  %.1438 = phi i32 [ 0, %bb.a ], [ %.1438.ph, %.sink.split ]
  ret i32 %.1438
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_group_get_mask_roi(ptr noalias noundef %0, ptr noalias noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noalias noundef %4) #0 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64
  %5 = alloca %struct.timeval, align 8            ; 5 uses
  %6 = alloca %struct.timeval, align 8            ; 5 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !69
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !70
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %dt_get_debug_wtime.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.d = call i32 @gettimeofday(ptr noundef nonnull %6, ptr noundef null) #11 ; 0 uses
  %i.e = load i64, ptr %6, align 8, !tbaa !71
  %i.f = add nsw i64 %i.e, -1290608000
  %i.g = sitofp reassoc nsz arcp contract afn i64 %i.f to double
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !73
  %i.j = sitofp reassoc nsz arcp contract afn i64 %i.i to double
  %i.k = fmul reassoc nnan nsz arcp contract afn double %i.j, f0x3EB0C6F7A0B5ED8D
  %i.l = fadd reassoc nsz arcp contract afn double %i.k, %i.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %dt_get_debug_wtime.exit

dt_get_debug_wtime.exit:                          ; preds = %bb.b, %bb.c
  %i.m = phi reassoc nsz arcp contract afn double [ %i.l, %bb.c ], [ 0.000000e+00, %bb.b ]
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load i32, ptr %i.n, align 4, !tbaa !189  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !190  ; 3 uses
  %i.r = sext i32 %i.o to i64
  %i.s = sext i32 %i.q to i64
  %i.t = mul nsw i64 %i.s, %i.r                   ; 84 uses
  %i.u = shl i64 %i.t, 2                          ; 2 uses
  %i.v = tail call ptr @dt_alloc_aligned(i64 noundef %i.u) #11 ; 42 uses
  %i.w = ptrtoaddr ptr %i.v to i64
  call void @llvm.assume(i1 true) [ "align"(ptr %i.v, i64 64) ]
  %i.x = icmp eq ptr %i.v, null
  br i1 %i.x, label %bb.y, label %.preheader145

.preheader145:                                    ; preds = %dt_get_debug_wtime.exit
  %.088147 = load ptr, ptr %2, align 8, !tbaa !11 ; 2 uses
  %.not92148 = icmp eq ptr %.088147, null
  br i1 %.not92148, label %._crit_edge, label %.lr.ph152

.lr.ph152:                                        ; preds = %.preheader145
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %.not42.i = icmp eq i64 %i.t, 0                 ; 11 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  %min.iters.check496 = icmp ult i64 %i.t, 4
  %min.iters.check498 = icmp ult i64 %i.t, 32
  %i.ab = and i64 %i.t, 28
  %n.vec500 = and i64 %i.t, -32                   ; 4 uses
  %cmp.n515 = icmp eq i64 %i.t, %n.vec500
  %min.epilog.iters.check520 = icmp eq i64 %i.ab, 0
  %n.vec522 = and i64 %i.t, -4                    ; 3 uses
  %cmp.n531 = icmp eq i64 %i.t, %n.vec522
  %min.iters.check458 = icmp ult i64 %i.t, 4
  %min.iters.check460 = icmp ult i64 %i.t, 32
  %i.ac = and i64 %i.t, 28
  %n.vec462 = and i64 %i.t, -32                   ; 4 uses
  %cmp.n477 = icmp eq i64 %i.t, %n.vec462
  %min.epilog.iters.check482 = icmp eq i64 %i.ac, 0
  %n.vec484 = and i64 %i.t, -4                    ; 3 uses
  %cmp.n493 = icmp eq i64 %i.t, %n.vec484
  %min.iters.check420 = icmp ult i64 %i.t, 4
  %min.iters.check422 = icmp ult i64 %i.t, 32
  %i.ad = and i64 %i.t, 28
  %n.vec424 = and i64 %i.t, -32                   ; 4 uses
  %cmp.n439 = icmp eq i64 %i.t, %n.vec424
  %min.epilog.iters.check444 = icmp eq i64 %i.ad, 0
  %n.vec446 = and i64 %i.t, -4                    ; 3 uses
  %cmp.n455 = icmp eq i64 %i.t, %n.vec446
  %min.iters.check382 = icmp ult i64 %i.t, 4
  %min.iters.check384 = icmp ult i64 %i.t, 32
  %i.ae = and i64 %i.t, 28
  %n.vec386 = and i64 %i.t, -32                   ; 4 uses
  %cmp.n401 = icmp eq i64 %i.t, %n.vec386
  %min.epilog.iters.check406 = icmp eq i64 %i.ae, 0
  %n.vec408 = and i64 %i.t, -4                    ; 3 uses
  %cmp.n417 = icmp eq i64 %i.t, %n.vec408
  %min.iters.check344 = icmp ult i64 %i.t, 8
  %min.iters.check346 = icmp ult i64 %i.t, 32
  %i.af = and i64 %i.t, 24
  %n.vec348 = and i64 %i.t, -32                   ; 4 uses
  %cmp.n363 = icmp eq i64 %i.t, %n.vec348
  %min.epilog.iters.check368 = icmp eq i64 %i.af, 0
  %n.vec370 = and i64 %i.t, -8                    ; 3 uses
  %cmp.n379 = icmp eq i64 %i.t, %n.vec370
  %min.iters.check306 = icmp ult i64 %i.t, 8
  %min.iters.check308 = icmp ult i64 %i.t, 32
  %i.ag = and i64 %i.t, 24
  %n.vec310 = and i64 %i.t, -32                   ; 4 uses
  %cmp.n325 = icmp eq i64 %i.t, %n.vec310
  %min.epilog.iters.check330 = icmp eq i64 %i.ag, 0
  %n.vec332 = and i64 %i.t, -8                    ; 3 uses
  %cmp.n341 = icmp eq i64 %i.t, %n.vec332
  %min.iters.check268 = icmp ult i64 %i.t, 4
  %min.iters.check270 = icmp ult i64 %i.t, 32
  %i.ah = and i64 %i.t, 28
  %n.vec272 = and i64 %i.t, -32                   ; 4 uses
  %cmp.n287 = icmp eq i64 %i.t, %n.vec272
end_hunk_2
