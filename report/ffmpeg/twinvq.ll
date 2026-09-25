Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/twinvq?download=true
inline.NumInlined: 30
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 22
begin_hunk_0_@dequant:bb.a
  %xtraiter109 = and i64 %wide.trip.count89, 1
  %i.cx = icmp eq i8 %i.x, 1
  br i1 %i.cx, label %.lr.ph.split.split.us.epil.preheader, label %.lr.ph.split.split.us.preheader.new

.lr.ph.split.split.us.preheader.new:              ; preds = %.lr.ph.split.split.us.preheader
  %unroll_iter112 = and i64 %wide.trip.count89, 254
  br label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.split.us, %.lr.ph.split.split.us.preheader.new
  %indvars.iv76 = phi i64 [ 0, %.lr.ph.split.split.us.preheader.new ], [ %indvars.iv.next77.1, %.lr.ph.split.split.us ] ; 5 uses
  %niter113 = phi i64 [ 0, %.lr.ph.split.split.us.preheader.new ], [ %niter113.next.1, %.lr.ph.split.split.us ]
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv76
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !63
  %i.da = sext i16 %i.cz to i32
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %indvars.iv76
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !63
  %i.dd = sext i16 %i.dc to i32
  %i.de = sub nsw i32 %i.da, %i.dd
  %i.df = sitofp nsz i32 %i.de to float
  %gep97 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep100, i64 %indvars.iv76
  %i.dg = load i16, ptr %gep97, align 2, !tbaa !63
  %i.dh = sext i16 %i.dg to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dh
  store float %i.df, ptr %i.di, align 4, !tbaa !47
  %indvars.iv.next77 = or disjoint i64 %indvars.iv76, 1 ; 3 uses
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv.next77
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !63
  %i.dl = sext i16 %i.dk to i32
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %indvars.iv.next77
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !63
  %i.do = sext i16 %i.dn to i32
  %i.dp = sub nsw i32 %i.dl, %i.do
  %i.dq = sitofp nsz i32 %i.dp to float
  %gep97.1 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep100, i64 %indvars.iv.next77
  %i.dr = load i16, ptr %gep97.1, align 2, !tbaa !63
  %i.ds = sext i16 %i.dr to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ds
  store float %i.dq, ptr %i.dt, align 4, !tbaa !47
  %indvars.iv.next77.1 = add nuw nsw i64 %indvars.iv76, 2 ; 2 uses
  %niter113.next.1 = add nuw i64 %niter113, 2     ; 2 uses
  %niter113.ncmp.1 = icmp eq i64 %niter113.next.1, %unroll_iter112
  br i1 %niter113.ncmp.1, label %._crit_edge.loopexit106.unr-lcssa, label %.lr.ph.split.split.us, !llvm.loop !147

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split, %.lr.ph.split.split.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.split.preheader.new ], [ %indvars.iv.next.1, %.lr.ph.split.split ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.split.split.preheader.new ], [ %niter.next.1, %.lr.ph.split.split ]
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !63
  %i.dw = sext i16 %i.dv to i32
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %indvars.iv
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !63
  %i.dz = sext i16 %i.dy to i32
  %i.ea = add nsw i32 %i.dz, %i.dw
  %i.eb = sitofp nsz i32 %i.ea to float
  %gep = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep100, i64 %indvars.iv
  %i.ec = load i16, ptr %gep, align 2, !tbaa !63
  %i.ed = sext i16 %i.ec to i64
  %i.ee = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ed
  store float %i.eb, ptr %i.ee, align 4, !tbaa !47
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv.next
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !63
  %i.eh = sext i16 %i.eg to i32
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %indvars.iv.next
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !63
  %i.ek = sext i16 %i.ej to i32
  %i.el = add nsw i32 %i.ek, %i.eh
  %i.em = sitofp nsz i32 %i.el to float
  %gep.1 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep100, i64 %indvars.iv.next
  %i.en = load i16, ptr %gep.1, align 2, !tbaa !63
  %i.eo = sext i16 %i.en to i64
  %i.ep = getelementptr inbounds [4 x i8], ptr %2, i64 %i.eo
  store float %i.em, ptr %i.ep, align 4, !tbaa !47
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit107.unr-lcssa, label %.lr.ph.split.split, !llvm.loop !147

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph.split.us.split.us
  %lcmp.mod120.not = icmp eq i64 %xtraiter119, 0
  br i1 %lcmp.mod120.not, label %._crit_edge, label %.lr.ph.split.us.split.us.epil.preheader

.lr.ph.split.us.split.us.epil.preheader:          ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.us.split.us.preheader
  %indvars.iv86.epil.init = phi i64 [ 0, %.lr.ph.split.us.split.us.preheader ], [ %indvars.iv.next87.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod121 = trunc i8 %i.x to i1
  tail call void @llvm.assume(i1 %lcmp.mod121)
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv86.epil.init
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !63
  %i.es = sext i16 %i.er to i32
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %indvars.iv86.epil.init
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !63
  %i.ev = sext i16 %i.eu to i32
  %i.ew = add nsw i32 %i.ev, %i.es
  %i.ex = sub nsw i32 0, %i.ew
  %i.ey = sitofp nsz i32 %i.ex to float
  %gep101.epil = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep100, i64 %indvars.iv86.epil.init
  %i.ez = load i16, ptr %gep101.epil, align 2, !tbaa !63
  %i.fa = sext i16 %i.ez to i64
  %i.fb = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fa
  store float %i.ey, ptr %i.fb, align 4, !tbaa !47
  br label %._crit_edge

._crit_edge.loopexit105.unr-lcssa:                ; preds = %.lr.ph.split.us.split
  %lcmp.mod115.not = icmp eq i64 %xtraiter114, 0
  br i1 %lcmp.mod115.not, label %._crit_edge, label %.lr.ph.split.us.split.epil.preheader

.lr.ph.split.us.split.epil.preheader:             ; preds = %._crit_edge.loopexit105.unr-lcssa, %.lr.ph.split.us.split.preheader
  %indvars.iv81.epil.init = phi i64 [ 0, %.lr.ph.split.us.split.preheader ], [ %indvars.iv.next82.1, %._crit_edge.loopexit105.unr-lcssa ] ; 3 uses
  %lcmp.mod116 = trunc i8 %i.x to i1
  tail call void @llvm.assume(i1 %lcmp.mod116)
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv81.epil.init
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !63
  %i.fe = sext i16 %i.fd to i32
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %indvars.iv81.epil.init
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !63
  %i.fh = sext i16 %i.fg to i32
  %i.fi = sub nsw i32 %i.fh, %i.fe
  %i.fj = sitofp nsz i32 %i.fi to float
  %gep99.epil = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep100, i64 %indvars.iv81.epil.init
  %i.fk = load i16, ptr %gep99.epil, align 2, !tbaa !63
  %i.fl = sext i16 %i.fk to i64
  %i.fm = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fl
  store float %i.fj, ptr %i.fm, align 4, !tbaa !47
  br label %._crit_edge

._crit_edge.loopexit106.unr-lcssa:                ; preds = %.lr.ph.split.split.us
  %lcmp.mod110.not = icmp eq i64 %xtraiter109, 0
  br i1 %lcmp.mod110.not, label %._crit_edge, label %.lr.ph.split.split.us.epil.preheader

.lr.ph.split.split.us.epil.preheader:             ; preds = %._crit_edge.loopexit106.unr-lcssa, %.lr.ph.split.split.us.preheader
  %indvars.iv76.epil.init = phi i64 [ 0, %.lr.ph.split.split.us.preheader ], [ %indvars.iv.next77.1, %._crit_edge.loopexit106.unr-lcssa ] ; 3 uses
  %lcmp.mod111 = trunc i8 %i.x to i1
  tail call void @llvm.assume(i1 %lcmp.mod111)
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv76.epil.init
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !63
  %i.fp = sext i16 %i.fo to i32
  %i.fq = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %indvars.iv76.epil.init
  %i.fr = load i16, ptr %i.fq, align 2, !tbaa !63
  %i.fs = sext i16 %i.fr to i32
  %i.ft = sub nsw i32 %i.fp, %i.fs
  %i.fu = sitofp nsz i32 %i.ft to float
  %gep97.epil = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep100, i64 %indvars.iv76.epil.init
  %i.fv = load i16, ptr %gep97.epil, align 2, !tbaa !63
  %i.fw = sext i16 %i.fv to i64
  %i.fx = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fw
  store float %i.fu, ptr %i.fx, align 4, !tbaa !47
  br label %._crit_edge

._crit_edge.loopexit107.unr-lcssa:                ; preds = %.lr.ph.split.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.split.split.epil.preheader

.lr.ph.split.split.epil.preheader:                ; preds = %._crit_edge.loopexit107.unr-lcssa, %.lr.ph.split.split.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split.split.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit107.unr-lcssa ] ; 3 uses
  %lcmp.mod108 = trunc i8 %i.x to i1
  tail call void @llvm.assume(i1 %lcmp.mod108)
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv.epil.init
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !63
  %i.ga = sext i16 %i.fz to i32
  %i.gb = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %indvars.iv.epil.init
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !63
  %i.gd = sext i16 %i.gc to i32
  %i.ge = add nsw i32 %i.gd, %i.ga
  %i.gf = sitofp nsz i32 %i.ge to float
  %gep.epil = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep100, i64 %indvars.iv.epil.init
  %i.gg = load i16, ptr %gep.epil, align 2, !tbaa !63
  %i.gh = sext i16 %i.gg to i64
  %i.gi = getelementptr inbounds [4 x i8], ptr %2, i64 %i.gh
  store float %i.gf, ptr %i.gi, align 4, !tbaa !47
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split.split.epil.preheader, %._crit_edge.loopexit107.unr-lcssa, %.lr.ph.split.split.us.epil.preheader, %._crit_edge.loopexit106.unr-lcssa, %.lr.ph.split.us.split.epil.preheader, %._crit_edge.loopexit105.unr-lcssa, %.lr.ph.split.us.split.us.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.b
  %i.gj = add nuw nsw i32 %.05364, %i.y
  %i.gk = add nuw nsw i32 %.05267, 1              ; 2 uses
  %exitcond91.not = icmp eq i32 %i.gk, %i.d
  br i1 %exitcond91.not, label %._crit_edge70, label %bb.b, !llvm.loop !148

