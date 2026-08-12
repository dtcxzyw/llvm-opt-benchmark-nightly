inline.NumInlined: 75
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_circle_get_mask:bb.a
  %i.dl = tail call ptr @dt_alloc_aligned(i64 noundef %i.dk) #13 ; 9 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dl, i64 64) ]
  store ptr %i.dl, ptr %3, align 8, !tbaa !113
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @free(ptr noundef nonnull %i.ah) #13
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cs, i64 144
  %i.do = load i32, ptr %i.dn, align 16, !tbaa !149 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cs, i64 148
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !157 ; 2 uses
  %i.dr = tail call i32 @llvm.smin.i32(i32 %i.do, i32 %i.dq)
  %i.ds = load float, ptr %i.aa, align 4, !tbaa !22
  %i.dt = sitofp reassoc nsz arcp contract afn i32 %i.do to float
  %i.du = fmul reassoc nsz arcp contract afn float %i.ds, %i.dt ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !22
  %i.dx = sitofp reassoc nsz arcp contract afn i32 %i.dq to float
  %i.dy = fmul reassoc nsz arcp contract afn float %i.dw, %i.dx ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !18 ; 3 uses
  %i.eb = sitofp reassoc nsz arcp contract afn i32 %i.dr to float ; 2 uses
  %i.ec = fmul reassoc nnan nsz arcp contract afn float %i.eb, %i.eb ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !23
  %i.ef = fadd reassoc nsz arcp contract afn float %i.ee, %i.ea ; 2 uses
  %i.eg = fmul reassoc nsz arcp contract afn float %i.ef, %i.ef
  %i.eh = fmul reassoc nsz arcp contract afn float %i.eg, %i.ec ; 5 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 3 uses
  %i.ej = mul nsw i32 %i.ac, %i.ab                ; 3 uses
  %i.ek = icmp sgt i32 %i.ej, 0
  br i1 %i.ek, label %.lr.ph124.preheader, label %._crit_edge125

.lr.ph124.preheader:                              ; preds = %bb.n
  %i.el = fmul reassoc nsz arcp contract afn float %i.ea, %i.ea
  %i.em = fmul reassoc nsz arcp contract afn float %i.el, %i.ec
  %i.en = fsub reassoc nsz arcp contract afn float %i.eh, %i.em ; 4 uses
  %wide.trip.count135 = zext nneg i32 %i.ej to i64 ; 7 uses
  %min.iters.check162 = icmp ult i32 %i.ej, 8
  br i1 %min.iters.check162, label %.lr.ph124.preheader181, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph124.preheader
  %i.eo = shl nuw nsw i64 %wide.trip.count135, 2
  %scevgep = getelementptr i8, ptr %i.dl, i64 %i.eo
  %i.ep = shl nuw nsw i64 %wide.trip.count135, 3
  %scevgep161 = getelementptr i8, ptr %i.ah, i64 %i.ep
  %bound0 = icmp ult ptr %i.dl, %scevgep161
  %bound1 = icmp ult ptr %i.ah, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph124.preheader181, label %vector.ph163

vector.ph163:                                     ; preds = %vector.memcheck
  %n.vec164 = and i64 %wide.trip.count135, 2147483640 ; 3 uses
  %broadcast.splatinsert165 = insertelement <8 x float> poison, float %i.en, i64 0
  %broadcast.splat166 = shufflevector <8 x float> %broadcast.splatinsert165, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert167 = insertelement <8 x float> poison, float %i.du, i64 0
  %broadcast.splat168 = shufflevector <8 x float> %broadcast.splatinsert167, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert169 = insertelement <8 x float> poison, float %i.dy, i64 0
  %broadcast.splat170 = shufflevector <8 x float> %broadcast.splatinsert169, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert171 = insertelement <8 x float> poison, float %i.eh, i64 0
  %broadcast.splat172 = shufflevector <8 x float> %broadcast.splatinsert171, <8 x float> poison, <8 x i32> zeroinitializer
  %i.eq = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat166
  br label %vector.body173

vector.body173:                                   ; preds = %vector.body173, %vector.ph163
  %index174 = phi i64 [ 0, %vector.ph163 ], [ %index.next176, %vector.body173 ] ; 3 uses
  %.idx180 = shl nuw nsw i64 %index174, 3
  %i.er = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx180
  %wide.vec = load <16 x float>, ptr %i.er, align 64, !tbaa !22, !alias.scope !158 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec175 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.es = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec, %broadcast.splat168 ; 2 uses
  %i.et = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec175, %broadcast.splat170 ; 2 uses
  %i.eu = fmul reassoc nsz arcp contract afn <8 x float> %i.es, %i.es
  %i.ev = fmul reassoc nsz arcp contract afn <8 x float> %i.et, %i.et
  %i.ew = fadd reassoc nsz arcp contract afn <8 x float> %i.ev, %i.eu
  %i.ex = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat172, %i.ew
  %i.ey = fmul reassoc nsz arcp contract afn <8 x float> %i.ex, %i.eq ; 3 uses
  %i.ez = fcmp reassoc nsz arcp contract afn oge <8 x float> %i.ey, zeroinitializer
  %i.fa = fcmp reassoc nsz arcp contract afn ole <8 x float> %i.ey, splat (float 1.000000e+00)
  %i.fb = select reassoc nsz arcp contract afn <8 x i1> %i.fa, <8 x float> %i.ey, <8 x float> splat (float 1.000000e+00)
  %i.fc = select reassoc nsz arcp contract afn <8 x i1> %i.ez, <8 x float> %i.fb, <8 x float> zeroinitializer ; 2 uses
  %i.fd = fmul reassoc nsz arcp contract afn <8 x float> %i.fc, %i.fc
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %index174
  store <8 x float> %i.fd, ptr %i.fe, align 32, !tbaa !22, !alias.scope !161, !noalias !158
  %index.next176 = add nuw i64 %index174, 8       ; 2 uses
  %i.ff = icmp eq i64 %index.next176, %n.vec164
  br i1 %i.ff, label %middle.block177, label %vector.body173, !llvm.loop !163

middle.block177:                                  ; preds = %vector.body173
  %cmp.n178 = icmp eq i64 %n.vec164, %wide.trip.count135
  br i1 %cmp.n178, label %._crit_edge125, label %.lr.ph124.preheader181

