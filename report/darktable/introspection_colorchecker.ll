Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_colorchecker?download=true
inline.NumInlined: 70
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 64
begin_hunk_0_@process:bb.a
  %i.dp = getelementptr inbounds nuw i8, ptr %i.e, i64 804 ; 3 uses
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.dp, i64 %i.dg
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !13
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.dp, i64 %i.dk
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !13
  %i.du = getelementptr inbounds [4 x i8], ptr %i.dp, i64 %i.ao
  %i.dv = load float, ptr %i.du, align 4, !tbaa !13
  %i.dw = getelementptr inbounds nuw i8, ptr %i.e, i64 592 ; 3 uses
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.dg
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !13
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.dk
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !13
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.ao
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !13
  %i.ed = getelementptr inbounds [16 x i8], ptr %i.aq, i64 %i.n
  %wide.trip.count140 = zext nneg i32 %i.m to i64
  %i.ee = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.ea, i64 0
  %i.ef = insertelement <4 x float> %i.ee, float %i.dt, i64 1
  %i.eg = insertelement <4 x float> %i.ef, float %i.dm, i64 2
  %i.eh = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.ec, i64 0
  %i.ei = insertelement <4 x float> %i.eh, float %i.dv, i64 1
  %i.ej = insertelement <4 x float> %i.ei, float %i.do, i64 2
  %i.ek = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.dy, i64 0
  %i.el = insertelement <4 x float> %i.ek, float %i.dr, i64 1
  %i.em = insertelement <4 x float> %i.el, float %i.di, i64 2
  br label %.preheader

scalar.ph198:                                     ; preds = %scalar.ph198.prol.loopexit, %scalar.ph198
  %indvars.iv129 = phi i64 [ %indvars.iv.next130.3, %scalar.ph198 ], [ %indvars.iv129.unr, %scalar.ph198.prol.loopexit ] ; 8 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv129
  %i.eo = load float, ptr %i.en, align 4, !tbaa !13
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %indvars.iv129 ; 3 uses
  store float %i.eo, ptr %i.ep, align 16, !tbaa !13
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv129
  %i.er = load float, ptr %i.eq, align 4, !tbaa !13
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  store float %i.er, ptr %i.es, align 4, !tbaa !13
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv129
  %i.eu = load float, ptr %i.et, align 4, !tbaa !13
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.ew = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.eu, i64 0
  store <2 x float> %i.ew, ptr %i.ev, align 8, !tbaa !13
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1 ; 4 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.next130
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !13
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %indvars.iv.next130 ; 3 uses
  store float %i.ey, ptr %i.ez, align 16, !tbaa !13
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.next130
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !13
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  store float %i.fb, ptr %i.fc, align 4, !tbaa !13
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.next130
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !13
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fg = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fe, i64 0
  store <2 x float> %i.fg, ptr %i.ff, align 8, !tbaa !13
  %indvars.iv.next130.1 = add nuw nsw i64 %indvars.iv129, 2 ; 4 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.next130.1
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !13
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %indvars.iv.next130.1 ; 3 uses
  store float %i.fi, ptr %i.fj, align 16, !tbaa !13
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.next130.1
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !13
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  store float %i.fl, ptr %i.fm, align 4, !tbaa !13
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.next130.1
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !13
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fq = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fo, i64 0
  store <2 x float> %i.fq, ptr %i.fp, align 8, !tbaa !13
  %indvars.iv.next130.2 = add nuw nsw i64 %indvars.iv129, 3 ; 4 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.next130.2
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !13
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %indvars.iv.next130.2 ; 3 uses
  store float %i.fs, ptr %i.ft, align 16, !tbaa !13
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.next130.2
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !13
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  store float %i.fv, ptr %i.fw, align 4, !tbaa !13
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.next130.2
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !13
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.ga = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fy, i64 0
  store <2 x float> %i.ga, ptr %i.fz, align 8, !tbaa !13
  %indvars.iv.next130.3 = add nuw nsw i64 %indvars.iv129, 4 ; 2 uses
  %exitcond133.not.3 = icmp eq i64 %indvars.iv.next130.3, %wide.trip.count132
  br i1 %exitcond133.not.3, label %._crit_edge116, label %scalar.ph198, !llvm.loop !66

._crit_edge126:                                   ; preds = %._crit_edge122, %._crit_edge116
  tail call void @llvm.x86.sse.sfence()
  tail call void @free(ptr noundef %i.aq) #23
  tail call void @free(ptr noundef %i.p) #23
  br label %bb.c

.preheader:                                       ; preds = %.lr.ph125, %._crit_edge122
  %indvars.iv142 = phi i64 [ 0, %.lr.ph125 ], [ %indvars.iv.next143, %._crit_edge122 ] ; 2 uses
  %i.gb = shl nuw nsw i64 %indvars.iv142, 2       ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.gb ; 2 uses
  %.sroa.0172.0.copyload = load float, ptr %i.gc, align 4, !tbaa !13, !alias.scope !67 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  %i.gd = load <2 x float>, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !13, !alias.scope !67 ; 3 uses
  %i.ge = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %.sroa.0172.0.copyload, i64 0
  %i.gf = shufflevector <4 x float> %i.ge, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.gg = fmul reassoc nsz arcp contract afn <4 x float> %i.gf, %i.ej
  %i.gh = shufflevector <2 x float> %i.gd, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.gi = insertelement <4 x float> %i.gh, float -0.000000e+00, i64 3
  %i.gj = fmul reassoc nsz arcp contract afn <4 x float> %i.gi, %i.eg
  %i.gk = shufflevector <2 x float> %i.gd, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.gl = insertelement <4 x float> %i.gk, float -0.000000e+00, i64 3
  %i.gm = fmul reassoc nsz arcp contract afn <4 x float> %i.gl, %i.em
  %i.gn = fadd reassoc nsz arcp contract afn <4 x float> %i.gj, %i.gg
  %i.go = fadd reassoc nsz arcp contract afn <4 x float> %i.gn, %i.gm
  %i.gp = load <4 x float>, ptr %i.ed, align 16, !tbaa !13
  %i.gq = fadd reassoc nsz arcp contract afn <4 x float> %i.gp, %i.go ; 2 uses
  br i1 %i.q, label %.lr.ph121, label %._crit_edge122

._crit_edge122:                                   ; preds = %.lr.ph121, %.preheader
  %.sroa.0.1 = phi nsz <4 x float> [ %i.gq, %.preheader ], [ %i.hw, %.lr.ph121 ]
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.gb
  store <4 x float> %.sroa.0.1, ptr %i.gr, align 16, !tbaa !71, !alias.scope !72, !nontemporal !75
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 2 uses
  %exitcond145.not = icmp eq i64 %indvars.iv.next143, %i.l
  br i1 %exitcond145.not, label %._crit_edge126, label %.preheader

