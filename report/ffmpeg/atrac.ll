Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/atrac?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@ff_atrac_gain_compensation:bb.a
  %i.co = getelementptr [4 x i8], ptr %0, i64 %i.cn
  %i.cp = getelementptr i8, ptr %i.co, i64 124
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !10 ; 3 uses
  %i.cr = icmp slt i32 %.185, %i.cd
  br i1 %i.cr, label %.lr.ph.preheader, label %.preheader76

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.cs = zext i32 %.185 to i64                   ; 4 uses
  %wide.trip.count = zext nneg i32 %i.cd to i64   ; 4 uses
  %i.ct = sub nsw i64 %wide.trip.count, %i.cs     ; 3 uses
  %min.iters.check = icmp ult i64 %i.ct, 8
  %brmerge = or i1 %min.iters.check, %conflict.rdx
  br i1 %brmerge, label %.lr.ph.preheader168, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ct, -8                      ; 3 uses
  %i.cu = add nsw i64 %n.vec, %i.cs
  %broadcast.splatinsert120 = insertelement <4 x float> poison, float %i.ci, i64 0
  %broadcast.splat121 = shufflevector <4 x float> %broadcast.splatinsert120, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cv = add nuw i64 %index, %i.cs               ; 3 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cv ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %wide.load = load <4 x float>, ptr %i.cw, align 4, !tbaa !10
  %wide.load122 = load <4 x float>, ptr %i.cx, align 4, !tbaa !10
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cv ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %wide.load123 = load <4 x float>, ptr %i.cy, align 4, !tbaa !10
  %wide.load124 = load <4 x float>, ptr %i.cz, align 4, !tbaa !10
  %i.da = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat, <4 x float> %wide.load123)
  %i.db = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load122, <4 x float> %broadcast.splat, <4 x float> %wide.load124)
  %i.dc = fmul nsz <4 x float> %broadcast.splat121, %i.da
  %i.dd = fmul nsz <4 x float> %broadcast.splat121, %i.db
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.cv ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store <4 x float> %i.dc, ptr %i.de, align 4, !tbaa !10
  store <4 x float> %i.dd, ptr %i.df, align 4, !tbaa !10
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dg = icmp eq i64 %index.next, %n.vec
  br i1 %i.dg, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ct, %n.vec
  br i1 %cmp.n, label %.preheader76, label %.lr.ph.preheader168

.lr.ph.preheader168:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.cu, %middle.block ], [ %i.cs, %.lr.ph.preheader ] ; 7 uses
  %i.dh = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.dh, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader168
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.ph
  %i.dj = load float, ptr %i.di, align 4, !tbaa !10
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.ph
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !10
  %i.dm = tail call nsz float @llvm.fmuladd.f32(float %i.dj, float %i.j, float %i.dl)
  %i.dn = fmul nsz float %i.ci, %i.dm
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.ph
  store float %i.dn, ptr %i.do, align 4, !tbaa !10
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader168
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader168 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.dp = add nsw i64 %wide.trip.count, -1
  %i.dq = icmp eq i64 %indvars.iv.ph, %i.dp
  br i1 %i.dq, label %.preheader76, label %.lr.ph