.lr.ph124.preheader181:                           ; preds = %vector.memcheck, %.lr.ph124.preheader, %middle.block177
  %indvars.iv132.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph124.preheader ], [ %n.vec164, %middle.block177 ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count135, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph124.prol.loopexit, label %.lr.ph124.prol

.lr.ph124.prol:                                   ; preds = %.lr.ph124.preheader181
  %i.fg = shl nuw nsw i64 %indvars.iv132.ph, 1    ; 2 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.fg
  %i.fi = load float, ptr %i.fh, align 64, !tbaa !22
  %i.fj = fsub reassoc nsz arcp contract afn float %i.fi, %i.du ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.fg
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !22
  %i.fm = fsub reassoc nsz arcp contract afn float %i.fl, %i.dy ; 2 uses
  %.neg.prol = fmul reassoc nsz arcp contract afn float %i.fj, %i.fj
  %.neg115.prol = fmul reassoc nsz arcp contract afn float %i.fm, %i.fm
  %reass.add.prol = fadd reassoc nsz arcp contract afn float %.neg115.prol, %.neg.prol
  %i.fn = fsub reassoc nsz arcp contract afn float %i.eh, %reass.add.prol
  %i.fo = fdiv reassoc nsz arcp contract afn float %i.fn, %i.en ; 3 uses
  %i.fp = fcmp reassoc nsz arcp contract afn oge float %i.fo, 0.000000e+00
  %i.fq = fcmp reassoc nsz arcp contract afn ole float %i.fo, 1.000000e+00
  %i.fr = select reassoc nsz arcp contract afn i1 %i.fq, float %i.fo, float 1.000000e+00
  %i.fs = select reassoc nsz arcp contract afn i1 %i.fp, float %i.fr, float 0.000000e+00 ; 2 uses
  %i.ft = fmul reassoc nsz arcp contract afn float %i.fs, %i.fs
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv132.ph
  store float %i.ft, ptr %i.fu, align 32, !tbaa !22
  %indvars.iv.next133.prol = or disjoint i64 %indvars.iv132.ph, 1
  br label %.lr.ph124.prol.loopexit

.lr.ph124.prol.loopexit:                          ; preds = %.lr.ph124.prol, %.lr.ph124.preheader181
  %indvars.iv132.unr = phi i64 [ %indvars.iv132.ph, %.lr.ph124.preheader181 ], [ %indvars.iv.next133.prol, %.lr.ph124.prol ]
  %i.fv = add nsw i64 %wide.trip.count135, -1
  %i.fw = icmp eq i64 %indvars.iv132.ph, %i.fv
  br i1 %i.fw, label %._crit_edge125, label %.lr.ph124.preheader181.new

.lr.ph124.preheader181.new:                       ; preds = %.lr.ph124.prol.loopexit
  %i.fx = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.en
  %i.fy = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.en
  br label %.lr.ph124

._crit_edge125:                                   ; preds = %.lr.ph124.prol.loopexit, %.lr.ph124, %middle.block177, %bb.n
  tail call void @free(ptr noundef nonnull %i.ah) #13
  %i.fz = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !134
  %i.ga = and i32 %i.fz, 4112
  %or.cond110.not = icmp eq i32 %i.ga, 4112
  br i1 %or.cond110.not, label %bb.o, label %bb.p

.lr.ph124:                                        ; preds = %.lr.ph124, %.lr.ph124.preheader181.new
  %indvars.iv132 = phi i64 [ %indvars.iv132.unr, %.lr.ph124.preheader181.new ], [ %indvars.iv.next133.1, %.lr.ph124 ] ; 4 uses
  %i.gb = shl nuw nsw i64 %indvars.iv132, 1       ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.gb
  %i.gd = load float, ptr %i.gc, align 8, !tbaa !22
  %i.ge = fsub reassoc nsz arcp contract afn float %i.gd, %i.du ; 2 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.gb
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !22
  %i.gh = fsub reassoc nsz arcp contract afn float %i.gg, %i.dy ; 2 uses
  %.neg = fmul reassoc nsz arcp contract afn float %i.ge, %i.ge
  %.neg115 = fmul reassoc nsz arcp contract afn float %i.gh, %i.gh
  %reass.add = fadd reassoc nsz arcp contract afn float %.neg115, %.neg
  %i.gi = fsub reassoc nsz arcp contract afn float %i.eh, %reass.add
  %i.gj = fmul reassoc nsz arcp contract afn float %i.gi, %i.fx ; 3 uses
  %i.gk = fcmp reassoc nsz arcp contract afn oge float %i.gj, 0.000000e+00
  %i.gl = fcmp reassoc nsz arcp contract afn ole float %i.gj, 1.000000e+00
  %i.gm = select reassoc nsz arcp contract afn i1 %i.gl, float %i.gj, float 1.000000e+00
  %i.gn = select reassoc nsz arcp contract afn i1 %i.gk, float %i.gm, float 0.000000e+00 ; 2 uses
  %i.go = fmul reassoc nsz arcp contract afn float %i.gn, %i.gn
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv132
  store float %i.go, ptr %i.gp, align 4, !tbaa !22
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %i.gq = shl nuw nsw i64 %indvars.iv.next133, 1  ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.gq
  %i.gs = load float, ptr %i.gr, align 8, !tbaa !22
  %i.gt = fsub reassoc nsz arcp contract afn float %i.gs, %i.du ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.gq
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !22
  %i.gw = fsub reassoc nsz arcp contract afn float %i.gv, %i.dy ; 2 uses
  %.neg.1 = fmul reassoc nsz arcp contract afn float %i.gt, %i.gt
  %.neg115.1 = fmul reassoc nsz arcp contract afn float %i.gw, %i.gw
  %reass.add.1 = fadd reassoc nsz arcp contract afn float %.neg115.1, %.neg.1
  %i.gx = fsub reassoc nsz arcp contract afn float %i.eh, %reass.add.1
  %i.gy = fmul reassoc nsz arcp contract afn float %i.gx, %i.fy ; 3 uses
  %i.gz = fcmp reassoc nsz arcp contract afn oge float %i.gy, 0.000000e+00
  %i.ha = fcmp reassoc nsz arcp contract afn ole float %i.gy, 1.000000e+00
  %i.hb = select reassoc nsz arcp contract afn i1 %i.ha, float %i.gy, float 1.000000e+00
  %i.hc = select reassoc nsz arcp contract afn i1 %i.gz, float %i.hb, float 0.000000e+00 ; 2 uses
  %i.hd = fmul reassoc nsz arcp contract afn float %i.hc, %i.hc
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv.next133
  store float %i.hd, ptr %i.he, align 4, !tbaa !22
  %indvars.iv.next133.1 = add nuw nsw i64 %indvars.iv132, 2 ; 2 uses
  %exitcond136.not.1 = icmp eq i64 %indvars.iv.next133.1, %wide.trip.count135
  br i1 %exitcond136.not.1, label %._crit_edge125, label %.lr.ph124, !llvm.loop !164

bb.o:                                             ; preds = %._crit_edge125
  %i.hf = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.hg = call i32 @gettimeofday(ptr noundef nonnull %8, ptr noundef null) #13 ; 0 uses
  %i.hh = load i64, ptr %8, align 8, !tbaa !135
  %i.hi = add nsw i64 %i.hh, -1290608000
  %i.hj = sitofp reassoc nsz arcp contract afn i64 %i.hi to double
  %i.hk = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !137
  %i.hm = sitofp reassoc nsz arcp contract afn i64 %i.hl to double
  %i.hn = fmul reassoc nnan nsz arcp contract afn double %i.hm, f0x3EB0C6F7A0B5ED8D
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %13 = fsub reassoc nsz arcp contract afn double %i.hj, %.2114
  %14 = fadd reassoc nsz arcp contract afn double %13, %i.hn
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.12, ptr noundef nonnull %i.hf, double noundef %14) #13
  br label %bb.p

