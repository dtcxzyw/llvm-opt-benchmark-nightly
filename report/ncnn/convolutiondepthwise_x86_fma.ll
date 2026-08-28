Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolutiondepthwise_x86_fma?download=true
inline.NumInlined: 225
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZNK4ncnn28ConvolutionDepthWise_x86_fma16forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.3:bb.a
  %i.bi = phi i32 [ %i.ae, %_ZN4ncnn3MatD2Ev.exit67 ], [ %.pre153.a, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.ae, %.preheader.lr.ph ] ; 2 uses
  %i.bj = phi i32 [ %i.af, %_ZN4ncnn3MatD2Ev.exit67 ], [ %i.bm, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.af, %.preheader.lr.ph ]
  %i.bk = phi i32 [ %i.ag, %_ZN4ncnn3MatD2Ev.exit67 ], [ %i.bm, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.ag, %.preheader.lr.ph ]
  %indvars.iv.next150 = add nsw i64 %indvars.iv149, 1
  %i.bl = sext i32 %i.bi to i64
  %.not.not = icmp slt i64 %indvars.iv149, %i.bl
  br i1 %.not.not, label %_ZN4ncnn3MatD2Ev.exit67, label %._crit_edge145, !llvm.loop !360

._crit_edge137.loopexit:                          ; preds = %bb.s
  %.pre152 = load i32, ptr %6, align 4, !tbaa !72
  br label %._crit_edge137

._crit_edge137:                                   ; preds = %._crit_edge137.loopexit, %.preheader
  %i.bm = phi i32 [ %i.be, %.preheader ], [ %.pre152, %._crit_edge137.loopexit ] ; 4 uses
  %i.bn = phi i32 [ %i.bf, %.preheader ], [ %i.go, %._crit_edge137.loopexit ]
  %i.bo = phi i32 [ %i.bg, %.preheader ], [ %i.go, %._crit_edge137.loopexit ]
  %.163.lcssa = phi ptr [ %.062140, %.preheader ], [ %.264, %._crit_edge137.loopexit ]
  %.1.lcssa = phi ptr [ %.061141, %.preheader ], [ %.2, %._crit_edge137.loopexit ]
  %i.bp = add nuw nsw i32 %.060142, 1             ; 2 uses
  %i.bq = icmp slt i32 %i.bp, %i.bm
  br i1 %i.bq, label %.preheader, label %_ZN4ncnn3MatD2Ev.exit.loopexit, !llvm.loop !361