.preheader76:                                     ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.d
  %.2.lcssa = phi i32 [ %.185, %bb.d ], [ %i.cd, %middle.block ], [ %i.cd, %.lr.ph ], [ %i.cd, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.dr = add nsw i32 %i.s, %i.cd                 ; 4 uses
  %i.ds = icmp slt i32 %.2.lcssa, %i.dr
  br i1 %i.ds, label %.lr.ph82.preheader, label %.loopexit77

.lr.ph82.preheader:                               ; preds = %.preheader76
  %i.dt = zext i32 %.2.lcssa to i64               ; 7 uses
  %i.du = zext nneg i32 %i.dr to i64              ; 3 uses
  %i.dv = sub nsw i64 %i.du, %i.dt
  %xtraiter169 = and i64 %i.dv, 1
  %lcmp.mod170.not = icmp eq i64 %xtraiter169, 0
  br i1 %lcmp.mod170.not, label %.lr.ph82.prol.loopexit, label %.lr.ph82.prol

.lr.ph82.prol:                                    ; preds = %.lr.ph82.preheader
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dt
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !10
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dt
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !10
  %i.ea = tail call nsz float @llvm.fmuladd.f32(float %i.dx, float %i.j, float %i.dz)
  %i.eb = fmul nsz float %i.ci, %i.ea
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.dt
  store float %i.eb, ptr %i.ec, align 4, !tbaa !10
  %i.ed = fmul nsz float %i.cq, %i.ci
  %indvars.iv.next96.prol = add nuw nsw i64 %i.dt, 1
  br label %.lr.ph82.prol.loopexit

.lr.ph82.prol.loopexit:                           ; preds = %.lr.ph82.prol, %.lr.ph82.preheader
  %indvars.iv95.unr = phi i64 [ %i.dt, %.lr.ph82.preheader ], [ %indvars.iv.next96.prol, %.lr.ph82.prol ]
  %.07080.unr = phi float [ %i.ci, %.lr.ph82.preheader ], [ %i.ed, %.lr.ph82.prol ]
  %i.ee = add nsw i64 %i.du, -1
  %i.ef = icmp eq i64 %i.ee, %i.dt
  br i1 %i.ef, label %.loopexit77, label %.lr.ph82

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !10
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !10
  %i.ek = tail call nsz float @llvm.fmuladd.f32(float %i.eh, float %i.j, float %i.ej)
  %i.el = fmul nsz float %i.ci, %i.ek
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv
  store float %i.el, ptr %i.em, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.eo = load float, ptr %i.en, align 4, !tbaa !10
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !10
  %i.er = tail call nsz float @llvm.fmuladd.f32(float %i.eo, float %i.j, float %i.eq)
  %i.es = fmul nsz float %i.ci, %i.er
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next
  store float %i.es, ptr %i.et, align 4, !tbaa !10
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.preheader76, label %.lr.ph, !llvm.loop !27

.lr.ph82:                                         ; preds = %.lr.ph82.prol.loopexit, %.lr.ph82
  %indvars.iv95 = phi i64 [ %indvars.iv.next96.1, %.lr.ph82 ], [ %indvars.iv95.unr, %.lr.ph82.prol.loopexit ] ; 5 uses
  %.07080 = phi float [ %i.fj, %.lr.ph82 ], [ %.07080.unr, %.lr.ph82.prol.loopexit ] ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv95
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !10
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv95
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !10
  %i.ey = tail call nsz float @llvm.fmuladd.f32(float %i.ev, float %i.j, float %i.ex)
  %i.ez = fmul nsz float %.07080, %i.ey
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv95
  store float %i.ez, ptr %i.fa, align 4, !tbaa !10
  %i.fb = fmul nsz float %i.cq, %.07080           ; 2 uses
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 3 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next96
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !10
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next96
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !10
  %i.fg = tail call nsz float @llvm.fmuladd.f32(float %i.fd, float %i.j, float %i.ff)
  %i.fh = fmul nsz float %i.fb, %i.fg
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next96
  store float %i.fh, ptr %i.fi, align 4, !tbaa !10
  %i.fj = fmul nsz float %i.cq, %i.fb
  %indvars.iv.next96.1 = add nuw nsw i64 %indvars.iv95, 2 ; 2 uses
  %exitcond98.not.1 = icmp eq i64 %indvars.iv.next96.1, %i.du
  br i1 %exitcond98.not.1, label %.loopexit77, label %.lr.ph82, !llvm.loop !28

.lr.ph89:                                         ; preds = %.lr.ph89.prol.loopexit, %.lr.ph89
  %indvars.iv104 = phi i64 [ %indvars.iv.next105.1, %.lr.ph89 ], [ %indvars.iv104.unr, %.lr.ph89.prol.loopexit ] ; 5 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv104
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !10
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv104
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !10
  %i.fo = tail call nsz float @llvm.fmuladd.f32(float %i.fl, float %i.j, float %i.fn)
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv104
  store float %i.fo, ptr %i.fp, align 4, !tbaa !10
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 3 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next105
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !10
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next105
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !10
  %i.fu = tail call nsz float @llvm.fmuladd.f32(float %i.fr, float %i.j, float %i.ft)
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv.next105
  store float %i.fu, ptr %i.fv, align 4, !tbaa !10
  %indvars.iv.next105.1 = add nuw nsw i64 %indvars.iv104, 2 ; 2 uses
  %exitcond108.not.1 = icmp eq i64 %indvars.iv.next105.1, %wide.trip.count107
  br i1 %exitcond108.not.1, label %.loopexit, label %.lr.ph89, !llvm.loop !29

.loopexit:                                        ; preds = %.lr.ph89.prol.loopexit, %.lr.ph89, %.lr.ph91.prol.loopexit, %.lr.ph91, %middle.block142, %middle.block162, %.preheader74, %.preheader
  %i.fw = sext i32 %5 to i64                      ; 2 uses
  %i.fx = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fw
  %i.fy = shl nsw i64 %i.fw, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr align 4 %i.fx, i64 %i.fy, i1 false)
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ff_atrac_iqmf(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) initializes((0, 184)) %5) local_unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(184) %5, ptr noundef nonnull align 4 dereferenceable(184) %4, i64 184, i1 false)
  %i.a = getelementptr i8, ptr %5, i64 184        ; 4 uses
  %.not67 = icmp eq i32 %2, 0
  br i1 %.not67, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext i32 %2 to i64                       ; 2 uses
  %i.c = add nsw i64 %i.b, -1                     ; 2 uses
  %i.d = lshr i64 %i.c, 1
  %i.e = add nuw i64 %i.d, 1                      ; 2 uses
  %min.iters.check = icmp ult i32 %2, 15
  br i1 %min.iters.check, label %.lr.ph.preheader275, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.f = lshr i64 %i.c, 1                         ; 2 uses
  %i.g = shl i64 %i.f, 4
  %i.h = getelementptr i8, ptr %5, i64 %i.g
  %scevgep = getelementptr i8, ptr %i.h, i64 200  ; 2 uses
  %i.i = shl i64 %i.f, 3
  %i.j = add i64 %i.i, 8                          ; 2 uses
  %scevgep73 = getelementptr i8, ptr %0, i64 %i.j
  %scevgep74 = getelementptr i8, ptr %1, i64 %i.j
  %bound0 = icmp ult ptr %i.a, %scevgep73
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound075 = icmp ult ptr %i.a, %scevgep74
  %bound176 = icmp ult ptr %1, %scevgep
  %found.conflict77 = and i1 %bound075, %bound176
  %conflict.rdx = or i1 %found.conflict, %found.conflict77
  br i1 %conflict.rdx, label %.lr.ph.preheader275, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, -4                       ; 3 uses
  %i.k = shl i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.l = shl nuw i64 %index, 1                    ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l ; 2 uses
  %wide.vec = load <8 x float>, ptr %i.m, align 4, !tbaa !10, !alias.scope !44 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec78 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.l ; 2 uses
  %wide.vec79 = load <8 x float>, ptr %i.n, align 4, !tbaa !10, !alias.scope !45 ; 2 uses
  %strided.vec80 = shufflevector <8 x float> %wide.vec79, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec81 = shufflevector <8 x float> %wide.vec79, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.o = fadd nsz <4 x float> %strided.vec, %strided.vec80
  %i.p = shl nuw i64 %index, 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.p
  %wide.vec82 = load <8 x float>, ptr %i.m, align 4, !tbaa !10, !alias.scope !44 ; 2 uses
  %strided.vec83 = shufflevector <8 x float> %wide.vec82, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec84 = shufflevector <8 x float> %wide.vec82, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec85 = load <8 x float>, ptr %i.n, align 4, !tbaa !10, !alias.scope !45 ; 2 uses
  %strided.vec86 = shufflevector <8 x float> %wide.vec85, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec87 = shufflevector <8 x float> %wide.vec85, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.r = fsub nsz <4 x float> %strided.vec83, %strided.vec86
  %i.s = fadd nsz <4 x float> %strided.vec78, %strided.vec81
  %i.t = fsub nsz <4 x float> %strided.vec84, %strided.vec87
  %i.u = shufflevector <4 x float> %i.o, <4 x float> %i.r, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.v = shufflevector <4 x float> %i.s, <4 x float> %i.t, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.u, <8 x float> %i.v, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.q, align 4, !tbaa !10, !alias.scope !46, !noalias !47
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !37

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %.preheader.preheader, label %.lr.ph.preheader275

