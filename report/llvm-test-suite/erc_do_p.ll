begin_hunk_0

bb.c:                                             ; preds = %bb.b
  %i.dp = ashr i32 %i.m, %i.h                     ; 3 uses
  %i.dq = ashr i32 %i.n, %i.h                     ; 2 uses
  %.not605 = icmp sgt i32 %i.dp, %i.dq
  br i1 %.not605, label %.loopexit, label %.lr.ph8

.lr.ph8:                                          ; preds = %bb.c
  %i.dr = ashr i32 %i.k, %i.f                     ; 8 uses
  %i.ds = ashr i32 %i.do, %i.f                    ; 6 uses
  %.not613 = icmp sgt i32 %i.dr, %i.ds
  %3 = shl i32 %i.j, 2                            ; 3 uses
  br i1 %.not613, label %.loopexit, label %.lr.ph8.split

.lr.ph8.split:                                    ; preds = %.lr.ph8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 316928
  %i.du = load ptr, ptr @img, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 5932
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !16 ; 3 uses
  %i.dx = load ptr, ptr %i.dt, align 8, !tbaa !64 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !65
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !65
  %i.eb = sext i32 %i.dr to i64                   ; 8 uses
  %i.ec = add i32 %i.ds, 1
  %i.ed = sext i32 %i.dp to i64
  %i.ee = add i32 %i.dq, 1
  %i.ef = sub i32 %i.ds, %i.dr                    ; 2 uses
  %4 = sub i32 %i.dr, %3
  %i.eg = shl nsw i64 %i.eb, 1                    ; 3 uses
  %i.eh = zext i32 %i.ef to i64
  %5 = shl nuw nsw i64 %i.eh, 1                   ; 2 uses
  %i.ei = add nsw i64 %i.eg, %5
  %i.ej = add nsw i64 %i.ei, 2                    ; 2 uses
  %scevgep4 = getelementptr i8, ptr %1, i64 512
  %6 = sub i32 %i.dr, %3
  %7 = getelementptr i8, ptr %1, i64 %5
  %scevgep5.a = getelementptr i8, ptr %7, i64 642
  %i.ek = sub i32 %i.ds, %i.dr                    ; 3 uses
  %i.el = zext i32 %i.ek to i64
  %i.em = add nuw nsw i64 %i.el, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.ek, 3
  %min.iters.check14 = icmp ult i32 %i.ek, 15
  %n.mod.vf = and i64 %i.em, 12
  %n.vec = and i64 %i.em, 8589934576              ; 4 uses
