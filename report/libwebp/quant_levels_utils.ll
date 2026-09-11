Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/quant_levels_utils?download=true
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden range(i32 0, 2) i32 @QuantizeLevels(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i32], align 16             ; 10 uses
  %i.b = alloca [256 x i32], align 16             ; 12 uses
  %i.c = alloca [256 x double], align 16          ; 15 uses
  %i.d = alloca [256 x double], align 16          ; 7 uses
  %i.e = alloca [256 x double], align 16          ; 7 uses
  %i.f = alloca [256 x i8], align 16              ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.a, i8 0, i64 1024, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.b, i8 0, i64 1024, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.c, i8 0, i64 2048, i1 false)
  %i.g = mul i32 %2, %1                           ; 7 uses
  %i.h = sext i32 %i.g to i64                     ; 4 uses
  %i.i = uitofp i64 %i.h to double
  %i.j = fmul nnan double %i.i, 1.000000e-04
  %i.k = icmp eq ptr %0, null
  br i1 %i.k, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = icmp slt i32 %1, 1
  %i.m = icmp slt i32 %2, 1
  %or.cond = or i1 %i.l, %i.m
  %i.n = add i32 %3, -257
  %or.cond3 = icmp ult i32 %i.n, -255
  %or.cond135 = or i1 %or.cond, %or.cond3
  br i1 %or.cond135, label %bb.m, label %.preheader139

.preheader139:                                    ; preds = %bb.b
  switch i32 %i.g, label %.lr.ph.preheader.new [
    i32 0, label %._crit_edge.thread
    i32 1, label %.lr.ph.epil.preheader
  ]

.lr.ph.preheader.new:                             ; preds = %.preheader139
  %unroll_iter = and i64 %i.h, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0106143 = phi i32 [ 255, %.lr.ph.preheader.new ], [ %spec.select.1, %.lr.ph ]
  %.0111142 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.aj, %.lr.ph ] ; 3 uses
  %.0119141 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.ag, %.lr.ph ]
  %.0121140 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %.1122.1, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.0111142
  %i.p = load i8, ptr %i.o, align 1, !tbaa !19    ; 2 uses
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !20   ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %i.v = add nuw nsw i32 %.0119141, %i.u
  %i.w = zext i8 %i.p to i32                      ; 2 uses
  %spec.select = tail call i32 @llvm.umin.i32(i32 %.0106143, i32 %i.w)
  %.1122 = tail call i32 @llvm.umax.i32(i32 %.0121140, i32 %i.w)
  %i.x = add nsw i32 %i.s, 1
  store i32 %i.x, ptr %i.r, align 4, !tbaa !20
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %.0111142
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !19   ; 2 uses
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !20 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 0
  %i.af = zext i1 %i.ae to i32
  %i.ag = add nuw nsw i32 %i.v, %i.af             ; 3 uses
  %i.ah = zext i8 %i.aa to i32                    ; 2 uses
  %spec.select.1 = tail call i32 @llvm.umin.i32(i32 %spec.select, i32 %i.ah) ; 3 uses
  %.1122.1 = tail call i32 @llvm.umax.i32(i32 %.1122, i32 %i.ah) ; 3 uses
  %i.ai = add nsw i32 %i.ad, 1
  store i32 %i.ai, ptr %i.ac, align 4, !tbaa !20
  %i.aj = add nuw i64 %.0111142, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !8

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %i.ak = and i32 %i.g, 1
  %lcmp.mod.not = icmp eq i32 %i.ak, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader139, %._crit_edge.unr-lcssa
  %.0106143.epil.init = phi i32 [ 255, %.preheader139 ], [ %spec.select.1, %._crit_edge.unr-lcssa ]
  %.0111142.epil.init = phi i64 [ 0, %.preheader139 ], [ %i.aj, %._crit_edge.unr-lcssa ]
  %.0119141.epil.init = phi i32 [ 0, %.preheader139 ], [ %i.ag, %._crit_edge.unr-lcssa ]
  %.0121140.epil.init = phi i32 [ 0, %.preheader139 ], [ %.1122.1, %._crit_edge.unr-lcssa ]
  %lcmp.mod233 = trunc i32 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod233)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %.0111142.epil.init
  %i.am = load i8, ptr %i.al, align 1, !tbaa !19  ; 2 uses
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.an ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !20 ; 2 uses
  %i.aq = icmp eq i32 %i.ap, 0
  %i.ar = zext i1 %i.aq to i32
  %i.as = add nuw nsw i32 %.0119141.epil.init, %i.ar
  %i.at = zext i8 %i.am to i32                    ; 2 uses
  %spec.select.epil = tail call i32 @llvm.umin.i32(i32 %.0106143.epil.init, i32 %i.at)
  %.1122.epil = tail call i32 @llvm.umax.i32(i32 %.0121140.epil.init, i32 %i.at)
  %i.au = add nsw i32 %i.ap, 1
  store i32 %i.au, ptr %i.ao, align 4, !tbaa !20
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa229 = phi i32 [ %i.ag, %._crit_edge.unr-lcssa ], [ %i.as, %.lr.ph.epil.preheader ]
  %spec.select.lcssa = phi i32 [ %spec.select.1, %._crit_edge.unr-lcssa ], [ %spec.select.epil, %.lr.ph.epil.preheader ] ; 4 uses
  %.1122.lcssa = phi i32 [ %.1122.1, %._crit_edge.unr-lcssa ], [ %.1122.epil, %.lr.ph.epil.preheader ] ; 3 uses
  %i.av = icmp sgt i32 %.lcssa229, %3
  br i1 %i.av, label %.lr.ph147, label %._crit_edge.thread

