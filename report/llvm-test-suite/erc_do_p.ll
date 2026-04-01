begin_hunk_0

bb.c:                                             ; preds = %bb.b
  %i.dp = ashr i32 %i.m, %i.h                     ; 3 uses
  %i.dq = ashr i32 %i.n, %i.h                     ; 3 uses
  %.not605 = icmp sgt i32 %i.dp, %i.dq
  br i1 %.not605, label %.loopexit, label %.lr.ph8

.lr.ph8:                                          ; preds = %bb.c
  %i.dr = ashr i32 %i.k, %i.f                     ; 4 uses
  %i.ds = ashr i32 %i.do, %i.f                    ; 6 uses
  %.not613 = icmp sgt i32 %i.dr, %i.ds
  br i1 %.not613, label %.loopexit, label %.lr.ph8.split

.lr.ph8.split:                                    ; preds = %.lr.ph8
  %3 = shl nsw i32 %i.j, 2
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 316928
  %i.du = load ptr, ptr @img, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 5932
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !16 ; 2 uses
  %i.dx = load ptr, ptr %i.dt, align 8, !tbaa !64 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !65
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !65
  %i.eb = sext i32 %i.dr to i64                   ; 9 uses
  %4 = sext i32 %3 to i64                         ; 6 uses
  %i.ec = add i32 %i.ds, 1
  %i.ed = sext i32 %i.dp to i64                   ; 2 uses
  %5 = sext i32 %i.dw to i64                      ; 2 uses
  %i.ee = add i32 %i.dq, 1
  %6 = shl nsw i64 %i.eb, 1                       ; 3 uses
  %i.ef = sub i32 %i.ds, %i.dr
  %7 = zext i32 %i.ef to i64                      ; 2 uses
  %8 = add nsw i64 %i.eb, %7
  %9 = shl nsw i64 %8, 1
  %10 = add nsw i64 %9, 2                         ; 2 uses
  %11 = add nsw i64 %6, 512
  %i.eg = shl nsw i64 %4, 1                       ; 2 uses
  %12 = sub nsw i64 %11, %i.eg
  %scevgep4 = getelementptr i8, ptr %1, i64 %12   ; 2 uses
  %13 = sub i32 %i.dq, %i.dp
  %i.eh = zext i32 %13 to i64
  %14 = mul nsw i64 %5, %i.eh
  %i.ei = add i64 %14, %i.eb
  %i.ej = add i64 %i.ei, %7
  %15 = shl i64 %i.ej, 1
  %16 = add i64 %15, 642
  %17 = sub i64 %16, %i.eg
  %scevgep5.a = getelementptr i8, ptr %1, i64 %17 ; 2 uses
  %i.ek = sub i32 %i.ds, %i.dr                    ; 3 uses
  %i.el = zext i32 %i.ek to i64
  %i.em = add nuw nsw i64 %i.el, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.ek, 3
  %stride.check = icmp slt i32 %i.dw, 0
  %min.iters.check14 = icmp ult i32 %i.ek, 15
  %n.mod.vf = and i64 %i.em, 12
  %n.vec = and i64 %i.em, 8589934576              ; 4 uses