.lr.ph136:                                        ; preds = %.preheader, %bb.s
  %i.br = phi i32 [ %i.go, %bb.s ], [ %i.bf, %.preheader ]
  %.059135 = phi i32 [ %i.gp, %bb.s ], [ 0, %.preheader ] ; 2 uses
  %.1134 = phi ptr [ %.2, %bb.s ], [ %.061141, %.preheader ] ; 3 uses
  %.163133 = phi ptr [ %.264, %bb.s ], [ %.062140, %.preheader ] ; 3 uses
  %i.bs = load i32, ptr %i.s, align 8, !tbaa !67
  %i.bt = mul nsw i32 %i.bs, %.060142
  %i.bu = sext i32 %i.bt to i64
  %i.bv = mul i64 %i.av, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bv
  %i.bx = load i32, ptr %i.t, align 4, !tbaa !66
  %i.by = mul nsw i32 %i.bx, %.059135
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds i8, ptr %i.bw, i64 %i.bz ; 5 uses
  %i.cb = load i32, ptr %4, align 4, !tbaa !72    ; 3 uses
  %i.cc = icmp sgt i32 %i.cb, 0
  br i1 %i.cc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph136
  %i.cd = load ptr, ptr %8, align 8, !tbaa !92    ; 5 uses
  %wide.trip.count = zext nneg i32 %i.cb to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.ce = icmp ult i32 %i.cb, 4
  br i1 %i.ce, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.d

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.058131.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.em, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod178 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod178)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 3 uses
  %.058131.epil = phi i32 [ %.058131.epil.init, %.epil.preheader ], [ %i.cp, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv.epil
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !72
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds i8, ptr %i.ca, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !103
  %i.ck = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv.epil
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !103
  %i.cm = sext i8 %i.cj to i32
  %i.cn = sext i8 %i.cl to i32
  %i.co = mul nsw i32 %i.cn, %i.cm
  %i.cp = add nsw i32 %i.co, %.058131.epil        ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit, label %bb.c, !llvm.loop !362

._crit_edge.loopexit:                             ; preds = %bb.c, %._crit_edge.loopexit.unr-lcssa
  %.lcssa = phi i32 [ %i.em, %._crit_edge.loopexit.unr-lcssa ], [ %i.cp, %bb.c ]
  %i.cq = sitofp fast i32 %.lcssa to float
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph136
  %.058.lcssa = phi float [ 0.000000e+00, %.lr.ph136 ], [ %i.cq, %._crit_edge.loopexit ]
  %i.cr = load ptr, ptr %i.u, align 8, !tbaa !18
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv149
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !45 ; 2 uses
  %i.cu = fcmp fast oeq float %i.ct, 0.000000e+00
  br i1 %i.cu, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.d ] ; 6 uses
  %.058131 = phi i32 [ 0, %.lr.ph.new ], [ %i.em, %bb.d ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.d ]
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !72
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds i8, ptr %i.ca, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !103
  %i.da = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv
  %i.db = load i8, ptr %i.da, align 1, !tbaa !103
  %i.dc = sext i8 %i.cz to i32
  %i.dd = sext i8 %i.db to i32
  %i.de = mul nsw i32 %i.dd, %i.dc
  %i.df = add nsw i32 %i.de, %.058131
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv.next
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !72
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds i8, ptr %i.ca, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !103
  %i.dl = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv.next
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !103
  %i.dn = sext i8 %i.dk to i32
  %i.do = sext i8 %i.dm to i32
  %i.dp = mul nsw i32 %i.do, %i.dn
  %i.dq = add nsw i32 %i.dp, %i.df
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv.next.1
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !72
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds i8, ptr %i.ca, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !103
  %i.dw = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv.next.1
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !103
  %i.dy = sext i8 %i.dv to i32
  %i.dz = sext i8 %i.dx to i32
  %i.ea = mul nsw i32 %i.dz, %i.dy
  %i.eb = add nsw i32 %i.ea, %i.dq
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv.next.2
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !72
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds i8, ptr %i.ca, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !103
  %i.eh = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv.next.2
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !103
  %i.ej = sext i8 %i.eg to i32
  %i.ek = sext i8 %i.ei to i32
  %i.el = mul nsw i32 %i.ek, %i.ej
  %i.em = add nsw i32 %i.el, %i.eb                ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.d, !llvm.loop !364

bb.e:                                             ; preds = %._crit_edge
  %i.en = load ptr, ptr %i.v, align 8, !tbaa !18
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %indvars.iv149
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !45
  %i.eq = fmul fast float %i.ep, %i.ct
  %i.er = fdiv fast float %.058.lcssa, %i.eq
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %.055 = phi float [ %i.er, %bb.e ], [ 0.000000e+00, %._crit_edge ] ; 2 uses
  %i.es = load i32, ptr %i.w, align 8, !tbaa !82
  %.not65 = icmp eq i32 %i.es, 0
  br i1 %.not65, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.et = load ptr, ptr %i.x, align 8, !tbaa !18
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv149
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !45
  %i.ew = fadd fast float %i.ev, %.055
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi nsz float [ %i.ew, %bb.g ], [ %.055, %bb.f ] ; 13 uses
  %i.ex = load i32, ptr %i.y, align 8, !tbaa !44
  switch i32 %i.ex, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit [
    i32 1, label %bb.i
    i32 2, label %bb.j
    i32 3, label %bb.k
    i32 4, label %bb.l
    i32 5, label %bb.m
    i32 6, label %bb.n
  ]