.lr.ph121:                                        ; preds = %.preheader, %.lr.ph121
  %.sroa.0.2 = phi nsz <4 x float> [ %i.hw, %.lr.ph121 ], [ %i.gq, %.preheader ]
  %indvars.iv137 = phi i64 [ %indvars.iv.next138, %.lr.ph121 ], [ 0, %.preheader ] ; 3 uses
  %i.gs = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv137 ; 2 uses
  %i.gt = load float, ptr %i.gs, align 16, !tbaa !13
  %i.gu = fsub reassoc nsz arcp contract afn float %.sroa.0172.0.copyload, %i.gt ; 2 uses
  %i.gv = fmul reassoc nsz arcp contract afn float %i.gu, %i.gu
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  %i.gx = load <2 x float>, ptr %i.gw, align 4, !tbaa !13
  %i.gy = fsub reassoc nsz arcp contract afn <2 x float> %i.gd, %i.gx ; 2 uses
  %i.gz = fmul reassoc nsz arcp contract afn <2 x float> %i.gy, %i.gy ; 2 uses
  %i.ha = extractelement <2 x float> %i.gz, i64 0
  %i.hb = fadd reassoc nsz arcp contract afn float %i.ha, %i.gv
  %i.hc = extractelement <2 x float> %i.gz, i64 1
  %i.hd = fadd reassoc nsz arcp contract afn float %i.hb, %i.hc ; 3 uses
  %i.he = fcmp reassoc nsz arcp contract afn olt float %i.hd, f0x322BCC77
  %i.hf = bitcast float %i.hd to i32
  %i.hg = select i1 %i.he, i32 841731191, i32 %i.hf ; 2 uses
  %i.hh = and i32 %i.hg, 8388607
  %i.hi = or disjoint i32 %i.hh, 1056964608
  %i.hj = uitofp reassoc nsz arcp contract afn i32 %i.hg to float
  %i.hk = fmul reassoc nnan nsz arcp contract afn float %i.hj, f0x34000000
  %i.hl = bitcast i32 %i.hi to float              ; 2 uses
  %i.hm = fadd reassoc nsz arcp contract afn float %i.hl, f0x3EB444F9
  %.neg.i.i.i = fmul reassoc nnan nsz arcp contract afn float %i.hl, f0xBFBFBF75
  %.neg6.i.i.i = fdiv reassoc nsz arcp contract afn float -1.725880e+00, %i.hm
  %.neg7.i.i.i = fadd reassoc nnan nsz arcp contract afn float %i.hk, f0xC2F87377
  %i.hn = fadd reassoc nsz arcp contract afn float %.neg7.i.i.i, %.neg.i.i.i
  %i.ho = fadd reassoc nsz arcp contract afn float %i.hn, %.neg6.i.i.i
  %i.hp = fmul reassoc nsz arcp contract afn float %i.hd, f0x3F317218
  %i.hq = fmul reassoc nsz arcp contract afn float %i.hp, %i.ho
  %i.hr = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %indvars.iv137
  %i.hs = load <4 x float>, ptr %i.hr, align 16, !tbaa !13
  %i.ht = insertelement <4 x float> poison, float %i.hq, i64 0
  %i.hu = shufflevector <4 x float> %i.ht, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hv = fmul reassoc nsz arcp contract afn <4 x float> %i.hu, %i.hs
  %i.hw = fadd reassoc nsz arcp contract afn <4 x float> %.sroa.0.2, %i.hv ; 2 uses
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 2 uses
  %exitcond141.not = icmp eq i64 %indvars.iv.next138, %wide.trip.count140
  br i1 %exitcond141.not, label %._crit_edge122, label %.lr.ph121

bb.c:                                             ; preds = %bb.a, %._crit_edge126
  ret void
}