end_hunk_0
begin_hunk_1
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph8.split, %._crit_edge
  %indvars.iv19 = phi i64 [ %i.ed, %.lr.ph8.split ], [ %indvars.iv.next20, %._crit_edge ] ; 4 uses
  %18 = sub nsw i64 %indvars.iv19, %i.ed
  %19 = mul nsw i64 %18, %5
  %20 = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %indvars.iv19
  %21 = load ptr, ptr %20, align 8, !tbaa !60     ; 7 uses
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %indvars.iv19
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !60 ; 7 uses
  %22 = getelementptr [2 x i8], ptr %1, i64 %19   ; 5 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %21, i64 %6    ; 2 uses
  %scevgep1 = getelementptr i8, ptr %21, i64 %10  ; 2 uses
  %scevgep2 = getelementptr i8, ptr %i.eq, i64 %6 ; 2 uses
  %scevgep3 = getelementptr i8, ptr %i.eq, i64 %10 ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep3
  %bound1 = icmp ult ptr %scevgep2, %scevgep1
  %found.conflict = and i1 %bound0, %bound1
  %bound06 = icmp ult ptr %scevgep, %scevgep5.a
  %bound17 = icmp ult ptr %scevgep4, %scevgep1
  %found.conflict8 = and i1 %bound06, %bound17
  %23 = or i1 %found.conflict8, %stride.check
  %conflict.rdx = or i1 %found.conflict, %23
  %bound09 = icmp ult ptr %scevgep2, %scevgep5.a
  %bound110 = icmp ult ptr %scevgep4, %scevgep3
  %found.conflict11 = and i1 %bound09, %bound110
  %conflict.rdx13 = or i1 %found.conflict11, %conflict.rdx
  br i1 %conflict.rdx13, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check14, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.er = add i64 %index, %i.eb                   ; 3 uses
  %24 = sub nsw i64 %i.er, %4
  %i.es = getelementptr [2 x i8], ptr %22, i64 %24 ; 4 uses
  %i.et = getelementptr i8, ptr %i.es, i64 512
  %i.eu = getelementptr i8, ptr %i.es, i64 528
  %wide.load = load <8 x i16>, ptr %i.et, align 2, !tbaa !61, !alias.scope !197
  %wide.load15 = load <8 x i16>, ptr %i.eu, align 2, !tbaa !61, !alias.scope !197
  %i.ev = getelementptr inbounds [2 x i8], ptr %21, i64 %i.er ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  store <8 x i16> %wide.load, ptr %i.ev, align 2, !tbaa !61, !alias.scope !200, !noalias !202
  store <8 x i16> %wide.load15, ptr %i.ew, align 2, !tbaa !61, !alias.scope !200, !noalias !202
end_hunk_1
begin_hunk_2
  %i.ey = getelementptr i8, ptr %i.es, i64 656
  %wide.load16 = load <8 x i16>, ptr %i.ex, align 2, !tbaa !61, !alias.scope !197
  %wide.load17 = load <8 x i16>, ptr %i.ey, align 2, !tbaa !61, !alias.scope !197
  %i.ez = getelementptr inbounds [2 x i8], ptr %i.eq, i64 %i.er ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  store <8 x i16> %wide.load16, ptr %i.ez, align 2, !tbaa !61, !alias.scope !204, !noalias !197
  store <8 x i16> %wide.load17, ptr %i.fa, align 2, !tbaa !61, !alias.scope !204, !noalias !197
end_hunk_2
begin_hunk_3

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index20 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next23, %vec.epilog.vector.body ] ; 2 uses
  %offset.idx = add i64 %index20, %i.eb           ; 3 uses
  %25 = sub nsw i64 %offset.idx, %4
  %i.fc = getelementptr [2 x i8], ptr %22, i64 %25 ; 2 uses
  %i.fd = getelementptr i8, ptr %i.fc, i64 512
  %wide.load21 = load <4 x i16>, ptr %i.fd, align 2, !tbaa !61, !alias.scope !197
  %i.fe = getelementptr inbounds [2 x i8], ptr %21, i64 %offset.idx
  store <4 x i16> %wide.load21, ptr %i.fe, align 2, !tbaa !61, !alias.scope !200, !noalias !202
  %i.ff = getelementptr i8, ptr %i.fc, i64 640
  %wide.load22 = load <4 x i16>, ptr %i.ff, align 2, !tbaa !61, !alias.scope !197
  %i.fg = getelementptr inbounds [2 x i8], ptr %i.eq, i64 %offset.idx
  store <4 x i16> %wide.load22, ptr %i.fg, align 2, !tbaa !61, !alias.scope !204, !noalias !197
  %index.next23 = add nuw i64 %index20, 4         ; 2 uses
  %i.fh = icmp eq i64 %index.next23, %n.vec19