.lr.ph147:                                        ; preds = %._crit_edge
  %i.aw = uitofp nneg i32 %spec.select.lcssa to double ; 2 uses
  %i.ax = sub nsw i32 %.1122.lcssa, %spec.select.lcssa
  %i.ay = sitofp i32 %i.ax to double              ; 2 uses
  %i.az = add nsw i32 %3, -1                      ; 7 uses
  %i.ba = uitofp nneg i32 %i.az to double         ; 2 uses
  %wide.trip.count = zext nneg i32 %3 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %3, 2
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph147
  %n.vec = and i64 %wide.trip.count, 510          ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.aw, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert224 = insertelement <2 x double> poison, double %i.ay, i64 0
  %broadcast.splat225 = shufflevector <2 x double> %broadcast.splatinsert224, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert226 = insertelement <2 x double> poison, double %i.ba, i64 0
  %broadcast.splat227 = shufflevector <2 x double> %broadcast.splatinsert226, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.bb = uitofp nneg <2 x i32> %vec.ind to <2 x double>
  %i.bc = fmul nnan <2 x double> %broadcast.splat225, %i.bb
  %i.bd = fdiv <2 x double> %i.bc, %broadcast.splat227
  %i.be = fadd <2 x double> %i.bd, %broadcast.splat
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index
  store <2 x double> %i.be, ptr %i.bf, align 16, !tbaa !23
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 2)
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge148, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph147, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph147 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bh = trunc nuw nsw i64 %indvars.iv to i32
  %i.bi = uitofp nneg i32 %i.bh to double
  %i.bj = fmul nnan double %i.ay, %i.bi
  %i.bk = fdiv double %i.bj, %i.ba
  %i.bl = fadd double %i.bk, %i.aw
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store double %i.bl, ptr %i.bm, align 8, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond177.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond177.not, label %._crit_edge148, label %scalar.ph, !llvm.loop !10

