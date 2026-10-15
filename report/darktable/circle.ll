Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/circle?download=true
inline.NumInlined: 75
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_circle_get_mask:bb.a
  store float %i.fv, ptr %i.fw, align 32, !tbaa !22
  %indvars.iv.next133.prol = or disjoint i64 %indvars.iv132.ph, 1
  br label %.lr.ph124.prol.loopexit

.lr.ph124.prol.loopexit:                          ; preds = %.lr.ph124.prol, %.lr.ph124.preheader181
  %indvars.iv132.unr = phi i64 [ %indvars.iv132.ph, %.lr.ph124.preheader181 ], [ %indvars.iv.next133.prol, %.lr.ph124.prol ]
  %i.fx = add nsw i64 %wide.trip.count135, -1
  %i.fy = icmp eq i64 %indvars.iv132.ph, %i.fx
  br i1 %i.fy, label %._crit_edge125, label %.lr.ph124.preheader181.new

.lr.ph124.preheader181.new:                       ; preds = %.lr.ph124.prol.loopexit
  %i.fz = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.en
  %i.ga = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.en
  br label %.lr.ph124

._crit_edge125:                                   ; preds = %.lr.ph124.prol.loopexit, %.lr.ph124, %middle.block177, %bb.n
  tail call void @free(ptr noundef nonnull %i.ah) #14
  %i.gb = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !123
  %i.gc = and i32 %i.gb, 4112
  %or.cond110.not = icmp eq i32 %i.gc, 4112
  br i1 %or.cond110.not, label %bb.o, label %bb.p

.lr.ph124:                                        ; preds = %.lr.ph124, %.lr.ph124.preheader181.new
  %indvars.iv132 = phi i64 [ %indvars.iv132.unr, %.lr.ph124.preheader181.new ], [ %indvars.iv.next133.1, %.lr.ph124 ] ; 4 uses
  %i.gd = shl nuw nsw i64 %indvars.iv132, 1       ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.gd
  %i.gf = load float, ptr %i.ge, align 8, !tbaa !22
  %i.gg = fsub reassoc nsz arcp contract afn float %i.gf, %i.du ; 2 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.gd
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !22
  %i.gj = fsub reassoc nsz arcp contract afn float %i.gi, %i.dy ; 2 uses
  %.neg = fmul reassoc nsz arcp contract afn float %i.gg, %i.gg
  %.neg115 = fmul reassoc nsz arcp contract afn float %i.gj, %i.gj
  %reass.add = fadd reassoc nsz arcp contract afn float %.neg115, %.neg
  %i.gk = fsub reassoc nsz arcp contract afn float %i.eh, %reass.add
  %i.gl = fmul reassoc nsz arcp contract afn float %i.gk, %i.fz ; 3 uses
  %i.gm = fcmp reassoc nsz arcp contract afn oge float %i.gl, 0.000000e+00
  %i.gn = fcmp reassoc nsz arcp contract afn ole float %i.gl, 1.000000e+00
  %i.go = select reassoc nsz arcp contract afn i1 %i.gn, float %i.gl, float 1.000000e+00
  %i.gp = select reassoc nsz arcp contract afn i1 %i.gm, float %i.go, float 0.000000e+00 ; 2 uses
  %i.gq = fmul reassoc nsz arcp contract afn float %i.gp, %i.gp
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv132
  store float %i.gq, ptr %i.gr, align 4, !tbaa !22
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %i.gs = shl nuw nsw i64 %indvars.iv.next133, 1  ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.gs
  %i.gu = load float, ptr %i.gt, align 8, !tbaa !22
  %i.gv = fsub reassoc nsz arcp contract afn float %i.gu, %i.du ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.gs
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !22
  %i.gy = fsub reassoc nsz arcp contract afn float %i.gx, %i.dy ; 2 uses
  %.neg.1 = fmul reassoc nsz arcp contract afn float %i.gv, %i.gv
  %.neg115.1 = fmul reassoc nsz arcp contract afn float %i.gy, %i.gy
  %reass.add.1 = fadd reassoc nsz arcp contract afn float %.neg115.1, %.neg.1
  %i.gz = fsub reassoc nsz arcp contract afn float %i.eh, %reass.add.1
  %i.ha = fmul reassoc nsz arcp contract afn float %i.gz, %i.ga ; 3 uses
  %i.hb = fcmp reassoc nsz arcp contract afn oge float %i.ha, 0.000000e+00
  %i.hc = fcmp reassoc nsz arcp contract afn ole float %i.ha, 1.000000e+00
  %i.hd = select reassoc nsz arcp contract afn i1 %i.hc, float %i.ha, float 1.000000e+00
  %i.he = select reassoc nsz arcp contract afn i1 %i.hb, float %i.hd, float 0.000000e+00 ; 2 uses
  %i.hf = fmul reassoc nsz arcp contract afn float %i.he, %i.he
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv.next133
  store float %i.hf, ptr %i.hg, align 4, !tbaa !22
  %indvars.iv.next133.1 = add nuw nsw i64 %indvars.iv132, 2 ; 2 uses
  %exitcond136.not.1 = icmp eq i64 %indvars.iv.next133.1, %wide.trip.count135
  br i1 %exitcond136.not.1, label %._crit_edge125, label %.lr.ph124, !llvm.loop !192