._crit_edge70:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.exp.f64(double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

declare void @ff_sort_nearly_sorted_floats(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.cos.f64(double) #6

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @eval_lpcenv_or_interp(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 1, 3) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3, i32 noundef range(i32 0, 32768) %4, i32 noundef range(i32 2, 17) %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 34064
  %i.d = zext nneg i32 %1 to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !60   ; 18 uses
  %.not141 = icmp eq i32 %4, 0
  br i1 %.not141, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not.i = icmp eq i32 %6, 0                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 194
  %i.h = load i8, ptr %i.g, align 2, !tbaa !56    ; 2 uses
  %i.i = icmp ugt i8 %i.h, 1
  %i.j = zext nneg i32 %5 to i64                  ; 17 uses
  %i.k = zext nneg i32 %4 to i64                  ; 8 uses
  br i1 %i.i, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.l = zext i8 %i.h to i64
  %i.m = add nsw i64 %i.l, -2                     ; 2 uses
  %i.n = lshr i64 %i.m, 2                         ; 2 uses
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %i.p = icmp eq i64 %i.n, 0
  %unroll_iter = and i64 %i.o, 9223372036854775806
  %i.q = and i64 %i.m, 4
  %lcmp.mod.not.not = icmp eq i64 %i.q, 0
  %lcmp.mod186 = trunc i64 %i.o to i1
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %eval_lpc_spectrum.exit.loopexit.us
  %indvars.iv152 = phi i64 [ %indvars.iv.next153, %eval_lpc_spectrum.exit.loopexit.us ], [ 0, %.lr.ph.split.us.preheader ] ; 4 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.r = trunc nuw nsw i64 %indvars.iv152 to i32
  %i.s = xor i32 %i.r, -1
  %i.t = add nsw i32 %4, %i.s
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.u
  %i.w = load float, ptr %i.v, align 4, !tbaa !47
  %i.x = fneg nsz float %i.w
  br label %get_cos.exit.us

bb.c:                                             ; preds = %.lr.ph.split.us
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv152
  %i.z = load float, ptr %i.y, align 4, !tbaa !47
  br label %get_cos.exit.us

get_cos.exit.us:                                  ; preds = %bb.c, %bb.b
  %i.aa = phi nsz float [ %i.x, %bb.b ], [ %i.z, %bb.c ]
  %i.ab = fmul nsz float %i.aa, 2.000000e+00      ; 3 uses
  %i.ac = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer ; 6 uses
  br i1 %i.p, label %.lr.ph.i.us.epil.preheader, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %get_cos.exit.us, %.lr.ph.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us.1, %.lr.ph.i.us ], [ 0, %get_cos.exit.us ] ; 3 uses
  %i.ae = phi <2 x float> [ %i.av, %.lr.ph.i.us ], [ splat (float 5.000000e-01), %get_cos.exit.us ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i.us ], [ 0, %get_cos.exit.us ]
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i.us ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load <2 x float>, ptr %i.af, align 4, !tbaa !47
  %i.ai = fsub nsz <2 x float> %i.ah, %i.ad
  %i.aj = fmul nsz <2 x float> %i.ae, %i.ai
  %i.ak = load <2 x float>, ptr %i.ag, align 4, !tbaa !47
  %i.al = fsub nsz <2 x float> %i.ak, %i.ad
  %i.am = fmul nsz <2 x float> %i.aj, %i.al
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i.us ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.aq = load <2 x float>, ptr %i.ao, align 4, !tbaa !47
  %i.ar = fsub nsz <2 x float> %i.aq, %i.ad
  %i.as = fmul nsz <2 x float> %i.am, %i.ar
  %i.at = load <2 x float>, ptr %i.ap, align 4, !tbaa !47
  %i.au = fsub nsz <2 x float> %i.at, %i.ad
  %i.av = fmul nsz <2 x float> %i.as, %i.au       ; 3 uses
  %indvars.iv.next.i.us.1 = add nuw nsw i64 %indvars.iv.i.us, 8 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %eval_lpc_spectrum.exit.loopexit.us.unr-lcssa, label %.lr.ph.i.us, !llvm.loop !0

eval_lpc_spectrum.exit.loopexit.us.unr-lcssa:     ; preds = %.lr.ph.i.us
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.us.epil.preheader, label %eval_lpc_spectrum.exit.loopexit.us

.lr.ph.i.us.epil.preheader:                       ; preds = %eval_lpc_spectrum.exit.loopexit.us.unr-lcssa, %get_cos.exit.us
  %indvars.iv.i.us.epil.init = phi i64 [ 0, %get_cos.exit.us ], [ %indvars.iv.next.i.us.1, %eval_lpc_spectrum.exit.loopexit.us.unr-lcssa ]
  %.epil.init = phi <2 x float> [ splat (float 5.000000e-01), %get_cos.exit.us ], [ %i.av, %eval_lpc_spectrum.exit.loopexit.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod186)
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i.us.epil.init ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load <2 x float>, ptr %i.aw, align 4, !tbaa !47
  %i.az = fsub nsz <2 x float> %i.ay, %i.ad
  %i.ba = fmul nsz <2 x float> %.epil.init, %i.az
  %i.bb = load <2 x float>, ptr %i.ax, align 4, !tbaa !47
  %i.bc = fsub nsz <2 x float> %i.bb, %i.ad
  %i.bd = fmul nsz <2 x float> %i.ba, %i.bc
  br label %eval_lpc_spectrum.exit.loopexit.us

eval_lpc_spectrum.exit.loopexit.us:               ; preds = %eval_lpc_spectrum.exit.loopexit.us.unr-lcssa, %.lr.ph.i.us.epil.preheader
  %.lcssa182 = phi <2 x float> [ %i.av, %eval_lpc_spectrum.exit.loopexit.us.unr-lcssa ], [ %i.bd, %.lr.ph.i.us.epil.preheader ] ; 2 uses
  %i.be = fsub nsz float 2.000000e+00, %i.ab
  %i.bf = fadd nsz float %i.ab, 2.000000e+00
  %i.bg = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bh = insertelement <2 x float> %i.bg, float %i.be, i64 1
  %i.bi = fmul nsz <2 x float> %i.bh, %.lcssa182
  %i.bj = fmul nsz <2 x float> %.lcssa182, %i.bi
  %i.bk = tail call reassoc nsz float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.bj)
  %i.bl = fdiv nsz float 5.000000e-01, %i.bk
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv152
  store float %i.bl, ptr %i.bm, align 4, !tbaa !47
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, %i.j ; 2 uses
  %i.bn = icmp samesign ult i64 %indvars.iv.next153, %i.k
  br i1 %i.bn, label %.lr.ph.split.us, label %.preheader, !llvm.loop !149

.lr.ph.split:                                     ; preds = %.lr.ph
  %7 = add nsw i64 %i.k, -1
  %8 = udiv i64 %7, %i.j                          ; 3 uses
  %9 = add nuw i64 %8, 1                          ; 4 uses
  br i1 %.not.i, label %get_cos.exit.us136.preheader, label %get_cos.exit.preheader

get_cos.exit.preheader:                           ; preds = %.lr.ph.split
  %min.iters.check = icmp ult i64 %8, 15
  br i1 %min.iters.check, label %get_cos.exit.preheader201, label %vector.memcheck

vector.memcheck:                                  ; preds = %get_cos.exit.preheader
  %10 = add nsw i64 %i.k, -1
  %11 = udiv i64 %10, %i.j                        ; 2 uses
  %12 = mul i64 %11, %i.j
  %13 = shl i64 %12, 2
  %14 = getelementptr i8, ptr %2, i64 %13
  %scevgep = getelementptr i8, ptr %14, i64 4
  %15 = sub nsw i32 0, %5
  %16 = sext i32 %15 to i64
  %17 = mul i64 %11, %16
  %18 = shl nuw nsw i64 %i.k, 2
  %19 = add i64 %17, %i.k
  %20 = shl i64 %19, 2
  %21 = getelementptr i8, ptr %i.f, i64 %20
  %scevgep179 = getelementptr i8, ptr %21, i64 -4
  %scevgep180 = getelementptr i8, ptr %i.f, i64 %18
  %bound0 = icmp ult ptr %2, %scevgep180
  %bound1 = icmp ult ptr %scevgep179, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %get_cos.exit.preheader201, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %9, -4                         ; 3 uses
  %22 = mul i64 %n.vec, %i.j
  %23 = shl nuw nsw i32 %5, 1
  %24 = mul nuw nsw i32 %5, 3
  %invariant.gep = getelementptr [4 x i8], ptr %2, i64 %i.j
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %25 = mul i64 %index, %i.j                      ; 3 uses
  %26 = or disjoint i64 %index, 2
  %27 = mul i64 %26, %i.j
  %28 = or disjoint i64 %index, 3
  %29 = mul i64 %28, %i.j
  %30 = trunc i64 %25 to i32                      ; 4 uses
  %31 = add i32 %5, %30
  %32 = add i32 %23, %30
  %33 = add i32 %24, %30
  %34 = xor i32 %30, -1
  %35 = xor i32 %31, -1
  %36 = xor i32 %32, -1
  %37 = xor i32 %33, -1
  %38 = add nsw i32 %4, %34
  %39 = add nsw i32 %4, %35
  %40 = add nsw i32 %4, %36
  %41 = add nsw i32 %4, %37
  %42 = sext i32 %38 to i64
  %43 = sext i32 %39 to i64
  %44 = sext i32 %40 to i64
  %45 = sext i32 %41 to i64
  %46 = getelementptr inbounds [4 x i8], ptr %i.f, i64 %42
  %47 = getelementptr inbounds [4 x i8], ptr %i.f, i64 %43
  %48 = getelementptr inbounds [4 x i8], ptr %i.f, i64 %44
  %49 = getelementptr inbounds [4 x i8], ptr %i.f, i64 %45
  %50 = load float, ptr %46, align 4, !tbaa !47, !alias.scope !165
  %51 = load float, ptr %47, align 4, !tbaa !47, !alias.scope !165
  %52 = load float, ptr %48, align 4, !tbaa !47, !alias.scope !165
  %53 = load float, ptr %49, align 4, !tbaa !47, !alias.scope !165
  %54 = insertelement <4 x float> poison, float %50, i64 0
  %55 = insertelement <4 x float> %54, float %51, i64 1
  %56 = insertelement <4 x float> %55, float %52, i64 2
  %57 = insertelement <4 x float> %56, float %53, i64 3
  %58 = fmul nsz <4 x float> %57, splat (float -2.000000e+00) ; 2 uses
  %59 = fsub nsz <4 x float> splat (float 2.000000e+00), %58
  %60 = fmul nsz <4 x float> %59, splat (float 5.000000e-01)
  %61 = fmul nsz <4 x float> %60, splat (float 5.000000e-01)
  %62 = fadd nsz <4 x float> %58, splat (float 2.000000e+00)
  %63 = fmul nsz <4 x float> %62, splat (float 5.000000e-01)
  %64 = fmul nsz <4 x float> %63, splat (float 5.000000e-01)
  %65 = fadd nsz <4 x float> %61, %64
  %66 = fdiv nsz <4 x float> splat (float 5.000000e-01), %65 ; 4 uses
  %67 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %25
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %25
  %68 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %27
  %69 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %29
  %70 = extractelement <4 x float> %66, i64 0
  store float %70, ptr %67, align 4, !tbaa !47, !alias.scope !166, !noalias !165
  %71 = extractelement <4 x float> %66, i64 1
  store float %71, ptr %gep, align 4, !tbaa !47, !alias.scope !166, !noalias !165
  %72 = extractelement <4 x float> %66, i64 2
  store float %72, ptr %68, align 4, !tbaa !47, !alias.scope !166, !noalias !165
  %73 = extractelement <4 x float> %66, i64 3
  store float %73, ptr %69, align 4, !tbaa !47, !alias.scope !166, !noalias !165
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %74 = icmp eq i64 %index.next, %n.vec
  br i1 %74, label %middle.block, label %vector.body, !llvm.loop !153

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %9, %n.vec
  br i1 %cmp.n, label %.preheader, label %get_cos.exit.preheader201