declare i32 @dt_iop_have_required_input_format(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @commit_params(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #11 {
bb.a:
  %i.a = alloca [4 x double], align 16            ; 8 uses
  %i.b = alloca [2 x double], align 16            ; 6 uses
  %i.c = alloca [4 x double], align 16            ; 8 uses
  %i.d = alloca [2 x double], align 16            ; 6 uses
  %i.e = alloca [4 x double], align 16            ; 7 uses
  %i.f = alloca [2 x double], align 16            ; 5 uses
  %i.g = alloca [9 x double], align 16            ; 10 uses
  %i.h = alloca [3 x double], align 16            ; 8 uses
  %i.i = alloca [9 x double], align 16            ; 10 uses
  %i.j = alloca [3 x double], align 16            ; 8 uses
  %i.k = alloca [9 x double], align 16            ; 9 uses
  %i.l = alloca [3 x double], align 16            ; 7 uses
  %i.m = alloca [16 x double], align 16           ; 24 uses
  %i.n = alloca [4 x i32], align 16               ; 8 uses
  %i.o = alloca [4 x double], align 16            ; 11 uses
  %i.p = alloca [4 x double], align 16            ; 11 uses
  %i.q = alloca [4 x double], align 16            ; 11 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = load ptr, ptr %i.r, align 16, !tbaa !43  ; 65 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 1176
  %i.u = load i32, ptr %i.t, align 4, !tbaa !18   ; 16 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.u, i32 49) ; 11 uses
  store i32 %spec.select, ptr %i.s, align 4, !tbaa !46
  %i.v = tail call i32 @llvm.smax.i32(i32 %spec.select, i32 0) ; 9 uses
  %i.w = add nuw nsw i32 %i.v, 4                  ; 9 uses
  %i.x = icmp sgt i32 %i.u, 0                     ; 5 uses
  br i1 %i.x, label %.lr.ph, label %.preheader512

.lr.ph:                                           ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 196 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 6 uses
  %wide.trip.count = zext nneg i32 %spec.select to i64 ; 7 uses
  %min.iters.check = icmp slt i32 %i.u, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ab = mul nuw nsw i64 %wide.trip.count, 12
  %i.ac = getelementptr i8, ptr %i.s, i64 %i.ab
  %scevgep657 = getelementptr i8, ptr %i.ac, i64 4
  %i.ad = shl nuw nsw i64 %wide.trip.count, 2
  %i.ae = getelementptr i8, ptr %1, i64 %i.ad
  %scevgep658 = getelementptr i8, ptr %i.ae, i64 392
  %bound0 = icmp ult ptr %i.y, %scevgep658
  %bound1 = icmp ult ptr %1, %scevgep657
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 56           ; 7 uses
  %wide.load = load <8 x float>, ptr %1, align 4, !tbaa !13, !alias.scope !76
  %wide.load659 = load <8 x float>, ptr %i.z, align 4, !tbaa !13, !alias.scope !76
  %wide.load660 = load <8 x float>, ptr %i.aa, align 4, !tbaa !13, !alias.scope !76
  %i.af = shufflevector <8 x float> %wide.load, <8 x float> %wide.load659, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ag = shufflevector <8 x float> %wide.load660, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x float> %i.af, <16 x float> %i.ag, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec, ptr %i.y, align 4, !tbaa !13, !alias.scope !79, !noalias !76
  %i.ah = icmp eq i64 %n.vec, 8
  br i1 %i.ah, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  %wide.load.1 = load <8 x float>, ptr %i.ai, align 4, !tbaa !13, !alias.scope !76
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 100
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 228
  %wide.load659.1 = load <8 x float>, ptr %i.ak, align 4, !tbaa !13, !alias.scope !76
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 424
  %wide.load660.1 = load <8 x float>, ptr %i.al, align 4, !tbaa !13, !alias.scope !76
  %i.am = shufflevector <8 x float> %wide.load.1, <8 x float> %wide.load659.1, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.an = shufflevector <8 x float> %wide.load660.1, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec.1 = shufflevector <16 x float> %i.am, <16 x float> %i.an, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec.1, ptr %i.aj, align 4, !tbaa !13, !alias.scope !79, !noalias !76
  %i.ao = icmp eq i64 %n.vec, 16
  br i1 %i.ao, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 64
  %wide.load.2 = load <8 x float>, ptr %i.ap, align 4, !tbaa !13, !alias.scope !76
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 196
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 260
  %wide.load659.2 = load <8 x float>, ptr %i.ar, align 4, !tbaa !13, !alias.scope !76
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 456
  %wide.load660.2 = load <8 x float>, ptr %i.as, align 4, !tbaa !13, !alias.scope !76
  %i.at = shufflevector <8 x float> %wide.load.2, <8 x float> %wide.load659.2, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.au = shufflevector <8 x float> %wide.load660.2, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec.2 = shufflevector <16 x float> %i.at, <16 x float> %i.au, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec.2, ptr %i.aq, align 4, !tbaa !13, !alias.scope !79, !noalias !76
  %i.av = icmp eq i64 %n.vec, 24
  br i1 %i.av, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 96
  %wide.load.3 = load <8 x float>, ptr %i.aw, align 4, !tbaa !13, !alias.scope !76
  %i.ax = getelementptr inbounds nuw i8, ptr %i.s, i64 292
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 292
  %wide.load659.3 = load <8 x float>, ptr %i.ay, align 4, !tbaa !13, !alias.scope !76
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 488
  %wide.load660.3 = load <8 x float>, ptr %i.az, align 4, !tbaa !13, !alias.scope !76
  %i.ba = shufflevector <8 x float> %wide.load.3, <8 x float> %wide.load659.3, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bb = shufflevector <8 x float> %wide.load660.3, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec.3 = shufflevector <16 x float> %i.ba, <16 x float> %i.bb, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec.3, ptr %i.ax, align 4, !tbaa !13, !alias.scope !79, !noalias !76
  %i.bc = icmp eq i64 %n.vec, 32
  br i1 %i.bc, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 128
  %wide.load.4 = load <8 x float>, ptr %i.bd, align 4, !tbaa !13, !alias.scope !76
  %i.be = getelementptr inbounds nuw i8, ptr %i.s, i64 388
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 324
  %wide.load659.4 = load <8 x float>, ptr %i.bf, align 4, !tbaa !13, !alias.scope !76
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 520
  %wide.load660.4 = load <8 x float>, ptr %i.bg, align 4, !tbaa !13, !alias.scope !76
  %i.bh = shufflevector <8 x float> %wide.load.4, <8 x float> %wide.load659.4, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bi = shufflevector <8 x float> %wide.load660.4, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec.4 = shufflevector <16 x float> %i.bh, <16 x float> %i.bi, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec.4, ptr %i.be, align 4, !tbaa !13, !alias.scope !79, !noalias !76
  %i.bj = icmp eq i64 %n.vec, 40
  br i1 %i.bj, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 160
  %wide.load.5 = load <8 x float>, ptr %i.bk, align 4, !tbaa !13, !alias.scope !76
  %i.bl = getelementptr inbounds nuw i8, ptr %i.s, i64 484
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 356
  %wide.load659.5 = load <8 x float>, ptr %i.bm, align 4, !tbaa !13, !alias.scope !76
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 552
  %wide.load660.5 = load <8 x float>, ptr %i.bn, align 4, !tbaa !13, !alias.scope !76
  %i.bo = shufflevector <8 x float> %wide.load.5, <8 x float> %wide.load659.5, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bp = shufflevector <8 x float> %wide.load660.5, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec.5 = shufflevector <16 x float> %i.bo, <16 x float> %i.bp, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec.5, ptr %i.bl, align 4, !tbaa !13, !alias.scope !79, !noalias !76
  br label %middle.block

middle.block:                                     ; preds = %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader512, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.prol
  %i.br = load float, ptr %i.bq, align 4, !tbaa !13
  %.idx.prol = mul nuw nsw i64 %indvars.iv.prol, 12
  %i.bs = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx.prol ; 3 uses
  store float %i.br, ptr %i.bs, align 4, !tbaa !13
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.prol
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !13
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  store float %i.bu, ptr %i.bv, align 4, !tbaa !13
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.prol
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !13
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store float %i.bx, ptr %i.by, align 4, !tbaa !13
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !81

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bz = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ca = icmp ugt i64 %i.bz, -4
  br i1 %i.ca, label %.preheader512, label %scalar.ph

.preheader512:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %i.cb = getelementptr inbounds nuw i8, ptr %i.s, i64 592 ; 7 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.s, i64 804 ; 9 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.s, i64 1016 ; 8 uses
  %i.ce = zext nneg i32 %i.v to i64               ; 7 uses
  %i.cf = shl nuw nsw i64 %i.ce, 2
  %i.cg = add nuw nsw i64 %i.cf, 16               ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.cb, i8 0, i64 %i.cg, i1 false), !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.cc, i8 0, i64 %i.cg, i1 false), !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.cd, i8 0, i64 %i.cg, i1 false), !tbaa !13
  %i.ch = add nuw nsw i32 %i.v, 1                 ; 2 uses
  %i.ci = zext nneg i32 %i.ch to i64              ; 5 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.ci ; 5 uses
  store float 1.000000e+00, ptr %i.cj, align 4, !tbaa !13
  %i.ck = add nuw nsw i32 %i.v, 2                 ; 2 uses
  %i.cl = zext nneg i32 %i.ck to i64              ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.cl ; 3 uses
  store float 1.000000e+00, ptr %i.cm, align 4, !tbaa !13
  %i.cn = add nuw nsw i32 %i.v, 3                 ; 2 uses
  %i.co = zext nneg i32 %i.cn to i64              ; 14 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.co ; 4 uses
  store float 1.000000e+00, ptr %i.cp, align 4, !tbaa !13
  switch i32 %i.v, label %bb.s [
    i32 0, label %bb.ad
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.j
    i32 4, label %bb.q
  ]

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 8 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !13
  %.idx = mul nuw nsw i64 %indvars.iv, 12
  %i.cs = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx ; 3 uses
  store float %i.cr, ptr %i.cs, align 4, !tbaa !13
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !13
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  store float %i.cu, ptr %i.cv, align 4, !tbaa !13
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !13
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store float %i.cx, ptr %i.cy, align 4, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.da = load float, ptr %i.cz, align 4, !tbaa !13
  %.idx.1 = mul nuw nsw i64 %indvars.iv.next, 12
  %i.db = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx.1 ; 3 uses
  store float %i.da, ptr %i.db, align 4, !tbaa !13