bb.i:                                             ; preds = %bb.h
  %i.ey = call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.0, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.j:                                             ; preds = %bb.h
  %i.ez = load ptr, ptr %i.z, align 8, !tbaa !18
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !45
  %i.fb = fcmp fast ogt float %.0, 0.000000e+00
  %i.fc = select fast i1 %i.fb, float 1.000000e+00, float %i.fa
  %i.fd = fmul fast float %i.fc, %.0
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.k:                                             ; preds = %bb.h
  %i.fe = load ptr, ptr %i.z, align 8, !tbaa !18  ; 2 uses
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !45
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !45 ; 2 uses
  %.0127 = call nnan ninf nsz float @llvm.maxnum.f32(float %.0, float %i.ff) ; 2 uses
  %10 = fcmp fast ogt float %.0127, %i.fh
  br i1 %10, label %11, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

11:                                               ; preds = %bb.k
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.l:                                             ; preds = %bb.h
  %.sroa.speculated118 = call nnan ninf nsz float @llvm.minnum.f32(float %.0, float f0x42B0C0A5)
  %.sroa.speculated = call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated118, float f0xC2B0C0A5)
  %i.fi = fneg fast float %.sroa.speculated
  %i.fj = call fast float @llvm.exp.f32(float %i.fi)
  %i.fk = fadd fast float %i.fj, 1.000000e+00
  %i.fl = fdiv fast float 1.000000e+00, %i.fk
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.m:                                             ; preds = %bb.h
  %i.fm = call fast float @llvm.exp.f32(float nofpclass(nan inf) %.0)
  %i.fn = fadd fast float %i.fm, 1.000000e+00
  %i.fo = call fast float @llvm.log.f32(float %i.fn)
  %i.fp = call fast float @llvm.tanh.f32(float %i.fo)
  %i.fq = fmul fast float %i.fp, %.0
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.n:                                             ; preds = %bb.h
  %i.fr = load ptr, ptr %i.z, align 8, !tbaa !18  ; 2 uses
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !45 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !45 ; 2 uses
  %i.fv = fneg fast float %i.fu
  %i.fw = fdiv fast float %i.fv, %i.fs            ; 2 uses
  %i.fx = fcmp fast olt float %.0, %i.fw
  br i1 %i.fx, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fy = fdiv fast float 1.000000e+00, %i.fs
  %i.fz = fadd fast float %i.fw, %i.fy
  %i.ga = fcmp fast ogt float %.0, %i.fz
  br i1 %i.ga, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.gb = fmul fast float %i.fs, %.0
  %i.gc = fadd fast float %i.gb, %i.fu
  %i.gd = fmul fast float %i.gc, %.0
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit:           ; preds = %bb.p, %bb.o, %bb.m, %bb.l, %11, %bb.k, %bb.j, %bb.i, %bb.h, %bb.n
  %.1128 = phi nsz float [ %.0, %bb.h ], [ %i.ey, %bb.i ], [ %i.fd, %bb.j ], [ %i.fh, %11 ], [ %.0127, %bb.k ], [ %i.fl, %bb.l ], [ %i.fq, %bb.m ], [ %i.gd, %bb.p ], [ %.0, %bb.o ], [ 0.000000e+00, %bb.n ] ; 2 uses
  %i.ge = load i8, ptr %9, align 1, !tbaa !101, !range !55, !noundef !56
  %i.gf = trunc nuw i8 %i.ge to i1
  br i1 %i.gf, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %i.gg = load ptr, ptr %i.aa, align 8, !tbaa !18
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv149
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !45
  %i.gj = fmul fast float %i.gi, %.1128
  %i.gk = call fast noundef nofpclass(nan inf) float @llvm.round.f32(float nofpclass(nan inf) %i.gj)
  %i.gl = fptosi float %i.gk to i32
  %spec.select.i129 = call i32 @llvm.smax.i32(i32 %i.gl, i32 -127)
  %.0.i130 = call i32 @llvm.smin.i32(i32 %spec.select.i129, i32 127)
  %.0.i = trunc nsw i32 %.0.i130 to i8
  store i8 %.0.i, ptr %.163133, align 1, !tbaa !103
  %i.gm = getelementptr inbounds nuw i8, ptr %.163133, i64 1
  %.pre = load i32, ptr %7, align 4, !tbaa !72
  br label %bb.s

