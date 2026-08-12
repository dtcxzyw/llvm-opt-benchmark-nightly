inline.NumInlined: 16
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@blur_line:bb.a
  %exitcond106.not = icmp eq i32 %i.fa, %4
  br i1 %exitcond106.not, label %._crit_edge97.split.us.us, label %.lr.ph.us.us

._crit_edge97.split.us.us:                        ; preds = %._crit_edge.us.us
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %exitcond111.not = icmp eq i64 %indvars.iv.next108, %wide.trip.count110
  br i1 %exitcond111.not, label %._crit_edge.split, label %.lr.ph96.us

._crit_edge.split:                                ; preds = %._crit_edge97.split, %._crit_edge97.split.us.us, %.lr.ph, %bb.a
  ret void

.lr.ph96:                                         ; preds = %.lr.ph.split, %._crit_edge97.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge97.split ], [ 0, %.lr.ph.split ] ; 2 uses
  br label %bb.b

._crit_edge97.split:                              ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond104.not = icmp eq i64 %indvars.iv.next, %wide.trip.count110
  br i1 %exitcond104.not, label %._crit_edge.split, label %.lr.ph96

bb.b:                                             ; preds = %.lr.ph96, %bb.b
  %.08594 = phi i32 [ 0, %.lr.ph96 ], [ %i.gq, %bb.b ]
  %.08693 = phi i64 [ %indvars.iv, %.lr.ph96 ], [ %i.gp, %bb.b ] ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.08693 ; 3 uses
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !18 ; 3 uses
  %i.fd = fmul reassoc nsz arcp contract afn float %i.fc, 3.750000e-01
  %i.fe = add i64 %.08693, %i.c                   ; 2 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fe ; 4 uses
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !18
  %i.fh = fmul reassoc nsz arcp contract afn float %i.fg, 2.500000e-01
  %i.fi = fadd reassoc nsz arcp contract afn float %i.fh, %i.fd
  %i.fj = getelementptr [4 x i8], ptr %i.fb, i64 %i.e
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !18
  %i.fl = fmul reassoc nsz arcp contract afn float %i.fk, 6.250000e-02
  %i.fm = fadd reassoc nsz arcp contract afn float %i.fi, %i.fl
  store float %i.fm, ptr %i.fb, align 4, !tbaa !18
  %i.fn = load float, ptr %i.ff, align 4, !tbaa !18 ; 3 uses
  %i.fo = fmul reassoc nsz arcp contract afn float %i.fn, 3.750000e-01
  %i.fp = add i64 %i.fe, %i.c                     ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fp ; 3 uses
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !18
  %i.fs = fadd reassoc nsz arcp contract afn float %i.fr, %i.fc
  %i.ft = fmul reassoc nsz arcp contract afn float %i.fs, 2.500000e-01
  %i.fu = fadd reassoc nsz arcp contract afn float %i.ft, %i.fo
  %i.fv = getelementptr [4 x i8], ptr %i.ff, i64 %i.e
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !18
  %i.fx = fmul reassoc nsz arcp contract afn float %i.fw, 6.250000e-02
  %i.fy = fadd reassoc nsz arcp contract afn float %i.fu, %i.fx
  store float %i.fy, ptr %i.ff, align 4, !tbaa !18
  %i.fz = load float, ptr %i.fq, align 4, !tbaa !18 ; 2 uses
  %i.ga = fmul reassoc nsz arcp contract afn float %i.fz, 3.750000e-01
  %i.gb = add i64 %i.fp, %i.c                     ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gb ; 3 uses
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !18
  %i.ge = fadd reassoc nsz arcp contract afn float %i.gd, %i.fn
  %i.gf = fmul reassoc nsz arcp contract afn float %i.ge, 2.500000e-01
  %i.gg = fmul reassoc nsz arcp contract afn float %i.fc, 6.250000e-02
  %i.gh = fadd reassoc nsz arcp contract afn float %i.ga, %i.gg
  %i.gi = fadd reassoc nsz arcp contract afn float %i.gh, %i.gf
  store float %i.gi, ptr %i.fq, align 4, !tbaa !18
  %i.gj = load float, ptr %i.gc, align 4, !tbaa !18
  %i.gk = fmul reassoc nsz arcp contract afn float %i.gj, 3.750000e-01
  %i.gl = fmul reassoc nsz arcp contract afn float %i.fz, 2.500000e-01
  %i.gm = fmul reassoc nsz arcp contract afn float %i.fn, 6.250000e-02
  %i.gn = fadd reassoc nsz arcp contract afn float %i.gl, %i.gm
  %i.go = fadd reassoc nsz arcp contract afn float %i.gn, %i.gk
  store float %i.go, ptr %i.gc, align 4, !tbaa !18
  %i.gp = add i64 %i.i, %i.gb
  %i.gq = add nuw nsw i32 %.08594, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.gq, %4
  br i1 %exitcond.not, label %._crit_edge97.split, label %bb.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @dt_bilateral_slice(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, float noundef %3) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 16, !tbaa !20  ; 4 uses
  %i.c = load i64, ptr %0, align 64, !tbaa !21    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 64, !tbaa !28  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !23   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.i = load i32, ptr %i.h, align 4, !tbaa !24   ; 2 uses
  %.not = icmp ne ptr %i.e, null
  %i.j = icmp sgt i32 %i.i, 0
  %or.cond = select i1 %.not, i1 %i.j, i1 false
  br i1 %or.cond, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load float, ptr %i.k, align 16, !tbaa !17
  %factor.op.fmul76 = fmul reassoc nsz arcp contract afn float %3, 4.000000e-02
  %factor.op.mul75 = shl i64 %i.b, 32             ; 2 uses
  %factor.op.mul.reass = mul i64 %factor.op.mul75, %i.c
  %factor.op.fmul.reass = fmul reassoc nsz arcp contract afn float %factor.op.fmul76, %i.l
  %i.m = icmp sgt i32 %i.g, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.o = add i64 %i.c, -1
  %i.p = uitofp reassoc nsz arcp contract afn i64 %i.o to float
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = add i64 %i.b, -1
  %i.s = uitofp reassoc nsz arcp contract afn i64 %i.r to float ; 2 uses
  %i.t = add i64 %i.c, -2                         ; 2 uses
  %i.u = trunc i64 %i.t to i32
  %i.v = add i64 %i.b, -2                         ; 2 uses
  %i.w = trunc i64 %i.v to i32
  %i.x = ashr exact i64 %factor.op.mul75, 32
  %i.y = ashr exact i64 %factor.op.mul.reass, 30
  %invariant.gep = getelementptr i8, ptr %i.e, i64 %i.y ; 2 uses
  br i1 %i.m, label %.preheader.lr.ph.split, label %.loopexit

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !22  ; 2 uses
  %i.ab = add i64 %i.aa, -2                       ; 2 uses
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = zext nneg i32 %i.g to i64               ; 2 uses
  %wide.trip.count82 = zext nneg i32 %i.i to i64
  %i.ae = add i64 %i.aa, -1
  %i.af = uitofp reassoc nsz arcp contract afn i64 %i.ae to float
  %i.ag = insertelement <2 x float> poison, float %i.af, i64 0
  %i.ah = insertelement <2 x float> %i.ag, float %i.p, i64 1 ; 2 uses
  %i.ai = insertelement <2 x i64> poison, i64 %i.ab, i64 0
  %i.aj = insertelement <2 x i64> %i.ai, i64 %i.t, i64 1
  %i.ak = insertelement <2 x i32> poison, i32 %i.ac, i64 0
  %i.al = insertelement <2 x i32> %i.ak, i32 %i.u, i64 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv79 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next80, %._crit_edge ] ; 3 uses
  %i.am = mul nuw nsw i64 %indvars.iv79, %i.ad
  %i.an = trunc nuw nsw i64 %indvars.iv79 to i32
  %i.ao = uitofp nneg i32 %i.an to float
  %i.ap = insertelement <2 x float> poison, float %i.ao, i64 0
  br label %image_to_grid.exit