end_hunk_0
begin_hunk_1_@commit_params:bb.a
  %i.qh = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 4 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 3 uses
  %i.qk = load <4 x float>, ptr %i.qg, align 4, !tbaa !13
  %i.ql = fpext <4 x float> %i.qk to <4 x double> ; 2 uses
  store <4 x double> %i.ql, ptr %i.p, align 16, !tbaa !83
  %i.qm = load i32, ptr %i.n, align 16, !tbaa !17
  %i.qn = sext i32 %i.qm to i64
  %i.qo = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.qn ; 2 uses
  %i.qp = load double, ptr %i.qo, align 8, !tbaa !83 ; 3 uses
  %i.qq = extractelement <4 x double> %i.ql, i64 0
  store double %i.qq, ptr %i.qo, align 8, !tbaa !83
  store double %i.qp, ptr %i.p, align 16, !tbaa !83
  %i.qr = load double, ptr %i.lr, align 16, !tbaa !83
  %i.qs = fmul reassoc nsz arcp contract afn double %i.qr, %i.qp
  %i.qt = load double, ptr %i.qh, align 8, !tbaa !83
  %i.qu = fadd reassoc nsz arcp contract afn double %i.qt, %i.qs ; 2 uses
  store double %i.qu, ptr %i.qh, align 8, !tbaa !83
  %i.qv = load <2 x double>, ptr %i.mb, align 16
  %i.qw = load double, ptr %i.ml, align 16, !tbaa !83
  %i.qx = insertelement <2 x double> %i.qv, double %i.qw, i64 1
  %i.qy = insertelement <2 x double> poison, double %i.qp, i64 0
  %i.qz = shufflevector <2 x double> %i.qy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ra = fmul reassoc nsz arcp contract afn <2 x double> %i.qx, %i.qz
  %i.rb = load <2 x double>, ptr %i.qi, align 16, !tbaa !83
  %i.rc = fadd reassoc nsz arcp contract afn <2 x double> %i.rb, %i.ra
  store <2 x double> %i.rc, ptr %i.qi, align 16, !tbaa !83
  %i.rd = load i32, ptr %i.ob, align 4, !tbaa !17
  %i.re = sext i32 %i.rd to i64
  %i.rf = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.re ; 2 uses
  %i.rg = load double, ptr %i.rf, align 8, !tbaa !83 ; 3 uses
  store double %i.qu, ptr %i.rf, align 8, !tbaa !83
  store double %i.rg, ptr %i.qh, align 8, !tbaa !83
  %i.rh = load double, ptr %gep.i.1, align 8, !tbaa !83
  %i.ri = fmul reassoc nsz arcp contract afn double %i.rh, %i.rg
  %i.rj = load double, ptr %i.qi, align 16, !tbaa !83
  %i.rk = fadd reassoc nsz arcp contract afn double %i.rj, %i.ri ; 2 uses
  store double %i.rk, ptr %i.qi, align 16, !tbaa !83
  %i.rl = load double, ptr %gep.i.1.1, align 8, !tbaa !83
  %i.rm = fmul reassoc nsz arcp contract afn double %i.rl, %i.rg
  %i.rn = load double, ptr %i.qj, align 8, !tbaa !83
  %i.ro = fadd reassoc nsz arcp contract afn double %i.rn, %i.rm
  store double %i.ro, ptr %i.qj, align 8, !tbaa !83
  %i.rp = load i32, ptr %i.oo, align 8, !tbaa !17
  %i.rq = sext i32 %i.rp to i64
  %i.rr = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.rq ; 2 uses
  %i.rs = load double, ptr %i.rr, align 8, !tbaa !83 ; 2 uses
  store double %i.rk, ptr %i.rr, align 8, !tbaa !83
  %i.rt = load double, ptr %gep.i.2, align 16, !tbaa !83
  %i.ru = fmul reassoc nsz arcp contract afn double %i.rt, %i.rs
  %i.rv = load double, ptr %i.qj, align 8, !tbaa !83
  %i.rw = fadd reassoc nsz arcp contract afn double %i.rv, %i.ru
  %i.rx = load double, ptr %i.mu, align 8, !tbaa !83
  %i.ry = fdiv reassoc nsz arcp contract afn double %i.rw, %i.rx ; 4 uses
  %i.rz = load double, ptr %i.lp, align 8, !tbaa !83
  %i.sa = fmul reassoc nsz arcp contract afn double %i.rz, %i.ry
  %i.sb = load double, ptr %i.p, align 16, !tbaa !83
  %i.sc = load double, ptr %gep76.i.1, align 8, !tbaa !83
  %i.sd = fmul reassoc nsz arcp contract afn double %i.sc, %i.ry
  %i.se = load double, ptr %i.qh, align 8, !tbaa !83
  %i.sf = load double, ptr %gep76.i.2, align 8, !tbaa !83
  %i.sg = fmul reassoc nsz arcp contract afn double %i.sf, %i.ry
  %i.sh = fsub reassoc nsz arcp contract afn double %i.rs, %i.sg
  %i.si = load double, ptr %i.nc, align 16, !tbaa !83
  %i.sj = load double, ptr %i.nd, align 16, !tbaa !83
  %i.sk = load double, ptr %gep76.i.1.1, align 16, !tbaa !83
  %i.sl = load double, ptr %i.ls, align 8, !tbaa !83
  %i.sm = load double, ptr %i.li, align 8, !tbaa !83
  %i.sn = getelementptr inbounds nuw i8, ptr %i.s, i64 820
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.ci
  %i.sp = fdiv reassoc nsz arcp contract afn double %i.sh, %i.si ; 3 uses
  %i.sq = fmul reassoc nsz arcp contract afn double %i.sj, %i.sp
  %i.sr = fadd reassoc nsz arcp contract afn double %i.sa, %i.sq
  %i.ss = fmul reassoc nsz arcp contract afn double %i.sk, %i.sp
  %i.st = fadd reassoc nsz arcp contract afn double %i.sd, %i.ss
  %i.su = fsub reassoc nsz arcp contract afn double %i.se, %i.st
  %i.sv = fdiv reassoc nsz arcp contract afn double %i.su, %i.sl ; 2 uses
  %i.sw = fmul reassoc nsz arcp contract afn double %i.sm, %i.sv
  %i.sx = fadd reassoc nsz arcp contract afn double %i.sr, %i.sw
  %i.sy = fsub reassoc nsz arcp contract afn double %i.sb, %i.sx
  %i.sz = fdiv reassoc nsz arcp contract afn double %i.sy, %i.pn
  %i.ta = fptrunc reassoc nsz arcp contract afn double %i.sz to float
  store float %i.ta, ptr %i.sn, align 4, !tbaa !13
  %i.tb = insertelement <2 x double> poison, double %i.sv, i64 0
  %i.tc = insertelement <2 x double> %i.tb, double %i.sp, i64 1
  %i.td = fptrunc <2 x double> %i.tc to <2 x float>
  store <2 x float> %i.td, ptr %i.so, align 4, !tbaa !13
  %i.te = fptrunc reassoc nsz arcp contract afn double %i.ry to float
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.co
  store float %i.te, ptr %i.tf, align 4, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #23
  %i.tg = getelementptr inbounds nuw i8, ptr %1, i64 980
  %i.th = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 4 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 3 uses
  %i.tk = load <4 x float>, ptr %i.tg, align 4, !tbaa !13
  %i.tl = fpext <4 x float> %i.tk to <4 x double> ; 2 uses
  store <4 x double> %i.tl, ptr %i.q, align 16, !tbaa !83
  %i.tm = load i32, ptr %i.n, align 16, !tbaa !17
  %i.tn = sext i32 %i.tm to i64
  %i.to = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.tn ; 2 uses
  %i.tp = load double, ptr %i.to, align 8, !tbaa !83 ; 3 uses
  %i.tq = extractelement <4 x double> %i.tl, i64 0
  store double %i.tq, ptr %i.to, align 8, !tbaa !83
  store double %i.tp, ptr %i.q, align 16, !tbaa !83
  %i.tr = load double, ptr %i.lr, align 16, !tbaa !83
  %i.ts = fmul reassoc nsz arcp contract afn double %i.tr, %i.tp
  %i.tt = load double, ptr %i.th, align 8, !tbaa !83
  %i.tu = fadd reassoc nsz arcp contract afn double %i.tt, %i.ts ; 2 uses
  store double %i.tu, ptr %i.th, align 8, !tbaa !83
  %i.tv = load <2 x double>, ptr %i.mb, align 16
  %i.tw = load double, ptr %i.ml, align 16, !tbaa !83
  %i.tx = insertelement <2 x double> %i.tv, double %i.tw, i64 1
  %i.ty = insertelement <2 x double> poison, double %i.tp, i64 0
  %i.tz = shufflevector <2 x double> %i.ty, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ua = fmul reassoc nsz arcp contract afn <2 x double> %i.tx, %i.tz
  %i.ub = load <2 x double>, ptr %i.ti, align 16, !tbaa !83
  %i.uc = fadd reassoc nsz arcp contract afn <2 x double> %i.ub, %i.ua
  store <2 x double> %i.uc, ptr %i.ti, align 16, !tbaa !83
  %i.ud = load i32, ptr %i.ob, align 4, !tbaa !17
  %i.ue = sext i32 %i.ud to i64
  %i.uf = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.ue ; 2 uses
  %i.ug = load double, ptr %i.uf, align 8, !tbaa !83 ; 3 uses
  store double %i.tu, ptr %i.uf, align 8, !tbaa !83
  store double %i.ug, ptr %i.th, align 8, !tbaa !83
  %i.uh = load double, ptr %gep.i.1, align 8, !tbaa !83
  %i.ui = fmul reassoc nsz arcp contract afn double %i.uh, %i.ug
  %i.uj = load double, ptr %i.ti, align 16, !tbaa !83
  %i.uk = fadd reassoc nsz arcp contract afn double %i.uj, %i.ui ; 2 uses
  store double %i.uk, ptr %i.ti, align 16, !tbaa !83
  %i.ul = load double, ptr %gep.i.1.1, align 8, !tbaa !83
  %i.um = fmul reassoc nsz arcp contract afn double %i.ul, %i.ug
  %i.un = load double, ptr %i.tj, align 8, !tbaa !83
  %i.uo = fadd reassoc nsz arcp contract afn double %i.un, %i.um
  store double %i.uo, ptr %i.tj, align 8, !tbaa !83
  %i.up = load i32, ptr %i.oo, align 8, !tbaa !17
  %i.uq = sext i32 %i.up to i64
  %i.ur = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.uq ; 2 uses
  %i.us = load double, ptr %i.ur, align 8, !tbaa !83 ; 2 uses
  store double %i.uk, ptr %i.ur, align 8, !tbaa !83
  %i.ut = load double, ptr %gep.i.2, align 16, !tbaa !83
  %i.uu = fmul reassoc nsz arcp contract afn double %i.ut, %i.us
  %i.uv = load double, ptr %i.tj, align 8, !tbaa !83
  %i.uw = fadd reassoc nsz arcp contract afn double %i.uv, %i.uu
  %i.ux = load double, ptr %i.mu, align 8, !tbaa !83
  %i.uy = fdiv reassoc nsz arcp contract afn double %i.uw, %i.ux ; 4 uses
  %i.uz = load double, ptr %i.lp, align 8, !tbaa !83
  %i.va = fmul reassoc nsz arcp contract afn double %i.uz, %i.uy
  %i.vb = load double, ptr %i.q, align 16, !tbaa !83
  %i.vc = load double, ptr %gep76.i.1, align 8, !tbaa !83
  %i.vd = fmul reassoc nsz arcp contract afn double %i.vc, %i.uy
  %i.ve = load double, ptr %i.th, align 8, !tbaa !83
  %i.vf = load double, ptr %gep76.i.2, align 8, !tbaa !83
  %i.vg = fmul reassoc nsz arcp contract afn double %i.vf, %i.uy
  %i.vh = fsub reassoc nsz arcp contract afn double %i.us, %i.vg
  %i.vi = load double, ptr %i.nc, align 16, !tbaa !83
  %i.vj = load double, ptr %i.nd, align 16, !tbaa !83
  %i.vk = load double, ptr %gep76.i.1.1, align 16, !tbaa !83
  %i.vl = load double, ptr %i.ls, align 8, !tbaa !83
  %i.vm = load double, ptr %i.li, align 8, !tbaa !83
  %i.vn = getelementptr inbounds nuw i8, ptr %i.s, i64 1032
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.ci
  %i.vp = fdiv reassoc nsz arcp contract afn double %i.vh, %i.vi ; 3 uses
  %i.vq = fmul reassoc nsz arcp contract afn double %i.vj, %i.vp
  %i.vr = fadd reassoc nsz arcp contract afn double %i.va, %i.vq
  %i.vs = fmul reassoc nsz arcp contract afn double %i.vk, %i.vp
  %i.vt = fadd reassoc nsz arcp contract afn double %i.vd, %i.vs
  %i.vu = fsub reassoc nsz arcp contract afn double %i.ve, %i.vt
  %i.vv = fdiv reassoc nsz arcp contract afn double %i.vu, %i.vl ; 2 uses
  %i.vw = fmul reassoc nsz arcp contract afn double %i.vm, %i.vv
  %i.vx = fadd reassoc nsz arcp contract afn double %i.vr, %i.vw
  %i.vy = fsub reassoc nsz arcp contract afn double %i.vb, %i.vx
  %i.vz = fdiv reassoc nsz arcp contract afn double %i.vy, %i.pn
  %i.wa = fptrunc reassoc nsz arcp contract afn double %i.vz to float
  store float %i.wa, ptr %i.vn, align 4, !tbaa !13
  %i.wb = insertelement <2 x double> poison, double %i.vv, i64 0
  %i.wc = insertelement <2 x double> %i.wb, double %i.vp, i64 1
  %i.wd = fptrunc <2 x double> %i.wc to <2 x float>
  store <2 x float> %i.wd, ptr %i.vo, align 4, !tbaa !13
  %i.we = fptrunc reassoc nsz arcp contract afn double %i.uy to float
  store float %i.we, ptr %i.cp, align 4, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #23
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #23
  br label %bb.ad