bb.p:                                             ; preds = %bb.e, %._crit_edge125, %bb.o, %bb.m, %bb.i, %dt_get_debug_wtime.exit
  %.2 = phi i32 [ 0, %dt_get_debug_wtime.exit ], [ 0, %bb.e ], [ 0, %bb.m ], [ 0, %bb.i ], [ 1, %bb.o ], [ 1, %._crit_edge125 ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_circle_get_mask_roi(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noalias nofree noundef writeonly captures(none) %4) #0 {
bb.a:
  %5 = alloca %struct.timeval, align 8            ; 5 uses
  %6 = alloca %struct.timeval, align 8            ; 5 uses
  %7 = alloca %struct.timeval, align 8            ; 5 uses
  %8 = alloca %struct.timeval, align 8            ; 5 uses
  %9 = alloca %struct.timeval, align 8            ; 5 uses
  %10 = alloca %struct.timeval, align 8           ; 5 uses
  %11 = alloca %struct.timeval, align 8           ; 5 uses
  %12 = alloca %struct.timeval, align 8           ; 5 uses
  %13 = alloca %struct.timeval, align 8           ; 5 uses
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !134
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %dt_get_debug_wtime.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  %i.b = call i32 @gettimeofday(ptr noundef nonnull %13, ptr noundef null) #13 ; 0 uses
  %i.c = load i64, ptr %13, align 8, !tbaa !135
  %i.d = add nsw i64 %i.c, -1290608000
  %i.e = sitofp reassoc nsz arcp contract afn i64 %i.d to double
  %i.f = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !137
  %i.h = sitofp reassoc nsz arcp contract afn i64 %i.g to double
  %i.i = fmul reassoc nnan nsz arcp contract afn double %i.h, f0x3EB0C6F7A0B5ED8D
  %i.j = fadd reassoc nsz arcp contract afn double %i.i, %i.e
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  br label %dt_get_debug_wtime.exit

dt_get_debug_wtime.exit:                          ; preds = %bb.a, %bb.b
  %i.k = phi reassoc nsz arcp contract afn double [ %i.j, %bb.b ], [ 0.000000e+00, %bb.a ] ; 3 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !11
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !16   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !143  ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 144
  %i.q = load i32, ptr %i.p, align 16, !tbaa !149 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 148
  %i.s = load i32, ptr %i.r, align 4, !tbaa !157  ; 2 uses
  %i.t = load float, ptr %i.m, align 4, !tbaa !22
  %i.u = sitofp reassoc nsz arcp contract afn i32 %i.q to float
  %i.v = fmul reassoc nsz arcp contract afn float %i.t, %i.u ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.x = load float, ptr %i.w, align 4, !tbaa !22
  %i.y = sitofp reassoc nsz arcp contract afn i32 %i.s to float
  %i.z = fmul reassoc nsz arcp contract afn float %i.x, %i.y ; 4 uses
  %i.aa = tail call i32 @llvm.smin.i32(i32 %i.q, i32 %i.s)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !18 ; 2 uses
  %i.ad = sitofp reassoc nsz arcp contract afn i32 %i.aa to float ; 2 uses
  %i.ae = fmul reassoc nsz arcp contract afn float %i.ac, %i.ad ; 2 uses
  %i.af = fmul reassoc nsz arcp contract afn float %i.ae, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !23
  %i.ai = fadd reassoc nsz arcp contract afn float %i.ah, %i.ac
  %i.aj = fmul reassoc nsz arcp contract afn float %i.ai, %i.ad ; 4 uses
  %i.ak = fmul reassoc nsz arcp contract afn float %i.aj, %i.aj ; 4 uses
  %i.al = fsub reassoc nsz arcp contract afn float %i.ak, %i.af ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.an = load i32, ptr %i.am, align 4, !tbaa !165 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !166 ; 3 uses
  %i.aq = load i32, ptr %3, align 4, !tbaa !167   ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !168 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.au = load float, ptr %i.at, align 4, !tbaa !169 ; 6 uses
  %i.av = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.au ; 4 uses
  %i.aw = fmul reassoc nsz arcp contract afn float %i.au, f0x40555556
  %i.ax = fadd reassoc nsz arcp contract afn float %i.aw, f0x3F2AAAAB ; 3 uses
  %i.ay = fcmp reassoc nsz arcp contract afn ogt float %i.ax, 4.000000e+00
  br i1 %i.ay, label %bb.e, label %bb.c

bb.c:                                             ; preds = %dt_get_debug_wtime.exit
  %i.az = fcmp reassoc nsz arcp contract afn olt float %i.ax, 1.000000e+00
  br i1 %i.az, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ba = fptosi float %i.ax to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %dt_get_debug_wtime.exit
  %i.bb = phi i32 [ 4, %dt_get_debug_wtime.exit ], [ %i.ba, %bb.d ], [ 1, %bb.c ] ; 24 uses
  %i.bc = add i32 %i.an, -1
  %i.bd = add i32 %i.bc, %i.bb
  %i.be = sdiv i32 %i.bd, %i.bb                   ; 4 uses
  %i.bf = add i32 %i.ap, -1
  %i.bg = add i32 %i.bf, %i.bb
  %i.bh = sdiv i32 %i.bg, %i.bb                   ; 4 uses
  %i.bi = sext i32 %i.an to i64                   ; 2 uses
  %i.bj = shl nsw i64 %i.bi, 2
  %i.bk = sext i32 %i.ap to i64
  %i.bl = mul i64 %i.bj, %i.bk
  tail call void @llvm.memset.p0.i64(ptr align 4 %4, i8 0, i64 %i.bl, i1 false)
  %i.bm = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !134
  %i.bn = and i32 %i.bm, 4112
  %or.cond413.not = icmp eq i32 %i.bn, 4112
  br i1 %or.cond413.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  %i.bp = call i32 @gettimeofday(ptr noundef nonnull %12, ptr noundef null) #13 ; 0 uses
  %i.bq = load i64, ptr %12, align 8, !tbaa !135
  %i.br = add nsw i64 %i.bq, -1290608000
  %i.bs = sitofp reassoc nsz arcp contract afn i64 %i.br to double
  %i.bt = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !137
  %i.bv = sitofp reassoc nsz arcp contract afn i64 %i.bu to double
  %i.bw = fmul reassoc nnan nsz arcp contract afn double %i.bv, f0x3EB0C6F7A0B5ED8D
  %i.bx = fadd reassoc nsz arcp contract afn double %i.bw, %i.bs ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  %i.by = fsub reassoc nsz arcp contract afn double %i.bx, %i.k
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.13, ptr noundef nonnull %i.bo, double noundef %i.by) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi nsz double [ %i.k, %bb.e ], [ %i.bx, %bb.f ] ; 2 uses
  %i.bz = fmul reassoc nsz arcp contract afn float %i.ak, f0x40C90FDB ; 2 uses
  %i.ca = fcmp reassoc nsz arcp contract afn ogt float %i.bz, 3.600000e+02
  %i.cb = select reassoc nsz arcp contract afn i1 %i.ca, float 3.600000e+02, float %i.bz
  %i.cc = fptosi float %i.cb to i32               ; 3 uses
  %i.cd = srem i32 %i.cc, 8                       ; 2 uses
  %i.ce = icmp eq i32 %i.cd, 0
  %i.cf = add nsw i32 %i.cc, 8
  %i.cg = sub i32 %i.cf, %i.cd
  %i.ch = select i1 %i.ce, i32 %i.cc, i32 %i.cg   ; 6 uses
  %i.ci = sext i32 %i.ch to i64                   ; 4 uses
  %i.cj = shl nsw i64 %i.ci, 3
  %i.ck = tail call ptr @dt_alloc_aligned(i64 noundef %i.cj) #13 ; 10 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ck, i64 64) ]
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %bb.ag, label %.preheader444