bb.r:                                             ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  store float %.1128, ptr %.1134, align 4, !tbaa !45
  %i.gn = getelementptr inbounds nuw i8, ptr %.1134, i64 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.go = phi i32 [ %.pre, %bb.q ], [ %i.br, %bb.r ] ; 4 uses
  %.264 = phi ptr [ %i.gm, %bb.q ], [ %.163133, %bb.r ] ; 2 uses
  %.2 = phi ptr [ %.1134, %bb.q ], [ %i.gn, %bb.r ] ; 2 uses
  %i.gp = add nuw nsw i32 %.059135, 1             ; 2 uses
  %i.gq = icmp slt i32 %i.gp, %i.go
  br i1 %i.gq, label %.lr.ph136, label %._crit_edge137.loopexit, !llvm.loop !365

._crit_edge145:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %_ZN4ncnn3MatD2Ev.exit67.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge145, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16>, <8 x i16>) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.rcp.ps(<4 x float>) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smin.v8i16(<8 x i16>, <8 x i16>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smax.v8i16(<8 x i16>, <8 x i16>) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16>, <8 x i16>) #16

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL28convdw3x3s1_int8_requant_sseERKNS_3MatERS0_S2_S2_St6vectorIfSaIfEERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10) #17 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !72     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 %i.g, ptr %i.b, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i32 1, ptr %i.c, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i32 0, ptr %i.d, align 4, !tbaa !72
  %i.h = load i32, ptr %0, align 4, !tbaa !72     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !72
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !72
  %i.k = load i32, ptr %i.a, align 4, !tbaa !72   ; 2 uses
  %.not128 = icmp sgt i32 %i.k, %i.j
  br i1 %.not128, label %._crit_edge130, label %_ZN4ncnn3Mat7channelEi.exit.lr.ph

_ZN4ncnn3Mat7channelEi.exit.lr.ph:                ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.p = sext i32 %i.k to i64                     ; 2 uses
  %i.q = mul nsw i64 %i.p, 9
  br label %_ZN4ncnn3Mat7channelEi.exit