._crit_edge:                                      ; preds = %image_to_grid.exit
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %exitcond83.not = icmp eq i64 %indvars.iv.next80, %wide.trip.count82
  br i1 %exitcond83.not, label %.loopexit, label %.preheader

image_to_grid.exit:                               ; preds = %.preheader, %image_to_grid.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %image_to_grid.exit ] ; 3 uses
  %i.aq = add nuw nsw i64 %indvars.iv, %i.am
  %i.ar = shl i64 %i.aq, 2
  %i.as = and i64 %i.ar, 4294967292               ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.as ; 2 uses
  %i.au = load float, ptr %i.at, align 4, !tbaa !18 ; 2 uses
  %i.av = trunc nuw nsw i64 %indvars.iv to i32
  %i.aw = uitofp nneg i32 %i.av to float
  %i.ax = load float, ptr %i.n, align 4, !tbaa !74
  %i.ay = load float, ptr %i.q, align 8, !tbaa !81
  %i.az = fmul reassoc nsz arcp contract afn float %i.ay, %i.au ; 3 uses
  %i.ba = fcmp reassoc nsz arcp contract afn ogt float %i.az, 0.000000e+00
  %i.bb = fcmp reassoc nsz arcp contract afn olt float %i.az, %i.s
  %.61.i = select reassoc nsz arcp contract afn i1 %i.bb, float %i.az, float %i.s
  %i.bc = select reassoc nsz arcp contract afn i1 %i.ba, float %.61.i, float 0.000000e+00 ; 2 uses
  %i.bd = fptosi float %i.bc to i32               ; 2 uses
  %i.be = sext i32 %i.bd to i64
  %i.bf = icmp ugt i64 %i.v, %i.be
  %i.bg = select i1 %i.bf, i32 %i.bd, i32 %i.w    ; 2 uses
  %i.bh = sitofp reassoc nsz arcp contract afn i32 %i.bg to float
  %i.bi = fsub reassoc nsz arcp contract afn float %i.bc, %i.bh
  %i.bj = sext i32 %i.bg to i64
  %i.bk = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = insertelement <2 x float> %i.ap, float %i.aw, i64 1
  %i.bn = fmul reassoc nsz arcp contract afn <2 x float> %i.bl, %i.bm ; 3 uses
  %i.bo = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.bn, zeroinitializer
  %i.bp = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.bn, %i.ah
  %i.bq = select <2 x i1> %i.bp, <2 x float> %i.bn, <2 x float> %i.ah
  %i.br = select <2 x i1> %i.bo, <2 x float> %i.bq, <2 x float> zeroinitializer ; 2 uses
  %i.bs = fptosi <2 x float> %i.br to <2 x i32>   ; 2 uses
  %i.bt = sext <2 x i32> %i.bs to <2 x i64>
  %i.bu = icmp ugt <2 x i64> %i.aj, %i.bt
  %i.bv = select <2 x i1> %i.bu, <2 x i32> %i.bs, <2 x i32> %i.al ; 3 uses
  %i.bw = sitofp <2 x i32> %i.bv to <2 x float>
  %i.bx = fsub reassoc nsz arcp contract afn <2 x float> %i.br, %i.bw ; 4 uses
  %i.by = extractelement <2 x i32> %i.bv, i64 1
  %i.bz = sext i32 %i.by to i64
  %i.ca = extractelement <2 x i32> %i.bv, i64 0
  %i.cb = sext i32 %i.ca to i64
  %i.cc = mul i64 %i.c, %i.cb
  %i.cd = add i64 %i.cc, %i.bz
  %i.ce = mul i64 %i.cd, %i.b
  %i.cf = add i64 %i.ce, %i.bj                    ; 3 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.cf ; 2 uses
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !18
  %i.ci = extractelement <2 x float> %i.bx, i64 1 ; 4 uses
  %i.cj = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ci ; 4 uses
  %i.ck = fmul reassoc nsz arcp contract afn float %i.ch, %i.cj
  %i.cl = add i64 %i.cf, %i.x                     ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.cl ; 2 uses
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !18
  %i.co = extractelement <2 x float> %i.bx, i64 1
  %i.cp = fmul reassoc nsz arcp contract afn float %i.cn, %i.co
  %i.cq = fadd reassoc nsz arcp contract afn float %i.cp, %i.ck
  %i.cr = extractelement <2 x float> %i.bx, i64 0
  %i.cs = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.cr ; 3 uses
  %i.ct = fmul reassoc nsz arcp contract afn float %i.cs, %i.cq
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.cf ; 2 uses
  %i.cu = load float, ptr %gep, align 4, !tbaa !18
  %i.cv = fmul reassoc nsz arcp contract afn float %i.cu, %i.cj
  %gep74 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.cl ; 2 uses
  %i.cw = load float, ptr %gep74, align 4, !tbaa !18
  %i.cx = fmul reassoc nsz arcp contract afn float %i.cw, %i.ci
  %reass.add = fadd reassoc nsz arcp contract afn float %i.cx, %i.cv
  %i.cy = extractelement <2 x float> %i.bx, i64 0 ; 2 uses
  %reass.mul = fmul reassoc nsz arcp contract afn float %reass.add, %i.cy
  %i.cz = fadd reassoc nsz arcp contract afn float %reass.mul, %i.ct ; 2 uses
  %i.da = getelementptr i8, ptr %i.cg, i64 4
  %i.db = load float, ptr %i.da, align 4, !tbaa !18
  %4 = fmul reassoc nsz arcp contract afn float %i.db, %i.cj
  %i.dc = fmul reassoc nsz arcp contract afn float %4, %i.cs
  %5 = fsub reassoc nsz arcp contract afn float %i.dc, %i.cz
  %i.dd = getelementptr i8, ptr %i.cm, i64 4
  %i.de = load float, ptr %i.dd, align 4, !tbaa !18
  %6 = fmul reassoc nsz arcp contract afn float %i.de, %i.ci
  %i.df = fmul reassoc nsz arcp contract afn float %6, %i.cs
  %i.dg = getelementptr i8, ptr %gep, i64 4
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !18
  %i.di = fmul reassoc nsz arcp contract afn float %i.dh, %i.cj
  %i.dj = getelementptr i8, ptr %gep74, i64 4
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !18
  %i.dl = fmul reassoc nsz arcp contract afn float %i.dk, %i.ci
  %reass.add66 = fadd reassoc nsz arcp contract afn float %i.dl, %i.di
  %reass.mul67 = fmul reassoc nsz arcp contract afn float %reass.add66, %i.cy
  %reass.add68.a = fadd reassoc nsz arcp contract afn float %i.df, %5
  %reass.add64 = fadd reassoc nsz arcp contract afn float %reass.add68.a, %reass.mul67
  %reass.mul65 = fmul reassoc nsz arcp contract afn float %reass.add64, %i.bi
  %i.dm = fadd reassoc nsz arcp contract afn float %reass.mul65, %i.cz
  %i.dn = fmul reassoc nsz arcp contract afn float %factor.op.fmul.reass, %i.dm
  %i.do = fsub reassoc nsz arcp contract afn float %i.au, %i.dn
  %i.dp = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.do, float 0.000000e+00)
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.as ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dq, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.at, i64 16, i1 false), !tbaa !18, !alias.scope !82
  store float %i.dp, ptr %i.dq, align 4, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ad
  br i1 %exitcond.not, label %._crit_edge, label %image_to_grid.exit