.lr.ph.preheader275:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  br label %.lr.ph

.preheader.preheader:                             ; preds = %.lr.ph, %middle.block
  %i.x = load <2 x float>, ptr @qmf_window, align 16, !tbaa !10 ; 3 uses
  %i.y = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @qmf_window, i64 8), align 8, !tbaa !10 ; 3 uses
  %i.z = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @qmf_window, i64 16), align 16, !tbaa !10 ; 3 uses
  %i.aa = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @qmf_window, i64 24), align 8, !tbaa !10 ; 3 uses
  %i.ab = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @qmf_window, i64 32), align 16, !tbaa !10 ; 3 uses
  %i.ac = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @qmf_window, i64 40), align 8, !tbaa !10 ; 3 uses
  %i.ad = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @qmf_window, i64 48), align 16, !tbaa !10 ; 3 uses
  %i.ae = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @qmf_window, i64 56), align 8, !tbaa !10 ; 3 uses
  %i.af = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @qmf_window, i64 64), align 16, !tbaa !10 ; 3 uses
  %i.ag = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @qmf_window, i64 72), align 8, !tbaa !10 ; 3 uses
  %i.ah = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @qmf_window, i64 80), align 16, !tbaa !10 ; 3 uses
  %i.ai = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @qmf_window, i64 88), align 8, !tbaa !10 ; 3 uses
  %i.aj = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @qmf_window, i64 96), align 16, !tbaa !10 ; 3 uses
  %i.ak = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @qmf_window, i64 104), align 8, !tbaa !10 ; 3 uses
  %i.al = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @qmf_window, i64 112), align 16, !tbaa !10 ; 3 uses
  %i.am = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @qmf_window, i64 120), align 8, !tbaa !10 ; 3 uses
  %i.an = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @qmf_window, i64 128), align 16, !tbaa !10 ; 3 uses
  %i.ao = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @qmf_window, i64 136), align 8, !tbaa !10 ; 3 uses
  %i.ap = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @qmf_window, i64 144), align 16, !tbaa !10 ; 3 uses
  %i.aq = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @qmf_window, i64 152), align 8, !tbaa !10 ; 3 uses
  %i.ar = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @qmf_window, i64 160), align 16, !tbaa !10 ; 3 uses
  %i.as = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @qmf_window, i64 168), align 8, !tbaa !10 ; 3 uses
  %i.at = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @qmf_window, i64 176), align 16, !tbaa !10 ; 3 uses
  %i.au = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @qmf_window, i64 184), align 8, !tbaa !10 ; 3 uses
  %i.av = zext i32 %2 to i64                      ; 2 uses
  %min.iters.check95 = icmp ult i32 %2, 4
  br i1 %min.iters.check95, label %.preheader.preheader274, label %vector.memcheck88