.preheader444:                                    ; preds = %bb.g
  %i.cm = lshr i64 %i.ci, 3                       ; 4 uses
  %.not = icmp eq i64 %i.cm, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader444
  %i.cn = uitofp reassoc nsz arcp contract afn i64 %i.ci to float ; 2 uses
  %min.iters.check = icmp ult i32 %i.ch, 64
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.cm, 2305843009213693944     ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.cn, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert531 = insertelement <8 x float> poison, float %i.aj, i64 0
  %broadcast.splat532 = shufflevector <8 x float> %broadcast.splatinsert531, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert533 = insertelement <8 x float> poison, float %i.v, i64 0
  %broadcast.splat534 = shufflevector <8 x float> %broadcast.splatinsert533, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert535 = insertelement <8 x float> poison, float %i.z, i64 0
  %broadcast.splat536 = shufflevector <8 x float> %broadcast.splatinsert535, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.co = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.ind537 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next553, %vector.body ] ; 2 uses
  %i.cp = uitofp nneg <8 x i32> %vec.ind537 to <8 x float>
  %i.cq = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.cp, splat (float f0x40C90FDB)
  %i.cr = fmul reassoc nsz arcp contract afn <8 x float> %i.cq, %i.co
  %i.cs = tail call reassoc nsz arcp contract afn { <8 x float>, <8 x float> } @llvm.sincos.v8f32(<8 x float> %i.cr) ; 2 uses
  %i.ct = extractvalue { <8 x float>, <8 x float> } %i.cs, 0
  %i.cu = extractvalue { <8 x float>, <8 x float> } %i.cs, 1
  %i.cv = fmul reassoc nsz arcp contract afn <8 x float> %i.cu, %broadcast.splat532 ; 4 uses
  %i.cw = fmul reassoc nsz arcp contract afn <8 x float> %i.ct, %broadcast.splat532 ; 4 uses
  %i.cx = fadd reassoc nsz arcp contract afn <8 x float> %i.cv, %broadcast.splat534 ; 2 uses
  %i.cy = shl nuw nsw <8 x i64> %vec.ind, splat (i64 6)
  %wide.gep = getelementptr inbounds nuw i8, ptr %i.ck, <8 x i64> %i.cy ; 16 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cx, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !22
  %i.cz = fadd reassoc nsz arcp contract afn <8 x float> %i.cw, %broadcast.splat536 ; 2 uses
  %wide.gep538 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cz, <8 x ptr> align 4 %wide.gep538, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep539 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cx, <8 x ptr> align 4 %wide.gep539, <8 x i1> splat (i1 true)), !tbaa !22
  %i.da = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat536, %i.cw ; 2 uses
  %wide.gep540 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 12
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.da, <8 x ptr> align 4 %wide.gep540, <8 x i1> splat (i1 true)), !tbaa !22
  %i.db = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat534, %i.cv ; 2 uses
  %wide.gep541 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 16
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.db, <8 x ptr> align 4 %wide.gep541, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep542 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 20
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cz, <8 x ptr> align 4 %wide.gep542, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep543 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 24
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.db, <8 x ptr> align 4 %wide.gep543, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep544 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 28
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.da, <8 x ptr> align 4 %wide.gep544, <8 x i1> splat (i1 true)), !tbaa !22
  %i.dc = fadd reassoc nsz arcp contract afn <8 x float> %i.cw, %broadcast.splat534 ; 2 uses
end_hunk_0
begin_hunk_1_@_circle_get_mask_roi:bb.a

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge467
  %indvars.iv499 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next500, %._crit_edge467 ] ; 2 uses
  %i.mq = mul nuw nsw i64 %indvars.iv499, %i.iy   ; 2 uses
  br i1 %min.iters.check600, label %scalar.ph599.preheader, label %vector.ph601

vector.ph601:                                     ; preds = %.preheader
  %broadcast.splatinsert603 = insertelement <8 x i64> poison, i64 %i.mq, i64 0
  %broadcast.splat604 = shufflevector <8 x i64> %broadcast.splatinsert603, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vector.body613

