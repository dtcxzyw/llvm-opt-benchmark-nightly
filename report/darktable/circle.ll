inline.NumInlined: 75
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_circle_get_mask:bb.a

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
  %i.ho = fsub reassoc nsz arcp contract afn double %i.hj, %.2114
  %i.hp = fadd reassoc nsz arcp contract afn double %i.ho, %i.hn
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.12, ptr noundef nonnull %i.hf, double noundef %i.hp) #13
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
  %14 = getelementptr inbounds nuw i8, ptr %i.o, i64 144
  %15 = load i32, ptr %14, align 16, !tbaa !149   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 148
  %16 = load i32, ptr %i.p, align 4, !tbaa !157   ; 2 uses
  %17 = load float, ptr %i.m, align 4, !tbaa !22
  %18 = sitofp reassoc nsz arcp contract afn i32 %15 to float
  %19 = fmul reassoc nsz arcp contract afn float %17, %18 ; 4 uses
  %20 = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %21 = load float, ptr %20, align 4, !tbaa !22
  %22 = sitofp reassoc nsz arcp contract afn i32 %16 to float
  %23 = fmul reassoc nsz arcp contract afn float %21, %22 ; 4 uses
  %i.q = tail call i32 @llvm.smin.i32(i32 %15, i32 %16)
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.s = load float, ptr %i.r, align 4, !tbaa !18 ; 2 uses
  %i.t = sitofp reassoc nsz arcp contract afn i32 %i.q to float ; 2 uses
  %i.u = fmul reassoc nsz arcp contract afn float %i.s, %i.t ; 2 uses
  %i.v = fmul reassoc nsz arcp contract afn float %i.u, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.x = load float, ptr %i.w, align 4, !tbaa !23
  %i.y = fadd reassoc nsz arcp contract afn float %i.x, %i.s
  %i.z = fmul reassoc nsz arcp contract afn float %i.y, %i.t ; 4 uses
  %i.aa = fmul reassoc nsz arcp contract afn float %i.z, %i.z ; 4 uses
  %i.ab = fsub reassoc nsz arcp contract afn float %i.aa, %i.v ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !165 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !166 ; 3 uses
  %i.ag = load i32, ptr %3, align 4, !tbaa !167   ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !168 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !169 ; 6 uses
  %i.al = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ak ; 4 uses
  %i.am = fmul reassoc nsz arcp contract afn float %i.ak, f0x40555556
  %i.an = fadd reassoc nsz arcp contract afn float %i.am, f0x3F2AAAAB ; 3 uses
  %i.ao = fcmp reassoc nsz arcp contract afn ogt float %i.an, 4.000000e+00
  br i1 %i.ao, label %bb.e, label %bb.c

bb.c:                                             ; preds = %dt_get_debug_wtime.exit
  %i.ap = fcmp reassoc nsz arcp contract afn olt float %i.an, 1.000000e+00
  br i1 %i.ap, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aq = fptosi float %i.an to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %dt_get_debug_wtime.exit
  %i.ar = phi i32 [ 4, %dt_get_debug_wtime.exit ], [ %i.aq, %bb.d ], [ 1, %bb.c ] ; 24 uses
  %i.as = add i32 %i.ad, -1
  %i.at = add i32 %i.as, %i.ar
  %i.au = sdiv i32 %i.at, %i.ar                   ; 4 uses
  %i.av = add i32 %i.af, -1
  %i.aw = add i32 %i.av, %i.ar
  %i.ax = sdiv i32 %i.aw, %i.ar                   ; 4 uses
  %i.ay = sext i32 %i.ad to i64                   ; 2 uses
  %i.az = shl nsw i64 %i.ay, 2
  %i.ba = sext i32 %i.af to i64
  %i.bb = mul i64 %i.az, %i.ba
  tail call void @llvm.memset.p0.i64(ptr align 4 %4, i8 0, i64 %i.bb, i1 false)
  %i.bc = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !134
  %i.bd = and i32 %i.bc, 4112
  %or.cond413.not = icmp eq i32 %i.bd, 4112
  br i1 %or.cond413.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  %i.bf = call i32 @gettimeofday(ptr noundef nonnull %12, ptr noundef null) #13 ; 0 uses
  %i.bg = load i64, ptr %12, align 8, !tbaa !135
  %i.bh = add nsw i64 %i.bg, -1290608000
  %i.bi = sitofp reassoc nsz arcp contract afn i64 %i.bh to double
  %i.bj = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !137
  %i.bl = sitofp reassoc nsz arcp contract afn i64 %i.bk to double
  %i.bm = fmul reassoc nnan nsz arcp contract afn double %i.bl, f0x3EB0C6F7A0B5ED8D
  %i.bn = fadd reassoc nsz arcp contract afn double %i.bm, %i.bi ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  %i.bo = fsub reassoc nsz arcp contract afn double %i.bn, %i.k
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.13, ptr noundef nonnull %i.be, double noundef %i.bo) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi nsz double [ %i.k, %bb.e ], [ %i.bn, %bb.f ] ; 2 uses
  %i.bp = fmul reassoc nsz arcp contract afn float %i.aa, f0x40C90FDB ; 2 uses
  %i.bq = fcmp reassoc nsz arcp contract afn ogt float %i.bp, 3.600000e+02
  %i.br = select reassoc nsz arcp contract afn i1 %i.bq, float 3.600000e+02, float %i.bp
  %i.bs = fptosi float %i.br to i32               ; 3 uses
  %i.bt = srem i32 %i.bs, 8                       ; 2 uses
  %i.bu = icmp eq i32 %i.bt, 0
  %i.bv = add nsw i32 %i.bs, 8
  %i.bw = sub i32 %i.bv, %i.bt
  %i.bx = select i1 %i.bu, i32 %i.bs, i32 %i.bw   ; 6 uses
  %i.by = sext i32 %i.bx to i64                   ; 4 uses
  %i.bz = shl nsw i64 %i.by, 3
  %i.ca = tail call ptr @dt_alloc_aligned(i64 noundef %i.bz) #13 ; 10 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ca, i64 64) ]
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.ag, label %.preheader444