._crit_edge148:                                   ; preds = %scalar.ph, %middle.block
  %i.bn = zext nneg i32 %spec.select.lcssa to i64 ; 12 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bn
  store i32 0, ptr %i.bo, align 4, !tbaa !20
  %i.bp = zext nneg i32 %.1122.lcssa to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bp
  store i32 %i.az, ptr %i.bq, align 4, !tbaa !20
  %i.br = icmp samesign ult i32 %3, 3
  %i.bs = add i32 %.1122.lcssa, 1                 ; 3 uses
  %wide.trip.count186 = zext i32 %i.bs to i64     ; 3 uses
  %wide.trip.count191 = zext i32 %i.az to i64
  %wide.trip.count196 = zext nneg i32 %i.bs to i64
  %i.bt = add nsw i64 %wide.trip.count191, -1     ; 3 uses
  %i.bu = sub nsw i64 %wide.trip.count186, %i.bn  ; 2 uses
  %i.bv = xor i64 %i.bn, -1
  %i.bw = add nsw i64 %i.bv, %wide.trip.count186  ; 2 uses
  %xtraiter234 = and i64 %i.bt, 1
  %i.bx = icmp eq i32 %i.az, 2
  %unroll_iter237 = and i64 %i.bt, -2
  %lcmp.mod235.not = icmp eq i64 %xtraiter234, 0
  %lcmp.mod236 = trunc i64 %i.bt to i1
  %xtraiter239 = and i64 %i.bu, 1
  %lcmp.mod240.not = icmp eq i64 %xtraiter239, 0
  %i.by = uitofp nneg i32 %spec.select.lcssa to double
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bn
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bn
  %indvars.iv.next194.prol = add nuw nsw i64 %i.bn, 1
  %i.cb = icmp eq i64 %i.bw, 0
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge160, %._crit_edge148
  %.0116163 = phi double [ f0x47D2CED32A16A1B1, %._crit_edge148 ], [ %.lcssa, %._crit_edge160 ]
  %.0118162 = phi i32 [ 0, %._crit_edge148 ], [ %i.fe, %._crit_edge160 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.d, i8 0, i64 2048, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.e, i8 0, i64 2048, i1 false)
  br label %.preheader136

.preheader136:                                    ; preds = %bb.c, %bb.g
  %indvars.iv183 = phi i64 [ %indvars.iv.next184, %bb.g ], [ %i.bn, %bb.c ] ; 5 uses
  %.0107151 = phi i32 [ %.1108.lcssa, %bb.g ], [ 0, %bb.c ] ; 4 uses
  %indvars.iv183.tr = trunc nuw i64 %indvars.iv183 to i32
  %i.cc = shl nuw i32 %indvars.iv183.tr, 1
  %i.cd = uitofp nneg i32 %i.cc to double
  %smax = tail call i32 @llvm.smax.i32(i32 %.0107151, i32 %i.az) ; 2 uses
  %i.ce = tail call i32 @llvm.smax.i32(i32 %.0107151, i32 %i.az)
  %smax181 = sext i32 %i.ce to i64
  %exitcond182.not221.not = icmp slt i32 %.0107151, %i.az
  br i1 %exitcond182.not221.not, label %.lr.ph223, label %.critedge

.lr.ph223:                                        ; preds = %.preheader136
  %i.cf = sext i32 %.0107151 to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next179 = add nsw i64 %indvars.iv178222, 1 ; 2 uses
  %exitcond182.not = icmp eq i64 %indvars.iv.next179, %smax181
  br i1 %exitcond182.not, label %.critedge, label %bb.e, !llvm.loop !11

bb.e:                                             ; preds = %.lr.ph223, %bb.d
  %indvars.iv178222 = phi i64 [ %i.cf, %.lr.ph223 ], [ %indvars.iv.next179, %bb.d ] ; 3 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.c, i64 %indvars.iv178222
  %5 = load <2 x double>, ptr %i.cg, align 8, !tbaa !23
  %6 = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %5)
  %i.ch = fcmp olt double %6, %i.cd
  br i1 %i.ch, label %bb.d, label %.critedge.split.loop.exit216, !llvm.loop !11