get_cos.exit.preheader201:                        ; preds = %vector.memcheck, %get_cos.exit.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %get_cos.exit.preheader ], [ %22, %middle.block ]
  br label %get_cos.exit

get_cos.exit.us136.preheader:                     ; preds = %.lr.ph.split
  %min.iters.check188 = icmp ult i64 %8, 11
  br i1 %min.iters.check188, label %get_cos.exit.us136.preheader199, label %vector.memcheck181

vector.memcheck181:                               ; preds = %get_cos.exit.us136.preheader
  %75 = add nsw i64 %i.k, -1                      ; 2 uses
  %76 = urem i64 %75, %i.j
  %77 = sub nuw nsw i64 %75, %76
  %78 = shl nsw i64 %77, 2
  %79 = add nsw i64 %78, 4                        ; 2 uses
  %scevgep182 = getelementptr i8, ptr %2, i64 %79
  %scevgep183 = getelementptr i8, ptr %i.f, i64 %79
  %bound0184 = icmp ult ptr %2, %scevgep183
  %bound1185 = icmp ult ptr %i.f, %scevgep182
  %found.conflict186 = and i1 %bound0184, %bound1185
  br i1 %found.conflict186, label %get_cos.exit.us136.preheader199, label %vector.ph189

vector.ph189:                                     ; preds = %vector.memcheck181
  %n.vec190 = and i64 %9, -4                      ; 3 uses
  %80 = mul i64 %n.vec190, %i.j
  br label %vector.body191

vector.body191:                                   ; preds = %vector.body191, %vector.ph189
  %index192 = phi i64 [ 0, %vector.ph189 ], [ %index.next193, %vector.body191 ] ; 4 uses
  %81 = mul i64 %index192, %i.j                   ; 3 uses
  %82 = add i64 %81, %i.j                         ; 2 uses
  %83 = or disjoint i64 %index192, 2
  %84 = mul i64 %83, %i.j                         ; 2 uses
  %85 = or disjoint i64 %index192, 3
  %86 = mul i64 %85, %i.j                         ; 2 uses
  %87 = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %81
  %88 = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %82
  %89 = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %84
  %90 = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %86
  %91 = load float, ptr %87, align 4, !tbaa !47, !alias.scope !167
  %92 = load float, ptr %88, align 4, !tbaa !47, !alias.scope !167
  %93 = load float, ptr %89, align 4, !tbaa !47, !alias.scope !167
  %94 = load float, ptr %90, align 4, !tbaa !47, !alias.scope !167
  %95 = insertelement <4 x float> poison, float %91, i64 0
  %96 = insertelement <4 x float> %95, float %92, i64 1
  %97 = insertelement <4 x float> %96, float %93, i64 2
  %98 = insertelement <4 x float> %97, float %94, i64 3
  %99 = fmul nsz <4 x float> %98, splat (float 2.000000e+00) ; 2 uses
  %100 = fsub nsz <4 x float> splat (float 2.000000e+00), %99
  %101 = fmul nsz <4 x float> %100, splat (float 5.000000e-01)
  %102 = fmul nsz <4 x float> %101, splat (float 5.000000e-01)
  %103 = fadd nsz <4 x float> %99, splat (float 2.000000e+00)
  %104 = fmul nsz <4 x float> %103, splat (float 5.000000e-01)
  %105 = fmul nsz <4 x float> %104, splat (float 5.000000e-01)
  %106 = fadd nsz <4 x float> %102, %105
  %107 = fdiv nsz <4 x float> splat (float 5.000000e-01), %106 ; 4 uses
  %108 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %81
  %109 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %82
  %110 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %84
  %111 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %86
  %112 = extractelement <4 x float> %107, i64 0
  store float %112, ptr %108, align 4, !tbaa !47, !alias.scope !168, !noalias !167
  %113 = extractelement <4 x float> %107, i64 1
  store float %113, ptr %109, align 4, !tbaa !47, !alias.scope !168, !noalias !167
  %114 = extractelement <4 x float> %107, i64 2
  store float %114, ptr %110, align 4, !tbaa !47, !alias.scope !168, !noalias !167
  %115 = extractelement <4 x float> %107, i64 3
  store float %115, ptr %111, align 4, !tbaa !47, !alias.scope !168, !noalias !167
  %index.next193 = add nuw i64 %index192, 4       ; 2 uses
  %116 = icmp eq i64 %index.next193, %n.vec190
  br i1 %116, label %.lr.ph.split.a, label %vector.body191, !llvm.loop !157

.lr.ph.split.a:                                   ; preds = %vector.body191
  %cmp.n195 = icmp eq i64 %9, %n.vec190
  br i1 %cmp.n195, label %.preheader, label %get_cos.exit.us136.preheader199

get_cos.exit.us136.preheader199:                  ; preds = %vector.memcheck181, %get_cos.exit.us136.preheader, %.lr.ph.split.a
  %indvars.iv149.ph = phi i64 [ 0, %vector.memcheck181 ], [ 0, %get_cos.exit.us136.preheader ], [ %80, %.lr.ph.split.a ]
  br label %get_cos.exit.us136

get_cos.exit.us136:                               ; preds = %get_cos.exit.us136.preheader199, %get_cos.exit.us136
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %get_cos.exit.us136 ], [ %indvars.iv149.ph, %get_cos.exit.us136.preheader199 ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv149
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !47
  %i.bq = fmul nsz float %i.bp, 2.000000e+00      ; 2 uses
  %i.br = fsub nsz float 2.000000e+00, %i.bq
  %i.bs = insertelement <2 x float> poison, float %i.br, i64 0
  %i.bt = insertelement <2 x float> %i.bs, float %i.bq, i64 1
  %i.bu = fadd nsz <2 x float> %i.bt, <float -0.000000e+00, float 2.000000e+00>
  %i.bv = fmul nsz <2 x float> %i.bu, splat (float 5.000000e-01)
  %i.bw = fmul nsz <2 x float> %i.bv, splat (float 5.000000e-01)
  %i.bx = tail call reassoc nsz float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.bw)
  %i.by = fdiv nsz float 5.000000e-01, %i.bx
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv149
  store float %i.by, ptr %i.bz, align 4, !tbaa !47
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, %i.j ; 2 uses
  %i.ca = icmp samesign ult i64 %indvars.iv.next150, %i.k
  br i1 %i.ca, label %get_cos.exit.us136, label %.preheader, !llvm.loop !158

.preheader:                                       ; preds = %get_cos.exit, %get_cos.exit.us136, %eval_lpc_spectrum.exit.loopexit.us, %middle.block, %.lr.ph.split.a, %bb.a
  %i.cb = shl nuw nsw i32 %5, 1                   ; 2 uses
  %i.cc = sub nsw i32 %4, %i.cb                   ; 3 uses
  %.not137 = icmp sgt i32 %5, %i.cc
  br i1 %.not137, label %.preheader.._crit_edge_crit_edge, label %.lr.ph139

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.pre = sext i32 %i.cc to i64
  %.pre158 = add nsw i32 %5, -1
  %.pre160 = uitofp nneg i32 %5 to float
  br label %.lr.ph.preheader.i120

.lr.ph139:                                        ; preds = %.preheader
  %i.cd = zext nneg i32 %5 to i64                 ; 3 uses
  %i.ce = sub nsw i64 0, %i.cd                    ; 2 uses
  %i.cf = add nsw i32 %5, -1                      ; 2 uses
  %i.cg = uitofp nneg i32 %5 to float             ; 2 uses
  %wide.trip.count.i = zext i32 %i.cf to i64      ; 2 uses
  %i.ch = lshr i32 %5, 1                          ; 4 uses
  %.not.i90 = icmp eq i32 %6, 0
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 194
  %i.cj = add nsw i32 %i.ch, -1                   ; 9 uses
  %i.ck = uitofp nneg i32 %i.ch to float          ; 2 uses
  %.not.i101 = icmp eq i32 %i.cj, 0
  %wide.trip.count.i103 = zext i32 %i.cj to i64   ; 2 uses
  %i.cl = zext nneg i32 %i.ch to i64
  %i.cm = sub nsw i64 0, %i.cl
  %i.cn = zext nneg i32 %i.cc to i64              ; 2 uses
  %i.co = zext nneg i32 %5 to i64
  %i.cp = zext nneg i32 %i.ch to i64
  %xtraiter187 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.cq = icmp samesign ult i32 %5, 5
  %unroll_iter190 = and i64 %wide.trip.count.i, 4294967292
  %lcmp.mod188.not = icmp eq i64 %xtraiter187, 0
  %lcmp.mod189 = icmp ne i64 %xtraiter187, 0
  %exitcond.not.i108 = icmp eq i32 %i.cj, 1
  %exitcond.not.i108.1 = icmp eq i32 %i.cj, 2
  %exitcond.not.i108.2 = icmp eq i32 %i.cj, 3
  %exitcond.not.i108.3 = icmp eq i32 %i.cj, 4
  %exitcond.not.i108.4 = icmp eq i32 %i.cj, 5
  %exitcond.not.i108.5 = icmp eq i32 %i.cj, 6
  %xtraiter201 = and i64 %wide.trip.count.i103, 3 ; 3 uses
  %i.cr = icmp ult i32 %i.cj, 4
  %unroll_iter205 = and i64 %wide.trip.count.i103, 4294967292
  %lcmp.mod203.not = icmp eq i64 %xtraiter201, 0
  %lcmp.mod204 = icmp ne i64 %xtraiter201, 0
  br label %bb.d

get_cos.exit:                                     ; preds = %get_cos.exit.preheader201, %get_cos.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %get_cos.exit ], [ %indvars.iv.ph, %get_cos.exit.preheader201 ] ; 3 uses
  %i.cs = trunc nuw nsw i64 %indvars.iv to i32
  %i.ct = xor i32 %i.cs, -1
  %i.cu = add nsw i32 %4, %i.ct
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.cv
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !47
  %i.cy = fmul nsz float %i.cx, -2.000000e+00     ; 2 uses
  %i.cz = fsub nsz float 2.000000e+00, %i.cy
  %i.da = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.db = insertelement <2 x float> %i.da, float %i.cy, i64 1
  %i.dc = fadd nsz <2 x float> %i.db, <float -0.000000e+00, float 2.000000e+00>
  %i.dd = fmul nsz <2 x float> %i.dc, splat (float 5.000000e-01)
  %i.de = fmul nsz <2 x float> %i.dd, splat (float 5.000000e-01)
  %i.df = tail call reassoc nsz float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.de)
  %i.dg = fdiv nsz float 5.000000e-01, %i.df
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store float %i.dg, ptr %i.dh, align 4, !tbaa !47
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.j ; 2 uses
  %i.di = icmp samesign ult i64 %indvars.iv.next, %i.k
  br i1 %i.di, label %get_cos.exit, label %.preheader, !llvm.loop !159