.preheader444:                                    ; preds = %bb.g
  %i.cc = lshr i64 %i.by, 3                       ; 4 uses
  %.not = icmp eq i64 %i.cc, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader444
  %i.cd = uitofp reassoc nsz arcp contract afn i64 %i.by to float ; 2 uses
  %min.iters.check = icmp ult i32 %i.bx, 64
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.cc, 2305843009213693944     ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.cd, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert531 = insertelement <8 x float> poison, float %i.z, i64 0
  %broadcast.splat532 = shufflevector <8 x float> %broadcast.splatinsert531, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert533 = insertelement <8 x float> poison, float %19, i64 0
  %broadcast.splat534 = shufflevector <8 x float> %broadcast.splatinsert533, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert535 = insertelement <8 x float> poison, float %23, i64 0
  %broadcast.splat536 = shufflevector <8 x float> %broadcast.splatinsert535, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.ce = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.ind537 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next553, %vector.body ] ; 2 uses
  %i.cf = uitofp nneg <8 x i32> %vec.ind537 to <8 x float>
  %i.cg = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.cf, splat (float f0x40C90FDB)
  %i.ch = fmul reassoc nsz arcp contract afn <8 x float> %i.cg, %i.ce
  %i.ci = tail call reassoc nsz arcp contract afn { <8 x float>, <8 x float> } @llvm.sincos.v8f32(<8 x float> %i.ch) ; 2 uses
  %i.cj = extractvalue { <8 x float>, <8 x float> } %i.ci, 0
  %i.ck = extractvalue { <8 x float>, <8 x float> } %i.ci, 1
  %i.cl = fmul reassoc nsz arcp contract afn <8 x float> %i.ck, %broadcast.splat532 ; 4 uses
  %i.cm = fmul reassoc nsz arcp contract afn <8 x float> %i.cj, %broadcast.splat532 ; 4 uses
  %i.cn = fadd reassoc nsz arcp contract afn <8 x float> %i.cl, %broadcast.splat534 ; 2 uses
  %i.co = shl nuw nsw <8 x i64> %vec.ind, splat (i64 6)
  %wide.gep = getelementptr inbounds nuw i8, ptr %i.ca, <8 x i64> %i.co ; 16 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cn, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !22
  %i.cp = fadd reassoc nsz arcp contract afn <8 x float> %i.cm, %broadcast.splat536 ; 2 uses
  %wide.gep538 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cp, <8 x ptr> align 4 %wide.gep538, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep539 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cn, <8 x ptr> align 4 %wide.gep539, <8 x i1> splat (i1 true)), !tbaa !22
  %i.cq = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat536, %i.cm ; 2 uses
  %wide.gep540 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 12
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cq, <8 x ptr> align 4 %wide.gep540, <8 x i1> splat (i1 true)), !tbaa !22
  %i.cr = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat534, %i.cl ; 2 uses
  %wide.gep541 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 16
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cr, <8 x ptr> align 4 %wide.gep541, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep542 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 20
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cp, <8 x ptr> align 4 %wide.gep542, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep543 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 24
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cr, <8 x ptr> align 4 %wide.gep543, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep544 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 28
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cq, <8 x ptr> align 4 %wide.gep544, <8 x i1> splat (i1 true)), !tbaa !22
  %i.cs = fadd reassoc nsz arcp contract afn <8 x float> %i.cm, %broadcast.splat534 ; 2 uses
  %wide.gep545 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 32
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cs, <8 x ptr> align 4 %wide.gep545, <8 x i1> splat (i1 true)), !tbaa !22
  %i.ct = fadd reassoc nsz arcp contract afn <8 x float> %i.cl, %broadcast.splat536 ; 2 uses
  %wide.gep546 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 36
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ct, <8 x ptr> align 4 %wide.gep546, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep547 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 40
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cs, <8 x ptr> align 4 %wide.gep547, <8 x i1> splat (i1 true)), !tbaa !22
  %i.cu = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat536, %i.cl ; 2 uses
  %wide.gep548 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 44
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cu, <8 x ptr> align 4 %wide.gep548, <8 x i1> splat (i1 true)), !tbaa !22
  %i.cv = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat534, %i.cm ; 2 uses
  %wide.gep549 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 48
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cv, <8 x ptr> align 4 %wide.gep549, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep550 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 52
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ct, <8 x ptr> align 4 %wide.gep550, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep551 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 56
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cv, <8 x ptr> align 4 %wide.gep551, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep552 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 60
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cu, <8 x ptr> align 4 %wide.gep552, <8 x i1> splat (i1 true)), !tbaa !22
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %vec.ind.next553 = add <8 x i32> %vec.ind537, splat (i32 8)
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !170

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cc, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %i.cx = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.cd
  %i.cy = insertelement <2 x float> poison, float %i.z, i64 0
  %24 = insertelement <4 x float> poison, float %19, i64 0
  %25 = insertelement <4 x float> %24, float %23, i64 1 ; 4 uses
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %.preheader444
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !142 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.dd = load i32, ptr %i.dc, align 16, !tbaa !116
  %i.de = sitofp reassoc nsz arcp contract afn i32 %i.dd to double ; 2 uses
  %i.df = tail call i32 @dt_dev_distort_transform_plus(ptr noundef %i.db, ptr noundef nonnull %i.o, double noundef %i.de, i32 noundef 3, ptr noundef nonnull %i.ca, i64 noundef %i.by) #13
  %.not388 = icmp eq i32 %i.df, 0
  br i1 %.not388, label %bb.h, label %bb.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.dg = trunc nuw nsw i64 %indvars.iv to i32
  %i.dh = uitofp nneg i32 %i.dg to float
  %i.di = fmul reassoc nnan nsz arcp contract afn float %i.dh, f0x40C90FDB
  %i.dj = fmul reassoc nsz arcp contract afn float %i.di, %i.cx
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.dj) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0
  %cos = extractvalue { float, float } %sincos, 1
  %i.dk = insertelement <4 x float> poison, float %sin, i64 0
  %i.dl = insertelement <4 x float> %i.dk, float %cos, i64 1
  %.idx529 = shl nuw nsw i64 %indvars.iv, 6
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.idx529 ; 2 uses
  %i.dn = fmul reassoc nsz arcp contract afn <4 x float> %i.dl, %i.cz ; 4 uses
  %i.do = shufflevector <4 x float> %25, <4 x float> %i.dn, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.dp = shufflevector <4 x float> %i.dn, <4 x float> %25, <4 x i32> <i32 1, i32 0, i32 5, i32 4> ; 2 uses
  %i.dq = fadd reassoc nsz arcp contract afn <4 x float> %i.do, %i.dp
  %i.dr = fsub reassoc nsz arcp contract afn <4 x float> %i.do, %i.dp
  %i.ds = shufflevector <4 x float> %i.dq, <4 x float> %i.dr, <8 x i32> <i32 3, i32 2, i32 3, i32 5, i32 4, i32 2, i32 4, i32 5>
  store <8 x float> %i.ds, ptr %i.dm, align 64, !tbaa !22
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.du = shufflevector <4 x float> %25, <4 x float> %i.dn, <4 x i32> <i32 0, i32 1, i32 5, i32 4> ; 2 uses
  %i.dv = shufflevector <4 x float> %i.dn, <4 x float> %25, <4 x i32> <i32 0, i32 1, i32 5, i32 4> ; 2 uses
  %i.dw = fadd reassoc nsz arcp contract afn <4 x float> %i.du, %i.dv
  %i.dx = fsub reassoc nsz arcp contract afn <4 x float> %i.du, %i.dv
  %i.dy = shufflevector <4 x float> %i.dw, <4 x float> %i.dx, <8 x i32> <i32 3, i32 2, i32 3, i32 5, i32 4, i32 2, i32 4, i32 5>
  store <8 x float> %i.dy, ptr %i.dt, align 32, !tbaa !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.cc
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !171

bb.h:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.ca) #13
  br label %bb.ag