end_hunk_0
begin_hunk_1
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph8.split, %._crit_edge
  %indvar = phi i32 [ 0, %.lr.ph8.split ], [ %indvar.next, %._crit_edge ] ; 3 uses
  %indvars.iv19 = phi i64 [ %i.ed, %.lr.ph8.split ], [ %indvars.iv.next20, %._crit_edge ] ; 4 uses
  %8 = mul i32 %i.dw, %indvar
  %9 = add i32 %6, %8
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 1                        ; 2 uses
  %scevgep5 = getelementptr i8, ptr %scevgep4, i64 %11 ; 2 uses
  %scevgep7 = getelementptr i8, ptr %scevgep5.a, i64 %11 ; 2 uses
  %12 = trunc i64 %indvars.iv19 to i32
  %13 = sub i32 %12, %i.dp
  %14 = mul i32 %13, %i.dw
  %invariant.op = sub i32 %14, %3                 ; 5 uses
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %indvars.iv19
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !60 ; 7 uses
  %15 = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %indvars.iv19
  %16 = load ptr, ptr %15, align 8, !tbaa !60     ; 7 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %17 = mul i32 %i.dw, %indvar
  %18 = add i32 %4, %17                           ; 2 uses
  %19 = add i32 %18, %i.ef
  %20 = icmp slt i32 %19, %18
  br i1 %20, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep = getelementptr i8, ptr %i.eq, i64 %i.eg ; 2 uses
  %scevgep1 = getelementptr i8, ptr %i.eq, i64 %i.ej ; 2 uses
  %scevgep2 = getelementptr i8, ptr %16, i64 %i.eg ; 2 uses
  %scevgep3 = getelementptr i8, ptr %16, i64 %i.ej ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep3
  %bound1 = icmp ult ptr %scevgep2, %scevgep1
  %found.conflict = and i1 %bound0, %bound1
  %bound06 = icmp ult ptr %scevgep, %scevgep7
  %bound17 = icmp ult ptr %scevgep5, %scevgep1
  %found.conflict8 = and i1 %bound06, %bound17
  %conflict.rdx = or i1 %found.conflict, %found.conflict8
  %bound09 = icmp ult ptr %scevgep2, %scevgep7
  %bound110 = icmp ult ptr %scevgep5, %scevgep3
  %found.conflict11 = and i1 %bound09, %bound110
  %conflict.rdx13 = or i1 %conflict.rdx, %found.conflict11
  br i1 %conflict.rdx13, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check14, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %invariant.op28 = add i32 %i.dr, %invariant.op
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.er = add i64 %index, %i.eb                   ; 2 uses
  %21 = trunc i64 %index to i32
  %.reass29 = add i32 %21, %invariant.op28
  %22 = sext i32 %.reass29 to i64
  %i.es = getelementptr [2 x i8], ptr %1, i64 %22 ; 4 uses
  %i.et = getelementptr i8, ptr %i.es, i64 512
  %i.eu = getelementptr i8, ptr %i.es, i64 528
  %wide.load = load <8 x i16>, ptr %i.et, align 2, !tbaa !61, !alias.scope !197
  %wide.load15 = load <8 x i16>, ptr %i.eu, align 2, !tbaa !61, !alias.scope !197
  %i.ev = getelementptr inbounds [2 x i8], ptr %i.eq, i64 %i.er ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  store <8 x i16> %wide.load, ptr %i.ev, align 2, !tbaa !61, !alias.scope !200, !noalias !202
  store <8 x i16> %wide.load15, ptr %i.ew, align 2, !tbaa !61, !alias.scope !200, !noalias !202
end_hunk_1
begin_hunk_2
  %i.ey = getelementptr i8, ptr %i.es, i64 656
  %wide.load16 = load <8 x i16>, ptr %i.ex, align 2, !tbaa !61, !alias.scope !197
  %wide.load17 = load <8 x i16>, ptr %i.ey, align 2, !tbaa !61, !alias.scope !197
  %i.ez = getelementptr inbounds [2 x i8], ptr %16, i64 %i.er ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  store <8 x i16> %wide.load16, ptr %i.ez, align 2, !tbaa !61, !alias.scope !204, !noalias !197
  store <8 x i16> %wide.load17, ptr %i.fa, align 2, !tbaa !61, !alias.scope !204, !noalias !197
end_hunk_2
begin_hunk_3

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %invariant.op30 = add i32 %i.dr, %invariant.op
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index20 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next23, %vec.epilog.vector.body ] ; 3 uses
  %offset.idx = add i64 %index20, %i.eb           ; 2 uses
  %23 = trunc i64 %index20 to i32
  %.reass31 = add i32 %23, %invariant.op30
  %24 = sext i32 %.reass31 to i64
  %i.fc = getelementptr [2 x i8], ptr %1, i64 %24 ; 2 uses
  %i.fd = getelementptr i8, ptr %i.fc, i64 512
  %wide.load21 = load <4 x i16>, ptr %i.fd, align 2, !tbaa !61, !alias.scope !197
  %i.fe = getelementptr inbounds [2 x i8], ptr %i.eq, i64 %offset.idx
  store <4 x i16> %wide.load21, ptr %i.fe, align 2, !tbaa !61, !alias.scope !200, !noalias !202
  %i.ff = getelementptr i8, ptr %i.fc, i64 640
  %wide.load22 = load <4 x i16>, ptr %i.ff, align 2, !tbaa !61, !alias.scope !197
  %i.fg = getelementptr inbounds [2 x i8], ptr %16, i64 %offset.idx
  store <4 x i16> %wide.load22, ptr %i.fg, align 2, !tbaa !61, !alias.scope !204, !noalias !197
  %index.next23 = add nuw i64 %index20, 4         ; 2 uses
  %i.fh = icmp eq i64 %index.next23, %n.vec19