.critedge.split.loop.exit216:                     ; preds = %bb.e
  %i.ci = trunc nsw i64 %indvars.iv178222 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %.preheader136, %.critedge.split.loop.exit216
  %.1108.lcssa = phi i32 [ %i.ci, %.critedge.split.loop.exit216 ], [ %smax, %.preheader136 ], [ %smax, %bb.d ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv183
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !20 ; 3 uses
  %i.cl = icmp sgt i32 %i.ck, 0
  br i1 %i.cl, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.critedge
  %i.cm = trunc nuw nsw i64 %indvars.iv183 to i32
  %i.cn = mul nuw nsw i32 %i.ck, %i.cm
  %i.co = sitofp i32 %i.cn to double
  %i.cp = sext i32 %.1108.lcssa to i64            ; 2 uses
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.cp ; 2 uses
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !23
  %i.cs = fadd double %i.cr, %i.co
  store double %i.cs, ptr %i.cq, align 8, !tbaa !23
  %i.ct = uitofp nneg i32 %i.ck to double
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.cp ; 2 uses
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !23
  %i.cw = fadd double %i.cv, %i.ct
  store double %i.cw, ptr %i.cu, align 8, !tbaa !23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv183
  store i32 %.1108.lcssa, ptr %i.cx, align 4, !tbaa !20
  %indvars.iv.next184 = add nuw nsw i64 %indvars.iv183, 1 ; 2 uses
  %exitcond187.not = icmp eq i64 %indvars.iv.next184, %wide.trip.count186
  br i1 %exitcond187.not, label %._crit_edge152, label %.preheader136, !llvm.loop !12

._crit_edge152:                                   ; preds = %bb.g
  br i1 %i.br, label %.lr.ph159.preheader, label %.lr.ph154.preheader

.lr.ph154.preheader:                              ; preds = %._crit_edge152
  br i1 %i.bx, label %.lr.ph154.epil.preheader, label %.lr.ph154

.lr.ph154:                                        ; preds = %.lr.ph154.preheader, %bb.j
  %indvars.iv188 = phi i64 [ %indvars.iv.next189.1, %bb.j ], [ 1, %.lr.ph154.preheader ] ; 5 uses
  %niter238 = phi i64 [ %niter238.next.1, %bb.j ], [ 0, %.lr.ph154.preheader ]
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv188
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !23 ; 2 uses
  %i.da = fcmp ogt double %i.cz, 0.000000e+00
  br i1 %i.da, label %bb.h, label %.lr.ph154.1

bb.h:                                             ; preds = %.lr.ph154
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv188
  %i.dc = load double, ptr %i.db, align 8, !tbaa !23
  %i.dd = fdiv double %i.dc, %i.cz
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv188
  store double %i.dd, ptr %i.de, align 8, !tbaa !23
  br label %.lr.ph154.1

.lr.ph154.1:                                      ; preds = %bb.h, %.lr.ph154
  %indvars.iv.next189 = add nuw nsw i64 %indvars.iv188, 1 ; 3 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next189
  %i.dg = load double, ptr %i.df, align 8, !tbaa !23 ; 2 uses
  %i.dh = fcmp ogt double %i.dg, 0.000000e+00
  br i1 %i.dh, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph154.1
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next189
  %i.dj = load double, ptr %i.di, align 8, !tbaa !23
  %i.dk = fdiv double %i.dj, %i.dg
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next189
  store double %i.dk, ptr %i.dl, align 8, !tbaa !23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph154.1
  %indvars.iv.next189.1 = add nuw nsw i64 %indvars.iv188, 2 ; 2 uses
  %niter238.next.1 = add i64 %niter238, 2         ; 2 uses
  %niter238.ncmp.1 = icmp eq i64 %niter238.next.1, %unroll_iter237
  br i1 %niter238.ncmp.1, label %.lr.ph159.preheader.loopexit.unr-lcssa, label %.lr.ph154, !llvm.loop !13

.lr.ph159.preheader.loopexit.unr-lcssa:           ; preds = %bb.j
  br i1 %lcmp.mod235.not, label %.lr.ph159.preheader, label %.lr.ph154.epil.preheader

.lr.ph154.epil.preheader:                         ; preds = %.lr.ph159.preheader.loopexit.unr-lcssa, %.lr.ph154.preheader
  %indvars.iv188.epil.init = phi i64 [ 1, %.lr.ph154.preheader ], [ %indvars.iv.next189.1, %.lr.ph159.preheader.loopexit.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod236)
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv188.epil.init
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !23 ; 2 uses
  %i.do = fcmp ogt double %i.dn, 0.000000e+00
  br i1 %i.do, label %bb.k, label %.lr.ph159.preheader

bb.k:                                             ; preds = %.lr.ph154.epil.preheader
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv188.epil.init
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !23
  %i.dr = fdiv double %i.dq, %i.dn
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv188.epil.init
  store double %i.dr, ptr %i.ds, align 8, !tbaa !23
  br label %.lr.ph159.preheader

.lr.ph159.preheader:                              ; preds = %.lr.ph159.preheader.loopexit.unr-lcssa, %bb.k, %.lr.ph154.epil.preheader, %._crit_edge152
  br i1 %lcmp.mod240.not, label %.lr.ph159.prol.loopexit, label %.lr.ph159.prol

.lr.ph159.prol:                                   ; preds = %.lr.ph159.preheader
  %i.dt = load i32, ptr %i.bz, align 4, !tbaa !20
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.du
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !23
  %i.dx = fsub double %i.by, %i.dw                ; 2 uses
  %i.dy = load i32, ptr %i.ca, align 4, !tbaa !20
  %i.dz = sitofp i32 %i.dy to double
  %i.ea = fmul double %i.dx, %i.dz
  %i.eb = tail call double @llvm.fmuladd.f64(double %i.ea, double %i.dx, double 0.000000e+00) ; 2 uses
  br label %.lr.ph159.prol.loopexit

.lr.ph159.prol.loopexit:                          ; preds = %.lr.ph159.prol, %.lr.ph159.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph159.preheader ], [ %i.eb, %.lr.ph159.prol ]
  %indvars.iv193.unr = phi i64 [ %i.bn, %.lr.ph159.preheader ], [ %indvars.iv.next194.prol, %.lr.ph159.prol ]
  %.1114156.unr = phi double [ 0.000000e+00, %.lr.ph159.preheader ], [ %i.eb, %.lr.ph159.prol ]
  br i1 %i.cb, label %._crit_edge160, label %.lr.ph159