end_hunk_3
begin_hunk_4
vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n24, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv14.ph = phi i64 [ %i.eb, %iter.check ], [ %i.eb, %vector.memcheck ], [ %i.en, %vec.epilog.iter.check ], [ %i.eo, %vec.epilog.middle.block ] ; 6 uses
  %i.fi = trunc i64 %indvars.iv14.ph to i32       ; 2 uses
  %i.fj = add i32 %i.ds, %i.fi
  %i.fk = and i32 %i.fj, 1
end_hunk_4
begin_hunk_5
  br i1 %lcmp.mod.not.not, label %vec.epilog.scalar.ph.prol, label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %26 = sub nsw i64 %indvars.iv14.ph, %4
  %i.fl = getelementptr [2 x i8], ptr %22, i64 %26 ; 2 uses
  %i.fm = getelementptr i8, ptr %i.fl, i64 512
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !61
  %i.fo = getelementptr inbounds [2 x i8], ptr %21, i64 %indvars.iv14.ph
  store i16 %i.fn, ptr %i.fo, align 2, !tbaa !61
  %i.fp = getelementptr i8, ptr %i.fl, i64 640
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !61
  %i.fr = getelementptr inbounds [2 x i8], ptr %i.eq, i64 %indvars.iv14.ph
  store i16 %i.fq, ptr %i.fr, align 2, !tbaa !61
  %indvars.iv.next15.prol = add nsw i64 %indvars.iv14.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit
end_hunk_5
begin_hunk_6

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv14 = phi i64 [ %indvars.iv.next15.1, %vec.epilog.scalar.ph ], [ %indvars.iv14.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %27 = sub nsw i64 %indvars.iv14, %4
  %i.ft = getelementptr [2 x i8], ptr %22, i64 %27 ; 2 uses
  %i.fu = getelementptr i8, ptr %i.ft, i64 512
  %i.fv = load i16, ptr %i.fu, align 2, !tbaa !61
  %i.fw = getelementptr inbounds [2 x i8], ptr %21, i64 %indvars.iv14
  store i16 %i.fv, ptr %i.fw, align 2, !tbaa !61
  %i.fx = getelementptr i8, ptr %i.ft, i64 640
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !61
  %i.fz = getelementptr inbounds [2 x i8], ptr %i.eq, i64 %indvars.iv14
  store i16 %i.fy, ptr %i.fz, align 2, !tbaa !61
  %indvars.iv.next15 = add nsw i64 %indvars.iv14, 1 ; 3 uses
  %28 = sub nsw i64 %indvars.iv.next15, %4
  %i.ga = getelementptr [2 x i8], ptr %22, i64 %28 ; 2 uses
  %i.gb = getelementptr i8, ptr %i.ga, i64 512
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !61
  %i.gd = getelementptr inbounds [2 x i8], ptr %21, i64 %indvars.iv.next15
  store i16 %i.gc, ptr %i.gd, align 2, !tbaa !61
  %i.ge = getelementptr i8, ptr %i.ga, i64 640
  %i.gf = load i16, ptr %i.ge, align 2, !tbaa !61
  %i.gg = getelementptr inbounds [2 x i8], ptr %i.eq, i64 %indvars.iv.next15
  store i16 %i.gf, ptr %i.gg, align 2, !tbaa !61
  %indvars.iv.next15.1 = add nsw i64 %indvars.iv14, 2 ; 2 uses
  %lftr.wideiv17.1 = trunc i64 %indvars.iv.next15.1 to i32
end_hunk_6
begin_hunk_7
  %indvars.iv.next20 = add nsw i64 %indvars.iv19, 1 ; 2 uses
  %lftr.wideiv22 = trunc i64 %indvars.iv.next20 to i32
  %exitcond23.not = icmp eq i32 %i.ee, %lftr.wideiv22
  br i1 %exitcond23.not, label %.loopexit, label %iter.check, !llvm.loop !208

.loopexit:                                        ; preds = %._crit_edge, %.lr.ph8, %bb.c, %bb.b
end_hunk_7