end_hunk_3
begin_hunk_4
vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n24, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv14.ph = phi i64 [ %i.eb, %iter.check ], [ %i.eb, %vector.scevcheck ], [ %i.eb, %vector.memcheck ], [ %i.en, %vec.epilog.iter.check ], [ %i.eo, %vec.epilog.middle.block ] ; 6 uses
  %i.fi = trunc i64 %indvars.iv14.ph to i32       ; 2 uses
  %i.fj = add i32 %i.ds, %i.fi
  %i.fk = and i32 %i.fj, 1
end_hunk_4
begin_hunk_5
  br i1 %lcmp.mod.not.not, label %vec.epilog.scalar.ph.prol, label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %25 = trunc nsw i64 %indvars.iv14.ph to i32
  %.reass.prol = add i32 %invariant.op, %25
  %26 = sext i32 %.reass.prol to i64
  %i.fl = getelementptr [2 x i8], ptr %1, i64 %26 ; 2 uses
  %i.fm = getelementptr i8, ptr %i.fl, i64 512
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !61
  %i.fo = getelementptr inbounds [2 x i8], ptr %i.eq, i64 %indvars.iv14.ph
  store i16 %i.fn, ptr %i.fo, align 2, !tbaa !61
  %i.fp = getelementptr i8, ptr %i.fl, i64 640
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !61
  %i.fr = getelementptr inbounds [2 x i8], ptr %16, i64 %indvars.iv14.ph
  store i16 %i.fq, ptr %i.fr, align 2, !tbaa !61
  %indvars.iv.next15.prol = add nsw i64 %indvars.iv14.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit
end_hunk_5
begin_hunk_6

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv14 = phi i64 [ %indvars.iv.next15.1, %vec.epilog.scalar.ph ], [ %indvars.iv14.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %27 = trunc nsw i64 %indvars.iv14 to i32
  %.reass = add i32 %invariant.op, %27
  %28 = sext i32 %.reass to i64
  %i.ft = getelementptr [2 x i8], ptr %1, i64 %28 ; 2 uses
  %i.fu = getelementptr i8, ptr %i.ft, i64 512
  %i.fv = load i16, ptr %i.fu, align 2, !tbaa !61
  %i.fw = getelementptr inbounds [2 x i8], ptr %i.eq, i64 %indvars.iv14
  store i16 %i.fv, ptr %i.fw, align 2, !tbaa !61
  %i.fx = getelementptr i8, ptr %i.ft, i64 640
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !61
  %i.fz = getelementptr inbounds [2 x i8], ptr %16, i64 %indvars.iv14
  store i16 %i.fy, ptr %i.fz, align 2, !tbaa !61
  %indvars.iv.next15 = add nsw i64 %indvars.iv14, 1 ; 3 uses
  %29 = trunc nsw i64 %indvars.iv.next15 to i32
  %.reass.1 = add i32 %invariant.op, %29
  %30 = sext i32 %.reass.1 to i64
  %i.ga = getelementptr [2 x i8], ptr %1, i64 %30 ; 2 uses
  %i.gb = getelementptr i8, ptr %i.ga, i64 512
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !61
  %i.gd = getelementptr inbounds [2 x i8], ptr %i.eq, i64 %indvars.iv.next15
  store i16 %i.gc, ptr %i.gd, align 2, !tbaa !61
  %i.ge = getelementptr i8, ptr %i.ga, i64 640
  %i.gf = load i16, ptr %i.ge, align 2, !tbaa !61
  %i.gg = getelementptr inbounds [2 x i8], ptr %16, i64 %indvars.iv.next15
  store i16 %i.gf, ptr %i.gg, align 2, !tbaa !61
  %indvars.iv.next15.1 = add nsw i64 %indvars.iv14, 2 ; 2 uses
  %lftr.wideiv17.1 = trunc i64 %indvars.iv.next15.1 to i32
end_hunk_6
begin_hunk_7
  %indvars.iv.next20 = add nsw i64 %indvars.iv19, 1 ; 2 uses
  %lftr.wideiv22 = trunc i64 %indvars.iv.next20 to i32
  %exitcond23.not = icmp eq i32 %i.ee, %lftr.wideiv22
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond23.not, label %.loopexit, label %iter.check, !llvm.loop !208

.loopexit:                                        ; preds = %._crit_edge, %.lr.ph8, %bb.c, %bb.b
end_hunk_7