.lr.ph159:                                        ; preds = %.lr.ph159.prol.loopexit, %.lr.ph159
  %indvars.iv193 = phi i64 [ %indvars.iv.next194.1, %.lr.ph159 ], [ %indvars.iv193.unr, %.lr.ph159.prol.loopexit ] ; 5 uses
  %.1114156 = phi double [ %i.fb, %.lr.ph159 ], [ %.1114156.unr, %.lr.ph159.prol.loopexit ]
  %i.ec = trunc nuw nsw i64 %indvars.iv193 to i32
  %i.ed = uitofp nneg i32 %i.ec to double
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv193
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !20
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.eg
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !23
  %i.ej = fsub double %i.ed, %i.ei                ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv193
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !20
  %i.em = sitofp i32 %i.el to double
  %i.en = fmul double %i.ej, %i.em
  %i.eo = tail call double @llvm.fmuladd.f64(double %i.en, double %i.ej, double %.1114156)
  %indvars.iv.next194 = add nuw nsw i64 %indvars.iv193, 1 ; 3 uses
  %i.ep = trunc nuw nsw i64 %indvars.iv.next194 to i32
  %i.eq = uitofp nneg i32 %i.ep to double
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next194
  %i.es = load i32, ptr %i.er, align 4, !tbaa !20
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.et
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !23
  %i.ew = fsub double %i.eq, %i.ev                ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next194
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !20
  %i.ez = sitofp i32 %i.ey to double
  %i.fa = fmul double %i.ew, %i.ez
  %i.fb = tail call double @llvm.fmuladd.f64(double %i.fa, double %i.ew, double %i.eo) ; 2 uses
  %indvars.iv.next194.1 = add nuw nsw i64 %indvars.iv193, 2 ; 2 uses
  %exitcond197.not.1 = icmp eq i64 %indvars.iv.next194.1, %wide.trip.count196
  br i1 %exitcond197.not.1, label %._crit_edge160, label %.lr.ph159, !llvm.loop !14