vector.body613:                                   ; preds = %vector.body613, %vector.ph601
  %index614 = phi i64 [ 0, %vector.ph601 ], [ %index.next618, %vector.body613 ]
  %vec.ind615 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph601 ], [ %vec.ind.next619, %vector.body613 ] ; 2 uses
  %i.mr = add nuw nsw <8 x i64> %broadcast.splat604, %vec.ind615
  %i.ms = shl nuw nsw <8 x i64> %i.mr, splat (i64 3)
  %wide.gep616 = getelementptr inbounds nuw i8, ptr %i.jc, <8 x i64> %i.ms ; 2 uses
  %i.mt = extractelement <8 x ptr> %wide.gep616, i64 0
  %wide.vec = load <16 x float>, ptr %i.mt, align 8, !tbaa !22 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec617 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.mu = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec, %broadcast.splat606 ; 2 uses
  %i.mv = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec617, %broadcast.splat608 ; 2 uses
  %i.mw = fmul reassoc nsz arcp contract afn <8 x float> %i.mu, %i.mu
  %i.mx = fmul reassoc nsz arcp contract afn <8 x float> %i.mv, %i.mv
  %i.my = fadd reassoc nsz arcp contract afn <8 x float> %i.mx, %i.mw
  %i.mz = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat610, %i.my
  %i.na = fmul reassoc nsz arcp contract afn <8 x float> %i.mz, %i.mo ; 3 uses
  %i.nb = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.na, splat (float 1.000000e+00)
  %i.nc = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.na, zeroinitializer
  %i.nd = select reassoc nsz arcp contract afn <8 x i1> %i.nc, <8 x float> zeroinitializer, <8 x float> %i.na
  %i.ne = select reassoc nsz arcp contract afn <8 x i1> %i.nb, <8 x float> splat (float 1.000000e+00), <8 x float> %i.nd ; 2 uses
  %i.nf = fmul reassoc nsz arcp contract afn <8 x float> %i.ne, %i.ne
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.nf, <8 x ptr> align 4 %wide.gep616, <8 x i1> splat (i1 true)), !tbaa !22
  %index.next618 = add nuw i64 %index614, 8       ; 2 uses
  %vec.ind.next619 = add nuw nsw <8 x i64> %vec.ind615, splat (i64 8)
  %i.ng = icmp eq i64 %index.next618, %n.vec602
  br i1 %i.ng, label %middle.block620, label %vector.body613, !llvm.loop !175

middle.block620:                                  ; preds = %vector.body613
  br i1 %cmp.n621, label %._crit_edge467, label %scalar.ph599.preheader

scalar.ph599.preheader:                           ; preds = %.preheader, %middle.block620
  %indvars.iv494.ph = phi i64 [ 0, %.preheader ], [ %n.vec602, %middle.block620 ]
  br label %scalar.ph599

._crit_edge470.split:                             ; preds = %._crit_edge467
  %i.nh = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !134
  %i.ni = and i32 %i.nh, 4112
  %or.cond421.not = icmp eq i32 %i.ni, 4112
  br i1 %or.cond421.not, label %bb.aa, label %bb.ab

._crit_edge467:                                   ; preds = %scalar.ph599, %middle.block620
  %indvars.iv.next500 = add nuw nsw i64 %indvars.iv499, 1 ; 2 uses
  %exitcond504.not = icmp eq i64 %indvars.iv.next500, %wide.trip.count503
  br i1 %exitcond504.not, label %._crit_edge470.split, label %.preheader

scalar.ph599:                                     ; preds = %scalar.ph599.preheader, %scalar.ph599
  %indvars.iv494 = phi i64 [ %indvars.iv.next495, %scalar.ph599 ], [ %indvars.iv494.ph, %scalar.ph599.preheader ] ; 2 uses
  %i.nj = add nuw nsw i64 %i.mq, %indvars.iv494
  %.idx434 = shl nuw nsw i64 %i.nj, 3
  %i.nk = getelementptr inbounds nuw i8, ptr %i.jc, i64 %.idx434 ; 3 uses
  %i.nl = load float, ptr %i.nk, align 8, !tbaa !22
  %i.nm = fsub reassoc nsz arcp contract afn float %i.nl, %i.v ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nk, i64 4
  %i.no = load float, ptr %i.nn, align 4, !tbaa !22
  %i.np = fsub reassoc nsz arcp contract afn float %i.no, %i.z ; 2 uses
  %.neg436 = fmul reassoc nsz arcp contract afn float %i.nm, %i.nm
  %.neg437 = fmul reassoc nsz arcp contract afn float %i.np, %i.np
  %reass.add = fadd reassoc nsz arcp contract afn float %.neg437, %.neg436
  %i.nq = fsub reassoc nsz arcp contract afn float %i.ak, %reass.add
  %i.nr = fmul reassoc nsz arcp contract afn float %i.nq, %i.mp ; 3 uses
  %i.ns = fcmp reassoc nsz arcp contract afn ogt float %i.nr, 1.000000e+00
  %i.nt = fcmp reassoc nsz arcp contract afn olt float %i.nr, 0.000000e+00
  %i.nu = select reassoc nsz arcp contract afn i1 %i.nt, float 0.000000e+00, float %i.nr
  %i.nv = select reassoc nsz arcp contract afn i1 %i.ns, float 1.000000e+00, float %i.nu ; 2 uses
  %i.nw = fmul reassoc nsz arcp contract afn float %i.nv, %i.nv
  store float %i.nw, ptr %i.nk, align 8, !tbaa !22
  %indvars.iv.next495 = add nuw nsw i64 %indvars.iv494, 1 ; 2 uses
  %exitcond498.not = icmp eq i64 %indvars.iv.next495, %wide.trip.count497
  br i1 %exitcond498.not, label %._crit_edge467, label %scalar.ph599, !llvm.loop !176

bb.aa:                                            ; preds = %._crit_edge470.split
  %i.nx = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.ny = call i32 @gettimeofday(ptr noundef nonnull %7, ptr noundef null) #13 ; 0 uses
  %i.nz = load i64, ptr %7, align 8, !tbaa !135
  %i.oa = add nsw i64 %i.nz, -1290608000
  %i.ob = sitofp reassoc nsz arcp contract afn i64 %i.oa to double
  %i.oc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.od = load i64, ptr %i.oc, align 8, !tbaa !137
  %i.oe = sitofp reassoc nsz arcp contract afn i64 %i.od to double
  %i.of = fmul reassoc nnan nsz arcp contract afn double %i.oe, f0x3EB0C6F7A0B5ED8D
  %i.og = fadd reassoc nsz arcp contract afn double %i.of, %i.ob ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %i.oh = fsub reassoc nsz arcp contract afn double %i.og, %.4
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.10, ptr noundef nonnull %i.nx, double noundef %i.oh) #13
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._crit_edge470.split
  %.5 = phi nsz double [ %.4, %._crit_edge470.split ], [ %i.og, %bb.aa ]
  %i.oi = mul i32 %i.gg, %i.bb
  %i.oj = tail call i32 @llvm.smin.i32(i32 %i.an, i32 %i.oi) ; 2 uses
  %i.ok = mul nsw i32 %i.ha, %i.bb
  %i.ol = tail call i32 @llvm.smin.i32(i32 %i.ap, i32 %i.ok) ; 2 uses
  %i.om = mul nsw i32 %i.gq, %i.bb                ; 2 uses
  %i.on = icmp slt i32 %i.om, %i.ol
  br i1 %i.on, label %.lr.ph477, label %._crit_edge478.split