bb.o:                                             ; preds = %._crit_edge125
  %i.hh = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.hi = call i32 @gettimeofday(ptr noundef nonnull %8, ptr noundef null) #14 ; 0 uses
  %i.hj = load i64, ptr %8, align 8, !tbaa !125
  %i.hk = add nsw i64 %i.hj, -1290608000
  %i.hl = sitofp reassoc nsz arcp contract afn i64 %i.hk to double
  %i.hm = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !126
  %i.ho = sitofp reassoc nsz arcp contract afn i64 %i.hn to double
  %i.hp = fmul reassoc nnan nsz arcp contract afn double %i.ho, f0x3EB0C6F7A0B5ED8D
  %i.hq = fadd reassoc nsz arcp contract afn double %i.hp, %i.hl
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %i.hr = fsub reassoc nsz arcp contract afn double %i.hq, %.2114
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.12, ptr noundef nonnull %i.hh, double noundef %i.hr) #14
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
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !123
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %dt_get_debug_wtime.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  %i.b = call i32 @gettimeofday(ptr noundef nonnull %13, ptr noundef null) #14 ; 0 uses
  %i.c = load i64, ptr %13, align 8, !tbaa !125
  %i.d = add nsw i64 %i.c, -1290608000
  %i.e = sitofp reassoc nsz arcp contract afn i64 %i.d to double
  %i.f = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !126
  %i.h = sitofp reassoc nsz arcp contract afn i64 %i.g to double
  %i.i = fmul reassoc nnan nsz arcp contract afn double %i.h, f0x3EB0C6F7A0B5ED8D
  %i.j = fadd reassoc nsz arcp contract afn double %i.i, %i.e
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !123
  %i.k = and i32 %.pre, 4112
  %i.l = icmp eq i32 %i.k, 4112
  br label %dt_get_debug_wtime.exit