vector.memcheck88:                                ; preds = %.preheader.preheader
  %i.aw = add i32 %2, -1
  %i.ax = zext i32 %i.aw to i64
  %i.ay = shl nuw nsw i64 %i.ax, 3                ; 2 uses
  %i.az = getelementptr i8, ptr %3, i64 %i.ay
  %scevgep89 = getelementptr i8, ptr %i.az, i64 8
  %i.ba = getelementptr i8, ptr %5, i64 %i.ay
  %scevgep90 = getelementptr i8, ptr %i.ba, i64 192
  %bound091 = icmp ult ptr %3, %scevgep90
  %bound192 = icmp ult ptr %5, %scevgep89
  %found.conflict93 = and i1 %bound091, %bound192
  br i1 %found.conflict93, label %.preheader.preheader274, label %vector.ph96

vector.ph96:                                      ; preds = %vector.memcheck88
  %n.vec97 = and i64 %i.av, 4294967292            ; 4 uses
  %i.bb = shl nuw nsw i64 %n.vec97, 3             ; 2 uses
  %i.bc = getelementptr i8, ptr %5, i64 %i.bb
  %i.bd = trunc nuw i64 %n.vec97 to i32
  %i.be = sub i32 %2, %i.bd
  %i.bf = getelementptr i8, ptr %3, i64 %i.bb
  %broadcast.splat = shufflevector <2 x float> %i.x, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat99 = shufflevector <2 x float> %i.x, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat101 = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat103 = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat105 = shufflevector <2 x float> %i.z, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat107 = shufflevector <2 x float> %i.z, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat109 = shufflevector <2 x float> %i.aa, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat111 = shufflevector <2 x float> %i.aa, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat113 = shufflevector <2 x float> %i.ab, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat115 = shufflevector <2 x float> %i.ab, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat117 = shufflevector <2 x float> %i.ac, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat119 = shufflevector <2 x float> %i.ac, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat121 = shufflevector <2 x float> %i.ad, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat123 = shufflevector <2 x float> %i.ad, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat125 = shufflevector <2 x float> %i.ae, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat127 = shufflevector <2 x float> %i.ae, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat129 = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat131 = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat133 = shufflevector <2 x float> %i.ag, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat135 = shufflevector <2 x float> %i.ag, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat137 = shufflevector <2 x float> %i.ah, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat139 = shufflevector <2 x float> %i.ah, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat141 = shufflevector <2 x float> %i.ai, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat143 = shufflevector <2 x float> %i.ai, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat145 = shufflevector <2 x float> %i.aj, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat147 = shufflevector <2 x float> %i.aj, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat149 = shufflevector <2 x float> %i.ak, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat151 = shufflevector <2 x float> %i.ak, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat153 = shufflevector <2 x float> %i.al, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat155 = shufflevector <2 x float> %i.al, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat157 = shufflevector <2 x float> %i.am, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat159 = shufflevector <2 x float> %i.am, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat161 = shufflevector <2 x float> %i.an, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat163 = shufflevector <2 x float> %i.an, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat165 = shufflevector <2 x float> %i.ao, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat167 = shufflevector <2 x float> %i.ao, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat169 = shufflevector <2 x float> %i.ap, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat171 = shufflevector <2 x float> %i.ap, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat173 = shufflevector <2 x float> %i.aq, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat175 = shufflevector <2 x float> %i.aq, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat177 = shufflevector <2 x float> %i.ar, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat179 = shufflevector <2 x float> %i.ar, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat181 = shufflevector <2 x float> %i.as, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat183 = shufflevector <2 x float> %i.as, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat185 = shufflevector <2 x float> %i.at, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat187 = shufflevector <2 x float> %i.at, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat189 = shufflevector <2 x float> %i.au, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat191 = shufflevector <2 x float> %i.au, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vector.body192

