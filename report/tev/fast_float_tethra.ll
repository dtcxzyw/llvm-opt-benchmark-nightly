Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/fast_float_tethra?download=true
inline.NumInlined: 4
inline.NumDeleted: 2
begin_hunk_0_@cmsPipelineInsertStage
declare i32 @cmsPipelineInsertStage(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @cmsStageAllocMatrix(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @cmsStageSampleCLutFloat(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @XFormSampler(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  tail call void @cmsPipelineEvalFloat(ptr noundef %0, ptr noundef %1, ptr noundef %2) #5
  ret i32 1
}

declare void @cmsPipelineUnlinkStage(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @cmsStageData(ptr noundef) local_unnamed_addr #2

declare void @cmsPipelineFree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @FloatCLUTEval(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) #0 {
bb.a:
  %i.a = alloca [16 x ptr], align 16              ; 12 uses
  %i.b = alloca [16 x i32], align 16              ; 7 uses
  %i.c = alloca [16 x i32], align 16              ; 7 uses
  %i.d = alloca [16 x i32], align 16              ; 9 uses
  %i.e = alloca [16 x i32], align 16              ; 7 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %i.h = tail call ptr @_cmsGetTransformUserData(ptr noundef %0) #5
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14   ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !31   ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 200
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !32   ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  %i.o = tail call i32 @cmsGetTransformInputFormat(ptr noundef %0) #5
  %i.p = tail call i32 @cmsGetTransformOutputFormat(ptr noundef %0) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !34
  call void @_cmsComputeComponentIncrements(i32 noundef %i.o, i32 noundef %i.r, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #5
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !35
  call void @_cmsComputeComponentIncrements(i32 noundef %i.p, i32 noundef %i.t, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #5
  %i.u = call i32 @_cmsGetTransformFlags(ptr noundef %0) #5
  %i.v = and i32 %i.u, 67108864
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.g, align 4, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not346 = icmp eq i32 %4, 0
  br i1 %.not346, label %._crit_edge327, label %.lr.ph326

.lr.ph326:                                        ; preds = %bb.c
  %i.w = load i32, ptr %i.b, align 16, !tbaa !10
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !10
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !10
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.af
  %i.ah = load i32, ptr %i.g, align 4, !tbaa !10
  %.fr = freeze i32 %i.ah
  %.not294 = icmp eq i32 %.fr, 0                  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.not347 = icmp eq i32 %3, 0
  %i.aj = load i32, ptr %i.c, align 16
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.am = load i32, ptr %i.al, align 4
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = zext i32 %i.ap to i64
  %.not348 = icmp eq i32 %i.l, 0                  ; 2 uses
  %i.ar = zext i32 %i.l to i64                    ; 8 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ar
  %i.av = load i32, ptr %5, align 4, !tbaa !36
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !37
  %i.az = zext i32 %i.ay to i64                   ; 3 uses
  br i1 %.not347, label %.lr.ph326.split, label %.lr.ph326.split.us

.lr.ph326.split.us:                               ; preds = %.lr.ph326
  %i.ba = getelementptr inbounds nuw i8, ptr %i.j, i64 144
  %i.bb = getelementptr inbounds nuw i8, ptr %i.j, i64 148
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 140
  %i.bd = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.be = getelementptr inbounds nuw i8, ptr %i.j, i64 84
  %i.bf = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !10
  %i.bh = uitofp i32 %i.bg to float
  %i.bi = load i32, ptr %i.be, align 4, !tbaa !10
  %i.bj = uitofp i32 %i.bi to float
  %i.bk = load i32, ptr %i.bd, align 8, !tbaa !10
  %i.bl = uitofp i32 %i.bk to float
  %i.bm = load i32, ptr %i.bb, align 4, !tbaa !10 ; 2 uses
  %i.bn = load i32, ptr %i.ba, align 8, !tbaa !10 ; 2 uses
  %i.bo = load i32, ptr %i.bc, align 4, !tbaa !10 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge320.us, %.lr.ph326.split.us
  %.0324.us = phi i64 [ 0, %.lr.ph326.split.us ], [ %i.kf, %._crit_edge320.us ] ; 2 uses
  %.0278323.us = phi i64 [ 0, %.lr.ph326.split.us ], [ %i.ke, %._crit_edge320.us ] ; 5 uses
  %.0279322.us = phi ptr [ null, %.lr.ph326.split.us ], [ %.3.us, %._crit_edge320.us ]
  %.0285321.us = phi i32 [ 0, %.lr.ph326.split.us ], [ %i.kg, %._crit_edge320.us ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.y, i64 %.0278323.us
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.0278323.us
  %i.br = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.0278323.us
  %i.bs = load i32, ptr %i.ai, align 4
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.0278323.us
  %.1.us = select i1 %.not294, ptr %.0279322.us, ptr %i.bv ; 2 uses
  %.not295.us = icmp ne ptr %.1.us, null
  %i.bw = zext i1 %.not295.us to i32
  %.0286.us = add i32 %i.l, %i.bw                 ; 3 uses
  %invariant.gep.us = getelementptr i8, ptr %2, i64 %.0324.us ; 3 uses
  %.not351 = icmp eq i32 %.0286.us, 0
  br i1 %.not351, label %.preheader.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %bb.d
  %wide.trip.count = zext i32 %.0286.us to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %.0286.us, 4
  br i1 %min.iters.check, label %.lr.ph.us.preheader437, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us.preheader
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %wide.load = load <2 x i32>, ptr %i.bx, align 16, !tbaa !10
  %wide.load403 = load <2 x i32>, ptr %i.by, align 8, !tbaa !10
  %i.bz = zext <2 x i32> %wide.load to <2 x i64>
  %i.ca = zext <2 x i32> %wide.load403 to <2 x i64>
  %wide.gep = getelementptr i8, ptr %invariant.gep.us, <2 x i64> %i.bz
  %wide.gep404 = getelementptr i8, ptr %invariant.gep.us, <2 x i64> %i.ca
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store <2 x ptr> %wide.gep, ptr %i.cb, align 16, !tbaa !39
  store <2 x ptr> %wide.gep404, ptr %i.cc, align 16, !tbaa !39
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader.us, label %.lr.ph.us.preheader437

.lr.ph.us.preheader437:                           ; preds = %.lr.ph.us.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.us.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader437, %.lr.ph.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.us ], [ %indvars.iv.ph, %.lr.ph.us.preheader437 ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !10
  %i.cg = zext i32 %i.cf to i64
  %gep.us = getelementptr i8, ptr %invariant.gep.us, i64 %i.cg
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store ptr %gep.us, ptr %i.ch, align 8, !tbaa !39
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader.us, label %.lr.ph.us, !llvm.loop !22

.preheader.us:                                    ; preds = %.lr.ph.us, %middle.block, %bb.d
  %i.ci = load i32, ptr %i.at, align 4
  %i.cj = zext i32 %i.ci to i64
  br label %bb.e

bb.e:                                             ; preds = %.preheader.us, %bb.o
  %.2318.us = phi ptr [ %.1.us, %.preheader.us ], [ %.3.us, %bb.o ] ; 3 uses
  %.0280317.us = phi ptr [ %i.br, %.preheader.us ], [ %i.cy, %bb.o ] ; 2 uses
  %.0281316.us = phi ptr [ %i.bq, %.preheader.us ], [ %i.cx, %bb.o ] ; 2 uses
  %.0282315.us = phi ptr [ %i.bp, %.preheader.us ], [ %i.cw, %bb.o ] ; 2 uses
  %.1284314.us = phi i32 [ 0, %.preheader.us ], [ %i.kd, %bb.o ]
  %i.ck = load float, ptr %.0282315.us, align 4, !tbaa !44 ; 4 uses
  %6 = fcmp olt float %i.ck, f0x3089705F
  %7 = fcmp uno float %i.ck, 0.000000e+00
  %or.cond.i.us = or i1 %6, %7
  %i.cl = fcmp ogt float %i.ck, 1.000000e+00
  %i.cm = select i1 %i.cl, float 1.000000e+00, float %i.ck
  %i.cn = select i1 %or.cond.i.us, float 0.000000e+00, float %i.cm ; 2 uses
  %i.co = load float, ptr %.0281316.us, align 4, !tbaa !44 ; 4 uses
  %8 = fcmp olt float %i.co, f0x3089705F
  %9 = fcmp uno float %i.co, 0.000000e+00
  %or.cond.i309.us = or i1 %8, %9
  %i.cp = fcmp ogt float %i.co, 1.000000e+00
  %i.cq = select i1 %i.cp, float 1.000000e+00, float %i.co
  %i.cr = select i1 %or.cond.i309.us, float 0.000000e+00, float %i.cq ; 2 uses
  %i.cs = load float, ptr %.0280317.us, align 4, !tbaa !44 ; 4 uses
  %10 = fcmp olt float %i.cs, f0x3089705F
  %11 = fcmp uno float %i.cs, 0.000000e+00
  %or.cond.i310.us = or i1 %10, %11
  %i.ct = fcmp ogt float %i.cs, 1.000000e+00
  %i.cu = select i1 %i.ct, float 1.000000e+00, float %i.cs
  %i.cv = select i1 %or.cond.i310.us, float 0.000000e+00, float %i.cu ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.0282315.us, i64 %i.ak
  %i.cx = getelementptr inbounds nuw i8, ptr %.0281316.us, i64 %i.an
  %i.cy = getelementptr inbounds nuw i8, ptr %.0280317.us, i64 %i.aq
  %i.cz = fmul float %i.cn, %i.bh                 ; 2 uses
  %i.da = fmul float %i.cr, %i.bj                 ; 2 uses
  %i.db = fmul float %i.cv, %i.bl                 ; 2 uses
  %i.dc = call float @llvm.floor.f32(float %i.cz)
  %i.dd = fptosi float %i.dc to i32               ; 2 uses
  %i.de = sitofp i32 %i.dd to float
  %i.df = fsub float %i.cz, %i.de                 ; 7 uses
  %i.dg = call float @llvm.floor.f32(float %i.da)
  %i.dh = fptosi float %i.dg to i32               ; 2 uses
  %i.di = sitofp i32 %i.dh to float
  %i.dj = fsub float %i.da, %i.di                 ; 7 uses
  %i.dk = call float @llvm.floor.f32(float %i.db)
  %i.dl = fptosi float %i.dk to i32               ; 2 uses
  %i.dm = sitofp i32 %i.dl to float
  %i.dn = fsub float %i.db, %i.dm                 ; 7 uses
  br i1 %.not348, label %._crit_edge.us, label %.lr.ph313.us

.lr.ph313.us:                                     ; preds = %bb.e
  %i.do = mul i32 %i.bo, %i.dl                    ; 5 uses
  %i.dp = fcmp ult float %i.cv, 1.000000e+00
  %i.dq = select i1 %i.dp, i32 %i.bo, i32 0
  %i.dr = add i32 %i.do, %i.dq                    ; 6 uses
  %i.ds = mul i32 %i.bn, %i.dh                    ; 4 uses
  %i.dt = fcmp ult float %i.cr, 1.000000e+00
  %i.du = select i1 %i.dt, i32 %i.bn, i32 0
  %i.dv = add i32 %i.ds, %i.du                    ; 3 uses
  %i.dw = mul i32 %i.bm, %i.dd                    ; 4 uses
  %i.dx = fcmp ult float %i.cn, 1.000000e+00
  %spec.select.us = select i1 %i.dx, i32 %i.bm, i32 0
  %i.dy = add i32 %i.dw, %spec.select.us          ; 3 uses
  %i.dz = add nsw i32 %i.ds, %i.dw                ; 2 uses
  %i.ea = add nsw i32 %i.dz, %i.do                ; 3 uses
  %i.eb = fcmp ult float %i.df, %i.dj             ; 2 uses
  %i.ec = fcmp ult float %i.dj, %i.dn             ; 2 uses
  %or.cond.us = select i1 %i.eb, i1 true, i1 %i.ec
  %i.ed = add nsw i32 %i.dy, %i.ds                ; 2 uses
  %i.ee = add nsw i32 %i.ed, %i.do                ; 2 uses
  %i.ef = add nsw i32 %i.dv, %i.dy                ; 2 uses
  %i.eg = add nsw i32 %i.ef, %i.do                ; 2 uses
  %i.eh = add nsw i32 %i.ef, %i.dr                ; 6 uses
  %i.ei = fcmp ult float %i.df, %i.dn             ; 2 uses
  %i.ej = fcmp ult float %i.dn, %i.dj             ; 2 uses
  %i.ek = add nsw i32 %i.dr, %i.ed
  %i.el = fcmp ult float %i.dn, %i.df             ; 2 uses
  %brmerge.us = or i1 %i.eb, %i.el
  %i.em = add i32 %i.dr, %i.dy
  %i.en = add i32 %i.em, %i.ds
  %i.eo = add nsw i32 %i.dr, %i.dz                ; 2 uses
  %i.ep = fcmp ult float %i.dj, %i.df             ; 2 uses
  %brmerge304.us = or i1 %i.ep, %i.ei
  %i.eq = add nsw i32 %i.dv, %i.dw                ; 2 uses
  %i.er = add nsw i32 %i.eq, %i.do                ; 2 uses
  %brmerge306.us = or i1 %i.ec, %i.el
  %i.es = add nsw i32 %i.eq, %i.dr
  %brmerge308.us = or i1 %i.ep, %i.ej
  %i.et = add i32 %i.dr, %i.dv
  %i.eu = add i32 %i.et, %i.dw
  br i1 %or.cond.us, label %.lr.ph313.split.us.us, label %.lr.ph313.split.us328

.lr.ph313.split.us328:                            ; preds = %.lr.ph313.us, %.lr.ph313.split.us328
  %indvars.iv357 = phi i64 [ %indvars.iv.next358, %.lr.ph313.split.us328 ], [ 0, %.lr.ph313.us ] ; 4 uses
  %i.ev = trunc nuw i64 %indvars.iv357 to i32     ; 4 uses
  %i.ew = add i32 %i.ea, %i.ev
  %i.ex = zext i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ex
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !44 ; 2 uses
  %i.fa = add i32 %i.ee, %i.ev
  %i.fb = zext i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.fb
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !44 ; 2 uses
  %i.fe = fsub float %i.fd, %i.ez
  %i.ff = add i32 %i.eg, %i.ev
  %i.fg = zext i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.fg
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !44 ; 2 uses
  %i.fj = fsub float %i.fi, %i.fd
  %i.fk = add i32 %i.eh, %i.ev
  %i.fl = zext i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.fl
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !44
  %i.fo = fsub float %i.fn, %i.fi
  %i.fp = call float @llvm.fmuladd.f32(float %i.fe, float %i.df, float %i.ez)
  %i.fq = call float @llvm.fmuladd.f32(float %i.fj, float %i.dj, float %i.fp)
  %i.fr = call float @llvm.fmuladd.f32(float %i.fo, float %i.dn, float %i.fq)
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv357 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !39 ; 2 uses
  store float %i.fr, ptr %i.ft, align 4, !tbaa !44
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv357
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !10
  %i.fw = zext i32 %i.fv to i64
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fw
  store ptr %i.fx, ptr %i.fs, align 8, !tbaa !39
  %indvars.iv.next358 = add nuw nsw i64 %indvars.iv357, 1 ; 2 uses
  %exitcond361.not = icmp eq i64 %indvars.iv.next358, %i.ar
  br i1 %exitcond361.not, label %._crit_edge.us, label %.lr.ph313.split.us328, !llvm.loop !23

.lr.ph313.split.us.us:                            ; preds = %.lr.ph313.us
  %or.cond299.us = select i1 %i.ei, i1 true, i1 %i.ej
  br i1 %or.cond299.us, label %.lr.ph313.split.us.split.us.us, label %.lr.ph313.split.us.split.us331

.lr.ph313.split.us.split.us331:                   ; preds = %.lr.ph313.split.us.us, %.lr.ph313.split.us.split.us331
  %indvars.iv362 = phi i64 [ %indvars.iv.next363, %.lr.ph313.split.us.split.us331 ], [ 0, %.lr.ph313.split.us.us ] ; 4 uses
  %i.fy = trunc nuw i64 %indvars.iv362 to i32     ; 4 uses
  %i.fz = add i32 %i.ea, %i.fy
  %i.ga = zext i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ga
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !44 ; 2 uses
  %i.gd = add i32 %i.ee, %i.fy
  %i.ge = zext i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ge
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !44 ; 2 uses
  %i.gh = fsub float %i.gg, %i.gc
  %i.gi = add i32 %i.eh, %i.fy
  %i.gj = zext i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.gj
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !44
  %i.gm = add i32 %i.ek, %i.fy
  %i.gn = zext i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.gn
  %i.gp = load float, ptr %i.go, align 4, !tbaa !44 ; 2 uses
  %i.gq = fsub float %i.gl, %i.gp
  %i.gr = fsub float %i.gp, %i.gg
  %i.gs = call float @llvm.fmuladd.f32(float %i.gh, float %i.df, float %i.gc)
  %i.gt = call float @llvm.fmuladd.f32(float %i.gq, float %i.dj, float %i.gs)
  %i.gu = call float @llvm.fmuladd.f32(float %i.gr, float %i.dn, float %i.gt)
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv362 ; 2 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !39 ; 2 uses
  store float %i.gu, ptr %i.gw, align 4, !tbaa !44
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv362
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !10
  %i.gz = zext i32 %i.gy to i64
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.gz
  store ptr %i.ha, ptr %i.gv, align 8, !tbaa !39
  %indvars.iv.next363 = add nuw nsw i64 %indvars.iv362, 1 ; 2 uses
  %exitcond366.not = icmp eq i64 %indvars.iv.next363, %i.ar
  br i1 %exitcond366.not, label %._crit_edge.us, label %.lr.ph313.split.us.split.us331, !llvm.loop !23

.lr.ph313.split.us.split.us.us:                   ; preds = %.lr.ph313.split.us.us, %bb.m
  %indvars.iv367 = phi i64 [ %indvars.iv.next368, %bb.m ], [ 0, %.lr.ph313.split.us.us ] ; 4 uses
  %i.hb = trunc nuw i64 %indvars.iv367 to i32     ; 13 uses
  %i.hc = add i32 %i.ea, %i.hb
  %i.hd = zext i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.hd
  %i.hf = load float, ptr %i.he, align 4, !tbaa !44 ; 5 uses
  br i1 %brmerge.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph313.split.us.split.us.us
  %i.hg = add i32 %i.en, %i.hb
  %i.hh = zext i32 %i.hg to i64
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.hh
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !44 ; 2 uses
  %i.hk = add i32 %i.eo, %i.hb
  %i.hl = zext i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.hl
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !44 ; 2 uses
  %i.ho = fsub float %i.hj, %i.hn
  %i.hp = add i32 %i.eh, %i.hb
  %i.hq = zext i32 %i.hp to i64
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.hq
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !44
  %i.ht = fsub float %i.hs, %i.hj
  %i.hu = fsub float %i.hn, %i.hf
  br label %bb.m

bb.g:                                             ; preds = %.lr.ph313.split.us.split.us.us
  br i1 %brmerge304.us, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.hv = add i32 %i.eg, %i.hb
  %i.hw = zext i32 %i.hv to i64
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.hw
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !44 ; 2 uses
  %i.hz = add i32 %i.er, %i.hb
  %i.ia = zext i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ia
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !44 ; 2 uses
  %i.id = fsub float %i.hy, %i.ic
  %i.ie = fsub float %i.ic, %i.hf
  %i.if = add i32 %i.eh, %i.hb
  %i.ig = zext i32 %i.if to i64
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ig
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !44
  %i.ij = fsub float %i.ii, %i.hy
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  br i1 %brmerge306.us, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ik = add i32 %i.eh, %i.hb
  %i.il = zext i32 %i.ik to i64
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.il
  %i.in = load float, ptr %i.im, align 4, !tbaa !44
  %i.io = add i32 %i.es, %i.hb
end_hunk_0