bb.d:                                             ; preds = %.lr.ph139, %interpolate.exit
  %indvars.iv155 = phi i64 [ %i.cd, %.lr.ph139 ], [ %indvars.iv.next156, %interpolate.exit ] ; 4 uses
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, %i.cd ; 3 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next156
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !47 ; 2 uses
  %i.dl = sub nuw nsw i64 %indvars.iv155, %i.co
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dl ; 2 uses
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !47 ; 5 uses
  %i.do = fadd nsz float %i.dk, %i.dn
  %i.dp = fpext nsz float %i.do to double
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv155 ; 5 uses
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !47 ; 2 uses
  %i.ds = fpext nsz float %i.dr to double
  %i.dt = fmul nsz double %i.ds, 1.950000e+00
  %i.du = fcmp nsz uge double %i.dt, %i.dp
  %i.dv = fcmp nsz ult float %i.dk, %i.dn
  %or.cond = and i1 %i.dv, %i.du
  br i1 %or.cond, label %bb.e, label %.lr.ph.i87.preheader

.lr.ph.i87.preheader:                             ; preds = %bb.d
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.ce
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 4 ; 5 uses
  %i.dy = fsub nsz float %i.dr, %i.dn
  %i.dz = fdiv nsz float %i.dy, %i.cg             ; 5 uses
  br i1 %i.cq, label %.lr.ph.i87.epil.preheader, label %.lr.ph.i87

.lr.ph.i87:                                       ; preds = %.lr.ph.i87.preheader, %.lr.ph.i87
  %indvars.iv.i88 = phi i64 [ %indvars.iv.next.i89.3, %.lr.ph.i87 ], [ 0, %.lr.ph.i87.preheader ] ; 5 uses
  %.01011.i = phi float [ %i.ei, %.lr.ph.i87 ], [ %i.dn, %.lr.ph.i87.preheader ]
  %niter191 = phi i64 [ %niter191.next.3, %.lr.ph.i87 ], [ 0, %.lr.ph.i87.preheader ]
  %i.ea = fadd nsz float %i.dz, %.01011.i         ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv.i88
  store float %i.ea, ptr %i.eb, align 4, !tbaa !47
  %i.ec = fadd nsz float %i.dz, %i.ea             ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv.i88
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  store float %i.ec, ptr %i.ee, align 4, !tbaa !47
  %i.ef = fadd nsz float %i.dz, %i.ec             ; 2 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv.i88
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store float %i.ef, ptr %i.eh, align 4, !tbaa !47
  %i.ei = fadd nsz float %i.dz, %i.ef             ; 3 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv.i88
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 12
  store float %i.ei, ptr %i.ek, align 4, !tbaa !47
  %indvars.iv.next.i89.3 = add nuw nsw i64 %indvars.iv.i88, 4 ; 2 uses
  %niter191.next.3 = add i64 %niter191, 4         ; 2 uses
  %niter191.ncmp.3 = icmp eq i64 %niter191.next.3, %unroll_iter190
  br i1 %niter191.ncmp.3, label %interpolate.exit.loopexit181.unr-lcssa, label %.lr.ph.i87, !llvm.loop !160

bb.e:                                             ; preds = %bb.d
  %i.el = sub nsw i64 %indvars.iv155, %i.cp       ; 3 uses
  br i1 %.not.i90, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.em = trunc nsw i64 %i.el to i32
  %i.en = xor i32 %i.em, -1
  %i.eo = add i32 %4, %i.en
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.ep
  %i.er = load float, ptr %i.eq, align 4, !tbaa !47
  %i.es = fneg nsz float %i.er
  br label %get_cos.exit91

bb.g:                                             ; preds = %bb.e
  %i.et = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.el
  %i.eu = load float, ptr %i.et, align 4, !tbaa !47
  br label %get_cos.exit91

get_cos.exit91:                                   ; preds = %bb.f, %bb.g
  %i.ev = phi nsz float [ %i.es, %bb.f ], [ %i.eu, %bb.g ]
  %i.ew = load i8, ptr %i.ci, align 2, !tbaa !56  ; 2 uses
  %i.ex = fmul nsz float %i.ev, 2.000000e+00      ; 3 uses
  %i.ey = icmp ugt i8 %i.ew, 1
  br i1 %i.ey, label %.lr.ph.preheader.i94, label %eval_lpc_spectrum.exit100

.lr.ph.preheader.i94:                             ; preds = %get_cos.exit91
  %i.ez = zext i8 %i.ew to i64
  %i.fa = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.fb = shufflevector <2 x float> %i.fa, <2 x float> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.fc = add nsw i64 %i.ez, -2                   ; 2 uses
  %i.fd = lshr i64 %i.fc, 2                       ; 2 uses
  %i.fe = add nuw nsw i64 %i.fd, 1                ; 2 uses
  %i.ff = icmp eq i64 %i.fd, 0
  br i1 %i.ff, label %.lr.ph.i95.epil.preheader, label %.lr.ph.preheader.i94.new

.lr.ph.preheader.i94.new:                         ; preds = %.lr.ph.preheader.i94
  %unroll_iter199 = and i64 %i.fe, 9223372036854775806
  br label %.lr.ph.i95

.lr.ph.i95:                                       ; preds = %.lr.ph.i95, %.lr.ph.preheader.i94.new
  %indvars.iv.i96 = phi i64 [ 0, %.lr.ph.preheader.i94.new ], [ %indvars.iv.next.i99.1, %.lr.ph.i95 ] ; 3 uses
  %i.fg = phi <2 x float> [ splat (float 5.000000e-01), %.lr.ph.preheader.i94.new ], [ %i.fx, %.lr.ph.i95 ]
  %niter200 = phi i64 [ 0, %.lr.ph.preheader.i94.new ], [ %niter200.next.1, %.lr.ph.i95 ]
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i96 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load <2 x float>, ptr %i.fh, align 4, !tbaa !47
  %i.fk = fsub nsz <2 x float> %i.fj, %i.fb
  %i.fl = fmul nsz <2 x float> %i.fg, %i.fk
  %i.fm = load <2 x float>, ptr %i.fi, align 4, !tbaa !47
  %i.fn = fsub nsz <2 x float> %i.fm, %i.fb
  %i.fo = fmul nsz <2 x float> %i.fl, %i.fn
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i96 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fs = load <2 x float>, ptr %i.fq, align 4, !tbaa !47
  %i.ft = fsub nsz <2 x float> %i.fs, %i.fb
  %i.fu = fmul nsz <2 x float> %i.fo, %i.ft
  %i.fv = load <2 x float>, ptr %i.fr, align 4, !tbaa !47
  %i.fw = fsub nsz <2 x float> %i.fv, %i.fb
  %i.fx = fmul nsz <2 x float> %i.fu, %i.fw       ; 3 uses
  %indvars.iv.next.i99.1 = add nuw nsw i64 %indvars.iv.i96, 8 ; 2 uses
  %niter200.next.1 = add i64 %niter200, 2         ; 2 uses
  %niter200.ncmp.1.not = icmp eq i64 %niter200.next.1, %unroll_iter199
  br i1 %niter200.ncmp.1.not, label %eval_lpc_spectrum.exit100.loopexit.unr-lcssa, label %.lr.ph.i95, !llvm.loop !0

eval_lpc_spectrum.exit100.loopexit.unr-lcssa:     ; preds = %.lr.ph.i95
  %i.fy = and i64 %i.fc, 4
  %lcmp.mod196.not.not = icmp eq i64 %i.fy, 0
  br i1 %lcmp.mod196.not.not, label %.lr.ph.i95.epil.preheader, label %eval_lpc_spectrum.exit100

.lr.ph.i95.epil.preheader:                        ; preds = %eval_lpc_spectrum.exit100.loopexit.unr-lcssa, %.lr.ph.preheader.i94
  %indvars.iv.i96.epil.init = phi i64 [ 0, %.lr.ph.preheader.i94 ], [ %indvars.iv.next.i99.1, %eval_lpc_spectrum.exit100.loopexit.unr-lcssa ]
  %.epil.init195 = phi <2 x float> [ splat (float 5.000000e-01), %.lr.ph.preheader.i94 ], [ %i.fx, %eval_lpc_spectrum.exit100.loopexit.unr-lcssa ]
  %lcmp.mod198 = trunc i64 %i.fe to i1
  tail call void @llvm.assume(i1 %lcmp.mod198)
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i96.epil.init ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gb = load <2 x float>, ptr %i.fz, align 4, !tbaa !47
  %i.gc = fsub nsz <2 x float> %i.gb, %i.fb
  %i.gd = fmul nsz <2 x float> %.epil.init195, %i.gc
  %i.ge = load <2 x float>, ptr %i.ga, align 4, !tbaa !47
  %i.gf = fsub nsz <2 x float> %i.ge, %i.fb
  %i.gg = fmul nsz <2 x float> %i.gd, %i.gf
  br label %eval_lpc_spectrum.exit100

eval_lpc_spectrum.exit100:                        ; preds = %.lr.ph.i95.epil.preheader, %eval_lpc_spectrum.exit100.loopexit.unr-lcssa, %get_cos.exit91
  %i.gh = phi <2 x float> [ splat (float 5.000000e-01), %get_cos.exit91 ], [ %i.fx, %eval_lpc_spectrum.exit100.loopexit.unr-lcssa ], [ %i.gg, %.lr.ph.i95.epil.preheader ] ; 2 uses
  %i.gi = fsub nsz float 2.000000e+00, %i.ex
  %i.gj = extractelement <2 x float> %i.gh, i64 1 ; 2 uses
  %i.gk = fmul nsz float %i.gi, %i.gj
  %i.gl = fmul nsz float %i.gj, %i.gk
  %i.gm = fadd nsz float %i.ex, 2.000000e+00
  %i.gn = extractelement <2 x float> %i.gh, i64 0 ; 2 uses
  %i.go = fmul nsz float %i.gm, %i.gn
  %i.gp = fmul nsz float %i.gn, %i.go
  %i.gq = fadd nsz float %i.gl, %i.gp
  %i.gr = fdiv nsz float 5.000000e-01, %i.gq      ; 2 uses
  %i.gs = getelementptr inbounds [4 x i8], ptr %2, i64 %i.el ; 2 uses
  store float %i.gr, ptr %i.gs, align 4, !tbaa !47
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.ce ; 7 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 4
  %i.gv = load float, ptr %i.dm, align 4, !tbaa !47 ; 2 uses
  %i.gw = fsub nsz float %i.gr, %i.gv
  %i.gx = fdiv nsz float %i.gw, %i.ck             ; 7 uses
  br i1 %.not.i101, label %interpolate.exit, label %.lr.ph.i104