bb.s:                                             ; preds = %.preheader512
  %i.wf = zext nneg i32 %i.w to i64               ; 68 uses
  %i.wg = shl nuw nsw i64 %i.wf, 3                ; 2 uses
  %i.wh = mul nuw nsw i64 %i.wg, %i.wf
  %i.wi = tail call noalias ptr @malloc(i64 noundef %i.wh) #28 ; 23 uses
  %i.wj = tail call noalias ptr @malloc(i64 noundef %i.wg) #28 ; 119 uses
  br i1 %i.x, label %.preheader511.lr.ph, label %.preheader506

.preheader511.lr.ph:                              ; preds = %bb.s
  %i.wk = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 2 uses
  %4 = zext nneg i32 %spec.select to i64
  %wide.trip.count563 = zext nneg i32 %spec.select to i64 ; 9 uses
  br label %.preheader511

.preheader511:                                    ; preds = %.preheader511.lr.ph, %bb.t
  %indvars.iv555 = phi i64 [ 0, %.preheader511.lr.ph ], [ %indvars.iv.next556, %bb.t ] ; 5 uses
  %.idx634.a = mul nuw nsw i64 %indvars.iv555, 12
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 %.idx634.a ; 2 uses
  %i.wm = load float, ptr %i.wl, align 4, !tbaa !13
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wl, i64 4
  %i.wo = load <2 x float>, ptr %i.wn, align 4, !tbaa !13
  %i.wp = mul nuw nsw i64 %indvars.iv555, %i.wf
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.wi, i64 %indvars.iv555
  %invariant.gep639.a = getelementptr inbounds nuw [8 x i8], ptr %i.wi, i64 %i.wp
  br label %bb.u