.loopexit:                                        ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @dt_bilateral_slice_to_output(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, float noundef %3) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 16, !tbaa !20  ; 4 uses
  %i.c = load i64, ptr %0, align 64, !tbaa !21    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 64, !tbaa !28  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !23   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.i = load i32, ptr %i.h, align 4, !tbaa !24   ; 2 uses
  %.not = icmp ne ptr %i.e, null
  %i.j = icmp sgt i32 %i.i, 0
  %or.cond = select i1 %.not, i1 %i.j, i1 false
  br i1 %or.cond, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load float, ptr %i.k, align 16, !tbaa !17
  %factor.op.fmul77 = fmul reassoc nsz arcp contract afn float %3, 4.000000e-02
  %factor.op.mul76 = shl i64 %i.b, 32             ; 2 uses
  %factor.op.mul.reass = mul i64 %factor.op.mul76, %i.c
  %factor.op.fmul.reass = fmul reassoc nsz arcp contract afn float %factor.op.fmul77, %i.l
  %i.m = icmp sgt i32 %i.g, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.o = add i64 %i.c, -1
  %i.p = uitofp reassoc nsz arcp contract afn i64 %i.o to float
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = add i64 %i.b, -1
  %i.s = uitofp reassoc nsz arcp contract afn i64 %i.r to float ; 2 uses
  %i.t = add i64 %i.c, -2                         ; 2 uses
  %i.u = trunc i64 %i.t to i32
  %i.v = add i64 %i.b, -2                         ; 2 uses
  %i.w = trunc i64 %i.v to i32
  %i.x = ashr exact i64 %factor.op.mul76, 32
  %i.y = ashr exact i64 %factor.op.mul.reass, 30
  %invariant.gep = getelementptr i8, ptr %i.e, i64 %i.y ; 2 uses
  br i1 %i.m, label %.preheader.lr.ph.split, label %.loopexit

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !22  ; 2 uses
  %i.ab = add i64 %i.aa, -2                       ; 2 uses
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = zext nneg i32 %i.g to i64               ; 2 uses
  %wide.trip.count83 = zext nneg i32 %i.i to i64
  %i.ae = add i64 %i.aa, -1
  %i.af = uitofp reassoc nsz arcp contract afn i64 %i.ae to float
  %i.ag = insertelement <2 x float> poison, float %i.af, i64 0
  %i.ah = insertelement <2 x float> %i.ag, float %i.p, i64 1 ; 2 uses
  %i.ai = insertelement <2 x i64> poison, i64 %i.ab, i64 0
  %i.aj = insertelement <2 x i64> %i.ai, i64 %i.t, i64 1
  %i.ak = insertelement <2 x i32> poison, i32 %i.ac, i64 0
  %i.al = insertelement <2 x i32> %i.ak, i32 %i.u, i64 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv80 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next81, %._crit_edge ] ; 3 uses
  %i.am = mul nuw nsw i64 %indvars.iv80, %i.ad
  %i.an = trunc nuw nsw i64 %indvars.iv80 to i32
  %i.ao = uitofp nneg i32 %i.an to float
  %i.ap = insertelement <2 x float> poison, float %i.ao, i64 0
  br label %image_to_grid.exit