dt_get_debug_wtime.exit:                          ; preds = %bb.a, %bb.b
  %or.cond413.not = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  %i.m = phi reassoc nsz arcp contract afn double [ %i.j, %bb.b ], [ 0.000000e+00, %bb.a ] ; 3 uses
  %i.n = load ptr, ptr %2, align 8, !tbaa !15
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !17   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !134  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 144
  %i.s = load <2 x i32>, ptr %i.r, align 16, !tbaa !24 ; 3 uses
  %i.t = load <2 x float>, ptr %i.o, align 4, !tbaa !22
  %i.u = sitofp <2 x i32> %i.s to <2 x float>
  %i.v = fmul reassoc nsz arcp contract afn <2 x float> %i.t, %i.u ; 7 uses
  %i.w = extractelement <2 x i32> %i.s, i64 0
  %i.x = extractelement <2 x i32> %i.s, i64 1
  %i.y = tail call i32 @llvm.smin.i32(i32 %i.w, i32 %i.x)
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.aa = load float, ptr %i.z, align 4, !tbaa !20 ; 2 uses
  %i.ab = sitofp reassoc nsz arcp contract afn i32 %i.y to float ; 2 uses
  %i.ac = fmul reassoc nsz arcp contract afn float %i.aa, %i.ab ; 2 uses
  %i.ad = fmul reassoc nsz arcp contract afn float %i.ac, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.af = load float, ptr %i.ae, align 4, !tbaa !23
  %i.ag = fadd reassoc nsz arcp contract afn float %i.af, %i.aa
  %i.ah = fmul reassoc nsz arcp contract afn float %i.ag, %i.ab ; 4 uses
  %i.ai = fmul reassoc nsz arcp contract afn float %i.ah, %i.ah ; 4 uses
  %i.aj = fsub reassoc nsz arcp contract afn float %i.ai, %i.ad ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.am = load float, ptr %i.al, align 4, !tbaa !206 ; 3 uses
  %i.an = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.am ; 4 uses
  %i.ao = fmul reassoc nsz arcp contract afn float %i.am, f0x40555556
  %i.ap = fadd reassoc nsz arcp contract afn float %i.ao, f0x3F2AAAAB ; 3 uses
  %i.aq = fcmp reassoc nsz arcp contract afn ogt float %i.ap, 4.000000e+00
  %.inv = fcmp reassoc nsz arcp contract afn ole float %i.ap, 1.000000e+00
  %spec.select433 = select i1 %.inv, float 1.000000e+00, float %i.ap
  %spec.select = fptosi float %spec.select433 to i32
  %i.ar = select i1 %i.aq, i32 4, i32 %spec.select ; 19 uses
  %i.as = add i32 %i.ar, -1
  %i.at = load <2 x i32>, ptr %i.ak, align 4, !tbaa !24 ; 3 uses
  %i.au = load <2 x i32>, ptr %3, align 4, !tbaa !24 ; 5 uses
  %i.av = insertelement <2 x i32> poison, i32 %i.as, i64 0
  %i.aw = shufflevector <2 x i32> %i.av, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ax = add <2 x i32> %i.aw, %i.at
  %i.ay = insertelement <2 x i32> poison, i32 %i.ar, i64 0
  %i.az = shufflevector <2 x i32> %i.ay, <2 x i32> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ba = sdiv <2 x i32> %i.ax, %i.az             ; 4 uses
  %i.bb = extractelement <2 x i32> %i.at, i64 0   ; 2 uses
  %i.bc = sext i32 %i.bb to i64                   ; 2 uses
  %i.bd = shl nsw i64 %i.bc, 2
  %i.be = extractelement <2 x i32> %i.at, i64 1   ; 2 uses
  %i.bf = sext i32 %i.be to i64
  %i.bg = mul i64 %i.bd, %i.bf
  tail call void @llvm.memset.p0.i64(ptr align 4 %4, i8 0, i64 %i.bg, i1 false)
  br i1 %or.cond413.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %dt_get_debug_wtime.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  %i.bi = call i32 @gettimeofday(ptr noundef nonnull %12, ptr noundef null) #14 ; 0 uses
  %i.bj = load i64, ptr %12, align 8, !tbaa !125
  %i.bk = add nsw i64 %i.bj, -1290608000
  %i.bl = sitofp reassoc nsz arcp contract afn i64 %i.bk to double
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !126
  %i.bo = sitofp reassoc nsz arcp contract afn i64 %i.bn to double
  %i.bp = fmul reassoc nnan nsz arcp contract afn double %i.bo, f0x3EB0C6F7A0B5ED8D
  %i.bq = fadd reassoc nsz arcp contract afn double %i.bp, %i.bl ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  %i.br = fsub reassoc nsz arcp contract afn double %i.bq, %i.m
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.13, ptr noundef nonnull %i.bh, double noundef %i.br) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %dt_get_debug_wtime.exit
  %.0 = phi nsz double [ %i.m, %dt_get_debug_wtime.exit ], [ %i.bq, %bb.c ] ; 2 uses
  %i.bs = fmul reassoc nsz arcp contract afn float %i.ai, f0x40C90FDB ; 2 uses
  %i.bt = fcmp reassoc nsz arcp contract afn ogt float %i.bs, 3.600000e+02
  %i.bu = select reassoc nsz arcp contract afn i1 %i.bt, float 3.600000e+02, float %i.bs
  %i.bv = fptosi float %i.bu to i32               ; 3 uses
  %14 = and i32 %i.bv, 7
  %i.bw = icmp eq i32 %14, 0
  %i.bx = add nuw nsw i32 %i.bv, 8
  %15 = and i32 %i.bx, 2147483640
  %i.by = select i1 %i.bw, i32 %i.bv, i32 %15     ; 6 uses
  %16 = zext nneg i32 %i.by to i64                ; 5 uses
  %i.bz = shl nuw nsw i64 %16, 3
  %i.ca = tail call ptr @dt_alloc_aligned(i64 noundef %i.bz) #14 ; 10 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ca, i64 64) ]
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.ac, label %.preheader446.a