bb.i:                                             ; preds = %._crit_edge
  %i.dz = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !134
  %i.ea = and i32 %i.dz, 4112
  %or.cond414.not = icmp eq i32 %i.ea, 4112
  br i1 %or.cond414.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %i.ec = call i32 @gettimeofday(ptr noundef nonnull %11, ptr noundef null) #13 ; 0 uses
  %i.ed = load i64, ptr %11, align 8, !tbaa !135
  %i.ee = add nsw i64 %i.ed, -1290608000
  %i.ef = sitofp reassoc nsz arcp contract afn i64 %i.ee to double
  %i.eg = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !137
  %i.ei = sitofp reassoc nsz arcp contract afn i64 %i.eh to double
  %i.ej = fmul reassoc nnan nsz arcp contract afn double %i.ei, f0x3EB0C6F7A0B5ED8D
  %i.ek = fadd reassoc nsz arcp contract afn double %i.ej, %i.ef ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  %i.el = fsub reassoc nsz arcp contract afn double %i.ek, %.0
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.14, ptr noundef nonnull %i.eb, double noundef %i.el) #13
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1 = phi nsz double [ %.0, %bb.i ], [ %i.ek, %bb.j ] ; 2 uses
  %.not479 = icmp eq i32 %i.bx, 0
  br i1 %.not479, label %._crit_edge453, label %.lr.ph452.preheader

.lr.ph452.preheader:                              ; preds = %bb.k
  %wide.trip.count = zext i32 %i.bx to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.em = icmp eq i32 %i.bx, 1
  br i1 %i.em, label %.lr.ph452.epil.preheader, label %.lr.ph452.preheader.new

.lr.ph452.preheader.new:                          ; preds = %.lr.ph452.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %.lr.ph452

._crit_edge453.loopexit.unr-lcssa:                ; preds = %bb.r
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge453, label %.lr.ph452.epil.preheader

.lr.ph452.epil.preheader:                         ; preds = %._crit_edge453.loopexit.unr-lcssa, %.lr.ph452.preheader
  %indvars.iv481.epil.init = phi i64 [ 0, %.lr.ph452.preheader ], [ %indvars.iv.next482.1, %._crit_edge453.loopexit.unr-lcssa ]
  %.epil.init = phi <4 x float> [ <float f0x00800000, float f0x00800000, float f0x7F7FFFFF, float f0x7F7FFFFF>, %.lr.ph452.preheader ], [ %i.hy, %._crit_edge453.loopexit.unr-lcssa ] ; 5 uses
  %lcmp.mod624 = trunc i32 %i.bx to i1
  tail call void @llvm.assume(i1 %lcmp.mod624)
  %.idx530.epil = shl nuw nsw i64 %indvars.iv481.epil.init, 3
  %i.en = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.idx530.epil ; 2 uses
  %i.eo = load float, ptr %i.en, align 8, !tbaa !22 ; 2 uses
  %i.ep = tail call i1 @llvm.is.fpclass.f32(float %i.eo, /* (nan inf zero sub) */ i32 759)
  br i1 %i.ep, label %._crit_edge453, label %bb.l

bb.l:                                             ; preds = %.lr.ph452.epil.preheader
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.er = load float, ptr %i.eq, align 4, !tbaa !22 ; 2 uses
  %i.es = tail call i1 @llvm.is.fpclass.f32(float %i.er, /* (nan inf zero sub) */ i32 759)
  br i1 %i.es, label %._crit_edge453, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.et = insertelement <4 x float> poison, float %i.er, i64 0
  %i.eu = insertelement <4 x float> %i.et, float %i.eo, i64 1
  %i.ev = shufflevector <4 x float> %i.eu, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.ew = fcmp reassoc nsz arcp contract afn ogt <4 x float> %.epil.init, %i.ev
  %i.ex = fcmp reassoc nsz arcp contract afn olt <4 x float> %.epil.init, %i.ev
  %i.ey = shufflevector <4 x i1> %i.ew, <4 x i1> %i.ex, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ez = select <4 x i1> %i.ey, <4 x float> %.epil.init, <4 x float> %i.ev
  br label %._crit_edge453

._crit_edge453:                                   ; preds = %._crit_edge453.loopexit.unr-lcssa, %bb.m, %bb.l, %.lr.ph452.epil.preheader, %bb.k
  %i.fa = phi <4 x float> [ <float f0x00800000, float f0x00800000, float f0x7F7FFFFF, float f0x7F7FFFFF>, %bb.k ], [ %i.hy, %._crit_edge453.loopexit.unr-lcssa ], [ %i.ez, %bb.m ], [ %.epil.init, %bb.l ], [ %.epil.init, %.lr.ph452.epil.preheader ] ; 4 uses
  %i.fb = extractelement <4 x float> %i.fa, i64 3
  %i.fc = fmul reassoc nsz arcp contract afn float %i.fb, %i.ak
  %i.fd = sitofp reassoc nsz arcp contract afn i32 %i.ag to float ; 2 uses
  %i.fe = fsub reassoc nsz arcp contract afn float %i.fc, %i.fd
  %i.ff = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.fe)
  %i.fg = fptosi float %i.ff to i32
  %i.fh = sdiv i32 %i.fg, %i.ar                   ; 2 uses
  %i.fi = add nsw i32 %i.fh, -1                   ; 2 uses
  %i.fj = icmp sgt i32 %i.fi, %i.au
  %.inv = icmp sgt i32 %i.fh, 0
  %spec.select = select i1 %.inv, i32 %i.fi, i32 0
  %i.fk = select i1 %i.fj, i32 %i.au, i32 %spec.select ; 6 uses
  %i.fl = extractelement <4 x float> %i.fa, i64 1
  %i.fm = fmul reassoc nsz arcp contract afn float %i.fl, %i.ak
  %i.fn = fsub reassoc nsz arcp contract afn float %i.fm, %i.fd
  %i.fo = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.fn)
  %i.fp = fptosi float %i.fo to i32
  %i.fq = sdiv i32 %i.fp, %i.ar                   ; 2 uses
  %i.fr = add nsw i32 %i.fq, 2                    ; 2 uses
  %i.fs = icmp sgt i32 %i.fr, %i.au
  %i.ft = icmp slt i32 %i.fq, -2
  %spec.select415 = select i1 %i.ft, i32 0, i32 %i.fr
  %i.fu = select i1 %i.fs, i32 %i.au, i32 %spec.select415 ; 4 uses
  %i.fv = extractelement <4 x float> %i.fa, i64 2
  %i.fw = fmul reassoc nsz arcp contract afn float %i.fv, %i.ak
  %i.fx = sitofp reassoc nsz arcp contract afn i32 %i.ai to float ; 2 uses
  %i.fy = fsub reassoc nsz arcp contract afn float %i.fw, %i.fx
  %i.fz = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.fy)
  %i.ga = fptosi float %i.fz to i32
  %i.gb = sdiv i32 %i.ga, %i.ar                   ; 2 uses
  %i.gc = add nsw i32 %i.gb, -1                   ; 2 uses
  %i.gd = icmp sgt i32 %i.gc, %i.ax
  %.inv432 = icmp sgt i32 %i.gb, 0
  %spec.select416 = select i1 %.inv432, i32 %i.gc, i32 0
  %i.ge = select i1 %i.gd, i32 %i.ax, i32 %spec.select416 ; 5 uses
  %i.gf = extractelement <4 x float> %i.fa, i64 0
  %i.gg = fmul reassoc nsz arcp contract afn float %i.gf, %i.ak
  %i.gh = fsub reassoc nsz arcp contract afn float %i.gg, %i.fx
  %i.gi = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.gh)
  %i.gj = fptosi float %i.gi to i32
  %i.gk = sdiv i32 %i.gj, %i.ar                   ; 2 uses
  %i.gl = add nsw i32 %i.gk, 2                    ; 2 uses
  %i.gm = icmp sgt i32 %i.gl, %i.ax
  %i.gn = icmp slt i32 %i.gk, -2
  %spec.select417 = select i1 %i.gn, i32 0, i32 %i.gl
  %i.go = select i1 %i.gm, i32 %i.ax, i32 %spec.select417 ; 4 uses
  %i.gp = sub i32 %i.fu, %i.fk                    ; 6 uses
  %i.gq = add nuw nsw i32 %i.gp, 1
  %i.gr = sub i32 %i.go, %i.ge                    ; 3 uses
  %i.gs = add nuw nsw i32 %i.gr, 1
  tail call void @free(ptr noundef nonnull %i.ca) #13
  %i.gt = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !134
  %i.gu = and i32 %i.gt, 4112
  %or.cond418.not = icmp eq i32 %i.gu, 4112
  br i1 %or.cond418.not, label %bb.s, label %bb.t