.lr.ph477:                                        ; preds = %bb.ab
  %i.oo = mul nsw i32 %i.fw, %i.bb                ; 2 uses
  %i.op = icmp slt i32 %i.oo, %i.oj
  br i1 %i.op, label %.lr.ph473.preheader, label %._crit_edge478.split

.lr.ph473.preheader:                              ; preds = %.lr.ph477
  %i.oq = mul nsw i32 %i.bb, %i.bb
  %i.or = uitofp nneg i32 %i.oq to float
  %i.os = sext i32 %i.oo to i64
  %i.ot = sext i32 %i.om to i64
  %wide.trip.count513 = sext i32 %i.ol to i64
  %wide.trip.count508 = sext i32 %i.oj to i64
  %i.ou = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.or
  br label %.lr.ph473

._crit_edge478.split:                             ; preds = %._crit_edge474, %.lr.ph477, %bb.ab
  tail call void @free(ptr noundef nonnull %i.jc) #13
  %i.ov = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !134 ; 2 uses
  %i.ow = and i32 %i.ov, 4112
  %or.cond422.not = icmp eq i32 %i.ow, 4112
  br i1 %or.cond422.not, label %bb.ad, label %bb.ae

.lr.ph473:                                        ; preds = %.lr.ph473.preheader, %._crit_edge474
  %indvars.iv510 = phi i64 [ %i.ot, %.lr.ph473.preheader ], [ %indvars.iv.next511, %._crit_edge474 ] ; 3 uses
  %i.ox = trunc nsw i64 %indvars.iv510 to i32     ; 2 uses
  %i.oy = srem i32 %i.ox, %i.bb                   ; 2 uses
  %i.oz = sdiv i32 %i.ox, %i.bb
  %i.pa = sub nsw i32 %i.oz, %i.gq
  %i.pb = sext i32 %i.pa to i64
  %i.pc = mul nsw i64 %i.pb, %i.iy
  %i.pd = sub nsw i32 %i.bb, %i.oy
  %i.pe = sitofp reassoc nsz arcp contract afn i32 %i.pd to float
  %i.pf = sitofp reassoc nsz arcp contract afn i32 %i.oy to float
  %i.pg = mul nsw i64 %indvars.iv510, %i.bi
  %i.ph = getelementptr [4 x i8], ptr %4, i64 %i.pg
  br label %bb.ac

._crit_edge474:                                   ; preds = %bb.ac
  %indvars.iv.next511 = add nsw i64 %indvars.iv510, 1 ; 2 uses
  %exitcond514.not = icmp eq i64 %indvars.iv.next511, %wide.trip.count513
  br i1 %exitcond514.not, label %._crit_edge478.split, label %.lr.ph473

bb.ac:                                            ; preds = %.lr.ph473, %bb.ac
  %indvars.iv505 = phi i64 [ %i.os, %.lr.ph473 ], [ %indvars.iv.next506, %bb.ac ] ; 3 uses
  %i.pi = trunc nsw i64 %indvars.iv505 to i32     ; 2 uses
  %i.pj = srem i32 %i.pi, %i.bb                   ; 2 uses
  %i.pk = sdiv i32 %i.pi, %i.bb
  %i.pl = sub nsw i32 %i.pk, %i.fw
  %i.pm = sext i32 %i.pl to i64
  %i.pn = add nsw i64 %i.pc, %i.pm                ; 2 uses
  %.idx = shl nsw i64 %i.pn, 3
  %i.po = getelementptr inbounds nuw i8, ptr %i.jc, i64 %.idx ; 2 uses
  %i.pp = load float, ptr %i.po, align 8, !tbaa !22
  %i.pq = sub nsw i32 %i.bb, %i.pj
  %i.pr = sitofp reassoc nsz arcp contract afn i32 %i.pq to float ; 2 uses
  %i.ps = fmul reassoc nsz arcp contract afn float %i.pp, %i.pr
  %i.pt = getelementptr i8, ptr %i.po, i64 8
  %i.pu = load float, ptr %i.pt, align 8, !tbaa !22
  %i.pv = sitofp reassoc nsz arcp contract afn i32 %i.pj to float ; 2 uses
  %i.pw = fmul reassoc nsz arcp contract afn float %i.pu, %i.pv
  %i.px = fadd reassoc nsz arcp contract afn float %i.pw, %i.ps
  %i.py = fmul reassoc nsz arcp contract afn float %i.px, %i.pe
  %i.pz = add nsw i64 %i.pn, %i.iy
  %.idx407 = shl nsw i64 %i.pz, 3
  %i.qa = getelementptr inbounds nuw i8, ptr %i.jc, i64 %.idx407 ; 2 uses
  %i.qb = load float, ptr %i.qa, align 8, !tbaa !22
  %i.qc = fmul reassoc nsz arcp contract afn float %i.qb, %i.pr
  %i.qd = getelementptr i8, ptr %i.qa, i64 8
  %i.qe = load float, ptr %i.qd, align 8, !tbaa !22
  %i.qf = fmul reassoc nsz arcp contract afn float %i.qe, %i.pv
  %reass.add440 = fadd reassoc nsz arcp contract afn float %i.qf, %i.qc
  %reass.mul441 = fmul reassoc nsz arcp contract afn float %reass.add440, %i.pf
  %i.qg = fadd reassoc nsz arcp contract afn float %reass.mul441, %i.py
  %i.qh = fmul reassoc nsz arcp contract afn float %i.qg, %i.ou
  %i.qi = getelementptr [4 x i8], ptr %i.ph, i64 %indvars.iv505
  store float %i.qh, ptr %i.qi, align 4, !tbaa !22
  %indvars.iv.next506 = add nsw i64 %indvars.iv505, 1 ; 2 uses
  %exitcond509.not = icmp eq i64 %indvars.iv.next506, %wide.trip.count508
  br i1 %exitcond509.not, label %._crit_edge474, label %bb.ac