.preheader446.a:                                  ; preds = %bb.d
  %i.cc = lshr i64 %16, 3                         ; 4 uses
  %.not = icmp eq i64 %i.cc, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader446.a
  %i.cd = uitofp nneg i32 %i.by to float          ; 2 uses
  %min.iters.check = icmp samesign ult i32 %i.by, 64
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.cc, 268435448               ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.cd, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert532 = insertelement <8 x float> poison, float %i.ah, i64 0
  %broadcast.splat533 = shufflevector <8 x float> %broadcast.splatinsert532, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat535 = shufflevector <2 x float> %i.v, <2 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat537 = shufflevector <2 x float> %i.v, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 4 uses
  %i.ce = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.ind538 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next554, %vector.body ] ; 2 uses
  %i.cf = uitofp nneg <8 x i32> %vec.ind538 to <8 x float>
  %i.cg = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.cf, splat (float f0x40C90FDB)
  %i.ch = fmul reassoc nsz arcp contract afn <8 x float> %i.cg, %i.ce
  %i.ci = tail call reassoc nsz arcp contract afn { <8 x float>, <8 x float> } @llvm.sincos.v8f32(<8 x float> %i.ch) ; 2 uses
  %i.cj = extractvalue { <8 x float>, <8 x float> } %i.ci, 0
  %i.ck = extractvalue { <8 x float>, <8 x float> } %i.ci, 1
  %i.cl = fmul reassoc nsz arcp contract afn <8 x float> %i.ck, %broadcast.splat533 ; 4 uses
  %i.cm = fmul reassoc nsz arcp contract afn <8 x float> %i.cj, %broadcast.splat533 ; 4 uses
  %i.cn = fadd reassoc nsz arcp contract afn <8 x float> %i.cl, %broadcast.splat535 ; 2 uses
  %i.co = shl nuw nsw <8 x i64> %vec.ind, splat (i64 6)
  %wide.gep = getelementptr inbounds nuw i8, ptr %i.ca, <8 x i64> %i.co ; 16 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cn, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !22
  %i.cp = fadd reassoc nsz arcp contract afn <8 x float> %i.cm, %broadcast.splat537 ; 2 uses
  %wide.gep539 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cp, <8 x ptr> align 4 %wide.gep539, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep540 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cn, <8 x ptr> align 4 %wide.gep540, <8 x i1> splat (i1 true)), !tbaa !22
  %i.cq = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat537, %i.cm ; 2 uses
  %wide.gep541 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 12
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cq, <8 x ptr> align 4 %wide.gep541, <8 x i1> splat (i1 true)), !tbaa !22
  %i.cr = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat535, %i.cl ; 2 uses
  %wide.gep542 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 16
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cr, <8 x ptr> align 4 %wide.gep542, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep543 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 20
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cp, <8 x ptr> align 4 %wide.gep543, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep544 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 24
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cr, <8 x ptr> align 4 %wide.gep544, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep545 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 28
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cq, <8 x ptr> align 4 %wide.gep545, <8 x i1> splat (i1 true)), !tbaa !22
  %i.cs = fadd reassoc nsz arcp contract afn <8 x float> %i.cm, %broadcast.splat535 ; 2 uses
  %wide.gep546 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 32
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cs, <8 x ptr> align 4 %wide.gep546, <8 x i1> splat (i1 true)), !tbaa !22
  %i.ct = fadd reassoc nsz arcp contract afn <8 x float> %i.cl, %broadcast.splat537 ; 2 uses
  %wide.gep547 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 36
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ct, <8 x ptr> align 4 %wide.gep547, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep548 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 40
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cs, <8 x ptr> align 4 %wide.gep548, <8 x i1> splat (i1 true)), !tbaa !22
  %i.cu = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat537, %i.cl ; 2 uses
  %wide.gep549 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 44
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cu, <8 x ptr> align 4 %wide.gep549, <8 x i1> splat (i1 true)), !tbaa !22
  %i.cv = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat535, %i.cm ; 2 uses
  %wide.gep550 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 48
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cv, <8 x ptr> align 4 %wide.gep550, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep551 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 52
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ct, <8 x ptr> align 4 %wide.gep551, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep552 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 56
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cv, <8 x ptr> align 4 %wide.gep552, <8 x i1> splat (i1 true)), !tbaa !22
  %wide.gep553 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 60
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cu, <8 x ptr> align 4 %wide.gep553, <8 x i1> splat (i1 true)), !tbaa !22
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %vec.ind.next554 = add <8 x i32> %vec.ind538, splat (i32 8)
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !197

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cc, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %i.cx = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.cd
  %i.cy = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.cz = shufflevector <2 x float> %i.v, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 4 uses
  %i.da = shufflevector <2 x float> %i.cy, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %.preheader446.a
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !128 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.de = load i32, ptr %i.dd, align 16, !tbaa !122
  %i.df = sitofp reassoc nsz arcp contract afn i32 %i.de to double ; 2 uses
  %i.dg = tail call i32 @dt_dev_distort_transform_plus(ptr noundef %i.dc, ptr noundef nonnull %i.q, double noundef %i.df, i32 noundef 3, ptr noundef nonnull %i.ca, i64 noundef %16) #14
  %.not388 = icmp eq i32 %i.dg, 0
  br i1 %.not388, label %bb.e, label %bb.f

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.dh = trunc nuw nsw i64 %indvars.iv to i32
  %i.di = uitofp nsz nneg i32 %i.dh to float
  %i.dj = fmul reassoc nnan nsz arcp contract afn float %i.di, f0x40C90FDB
  %i.dk = fmul reassoc nsz arcp contract afn float %i.dj, %i.cx
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.dk) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0
  %cos = extractvalue { float, float } %sincos, 1
  %i.dl = insertelement <4 x float> poison, float %sin, i64 0
  %i.dm = insertelement <4 x float> %i.dl, float %cos, i64 1
  %.idx530 = shl nuw nsw i64 %indvars.iv, 6
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.idx530 ; 2 uses
  %i.do = fmul reassoc nsz arcp contract afn <4 x float> %i.dm, %i.da ; 4 uses
  %i.dp = shufflevector <4 x float> %i.cz, <4 x float> %i.do, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.dq = shufflevector <4 x float> %i.do, <4 x float> %i.cz, <4 x i32> <i32 1, i32 0, i32 5, i32 4> ; 2 uses
  %i.dr = fadd reassoc nsz arcp contract afn <4 x float> %i.dp, %i.dq
  %i.ds = fsub reassoc nsz arcp contract afn <4 x float> %i.dp, %i.dq
  %i.dt = shufflevector <4 x float> %i.dr, <4 x float> %i.ds, <8 x i32> <i32 3, i32 2, i32 3, i32 5, i32 4, i32 2, i32 4, i32 5>
  store <8 x float> %i.dt, ptr %i.dn, align 64, !tbaa !22
  %i.du = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.dv = shufflevector <4 x float> %i.cz, <4 x float> %i.do, <4 x i32> <i32 0, i32 1, i32 5, i32 4> ; 2 uses
  %i.dw = shufflevector <4 x float> %i.do, <4 x float> %i.cz, <4 x i32> <i32 0, i32 1, i32 5, i32 4> ; 2 uses
  %i.dx = fadd reassoc nsz arcp contract afn <4 x float> %i.dv, %i.dw
  %i.dy = fsub reassoc nsz arcp contract afn <4 x float> %i.dv, %i.dw
  %i.dz = shufflevector <4 x float> %i.dx, <4 x float> %i.dy, <8 x i32> <i32 3, i32 2, i32 3, i32 5, i32 4, i32 2, i32 4, i32 5>
  store <8 x float> %i.dz, ptr %i.du, align 32, !tbaa !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.cc
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !198