._crit_edge160:                                   ; preds = %.lr.ph159, %.lr.ph159.prol.loopexit
  %.lcssa = phi double [ %.lcssa.unr, %.lr.ph159.prol.loopexit ], [ %i.fb, %.lr.ph159 ] ; 3 uses
  %i.fc = fsub double %.0116163, %.lcssa
  %i.fd = fcmp olt double %i.fc, %i.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  %i.fe = add nuw nsw i32 %.0118162, 1            ; 2 uses
  %exitcond198.not = icmp eq i32 %i.fe, 6
  %or.cond218 = select i1 %i.fd, i1 true, i1 %exitcond198.not
  br i1 %or.cond218, label %.lr.ph167.preheader, label %bb.c, !llvm.loop !15

.lr.ph167.preheader:                              ; preds = %._crit_edge160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  %wide.trip.count202 = zext nneg i32 %i.bs to i64
  %xtraiter241 = and i64 %i.bu, 1
  %lcmp.mod242.not = icmp eq i64 %xtraiter241, 0
  br i1 %lcmp.mod242.not, label %.lr.ph167.prol.loopexit, label %.lr.ph167.prol

.lr.ph167.prol:                                   ; preds = %.lr.ph167.preheader
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bn
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !20
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.fh
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !23
  %i.fk = fadd double %i.fj, 5.000000e-01
  %i.fl = fptoui double %i.fk to i8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bn
  store i8 %i.fl, ptr %i.fm, align 1, !tbaa !19
  %indvars.iv.next200.prol = add nuw nsw i64 %i.bn, 1
  br label %.lr.ph167.prol.loopexit

.lr.ph167.prol.loopexit:                          ; preds = %.lr.ph167.prol, %.lr.ph167.preheader
  %indvars.iv199.unr = phi i64 [ %i.bn, %.lr.ph167.preheader ], [ %indvars.iv.next200.prol, %.lr.ph167.prol ]
  %i.fn = icmp eq i64 %i.bw, 0
  br i1 %i.fn, label %.lr.ph169.preheader, label %.lr.ph167

.lr.ph167:                                        ; preds = %.lr.ph167.prol.loopexit, %.lr.ph167
  %indvars.iv199 = phi i64 [ %indvars.iv.next200.1, %.lr.ph167 ], [ %indvars.iv199.unr, %.lr.ph167.prol.loopexit ] ; 4 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv199
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !20
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.fq
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !23
  %i.ft = fadd double %i.fs, 5.000000e-01
  %i.fu = fptoui double %i.ft to i8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv199
  store i8 %i.fu, ptr %i.fv, align 1, !tbaa !19
  %indvars.iv.next200 = add nuw nsw i64 %indvars.iv199, 1 ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next200
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !20
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.fy
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !23
  %i.gb = fadd double %i.ga, 5.000000e-01
  %i.gc = fptoui double %i.gb to i8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv.next200
  store i8 %i.gc, ptr %i.gd, align 1, !tbaa !19
  %indvars.iv.next200.1 = add nuw nsw i64 %indvars.iv199, 2 ; 2 uses
  %exitcond203.not.1 = icmp eq i64 %indvars.iv.next200.1, %wide.trip.count202
  br i1 %exitcond203.not.1, label %.lr.ph169.preheader, label %.lr.ph167, !llvm.loop !16

.lr.ph169.preheader:                              ; preds = %.lr.ph167, %.lr.ph167.prol.loopexit
  %xtraiter243 = and i64 %i.h, 3
  %i.ge = icmp ult i32 %i.g, 4
  br i1 %i.ge, label %.lr.ph169.epil.preheader, label %.lr.ph169.preheader.new

.lr.ph169.preheader.new:                          ; preds = %.lr.ph169.preheader
  %unroll_iter246 = and i64 %i.h, -4
  br label %.lr.ph169