.lr.ph.i104:                                      ; preds = %eval_lpc_spectrum.exit100
  %i.gy = fadd nsz float %i.gx, %i.gv             ; 2 uses
  store float %i.gy, ptr %i.gu, align 4, !tbaa !47
  br i1 %exitcond.not.i108, label %.lr.ph.preheader.i111, label %.lr.ph.i104.1

.lr.ph.i104.1:                                    ; preds = %.lr.ph.i104
  %i.gz = fadd nsz float %i.gx, %i.gy             ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  store float %i.gz, ptr %i.ha, align 4, !tbaa !47
  br i1 %exitcond.not.i108.1, label %.lr.ph.preheader.i111, label %.lr.ph.i104.2

.lr.ph.i104.2:                                    ; preds = %.lr.ph.i104.1
  %i.hb = fadd nsz float %i.gx, %i.gz             ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gt, i64 12
  store float %i.hb, ptr %i.hc, align 4, !tbaa !47
  br i1 %exitcond.not.i108.2, label %.lr.ph.preheader.i111, label %.lr.ph.i104.3

.lr.ph.i104.3:                                    ; preds = %.lr.ph.i104.2
  %i.hd = fadd nsz float %i.gx, %i.hb             ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  store float %i.hd, ptr %i.he, align 4, !tbaa !47
  br i1 %exitcond.not.i108.3, label %.lr.ph.preheader.i111, label %.lr.ph.i104.4

.lr.ph.i104.4:                                    ; preds = %.lr.ph.i104.3
  %i.hf = fadd nsz float %i.gx, %i.hd             ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gt, i64 20
  store float %i.hf, ptr %i.hg, align 4, !tbaa !47
  br i1 %exitcond.not.i108.4, label %.lr.ph.preheader.i111, label %.lr.ph.i104.5

.lr.ph.i104.5:                                    ; preds = %.lr.ph.i104.4
  %i.hh = fadd nsz float %i.gx, %i.hf             ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gt, i64 24
  store float %i.hh, ptr %i.hi, align 4, !tbaa !47
  br i1 %exitcond.not.i108.5, label %.lr.ph.preheader.i111, label %.lr.ph.i104.6

.lr.ph.i104.6:                                    ; preds = %.lr.ph.i104.5
  %i.hj = fadd nsz float %i.gx, %i.hh
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gt, i64 28
  store float %i.hj, ptr %i.hk, align 4, !tbaa !47
  br label %.lr.ph.preheader.i111

.lr.ph.preheader.i111:                            ; preds = %.lr.ph.i104.6, %.lr.ph.i104.5, %.lr.ph.i104.4, %.lr.ph.i104.3, %.lr.ph.i104.2, %.lr.ph.i104.1, %.lr.ph.i104
  %i.hl = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.cm
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 4 ; 5 uses
  %i.hn = load float, ptr %i.dq, align 4, !tbaa !47
  %i.ho = load float, ptr %i.gs, align 4, !tbaa !47 ; 3 uses
  %i.hp = fsub nsz float %i.hn, %i.ho
  %i.hq = fdiv nsz float %i.hp, %i.ck             ; 5 uses
  br i1 %i.cr, label %.lr.ph.i113.epil.preheader, label %.lr.ph.i113

.lr.ph.i113:                                      ; preds = %.lr.ph.preheader.i111, %.lr.ph.i113
  %indvars.iv.i114 = phi i64 [ %indvars.iv.next.i116.3, %.lr.ph.i113 ], [ 0, %.lr.ph.preheader.i111 ] ; 5 uses
  %.01011.i115 = phi float [ %i.hz, %.lr.ph.i113 ], [ %i.ho, %.lr.ph.preheader.i111 ]
  %niter206 = phi i64 [ %niter206.next.3, %.lr.ph.i113 ], [ 0, %.lr.ph.preheader.i111 ]
  %i.hr = fadd nsz float %i.hq, %.01011.i115      ; 2 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %indvars.iv.i114
  store float %i.hr, ptr %i.hs, align 4, !tbaa !47
  %i.ht = fadd nsz float %i.hq, %i.hr             ; 2 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %indvars.iv.i114
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 4
  store float %i.ht, ptr %i.hv, align 4, !tbaa !47
  %i.hw = fadd nsz float %i.hq, %i.ht             ; 2 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %indvars.iv.i114
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  store float %i.hw, ptr %i.hy, align 4, !tbaa !47
  %i.hz = fadd nsz float %i.hq, %i.hw             ; 3 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %indvars.iv.i114
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 12
  store float %i.hz, ptr %i.ib, align 4, !tbaa !47
  %indvars.iv.next.i116.3 = add nuw nsw i64 %indvars.iv.i114, 4 ; 2 uses
  %niter206.next.3 = add i64 %niter206, 4         ; 2 uses
  %niter206.ncmp.3 = icmp eq i64 %niter206.next.3, %unroll_iter205
  br i1 %niter206.ncmp.3, label %interpolate.exit.loopexit.unr-lcssa, label %.lr.ph.i113, !llvm.loop !160

interpolate.exit.loopexit.unr-lcssa:              ; preds = %.lr.ph.i113
  br i1 %lcmp.mod203.not, label %interpolate.exit, label %.lr.ph.i113.epil.preheader

.lr.ph.i113.epil.preheader:                       ; preds = %interpolate.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i111
  %indvars.iv.i114.epil.init = phi i64 [ 0, %.lr.ph.preheader.i111 ], [ %indvars.iv.next.i116.3, %interpolate.exit.loopexit.unr-lcssa ]
  %.01011.i115.epil.init = phi float [ %i.ho, %.lr.ph.preheader.i111 ], [ %i.hz, %interpolate.exit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod204)
  br label %.lr.ph.i113.epil

.lr.ph.i113.epil:                                 ; preds = %.lr.ph.i113.epil, %.lr.ph.i113.epil.preheader
  %indvars.iv.i114.epil = phi i64 [ %indvars.iv.i114.epil.init, %.lr.ph.i113.epil.preheader ], [ %indvars.iv.next.i116.epil, %.lr.ph.i113.epil ] ; 2 uses
  %.01011.i115.epil = phi float [ %.01011.i115.epil.init, %.lr.ph.i113.epil.preheader ], [ %i.ic, %.lr.ph.i113.epil ]
  %epil.iter202 = phi i64 [ 0, %.lr.ph.i113.epil.preheader ], [ %epil.iter202.next, %.lr.ph.i113.epil ]
  %i.ic = fadd nsz float %i.hq, %.01011.i115.epil ; 2 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %indvars.iv.i114.epil
  store float %i.ic, ptr %i.id, align 4, !tbaa !47
  %indvars.iv.next.i116.epil = add nuw nsw i64 %indvars.iv.i114.epil, 1
  %epil.iter202.next = add i64 %epil.iter202, 1   ; 2 uses
  %epil.iter202.cmp.not = icmp eq i64 %epil.iter202.next, %xtraiter201
  br i1 %epil.iter202.cmp.not, label %interpolate.exit, label %.lr.ph.i113.epil, !llvm.loop !161

interpolate.exit.loopexit181.unr-lcssa:           ; preds = %.lr.ph.i87
  br i1 %lcmp.mod188.not, label %interpolate.exit, label %.lr.ph.i87.epil.preheader

.lr.ph.i87.epil.preheader:                        ; preds = %interpolate.exit.loopexit181.unr-lcssa, %.lr.ph.i87.preheader
  %indvars.iv.i88.epil.init = phi i64 [ 0, %.lr.ph.i87.preheader ], [ %indvars.iv.next.i89.3, %interpolate.exit.loopexit181.unr-lcssa ]
  %.01011.i.epil.init = phi float [ %i.dn, %.lr.ph.i87.preheader ], [ %i.ei, %interpolate.exit.loopexit181.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod189)
  br label %.lr.ph.i87.epil

.lr.ph.i87.epil:                                  ; preds = %.lr.ph.i87.epil, %.lr.ph.i87.epil.preheader
  %indvars.iv.i88.epil = phi i64 [ %indvars.iv.next.i89.epil, %.lr.ph.i87.epil ], [ %indvars.iv.i88.epil.init, %.lr.ph.i87.epil.preheader ] ; 2 uses
  %.01011.i.epil = phi float [ %i.ie, %.lr.ph.i87.epil ], [ %.01011.i.epil.init, %.lr.ph.i87.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i87.epil ], [ 0, %.lr.ph.i87.epil.preheader ]
  %i.ie = fadd nsz float %i.dz, %.01011.i.epil    ; 2 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv.i88.epil
  store float %i.ie, ptr %i.if, align 4, !tbaa !47
  %indvars.iv.next.i89.epil = add nuw nsw i64 %indvars.iv.i88.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter187
  br i1 %epil.iter.cmp.not, label %interpolate.exit, label %.lr.ph.i87.epil, !llvm.loop !162

interpolate.exit:                                 ; preds = %interpolate.exit.loopexit181.unr-lcssa, %.lr.ph.i87.epil, %interpolate.exit.loopexit.unr-lcssa, %.lr.ph.i113.epil, %eval_lpc_spectrum.exit100
  %.not = icmp samesign ugt i64 %indvars.iv.next156, %i.cn
  br i1 %.not, label %.lr.ph.preheader.i120, label %bb.d, !llvm.loop !163

.lr.ph.preheader.i120:                            ; preds = %interpolate.exit, %.preheader.._crit_edge_crit_edge
  %.pre-phi161 = phi float [ %.pre160, %.preheader.._crit_edge_crit_edge ], [ %i.cg, %interpolate.exit ]
  %.pre-phi159 = phi i32 [ %.pre158, %.preheader.._crit_edge_crit_edge ], [ %i.cf, %interpolate.exit ] ; 2 uses
  %.pre-phi = phi i64 [ %.pre, %.preheader.._crit_edge_crit_edge ], [ %i.cn, %interpolate.exit ]
  %i.ig = zext nneg i32 %4 to i64
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ig
  %i.ii = zext nneg i32 %i.cb to i64
  %i.ij = sub nsw i64 0, %i.ii
  %i.ik = getelementptr inbounds [4 x i8], ptr %i.ih, i64 %i.ij
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 4 ; 5 uses
  %i.im = sub nsw i32 %4, %5
  %i.in = sext i32 %i.im to i64
  %i.io = getelementptr inbounds [4 x i8], ptr %2, i64 %i.in
  %i.ip = load float, ptr %i.io, align 4, !tbaa !47
  %i.iq = getelementptr inbounds [4 x i8], ptr %2, i64 %.pre-phi
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !47 ; 3 uses
  %i.is = fsub nsz float %i.ip, %i.ir
  %i.it = fdiv nsz float %i.is, %.pre-phi161      ; 5 uses
  %wide.trip.count.i121 = zext nneg i32 %.pre-phi159 to i64 ; 2 uses
  %xtraiter207 = and i64 %wide.trip.count.i121, 3 ; 3 uses
  %i.iu = add nsw i32 %.pre-phi159, -1
  %i.iv = icmp ult i32 %i.iu, 3
  br i1 %i.iv, label %.lr.ph.i122.epil.preheader, label %.lr.ph.preheader.i120.new