.lr.ph518:                                        ; preds = %bb.t
  %i.wq = mul nuw nsw i32 %i.w, %i.v
  %i.wr = zext nneg i32 %i.wq to i64
  %invariant.gep641.a = getelementptr inbounds nuw [8 x i8], ptr %i.wi, i64 %i.wr ; 9 uses
  %invariant.gep643.a = getelementptr inbounds nuw [8 x i8], ptr %i.wi, i64 %i.ce ; 9 uses
  %xtraiter1170 = and i64 %wide.trip.count563, 7  ; 3 uses
  %i.ws = icmp slt i32 %i.u, 8
  br i1 %i.ws, label %.epil.preheader, label %.lr.ph518.new

.lr.ph518.new:                                    ; preds = %.lr.ph518
  %unroll_iter = and i64 %wide.trip.count563, 56
  br label %bb.w

bb.t:                                             ; preds = %bb.u
  %indvars.iv.next556 = add nuw nsw i64 %indvars.iv555, 1 ; 2 uses
  %exitcond564.not = icmp eq i64 %indvars.iv.next556, %wide.trip.count563
  br i1 %exitcond564.not, label %.lr.ph518, label %.preheader511

bb.u:                                             ; preds = %.preheader511, %bb.u
  %indvars.iv557 = phi i64 [ %indvars.iv555, %.preheader511 ], [ %indvars.iv.next558, %bb.u ] ; 4 uses
  %.idx635.a = mul nuw nsw i64 %indvars.iv557, 12
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wk, i64 %.idx635.a ; 2 uses
  %i.wu = load float, ptr %i.wt, align 4, !tbaa !13
  %i.wv = fsub reassoc nsz arcp contract afn float %i.wu, %i.wm ; 2 uses
  %i.ww = fmul reassoc nsz arcp contract afn float %i.wv, %i.wv
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wt, i64 4
  %i.wy = load <2 x float>, ptr %i.wx, align 4, !tbaa !13
  %i.wz = fsub reassoc nsz arcp contract afn <2 x float> %i.wy, %i.wo ; 2 uses
  %i.xa = fmul reassoc nsz arcp contract afn <2 x float> %i.wz, %i.wz ; 2 uses
  %i.xb = extractelement <2 x float> %i.xa, i64 0
  %i.xc = fadd reassoc nsz arcp contract afn float %i.xb, %i.ww
  %i.xd = extractelement <2 x float> %i.xa, i64 1
  %i.xe = fadd reassoc nsz arcp contract afn float %i.xc, %i.xd ; 3 uses
  %i.xf = fcmp reassoc nsz arcp contract afn olt float %i.xe, f0x322BCC77
  %i.xg = bitcast float %i.xe to i32
  %i.xh = select i1 %i.xf, i32 841731191, i32 %i.xg ; 2 uses
  %i.xi = and i32 %i.xh, 8388607
  %i.xj = or disjoint i32 %i.xi, 1056964608
  %i.xk = uitofp reassoc nsz arcp contract afn i32 %i.xh to float
  %i.xl = fmul reassoc nnan nsz arcp contract afn float %i.xk, f0x34000000
  %i.xm = bitcast i32 %i.xj to float              ; 2 uses
  %i.xn = fadd reassoc nsz arcp contract afn float %i.xm, f0x3EB444F9
  %.neg.i.i.i = fmul reassoc nnan nsz arcp contract afn float %i.xm, f0xBFBFBF75
  %.neg6.i.i.i = fdiv reassoc nsz arcp contract afn float -1.725880e+00, %i.xn
  %.neg7.i.i.i = fadd reassoc nnan nsz arcp contract afn float %i.xl, f0xC2F87377
  %i.xo = fadd reassoc nsz arcp contract afn float %.neg7.i.i.i, %.neg.i.i.i
  %i.xp = fadd reassoc nsz arcp contract afn float %i.xo, %.neg6.i.i.i
  %i.xq = fmul reassoc nsz arcp contract afn float %i.xe, f0x3F317218
  %i.xr = fmul reassoc nsz arcp contract afn float %i.xq, %i.xp
  %i.xs = fpext reassoc nsz arcp contract afn float %i.xr to double ; 2 uses
  %i.xt = mul nuw nsw i64 %indvars.iv557, %i.wf
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.xt
  store double %i.xs, ptr %gep, align 8, !tbaa !83
  %gep640.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep639.a, i64 %indvars.iv557
  store double %i.xs, ptr %gep640.a, align 8, !tbaa !83
  %indvars.iv.next558 = add nuw nsw i64 %indvars.iv557, 1 ; 2 uses
  %5 = icmp samesign ult i64 %indvars.iv.next558, %4
  br i1 %5, label %bb.u, label %bb.t

.lr.ph520.unr-lcssa:                              ; preds = %bb.w
  %lcmp.mod1171.not = icmp eq i64 %xtraiter1170, 0
  br i1 %lcmp.mod1171.not, label %.lr.ph520, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph520.unr-lcssa, %.lr.ph518
  %indvars.iv565.epil.init = phi i64 [ 0, %.lr.ph518 ], [ %indvars.iv.next566.7, %.lr.ph520.unr-lcssa ]
  %lcmp.mod1172 = icmp ne i64 %xtraiter1170, 0
  tail call void @llvm.assume(i1 %lcmp.mod1172)
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.epil.preheader
  %indvars.iv565.epil = phi i64 [ %indvars.iv565.epil.init, %.epil.preheader ], [ %indvars.iv.next566.epil, %bb.v ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.v ]
  %gep642.epil.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep641.a, i64 %indvars.iv565.epil
  store double 1.000000e+00, ptr %gep642.epil.a, align 8, !tbaa !83
  %i.xu = mul nuw nsw i64 %indvars.iv565.epil, %i.wf
  %gep644.epil.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep643.a, i64 %i.xu
  store double 1.000000e+00, ptr %gep644.epil.a, align 8, !tbaa !83
  %indvars.iv.next566.epil = add nuw nsw i64 %indvars.iv565.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1170
  br i1 %epil.iter.cmp.not, label %.lr.ph520, label %bb.v, !llvm.loop !85