._crit_edge:                                      ; preds = %image_to_grid.exit
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %exitcond84.not = icmp eq i64 %indvars.iv.next81, %wide.trip.count83
  br i1 %exitcond84.not, label %.loopexit, label %.preheader

image_to_grid.exit:                               ; preds = %.preheader, %image_to_grid.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %image_to_grid.exit ] ; 3 uses
  %i.aq = add nuw nsw i64 %indvars.iv, %i.am
  %i.ar = shl i64 %i.aq, 2
  %i.as = and i64 %i.ar, 4294967292               ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.as
  %i.au = load float, ptr %i.at, align 4, !tbaa !18
  %i.av = trunc nuw nsw i64 %indvars.iv to i32
  %i.aw = uitofp nneg i32 %i.av to float
  %i.ax = load float, ptr %i.n, align 4, !tbaa !74
  %i.ay = load float, ptr %i.q, align 8, !tbaa !81
  %i.az = fmul reassoc nsz arcp contract afn float %i.ay, %i.au ; 3 uses
  %i.ba = fcmp reassoc nsz arcp contract afn ogt float %i.az, 0.000000e+00
  %i.bb = fcmp reassoc nsz arcp contract afn olt float %i.az, %i.s
  %.61.i = select reassoc nsz arcp contract afn i1 %i.bb, float %i.az, float %i.s
  %i.bc = select reassoc nsz arcp contract afn i1 %i.ba, float %.61.i, float 0.000000e+00 ; 2 uses
  %i.bd = fptosi float %i.bc to i32               ; 2 uses
  %i.be = sext i32 %i.bd to i64
  %i.bf = icmp ugt i64 %i.v, %i.be
  %i.bg = select i1 %i.bf, i32 %i.bd, i32 %i.w    ; 2 uses
  %i.bh = sitofp reassoc nsz arcp contract afn i32 %i.bg to float
  %i.bi = fsub reassoc nsz arcp contract afn float %i.bc, %i.bh
  %i.bj = sext i32 %i.bg to i64
  %i.bk = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = insertelement <2 x float> %i.ap, float %i.aw, i64 1
  %i.bn = fmul reassoc nsz arcp contract afn <2 x float> %i.bl, %i.bm ; 3 uses
  %i.bo = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.bn, zeroinitializer
  %i.bp = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.bn, %i.ah
  %i.bq = select <2 x i1> %i.bp, <2 x float> %i.bn, <2 x float> %i.ah
  %i.br = select <2 x i1> %i.bo, <2 x float> %i.bq, <2 x float> zeroinitializer ; 2 uses
  %i.bs = fptosi <2 x float> %i.br to <2 x i32>   ; 2 uses
  %i.bt = sext <2 x i32> %i.bs to <2 x i64>
  %i.bu = icmp ugt <2 x i64> %i.aj, %i.bt
  %i.bv = select <2 x i1> %i.bu, <2 x i32> %i.bs, <2 x i32> %i.al ; 3 uses
  %i.bw = sitofp <2 x i32> %i.bv to <2 x float>
  %i.bx = fsub reassoc nsz arcp contract afn <2 x float> %i.br, %i.bw ; 4 uses
  %i.by = extractelement <2 x i32> %i.bv, i64 1
  %i.bz = sext i32 %i.by to i64
  %i.ca = extractelement <2 x i32> %i.bv, i64 0
  %i.cb = sext i32 %i.ca to i64
  %i.cc = mul i64 %i.c, %i.cb
  %i.cd = add i64 %i.cc, %i.bz
  %i.ce = mul i64 %i.cd, %i.b
  %i.cf = add i64 %i.ce, %i.bj                    ; 3 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.cf ; 2 uses
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !18
  %i.ci = extractelement <2 x float> %i.bx, i64 1 ; 4 uses
  %i.cj = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ci ; 4 uses
  %i.ck = fmul reassoc nsz arcp contract afn float %i.ch, %i.cj
  %i.cl = add i64 %i.cf, %i.x                     ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.cl ; 2 uses
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !18
  %i.co = extractelement <2 x float> %i.bx, i64 1
  %i.cp = fmul reassoc nsz arcp contract afn float %i.cn, %i.co
  %i.cq = fadd reassoc nsz arcp contract afn float %i.cp, %i.ck
  %i.cr = extractelement <2 x float> %i.bx, i64 0
  %i.cs = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.cr ; 3 uses
  %i.ct = fmul reassoc nsz arcp contract afn float %i.cs, %i.cq
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.cf ; 2 uses
  %i.cu = load float, ptr %gep, align 4, !tbaa !18
  %i.cv = fmul reassoc nsz arcp contract afn float %i.cu, %i.cj
  %gep75 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.cl ; 2 uses
  %i.cw = load float, ptr %gep75, align 4, !tbaa !18
  %i.cx = fmul reassoc nsz arcp contract afn float %i.cw, %i.ci
  %reass.add = fadd reassoc nsz arcp contract afn float %i.cx, %i.cv
  %i.cy = extractelement <2 x float> %i.bx, i64 0 ; 2 uses
  %reass.mul = fmul reassoc nsz arcp contract afn float %reass.add, %i.cy
  %i.cz = fadd reassoc nsz arcp contract afn float %reass.mul, %i.ct ; 2 uses
  %i.da = getelementptr i8, ptr %i.cg, i64 4
  %i.db = load float, ptr %i.da, align 4, !tbaa !18
  %4 = fmul reassoc nsz arcp contract afn float %i.db, %i.cj
  %i.dc = fmul reassoc nsz arcp contract afn float %4, %i.cs
  %5 = fsub reassoc nsz arcp contract afn float %i.dc, %i.cz
  %i.dd = getelementptr i8, ptr %i.cm, i64 4
  %i.de = load float, ptr %i.dd, align 4, !tbaa !18
  %6 = fmul reassoc nsz arcp contract afn float %i.de, %i.ci
  %i.df = fmul reassoc nsz arcp contract afn float %6, %i.cs
  %i.dg = getelementptr i8, ptr %gep, i64 4
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !18
  %i.di = fmul reassoc nsz arcp contract afn float %i.dh, %i.cj
  %i.dj = getelementptr i8, ptr %gep75, i64 4
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !18
  %i.dl = fmul reassoc nsz arcp contract afn float %i.dk, %i.ci
  %reass.add67 = fadd reassoc nsz arcp contract afn float %i.dl, %i.di
  %reass.mul68 = fmul reassoc nsz arcp contract afn float %reass.add67, %i.cy
  %reass.add69.a = fadd reassoc nsz arcp contract afn float %i.df, %5
  %reass.add65 = fadd reassoc nsz arcp contract afn float %reass.add69.a, %reass.mul68
  %reass.mul66 = fmul reassoc nsz arcp contract afn float %reass.add65, %i.bi
  %i.dm = fadd reassoc nsz arcp contract afn float %reass.mul66, %i.cz
  %i.dn = fmul reassoc nsz arcp contract afn float %factor.op.fmul.reass, %i.dm
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.as ; 2 uses
  %i.dp = load float, ptr %i.do, align 4, !tbaa !18
  %i.dq = fsub reassoc nsz arcp contract afn float %i.dp, %i.dn ; 2 uses
  %i.dr = fcmp reassoc nsz arcp contract afn olt float %i.dq, 0.000000e+00
  %i.ds = select reassoc nsz arcp contract afn i1 %i.dr, float 0.000000e+00, float %i.dq
  store float %i.ds, ptr %i.do, align 4, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ad
  br i1 %exitcond.not, label %._crit_edge, label %image_to_grid.exit