.lr.ph.preheader.i120.new:                        ; preds = %.lr.ph.preheader.i120
  %unroll_iter211 = and i64 %wide.trip.count.i121, 2147483644
  br label %.lr.ph.i122

.lr.ph.i122:                                      ; preds = %.lr.ph.i122, %.lr.ph.preheader.i120.new
  %indvars.iv.i123 = phi i64 [ 0, %.lr.ph.preheader.i120.new ], [ %indvars.iv.next.i125.3, %.lr.ph.i122 ] ; 5 uses
  %.01011.i124 = phi float [ %i.ir, %.lr.ph.preheader.i120.new ], [ %i.je, %.lr.ph.i122 ]
  %niter212 = phi i64 [ 0, %.lr.ph.preheader.i120.new ], [ %niter212.next.3, %.lr.ph.i122 ]
  %i.iw = fadd nsz float %i.it, %.01011.i124      ; 2 uses
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %indvars.iv.i123
  store float %i.iw, ptr %i.ix, align 4, !tbaa !47
  %i.iy = fadd nsz float %i.it, %i.iw             ; 2 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %indvars.iv.i123
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 4
  store float %i.iy, ptr %i.ja, align 4, !tbaa !47
  %i.jb = fadd nsz float %i.it, %i.iy             ; 2 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %indvars.iv.i123
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  store float %i.jb, ptr %i.jd, align 4, !tbaa !47
  %i.je = fadd nsz float %i.it, %i.jb             ; 3 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %indvars.iv.i123
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 12
  store float %i.je, ptr %i.jg, align 4, !tbaa !47
  %indvars.iv.next.i125.3 = add nuw nsw i64 %indvars.iv.i123, 4 ; 2 uses
  %niter212.next.3 = add i64 %niter212, 4         ; 2 uses
  %niter212.ncmp.3 = icmp eq i64 %niter212.next.3, %unroll_iter211
  br i1 %niter212.ncmp.3, label %interpolate.exit127.unr-lcssa, label %.lr.ph.i122, !llvm.loop !160

interpolate.exit127.unr-lcssa:                    ; preds = %.lr.ph.i122
  %lcmp.mod209.not = icmp eq i64 %xtraiter207, 0
  br i1 %lcmp.mod209.not, label %interpolate.exit127, label %.lr.ph.i122.epil.preheader

.lr.ph.i122.epil.preheader:                       ; preds = %interpolate.exit127.unr-lcssa, %.lr.ph.preheader.i120
  %indvars.iv.i123.epil.init = phi i64 [ 0, %.lr.ph.preheader.i120 ], [ %indvars.iv.next.i125.3, %interpolate.exit127.unr-lcssa ]
  %.01011.i124.epil.init = phi float [ %i.ir, %.lr.ph.preheader.i120 ], [ %i.je, %interpolate.exit127.unr-lcssa ]
  %lcmp.mod210 = icmp ne i64 %xtraiter207, 0
  tail call void @llvm.assume(i1 %lcmp.mod210)
  br label %.lr.ph.i122.epil

.lr.ph.i122.epil:                                 ; preds = %.lr.ph.i122.epil, %.lr.ph.i122.epil.preheader
  %indvars.iv.i123.epil = phi i64 [ %indvars.iv.i123.epil.init, %.lr.ph.i122.epil.preheader ], [ %indvars.iv.next.i125.epil, %.lr.ph.i122.epil ] ; 2 uses
  %.01011.i124.epil = phi float [ %.01011.i124.epil.init, %.lr.ph.i122.epil.preheader ], [ %i.jh, %.lr.ph.i122.epil ]
  %epil.iter208 = phi i64 [ 0, %.lr.ph.i122.epil.preheader ], [ %epil.iter208.next, %.lr.ph.i122.epil ]
  %i.jh = fadd nsz float %i.it, %.01011.i124.epil ; 2 uses
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %indvars.iv.i123.epil
  store float %i.jh, ptr %i.ji, align 4, !tbaa !47
  %indvars.iv.next.i125.epil = add nuw nsw i64 %indvars.iv.i123.epil, 1
  %epil.iter208.next = add i64 %epil.iter208, 1   ; 2 uses
  %epil.iter208.cmp.not = icmp eq i64 %epil.iter208.next, %xtraiter207
  br i1 %epil.iter208.cmp.not, label %interpolate.exit127, label %.lr.ph.i122.epil, !llvm.loop !164

interpolate.exit127:                              ; preds = %.lr.ph.i122.epil, %interpolate.exit127.unr-lcssa
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #6

declare i32 @av_tx_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @av_malloc_array(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @ff_init_ff_sine_windows(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @construct_perm_table(ptr nofree noundef captures(none) %0, i32 noundef range(i32 0, 4) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 34088
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53   ; 3 uses
  %i.e = icmp eq i32 %1, 3
  br i1 %i.e, label %.split, label %.split38

.split:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 226
  %i.g = load i8, ptr %i.f, align 2, !tbaa !52
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !42
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 356
  %i.k = load i32, ptr %i.j, align 4, !tbaa !43   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 34020 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !51
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 33970 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 33975
  tail call fastcc void @permutate_in_line(ptr noundef %i.d, i32 noundef %i.m, i32 noundef %i.k, i32 noundef %i.h, ptr noundef nonnull %i.n, i32 noundef 3)
  br label %bb.b

.split38:                                         ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.q = load i16, ptr %i.p, align 8, !tbaa !38
  %i.r = zext nneg i32 %1 to i64                  ; 5 uses
  %i.s = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %i.r
  %i.t = load i8, ptr %i.s, align 8, !tbaa !45    ; 2 uses
  %i.u = zext i8 %i.t to i32
  %.rhs.trunc = zext i8 %i.t to i16
  %i.v = udiv i16 %i.q, %.rhs.trunc
  %.zext = zext i16 %i.v to i32                   ; 2 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !42
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 356
  %i.y = load i32, ptr %i.x, align 4, !tbaa !43
  %i.z = mul nsw i32 %i.y, %i.u                   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 34008
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.r ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !51
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 33964
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.r ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 33972
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.r
  tail call fastcc void @permutate_in_line(ptr noundef %i.d, i32 noundef %i.ac, i32 noundef %i.z, i32 noundef %.zext, ptr noundef nonnull %i.ae, i32 noundef %1)
  br label %bb.b

bb.b:                                             ; preds = %.split38, %.split
  %i.ah = phi i64 [ 3, %.split ], [ %i.r, %.split38 ]
  %i.ai = phi ptr [ %i.l, %.split ], [ %i.ab, %.split38 ]
  %i.aj = phi ptr [ %i.n, %.split ], [ %i.ae, %.split38 ]
  %i.ak = phi ptr [ %i.o, %.split ], [ %i.ag, %.split38 ]
  %.036 = phi i32 [ %i.h, %.split ], [ %.zext, %.split38 ] ; 2 uses
  %.0 = phi i32 [ %i.k, %.split ], [ %i.z, %.split38 ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1196
  %i.am = getelementptr inbounds nuw [8192 x i8], ptr %i.al, i64 %i.ah ; 2 uses
  %i.an = load i32, ptr %i.ai, align 4, !tbaa !51 ; 2 uses
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.preheader.preheader.i, label %transpose_perm.exit

.preheader.preheader.i:                           ; preds = %bb.b
  %i.ap = load i8, ptr %i.ak, align 1, !tbaa !46
  %i.aq = zext nneg i32 %i.an to i64              ; 2 uses
  %i.ar = zext i8 %i.ap to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %indvars.iv26.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next27.i, %._crit_edge.i ] ; 3 uses
  %.019.i = phi i32 [ 0, %.preheader.preheader.i ], [ %.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.as = icmp samesign uge i64 %indvars.iv26.i, %i.ar
  %i.at = zext i1 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.at ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !46
  %.not.i = icmp eq i8 %i.av, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.aw = sext i32 %.019.i to i64
  %invariant.gep.i = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv26.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv21.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next22.i, %.lr.ph.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ %i.aw, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.ax = mul nuw nsw i64 %indvars.iv21.i, %i.aq
  %gep.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i, i64 %i.ax
  %i.ay = load i16, ptr %gep.i, align 2, !tbaa !63
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.az = getelementptr inbounds [2 x i8], ptr %i.am, i64 %indvars.iv.i
  store i16 %i.ay, ptr %i.az, align 2, !tbaa !63
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1 ; 2 uses
  %i.ba = load i8, ptr %i.au, align 1, !tbaa !46
  %i.bb = zext i8 %i.ba to i64
  %i.bc = icmp samesign ult i64 %indvars.iv.next22.i, %i.bb
  br i1 %i.bc, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !169

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.bd = trunc nsw i64 %indvars.iv.next.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %.1.lcssa.i = phi i32 [ %.019.i, %.preheader.i ], [ %i.bd, %._crit_edge.loopexit.i ]
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next27.i, %i.aq
  br i1 %exitcond.not.i, label %transpose_perm.exit, label %.preheader.i, !llvm.loop !170

transpose_perm.exit:                              ; preds = %._crit_edge.i, %bb.b
  %i.be = mul nsw i32 %.0, %.036                  ; 2 uses
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph.preheader.i41, label %linear_perm.exit

.lr.ph.preheader.i41:                             ; preds = %transpose_perm.exit
  %wide.trip.count.i = zext nneg i32 %i.be to i64
  br label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %.lr.ph.i42, %.lr.ph.preheader.i41
  %indvars.iv.i43 = phi i64 [ 0, %.lr.ph.preheader.i41 ], [ %indvars.iv.next.i44, %.lr.ph.i42 ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %indvars.iv.i43 ; 2 uses
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !63
  %i.bi = sext i16 %i.bh to i32                   ; 2 uses
  %i.bj = srem i32 %i.bi, %.0
  %i.bk = mul nsw i32 %i.bj, %.036
  %i.bl = sdiv i32 %i.bi, %.0
  %i.bm = add nsw i32 %i.bk, %i.bl
  %i.bn = trunc i32 %i.bm to i16
  store i16 %i.bn, ptr %i.bg, align 2, !tbaa !63
  %indvars.iv.next.i44 = add nuw nsw i64 %indvars.iv.i43, 1 ; 2 uses
  %exitcond.not.i45 = icmp eq i64 %indvars.iv.next.i44, %wide.trip.count.i
  br i1 %exitcond.not.i45, label %linear_perm.exit, label %.lr.ph.i42, !llvm.loop !171

linear_perm.exit:                                 ; preds = %.lr.ph.i42, %transpose_perm.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @permutate_in_line(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 0, 65536) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef range(i32 0, 4) %5) unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %4, align 1, !tbaa !46
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph43

.lr.ph43:                                         ; preds = %bb.a
  %i.b = icmp eq i32 %5, 2                        ; 2 uses
  %i.c = and i32 %1, 1
  %.not37 = icmp eq i32 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.e = icmp sgt i32 %1, 0
  %i.f = mul i32 %3, %2                           ; 4 uses
  br i1 %i.e, label %.lr.ph43.split.us, label %._crit_edge

.lr.ph43.split.us:                                ; preds = %.lr.ph43
  %i.g = icmp eq i32 %2, 1
  %i.h = zext nneg i32 %1 to i64                  ; 6 uses
  br i1 %i.g, label %.lr.ph.us.us.preheader, label %.lr.ph43.split.us.split.preheader

.lr.ph43.split.us.split.preheader:                ; preds = %.lr.ph43.split.us
  %i.i = add nsw i64 %i.h, -1
  %broadcast.splatinsert4 = insertelement <8 x i32> poison, i32 %1, i64 0
  %broadcast.splat5 = shufflevector <8 x i32> %broadcast.splatinsert4, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %.lr.ph43.split.us.split

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph43.split.us
  %i.j = add nsw i64 %i.h, -1
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %.critedge.us.us
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %.critedge.us.us ], [ 0, %.lr.ph.us.us.preheader ] ; 4 uses
  %i.k = trunc i64 %indvars.iv62 to i32
  %i.l = mul i32 %1, %i.k
  %i.m = trunc i64 %indvars.iv62 to i32
  %i.n = mul i32 %1, %i.m
  %i.o = mul nuw nsw i64 %indvars.iv62, %i.h      ; 3 uses
  %i.p = tail call i32 @llvm.smax.i32(i32 %i.n, i32 %i.f)
  %i.q = sub i32 %i.p, %i.l
  %i.r = zext i32 %i.q to i64
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %i.r) ; 2 uses
  %min.iters.check7 = icmp samesign ult i64 %i.s, 8
  br i1 %min.iters.check7, label %scalar.ph6.preheader, label %vector.ph8

vector.ph8:                                       ; preds = %.lr.ph.us.us
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %i.u = and i64 %i.t, 7                          ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  %i.w = select i1 %i.v, i64 8, i64 %i.u
  %n.vec9 = sub nsw i64 %i.t, %i.w                ; 2 uses
  %i.x = insertelement <8 x i64> poison, i64 %i.o, i64 0
  %i.y = shufflevector <8 x i64> %i.x, <8 x i64> poison, <8 x i32> zeroinitializer
  %invariant.gep16 = getelementptr [2 x i8], ptr %0, i64 %i.o
  br label %vector.body10

vector.body10:                                    ; preds = %vector.body10, %vector.ph8
  %index11 = phi i64 [ 0, %vector.ph8 ], [ %index.next12, %vector.body10 ] ; 3 uses
  %i.z = insertelement <8 x i64> poison, i64 %index11, i64 0
  %i.aa = shufflevector <8 x i64> %i.z, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.ab = or disjoint <8 x i64> %i.aa, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %i.ac = add nuw nsw <8 x i64> %i.ab, %i.y
  %i.ad = trunc <8 x i64> %i.ac to <8 x i16>
  %gep17 = getelementptr [2 x i8], ptr %invariant.gep16, i64 %index11
  store <8 x i16> %i.ad, ptr %gep17, align 2, !tbaa !63
  %index.next12 = add nuw i64 %index11, 8         ; 2 uses
  %i.ae = icmp eq i64 %index.next12, %n.vec9
  br i1 %i.ae, label %scalar.ph6.preheader, label %vector.body10, !llvm.loop !172

scalar.ph6.preheader:                             ; preds = %vector.body10, %.lr.ph.us.us
  %indvars.iv57.ph = phi i64 [ 0, %.lr.ph.us.us ], [ %n.vec9, %vector.body10 ]
  br label %scalar.ph6

scalar.ph6:                                       ; preds = %scalar.ph6.preheader, %bb.b
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %bb.b ], [ %indvars.iv57.ph, %scalar.ph6.preheader ] ; 2 uses
  %i.af = add nuw nsw i64 %indvars.iv57, %i.o     ; 3 uses
  %i.ag = trunc nuw i64 %i.af to i32
  %i.ah = icmp sgt i32 %i.f, %i.ag
  br i1 %i.ah, label %bb.b, label %.critedge.us.us

bb.b:                                             ; preds = %scalar.ph6
  %i.ai = trunc i64 %i.af to i16
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.af
  store i16 %i.ai, ptr %i.aj, align 2, !tbaa !63
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %exitcond61.not = icmp eq i64 %indvars.iv.next58, %i.h
  br i1 %exitcond61.not, label %.critedge.us.us, label %scalar.ph6, !llvm.loop !173

.critedge.us.us:                                  ; preds = %bb.b, %scalar.ph6
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %i.ak = load i8, ptr %4, align 1, !tbaa !46
  %i.al = zext i8 %i.ak to i64
  %i.am = icmp samesign ult i64 %indvars.iv.next63, %i.al
  br i1 %i.am, label %.lr.ph.us.us, label %._crit_edge, !llvm.loop !174

.lr.ph43.split.us.split:                          ; preds = %.lr.ph43.split.us.split.preheader, %.critedge.us
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %.critedge.us ], [ 0, %.lr.ph43.split.us.split.preheader ] ; 6 uses
  %i.an = trunc i64 %indvars.iv54 to i32
  %i.ao = mul i32 %1, %i.an
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph43.split.us.split
  br i1 %.not37, label %.thread.us, label %.lr.ph.us