.lr.ph520:                                        ; preds = %bb.v, %.lr.ph520.unr-lcssa
  %i.xv = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 5 uses
  %i.xw = mul nuw nsw i32 %i.ch, %i.w
  %i.xx = zext nneg i32 %i.xw to i64
  %invariant.gep645.a = getelementptr inbounds nuw [8 x i8], ptr %i.wi, i64 %i.xx ; 5 uses
  %invariant.gep647.a = getelementptr inbounds nuw [8 x i8], ptr %i.wi, i64 %i.ce ; 5 uses
  %xtraiter1174 = and i64 %wide.trip.count563, 3  ; 3 uses
  %i.xy = icmp slt i32 %i.u, 4
  br i1 %i.xy, label %.epil.preheader1173, label %.lr.ph520.new

.lr.ph520.new:                                    ; preds = %.lr.ph520
  %unroll_iter1178 = and i64 %wide.trip.count563, 60
  br label %bb.y

bb.w:                                             ; preds = %bb.w, %.lr.ph518.new
  %indvars.iv565 = phi i64 [ 0, %.lr.ph518.new ], [ %indvars.iv.next566.7, %bb.w ] ; 10 uses
  %niter = phi i64 [ 0, %.lr.ph518.new ], [ %niter.next.7, %bb.w ]
  %gep642.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep641.a, i64 %indvars.iv565
  store double 1.000000e+00, ptr %gep642.a, align 8, !tbaa !83
  %i.xz = mul nuw nsw i64 %indvars.iv565, %i.wf
  %gep644.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep643.a, i64 %i.xz
  store double 1.000000e+00, ptr %gep644.a, align 8, !tbaa !83
  %indvars.iv.next566 = or disjoint i64 %indvars.iv565, 1 ; 2 uses
  %gep642.1.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep641.a, i64 %indvars.iv.next566
  store double 1.000000e+00, ptr %gep642.1.a, align 8, !tbaa !83
  %i.ya = mul nuw nsw i64 %indvars.iv.next566, %i.wf
  %gep644.1.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep643.a, i64 %i.ya
  store double 1.000000e+00, ptr %gep644.1.a, align 8, !tbaa !83
  %indvars.iv.next566.1 = or disjoint i64 %indvars.iv565, 2 ; 2 uses
  %gep642.2.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep641.a, i64 %indvars.iv.next566.1
  store double 1.000000e+00, ptr %gep642.2.a, align 8, !tbaa !83
  %i.yb = mul nuw nsw i64 %indvars.iv.next566.1, %i.wf
  %gep644.2.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep643.a, i64 %i.yb
  store double 1.000000e+00, ptr %gep644.2.a, align 8, !tbaa !83
  %indvars.iv.next566.2 = or disjoint i64 %indvars.iv565, 3 ; 2 uses
  %gep642.3.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep641.a, i64 %indvars.iv.next566.2
  store double 1.000000e+00, ptr %gep642.3.a, align 8, !tbaa !83
  %i.yc = mul nuw nsw i64 %indvars.iv.next566.2, %i.wf
  %gep644.3.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep643.a, i64 %i.yc
  store double 1.000000e+00, ptr %gep644.3.a, align 8, !tbaa !83
  %indvars.iv.next566.3 = or disjoint i64 %indvars.iv565, 4 ; 2 uses
  %gep642.4.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep641.a, i64 %indvars.iv.next566.3
  store double 1.000000e+00, ptr %gep642.4.a, align 8, !tbaa !83
  %i.yd = mul nuw nsw i64 %indvars.iv.next566.3, %i.wf
  %gep644.4 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep643.a, i64 %i.yd
  store double 1.000000e+00, ptr %gep644.4, align 8, !tbaa !83
  %indvars.iv.next566.4 = or disjoint i64 %indvars.iv565, 5 ; 2 uses
  %gep642.5.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep641.a, i64 %indvars.iv.next566.4
  store double 1.000000e+00, ptr %gep642.5.a, align 8, !tbaa !83
  %i.ye = mul nuw nsw i64 %indvars.iv.next566.4, %i.wf
  %gep644.5 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep643.a, i64 %i.ye
  store double 1.000000e+00, ptr %gep644.5, align 8, !tbaa !83
  %indvars.iv.next566.5 = or disjoint i64 %indvars.iv565, 6 ; 2 uses
  %gep642.6.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep641.a, i64 %indvars.iv.next566.5
  store double 1.000000e+00, ptr %gep642.6.a, align 8, !tbaa !83
  %i.yf = mul nuw nsw i64 %indvars.iv.next566.5, %i.wf
  %gep644.6 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep643.a, i64 %i.yf
  store double 1.000000e+00, ptr %gep644.6, align 8, !tbaa !83
  %indvars.iv.next566.6 = or disjoint i64 %indvars.iv565, 7 ; 2 uses
  %gep642.7.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep641.a, i64 %indvars.iv.next566.6
  store double 1.000000e+00, ptr %gep642.7.a, align 8, !tbaa !83
  %i.yg = mul nuw nsw i64 %indvars.iv.next566.6, %i.wf
  %gep644.7 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep643.a, i64 %i.yg
  store double 1.000000e+00, ptr %gep644.7, align 8, !tbaa !83
  %indvars.iv.next566.7 = add nuw nsw i64 %indvars.iv565, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph520.unr-lcssa, label %bb.w

.lr.ph522.unr-lcssa:                              ; preds = %bb.y
  %lcmp.mod1176.not = icmp eq i64 %xtraiter1174, 0
  br i1 %lcmp.mod1176.not, label %.lr.ph522, label %.epil.preheader1173

.epil.preheader1173:                              ; preds = %.lr.ph522.unr-lcssa, %.lr.ph520
  %indvars.iv570.epil.init = phi i64 [ 0, %.lr.ph520 ], [ %indvars.iv.next571.3, %.lr.ph522.unr-lcssa ]
  %lcmp.mod1177 = icmp ne i64 %xtraiter1174, 0
  tail call void @llvm.assume(i1 %lcmp.mod1177)
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.epil.preheader1173
  %indvars.iv570.epil = phi i64 [ %indvars.iv570.epil.init, %.epil.preheader1173 ], [ %indvars.iv.next571.epil, %bb.x ] ; 4 uses
  %epil.iter1175 = phi i64 [ 0, %.epil.preheader1173 ], [ %epil.iter1175.next, %bb.x ]
  %.idx636.epil.a = mul nuw nsw i64 %indvars.iv570.epil, 12
  %i.yh = getelementptr inbounds nuw i8, ptr %i.xv, i64 %.idx636.epil.a
  %i.yi = load float, ptr %i.yh, align 4, !tbaa !13
  %i.yj = fpext reassoc nsz arcp contract afn float %i.yi to double ; 2 uses
  %gep646.epil.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep645.a, i64 %indvars.iv570.epil
  store double %i.yj, ptr %gep646.epil.a, align 8, !tbaa !83
  %i.yk = mul nuw nsw i64 %indvars.iv570.epil, %i.wf
  %gep648.epil.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep647.a, i64 %i.yk
  %i.yl = getelementptr inbounds nuw i8, ptr %gep648.epil.a, i64 8
  store double %i.yj, ptr %i.yl, align 8, !tbaa !83
  %indvars.iv.next571.epil = add nuw nsw i64 %indvars.iv570.epil, 1
  %epil.iter1175.next = add i64 %epil.iter1175, 1 ; 2 uses
  %epil.iter1175.cmp.not = icmp eq i64 %epil.iter1175.next, %xtraiter1174
  br i1 %epil.iter1175.cmp.not, label %.lr.ph522, label %bb.x, !llvm.loop !86