.lr.ph452:                                        ; preds = %bb.r, %.lr.ph452.preheader.new
  %indvars.iv481 = phi i64 [ 0, %.lr.ph452.preheader.new ], [ %indvars.iv.next482.1, %bb.r ] ; 3 uses
  %i.gv = phi <4 x float> [ <float f0x00800000, float f0x00800000, float f0x7F7FFFFF, float f0x7F7FFFFF>, %.lr.ph452.preheader.new ], [ %i.hy, %bb.r ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph452.preheader.new ], [ %niter.next.1, %bb.r ]
  %.idx530 = shl nuw nsw i64 %indvars.iv481, 3
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.idx530 ; 2 uses
  %i.gx = load float, ptr %i.gw, align 16, !tbaa !22 ; 2 uses
  %i.gy = tail call i1 @llvm.is.fpclass.f32(float %i.gx, /* (nan inf zero sub) */ i32 759)
  br i1 %i.gy, label %.lr.ph452.1, label %bb.n

bb.n:                                             ; preds = %.lr.ph452
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !22 ; 2 uses
  %i.hb = tail call i1 @llvm.is.fpclass.f32(float %i.ha, /* (nan inf zero sub) */ i32 759)
  br i1 %i.hb, label %.lr.ph452.1, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.hc = insertelement <4 x float> poison, float %i.ha, i64 0
  %i.hd = insertelement <4 x float> %i.hc, float %i.gx, i64 1
  %i.he = shufflevector <4 x float> %i.hd, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.hf = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.gv, %i.he
  %i.hg = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.gv, %i.he
  %i.hh = shufflevector <4 x i1> %i.hf, <4 x i1> %i.hg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.hi = select <4 x i1> %i.hh, <4 x float> %i.gv, <4 x float> %i.he
  br label %.lr.ph452.1

.lr.ph452.1:                                      ; preds = %.lr.ph452, %bb.n, %bb.o
  %i.hj = phi <4 x float> [ %i.hi, %bb.o ], [ %i.gv, %bb.n ], [ %i.gv, %.lr.ph452 ] ; 5 uses
  %indvars.iv.next482 = shl i64 %indvars.iv481, 3
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ca, i64 %indvars.iv.next482 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hm = load float, ptr %i.hl, align 8, !tbaa !22 ; 2 uses
  %i.hn = tail call i1 @llvm.is.fpclass.f32(float %i.hm, /* (nan inf zero sub) */ i32 759)
  br i1 %i.hn, label %bb.r, label %bb.p

bb.p:                                             ; preds = %.lr.ph452.1
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hk, i64 12
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !22 ; 2 uses
  %i.hq = tail call i1 @llvm.is.fpclass.f32(float %i.hp, /* (nan inf zero sub) */ i32 759)
  br i1 %i.hq, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.hr = insertelement <4 x float> poison, float %i.hp, i64 0
  %i.hs = insertelement <4 x float> %i.hr, float %i.hm, i64 1
  %i.ht = shufflevector <4 x float> %i.hs, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.hu = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.hj, %i.ht
  %i.hv = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.hj, %i.ht
  %i.hw = shufflevector <4 x i1> %i.hu, <4 x i1> %i.hv, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.hx = select <4 x i1> %i.hw, <4 x float> %i.hj, <4 x float> %i.ht
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %.lr.ph452.1
  %i.hy = phi <4 x float> [ %i.hx, %bb.q ], [ %i.hj, %bb.p ], [ %i.hj, %.lr.ph452.1 ] ; 3 uses
  %indvars.iv.next482.1 = add nuw nsw i64 %indvars.iv481, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge453.loopexit.unr-lcssa, label %.lr.ph452

bb.s:                                             ; preds = %._crit_edge453
  %i.hz = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
end_hunk_0
begin_hunk_1_@_circle_get_mask_roi:bb.a
  br label %iter.check

iter.check:                                       ; preds = %.preheader442.preheader, %._crit_edge460
  %indvars.iv489 = phi i64 [ %i.iu, %.preheader442.preheader ], [ %indvars.iv.next490, %._crit_edge460 ] ; 3 uses
  %i.iz = sub nsw i64 %indvars.iv489, %i.iu
  %i.ja = mul nuw nsw i64 %i.iz, %i.im            ; 3 uses
  %i.jb = sub i64 %i.ja, %i.is                    ; 4 uses
  %i.jc = trunc i64 %indvars.iv489 to i32
  %i.jd = mul i32 %i.ar, %i.jc
  %i.je = add i32 %i.jd, %i.ai
  %i.jf = sitofp reassoc nsz arcp contract afn i32 %i.je to float
  %i.jg = fmul reassoc nsz arcp contract afn float %i.al, %i.jf ; 3 uses
  br i1 %min.iters.check555, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check556, label %vec.epilog.ph, label %vector.ph557

vector.ph557:                                     ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert559 = insertelement <8 x float> poison, float %i.jg, i64 0 ; 4 uses
  %invariant.op = add i64 8, %i.jb
  %invariant.op626 = add i64 16, %i.jb
  %invariant.op628 = add i64 24, %i.jb
  br label %vector.body569