bb.e:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.ca) #14
  br label %bb.ac

bb.f:                                             ; preds = %._crit_edge
  %i.ea = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !123
  %i.eb = and i32 %i.ea, 4112
  %or.cond414.not = icmp eq i32 %i.eb, 4112
  br i1 %or.cond414.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  %i.ed = call i32 @gettimeofday(ptr noundef nonnull %11, ptr noundef null) #14 ; 0 uses
  %i.ee = load i64, ptr %11, align 8, !tbaa !125
  %i.ef = add nsw i64 %i.ee, -1290608000
  %i.eg = sitofp reassoc nsz arcp contract afn i64 %i.ef to double
  %i.eh = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !126
  %i.ej = sitofp reassoc nsz arcp contract afn i64 %i.ei to double
  %i.ek = fmul reassoc nnan nsz arcp contract afn double %i.ej, f0x3EB0C6F7A0B5ED8D
  %i.el = fadd reassoc nsz arcp contract afn double %i.ek, %i.eg ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  %i.em = fsub reassoc nsz arcp contract afn double %i.el, %.0
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.14, ptr noundef nonnull %i.ec, double noundef %i.em) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1 = phi nsz double [ %.0, %bb.f ], [ %i.el, %bb.g ] ; 2 uses
  %.not481 = icmp eq i32 %i.by, 0
  br i1 %.not481, label %._crit_edge455, label %.lr.ph454.preheader

.lr.ph454.preheader:                              ; preds = %bb.h
  %xtraiter = and i64 %16, 1
  %i.en = icmp eq i32 %i.by, 1
  br i1 %i.en, label %.lr.ph454.epil.preheader, label %.lr.ph454.preheader.new

.lr.ph454.preheader.new:                          ; preds = %.lr.ph454.preheader
  %unroll_iter = and i64 %16, 2147483646
  br label %.lr.ph454

._crit_edge455.loopexit.unr-lcssa:                ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge455, label %.lr.ph454.epil.preheader