bb.ad:                                            ; preds = %._crit_edge478.split
  %i.qj = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.qk = call i32 @gettimeofday(ptr noundef nonnull %6, ptr noundef null) #13 ; 0 uses
  %i.ql = load i64, ptr %6, align 8, !tbaa !135
  %i.qm = add nsw i64 %i.ql, -1290608000
  %i.qn = sitofp reassoc nsz arcp contract afn i64 %i.qm to double
  %i.qo = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.qp = load i64, ptr %i.qo, align 8, !tbaa !137
  %i.qq = sitofp reassoc nsz arcp contract afn i64 %i.qp to double
  %i.qr = fmul reassoc nnan nsz arcp contract afn double %i.qq, f0x3EB0C6F7A0B5ED8D
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %14 = fsub reassoc nsz arcp contract afn double %i.qn, %.5
  %15 = fadd reassoc nsz arcp contract afn double %14, %i.qr
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.12, ptr noundef nonnull %i.qj, double noundef %15) #13
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !134
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge478.split, %bb.ad
  %i.qs = phi i32 [ %i.ov, %._crit_edge478.split ], [ %.pre, %bb.ad ]
  %i.qt = and i32 %i.qs, 4112
  %or.cond423.not = icmp eq i32 %i.qt, 4112
  br i1 %or.cond423.not, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.qu = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.qv = call i32 @gettimeofday(ptr noundef nonnull %5, ptr noundef null) #13 ; 0 uses
  %i.qw = load i64, ptr %5, align 8, !tbaa !135
  %i.qx = add nsw i64 %i.qw, -1290608000
  %i.qy = sitofp reassoc nsz arcp contract afn i64 %i.qx to double
  %i.qz = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ra = load i64, ptr %i.qz, align 8, !tbaa !137
  %i.rb = sitofp reassoc nsz arcp contract afn i64 %i.ra to double
  %i.rc = fmul reassoc nnan nsz arcp contract afn double %i.rb, f0x3EB0C6F7A0B5ED8D
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %16 = fsub reassoc nsz arcp contract afn double %i.qy, %i.k
  %17 = fadd reassoc nsz arcp contract afn double %16, %i.rc
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.17, ptr noundef nonnull %i.qu, double noundef %17) #13
  br label %bb.ag

bb.ag:                                            ; preds = %bb.t, %bb.ae, %bb.af, %bb.u, %bb.x, %bb.g, %bb.h
  %.2 = phi i32 [ 0, %bb.h ], [ 0, %bb.g ], [ 1, %bb.t ], [ 0, %bb.x ], [ 0, %bb.u ], [ 1, %bb.af ], [ 1, %bb.ae ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_circle_get_area(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6) #0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !11
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !143  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.i = load float, ptr %i.h, align 4, !tbaa !23
  %i.j = fadd reassoc nsz arcp contract afn float %i.i, %i.g
  %i.k = load <2 x i32>, ptr %i.e, align 16, !tbaa !24
  %i.l = sitofp <2 x i32> %i.k to <2 x float>     ; 3 uses
  %i.m = load <2 x float>, ptr %i.b, align 4, !tbaa !22
  %i.n = extractelement <2 x float> %i.l, i64 0   ; 2 uses
  %i.o = extractelement <2 x float> %i.l, i64 1   ; 2 uses
  %i.p = fcmp reassoc nsz arcp contract afn olt float %i.n, %i.o
  %i.q = select reassoc nsz arcp contract afn i1 %i.p, float %i.n, float %i.o
  %i.r = fmul reassoc nsz arcp contract afn float %i.q, %i.j ; 3 uses
  %i.s = fmul reassoc nsz arcp contract afn float %i.r, f0x40C90FDB
  %i.t = fptoui float %i.s to i64
  %i.u = tail call i64 @llvm.umax.i64(i64 %i.t, i64 10) ; 5 uses
  %i.v = add i64 %i.u, 1                          ; 5 uses
  %i.w = shl i64 %i.v, 3
  %i.x = tail call ptr @dt_alloc_aligned(i64 noundef %i.w) #13 ; 12 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.x, i64 64) ]
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %_points_to_transform.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = trunc i64 %i.v to i32
  %i.z = fmul reassoc nsz arcp contract afn <2 x float> %i.m, %i.l ; 4 uses
  store <2 x float> %i.z, ptr %i.x, align 64, !tbaa !22
  %i.aa = icmp ugt i64 %i.v, 1
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.b
  %i.ab = uitofp reassoc nsz arcp contract afn i64 %i.u to float ; 2 uses
  %n.vec = and i64 %i.u, -8                       ; 3 uses
  %i.ac = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.ab, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert45 = insertelement <8 x float> poison, float %i.r, i64 0
  %broadcast.splat46 = shufflevector <8 x float> %broadcast.splatinsert45, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat48 = shufflevector <2 x float> %i.z, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat50 = shufflevector <2 x float> %i.z, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ad = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph.i
  %index = phi i64 [ 0, %.lr.ph.i ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>, %.lr.ph.i ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.ae = add <8 x i32> %vec.ind, splat (i32 -1)
  %i.af = sitofp reassoc nsz arcp contract afn <8 x i32> %i.ae to <8 x float>
  %i.ag = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.af, splat (float f0x40C90FDB)
  %i.ah = fmul reassoc nsz arcp contract afn <8 x float> %i.ag, %i.ad
  %i.ai = tail call reassoc nsz arcp contract afn { <8 x float>, <8 x float> } @llvm.sincos.v8f32(<8 x float> %i.ah) ; 2 uses
  %i.aj = extractvalue { <8 x float>, <8 x float> } %i.ai, 0
  %i.ak = extractvalue { <8 x float>, <8 x float> } %i.ai, 1
  %i.al = fmul reassoc nsz arcp contract afn <8 x float> %i.ak, %broadcast.splat46
  %i.am = fadd reassoc nsz arcp contract afn <8 x float> %i.al, %broadcast.splat48
  %i.an = shl i64 %index, 3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = fmul reassoc nsz arcp contract afn <8 x float> %i.aj, %broadcast.splat46
  %i.ar = fadd reassoc nsz arcp contract afn <8 x float> %i.aq, %broadcast.splat50
  %interleaved.vec = shufflevector <8 x float> %i.am, <8 x float> %i.ar, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.ap, align 8, !tbaa !22
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !177

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %middle.block
  %i.at = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ab
  %i.au = insertelement <2 x float> poison, float %i.r, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %i.ac, %scalar.ph.preheader ] ; 4 uses
  %i.aw = trunc i64 %indvars.iv.i to i32
  %i.ax = add i32 %i.aw, -1
  %i.ay = sitofp reassoc nsz arcp contract afn i32 %i.ax to float
  %i.az = fmul reassoc nnan nsz arcp contract afn float %i.ay, f0x40C90FDB
  %i.ba = fmul reassoc nsz arcp contract afn float %i.az, %i.at
  %sincos.i = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.ba) ; 2 uses
  %sin.i = extractvalue { float, float } %sincos.i, 0
  %cos.i = extractvalue { float, float } %sincos.i, 1
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 3
  %i.bb = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx.i
  %i.bc = insertelement <2 x float> poison, float %cos.i, i64 0
  %i.bd = insertelement <2 x float> %i.bc, float %sin.i, i64 1
  %i.be = fmul reassoc nsz arcp contract afn <2 x float> %i.bd, %i.av
  %i.bf = fadd reassoc nsz arcp contract afn <2 x float> %i.be, %i.z
  store <2 x float> %i.bf, ptr %i.bb, align 8, !tbaa !22
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %i.u
  br i1 %exitcond.not.i, label %.loopexit, label %scalar.ph, !llvm.loop !178

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %bb.b
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !142
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.bj = load i32, ptr %i.bi, align 16, !tbaa !116
  %i.bk = sitofp reassoc nsz arcp contract afn i32 %i.bj to double
  %sext = shl i64 %i.v, 32
  %i.bl = ashr exact i64 %sext, 32
  %i.bm = tail call i32 @dt_dev_distort_transform_plus(ptr noundef %i.bh, ptr noundef nonnull %i.d, double noundef %i.bk, i32 noundef 3, ptr noundef nonnull %i.x, i64 noundef %i.bl) #13
  %.not = icmp eq i32 %i.bm, 0
  br i1 %.not, label %_points_to_transform.exit.sink.split, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.bn = icmp sgt i32 %i.y, 1
  br i1 %i.bn, label %.lr.ph.preheader.i, label %_bounding_box.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %wide.trip.count.i = and i64 %i.v, 2147483647   ; 2 uses
  %i.bo = add nsw i64 %wide.trip.count.i, -1      ; 3 uses
  %min.iters.check = icmp ult i64 %i.bo, 32
  br i1 %min.iters.check, label %.lr.ph.i23.preheader, label %vector.ph52