.loopexit:                                        ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @dt_bilateral_free(ptr noundef captures(address_is_null) %0) local_unnamed_addr #11 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 64, !tbaa !28
  tail call void @free(ptr noundef %i.b) #15
  tail call void @free(ptr noundef nonnull %0) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.ceil.v2f32(<2 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.round.v2f32(<2 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.umin.v2i32(<2 x i32>, <2 x i32>) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !14, i64 44}
!12 = !{!"dt_bilateral_t", !13, i64 0, !13, i64 8, !13, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !14, i64 44, !14, i64 48, !14, i64 52, !14, i64 56, !15, i64 64}
!13 = !{!"long", !9, i64 0}
!14 = !{!"float", !9, i64 0}
!15 = !{!"p1 float", !16, i64 0}
!16 = !{!"any pointer", !9, i64 0}
!17 = !{!12, !14, i64 48}
!18 = !{!14, !14, i64 0}
!19 = !{!13, !13, i64 0}
!20 = !{!12, !13, i64 16}
!21 = !{!12, !13, i64 0}
!22 = !{!12, !13, i64 8}
!23 = !{!12, !8, i64 24}
!24 = !{!12, !8, i64 28}
!25 = !{!12, !8, i64 32}
!26 = !{!12, !8, i64 36}
!27 = !{!12, !8, i64 40}
!28 = !{!12, !15, i64 64}
!29 = !{!30, !8, i64 8}
!30 = !{!"darktable_t", !31, i64 0, !8, i64 4, !8, i64 8, !32, i64 16, !32, i64 24, !32, i64 32, !32, i64 40, !33, i64 48, !34, i64 56, !35, i64 64, !36, i64 72, !37, i64 80, !38, i64 88, !39, i64 96, !40, i64 104, !41, i64 112, !42, i64 120, !43, i64 128, !44, i64 136, !45, i64 144, !46, i64 152, !47, i64 160, !48, i64 168, !49, i64 176, !50, i64 184, !51, i64 192, !52, i64 200, !53, i64 208, !54, i64 216, !55, i64 224, !9, i64 232, !56, i64 2792, !56, i64 2832, !56, i64 2872, !56, i64 2912, !56, i64 2952, !56, i64 2992, !57, i64 3032, !57, i64 3040, !57, i64 3048, !57, i64 3056, !57, i64 3064, !57, i64 3072, !57, i64 3080, !57, i64 3088, !57, i64 3096, !57, i64 3104, !57, i64 3112, !57, i64 3120, !57, i64 3128, !58, i64 3136, !32, i64 3288, !65, i64 3296, !32, i64 3304, !8, i64 3312, !9, i64 3316, !8, i64 3512, !8, i64 3516, !66, i64 3520, !67, i64 3528, !68, i64 3536, !70, i64 3576, !71, i64 3600, !72, i64 3632, !8, i64 3672}
!31 = !{!"dt_codepath_t", !8, i64 0}
!32 = !{!"p1 _ZTS6_GList", !16, i64 0}
!33 = !{!"p1 _ZTS11_JsonParser", !16, i64 0}
!34 = !{!"p1 _ZTS9dt_conf_t", !16, i64 0}
!35 = !{!"p1 _ZTS12dt_develop_t", !16, i64 0}
!36 = !{!"p1 _ZTS8dt_lib_t", !16, i64 0}
!37 = !{!"p1 _ZTS17dt_view_manager_t", !16, i64 0}
!38 = !{!"p1 _ZTS12dt_control_t", !16, i64 0}
!39 = !{!"p1 _ZTS19dt_control_signal_t", !16, i64 0}
!40 = !{!"p1 _ZTS12dt_gui_gtk_t", !16, i64 0}
!41 = !{!"p1 _ZTS17dt_mipmap_cache_t", !16, i64 0}
!42 = !{!"p1 _ZTS16dt_image_cache_t", !16, i64 0}
!43 = !{!"p1 _ZTS12dt_bauhaus_t", !16, i64 0}
!44 = !{!"p1 _ZTS13dt_database_t", !16, i64 0}
!45 = !{!"p1 _ZTS14dt_pwstorage_t", !16, i64 0}
!46 = !{!"p1 _ZTS11dt_camctl_t", !16, i64 0}
!47 = !{!"p1 _ZTS15dt_collection_t", !16, i64 0}
!48 = !{!"p1 _ZTS14dt_selection_t", !16, i64 0}
!49 = !{!"p1 _ZTS11dt_points_t", !16, i64 0}
!50 = !{!"p1 _ZTS12dt_imageio_t", !16, i64 0}
!51 = !{!"p1 _ZTS11dt_opencl_t", !16, i64 0}
!52 = !{!"p1 _ZTS9dt_dbus_t", !16, i64 0}
!53 = !{!"p1 _ZTS9dt_undo_t", !16, i64 0}
!54 = !{!"p1 _ZTS16dt_colorspaces_t", !16, i64 0}
!55 = !{!"p1 _ZTS9dt_l10n_t", !16, i64 0}
!56 = !{!"dt_pthread_mutex_t", !9, i64 0}
!57 = !{!"p1 omnipotent char", !16, i64 0}
!58 = !{!"", !59, i64 0, !56, i64 8, !9, i64 48, !60, i64 96, !60, i64 97, !61, i64 104, !62, i64 112, !63, i64 120, !64, i64 128, !64, i64 136, !64, i64 144}
!59 = !{!"p1 _ZTS9lua_State", !16, i64 0}
!60 = !{!"_Bool", !9, i64 0}
!61 = !{!"p1 _ZTS10_GMainLoop", !16, i64 0}
!62 = !{!"p1 _ZTS13_GMainContext", !16, i64 0}
!63 = !{!"p1 _ZTS12_GThreadPool", !16, i64 0}
!64 = !{!"p1 _ZTS12_GAsyncQueue", !16, i64 0}
!65 = !{!"double", !9, i64 0}
!66 = !{!"p1 _ZTS10_GTimeZone", !16, i64 0}
!67 = !{!"p1 _ZTS10_GDateTime", !16, i64 0}
!68 = !{!"dt_sys_resources_t", !13, i64 0, !13, i64 8, !69, i64 16, !69, i64 24, !8, i64 32}
!69 = !{!"p1 int", !16, i64 0}
!70 = !{!"dt_backthumb_t", !65, i64 0, !65, i64 8, !8, i64 16, !8, i64 20}
!71 = !{!"dt_gimp_t", !8, i64 0, !57, i64 8, !57, i64 16, !8, i64 24, !8, i64 28}
!72 = !{!"dt_splash_t", !73, i64 0, !73, i64 8, !73, i64 16, !73, i64 24, !8, i64 32}
!73 = !{!"p1 _ZTS10_GtkWidget", !16, i64 0}
!74 = !{!12, !14, i64 52}
!75 = distinct !{!75, !76, !77}
!76 = !{!"llvm.loop.isvectorized", i32 1}
!77 = !{!"llvm.loop.unroll.runtime.disable"}
!78 = distinct !{!78, !77, !76}
!79 = distinct !{!79, !76, !77}
!80 = distinct !{!80, !76}
!81 = !{!12, !14, i64 56}
!82 = !{!83, !85}
!83 = distinct !{!83, !84, !"copy_pixel: argument 0"}
!84 = distinct !{!84, !"copy_pixel"}
!85 = distinct !{!85, !84, !"copy_pixel: argument 1"}
end_hunk_0