.lr.ph169:                                        ; preds = %.lr.ph169, %.lr.ph169.preheader.new
  %.0104168 = phi i64 [ 0, %.lr.ph169.preheader.new ], [ %i.hc, %.lr.ph169 ] ; 5 uses
  %niter247 = phi i64 [ 0, %.lr.ph169.preheader.new ], [ %niter247.next.3, %.lr.ph169 ]
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 %.0104168 ; 2 uses
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !19
  %i.gh = zext i8 %i.gg to i64
  %i.gi = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.gh
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !19
  store i8 %i.gj, ptr %i.gf, align 1, !tbaa !19
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 %.0104168
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 1 ; 2 uses
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !19
  %i.gn = zext i8 %i.gm to i64
  %i.go = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !19
  store i8 %i.gp, ptr %i.gl, align 1, !tbaa !19
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 %.0104168
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 2 ; 2 uses
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !19
  %i.gt = zext i8 %i.gs to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.gt
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !19
  store i8 %i.gv, ptr %i.gr, align 1, !tbaa !19
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 %.0104168
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 3 ; 2 uses
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !19
  %i.gz = zext i8 %i.gy to i64
  %i.ha = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.gz
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !19
  store i8 %i.hb, ptr %i.gx, align 1, !tbaa !19
  %i.hc = add nuw i64 %.0104168, 4                ; 2 uses
  %niter247.next.3 = add i64 %niter247, 4         ; 2 uses
  %niter247.ncmp.3 = icmp eq i64 %niter247.next.3, %unroll_iter246
  br i1 %niter247.ncmp.3, label %._crit_edge170.unr-lcssa, label %.lr.ph169, !llvm.loop !17

._crit_edge170.unr-lcssa:                         ; preds = %.lr.ph169
  %i.hd = and i32 %i.g, 3
  %lcmp.mod244.not = icmp eq i32 %i.hd, 0
  br i1 %lcmp.mod244.not, label %._crit_edge170, label %.lr.ph169.epil.preheader

.lr.ph169.epil.preheader:                         ; preds = %._crit_edge170.unr-lcssa, %.lr.ph169.preheader
  %.0104168.epil.init = phi i64 [ 0, %.lr.ph169.preheader ], [ %i.hc, %._crit_edge170.unr-lcssa ]
  %i.he = and i32 %i.g, 3
  %lcmp.mod245 = icmp ne i32 %i.he, 0
  tail call void @llvm.assume(i1 %lcmp.mod245)
  br label %.lr.ph169.epil

.lr.ph169.epil:                                   ; preds = %.lr.ph169.epil, %.lr.ph169.epil.preheader
  %.0104168.epil = phi i64 [ %i.hk, %.lr.ph169.epil ], [ %.0104168.epil.init, %.lr.ph169.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph169.epil ], [ 0, %.lr.ph169.epil.preheader ]
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 %.0104168.epil ; 2 uses
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !19
  %i.hh = zext i8 %i.hg to i64
  %i.hi = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.hh
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !19
  store i8 %i.hj, ptr %i.hf, align 1, !tbaa !19
  %i.hk = add nuw i64 %.0104168.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter243
  br i1 %epil.iter.cmp.not, label %._crit_edge170, label %.lr.ph169.epil, !llvm.loop !18

._crit_edge170:                                   ; preds = %.lr.ph169.epil, %._crit_edge170.unr-lcssa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  %i.hl = fptoui double %.lcssa to i64
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader139, %._crit_edge, %._crit_edge170
  %.3 = phi i64 [ 0, %._crit_edge ], [ %i.hl, %._crit_edge170 ], [ 0, %.preheader139 ]
  %.not134 = icmp eq ptr %4, null
  br i1 %.not134, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge.thread
  store i64 %.3, ptr %4, align 8, !tbaa !28
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread, %bb.l, %bb.b, %bb.a
  %.0 = phi i32 [ 1, %._crit_edge.thread ], [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !21}
!9 = distinct !{!9, !21, !24, !25}
!10 = distinct !{!10, !21, !25, !24}
!11 = distinct !{!11, !21}
!12 = distinct !{!12, !21}
!13 = distinct !{!13, !21}
!14 = distinct !{!14, !21}
!15 = distinct !{!15, !21}
!16 = distinct !{!16, !21}
!17 = distinct !{!17, !21}
!18 = distinct !{!18, !26}
!19 = !{!4, !4, i64 0}
!20 = !{!5, !5, i64 0}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!"double", !4, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = !{!"llvm.loop.unroll.disable"}
!27 = !{!"long", !4, i64 0}
!28 = !{!27, !27, i64 0}
end_hunk_0