.lr.ph522:                                        ; preds = %bb.x, %.lr.ph522.unr-lcssa
  %i.ym = mul nuw nsw i32 %i.ck, %i.w
  %i.yn = zext nneg i32 %i.ym to i64
  %invariant.gep649.a = getelementptr inbounds nuw [8 x i8], ptr %i.wi, i64 %i.yn ; 5 uses
  %invariant.gep651.a = getelementptr inbounds nuw [8 x i8], ptr %i.wi, i64 %i.ce ; 5 uses
  %xtraiter1181 = and i64 %wide.trip.count563, 3  ; 3 uses
  %i.yo = icmp slt i32 %i.u, 4
  br i1 %i.yo, label %.epil.preheader1180, label %.lr.ph522.new

.lr.ph522.new:                                    ; preds = %.lr.ph522
  %unroll_iter1185 = and i64 %wide.trip.count563, 60
  br label %bb.aa

bb.y:                                             ; preds = %bb.y, %.lr.ph520.new
  %indvars.iv570 = phi i64 [ 0, %.lr.ph520.new ], [ %indvars.iv.next571.3, %bb.y ] ; 7 uses
  %niter1179 = phi i64 [ 0, %.lr.ph520.new ], [ %niter1179.next.3, %bb.y ]
  %.idx636.a = mul nuw nsw i64 %indvars.iv570, 12
  %i.yp = getelementptr inbounds nuw i8, ptr %i.xv, i64 %.idx636.a
  %i.yq = load float, ptr %i.yp, align 4, !tbaa !13
  %i.yr = fpext reassoc nsz arcp contract afn float %i.yq to double ; 2 uses
  %gep646.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep645.a, i64 %indvars.iv570
  store double %i.yr, ptr %gep646.a, align 8, !tbaa !83
  %i.ys = mul nuw nsw i64 %indvars.iv570, %i.wf
  %gep648.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep647.a, i64 %i.ys
  %i.yt = getelementptr inbounds nuw i8, ptr %gep648.a, i64 8
  store double %i.yr, ptr %i.yt, align 8, !tbaa !83
  %indvars.iv.next571 = or disjoint i64 %indvars.iv570, 1 ; 3 uses
  %.idx636.1.a = mul nuw nsw i64 %indvars.iv.next571, 12
  %i.yu = getelementptr inbounds nuw i8, ptr %i.xv, i64 %.idx636.1.a
  %i.yv = load float, ptr %i.yu, align 4, !tbaa !13
  %i.yw = fpext reassoc nsz arcp contract afn float %i.yv to double ; 2 uses
  %gep646.1.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep645.a, i64 %indvars.iv.next571
  store double %i.yw, ptr %gep646.1.a, align 8, !tbaa !83
  %i.yx = mul nuw nsw i64 %indvars.iv.next571, %i.wf
  %gep648.1.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep647.a, i64 %i.yx
  %i.yy = getelementptr inbounds nuw i8, ptr %gep648.1.a, i64 8
  store double %i.yw, ptr %i.yy, align 8, !tbaa !83
  %indvars.iv.next571.1 = or disjoint i64 %indvars.iv570, 2 ; 3 uses
  %.idx636.2.a = mul nuw nsw i64 %indvars.iv.next571.1, 12
  %i.yz = getelementptr inbounds nuw i8, ptr %i.xv, i64 %.idx636.2.a
  %i.za = load float, ptr %i.yz, align 4, !tbaa !13
  %i.zb = fpext reassoc nsz arcp contract afn float %i.za to double ; 2 uses
  %gep646.2.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep645.a, i64 %indvars.iv.next571.1
  store double %i.zb, ptr %gep646.2.a, align 8, !tbaa !83
  %i.zc = mul nuw nsw i64 %indvars.iv.next571.1, %i.wf
  %gep648.2.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep647.a, i64 %i.zc
  %i.zd = getelementptr inbounds nuw i8, ptr %gep648.2.a, i64 8
  store double %i.zb, ptr %i.zd, align 8, !tbaa !83
  %indvars.iv.next571.2 = or disjoint i64 %indvars.iv570, 3 ; 3 uses
  %.idx636.3.a = mul nuw nsw i64 %indvars.iv.next571.2, 12
  %i.ze = getelementptr inbounds nuw i8, ptr %i.xv, i64 %.idx636.3.a
  %i.zf = load float, ptr %i.ze, align 4, !tbaa !13
  %i.zg = fpext reassoc nsz arcp contract afn float %i.zf to double ; 2 uses
  %gep646.3.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep645.a, i64 %indvars.iv.next571.2
  store double %i.zg, ptr %gep646.3.a, align 8, !tbaa !83
  %i.zh = mul nuw nsw i64 %indvars.iv.next571.2, %i.wf
  %gep648.3.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep647.a, i64 %i.zh
  %i.zi = getelementptr inbounds nuw i8, ptr %gep648.3.a, i64 8
  store double %i.zg, ptr %i.zi, align 8, !tbaa !83
  %indvars.iv.next571.3 = add nuw nsw i64 %indvars.iv570, 4 ; 2 uses
  %niter1179.next.3 = add i64 %niter1179, 4       ; 2 uses
  %niter1179.ncmp.3 = icmp eq i64 %niter1179.next.3, %unroll_iter1178
  br i1 %niter1179.ncmp.3, label %.lr.ph522.unr-lcssa, label %bb.y

.lr.ph524.unr-lcssa:                              ; preds = %bb.aa
  %lcmp.mod1183.not = icmp eq i64 %xtraiter1181, 0
  br i1 %lcmp.mod1183.not, label %.lr.ph524, label %.epil.preheader1180

.epil.preheader1180:                              ; preds = %.lr.ph524.unr-lcssa, %.lr.ph522
  %indvars.iv575.epil.init = phi i64 [ 0, %.lr.ph522 ], [ %indvars.iv.next576.3, %.lr.ph524.unr-lcssa ]
  %lcmp.mod1184 = icmp ne i64 %xtraiter1181, 0
  tail call void @llvm.assume(i1 %lcmp.mod1184)
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.epil.preheader1180
  %indvars.iv575.epil = phi i64 [ %indvars.iv575.epil.init, %.epil.preheader1180 ], [ %indvars.iv.next576.epil, %bb.z ] ; 4 uses
  %epil.iter1182 = phi i64 [ 0, %.epil.preheader1180 ], [ %epil.iter1182.next, %bb.z ]
  %.idx637.epil = mul nuw nsw i64 %indvars.iv575.epil, 12
  %i.zj = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx637.epil
end_hunk_1