_ZN4ncnn3Mat7channelEi.exit:                      ; preds = %_ZN4ncnn3Mat7channelEi.exit.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %indvar = phi i64 [ 0, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %indvar.next, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %i.r = phi i32 [ %i.j, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %i.hb, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %indvars.iv = phi i64 [ %i.p, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit ] ; 7 uses
  %i.s = mul nuw nsw i64 %indvar, 9
  %i.t = load ptr, ptr %3, align 8, !tbaa !18, !noalias !366
  %i.u = load i64, ptr %i.l, align 8, !tbaa !20, !noalias !366
  %i.v = mul i64 %i.u, %indvars.iv
  %i.w = load i64, ptr %i.m, align 8, !tbaa !70, !noalias !366
  %i.x = mul i64 %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.x
  %i.z = load ptr, ptr %4, align 8, !tbaa !168    ; 2 uses
  %.not82 = icmp eq ptr %i.z, null
  br i1 %.not82, label %_ZN4ncnn3MatD2Ev.exit83, label %bb.c

bb.c:                                             ; preds = %_ZN4ncnn3Mat7channelEi.exit
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !45
  br label %_ZN4ncnn3MatD2Ev.exit83

_ZN4ncnn3MatD2Ev.exit83:                          ; preds = %_ZN4ncnn3Mat7channelEi.exit, %bb.c
  %i.ac = phi fast float [ %i.ab, %bb.c ], [ 0.000000e+00, %_ZN4ncnn3Mat7channelEi.exit ] ; 2 uses
  %i.ad = load ptr, ptr %5, align 8, !tbaa !149
  %.idx = shl i64 %indvars.iv, 3
  %i.ae = getelementptr i8, ptr %i.ad, i64 %.idx  ; 2 uses
  %i.af = load float, ptr %i.ae, align 4, !tbaa !45 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.ae, i64 4
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !45 ; 2 uses
  %i.ai = load ptr, ptr %6, align 8, !tbaa !348   ; 2 uses
  %i.aj = mul i64 %indvars.iv, 9
  %i.ak = getelementptr i8, ptr %i.ai, i64 %i.aj  ; 11 uses
  %i.al = load i32, ptr %9, align 4, !tbaa !72    ; 2 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph127, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph127:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit83
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 1 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 2 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 3 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 5 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 6 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 7 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.av = load i32, ptr %10, align 4, !tbaa !72
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph127.split.preheader, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph127.split.preheader:                        ; preds = %.lr.ph127
  %i.ax = load ptr, ptr %7, align 8, !tbaa !18, !noalias !369
  %i.ay = load i64, ptr %i.n, align 8, !tbaa !20, !noalias !369
  %i.az = mul i64 %i.ay, %indvars.iv
  %i.ba = load i64, ptr %i.o, align 8, !tbaa !70, !noalias !369
  %i.bb = mul i64 %i.az, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bb ; 3 uses
  %i.bd = load i32, ptr %8, align 4, !tbaa !72    ; 2 uses
  %i.be = shl nsw i32 %i.bd, 1
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds i8, ptr %i.bc, i64 %i.bf
  %i.bh = sext i32 %i.bd to i64
  %i.bi = getelementptr inbounds i8, ptr %i.bc, i64 %i.bh
  %i.bj = getelementptr i8, ptr %i.ai, i64 %i.q
  %i.bk = getelementptr i8, ptr %i.bj, i64 9
  %scevgep157 = getelementptr i8, ptr %i.bk, i64 %i.s
  %broadcast.splatinsert185 = insertelement <4 x float> poison, float %i.af, i64 0
  %broadcast.splat186 = shufflevector <4 x float> %broadcast.splatinsert185, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert187 = insertelement <4 x float> poison, float %i.ac, i64 0
  %broadcast.splat188 = shufflevector <4 x float> %broadcast.splatinsert187, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert189 = insertelement <4 x float> poison, float %i.ah, i64 0
  %broadcast.splat190 = shufflevector <4 x float> %broadcast.splatinsert189, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph127.split

.lr.ph127.split:                                  ; preds = %.lr.ph127.split.preheader, %._crit_edge
  %i.bl = phi i32 [ %i.gv, %._crit_edge ], [ %i.al, %.lr.ph127.split.preheader ]
  %.072126 = phi i32 [ %i.gz, %._crit_edge ], [ 0, %.lr.ph127.split.preheader ]
  %.073125 = phi ptr [ %i.gy, %._crit_edge ], [ %i.bg, %.lr.ph127.split.preheader ] ; 7 uses
  %.074124 = phi ptr [ %i.gx, %._crit_edge ], [ %i.bi, %.lr.ph127.split.preheader ] ; 7 uses
  %.076123 = phi ptr [ %i.gw, %._crit_edge ], [ %i.bc, %.lr.ph127.split.preheader ] ; 7 uses
  %.078122 = phi ptr [ %.179.lcssa, %._crit_edge ], [ %i.y, %.lr.ph127.split.preheader ] ; 10 uses
  %i.bm = load i32, ptr %10, align 4, !tbaa !72   ; 7 uses
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph127.split
  %i.bo = zext nneg i32 %i.bm to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.bm, 4
  br i1 %min.iters.check, label %.lr.ph.preheader206, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep = getelementptr i8, ptr %.078122, i64 1
  %i.bp = add nsw i32 %i.bm, -1
  %i.bq = zext i32 %i.bp to i64                   ; 4 uses
  %scevgep150 = getelementptr i8, ptr %scevgep, i64 %i.bq ; 4 uses
  %scevgep151 = getelementptr i8, ptr %.073125, i64 3
  %scevgep152 = getelementptr i8, ptr %scevgep151, i64 %i.bq
  %scevgep153 = getelementptr i8, ptr %.074124, i64 3
  %scevgep154 = getelementptr i8, ptr %scevgep153, i64 %i.bq
  %scevgep155 = getelementptr i8, ptr %.076123, i64 3
  %scevgep156 = getelementptr i8, ptr %scevgep155, i64 %i.bq
end_hunk_0