vector.body569:                                   ; preds = %vector.body569, %vector.ph557
  %index570 = phi i64 [ 0, %vector.ph557 ], [ %index.next575, %vector.body569 ] ; 3 uses
  %vec.ind571 = phi <8 x i32> [ %induction, %vector.ph557 ], [ %vec.ind.next576, %vector.body569 ] ; 5 uses
  %step.add = add <8 x i32> %vec.ind571, splat (i32 8)
  %step.add.2 = add <8 x i32> %vec.ind571, splat (i32 16)
  %step.add.3 = add <8 x i32> %vec.ind571, splat (i32 24)
  %i.jh = add i64 %index570, %i.is                ; 3 uses
  %i.ji = add i64 %index570, %i.ja
  %.reass = add i64 %i.jh, %invariant.op
  %.reass627 = add i64 %i.jh, %invariant.op626
  %.reass629 = add i64 %i.jh, %invariant.op628
  %i.jj = mul <8 x i32> %broadcast.splat562, %vec.ind571
  %i.jk = mul <8 x i32> %broadcast.splat562, %step.add
  %i.jl = mul <8 x i32> %broadcast.splat562, %step.add.2
  %i.jm = mul <8 x i32> %broadcast.splat562, %step.add.3
  %i.jn = add <8 x i32> %i.jj, %broadcast.splat564
  %i.jo = add <8 x i32> %i.jk, %broadcast.splat564
  %i.jp = add <8 x i32> %i.jl, %broadcast.splat564
  %i.jq = add <8 x i32> %i.jm, %broadcast.splat564
  %i.jr = sitofp reassoc nsz arcp contract afn <8 x i32> %i.jn to <8 x float>
  %i.js = sitofp reassoc nsz arcp contract afn <8 x i32> %i.jo to <8 x float>
  %i.jt = sitofp reassoc nsz arcp contract afn <8 x i32> %i.jp to <8 x float>
  %i.ju = sitofp reassoc nsz arcp contract afn <8 x i32> %i.jq to <8 x float>
  %i.jv = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat566, %i.jr
  %i.jw = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat566, %i.js
  %i.jx = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat566, %i.jt
  %i.jy = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat566, %i.ju
  %i.jz = shl i64 %i.ji, 3
  %i.ka = shl i64 %.reass, 3
  %i.kb = shl i64 %.reass627, 3
  %i.kc = shl i64 %.reass629, 3
  %i.kd = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.jz
  %i.ke = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.ka
  %i.kf = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.kb
  %i.kg = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.kc
  %interleaved.vec = shufflevector <8 x float> %i.jv, <8 x float> %broadcast.splatinsert559, <16 x i32> <i32 0, i32 8, i32 1, i32 8, i32 2, i32 8, i32 3, i32 8, i32 4, i32 8, i32 5, i32 8, i32 6, i32 8, i32 7, i32 8>
  store <16 x float> %interleaved.vec, ptr %i.kd, align 8, !tbaa !22
  %interleaved.vec572 = shufflevector <8 x float> %i.jw, <8 x float> %broadcast.splatinsert559, <16 x i32> <i32 0, i32 8, i32 1, i32 8, i32 2, i32 8, i32 3, i32 8, i32 4, i32 8, i32 5, i32 8, i32 6, i32 8, i32 7, i32 8>
  store <16 x float> %interleaved.vec572, ptr %i.ke, align 8, !tbaa !22
  %interleaved.vec573 = shufflevector <8 x float> %i.jx, <8 x float> %broadcast.splatinsert559, <16 x i32> <i32 0, i32 8, i32 1, i32 8, i32 2, i32 8, i32 3, i32 8, i32 4, i32 8, i32 5, i32 8, i32 6, i32 8, i32 7, i32 8>
  store <16 x float> %interleaved.vec573, ptr %i.kf, align 8, !tbaa !22
  %interleaved.vec574 = shufflevector <8 x float> %i.jy, <8 x float> %broadcast.splatinsert559, <16 x i32> <i32 0, i32 8, i32 1, i32 8, i32 2, i32 8, i32 3, i32 8, i32 4, i32 8, i32 5, i32 8, i32 6, i32 8, i32 7, i32 8>
  store <16 x float> %interleaved.vec574, ptr %i.kg, align 8, !tbaa !22
  %index.next575 = add nuw i64 %index570, 32      ; 2 uses
  %vec.ind.next576 = add <8 x i32> %vec.ind571, splat (i32 32)
  %i.kh = icmp eq i64 %index.next575, %n.vec558
  br i1 %i.kh, label %middle.block577, label %vector.body569, !llvm.loop !172