bb.d:                                             ; preds = %.lr.ph43.split.us.split
  %i.ap = srem i32 %1, %2
  %.not.us = icmp eq i32 %i.ap, 0
  br i1 %.not.us, label %.thread.us, label %.lr.ph.us

.thread.us:                                       ; preds = %bb.d, %bb.c
  %i.aq = load i8, ptr %i.d, align 1, !tbaa !46
  %i.ar = zext i8 %i.aq to i64
  %i.as = icmp eq i64 %indvars.iv54, %i.ar
  br i1 %i.as, label %.lr.ph.us, label %bb.e

bb.e:                                             ; preds = %.thread.us
  %i.at = select i1 %i.b, i64 1, i64 %indvars.iv54
  %spec.select.us = mul nuw nsw i64 %i.at, %indvars.iv54
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.e, %.thread.us, %bb.d, %bb.c
  %.0.us = phi i64 [ %spec.select.us, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %.thread.us ] ; 2 uses
  %i.au = mul nuw nsw i64 %indvars.iv54, %i.h     ; 3 uses
  %i.av = trunc i64 %i.au to i32                  ; 3 uses
  %i.aw = tail call i32 @llvm.smax.i32(i32 %i.av, i32 %i.f)
  %i.ax = sub i32 %i.aw, %i.ao
  %i.ay = zext i32 %i.ax to i64
  %i.az = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.ay) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.az, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us
  %i.ba = add nuw nsw i64 %i.az, 1                ; 2 uses
  %i.bb = and i64 %i.ba, 7                        ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 0
  %i.bd = select i1 %i.bc, i64 8, i64 %i.bb
  %n.vec = sub nsw i64 %i.ba, %i.bd               ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %.0.us, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert2 = insertelement <8 x i32> poison, i32 %i.av, i64 0
  %broadcast.splat3 = shufflevector <8 x i32> %broadcast.splatinsert2, <8 x i32> poison, <8 x i32> zeroinitializer
  %invariant.gep = getelementptr [2 x i8], ptr %0, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.be = add nuw nsw <8 x i64> %vec.ind, %broadcast.splat
  %i.bf = trunc nuw <8 x i64> %i.be to <8 x i32>
  %i.bg = srem <8 x i32> %i.bf, %broadcast.splat5
  %i.bh = add nsw <8 x i32> %i.bg, %broadcast.splat3
  %i.bi = trunc <8 x i32> %i.bh to <8 x i16>
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index
  store <8 x i16> %i.bi, ptr %gep, align 2, !tbaa !63
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %scalar.ph.preheader, label %vector.body, !llvm.loop !175

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph.us
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.us ], [ %n.vec, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bk = add nuw nsw i64 %indvars.iv, %i.au      ; 2 uses
  %i.bl = trunc nuw i64 %i.bk to i32
  %i.bm = icmp sgt i32 %i.f, %i.bl
  br i1 %i.bm, label %bb.f, label %.critedge.us

bb.f:                                             ; preds = %scalar.ph
  %i.bn = add nuw nsw i64 %indvars.iv, %.0.us
  %i.bo = trunc nuw i64 %i.bn to i32
  %i.bp = srem i32 %i.bo, %1
  %i.bq = add nsw i32 %i.bp, %i.av
  %i.br = trunc i32 %i.bq to i16
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bk
  store i16 %i.br, ptr %i.bs, align 2, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.h
  br i1 %exitcond.not, label %.critedge.us, label %scalar.ph, !llvm.loop !176

.critedge.us:                                     ; preds = %scalar.ph, %bb.f
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %i.bt = load i8, ptr %4, align 1, !tbaa !46
  %i.bu = zext i8 %i.bt to i64
  %i.bv = icmp samesign ult i64 %indvars.iv.next55, %i.bu
  br i1 %i.bv, label %.lr.ph43.split.us.split, label %._crit_edge, !llvm.loop !174

._crit_edge:                                      ; preds = %.critedge.us, %.critedge.us.us, %.lr.ph43, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.cos.v4f64(<4 x double>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.exp.v4f64(<4 x double>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { cold }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !48}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 1, !"override-stack-alignment", i32 16}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTS11AVBufferRef", !10, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!"p1 omnipotent char", !10, i64 0}
!14 = !{!"p1 _ZTS16AVPacketSideData", !10, i64 0}
!15 = !{!"AVRational", !7, i64 0, !7, i64 4}
!16 = !{!"p1 _ZTS7AVClass", !10, i64 0}
!17 = !{!"p1 _ZTS7AVCodec", !10, i64 0}
!18 = !{!"p1 _ZTS15AVCodecInternal", !10, i64 0}
!19 = !{!"float", !6, i64 0}
!20 = !{!"p1 short", !10, i64 0}
!21 = !{!"AVChannelLayout", !7, i64 0, !7, i64 4, !6, i64 8, !10, i64 16}
!22 = !{!"p1 _ZTS10RcOverride", !10, i64 0}
!23 = !{!"p1 _ZTS9AVHWAccel", !10, i64 0}
!24 = !{!"p1 _ZTS17AVCodecDescriptor", !10, i64 0}
!25 = !{!"p1 int", !10, i64 0}
!26 = !{!"any p2 pointer", !10, i64 0}
!27 = !{!"p2 _ZTS15AVFrameSideData", !26, i64 0}
!28 = !{!"AVCodecContext", !16, i64 0, !7, i64 8, !7, i64 12, !17, i64 16, !7, i64 24, !7, i64 28, !10, i64 32, !18, i64 40, !10, i64 48, !12, i64 56, !7, i64 64, !7, i64 68, !13, i64 72, !7, i64 80, !15, i64 84, !15, i64 92, !15, i64 100, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !15, i64 128, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !7, i64 176, !10, i64 184, !10, i64 192, !7, i64 200, !19, i64 204, !19, i64 208, !19, i64 212, !19, i64 216, !19, i64 220, !19, i64 224, !19, i64 228, !19, i64 232, !19, i64 236, !7, i64 240, !7, i64 244, !7, i64 248, !7, i64 252, !7, i64 256, !7, i64 260, !7, i64 264, !7, i64 268, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !20, i64 288, !20, i64 296, !20, i64 304, !7, i64 312, !7, i64 316, !7, i64 320, !7, i64 324, !7, i64 328, !7, i64 332, !7, i64 336, !7, i64 340, !7, i64 344, !7, i64 348, !21, i64 352, !7, i64 376, !7, i64 380, !7, i64 384, !7, i64 388, !7, i64 392, !7, i64 396, !7, i64 400, !7, i64 404, !10, i64 408, !7, i64 416, !7, i64 420, !7, i64 424, !19, i64 428, !19, i64 432, !7, i64 436, !7, i64 440, !7, i64 444, !7, i64 448, !7, i64 452, !22, i64 456, !12, i64 464, !12, i64 472, !19, i64 480, !19, i64 484, !7, i64 488, !7, i64 492, !13, i64 496, !13, i64 504, !7, i64 512, !7, i64 516, !7, i64 520, !7, i64 524, !7, i64 528, !23, i64 536, !10, i64 544, !11, i64 552, !11, i64 560, !7, i64 568, !7, i64 572, !6, i64 576, !7, i64 640, !7, i64 644, !7, i64 648, !7, i64 652, !7, i64 656, !7, i64 660, !7, i64 664, !10, i64 672, !10, i64 680, !7, i64 688, !7, i64 692, !7, i64 696, !7, i64 700, !7, i64 704, !7, i64 708, !7, i64 712, !7, i64 716, !7, i64 720, !24, i64 728, !13, i64 736, !7, i64 744, !7, i64 748, !13, i64 752, !13, i64 760, !13, i64 768, !14, i64 776, !7, i64 784, !7, i64 788, !12, i64 792, !7, i64 800, !7, i64 804, !12, i64 808, !10, i64 816, !12, i64 824, !25, i64 832, !7, i64 840, !27, i64 848, !7, i64 856, !7, i64 860}
!29 = !{!28, !10, i64 32}
!30 = !{!"p1 _ZTS14AVCodecContext", !10, i64 0}
!31 = !{!"p1 _ZTS17AVFloatDSPContext", !10, i64 0}
!32 = !{!"p1 _ZTS13TwinVQModeTab", !10, i64 0}
!33 = !{!"p1 float", !10, i64 0}
!34 = !{!"TwinVQContext", !30, i64 0, !31, i64 8, !6, i64 16, !6, i64 40, !32, i64 64, !7, i64 72, !6, i64 76, !6, i64 236, !6, i64 1196, !6, i64 33964, !6, i64 33972, !6, i64 33976, !6, i64 33992, !6, i64 34008, !33, i64 34024, !33, i64 34032, !33, i64 34040, !6, i64 34048, !7, i64 34056, !6, i64 34064, !33, i64 34088, !7, i64 34096, !7, i64 34100, !7, i64 34104, !6, i64 34108, !7, i64 36740, !10, i64 36744, !10, i64 36752, !10, i64 36760}
!35 = !{!34, !32, i64 64}
!36 = !{!"short", !6, i64 0}
!37 = !{!"TwinVQModeTab", !6, i64 0, !36, i64 192, !6, i64 194, !33, i64 200, !6, i64 208, !6, i64 209, !6, i64 210, !6, i64 211, !20, i64 216, !6, i64 224, !6, i64 225, !6, i64 226, !6, i64 227, !36, i64 228}
!38 = !{!37, !36, i64 192}
!39 = !{!34, !7, i64 34100}
!40 = !{!28, !7, i64 380}
!41 = !{!34, !33, i64 34024}
!42 = !{!34, !30, i64 0}
!43 = !{!28, !7, i64 356}
!44 = !{!"TwinVQFrameMode", !6, i64 0, !20, i64 8, !6, i64 16, !20, i64 24, !6, i64 32, !6, i64 33, !20, i64 40, !20, i64 48, !6, i64 56}
!45 = !{!44, !6, i64 0}
!46 = !{!6, !6, i64 0}
!47 = !{!19, !19, i64 0}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"llvm.loop.isvectorized", i32 1}
!50 = !{!"llvm.loop.unroll.runtime.disable"}
!51 = !{!7, !7, i64 0}
!52 = !{!37, !6, i64 226}
!53 = !{!34, !33, i64 34088}
!54 = !{!34, !31, i64 8}
!55 = !{!37, !6, i64 209}
!56 = !{!37, !6, i64 194}
!57 = !{!37, !6, i64 210}
!58 = !{!37, !6, i64 211}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = !{!33, !33, i64 0}
!61 = !{!34, !33, i64 34040}
!62 = !{!34, !33, i64 34032}
!63 = !{!36, !36, i64 0}
!64 = distinct !{!64, !48, !49, !50}
!65 = distinct !{!65, !48, !50, !49}
!66 = distinct !{!66, !48, !49, !50}
!67 = distinct !{!67, !48, !50, !49}
!68 = distinct !{!68, !48}
!69 = distinct !{null}
!70 = distinct !{!70, !48}
!71 = distinct !{!71, !48}
!72 = distinct !{!72, !48, !49, !50}
!73 = distinct !{!73, !59}
!74 = distinct !{!74, !48, !49}
!75 = distinct !{!75, !48}
!76 = distinct !{!76, !"LVerDomain"}
!77 = distinct !{!77, !76}
!78 = distinct !{!78, !76}
!79 = distinct !{!79, !76}
!80 = distinct !{!80, !48, !49, !50}
!81 = distinct !{!81, !48, !49}
!82 = distinct !{!82, !48, !49, !50}
!83 = distinct !{!83, !48, !50, !49}
!84 = distinct !{!84, !48}
!85 = distinct !{!85, !48}
!86 = distinct !{!86, !48}
!87 = distinct !{null, null}
!88 = distinct !{!88, !48, !124}
!89 = distinct !{!89, !48}
!90 = distinct !{null}
!91 = distinct !{!91, !48}
!92 = !{!"AVPacket", !11, i64 0, !12, i64 8, !12, i64 16, !13, i64 24, !7, i64 32, !7, i64 36, !7, i64 40, !14, i64 48, !7, i64 56, !12, i64 64, !12, i64 72, !10, i64 80, !11, i64 88, !15, i64 96}
!93 = !{!92, !13, i64 24}
!94 = !{!92, !7, i64 32}
!95 = !{!34, !7, i64 34056}
!96 = !{!"p2 omnipotent char", !26, i64 0}
!97 = !{!"p2 _ZTS11AVBufferRef", !26, i64 0}
!98 = !{!"p1 _ZTS12AVDictionary", !10, i64 0}
!99 = !{!"AVFrame", !6, i64 0, !6, i64 64, !96, i64 96, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !15, i64 124, !12, i64 136, !12, i64 144, !15, i64 152, !7, i64 160, !10, i64 168, !7, i64 176, !7, i64 180, !6, i64 184, !97, i64 248, !7, i64 256, !27, i64 264, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !7, i64 288, !7, i64 292, !7, i64 296, !12, i64 304, !98, i64 312, !7, i64 320, !11, i64 328, !11, i64 336, !12, i64 344, !12, i64 352, !12, i64 360, !12, i64 368, !10, i64 376, !21, i64 384, !12, i64 408, !7, i64 416}
!100 = !{!99, !7, i64 112}
!101 = !{!99, !96, i64 96}
!102 = !{!34, !10, i64 36744}
!103 = !{!34, !7, i64 34104}
!104 = !{!"TwinVQFrameData", !7, i64 0, !7, i64 4, !6, i64 8, !6, i64 1032, !6, i64 1092, !6, i64 1094, !6, i64 1126, !6, i64 1254, !6, i64 1286, !6, i64 1288, !6, i64 1296, !6, i64 1300, !6, i64 1308}
!105 = !{!104, !7, i64 4}
!106 = !{!44, !20, i64 40}
!107 = !{!44, !20, i64 48}
!108 = !{!44, !6, i64 56}
!109 = !{!37, !20, i64 216}
!110 = !{!34, !10, i64 36752}
!111 = !{!"AVFloatDSPContext", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88}
!112 = !{!111, !10, i64 0}
!113 = !{!34, !10, i64 36760}
!114 = !{!37, !33, i64 200}
!115 = !{!77}
!116 = !{!78}
!117 = !{!79, !77}
!118 = !{!79}
!119 = !{!104, !7, i64 0}
!120 = !{!"p1 _ZTS11AVTXContext", !10, i64 0}
!121 = !{!120, !120, i64 0}
!122 = !{!10, !10, i64 0}
!123 = !{!111, !10, i64 40}
!124 = !{!"llvm.loop.peeled.count", i32 1}
!125 = !{!111, !10, i64 64}
!126 = distinct !{!126, !48}
!127 = !{!28, !7, i64 348}
!128 = !{!34, !7, i64 34096}
!129 = !{!28, !7, i64 64}
!130 = distinct !{!130, !48}
!131 = distinct !{!131, !48}
!132 = distinct !{!132, !48}
!133 = distinct !{!133, !48}
!134 = distinct !{!134, !48}
!135 = distinct !{!135, !48}
!136 = distinct !{!136, !48}
!137 = !{!28, !12, i64 56}
!138 = !{!28, !7, i64 344}
!139 = !{!37, !6, i64 208}
!140 = !{!37, !6, i64 227}
!141 = !{!37, !6, i64 225}
!142 = !{!37, !6, i64 224}
!143 = !{!44, !6, i64 32}
!144 = !{!44, !6, i64 33}
!145 = !{!34, !7, i64 36740}
!146 = !{!34, !7, i64 72}
!147 = distinct !{!147, !48}
!148 = distinct !{!148, !48}
!149 = distinct !{!149, !48}
!150 = distinct !{!150, !"LVerDomain"}
!151 = distinct !{!151, !150}
!152 = distinct !{!152, !150}
!153 = distinct !{!153, !48, !49, !50}
!154 = distinct !{!154, !"LVerDomain"}
!155 = distinct !{!155, !154}
!156 = distinct !{!156, !154}
!157 = distinct !{!157, !48, !49, !50}
!158 = distinct !{!158, !48, !49}
!159 = distinct !{!159, !48, !49}
!160 = distinct !{!160, !48}
!161 = distinct !{!161, !59}
!162 = distinct !{!162, !59}
!163 = distinct !{!163, !48}
!164 = distinct !{!164, !59}
!165 = !{!151}
!166 = !{!152}
!167 = !{!155}
!168 = !{!156}
!169 = distinct !{!169, !48}
!170 = distinct !{!170, !48}
!171 = distinct !{!171, !48}
!172 = distinct !{!172, !48, !49, !50}
!173 = distinct !{!173, !48, !50, !49}
!174 = distinct !{!174, !48}
!175 = distinct !{!175, !48, !49, !50}
!176 = distinct !{!176, !48, !50, !49}
end_hunk_0