vector.ph52:                                      ; preds = %.lr.ph.preheader.i
  %n.vec53 = and i64 %i.bo, -32                   ; 3 uses
  br label %vector.body54

vector.body54:                                    ; preds = %vector.body54, %vector.ph52
  %index55 = phi i64 [ 0, %vector.ph52 ], [ %index.next81, %vector.body54 ] ; 6 uses
  %vec.phi = phi <8 x float> [ splat (float f0x00800000), %vector.ph52 ], [ %i.cn, %vector.body54 ] ; 2 uses
  %vec.phi56 = phi <8 x float> [ splat (float f0x00800000), %vector.ph52 ], [ %i.co, %vector.body54 ] ; 2 uses
  %vec.phi57 = phi <8 x float> [ splat (float f0x00800000), %vector.ph52 ], [ %i.cp, %vector.body54 ] ; 2 uses
  %vec.phi58 = phi <8 x float> [ splat (float f0x00800000), %vector.ph52 ], [ %i.cq, %vector.body54 ] ; 2 uses
  %vec.phi59 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph52 ], [ %i.cj, %vector.body54 ] ; 2 uses
  %vec.phi60 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph52 ], [ %i.ck, %vector.body54 ] ; 2 uses
  %vec.phi61 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph52 ], [ %i.cl, %vector.body54 ] ; 2 uses
  %vec.phi62 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph52 ], [ %i.cm, %vector.body54 ] ; 2 uses
  %vec.phi63 = phi <8 x float> [ splat (float f0x00800000), %vector.ph52 ], [ %i.cf, %vector.body54 ] ; 2 uses
  %vec.phi64 = phi <8 x float> [ splat (float f0x00800000), %vector.ph52 ], [ %i.cg, %vector.body54 ] ; 2 uses
  %vec.phi65 = phi <8 x float> [ splat (float f0x00800000), %vector.ph52 ], [ %i.ch, %vector.body54 ] ; 2 uses
  %vec.phi66 = phi <8 x float> [ splat (float f0x00800000), %vector.ph52 ], [ %i.ci, %vector.body54 ] ; 2 uses
  %vec.phi67 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph52 ], [ %i.cb, %vector.body54 ] ; 2 uses
  %vec.phi68 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph52 ], [ %i.cc, %vector.body54 ] ; 2 uses
  %vec.phi69 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph52 ], [ %i.cd, %vector.body54 ] ; 2 uses
  %vec.phi70 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph52 ], [ %i.ce, %vector.body54 ] ; 2 uses
  %i.bp = shl i64 %index55, 3
  %i.bq = shl i64 %index55, 3
  %i.br = shl i64 %index55, 3
  %i.bs = shl i64 %index55, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bp
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bq
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 72
  %i.bx = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.br
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 136
  %i.bz = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bs
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 200
  %wide.vec = load <16 x float>, ptr %i.bu, align 8, !tbaa !22 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %strided.vec71 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 3 uses
  %wide.vec72 = load <16 x float>, ptr %i.bw, align 8, !tbaa !22 ; 2 uses
  %strided.vec73 = shufflevector <16 x float> %wide.vec72, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %strided.vec74 = shufflevector <16 x float> %wide.vec72, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 3 uses
  %wide.vec75 = load <16 x float>, ptr %i.by, align 8, !tbaa !22 ; 2 uses
  %strided.vec76 = shufflevector <16 x float> %wide.vec75, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %strided.vec77 = shufflevector <16 x float> %wide.vec75, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 3 uses
  %wide.vec78 = load <16 x float>, ptr %i.ca, align 8, !tbaa !22 ; 2 uses
  %strided.vec79 = shufflevector <16 x float> %wide.vec78, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %strided.vec80 = shufflevector <16 x float> %wide.vec78, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 3 uses
  %i.cb = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %strided.vec, <8 x float> %vec.phi67) ; 2 uses
  %i.cc = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %strided.vec73, <8 x float> %vec.phi68) ; 2 uses
  %i.cd = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %strided.vec76, <8 x float> %vec.phi69) ; 2 uses
  %i.ce = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %strided.vec79, <8 x float> %vec.phi70) ; 2 uses
  %i.cf = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec, <8 x float> %vec.phi63) ; 2 uses
  %i.cg = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec73, <8 x float> %vec.phi64) ; 2 uses
  %i.ch = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec76, <8 x float> %vec.phi65) ; 2 uses
  %i.ci = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec79, <8 x float> %vec.phi66) ; 2 uses
  %i.cj = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %strided.vec71, <8 x float> %vec.phi59) ; 2 uses
  %i.ck = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %strided.vec74, <8 x float> %vec.phi60) ; 2 uses
  %i.cl = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %strided.vec77, <8 x float> %vec.phi61) ; 2 uses
  %i.cm = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %strided.vec80, <8 x float> %vec.phi62) ; 2 uses
  %i.cn = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec71, <8 x float> %vec.phi) ; 2 uses
  %i.co = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec74, <8 x float> %vec.phi56) ; 2 uses
  %i.cp = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec77, <8 x float> %vec.phi57) ; 2 uses
  %i.cq = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %strided.vec80, <8 x float> %vec.phi58) ; 2 uses
  %index.next81 = add nuw i64 %index55, 32        ; 2 uses
  %i.cr = fcmp uno <8 x float> %strided.vec71, %strided.vec
end_hunk_1