middle.block577:                                  ; preds = %vector.body569
  br i1 %cmp.n578, label %._crit_edge460, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block577
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !139

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec558, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val579 = phi i64 [ %i.ix, %vec.epilog.iter.check ], [ %i.is, %vector.main.loop.iter.check ]
  %broadcast.splatinsert581 = insertelement <4 x float> poison, float %i.jg, i64 0
  %i.ki = trunc i64 %bc.resume.val579 to i32
  %broadcast.splatinsert589 = insertelement <4 x i32> poison, i32 %i.ki, i64 0
  %broadcast.splat590 = shufflevector <4 x i32> %broadcast.splatinsert589, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction591 = add <4 x i32> %broadcast.splat590, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index592 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next595, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind593 = phi <4 x i32> [ %induction591, %vec.epilog.ph ], [ %vec.ind.next596, %vec.epilog.vector.body ] ; 2 uses
  %i.kj = add i64 %index592, %i.ja
  %i.kk = mul <4 x i32> %broadcast.splat584, %vec.ind593
  %i.kl = add <4 x i32> %i.kk, %broadcast.splat586
  %i.km = sitofp reassoc nsz arcp contract afn <4 x i32> %i.kl to <4 x float>
  %i.kn = fmul reassoc nsz arcp contract afn <4 x float> %broadcast.splat588, %i.km
  %i.ko = shl i64 %i.kj, 3
  %i.kp = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.ko
  %interleaved.vec594 = shufflevector <4 x float> %i.kn, <4 x float> %broadcast.splatinsert581, <8 x i32> <i32 0, i32 4, i32 1, i32 4, i32 2, i32 4, i32 3, i32 4>
  store <8 x float> %interleaved.vec594, ptr %i.kp, align 8, !tbaa !22
  %index.next595 = add nuw i64 %index592, 4       ; 2 uses
  %vec.ind.next596 = add <4 x i32> %vec.ind593, splat (i32 4)
  %i.kq = icmp eq i64 %index.next595, %n.vec580
  br i1 %i.kq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !173

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n597, label %._crit_edge460, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv485.ph = phi i64 [ %i.is, %iter.check ], [ %i.ix, %vec.epilog.iter.check ], [ %i.iy, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge463.split:                             ; preds = %._crit_edge460, %.preheader442.lr.ph, %.preheader443
  %i.kr = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !134
  %i.ks = and i32 %i.kr, 4112
  %or.cond419.not = icmp eq i32 %i.ks, 4112
  br i1 %or.cond419.not, label %bb.v, label %bb.w

._crit_edge460:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block577
  %indvars.iv.next490 = add nsw i64 %indvars.iv489, 1 ; 2 uses
  %lftr.wideiv492 = trunc i64 %indvars.iv.next490 to i32
  %exitcond493.not = icmp eq i32 %i.iv, %lftr.wideiv492
  br i1 %exitcond493.not, label %._crit_edge463.split, label %iter.check

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv485 = phi i64 [ %indvars.iv.next486, %vec.epilog.scalar.ph ], [ %indvars.iv485.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.kt = add i64 %i.jb, %indvars.iv485
  %i.ku = trunc i64 %indvars.iv485 to i32
  %i.kv = mul i32 %i.ar, %i.ku
  %i.kw = add i32 %i.kv, %i.ag
  %i.kx = sitofp reassoc nsz arcp contract afn i32 %i.kw to float
  %i.ky = fmul reassoc nsz arcp contract afn float %i.al, %i.kx
  %.idx433 = shl i64 %i.kt, 3
  %i.kz = getelementptr inbounds nuw i8, ptr %i.iq, i64 %.idx433 ; 2 uses
  store float %i.ky, ptr %i.kz, align 8, !tbaa !22
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 4
  store float %i.jg, ptr %i.la, align 4, !tbaa !22
  %indvars.iv.next486 = add nsw i64 %indvars.iv485, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next486 to i32
  %exitcond488.not = icmp eq i32 %i.it, %lftr.wideiv
  br i1 %exitcond488.not, label %._crit_edge460, label %vec.epilog.scalar.ph, !llvm.loop !174

bb.v:                                             ; preds = %._crit_edge463.split
  %i.lb = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %i.lc = call i32 @gettimeofday(ptr noundef nonnull %9, ptr noundef null) #13 ; 0 uses
  %i.ld = load i64, ptr %9, align 8, !tbaa !135
  %i.le = add nsw i64 %i.ld, -1290608000
  %i.lf = sitofp reassoc nsz arcp contract afn i64 %i.le to double
  %i.lg = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !137
  %i.li = sitofp reassoc nsz arcp contract afn i64 %i.lh to double
  %i.lj = fmul reassoc nnan nsz arcp contract afn double %i.li, f0x3EB0C6F7A0B5ED8D
  %i.lk = fadd reassoc nsz arcp contract afn double %i.lj, %i.lf ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  %i.ll = fsub reassoc nsz arcp contract afn double %i.lk, %.2431
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.16, ptr noundef nonnull %i.lb, double noundef %i.ll) #13
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge463.split
  %.3 = phi nsz double [ %.2431, %._crit_edge463.split ], [ %i.lk, %bb.v ] ; 2 uses
  %i.lm = tail call i32 @dt_dev_distort_backtransform_plus(ptr noundef %i.db, ptr noundef nonnull %i.o, double noundef %i.de, i32 noundef 3, ptr noundef nonnull %i.iq, i64 noundef %i.io) #13
  %.not396 = icmp eq i32 %i.lm, 0
  br i1 %.not396, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void @free(ptr noundef nonnull %i.iq) #13
  br label %bb.ag

bb.y:                                             ; preds = %bb.w
  %i.ln = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !134
  %i.lo = and i32 %i.ln, 4112
  %or.cond420.not = icmp eq i32 %i.lo, 4112
  br i1 %or.cond420.not, label %bb.z, label %.preheader.preheader

bb.z:                                             ; preds = %bb.y
  %i.lp = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.lq = call i32 @gettimeofday(ptr noundef nonnull %8, ptr noundef null) #13 ; 0 uses
  %i.lr = load i64, ptr %8, align 8, !tbaa !135
  %i.ls = add nsw i64 %i.lr, -1290608000
  %i.lt = sitofp reassoc nsz arcp contract afn i64 %i.ls to double
  %i.lu = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !137
  %i.lw = sitofp reassoc nsz arcp contract afn i64 %i.lv to double
  %i.lx = fmul reassoc nnan nsz arcp contract afn double %i.lw, f0x3EB0C6F7A0B5ED8D
  %i.ly = fadd reassoc nsz arcp contract afn double %i.lx, %i.lt ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %i.lz = fsub reassoc nsz arcp contract afn double %i.ly, %.3
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.11, ptr noundef nonnull %i.lp, double noundef %i.lz) #13
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.z, %bb.y
  %.4 = phi nsz double [ %.3, %bb.y ], [ %i.ly, %bb.z ] ; 2 uses
  %i.ma = add nuw i32 %i.gp, 1
  %i.mb = add nuw i32 %i.gr, 1
  %wide.trip.count503 = zext i32 %i.mb to i64
  %wide.trip.count497 = zext i32 %i.ma to i64
  %min.iters.check600 = icmp ult i32 %i.gp, 7
  %n.vec602 = and i64 %i.im, 2147483640           ; 3 uses
  %broadcast.splatinsert605 = insertelement <8 x float> poison, float %19, i64 0
  %broadcast.splat606 = shufflevector <8 x float> %broadcast.splatinsert605, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert607 = insertelement <8 x float> poison, float %23, i64 0
  %broadcast.splat608 = shufflevector <8 x float> %broadcast.splatinsert607, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert609 = insertelement <8 x float> poison, float %i.aa, i64 0
  %broadcast.splat610 = shufflevector <8 x float> %broadcast.splatinsert609, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert611 = insertelement <8 x float> poison, float %i.ab, i64 0
  %broadcast.splat612 = shufflevector <8 x float> %broadcast.splatinsert611, <8 x float> poison, <8 x i32> zeroinitializer
  %i.mc = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat612
  %cmp.n621 = icmp eq i64 %n.vec602, %i.im
  %i.md = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ab
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge467
  %indvars.iv499 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next500, %._crit_edge467 ] ; 2 uses
  %i.me = mul nuw nsw i64 %indvars.iv499, %i.im   ; 2 uses
  br i1 %min.iters.check600, label %scalar.ph599.preheader, label %vector.ph601

vector.ph601:                                     ; preds = %.preheader
  %broadcast.splatinsert603 = insertelement <8 x i64> poison, i64 %i.me, i64 0
  %broadcast.splat604 = shufflevector <8 x i64> %broadcast.splatinsert603, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vector.body613

vector.body613:                                   ; preds = %vector.body613, %vector.ph601
  %index614 = phi i64 [ 0, %vector.ph601 ], [ %index.next618, %vector.body613 ]
  %vec.ind615 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph601 ], [ %vec.ind.next619, %vector.body613 ] ; 2 uses
  %i.mf = add nuw nsw <8 x i64> %broadcast.splat604, %vec.ind615
  %i.mg = shl nuw nsw <8 x i64> %i.mf, splat (i64 3)
  %wide.gep616 = getelementptr inbounds nuw i8, ptr %i.iq, <8 x i64> %i.mg ; 2 uses
  %i.mh = extractelement <8 x ptr> %wide.gep616, i64 0
  %wide.vec = load <16 x float>, ptr %i.mh, align 8, !tbaa !22 ; 2 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec617 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.mi = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec, %broadcast.splat606 ; 2 uses
  %i.mj = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec617, %broadcast.splat608 ; 2 uses
  %i.mk = fmul reassoc nsz arcp contract afn <8 x float> %i.mi, %i.mi
  %i.ml = fmul reassoc nsz arcp contract afn <8 x float> %i.mj, %i.mj
  %i.mm = fadd reassoc nsz arcp contract afn <8 x float> %i.ml, %i.mk
  %i.mn = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat610, %i.mm
  %i.mo = fmul reassoc nsz arcp contract afn <8 x float> %i.mn, %i.mc ; 3 uses
  %i.mp = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.mo, splat (float 1.000000e+00)
  %i.mq = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.mo, zeroinitializer
  %i.mr = select reassoc nsz arcp contract afn <8 x i1> %i.mq, <8 x float> zeroinitializer, <8 x float> %i.mo
  %i.ms = select reassoc nsz arcp contract afn <8 x i1> %i.mp, <8 x float> splat (float 1.000000e+00), <8 x float> %i.mr ; 2 uses
  %i.mt = fmul reassoc nsz arcp contract afn <8 x float> %i.ms, %i.ms
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.mt, <8 x ptr> align 4 %wide.gep616, <8 x i1> splat (i1 true)), !tbaa !22
  %index.next618 = add nuw i64 %index614, 8       ; 2 uses
  %vec.ind.next619 = add nuw nsw <8 x i64> %vec.ind615, splat (i64 8)
  %i.mu = icmp eq i64 %index.next618, %n.vec602
  br i1 %i.mu, label %middle.block620, label %vector.body613, !llvm.loop !175