.lr.ph454.epil.preheader:                         ; preds = %._crit_edge455.loopexit.unr-lcssa, %.lr.ph454.preheader
  %indvars.iv483.epil.init = phi i64 [ 0, %.lr.ph454.preheader ], [ %indvars.iv.next484.1, %._crit_edge455.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x float> [ splat (float f0x00800000), %.lr.ph454.preheader ], [ %i.hh, %._crit_edge455.loopexit.unr-lcssa ] ; 4 uses
  %.epil.init662 = phi <2 x float> [ splat (float f0x7F7FFFFF), %.lr.ph454.preheader ], [ %i.hi, %._crit_edge455.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod665 = trunc i32 %i.by to i1
  tail call void @llvm.assume(i1 %lcmp.mod665)
  %.idx531.epil = shl nuw nsw i64 %indvars.iv483.epil.init, 3
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.idx531.epil ; 2 uses
  %i.ep = load float, ptr %i.eo, align 8, !tbaa !22 ; 2 uses
  %i.eq = tail call i1 @llvm.is.fpclass.f32(float %i.ep, /* (nan inf zero sub) */ i32 759)
  br i1 %i.eq, label %._crit_edge455, label %bb.i

bb.i:                                             ; preds = %.lr.ph454.epil.preheader
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %i.es = load float, ptr %i.er, align 4, !tbaa !22 ; 2 uses
  %i.et = tail call i1 @llvm.is.fpclass.f32(float %i.es, /* (nan inf zero sub) */ i32 759)
  br i1 %i.et, label %._crit_edge455, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.eu = insertelement <2 x float> poison, float %i.ep, i64 0
  %i.ev = insertelement <2 x float> %i.eu, float %i.es, i64 1 ; 4 uses
  %i.ew = fcmp reassoc nsz arcp contract afn olt <2 x float> %.epil.init662, %i.ev
  %i.ex = fcmp reassoc nsz arcp contract afn ogt <2 x float> %.epil.init, %i.ev
  %i.ey = select <2 x i1> %i.ew, <2 x float> %.epil.init662, <2 x float> %i.ev
  %i.ez = select <2 x i1> %i.ex, <2 x float> %.epil.init, <2 x float> %i.ev
  br label %._crit_edge455

._crit_edge455:                                   ; preds = %._crit_edge455.loopexit.unr-lcssa, %bb.j, %bb.i, %.lr.ph454.epil.preheader, %bb.h
  %i.fa = phi <2 x float> [ splat (float f0x00800000), %bb.h ], [ %i.hh, %._crit_edge455.loopexit.unr-lcssa ], [ %i.ez, %bb.j ], [ %.epil.init, %bb.i ], [ %.epil.init, %.lr.ph454.epil.preheader ]
  %i.fb = phi <2 x float> [ splat (float f0x7F7FFFFF), %bb.h ], [ %i.hi, %._crit_edge455.loopexit.unr-lcssa ], [ %i.ey, %bb.j ], [ %.epil.init662, %bb.i ], [ %.epil.init662, %.lr.ph454.epil.preheader ]
  %i.fc = insertelement <2 x float> poison, float %i.am, i64 0
  %i.fd = shufflevector <2 x float> %i.fc, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fe = fmul reassoc nsz arcp contract afn <2 x float> %i.fb, %i.fd
  %i.ff = sitofp <2 x i32> %i.au to <2 x float>   ; 2 uses
  %i.fg = fmul reassoc nsz arcp contract afn <2 x float> %i.fa, %i.fd
  %i.fh = fsub reassoc nsz arcp contract afn <2 x float> %i.fe, %i.ff
  %i.fi = tail call reassoc nsz arcp contract afn <2 x float> @llvm.floor.v2f32(<2 x float> %i.fh)
  %i.fj = fptosi <2 x float> %i.fi to <2 x i32>
  %i.fk = sdiv <2 x i32> %i.fj, %i.az             ; 2 uses
  %i.fl = add nsw <2 x i32> %i.fk, splat (i32 -1) ; 2 uses
  %i.fm = icmp sgt <2 x i32> %i.fl, %i.ba
  %i.fn = icmp sgt <2 x i32> %i.fk, zeroinitializer
  %i.fo = select <2 x i1> %i.fn, <2 x i32> %i.fl, <2 x i32> zeroinitializer
  %i.fp = select <2 x i1> %i.fm, <2 x i32> %i.ba, <2 x i32> %i.fo ; 7 uses
  %i.fq = fsub reassoc nsz arcp contract afn <2 x float> %i.fg, %i.ff
  %i.fr = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.fq)
  %i.fs = fptosi <2 x float> %i.fr to <2 x i32>
  %i.ft = sdiv <2 x i32> %i.fs, %i.az             ; 2 uses
  %i.fu = add nsw <2 x i32> %i.ft, splat (i32 2)  ; 2 uses
  %i.fv = icmp sgt <2 x i32> %i.fu, %i.ba
  %i.fw = icmp slt <2 x i32> %i.ft, splat (i32 -2)
  %i.fx = select <2 x i1> %i.fw, <2 x i32> zeroinitializer, <2 x i32> %i.fu
  %i.fy = select <2 x i1> %i.fv, <2 x i32> %i.ba, <2 x i32> %i.fx ; 5 uses
  %i.fz = sub <2 x i32> %i.fy, %i.fp              ; 5 uses
  %i.ga = add nuw nsw <2 x i32> %i.fz, splat (i32 1) ; 3 uses
  %i.gb = zext <2 x i32> %i.ga to <2 x i64>
  tail call void @free(ptr noundef nonnull %i.ca) #14
  %i.gc = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !123
  %i.gd = and i32 %i.gc, 4112
  %or.cond419.not = icmp eq i32 %i.gd, 4112
  br i1 %or.cond419.not, label %bb.p, label %bb.q

.lr.ph454:                                        ; preds = %bb.o, %.lr.ph454.preheader.new
  %indvars.iv483 = phi i64 [ 0, %.lr.ph454.preheader.new ], [ %indvars.iv.next484.1, %bb.o ] ; 3 uses
  %i.ge = phi <2 x float> [ splat (float f0x00800000), %.lr.ph454.preheader.new ], [ %i.hh, %bb.o ] ; 4 uses
  %i.gf = phi <2 x float> [ splat (float f0x7F7FFFFF), %.lr.ph454.preheader.new ], [ %i.hi, %bb.o ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph454.preheader.new ], [ %niter.next.1, %bb.o ]
  %.idx531 = shl nuw nsw i64 %indvars.iv483, 3
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.idx531 ; 2 uses
  %i.gh = load float, ptr %i.gg, align 16, !tbaa !22 ; 2 uses
  %i.gi = tail call i1 @llvm.is.fpclass.f32(float %i.gh, /* (nan inf zero sub) */ i32 759)
  br i1 %i.gi, label %.lr.ph454.1, label %bb.k

bb.k:                                             ; preds = %.lr.ph454
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !22 ; 2 uses
  %i.gl = tail call i1 @llvm.is.fpclass.f32(float %i.gk, /* (nan inf zero sub) */ i32 759)
  br i1 %i.gl, label %.lr.ph454.1, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.gm = insertelement <2 x float> poison, float %i.gh, i64 0
  %i.gn = insertelement <2 x float> %i.gm, float %i.gk, i64 1 ; 4 uses
  %i.go = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.gf, %i.gn
  %i.gp = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ge, %i.gn
  %i.gq = select <2 x i1> %i.go, <2 x float> %i.gf, <2 x float> %i.gn
  %i.gr = select <2 x i1> %i.gp, <2 x float> %i.ge, <2 x float> %i.gn
  br label %.lr.ph454.1

.lr.ph454.1:                                      ; preds = %.lr.ph454, %bb.k, %bb.l
  %i.gs = phi <2 x float> [ %i.gr, %bb.l ], [ %i.ge, %bb.k ], [ %i.ge, %.lr.ph454 ] ; 4 uses
  %i.gt = phi <2 x float> [ %i.gq, %bb.l ], [ %i.gf, %bb.k ], [ %i.gf, %.lr.ph454 ] ; 4 uses
  %indvars.iv.next484 = shl i64 %indvars.iv483, 3
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ca, i64 %indvars.iv.next484 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gw = load float, ptr %i.gv, align 8, !tbaa !22 ; 2 uses
  %i.gx = tail call i1 @llvm.is.fpclass.f32(float %i.gw, /* (nan inf zero sub) */ i32 759)
  br i1 %i.gx, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.lr.ph454.1
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gu, i64 12
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !22 ; 2 uses
  %i.ha = tail call i1 @llvm.is.fpclass.f32(float %i.gz, /* (nan inf zero sub) */ i32 759)
  br i1 %i.ha, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.hb = insertelement <2 x float> poison, float %i.gw, i64 0
  %i.hc = insertelement <2 x float> %i.hb, float %i.gz, i64 1 ; 4 uses
  %i.hd = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.gt, %i.hc
  %i.he = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.gs, %i.hc
  %i.hf = select <2 x i1> %i.hd, <2 x float> %i.gt, <2 x float> %i.hc
  %i.hg = select <2 x i1> %i.he, <2 x float> %i.gs, <2 x float> %i.hc
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %.lr.ph454.1
  %i.hh = phi <2 x float> [ %i.hg, %bb.n ], [ %i.gs, %bb.m ], [ %i.gs, %.lr.ph454.1 ] ; 3 uses
  %i.hi = phi <2 x float> [ %i.hf, %bb.n ], [ %i.gt, %bb.m ], [ %i.gt, %.lr.ph454.1 ] ; 3 uses
  %indvars.iv.next484.1 = add nuw nsw i64 %indvars.iv483, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge455.loopexit.unr-lcssa, label %.lr.ph454

bb.p:                                             ; preds = %._crit_edge455
  %i.hj = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  %i.hk = call i32 @gettimeofday(ptr noundef nonnull %10, ptr noundef null) #14 ; 0 uses
  %i.hl = load i64, ptr %10, align 8, !tbaa !125
  %i.hm = add nsw i64 %i.hl, -1290608000
  %i.hn = sitofp reassoc nsz arcp contract afn i64 %i.hm to double
  %i.ho = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !126
  %i.hq = sitofp reassoc nsz arcp contract afn i64 %i.hp to double
  %i.hr = fmul reassoc nnan nsz arcp contract afn double %i.hq, f0x3EB0C6F7A0B5ED8D
  %i.hs = fadd reassoc nsz arcp contract afn double %i.hr, %i.hn ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  %i.ht = fsub reassoc nsz arcp contract afn double %i.hs, %.1
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.15, ptr noundef nonnull %i.hj, double noundef %i.ht) #14
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge455
  %.2432 = phi nsz double [ %.1, %._crit_edge455 ], [ %i.hs, %bb.p ] ; 2 uses
  %i.hu = icmp slt <2 x i32> %i.fz, splat (i32 1) ; 2 uses
  %i.hv = extractelement <2 x i1> %i.hu, i64 0
  %i.hw = extractelement <2 x i1> %i.hu, i64 1
  %or.cond = select i1 %i.hv, i1 true, i1 %i.hw
  br i1 %or.cond, label %bb.ac, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.hx = extractelement <2 x i32> %i.ga, i64 0   ; 11 uses
  %i.hy = zext i32 %i.hx to i64
  %i.hz = extractelement <2 x i32> %i.ga, i64 1
  %i.ia = zext i32 %i.hz to i64
  %i.ib = mul nuw nsw i64 %i.ia, %i.hy            ; 2 uses
  %i.ic = shl i64 %i.ib, 3
  %i.id = tail call ptr @dt_alloc_aligned(i64 noundef %i.ic) #14 ; 17 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.id, i64 64) ]
  %i.ie = icmp eq ptr %i.id, null
  br i1 %i.ie, label %bb.ac, label %.preheader445