vector.body192:                                   ; preds = %vector.body192, %vector.ph96
  %index193 = phi i64 [ 0, %vector.ph96 ], [ %index.next268, %vector.body192 ] ; 2 uses
  %i.bg = shl i64 %index193, 3                    ; 2 uses
  %next.gep = getelementptr i8, ptr %5, i64 %i.bg ; 24 uses
  %next.gep194 = getelementptr i8, ptr %3, i64 %i.bg
  %wide.vec195 = load <8 x float>, ptr %next.gep, align 4, !tbaa !10, !alias.scope !48 ; 2 uses
  %strided.vec196 = shufflevector <8 x float> %wide.vec195, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec197 = shufflevector <8 x float> %wide.vec195, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bh = fmul nsz <4 x float> %strided.vec196, %broadcast.splat
  %i.bi = fmul nsz <4 x float> %strided.vec197, %broadcast.splat99
  %i.bj = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %wide.vec198 = load <8 x float>, ptr %i.bj, align 4, !tbaa !10, !alias.scope !48 ; 2 uses
  %strided.vec199 = shufflevector <8 x float> %wide.vec198, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec200 = shufflevector <8 x float> %wide.vec198, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bk = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec199, <4 x float> %broadcast.splat101, <4 x float> %i.bh)
  %i.bl = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec200, <4 x float> %broadcast.splat103, <4 x float> %i.bi)
  %i.bm = getelementptr inbounds nuw i8, ptr %next.gep, i64 16
  %wide.vec201 = load <8 x float>, ptr %i.bm, align 4, !tbaa !10, !alias.scope !48 ; 2 uses
  %strided.vec202 = shufflevector <8 x float> %wide.vec201, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec203 = shufflevector <8 x float> %wide.vec201, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bn = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec202, <4 x float> %broadcast.splat105, <4 x float> %i.bk)
  %i.bo = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec203, <4 x float> %broadcast.splat107, <4 x float> %i.bl)
  %i.bp = getelementptr inbounds nuw i8, ptr %next.gep, i64 24
  %wide.vec204 = load <8 x float>, ptr %i.bp, align 4, !tbaa !10, !alias.scope !48 ; 2 uses
  %strided.vec205 = shufflevector <8 x float> %wide.vec204, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec206 = shufflevector <8 x float> %wide.vec204, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bq = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec205, <4 x float> %broadcast.splat109, <4 x float> %i.bn)
  %i.br = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec206, <4 x float> %broadcast.splat111, <4 x float> %i.bo)
  %i.bs = getelementptr inbounds nuw i8, ptr %next.gep, i64 32
  %wide.vec207 = load <8 x float>, ptr %i.bs, align 4, !tbaa !10, !alias.scope !48 ; 2 uses
  %strided.vec208 = shufflevector <8 x float> %wide.vec207, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec209 = shufflevector <8 x float> %wide.vec207, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bt = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec208, <4 x float> %broadcast.splat113, <4 x float> %i.bq)
  %i.bu = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec209, <4 x float> %broadcast.splat115, <4 x float> %i.br)
  %i.bv = getelementptr inbounds nuw i8, ptr %next.gep, i64 40
  %wide.vec210 = load <8 x float>, ptr %i.bv, align 4, !tbaa !10, !alias.scope !48 ; 2 uses
  %strided.vec211 = shufflevector <8 x float> %wide.vec210, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec212 = shufflevector <8 x float> %wide.vec210, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bw = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec211, <4 x float> %broadcast.splat117, <4 x float> %i.bt)
  %i.bx = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec212, <4 x float> %broadcast.splat119, <4 x float> %i.bu)
  %i.by = getelementptr inbounds nuw i8, ptr %next.gep, i64 48
end_hunk_0