middle.block620:                                  ; preds = %vector.body613
  br i1 %cmp.n621, label %._crit_edge467, label %scalar.ph599.preheader

scalar.ph599.preheader:                           ; preds = %.preheader, %middle.block620
  %indvars.iv494.ph = phi i64 [ 0, %.preheader ], [ %n.vec602, %middle.block620 ]
  br label %scalar.ph599

._crit_edge470.split:                             ; preds = %._crit_edge467
  %i.mv = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !134
  %i.mw = and i32 %i.mv, 4112
  %or.cond421.not = icmp eq i32 %i.mw, 4112
  br i1 %or.cond421.not, label %bb.aa, label %bb.ab

._crit_edge467:                                   ; preds = %scalar.ph599, %middle.block620
  %indvars.iv.next500 = add nuw nsw i64 %indvars.iv499, 1 ; 2 uses
  %exitcond504.not = icmp eq i64 %indvars.iv.next500, %wide.trip.count503
  br i1 %exitcond504.not, label %._crit_edge470.split, label %.preheader

scalar.ph599:                                     ; preds = %scalar.ph599.preheader, %scalar.ph599
  %indvars.iv494 = phi i64 [ %indvars.iv.next495, %scalar.ph599 ], [ %indvars.iv494.ph, %scalar.ph599.preheader ] ; 2 uses
  %i.mx = add nuw nsw i64 %i.me, %indvars.iv494
  %.idx434 = shl nuw nsw i64 %i.mx, 3
  %i.my = getelementptr inbounds nuw i8, ptr %i.iq, i64 %.idx434 ; 3 uses
  %i.mz = load float, ptr %i.my, align 8, !tbaa !22
  %i.na = fsub reassoc nsz arcp contract afn float %i.mz, %19 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.my, i64 4
  %i.nc = load float, ptr %i.nb, align 4, !tbaa !22
  %i.nd = fsub reassoc nsz arcp contract afn float %i.nc, %23 ; 2 uses
  %.neg436 = fmul reassoc nsz arcp contract afn float %i.na, %i.na
  %.neg437 = fmul reassoc nsz arcp contract afn float %i.nd, %i.nd
  %reass.add = fadd reassoc nsz arcp contract afn float %.neg437, %.neg436
  %i.ne = fsub reassoc nsz arcp contract afn float %i.aa, %reass.add
  %i.nf = fmul reassoc nsz arcp contract afn float %i.ne, %i.md ; 3 uses
  %i.ng = fcmp reassoc nsz arcp contract afn ogt float %i.nf, 1.000000e+00
  %i.nh = fcmp reassoc nsz arcp contract afn olt float %i.nf, 0.000000e+00
  %i.ni = select reassoc nsz arcp contract afn i1 %i.nh, float 0.000000e+00, float %i.nf
  %i.nj = select reassoc nsz arcp contract afn i1 %i.ng, float 1.000000e+00, float %i.ni ; 2 uses
  %i.nk = fmul reassoc nsz arcp contract afn float %i.nj, %i.nj
  store float %i.nk, ptr %i.my, align 8, !tbaa !22
  %indvars.iv.next495 = add nuw nsw i64 %indvars.iv494, 1 ; 2 uses
  %exitcond498.not = icmp eq i64 %indvars.iv.next495, %wide.trip.count497
  br i1 %exitcond498.not, label %._crit_edge467, label %scalar.ph599, !llvm.loop !176

bb.aa:                                            ; preds = %._crit_edge470.split
  %i.nl = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.nm = call i32 @gettimeofday(ptr noundef nonnull %7, ptr noundef null) #13 ; 0 uses
  %i.nn = load i64, ptr %7, align 8, !tbaa !135
  %i.no = add nsw i64 %i.nn, -1290608000
  %i.np = sitofp reassoc nsz arcp contract afn i64 %i.no to double
  %i.nq = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.nr = load i64, ptr %i.nq, align 8, !tbaa !137
  %i.ns = sitofp reassoc nsz arcp contract afn i64 %i.nr to double
  %i.nt = fmul reassoc nnan nsz arcp contract afn double %i.ns, f0x3EB0C6F7A0B5ED8D
  %i.nu = fadd reassoc nsz arcp contract afn double %i.nt, %i.np ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %i.nv = fsub reassoc nsz arcp contract afn double %i.nu, %.4
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.10, ptr noundef nonnull %i.nl, double noundef %i.nv) #13
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._crit_edge470.split
  %.5 = phi nsz double [ %.4, %._crit_edge470.split ], [ %i.nu, %bb.aa ]
  %i.nw = mul i32 %i.fu, %i.ar
  %i.nx = tail call i32 @llvm.smin.i32(i32 %i.ad, i32 %i.nw) ; 2 uses
  %i.ny = mul nsw i32 %i.go, %i.ar
  %i.nz = tail call i32 @llvm.smin.i32(i32 %i.af, i32 %i.ny) ; 2 uses
  %i.oa = mul nsw i32 %i.ge, %i.ar                ; 2 uses
  %i.ob = icmp slt i32 %i.oa, %i.nz
  br i1 %i.ob, label %.lr.ph477, label %._crit_edge478.split

.lr.ph477:                                        ; preds = %bb.ab
  %i.oc = mul nsw i32 %i.fk, %i.ar                ; 2 uses
  %i.od = icmp slt i32 %i.oc, %i.nx
  br i1 %i.od, label %.lr.ph473.preheader, label %._crit_edge478.split

.lr.ph473.preheader:                              ; preds = %.lr.ph477
  %i.oe = mul nsw i32 %i.ar, %i.ar
  %i.of = uitofp nneg i32 %i.oe to float
  %i.og = sext i32 %i.oc to i64
  %i.oh = sext i32 %i.oa to i64
  %wide.trip.count513 = sext i32 %i.nz to i64
  %wide.trip.count508 = sext i32 %i.nx to i64
  %i.oi = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.of
  br label %.lr.ph473

._crit_edge478.split:                             ; preds = %._crit_edge474, %.lr.ph477, %bb.ab
  tail call void @free(ptr noundef nonnull %i.iq) #13
  %i.oj = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !134 ; 2 uses
  %i.ok = and i32 %i.oj, 4112
  %or.cond422.not = icmp eq i32 %i.ok, 4112
  br i1 %or.cond422.not, label %bb.ad, label %bb.ae