.preheader445:                                    ; preds = %bb.r
  %i.if = extractelement <2 x i32> %i.fy, i64 1   ; 2 uses
  %i.ig = extractelement <2 x i32> %i.fp, i64 1   ; 4 uses
  %.not393463 = icmp sgt i32 %i.ig, %i.if
  br i1 %.not393463, label %._crit_edge465.split, label %.preheader444.lr.ph

.preheader444.lr.ph:                              ; preds = %.preheader445
  %i.ih = extractelement <2 x i32> %i.fp, i64 0
  %i.ii = icmp sgt <2 x i32> %i.fp, %i.fy
  %.not410459 = extractelement <2 x i1> %i.ii, i64 0
  %i.ij = sext i32 %i.ih to i64                   ; 6 uses
  br i1 %.not410459, label %._crit_edge465.split, label %.preheader444.preheader

.preheader444.preheader:                          ; preds = %.preheader444.lr.ph
  %i.ik = sext i32 %i.ig to i64                   ; 2 uses
  %i.il = add <2 x i32> %i.fy, splat (i32 1)      ; 2 uses
  %i.im = extractelement <2 x i32> %i.fz, i64 0   ; 2 uses
  %i.in = extractelement <2 x i32> %i.au, i64 1
  %i.io = extractelement <2 x i32> %i.il, i64 1
  %i.ip = zext i32 %i.hx to i64
  %min.iters.check556 = icmp ult i32 %i.im, 3
  %min.iters.check557 = icmp ult i32 %i.im, 31
  %i.iq = zext i32 %i.hx to i64                   ; 2 uses
  %i.ir = and i64 %i.iq, 28
  %n.vec559 = and i64 %i.iq, 2147483616           ; 4 uses
  %i.is = add nsw i64 %n.vec559, %i.ij            ; 2 uses
  %broadcast.splatinsert562.a = insertelement <8 x i32> poison, i32 %i.ar, i64 0
  %broadcast.splat563 = shufflevector <8 x i32> %broadcast.splatinsert562.a, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat565 = shufflevector <2 x i32> %i.au, <2 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert566 = insertelement <8 x float> poison, float %i.an, i64 0
  %broadcast.splat567 = shufflevector <8 x float> %broadcast.splatinsert566, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat569 = shufflevector <2 x i32> %i.fp, <2 x i32> poison, <8 x i32> zeroinitializer
  %induction = add <8 x i32> %broadcast.splat569, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.it = zext i32 %i.hx to i64
  %cmp.n579 = icmp eq i64 %n.vec559, %i.it
  %min.epilog.iters.check = icmp eq i64 %i.ir, 0
end_hunk_0