.lr.ph473:                                        ; preds = %.lr.ph473.preheader, %._crit_edge474
  %indvars.iv510 = phi i64 [ %i.oh, %.lr.ph473.preheader ], [ %indvars.iv.next511, %._crit_edge474 ] ; 3 uses
  %i.ol = trunc nsw i64 %indvars.iv510 to i32     ; 2 uses
  %i.om = srem i32 %i.ol, %i.ar                   ; 2 uses
  %i.on = sdiv i32 %i.ol, %i.ar
  %i.oo = sub nsw i32 %i.on, %i.ge
  %i.op = sext i32 %i.oo to i64
  %i.oq = mul nsw i64 %i.op, %i.im
  %i.or = sub nsw i32 %i.ar, %i.om
  %i.os = sitofp reassoc nsz arcp contract afn i32 %i.or to float
  %i.ot = sitofp reassoc nsz arcp contract afn i32 %i.om to float
  %i.ou = mul nsw i64 %indvars.iv510, %i.ay
  %i.ov = getelementptr [4 x i8], ptr %4, i64 %i.ou
  br label %bb.ac

._crit_edge474:                                   ; preds = %bb.ac
  %indvars.iv.next511 = add nsw i64 %indvars.iv510, 1 ; 2 uses
  %exitcond514.not = icmp eq i64 %indvars.iv.next511, %wide.trip.count513
  br i1 %exitcond514.not, label %._crit_edge478.split, label %.lr.ph473

bb.ac:                                            ; preds = %.lr.ph473, %bb.ac
  %indvars.iv505 = phi i64 [ %i.og, %.lr.ph473 ], [ %indvars.iv.next506, %bb.ac ] ; 3 uses
  %i.ow = trunc nsw i64 %indvars.iv505 to i32     ; 2 uses
  %i.ox = srem i32 %i.ow, %i.ar                   ; 2 uses
  %i.oy = sdiv i32 %i.ow, %i.ar
  %i.oz = sub nsw i32 %i.oy, %i.fk
  %i.pa = sext i32 %i.oz to i64
  %i.pb = add nsw i64 %i.oq, %i.pa                ; 2 uses
  %.idx = shl nsw i64 %i.pb, 3
  %i.pc = getelementptr inbounds nuw i8, ptr %i.iq, i64 %.idx ; 2 uses
  %i.pd = load float, ptr %i.pc, align 8, !tbaa !22
  %i.pe = sub nsw i32 %i.ar, %i.ox
  %i.pf = sitofp reassoc nsz arcp contract afn i32 %i.pe to float ; 2 uses
  %i.pg = fmul reassoc nsz arcp contract afn float %i.pd, %i.pf
  %i.ph = getelementptr i8, ptr %i.pc, i64 8
  %i.pi = load float, ptr %i.ph, align 8, !tbaa !22
  %i.pj = sitofp reassoc nsz arcp contract afn i32 %i.ox to float ; 2 uses
  %i.pk = fmul reassoc nsz arcp contract afn float %i.pi, %i.pj
  %i.pl = fadd reassoc nsz arcp contract afn float %i.pk, %i.pg
  %i.pm = fmul reassoc nsz arcp contract afn float %i.pl, %i.os
  %i.pn = add nsw i64 %i.pb, %i.im
  %.idx407 = shl nsw i64 %i.pn, 3
  %i.po = getelementptr inbounds nuw i8, ptr %i.iq, i64 %.idx407 ; 2 uses
  %i.pp = load float, ptr %i.po, align 8, !tbaa !22
  %i.pq = fmul reassoc nsz arcp contract afn float %i.pp, %i.pf
  %i.pr = getelementptr i8, ptr %i.po, i64 8
  %i.ps = load float, ptr %i.pr, align 8, !tbaa !22
  %i.pt = fmul reassoc nsz arcp contract afn float %i.ps, %i.pj
  %reass.add440 = fadd reassoc nsz arcp contract afn float %i.pt, %i.pq
  %reass.mul441 = fmul reassoc nsz arcp contract afn float %reass.add440, %i.ot
  %i.pu = fadd reassoc nsz arcp contract afn float %reass.mul441, %i.pm
  %i.pv = fmul reassoc nsz arcp contract afn float %i.pu, %i.oi
  %i.pw = getelementptr [4 x i8], ptr %i.ov, i64 %indvars.iv505
  store float %i.pv, ptr %i.pw, align 4, !tbaa !22
  %indvars.iv.next506 = add nsw i64 %indvars.iv505, 1 ; 2 uses
  %exitcond509.not = icmp eq i64 %indvars.iv.next506, %wide.trip.count508
  br i1 %exitcond509.not, label %._crit_edge474, label %bb.ac

bb.ad:                                            ; preds = %._crit_edge478.split
  %i.px = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.py = call i32 @gettimeofday(ptr noundef nonnull %6, ptr noundef null) #13 ; 0 uses
  %i.pz = load i64, ptr %6, align 8, !tbaa !135
  %i.qa = add nsw i64 %i.pz, -1290608000
  %i.qb = sitofp reassoc nsz arcp contract afn i64 %i.qa to double
  %i.qc = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.qd = load i64, ptr %i.qc, align 8, !tbaa !137
  %i.qe = sitofp reassoc nsz arcp contract afn i64 %i.qd to double
  %i.qf = fmul reassoc nnan nsz arcp contract afn double %i.qe, f0x3EB0C6F7A0B5ED8D
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %i.qg = fsub reassoc nsz arcp contract afn double %i.qb, %.5
  %i.qh = fadd reassoc nsz arcp contract afn double %i.qg, %i.qf
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.12, ptr noundef nonnull %i.px, double noundef %i.qh) #13
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !134
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge478.split, %bb.ad
  %i.qi = phi i32 [ %i.oj, %._crit_edge478.split ], [ %.pre, %bb.ad ]
  %i.qj = and i32 %i.qi, 4112
  %or.cond423.not = icmp eq i32 %i.qj, 4112
  br i1 %or.cond423.not, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.qk = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.ql = call i32 @gettimeofday(ptr noundef nonnull %5, ptr noundef null) #13 ; 0 uses
  %i.qm = load i64, ptr %5, align 8, !tbaa !135
  %i.qn = add nsw i64 %i.qm, -1290608000
  %i.qo = sitofp reassoc nsz arcp contract afn i64 %i.qn to double
  %i.qp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.qq = load i64, ptr %i.qp, align 8, !tbaa !137
  %i.qr = sitofp reassoc nsz arcp contract afn i64 %i.qq to double
  %i.qs = fmul reassoc nnan nsz arcp contract afn double %i.qr, f0x3EB0C6F7A0B5ED8D
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.qt = fsub reassoc nsz arcp contract afn double %i.qo, %i.k
  %i.qu = fadd reassoc nsz arcp contract afn double %i.qt, %i.qs
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.17, ptr noundef nonnull %i.qk, double noundef %i.qu) #13
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
end_hunk_1
