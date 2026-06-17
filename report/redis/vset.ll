inline.NumInlined: 130
inline.NumDeleted: 15
begin_hunk_0_@exprRun:bb.a
  ]

bb.cu:                                            ; preds = %exprTokenToBool.exit164.thread184
  %i.se = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.sf = load double, ptr %i.se, align 8, !tbaa !18
  %i.sg = fcmp une double %i.sf, 0.000000e+00
  %i.sh = uitofp i1 %i.sg to double
  br label %exprTokenToBool.exit167

bb.cv:                                            ; preds = %exprTokenToBool.exit164.thread184
  %i.si = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.sj = load i64, ptr %i.si, align 8, !tbaa !18
  %i.sk = icmp eq i64 %i.sj, 0
  br i1 %i.sk, label %exprTokenToBool.exit167, label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %exprTokenToBool.exit164.thread184
  %i.sl = icmp eq i32 %i.sd, 6
  %..i165 = select i1 %i.sl, double 0.000000e+00, double 1.000000e+00
  br label %exprTokenToBool.exit167

exprTokenToBool.exit167:                          ; preds = %bb.cu, %bb.cv, %bb.cw
  %.0.i166 = phi double [ %i.sh, %bb.cu ], [ 0.000000e+00, %bb.cv ], [ %..i165, %bb.cw ]
  %i.sm = fcmp une double %.0.i166, 0.000000e+00
  %i.sn = uitofp i1 %i.sm to double
  br label %.thread190.sink.split

bb.cx:                                            ; preds = %exprStackPop.exit120
  %i.so = getelementptr inbounds nuw i8, ptr %.0103, i64 4
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !15
  switch i32 %i.sp, label %.thread190.sink.split [
    i32 1, label %exprTokenToBool.exit170
    i32 2, label %bb.cy
    i32 6, label %exprTokenToBool.exit170.thread
  ]

bb.cy:                                            ; preds = %bb.cx
  %i.sq = getelementptr inbounds nuw i8, ptr %.0103, i64 24
  %i.sr = load i64, ptr %i.sq, align 8, !tbaa !18
  %i.ss = icmp eq i64 %i.sr, 0
  br i1 %i.ss, label %exprTokenToBool.exit170.thread, label %.thread190.sink.split

exprTokenToBool.exit170:                          ; preds = %bb.cx
  %i.st = getelementptr inbounds nuw i8, ptr %.0103, i64 16
  %i.su = load double, ptr %i.st, align 8, !tbaa !18
  %i.sv = fcmp une double %i.su, 0.000000e+00
  br i1 %i.sv, label %.thread190.sink.split, label %exprTokenToBool.exit170.thread

exprTokenToBool.exit170.thread:                   ; preds = %bb.cx, %bb.cy, %exprTokenToBool.exit170
  %i.sw = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !15 ; 2 uses
  switch i32 %i.sx, label %bb.db [
    i32 1, label %bb.cz
    i32 2, label %bb.da
  ]

bb.cz:                                            ; preds = %exprTokenToBool.exit170.thread
  %i.sy = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.sz = load double, ptr %i.sy, align 8, !tbaa !18
  %i.ta = fcmp une double %i.sz, 0.000000e+00
  %i.tb = uitofp i1 %i.ta to double
  br label %exprTokenToBool.exit173

bb.da:                                            ; preds = %exprTokenToBool.exit170.thread
  %i.tc = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.td = load i64, ptr %i.tc, align 8, !tbaa !18
  %i.te = icmp eq i64 %i.td, 0
  br i1 %i.te, label %exprTokenToBool.exit173, label %bb.db

bb.db:                                            ; preds = %bb.da, %exprTokenToBool.exit170.thread
  %i.tf = icmp eq i32 %i.sx, 6
  %..i171 = select i1 %i.tf, double 0.000000e+00, double 1.000000e+00
  br label %exprTokenToBool.exit173

exprTokenToBool.exit173:                          ; preds = %bb.cz, %bb.da, %bb.db
  %.0.i172 = phi double [ %i.tb, %bb.cz ], [ 0.000000e+00, %bb.da ], [ %..i171, %bb.db ]
  %i.tg = fcmp une double %.0.i172, 0.000000e+00
  %i.th = uitofp i1 %i.tg to double
  br label %.thread190.sink.split

.loopexit:                                        ; preds = %bb.cl, %.preheader, %bb.cn, %exprStackPop.exit120, %exprTokensStringIn.exit, %bb.cj, %bb.ci, %exprTokenToBool.exit
  %.not111 = icmp eq ptr %.0103, null
  br i1 %.not111, label %bb.dc, label %.thread190

.thread190.sink.split:                            ; preds = %exprTokenToBool.exit170, %exprTokenToBool.exit173, %bb.cy, %bb.cx, %exprTokenToBool.exit164, %exprTokenToBool.exit167, %bb.ct, %bb.cs, %exprTokenToNum.exit160, %exprTokenToNum.exit156, %exprTokenToNum.exit152, %exprTokenToNum.exit148, %exprTokenToNum.exit144, %exprTokenToNum.exit140, %exprTokenToNum.exit136, %exprTokenToNum.exit132, %exprTokenToNum.exit128, %exprTokenToNum.exit124
  %.sink = phi double [ %i.fk, %exprTokenToNum.exit124 ], [ %i.gp, %exprTokenToNum.exit128 ], [ %i.hu, %exprTokenToNum.exit132 ], [ %i.iz, %exprTokenToNum.exit136 ], [ %i.ke, %exprTokenToNum.exit140 ], [ %i.lj, %exprTokenToNum.exit144 ], [ %i.mp, %exprTokenToNum.exit148 ], [ %i.nv, %exprTokenToNum.exit152 ], [ %i.pb, %exprTokenToNum.exit156 ], [ %i.qh, %exprTokenToNum.exit160 ], [ 0.000000e+00, %bb.cs ], [ 0.000000e+00, %exprTokenToBool.exit164 ], [ %i.sn, %exprTokenToBool.exit167 ], [ 0.000000e+00, %bb.ct ], [ 1.000000e+00, %exprTokenToBool.exit170 ], [ %i.th, %exprTokenToBool.exit173 ], [ 1.000000e+00, %bb.cx ], [ 1.000000e+00, %bb.cy ]
  %i.ti = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store double %.sink, ptr %i.ti, align 8, !tbaa !18
  br label %.thread190

.thread190:                                       ; preds = %.thread190.sink.split, %bb.co, %.loopexit
  call void @exprTokenRelease(ptr noundef nonnull %.0103)
  br label %bb.dc

bb.dc:                                            ; preds = %.thread190, %.loopexit
  call void @exprTokenRelease(ptr noundef %.0.i)
  %i.tj = load i32, ptr %i.ap, align 8, !tbaa !27 ; 3 uses
  %i.tk = load i32, ptr %i.bc, align 4, !tbaa !28
  %i.tl = icmp eq i32 %i.tj, %i.tk
  %.pre.i174 = load ptr, ptr %i.ao, align 8, !tbaa !23 ; 2 uses
  br i1 %i.tl, label %bb.dd, label %exprStackPush.exit176

bb.dd:                                            ; preds = %bb.dc
  %i.tm = shl nsw i32 %i.tj, 1                    ; 2 uses
  %i.tn = sext i32 %i.tm to i64
  %i.to = load ptr, ptr @RedisModule_Realloc, align 8, !tbaa !13
  %i.tp = shl nsw i64 %i.tn, 3
  %i.tq = call ptr %i.to(ptr noundef %.pre.i174, i64 noundef %i.tp) #22, !inline_history !55 ; 2 uses
  store ptr %i.tq, ptr %i.ao, align 8, !tbaa !23
  store i32 %i.tm, ptr %i.bc, align 4, !tbaa !28
  %.pre12.i175 = load i32, ptr %i.ap, align 8, !tbaa !27
  br label %exprStackPush.exit176

exprStackPush.exit176:                            ; preds = %bb.dc, %bb.dd
  %i.tr = phi i32 [ %.pre12.i175, %bb.dd ], [ %i.tj, %bb.dc ] ; 2 uses
  %i.ts = phi ptr [ %i.tq, %bb.dd ], [ %.pre.i174, %bb.dc ]
  %i.tt = sext i32 %i.tr to i64
  %i.tu = getelementptr inbounds [8 x i8], ptr %i.ts, i64 %i.tt
  store ptr %i.cr, ptr %i.tu, align 8, !tbaa !19
  %i.tv = add nsw i32 %i.tr, 1                    ; 2 uses
  store i32 %i.tv, ptr %i.ap, align 8, !tbaa !27
  br label %bb.de

bb.de:                                            ; preds = %exprStackPush.exit176, %exprStackPush.exit115, %exprStackPush.exit
  %i.tw = phi i32 [ %i.tv, %exprStackPush.exit176 ], [ %i.cn, %exprStackPush.exit115 ], [ %i.cb, %exprStackPush.exit ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.tx = load i32, ptr %i.ay, align 8, !tbaa !79
  %i.ty = sext i32 %i.tx to i64
  %i.tz = icmp slt i64 %indvars.iv.next, %i.ty
  br i1 %i.tz, label %bb.b, label %._crit_edge, !llvm.loop !82

._crit_edge:                                      ; preds = %bb.de
  %i.ua = icmp eq i32 %i.tw, 0
  br i1 %i.ua, label %.thread196, label %exprStackPop.exit178

exprStackPop.exit178:                             ; preds = %._crit_edge
  %i.ub = add nsw i32 %i.tw, -1                   ; 2 uses
  store i32 %i.ub, ptr %i.ap, align 8, !tbaa !27
  %i.uc = load ptr, ptr %i.ao, align 8, !tbaa !23
  %i.ud = sext i32 %i.ub to i64
  %i.ue = getelementptr inbounds [8 x i8], ptr %i.uc, i64 %i.ud
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !19 ; 5 uses
  %i.ug = icmp eq ptr %i.uf, null
  br i1 %i.ug, label %.thread196, label %bb.df

bb.df:                                            ; preds = %exprStackPop.exit178
  %i.uh = getelementptr inbounds nuw i8, ptr %i.uf, i64 4
  %i.ui = load i32, ptr %i.uh, align 4, !tbaa !15 ; 2 uses
  switch i32 %i.ui, label %bb.di [
    i32 1, label %bb.dg
    i32 2, label %bb.dh
  ]

bb.dg:                                            ; preds = %bb.df
  %i.uj = getelementptr inbounds nuw i8, ptr %i.uf, i64 16
  %i.uk = load double, ptr %i.uj, align 8, !tbaa !18
  %i.ul = fcmp une double %i.uk, 0.000000e+00
  %i.um = uitofp i1 %i.ul to double
  br label %exprTokenToBool.exit181

bb.dh:                                            ; preds = %bb.df
  %i.un = getelementptr inbounds nuw i8, ptr %i.uf, i64 24
  %i.uo = load i64, ptr %i.un, align 8, !tbaa !18
  %i.up = icmp eq i64 %i.uo, 0
  br i1 %i.up, label %exprTokenToBool.exit181, label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.df
  %i.uq = icmp eq i32 %i.ui, 6
  %..i179 = select i1 %i.uq, double 0.000000e+00, double 1.000000e+00
  br label %exprTokenToBool.exit181

exprTokenToBool.exit181:                          ; preds = %bb.dg, %bb.dh, %bb.di
  %.0.i180 = phi double [ %i.um, %bb.dg ], [ 0.000000e+00, %bb.dh ], [ %..i179, %bb.di ]
  %i.ur = fptosi double %.0.i180 to i32
  call void @exprTokenRelease(ptr noundef nonnull %i.uf)
  br label %.thread196

.thread196:                                       ; preds = %bb.c, %bb.d, %exprStackReset.exit, %._crit_edge, %exprTokenToBool.exit181, %exprStackPop.exit178
  %.5 = phi i32 [ 0, %._crit_edge ], [ %i.ur, %exprTokenToBool.exit181 ], [ 0, %exprStackPop.exit178 ], [ 0, %exprStackReset.exit ], [ 0, %bb.d ], [ 0, %bb.c ]
  ret i32 %.5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define dso_local ptr @createProjectionMatrix(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @RedisModule_Alloc, align 8, !tbaa !13
  %i.b = zext i32 %0 to i64                       ; 2 uses
  %i.c = shl nuw nsw i64 %i.b, 2
  %i.d = zext i32 %1 to i64
  %i.e = mul i64 %i.c, %i.d
  %i.f = tail call ptr %i.a(i64 noundef %i.e) #22 ; 2 uses
  %i.g = uitofp i32 %0 to double
  %sqrt = tail call nnan ninf double @llvm.sqrt.f64(double %i.g)
  %i.h = fdiv nnan double 1.000000e+00, %sqrt
  %i.i = fptrunc nnan double %i.h to float        ; 2 uses
  %.not = icmp eq i32 %1, 0
  %.not23 = icmp eq i32 %0, 0
  %or.cond = or i1 %.not, %.not23
  br i1 %or.cond, label %._crit_edge22, label %.preheader.us

.preheader.us:                                    ; preds = %bb.a, %._crit_edge.us
  %.021.us = phi i32 [ %2, %._crit_edge.us ], [ 0, %bb.a ] ; 3 uses
  %i.j = mul i32 %.021.us, %0
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %bit_count.exit.us
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %bit_count.exit.us ] ; 2 uses
  %i.k = trunc nuw i64 %indvars.iv to i32         ; 2 uses
  %i.l = add i32 %i.j, %i.k
  %i.m = and i32 %.021.us, %i.k                   ; 2 uses
  %.not6.i.us = icmp eq i32 %i.m, 0
  br i1 %.not6.i.us, label %bit_count.exit.us, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %bb.b, %.lr.ph.i.us
  %.08.i.us = phi i32 [ %i.n, %.lr.ph.i.us ], [ 0, %bb.b ]
  %.057.i.us = phi i32 [ %i.o, %.lr.ph.i.us ], [ %i.m, %bb.b ] ; 2 uses
  %i.n = add i32 %.057.i.us, %.08.i.us            ; 2 uses
  %i.o = lshr i32 %.057.i.us, 1                   ; 2 uses
  %.not.i.us = icmp eq i32 %i.o, 0
  br i1 %.not.i.us, label %bit_count.exit.us.loopexit, label %.lr.ph.i.us, !llvm.loop !83

bit_count.exit.us.loopexit:                       ; preds = %.lr.ph.i.us
  %i.p = and i32 %i.n, 1
  %i.q = icmp eq i32 %i.p, 0
  %i.r = select i1 %i.q, i32 1, i32 -1
  %i.s = sitofp i32 %i.r to float
  %i.t = fmul nnan float %i.s, %i.i
  br label %bit_count.exit.us

bit_count.exit.us:                                ; preds = %bit_count.exit.us.loopexit, %bb.b
  %.0.lcssa.i.us = phi float [ %i.i, %bb.b ], [ %i.t, %bit_count.exit.us.loopexit ]
  %i.u = zext i32 %i.l to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.u
  store float %.0.lcssa.i.us, ptr %i.v, align 4, !tbaa !84
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.b
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !86

._crit_edge.us:                                   ; preds = %bit_count.exit.us
  %2 = add nuw i32 %.021.us, 1                    ; 2 uses
  %exitcond26.not = icmp eq i32 %2, %1
  br i1 %exitcond26.not, label %._crit_edge22, label %.preheader.us, !llvm.loop !87

._crit_edge22:                                    ; preds = %._crit_edge.us, %bb.a
  ret ptr %i.f
}

; Function Attrs: nounwind uwtable
define dso_local ptr @applyProjection(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @RedisModule_Alloc, align 8, !tbaa !13
  %i.b = zext i32 %3 to i64                       ; 2 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 2 uses
  %i.d = tail call ptr %i.a(i64 noundef %i.c) #22 ; 3 uses
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %._crit_edge25, label %.lr.ph24

.lr.ph24:                                         ; preds = %bb.a
  %.not26 = icmp eq i32 %2, 0
  br i1 %.not26, label %.lr.ph24.split.preheader, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph24
  %wide.trip.count = zext i32 %2 to i64           ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.e = icmp ult i32 %2, 4
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod38 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph24.split.preheader:                         ; preds = %.lr.ph24
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.d, i8 0, i64 %i.c, i1 false), !tbaa !84
  br label %._crit_edge25

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv29 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next30, %._crit_edge.us ] ; 3 uses
  %i.f = trunc nuw i64 %indvars.iv29 to i32
  %i.g = mul i32 %2, %i.f
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.h ; 5 uses
  br i1 %i.e, label %.epil.preheader, label %.lr.ph.us.new

.lr.ph.us.new:                                    ; preds = %.lr.ph.us, %.lr.ph.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.us.new ], [ 0, %.lr.ph.us ] ; 6 uses
  %.01820.us = phi float [ %i.ac, %.lr.ph.us.new ], [ 0.000000e+00, %.lr.ph.us ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us.new ], [ 0, %.lr.ph.us ]
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load float, ptr %i.j, align 4, !tbaa !84
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.m = load float, ptr %i.l, align 4, !tbaa !84
  %i.n = tail call float @llvm.fmuladd.f32(float %i.k, float %i.m, float %.01820.us)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next
  %i.p = load float, ptr %i.o, align 4, !tbaa !84
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  %i.r = load float, ptr %i.q, align 4, !tbaa !84
  %i.s = tail call float @llvm.fmuladd.f32(float %i.p, float %i.r, float %i.n)
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.1
  %i.u = load float, ptr %i.t, align 4, !tbaa !84
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.1
  %i.w = load float, ptr %i.v, align 4, !tbaa !84
  %i.x = tail call float @llvm.fmuladd.f32(float %i.u, float %i.w, float %i.s)
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.2
  %i.z = load float, ptr %i.y, align 4, !tbaa !84
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.2
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !84
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.z, float %i.ab, float %i.x) ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.unr-lcssa, label %.lr.ph.us.new, !llvm.loop !88

._crit_edge.us.unr-lcssa:                         ; preds = %.lr.ph.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.lr.ph.us
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next.3, %._crit_edge.us.unr-lcssa ]
  %.01820.us.epil.init = phi float [ 0.000000e+00, %.lr.ph.us ], [ %i.ac, %._crit_edge.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod38)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 3 uses
  %.01820.us.epil = phi float [ %.01820.us.epil.init, %.epil.preheader ], [ %i.ah, %bb.b ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.epil
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !84
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.epil
  %i.ag = load float, ptr %i.af, align 4, !tbaa !84
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.ag, float %.01820.us.epil) ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.b, !llvm.loop !89

._crit_edge.us:                                   ; preds = %bb.b, %._crit_edge.us.unr-lcssa
  %.lcssa = phi float [ %i.ac, %._crit_edge.us.unr-lcssa ], [ %i.ah, %bb.b ]
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv29
  store float %.lcssa, ptr %i.ai, align 4, !tbaa !84
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1 ; 2 uses
  %exitcond33.not = icmp eq i64 %indvars.iv.next30, %i.b
  br i1 %exitcond33.not, label %._crit_edge25, label %.lr.ph.us, !llvm.loop !91

._crit_edge25:                                    ; preds = %._crit_edge.us, %.lr.ph24.split.preheader, %bb.a
  ret ptr %i.d
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #15

; Function Attrs: nounwind uwtable
define dso_local ptr @createVectorSetObject(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @RedisModule_Alloc, align 8, !tbaa !13
  %i.b = tail call ptr %i.a(i64 noundef 112) #22  ; 10 uses
  %i.c = load i64, ptr @VectorSetTypeNextId, align 8, !tbaa !92 ; 2 uses
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr @VectorSetTypeNextId, align 8, !tbaa !92
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i64 %i.c, ptr %i.e, align 8, !tbaa !94
  %i.f = tail call ptr @hnsw_new(i32 noundef %0, i32 noundef %1, i32 noundef %2) #22 ; 2 uses
  store ptr %i.f, ptr %i.b, align 8, !tbaa !99
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @RedisModule_Free, align 8, !tbaa !13
  tail call void %i.g(ptr noundef nonnull %i.b) #22
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @RedisModule_CreateDict, align 8, !tbaa !13
  %i.i = tail call ptr %i.h(ptr noundef null) #22
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !100
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr null, ptr %i.k, align 8, !tbaa !101
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 0, ptr %i.l, align 8, !tbaa !102
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i64 0, ptr %i.m, align 8, !tbaa !103
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store atomic i32 0, ptr %i.n seq_cst, align 8, !tbaa !104
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.p = tail call i32 @pthread_rwlock_init(ptr noundef nonnull %i.o, ptr noundef null) #22
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr @RedisModule__Assert, align 8, !tbaa !13
  tail call void %i.r(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef 250) #22
  tail call void @exit(i32 noundef 1) #23
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.b, %bb.c ]
  ret ptr %.0
}

declare ptr @hnsw_new(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: nounwind
declare i32 @pthread_rwlock_init(ptr noundef, ptr noundef) local_unnamed_addr #17

; Function Attrs: nounwind uwtable
define dso_local void @vectorSetReleaseNodeValue(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr @RedisModule_FreeString, align 8, !tbaa !13
  %i.b = load ptr, ptr %0, align 8, !tbaa !105
  tail call void %i.a(ptr noundef null, ptr noundef %i.b) #22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !108  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @RedisModule_FreeString, align 8, !tbaa !13
  tail call void %i.e(ptr noundef null, ptr noundef nonnull %i.d) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load ptr, ptr @RedisModule_Free, align 8, !tbaa !13
  tail call void %i.f(ptr noundef nonnull %0) #22
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @vectorSetReleaseObject(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !99     ; 2 uses
  %.not12 = icmp eq ptr %i.a, null
  br i1 %.not12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @hnsw_free(ptr noundef nonnull %i.a, ptr noundef nonnull @vectorSetReleaseNodeValue) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !100  ; 2 uses
  %.not13 = icmp eq ptr %i.c, null
  br i1 %.not13, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = load ptr, ptr @RedisModule_FreeDict, align 8, !tbaa !13
  tail call void %i.d(ptr noundef null, ptr noundef nonnull %i.c) #22
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !101  ; 2 uses
  %.not14 = icmp eq ptr %i.f, null
  br i1 %.not14, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = load ptr, ptr @RedisModule_Free, align 8, !tbaa !13
  tail call void %i.g(ptr noundef nonnull %i.f) #22
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = tail call i32 @pthread_rwlock_destroy(ptr noundef nonnull %i.h) #22 ; 0 uses
  %i.j = load ptr, ptr @RedisModule_Free, align 8, !tbaa !13
  tail call void %i.j(ptr noundef nonnull %0) #22
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  ret void
}

declare void @hnsw_free(ptr noundef, ptr noundef) local_unnamed_addr #16

; Function Attrs: nounwind
declare i32 @pthread_rwlock_destroy(ptr noundef) local_unnamed_addr #17

; Function Attrs: nounwind uwtable
define dso_local void @vectorSetWaitAllBackgroundClients(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.b
  %i.b = load atomic i32, ptr %i.a seq_cst, align 4, !tbaa !104
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %.loopexit, !llvm.loop !109

.loopexit:                                        ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = tail call i32 @pthread_rwlock_wrlock(ptr noundef nonnull %i.d) #22
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.g = load ptr, ptr @RedisModule__Assert, align 8, !tbaa !13
  tail call void %i.g(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.27, i32 noundef 286) #22
  tail call void @exit(i32 noundef 1) #23
  unreachable

bb.d:                                             ; preds = %.loopexit
  %i.h = tail call i32 @pthread_rwlock_unlock(ptr noundef nonnull %i.d) #22 ; 0 uses
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_rwlock_wrlock(ptr noundef) local_unnamed_addr #17

; Function Attrs: nounwind
declare i32 @pthread_rwlock_unlock(ptr noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef nonnull ptr @vectorSetGetQuantName(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !99
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1656
  %i.c = load i32, ptr %i.b, align 8, !tbaa !110  ; 2 uses
  %i.d = icmp ult i32 %i.c, 3
  br i1 %i.d, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.e = zext nneg i32 %i.c to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.VINFO_RedisCommand, i64 %i.e
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.32, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @vectorSetInsert(ptr noundef %0, ptr noundef %1, ptr noundef %2, float noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
end_hunk_0
begin_hunk_1_@vectorSetInsert:bb.a

bb.l:                                             ; preds = %bb.a
  %i.ah = load ptr, ptr @RedisModule_Alloc, align 8, !tbaa !13
  %i.ai = tail call ptr %i.ah(i64 noundef 16) #22 ; 4 uses
  store ptr %4, ptr %i.ai, align 8, !tbaa !105
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %5, ptr %i.aj, align 8, !tbaa !108
  %i.ak = load ptr, ptr %0, align 8, !tbaa !99
  %i.al = tail call ptr @hnsw_insert(ptr noundef %i.ak, ptr noundef %1, ptr noundef %2, float noundef %3, i64 noundef 0, ptr noundef nonnull %i.ai, i32 noundef %7) #22 ; 3 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.an = load ptr, ptr @RedisModule_Free, align 8, !tbaa !13
  tail call void %i.an(ptr noundef nonnull %i.ai) #22
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %.not53 = icmp eq ptr %5, null
  br i1 %.not53, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !103
  %i.aq = add i64 %i.ap, 1
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !103
  %i.ar = load ptr, ptr @RedisModule_DictSet, align 8, !tbaa !13
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !100
  %i.at = tail call i32 %i.ar(ptr noundef %i.as, ptr noundef %4, ptr noundef nonnull %i.al) #22 ; 0 uses
  %i.au = load ptr, ptr @RedisModule_RetainString, align 8, !tbaa !13
  tail call void %i.au(ptr noundef null, ptr noundef %4) #22
  %i.av = load ptr, ptr @RedisModule_RetainString, align 8, !tbaa !13
  tail call void %i.av(ptr noundef null, ptr noundef nonnull %5) #22
  br label %bb.p

.critedge:                                        ; preds = %bb.n
  %i.aw = load ptr, ptr @RedisModule_DictSet, align 8, !tbaa !13
  %i.ax = load ptr, ptr %i.c, align 8, !tbaa !100
  %i.ay = tail call i32 %i.aw(ptr noundef %i.ax, ptr noundef %4, ptr noundef nonnull %i.al) #22 ; 0 uses
  %i.az = load ptr, ptr @RedisModule_RetainString, align 8, !tbaa !13
  tail call void %i.az(ptr noundef null, ptr noundef %4) #22
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %.critedge, %bb.o, %bb.b, %bb.k, %bb.f
  %.1 = phi i32 [ 0, %bb.b ], [ 0, %bb.f ], [ 0, %bb.k ], [ 0, %bb.m ], [ 1, %.critedge ], [ 1, %bb.o ]
  ret i32 %.1
}

declare i32 @hnsw_delete_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #16

declare ptr @hnsw_insert(ptr noundef, ptr noundef, ptr noundef, float noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define dso_local ptr @parseVector(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %i.d = alloca double, align 8                   ; 5 uses
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %4, align 4, !tbaa !9
  %i.e = add nsw i32 %2, 2                        ; 2 uses
  %i.f = icmp sgt i32 %1, %i.e
  br i1 %i.f, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @RedisModule_StringPtrLen, align 8, !tbaa !13
  %i.h = sext i32 %2 to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %i.h ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !115
  %i.k = tail call ptr %i.g(ptr noundef %i.j, ptr noundef null) #22
  %i.l = tail call i32 @strcasecmp(ptr noundef %i.k, ptr noundef nonnull @.str.34) #25
  %.not90 = icmp eq i32 %i.l, 0
  br i1 %.not90, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.m = load ptr, ptr @RedisModule_StringToLongLong, align 8, !tbaa !13
  %i.n = getelementptr i8, ptr %i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !115
  %i.p = call i32 %i.m(ptr noundef %i.o, ptr noundef nonnull %i.a) #22
  %i.q = icmp eq i32 %i.p, 0
  %i.r = load i64, ptr %i.a, align 8              ; 2 uses
  %i.s = icmp sgt i64 %i.r, 0
  %or.cond.not = select i1 %i.q, i1 %i.s, i1 false
  br i1 %or.cond.not, label %bb.e, label %.critedge101

bb.e:                                             ; preds = %bb.d
  %i.t = trunc i64 %i.r to i32
  store i32 %i.t, ptr %4, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.a, %bb.c, %bb.b
  %.173 = phi i32 [ 2, %bb.c ], [ 4, %bb.e ], [ 2, %bb.b ], [ 2, %bb.a ] ; 2 uses
  %.163 = phi i32 [ %2, %bb.c ], [ %i.e, %bb.e ], [ %2, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %i.u = load ptr, ptr @RedisModule_StringPtrLen, align 8, !tbaa !13
  %i.v = sext i32 %.163 to i64
  %i.w = getelementptr inbounds [8 x i8], ptr %0, i64 %i.v ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !115
  %i.y = call ptr %i.u(ptr noundef %i.x, ptr noundef null) #22 ; 2 uses
  %i.z = call i32 @strcasecmp(ptr noundef %i.y, ptr noundef nonnull @.str.35) #25
  %.not93 = icmp eq i32 %i.z, 0
  br i1 %.not93, label %bb.f, label %bb.j

bb.f:                                             ; preds = %.critedge
  %i.aa = add nsw i32 %.163, 2
  %i.ab = icmp slt i32 %1, %i.aa
  br i1 %i.ab, label %bb.s, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.ac = load ptr, ptr @RedisModule_StringPtrLen, align 8, !tbaa !13
  %i.ad = getelementptr i8, ptr %i.w, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !115
  %i.af = call ptr %i.ac(ptr noundef %i.ae, ptr noundef nonnull %i.b) #22
  %i.ag = load i64, ptr %i.b, align 8, !tbaa !92  ; 4 uses
  %i.ah = and i64 %i.ag, 3
  %i.ai = icmp ne i64 %i.ah, 0
  %i.aj = icmp ult i64 %i.ag, 4
  %or.cond7 = or i1 %i.aj, %i.ai
  br i1 %or.cond7, label %.critedge107, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = lshr exact i64 %i.ag, 2
  store i64 %i.ak, ptr %3, align 8, !tbaa !92
  %i.al = load ptr, ptr @RedisModule_Alloc, align 8, !tbaa !13
  %i.am = call ptr %i.al(i64 noundef %i.ag) #22   ; 3 uses
  %.not94 = icmp eq ptr %i.am, null
  br i1 %.not94, label %.critedge107, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = load i64, ptr %i.b, align 8, !tbaa !92
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.am, ptr align 1 %i.af, i64 %i.an, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %bb.q

bb.j:                                             ; preds = %.critedge
  %i.ao = call i32 @strcasecmp(ptr noundef %i.y, ptr noundef nonnull @.str.36) #25
  %.not95 = icmp eq i32 %i.ao, 0
  br i1 %.not95, label %bb.k, label %bb.s

bb.k:                                             ; preds = %bb.j
  %i.ap = add nsw i32 %.163, 2                    ; 2 uses
  %i.aq = icmp slt i32 %1, %i.ap
  br i1 %i.aq, label %bb.s, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %i.ar = load ptr, ptr @RedisModule_StringToLongLong, align 8, !tbaa !13
  %i.as = getelementptr i8, ptr %i.w, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !115
  %i.au = call i32 %i.ar(ptr noundef %i.at, ptr noundef nonnull %i.c) #22
  %i.av = icmp ne i32 %i.au, 0
  %i.aw = load i64, ptr %i.c, align 8             ; 4 uses
  %i.ax = icmp slt i64 %i.aw, 1
  %or.cond9 = select i1 %i.av, i1 true, i1 %i.ax
  br i1 %or.cond9, label %.critedge105, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = sext i32 %1 to i64
  %i.az = sext i32 %i.ap to i64                   ; 2 uses
  %i.ba = add nsw i64 %i.aw, %i.az
  %i.bb = icmp sgt i64 %i.ba, %i.ay
  br i1 %i.bb, label %.critedge105, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 %i.aw, ptr %3, align 8, !tbaa !92
  %i.bc = load ptr, ptr @RedisModule_Alloc, align 8, !tbaa !13
  %i.bd = shl i64 %i.aw, 2
  %i.be = call ptr %i.bc(i64 noundef %i.bd) #22   ; 4 uses
  %.not96 = icmp eq ptr %i.be, null
  br i1 %.not96, label %.critedge105, label %.preheader

.preheader:                                       ; preds = %bb.n
  %i.bf = load i64, ptr %i.c, align 8, !tbaa !116 ; 2 uses
  %.not98108 = icmp sgt i64 %i.bf, 0
  br i1 %.not98108, label %.lr.ph.preheader, label %.critedge103

.lr.ph.preheader:                                 ; preds = %.preheader
  %invariant.gep = getelementptr [8 x i8], ptr %0, i64 %i.az
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.o ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  %i.bg = load ptr, ptr @RedisModule_StringToDouble, align 8, !tbaa !13
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.bh = load ptr, ptr %gep, align 8, !tbaa !115
  %i.bi = call i32 %i.bg(ptr noundef %i.bh, ptr noundef nonnull %i.d) #22
  %.not97 = icmp eq i32 %i.bi, 0
  br i1 %.not97, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph
  %i.bj = load double, ptr %i.d, align 8, !tbaa !118
  %i.bk = fptrunc double %i.bj to float
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv
  store float %i.bk, ptr %i.bl, align 4, !tbaa !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bm = load i64, ptr %i.c, align 8, !tbaa !116 ; 2 uses
  %.not98 = icmp sgt i64 %i.bm, %indvars.iv.next
  br i1 %.not98, label %.lr.ph, label %.critedge103, !llvm.loop !120

bb.p:                                             ; preds = %.lr.ph
  %i.bn = load ptr, ptr @RedisModule_Free, align 8, !tbaa !13
  call void %i.bn(ptr noundef nonnull %i.be) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  br label %.critedge105

.critedge103:                                     ; preds = %bb.o, %.preheader
  %i.bo = phi i64 [ %i.bf, %.preheader ], [ %i.bm, %bb.o ]
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = add i32 %.173, %i.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %bb.q

bb.q:                                             ; preds = %bb.i, %.critedge103
  %.476 = phi i32 [ %i.bq, %.critedge103 ], [ %.173, %bb.i ]
  %.266 = phi ptr [ %i.be, %.critedge103 ], [ %i.am, %bb.i ] ; 2 uses
  %.not99 = icmp eq ptr %5, null
  br i1 %.not99, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 %.476, ptr %5, align 4, !tbaa !9
  br label %bb.s

.critedge105:                                     ; preds = %bb.p, %bb.n, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %bb.s

.critedge101:                                     ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.s

.critedge107:                                     ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %bb.s

bb.s:                                             ; preds = %.critedge107, %bb.f, %bb.k, %.critedge105, %bb.j, %bb.r, %bb.q, %.critedge101
  %.8 = phi ptr [ null, %.critedge101 ], [ %.266, %bb.q ], [ null, %bb.k ], [ null, %bb.f ], [ null, %bb.j ], [ null, %.critedge105 ], [ null, %.critedge107 ], [ %.266, %bb.r ]
  ret ptr %.8
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @VADD_thread(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @pthread_self() #24
  %i.b = tail call i32 @pthread_detach(i64 noundef %i.a) #22 ; 0 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.k = tail call i32 @pthread_rwlock_rdlock(ptr noundef nonnull %i.j) #22
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr @RedisModule__Assert, align 8, !tbaa !13
  tail call void %i.m(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.27, i32 noundef 466) #22
  tail call void @exit(i32 noundef 1) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = ptrtoint ptr %i.i to i64
  %i.o = trunc i64 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.q = atomicrmw sub ptr %i.p, i32 1 seq_cst, align 8 ; 0 uses
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !99
  %i.s = tail call ptr @hnsw_prepare_insert(ptr noundef %i.r, ptr noundef %i.g, ptr noundef null, float noundef 0.000000e+00, i64 noundef 0, i32 noundef %i.o) #22
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.s, ptr %i.t, align 8, !tbaa !13
  %i.u = tail call i32 @pthread_rwlock_unlock(ptr noundef nonnull %i.j) #22 ; 0 uses
  %i.v = load ptr, ptr @RedisModule_BlockedClientMeasureTimeEnd, align 8, !tbaa !13
  %i.w = tail call i32 %i.v(ptr noundef %i.c) #22 ; 0 uses
  %i.x = load ptr, ptr @RedisModule_UnblockClient, align 8, !tbaa !13
  %i.y = tail call i32 %i.x(ptr noundef %i.c, ptr noundef nonnull %0) #22 ; 0 uses
  ret ptr null
}

; Function Attrs: nounwind
declare i32 @pthread_detach(i64 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @pthread_self() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @pthread_rwlock_rdlock(ptr noundef) local_unnamed_addr #17

declare ptr @hnsw_prepare_insert(ptr noundef, ptr noundef, ptr noundef, float noundef, i64 noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @VADD_CASReply(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 %2) #0 {
bb.a:
  %i.a = load ptr, ptr @RedisModule_AutoMemory, align 8, !tbaa !13
  tail call void %i.a(ptr noundef %0) #22
  %i.b = load ptr, ptr @RedisModule_GetBlockedClientPrivateData, align 8, !tbaa !13
  %i.c = tail call ptr %i.b(ptr noundef %0) #22   ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !13   ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !13   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !13
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = trunc i64 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !13   ; 3 uses
  %i.s = load ptr, ptr @RedisModule_Free, align 8, !tbaa !13
  tail call void %i.s(ptr noundef %i.c) #22
  %i.t = load ptr, ptr @RedisModule_OpenKey, align 8, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !115
  %i.w = tail call ptr %i.t(ptr noundef %0, ptr noundef %i.v, i32 noundef 3) #22 ; 3 uses
  %i.x = load ptr, ptr @RedisModule_KeyType, align 8, !tbaa !13
  %i.y = tail call i32 %i.x(ptr noundef %i.w) #22
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = load ptr, ptr @RedisModule_ModuleTypeGetType, align 8, !tbaa !13
  %i.aa = tail call ptr %i.z(ptr noundef %i.w) #22
  %i.ab = load ptr, ptr @VectorSetType, align 8, !tbaa !121
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.ad = load ptr, ptr @RedisModule_ModuleTypeGetValue, align 8, !tbaa !13
  %i.ae = tail call ptr %i.ad(ptr noundef %i.w) #22 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !94
  %.not53 = icmp ne i64 %i.ag, %i.f
  %.not5468 = icmp eq ptr %i.ae, null
  %.not54 = or i1 %.not5468, %.not53
  br i1 %.not54, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = load ptr, ptr @RedisModule_DictGet, align 8, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !100
  %i.ak = tail call ptr %i.ah(ptr noundef %i.aj, ptr noundef %i.j, ptr noundef null) #22
  %.not55 = icmp eq ptr %i.ak, null
  br i1 %.not55, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.al = load ptr, ptr @RedisModule_Alloc, align 8, !tbaa !13
  %i.am = tail call ptr %i.al(i64 noundef 16) #22 ; 4 uses
  store ptr %i.j, ptr %i.am, align 8, !tbaa !105
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.r, ptr %i.an, align 8, !tbaa !108
  %i.ao = icmp eq ptr %i.l, null
  br i1 %i.ao, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = load ptr, ptr %i.ae, align 8, !tbaa !99
  %i.aq = tail call ptr @hnsw_try_commit_insert(ptr noundef %i.ap, ptr noundef nonnull %i.l, ptr noundef nonnull %i.am) #22 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.g, label %.thread65

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.as = load ptr, ptr %i.ae, align 8, !tbaa !99
  %i.at = tail call ptr @hnsw_insert(ptr noundef %i.as, ptr noundef %i.h, ptr noundef null, float noundef 0.000000e+00, i64 noundef 0, ptr noundef nonnull %i.am, i32 noundef %i.p) #22 ; 2 uses
  %.not56 = icmp eq ptr %i.at, null
  br i1 %.not56, label %bb.h, label %.thread65

bb.h:                                             ; preds = %bb.g
  %i.au = load ptr, ptr @RedisModule__Assert, align 8, !tbaa !13
  tail call void %i.au(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.27, i32 noundef 545) #22
  tail call void @exit(i32 noundef 1) #23
  unreachable

.thread65:                                        ; preds = %bb.g, %bb.f
  %.0 = phi ptr [ %i.at, %bb.g ], [ %i.aq, %bb.f ]
  %i.av = load ptr, ptr @RedisModule_DictSet, align 8, !tbaa !13
  %i.aw = load ptr, ptr %i.ai, align 8, !tbaa !100
  %i.ax = tail call i32 %i.av(ptr noundef %i.aw, ptr noundef %i.j, ptr noundef nonnull %.0) #22 ; 0 uses
  %i.ay = load ptr, ptr @RedisModule_ReplicateVerbatim, align 8, !tbaa !13
  %i.az = tail call i32 %i.ay(ptr noundef %0) #22 ; 0 uses
  %i.ba = load ptr, ptr @RedisModule_ReplyWithBool, align 8, !tbaa !13
  %i.bb = tail call i32 %i.ba(ptr noundef %0, i32 noundef 1) #22 ; 0 uses
  br label %bb.m

bb.i:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  tail call void @hnsw_free_insert_context(ptr noundef %i.l) #22
  %i.bc = load ptr, ptr @RedisModule_ReplyWithBool, align 8, !tbaa !13
  %i.bd = tail call i32 %i.bc(ptr noundef %0, i32 noundef 1) #22 ; 0 uses
end_hunk_1
begin_hunk_2_@VADD_RedisCommand:bb.a
  %i.ga = call ptr %i.fz(i64 noundef 64) #22      ; 10 uses
  store ptr %i.fy, ptr %i.ga, align 8, !tbaa !13
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  store ptr %i.dx, ptr %i.gb, align 8, !tbaa !13
  %i.gc = getelementptr inbounds nuw i8, ptr %i.dx, i64 88
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !94
  %i.ge = inttoptr i64 %i.gd to ptr
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  store ptr %i.ge, ptr %i.gf, align 8, !tbaa !13
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  store ptr %.1163, ptr %i.gg, align 8, !tbaa !13
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ga, i64 32
  store ptr %i.dv, ptr %i.gh, align 8, !tbaa !13
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ga, i64 40
  store ptr null, ptr %i.gi, align 8, !tbaa !13
  %i.gj = load i64, ptr %i.d, align 8, !tbaa !116
  %i.gk = inttoptr i64 %i.gj to ptr
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ga, i64 48
  store ptr %i.gk, ptr %i.gl, align 8, !tbaa !13
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ga, i64 56
  store ptr %.0164.lcssa, ptr %i.gm, align 8, !tbaa !13
  %i.gn = load ptr, ptr @RedisModule_RetainString, align 8, !tbaa !13
  call void %i.gn(ptr noundef %0, ptr noundef %i.dv) #22
  %.not216 = icmp eq ptr %.0164.lcssa, null       ; 2 uses
  br i1 %.not216, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.go = load ptr, ptr @RedisModule_RetainString, align 8, !tbaa !13
  call void %i.go(ptr noundef %0, ptr noundef nonnull %.0164.lcssa) #22
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.gp = load ptr, ptr @RedisModule_BlockedClientMeasureTimeStart, align 8, !tbaa !13
  %i.gq = call i32 %i.gp(ptr noundef %i.fy) #22   ; 0 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.dx, i64 104 ; 2 uses
  %i.gs = atomicrmw add ptr %i.gr, i32 1 seq_cst, align 8 ; 0 uses
  %i.gt = call i32 @pthread_create(ptr noundef nonnull %i.f, ptr noundef null, ptr noundef nonnull @VADD_thread, ptr noundef nonnull %i.ga) #22
  %.not217.not = icmp eq i32 %i.gt, 0
  br i1 %.not217.not, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gu = atomicrmw sub ptr %i.gr, i32 1 seq_cst, align 8 ; 0 uses
  %i.gv = load ptr, ptr @RedisModule_AbortBlock, align 8, !tbaa !13
  %i.gw = call i32 %i.gv(ptr noundef %i.fy) #22   ; 0 uses
  %i.gx = load ptr, ptr @RedisModule_Free, align 8, !tbaa !13
  call void %i.gx(ptr noundef nonnull %i.ga) #22
  %i.gy = load ptr, ptr @RedisModule_FreeString, align 8, !tbaa !13
  call void %i.gy(ptr noundef %0, ptr noundef %i.dv) #22
  br i1 %.not216, label %.thread252, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gz = load ptr, ptr @RedisModule_FreeString, align 8, !tbaa !13
  call void %i.gz(ptr noundef %0, ptr noundef nonnull %.0164.lcssa) #22
  br label %.thread252

.thread252:                                       ; preds = %bb.av, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  br label %.critedge

bb.aw:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  br label %.thread232

.critedge:                                        ; preds = %.thread252, %.thread244, %bb.ap, %bb.aq
  %.1163250 = phi ptr [ %.0162, %.thread244 ], [ %.1163, %bb.ap ], [ %.1163, %.thread252 ], [ %.1163, %bb.aq ] ; 2 uses
  %.0171249 = phi ptr [ %i.cs, %.thread244 ], [ %i.dx, %bb.ap ], [ %i.dx, %.thread252 ], [ %i.dx, %bb.aq ]
  %i.ha = phi ptr [ %i.ck, %.thread244 ], [ %i.dv, %bb.ap ], [ %i.dv, %.thread252 ], [ %i.dv, %bb.aq ]
  %i.hb = load i64, ptr %i.d, align 8, !tbaa !116
  %i.hc = trunc i64 %i.hb to i32
  %i.hd = call i32 @vectorSetInsert(ptr noundef nonnull %.0171249, ptr noundef %.1163250, ptr noundef null, float noundef 0.000000e+00, ptr noundef %i.ha, ptr noundef %.0164.lcssa, i32 noundef 1, i32 noundef %i.hc) ; 2 uses
  %i.he = load ptr, ptr @RedisModule_Free, align 8, !tbaa !13
  call void %i.he(ptr noundef %.1163250) #22
  %i.hf = load ptr, ptr @RedisModule_ReplyWithBool, align 8, !tbaa !13
  %i.hg = call i32 %i.hf(ptr noundef %0, i32 noundef %i.hd) #22 ; 0 uses
  %.not218 = icmp eq i32 %i.hd, 0
  br i1 %.not218, label %.thread232, label %bb.ax

bb.ax:                                            ; preds = %.critedge
  %i.hh = load ptr, ptr @RedisModule_ReplicateVerbatim, align 8, !tbaa !13
  %i.hi = call i32 %i.hh(ptr noundef %0) #22      ; 0 uses
  br label %.thread232

.thread232:                                       ; preds = %bb.v, %bb.o, %bb.k, %bb.aw, %bb.ac, %bb.af, %bb.ah, %._crit_edge272, %bb.am, %bb.an, %bb.ax, %.critedge, %bb.y, %bb.f, %bb.d
  %.7 = phi i32 [ %i.r, %bb.f ], [ %i.m, %bb.d ], [ 0, %.critedge ], [ %i.cg, %bb.y ], [ %i.dl, %bb.ac ], [ %i.fe, %bb.am ], [ 0, %bb.aw ], [ %i.ed, %bb.af ], [ %i.ek, %bb.ah ], [ %i.fb, %._crit_edge272 ], [ %i.bo, %bb.v ], [ %i.fm, %bb.an ], [ 0, %bb.ax ], [ %i.bc, %bb.o ], [ %i.an, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.ay

bb.ay:                                            ; preds = %.thread232, %bb.b
  %.8 = phi i32 [ %i.j, %bb.b ], [ %.7, %.thread232 ]
  ret i32 %.8
}

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #17

; Function Attrs: nounwind uwtable
define dso_local i32 @vectorSetFilterCallback(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !108  ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.e = load ptr, ptr @RedisModule_StringPtrLen, align 8, !tbaa !13
  %i.f = call ptr %i.e(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) #22
  %i.g = load i64, ptr %i.a, align 8, !tbaa !92
  %i.h = call i32 @exprRun(ptr noundef %1, ptr noundef %i.f, i64 noundef %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.h, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @VSIM_execute(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3, float noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr noundef %8, i64 noundef %9, i32 noundef %10) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %7, 0
  %spec.store.select = select i1 %i.a, i64 100, i64 %7
  %spec.select = tail call i64 @llvm.umax.i64(i64 %3, i64 %spec.store.select)
  %i.b = load ptr, ptr %1, align 8, !tbaa !99
  %i.c = tail call i32 @hnsw_acquire_read_slot(ptr noundef %i.b) #22 ; 4 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !99
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !129
  %.1 = tail call i64 @llvm.umin.i64(i64 %spec.select, i64 %i.f) ; 4 uses
  %i.g = load ptr, ptr @RedisModule_Alloc, align 8, !tbaa !13
  %i.h = shl i64 %.1, 3
  %i.i = tail call ptr %i.g(i64 noundef %i.h) #22 ; 7 uses
  %i.j = load ptr, ptr @RedisModule_Alloc, align 8, !tbaa !13
  %i.k = shl i64 %.1, 2
  %i.l = tail call ptr %i.j(i64 noundef %i.k) #22 ; 7 uses
  %.not = icmp eq i32 %10, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %1, align 8, !tbaa !99
  %i.n = trunc i64 %.1 to i32
  %.not93 = icmp eq ptr %8, null
  %i.o = select i1 %.not93, ptr null, ptr @vectorSetFilterCallback
  %i.p = tail call i32 @hnsw_ground_truth_with_filter(ptr noundef %i.m, ptr noundef %2, i32 noundef %i.n, ptr noundef %i.i, ptr noundef %i.l, i32 noundef %i.c, i32 noundef 0, ptr noundef %i.o, ptr noundef %8) #22
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.q = icmp eq ptr %8, null
  %i.r = load ptr, ptr %1, align 8, !tbaa !99     ; 2 uses
  %i.s = trunc i64 %.1 to i32                     ; 2 uses
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = tail call i32 @hnsw_search(ptr noundef %i.r, ptr noundef %2, i32 noundef %i.s, ptr noundef %i.i, ptr noundef %i.l, i32 noundef %i.c, i32 noundef 0) #22
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.u = trunc i64 %9 to i32
  %i.v = tail call i32 @hnsw_search_with_filter(ptr noundef %i.r, ptr noundef %2, i32 noundef %i.s, ptr noundef %i.i, ptr noundef %i.l, i32 noundef %i.c, i32 noundef 0, ptr noundef nonnull @vectorSetFilterCallback, ptr noundef nonnull %8, i32 noundef %i.u) #22
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.084 = phi i32 [ %i.p, %bb.b ], [ %i.t, %bb.d ], [ %i.v, %bb.e ] ; 2 uses
  %i.w = load ptr, ptr @RedisModule_GetContextFlags, align 8, !tbaa !13
  %i.x = tail call i32 %i.w(ptr noundef %0) #22
  %.fr = freeze i32 %i.x
  %i.y = and i32 %.fr, 4194304
  %i.z = icmp ne i32 %i.y, 0                      ; 2 uses
  %i.aa = or i64 %6, %5
  %i.ab = icmp ne i64 %i.aa, 0
  %i.ac = and i1 %i.ab, %i.z                      ; 2 uses
  %RedisModule_ReplyWithMap.val = load ptr, ptr @RedisModule_ReplyWithMap, align 8
  %RedisModule_ReplyWithArray.val = load ptr, ptr @RedisModule_ReplyWithArray, align 8
  %i.ad = select i1 %i.ac, ptr %RedisModule_ReplyWithMap.val, ptr %RedisModule_ReplyWithArray.val
  %i.ae = tail call i32 %i.ad(ptr noundef %0, i64 noundef -1) #22 ; 0 uses
  %i.af = icmp ne i32 %.084, 0
  %i.ag = icmp ne i64 %3, 0
  %i.ah = and i1 %i.af, %i.ag
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.ai = icmp ne i64 %5, 0                       ; 3 uses
  %or.cond = and i1 %i.ai, %i.z
  %i.aj = icmp ne i64 %6, 0                       ; 2 uses
  %or.cond3 = and i1 %i.aj, %or.cond
  %i.ak = add i64 %3, -1
  %i.al = add i32 %.084, -1
  %i.am = zext i32 %i.al to i64
  %umin129 = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 %i.am) ; 4 uses
  %i.an = add nuw nsw i64 %umin129, 1             ; 3 uses
  br i1 %i.aj, label %.lr.ph.split.us, label %.lr.ph.split.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.m
  %.08696.us = phi i64 [ %i.az, %bb.m ], [ 0, %.lr.ph ] ; 5 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.08696.us ; 2 uses
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !84
  %i.aq = fmul float %i.ap, 5.000000e-01
  %i.ar = fcmp ogt float %i.aq, %4
  br i1 %i.ar, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.08696.us
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !130
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 288
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !13 ; 2 uses
  %i.aw = load ptr, ptr @RedisModule_ReplyWithString, align 8, !tbaa !13
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !105
  %i.ay = tail call i32 %i.aw(ptr noundef %0, ptr noundef %i.ax) #22 ; 0 uses
  %i.az = add nuw nsw i64 %.08696.us, 1
  br i1 %or.cond3, label %.thread.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.ai, label %bb.i, label %bb.j

.thread.us:                                       ; preds = %bb.g
  %i.ba = load ptr, ptr @RedisModule_ReplyWithArray, align 8, !tbaa !13
  %i.bb = tail call i32 %i.ba(ptr noundef %0, i64 noundef 2) #22 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %.thread.us, %bb.h
  %i.bc = load ptr, ptr @RedisModule_ReplyWithDouble, align 8, !tbaa !13
  %i.bd = load float, ptr %i.ao, align 4, !tbaa !84
  %i.be = fpext float %i.bd to double
  %i.bf = fmul double %i.be, 5.000000e-01
  %i.bg = fsub double 1.000000e+00, %i.bf
  %i.bh = tail call i32 %i.bc(ptr noundef %0, double noundef %i.bg) #22 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !108 ; 2 uses
  %.not94.us = icmp eq ptr %i.bj, null
  br i1 %.not94.us, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = load ptr, ptr @RedisModule_ReplyWithString, align 8, !tbaa !13
  %i.bl = tail call i32 %i.bk(ptr noundef %0, ptr noundef nonnull %i.bj) #22 ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bm = load ptr, ptr @RedisModule_ReplyWithNull, align 8, !tbaa !13
  %i.bn = tail call i32 %i.bm(ptr noundef %0) #22 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %exitcond130.not = icmp eq i64 %.08696.us, %umin129
  br i1 %exitcond130.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !131

.lr.ph.split.split:                               ; preds = %.lr.ph
  br i1 %i.ai, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split, %bb.n
  %.08696.us109 = phi i64 [ %i.bz, %bb.n ], [ 0, %.lr.ph.split.split ] ; 5 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.08696.us109 ; 2 uses
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !84
  %i.bq = fmul float %i.bp, 5.000000e-01
  %i.br = fcmp ogt float %i.bq, %4
  br i1 %i.br, label %._crit_edge, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.split.split.us
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.08696.us109
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !130
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 288
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !13
  %i.bw = load ptr, ptr @RedisModule_ReplyWithString, align 8, !tbaa !13
  %i.bx = load ptr, ptr %i.bv, align 8, !tbaa !105
  %i.by = tail call i32 %i.bw(ptr noundef %0, ptr noundef %i.bx) #22 ; 0 uses
  %i.bz = add nuw nsw i64 %.08696.us109, 1
  %i.ca = load ptr, ptr @RedisModule_ReplyWithDouble, align 8, !tbaa !13
  %i.cb = load float, ptr %i.bo, align 4, !tbaa !84
  %i.cc = fpext float %i.cb to double
  %i.cd = fmul double %i.cc, 5.000000e-01
  %i.ce = fsub double 1.000000e+00, %i.cd
  %i.cf = tail call i32 %i.ca(ptr noundef %0, double noundef %i.ce) #22 ; 0 uses
  %exitcond124.not = icmp eq i64 %.08696.us109, %umin129
  br i1 %exitcond124.not, label %._crit_edge, label %.lr.ph.split.split.split.us, !llvm.loop !131

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split, %bb.o
  %.08696 = phi i64 [ %i.cr, %bb.o ], [ 0, %.lr.ph.split.split ] ; 5 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.08696
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !84
  %i.ci = fmul float %i.ch, 5.000000e-01
  %i.cj = fcmp ogt float %i.ci, %4
  br i1 %i.cj, label %._crit_edge, label %bb.o

bb.o:                                             ; preds = %.lr.ph.split.split.split
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.08696
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !130
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 288
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !13
  %i.co = load ptr, ptr @RedisModule_ReplyWithString, align 8, !tbaa !13
  %i.cp = load ptr, ptr %i.cn, align 8, !tbaa !105
  %i.cq = tail call i32 %i.co(ptr noundef %0, ptr noundef %i.cp) #22 ; 0 uses
  %i.cr = add nuw nsw i64 %.08696, 1
  %exitcond.not = icmp eq i64 %.08696, %umin129
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.split.split, !llvm.loop !131

._crit_edge:                                      ; preds = %bb.o, %.lr.ph.split.split.split, %bb.n, %.lr.ph.split.split.split.us, %bb.m, %.lr.ph.split.us, %bb.f
  %.086.lcssa = phi i64 [ 0, %bb.f ], [ %i.an, %bb.n ], [ %.08696.us, %.lr.ph.split.us ], [ %i.an, %bb.m ], [ %.08696.us109, %.lr.ph.split.split.split.us ], [ %.08696, %.lr.ph.split.split.split ], [ %i.an, %bb.o ] ; 2 uses
  %i.cs = load ptr, ptr %1, align 8, !tbaa !99
  tail call void @hnsw_release_read_slot(ptr noundef %i.cs, i32 noundef %i.c) #22
  br i1 %i.ac, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge
  %i.ct = load ptr, ptr @RedisModule_ReplySetMapLength, align 8, !tbaa !13
  tail call void %i.ct(ptr noundef %0, i64 noundef %.086.lcssa) #22
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge
  %i.cu = add i64 %5, 1
  %i.cv = add i64 %i.cu, %6
  %i.cw = load ptr, ptr @RedisModule_ReplySetArrayLength, align 8, !tbaa !13
  %sext = shl i64 %i.cv, 32
  %i.cx = ashr exact i64 %sext, 32
  %i.cy = mul nsw i64 %.086.lcssa, %i.cx
  tail call void %i.cw(ptr noundef %0, i64 noundef %i.cy) #22
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cz = load ptr, ptr @RedisModule_Free, align 8, !tbaa !13
  tail call void %i.cz(ptr noundef %2) #22
  %i.da = load ptr, ptr @RedisModule_Free, align 8, !tbaa !13
  tail call void %i.da(ptr noundef %i.i) #22
  %i.db = load ptr, ptr @RedisModule_Free, align 8, !tbaa !13
  tail call void %i.db(ptr noundef %i.l) #22
  %.not95 = icmp eq ptr %8, null
  br i1 %.not95, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @exprFree(ptr noundef nonnull %8)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  ret void
}

declare i32 @hnsw_acquire_read_slot(ptr noundef) local_unnamed_addr #16

declare i32 @hnsw_ground_truth_with_filter(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #16

declare i32 @hnsw_search(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #16

declare i32 @hnsw_search_with_filter(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #16

declare void @hnsw_release_read_slot(ptr noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @VSIM_thread(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @pthread_self() #24
  %i.b = tail call i32 @pthread_detach(i64 noundef %i.a) #22 ; 0 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !13     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !13   ; 2 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !84
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !13
  %i.y = load ptr, ptr @RedisModule_Free, align 8, !tbaa !13
  tail call void %i.y(ptr noundef nonnull %i.k) #22
  %i.z = load ptr, ptr @RedisModule_Free, align 8, !tbaa !13
  tail call void %i.z(ptr noundef nonnull %0) #22
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.ab = tail call i32 @pthread_rwlock_rdlock(ptr noundef nonnull %i.aa) #22
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = load ptr, ptr @RedisModule__Assert, align 8, !tbaa !13
  tail call void %i.ad(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.27, i32 noundef 922) #22
  tail call void @exit(i32 noundef 1) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = ptrtoint ptr %i.x to i64
  %i.af = ptrtoint ptr %i.v to i64
  %i.ag = ptrtoint ptr %i.r to i64
  %i.ah = ptrtoint ptr %i.p to i64
  %i.ai = ptrtoint ptr %i.n to i64
  %i.aj = ptrtoint ptr %i.i to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.al = atomicrmw sub ptr %i.ak, i32 1 seq_cst, align 8 ; 0 uses
  %i.am = load ptr, ptr @RedisModule_GetThreadSafeContext, align 8, !tbaa !13
  %i.an = tail call ptr %i.am(ptr noundef %i.c) #22 ; 2 uses
  %i.ao = trunc i64 %i.ae to i32
  tail call void @VSIM_execute(ptr noundef %i.an, ptr noundef nonnull %i.e, ptr noundef %i.g, i64 noundef %i.aj, float noundef %i.l, i64 noundef %i.ai, i64 noundef %i.ah, i64 noundef %i.ag, ptr noundef %i.t, i64 noundef %i.af, i32 noundef %i.ao)
  %i.ap = tail call i32 @pthread_rwlock_unlock(ptr noundef nonnull %i.aa) #22 ; 0 uses
  %i.aq = load ptr, ptr @RedisModule_FreeThreadSafeContext, align 8, !tbaa !13
  tail call void %i.aq(ptr noundef %i.an) #22
  %i.ar = load ptr, ptr @RedisModule_BlockedClientMeasureTimeEnd, align 8, !tbaa !13
  %i.as = tail call i32 %i.ar(ptr noundef %i.c) #22 ; 0 uses
  %i.at = load ptr, ptr @RedisModule_UnblockClient, align 8, !tbaa !13
  %i.au = tail call i32 %i.at(ptr noundef %i.c, ptr noundef null) #22 ; 0 uses
  ret ptr null
}

; Function Attrs: nounwind uwtable
define dso_local i32 @VSIM_RedisCommand(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 9 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %i.c = alloca double, align 8                   ; 8 uses
  %i.d = alloca i64, align 8                      ; 10 uses
  %i.e = alloca i64, align 8                      ; 9 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 7 uses
  %i.j = alloca i64, align 8                      ; 3 uses
  %i.k = load ptr, ptr @RedisModule_AutoMemory, align 8, !tbaa !13
  tail call void %i.k(ptr noundef %0) #22
  %i.l = icmp slt i32 %2, 4
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr @RedisModule_WrongArity, align 8, !tbaa !13
  %i.n = tail call i32 %i.m(ptr noundef %0) #22
  br label %bb.bk

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 10, ptr %i.a, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 0, ptr %i.b, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store double 2.000000e+00, ptr %i.c, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i64 0, ptr %i.d, align 8, !tbaa !116
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !115
  %i.q = load ptr, ptr @RedisModule_StringPtrLen, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !115
  %i.t = tail call ptr %i.q(ptr noundef %i.s, ptr noundef null) #22 ; 3 uses
  %i.u = load ptr, ptr @RedisModule_OpenKey, align 8, !tbaa !13
  %i.v = tail call ptr %i.u(ptr noundef %0, ptr noundef %i.p, i32 noundef 1) #22 ; 3 uses
  %i.w = load ptr, ptr @RedisModule_KeyType, align 8, !tbaa !13
  %i.x = tail call i32 %i.w(ptr noundef %i.v) #22
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr @RedisModule_ReplyWithEmptyArray, align 8, !tbaa !13
  %i.aa = tail call i32 %i.z(ptr noundef %0) #22
  br label %bb.bj

bb.e:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr @RedisModule_ModuleTypeGetType, align 8, !tbaa !13
  %i.ac = tail call ptr %i.ab(ptr noundef %i.v) #22
  %i.ad = load ptr, ptr @VectorSetType, align 8, !tbaa !121
  %.not = icmp eq ptr %i.ac, %i.ad
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr @RedisModule_ReplyWithError, align 8, !tbaa !13
  %i.af = tail call i32 %i.ae(ptr noundef %0, ptr noundef nonnull @.str.50) #22
  br label %bb.bj

bb.g:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr @RedisModule_ModuleTypeGetValue, align 8, !tbaa !13
  %i.ah = tail call ptr %i.ag(ptr noundef %i.v) #22 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  store i64 0, ptr %i.e, align 8, !tbaa !92
  %i.ai = tail call i32 @strcasecmp(ptr noundef %i.t, ptr noundef nonnull @.str.58) #25
  %.not220 = icmp eq i32 %i.ai, 0
  br i1 %.not220, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !115
  %i.al = load ptr, ptr @RedisModule_DictGet, align 8, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !100
  %i.ao = tail call ptr %i.al(ptr noundef %i.an, ptr noundef %i.ak, ptr noundef null) #22 ; 2 uses
  %.not221.not = icmp eq ptr %i.ao, null
  br i1 %.not221.not, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.h
  %i.ap = load ptr, ptr @RedisModule_ReplyWithError, align 8, !tbaa !13
  %i.aq = tail call i32 %i.ap(ptr noundef %0, ptr noundef nonnull @.str.59) #22
  br label %.thread262

bb.i:                                             ; preds = %bb.h
  %i.ar = load ptr, ptr @RedisModule_Alloc, align 8, !tbaa !13
  %i.as = load ptr, ptr %i.ah, align 8, !tbaa !99
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load i32, ptr %i.at, align 8, !tbaa !128
  %i.av = zext i32 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 2
  %i.ax = tail call ptr %i.ar(i64 noundef %i.aw) #22 ; 2 uses
  %i.ay = load ptr, ptr %i.ah, align 8, !tbaa !99
  tail call void @hnsw_get_node_vector(ptr noundef %i.ay, ptr noundef nonnull %i.ao, ptr noundef %i.ax) #22
  %i.az = load ptr, ptr %i.ah, align 8, !tbaa !99
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !128
  %i.bc = zext i32 %i.bb to i64
  store i64 %i.bc, ptr %i.e, align 8, !tbaa !92
  br label %bb.v

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  %i.bd = call ptr @parseVector(ptr noundef nonnull %1, i32 noundef %2, i32 noundef 2, ptr noundef nonnull %i.e, ptr noundef null, ptr noundef nonnull %i.f) ; 6 uses
  %.not222 = icmp eq ptr %i.bd, null
  br i1 %.not222, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.be = load ptr, ptr @RedisModule_ReplyWithError, align 8, !tbaa !13
  %i.bf = call i32 %i.be(ptr noundef %0, ptr noundef nonnull @.str.39) #22
  br label %.thread248

bb.l:                                             ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !101 ; 2 uses
  %.not223 = icmp eq ptr %i.bh, null
  br i1 %.not223, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bi = load i64, ptr %i.e, align 8, !tbaa !92  ; 3 uses
  %i.bj = load ptr, ptr %i.ah, align 8, !tbaa !99
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !128 ; 2 uses
  %i.bm = zext i32 %i.bl to i64
  %.not224 = icmp eq i64 %i.bi, %i.bm
  br i1 %.not224, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !102 ; 2 uses
  %i.bp = zext i32 %i.bo to i64
  %.not225 = icmp eq i64 %i.bi, %i.bp
  br i1 %.not225, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bq = load ptr, ptr @RedisModule_Free, align 8, !tbaa !13
  call void %i.bq(ptr noundef nonnull %i.bd) #22
  %i.br = load ptr, ptr @RedisModule_ReplyWithErrorFormat, align 8, !tbaa !13
  %i.bs = trunc i64 %i.bi to i32
  %i.bt = load i32, ptr %i.bn, align 8, !tbaa !102
  %i.bu = call i32 (ptr, ptr, ...) %i.br(ptr noundef %0, ptr noundef nonnull @.str.57, i32 noundef %i.bs, i32 noundef %i.bt) #22
  br label %.thread248

bb.p:                                             ; preds = %bb.n
  %i.bv = call ptr @applyProjection(ptr noundef nonnull %i.bd, ptr noundef nonnull %i.bh, i32 noundef %i.bo, i32 noundef %i.bl)
  %i.bw = load ptr, ptr @RedisModule_Free, align 8, !tbaa !13
  call void %i.bw(ptr noundef nonnull %i.bd) #22
  %i.bx = load ptr, ptr %i.ah, align 8, !tbaa !99
end_hunk_2
begin_hunk_3_@VSIM_RedisCommand:bb.a
  %i.ev = call i32 @strcasecmp(ptr noundef %i.di, ptr noundef nonnull @.str.41) #25
  %.not239 = icmp eq i32 %i.ev, 0
  br i1 %.not239, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.ew = add nsw i32 %.0188306, 1                ; 2 uses
  %i.ex = icmp slt i32 %i.ew, %2
  br i1 %i.ex, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.ey = load ptr, ptr @RedisModule_StringToLongLong, align 8, !tbaa !13
  %i.ez = sext i32 %i.ew to i64
  %i.fa = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ez
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !115
  %i.fc = call i32 %i.ey(ptr noundef %i.fb, ptr noundef nonnull %i.b) #22
  %i.fd = icmp ne i32 %i.fc, 0
  %i.fe = load i64, ptr %i.b, align 8
  %i.ff = add i64 %i.fe, -1000001
  %i.fg = icmp ult i64 %i.ff, -1000000
  %or.cond11 = select i1 %i.fd, i1 true, i1 %i.fg
  br i1 %or.cond11, label %bb.ar, label %bb.bc

bb.ar:                                            ; preds = %bb.aq
  %i.fh = load ptr, ptr @RedisModule_Free, align 8, !tbaa !13
  call void %i.fh(ptr noundef %.3203) #22
  %i.fi = load ptr, ptr @RedisModule_ReplyWithError, align 8, !tbaa !13
  %i.fj = call i32 %i.fi(ptr noundef %0, ptr noundef nonnull @.str.42) #22
  br label %.thread262

bb.as:                                            ; preds = %bb.ap, %bb.ao
  %i.fk = call i32 @strcasecmp(ptr noundef %i.di, ptr noundef nonnull @.str.70) #25
  %.not240 = icmp eq i32 %i.fk, 0
  br i1 %.not240, label %bb.at, label %bb.ax

bb.at:                                            ; preds = %bb.as
  %i.fl = add nsw i32 %.0188306, 1                ; 2 uses
  %i.fm = icmp slt i32 %i.fl, %2
  br i1 %i.fm, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.fn = load ptr, ptr @RedisModule_StringToLongLong, align 8, !tbaa !13
  %i.fo = sext i32 %i.fl to i64
  %i.fp = getelementptr inbounds [8 x i8], ptr %1, i64 %i.fo
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !115
  %i.fr = call i32 %i.fn(ptr noundef %i.fq, ptr noundef nonnull %i.d) #22
  %i.fs = icmp ne i32 %i.fr, 0
  %i.ft = load i64, ptr %i.d, align 8
  %i.fu = icmp slt i64 %i.ft, 1
  %or.cond13 = select i1 %i.fs, i1 true, i1 %i.fu
  br i1 %or.cond13, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.fv = load ptr, ptr @RedisModule_Free, align 8, !tbaa !13
  call void %i.fv(ptr noundef %.3203) #22
  %i.fw = load ptr, ptr @RedisModule_ReplyWithError, align 8, !tbaa !13
  %i.fx = call i32 %i.fw(ptr noundef %0, ptr noundef nonnull @.str.71) #22
  br label %.thread262

bb.aw:                                            ; preds = %bb.au
  %i.fy = add nsw i32 %.0188306, 2
  br label %.backedge

bb.ax:                                            ; preds = %bb.at, %bb.as
  %i.fz = call i32 @strcasecmp(ptr noundef %i.di, ptr noundef nonnull @.str.72) #25
  %.not241 = icmp eq i32 %i.fz, 0
  br i1 %.not241, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  %i.ga = add nsw i32 %.0188306, 1                ; 2 uses
  %i.gb = icmp slt i32 %i.ga, %2
  br i1 %i.gb, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.gc = sext i32 %i.ga to i64
  %i.gd = getelementptr inbounds [8 x i8], ptr %1, i64 %i.gc
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #22
  %i.gf = load ptr, ptr @RedisModule_StringPtrLen, align 8, !tbaa !13
  %i.gg = call ptr %i.gf(ptr noundef %i.ge, ptr noundef nonnull %i.h) #22 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #22
  %i.gh = call ptr @exprCompile(ptr noundef %i.gg, ptr noundef nonnull %i.i) ; 2 uses
  %.not243 = icmp eq ptr %i.gh, null
  br i1 %.not243, label %.thread271, label %bb.ba

.thread271:                                       ; preds = %bb.az
  %i.gi = load i32, ptr %i.i, align 4, !tbaa !9   ; 2 uses
  %i.gj = sext i32 %i.gi to i64
  %i.gk = load i64, ptr %i.h, align 8, !tbaa !92
  %.not242 = icmp ugt i64 %i.gk, %i.gj
  %spec.store.select = select i1 %.not242, i32 %i.gi, i32 0
  store i32 %spec.store.select, ptr %i.i, align 4
  %i.gl = load ptr, ptr @RedisModule_Free, align 8, !tbaa !13
  call void %i.gl(ptr noundef %.3203) #22
  %i.gm = load ptr, ptr @RedisModule_ReplyWithErrorFormat, align 8, !tbaa !13
  %i.gn = load i32, ptr %i.i, align 4, !tbaa !9
  %i.go = sext i32 %i.gn to i64
  %i.gp = getelementptr inbounds i8, ptr %i.gg, i64 %i.go
  %i.gq = call i32 (ptr, ptr, ...) %i.gm(ptr noundef %0, ptr noundef nonnull @.str.73, ptr noundef %i.gp) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  br label %.thread262

bb.ba:                                            ; preds = %bb.az
  %i.gr = add nsw i32 %.0188306, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  br label %.backedge

bb.bb:                                            ; preds = %bb.ay, %bb.ax
  %i.gs = load ptr, ptr @RedisModule_Free, align 8, !tbaa !13
  call void %i.gs(ptr noundef %.3203) #22
  %i.gt = load ptr, ptr @RedisModule_ReplyWithError, align 8, !tbaa !13
  %i.gu = call i32 %i.gt(ptr noundef %0, ptr noundef nonnull @.str.74) #22
  br label %.thread262

bb.bc:                                            ; preds = %bb.aq
  %i.gv = add nsw i32 %.0188306, 2
  br label %.backedge

.backedge:                                        ; preds = %bb.bc, %bb.x, %bb.z, %bb.ab, %bb.ad, %bb.ai, %bb.an, %bb.aw, %bb.ba
  %.0192.be = phi ptr [ %i.gh, %bb.ba ], [ %.0192305, %bb.bc ], [ %.0192305, %bb.aw ], [ %.0192305, %bb.an ], [ %.0192305, %bb.ad ], [ %.0192305, %bb.z ], [ %.0192305, %bb.x ], [ %.0192305, %bb.ab ], [ %.0192305, %bb.ai ] ; 2 uses
  %.0188.be = phi i32 [ %i.gr, %bb.ba ], [ %i.gv, %bb.bc ], [ %i.fy, %bb.aw ], [ %i.eu, %bb.an ], [ %i.dq, %bb.ad ], [ %i.dm, %bb.z ], [ %i.dk, %bb.x ], [ %i.do, %bb.ab ], [ %i.ef, %bb.ai ] ; 2 uses
  %.0185.be = phi i32 [ %.0185307, %bb.ba ], [ %.0185307, %bb.bc ], [ %.0185307, %bb.aw ], [ %.0185307, %bb.an ], [ 1, %bb.ad ], [ %.0185307, %bb.z ], [ %.0185307, %bb.x ], [ %.0185307, %bb.ab ], [ %.0185307, %bb.ai ] ; 2 uses
  %.0182.be = phi i64 [ %.0182308, %bb.ba ], [ %.0182308, %bb.bc ], [ %.0182308, %bb.aw ], [ %.0182308, %bb.an ], [ %.0182308, %bb.ad ], [ %.0182308, %bb.z ], [ %.0182308, %bb.x ], [ 1, %bb.ab ], [ %.0182308, %bb.ai ] ; 2 uses
  %.0179.be = phi i32 [ %.0179309, %bb.ba ], [ %.0179309, %bb.bc ], [ %.0179309, %bb.aw ], [ %.0179309, %bb.an ], [ %.0179309, %bb.ad ], [ 1, %bb.z ], [ %.0179309, %bb.x ], [ %.0179309, %bb.ab ], [ %.0179309, %bb.ai ] ; 2 uses
  %.0175.be = phi i32 [ %.0175310, %bb.ba ], [ %.0175310, %bb.bc ], [ %.0175310, %bb.aw ], [ %.0175310, %bb.an ], [ %.0175310, %bb.ad ], [ %.0175310, %bb.z ], [ 1, %bb.x ], [ %.0175310, %bb.ab ], [ %.0175310, %bb.ai ] ; 2 uses
  %i.gw = icmp slt i32 %.0188.be, %2
  br i1 %i.gw, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !132

._crit_edge.loopexit:                             ; preds = %.backedge
  %i.gx = icmp ne i32 %.0185.be, 0
  %i.gy = zext nneg i32 %.0175.be to i64
  %i.gz = zext nneg i32 %.0179.be to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.0192.lcssa = phi ptr [ null, %.preheader ], [ %.0192.be, %._crit_edge.loopexit ] ; 3 uses
  %.0185.lcssa = phi i1 [ false, %.preheader ], [ %i.gx, %._crit_edge.loopexit ]
  %.0182.lcssa = phi i64 [ 0, %.preheader ], [ %.0182.be, %._crit_edge.loopexit ] ; 3 uses
  %.0179.lcssa = phi i64 [ 0, %.preheader ], [ %i.gz, %._crit_edge.loopexit ] ; 3 uses
  %.0175.lcssa = phi i64 [ 0, %.preheader ], [ %i.gy, %._crit_edge.loopexit ] ; 3 uses
  %i.ha = load i64, ptr %i.d, align 8, !tbaa !116 ; 2 uses
  %i.hb = icmp eq i64 %i.ha, 0
  br i1 %i.hb, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %._crit_edge
  %i.hc = load i64, ptr %i.a, align 8, !tbaa !116
  %i.hd = mul nsw i64 %i.hc, 100                  ; 2 uses
  store i64 %i.hd, ptr %i.d, align 8, !tbaa !116
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %._crit_edge
  %i.he = phi i64 [ %i.hd, %bb.bd ], [ %i.ha, %._crit_edge ]
  %i.hf = load i32, ptr @VSGlobalConfig, align 4
  %i.hg = icmp ne i32 %i.hf, 0
  %or.cond15 = select i1 %.0185.lcssa, i1 true, i1 %i.hg
  br i1 %or.cond15, label %.critedge, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hh = load ptr, ptr @RedisModule_GetContextFlags, align 8, !tbaa !13
  %i.hi = call i32 %i.hh(ptr noundef %0) #22
  %i.hj = and i32 %i.hi, 3
  %.not230 = icmp eq i32 %i.hj, 0
  br i1 %.not230, label %bb.bg, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.bf
  %.pre = load i64, ptr %i.d, align 8, !tbaa !116
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.be
  %i.hk = phi i64 [ %.pre, %..critedge_crit_edge ], [ %i.he, %bb.be ]
  %i.hl = load i64, ptr %i.a, align 8, !tbaa !116
  %i.hm = load double, ptr %i.c, align 8, !tbaa !118
  %i.hn = fptrunc double %i.hm to float
  %i.ho = load i64, ptr %i.b, align 8, !tbaa !116
  %i.hp = trunc nuw nsw i64 %.0182.lcssa to i32
  call void @VSIM_execute(ptr noundef %0, ptr noundef nonnull %i.ah, ptr noundef %.3203, i64 noundef %i.hl, float noundef %i.hn, i64 noundef %.0175.lcssa, i64 noundef %.0179.lcssa, i64 noundef %i.ho, ptr noundef %.0192.lcssa, i64 noundef %i.hk, i32 noundef %i.hp)
  br label %.thread262

bb.bg:                                            ; preds = %bb.bf
  %i.hq = load ptr, ptr @RedisModule_BlockClient, align 8, !tbaa !13
  %i.hr = call ptr %i.hq(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null, i64 noundef 0) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #22
  %i.hs = load ptr, ptr @RedisModule_Alloc, align 8, !tbaa !13
  %i.ht = call ptr %i.hs(i64 noundef 88) #22      ; 13 uses
  store ptr %i.hr, ptr %i.ht, align 8, !tbaa !13
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  store ptr %i.ah, ptr %i.hu, align 8, !tbaa !13
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  store ptr %.3203, ptr %i.hv, align 8, !tbaa !13
  %i.hw = load i64, ptr %i.a, align 8, !tbaa !116
  %i.hx = inttoptr i64 %i.hw to ptr
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ht, i64 24
  store ptr %i.hx, ptr %i.hy, align 8, !tbaa !13
  %i.hz = load ptr, ptr @RedisModule_Alloc, align 8, !tbaa !13
  %i.ia = call ptr %i.hz(i64 noundef 4) #22       ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ht, i64 32 ; 2 uses
  store ptr %i.ia, ptr %i.ib, align 8, !tbaa !13
  %i.ic = load double, ptr %i.c, align 8, !tbaa !118
  %i.id = fptrunc double %i.ic to float
  store float %i.id, ptr %i.ia, align 4, !tbaa !84
  %i.ie = inttoptr i64 %.0175.lcssa to ptr
  %i.if = getelementptr inbounds nuw i8, ptr %i.ht, i64 40
  store ptr %i.ie, ptr %i.if, align 8, !tbaa !13
  %i.ig = inttoptr i64 %.0179.lcssa to ptr
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ht, i64 48
  store ptr %i.ig, ptr %i.ih, align 8, !tbaa !13
  %i.ii = load i64, ptr %i.b, align 8, !tbaa !116
  %i.ij = inttoptr i64 %i.ii to ptr
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ht, i64 56
  store ptr %i.ij, ptr %i.ik, align 8, !tbaa !13
  %i.il = getelementptr inbounds nuw i8, ptr %i.ht, i64 64
  store ptr %.0192.lcssa, ptr %i.il, align 8, !tbaa !13
  %i.im = load i64, ptr %i.d, align 8, !tbaa !116
  %i.in = inttoptr i64 %i.im to ptr
  %i.io = getelementptr inbounds nuw i8, ptr %i.ht, i64 72
  store ptr %i.in, ptr %i.io, align 8, !tbaa !13
  %i.ip = inttoptr i64 %.0182.lcssa to ptr
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ht, i64 80
  store ptr %i.ip, ptr %i.iq, align 8, !tbaa !13
  %i.ir = load ptr, ptr @RedisModule_BlockedClientMeasureTimeStart, align 8, !tbaa !13
  %i.is = call i32 %i.ir(ptr noundef %i.hr) #22   ; 0 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.ah, i64 104 ; 2 uses
  %i.iu = atomicrmw add ptr %i.it, i32 1 seq_cst, align 8 ; 0 uses
  %i.iv = call i32 @pthread_create(ptr noundef nonnull %i.j, ptr noundef null, ptr noundef nonnull @VSIM_thread, ptr noundef nonnull %i.ht) #22
  %.not232 = icmp eq i32 %i.iv, 0
  br i1 %.not232, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.iw = atomicrmw sub ptr %i.it, i32 1 seq_cst, align 8 ; 0 uses
  %i.ix = load ptr, ptr @RedisModule_AbortBlock, align 8, !tbaa !13
  %i.iy = call i32 %i.ix(ptr noundef %i.hr) #22   ; 0 uses
  %i.iz = load ptr, ptr @RedisModule_Free, align 8, !tbaa !13
  %i.ja = load ptr, ptr %i.ib, align 8, !tbaa !13
  call void %i.iz(ptr noundef %i.ja) #22
  %i.jb = load ptr, ptr @RedisModule_Free, align 8, !tbaa !13
  call void %i.jb(ptr noundef nonnull %i.ht) #22
  %i.jc = load i64, ptr %i.a, align 8, !tbaa !116
  %i.jd = load double, ptr %i.c, align 8, !tbaa !118
  %i.je = fptrunc double %i.jd to float
  %i.jf = load i64, ptr %i.b, align 8, !tbaa !116
  %i.jg = load i64, ptr %i.d, align 8, !tbaa !116
  %i.jh = trunc nuw nsw i64 %.0182.lcssa to i32
  call void @VSIM_execute(ptr noundef %0, ptr noundef nonnull %i.ah, ptr noundef %.3203, i64 noundef %i.jc, float noundef %i.je, i64 noundef %.0175.lcssa, i64 noundef %.0179.lcssa, i64 noundef %i.jf, ptr noundef %.0192.lcssa, i64 noundef %i.jg, i32 noundef %i.jh)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #22
  br label %.thread262

.thread262:                                       ; preds = %bb.am, %bb.ar, %bb.av, %bb.ah, %bb.bb, %.thread271, %bb.u, %.thread248, %.thread, %.critedge, %bb.bi, %bb.w
  %.10 = phi i32 [ %i.dd, %bb.w ], [ %i.aq, %.thread ], [ %i.cp, %bb.u ], [ %i.gq, %.thread271 ], [ 0, %.critedge ], [ 0, %bb.bi ], [ %.3.ph, %.thread248 ], [ %i.et, %bb.am ], [ %i.fj, %bb.ar ], [ %i.fx, %bb.av ], [ %i.ee, %bb.ah ], [ %i.gu, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  br label %bb.bj

bb.bj:                                            ; preds = %.thread262, %bb.f, %bb.d
  %.11 = phi i32 [ %i.aa, %bb.d ], [ %i.af, %bb.f ], [ %.10, %.thread262 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.b
  %.12 = phi i32 [ %i.n, %bb.b ], [ %.11, %bb.bj ]
  ret i32 %.12
}

declare void @hnsw_get_node_vector(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define dso_local i32 @VDIM_RedisCommand(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #0 {
bb.a:
  %i.a = load ptr, ptr @RedisModule_AutoMemory, align 8, !tbaa !13
  tail call void %i.a(ptr noundef %0) #22
  %.not = icmp eq i32 %2, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @RedisModule_WrongArity, align 8, !tbaa !13
  %i.c = tail call i32 %i.b(ptr noundef %0) #22
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @RedisModule_OpenKey, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !115
  %i.g = tail call ptr %i.d(ptr noundef %0, ptr noundef %i.f, i32 noundef 1) #22 ; 3 uses
  %i.h = load ptr, ptr @RedisModule_KeyType, align 8, !tbaa !13
  %i.i = tail call i32 %i.h(ptr noundef %i.g) #22
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr @RedisModule_ReplyWithError, align 8, !tbaa !13
  %i.l = tail call i32 %i.k(ptr noundef %0, ptr noundef nonnull @.str.75) #22
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.m = load ptr, ptr @RedisModule_ModuleTypeGetType, align 8, !tbaa !13
  %i.n = tail call ptr %i.m(ptr noundef %i.g) #22
  %i.o = load ptr, ptr @VectorSetType, align 8, !tbaa !121
  %.not13 = icmp eq ptr %i.n, %i.o
  br i1 %.not13, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr @RedisModule_ReplyWithError, align 8, !tbaa !13
  %i.q = tail call i32 %i.p(ptr noundef %0, ptr noundef nonnull @.str.50) #22
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.r = load ptr, ptr @RedisModule_ModuleTypeGetValue, align 8, !tbaa !13
  %i.s = tail call ptr %i.r(ptr noundef %i.g) #22
  %i.t = load ptr, ptr @RedisModule_ReplyWithLongLong, align 8, !tbaa !13
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !99
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !128
  %i.x = zext i32 %i.w to i64
  %i.y = tail call i32 %i.t(ptr noundef %0, i64 noundef %i.x) #22
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.f, %bb.g, %bb.b
  %.1 = phi i32 [ %i.c, %bb.b ], [ %i.l, %bb.d ], [ %i.q, %bb.f ], [ %i.y, %bb.g ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define dso_local i32 @VCARD_RedisCommand(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #0 {
bb.a:
  %i.a = load ptr, ptr @RedisModule_AutoMemory, align 8, !tbaa !13
  tail call void %i.a(ptr noundef %0) #22
  %.not = icmp eq i32 %2, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @RedisModule_WrongArity, align 8, !tbaa !13
  %i.c = tail call i32 %i.b(ptr noundef %0) #22
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @RedisModule_OpenKey, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !115
  %i.g = tail call ptr %i.d(ptr noundef %0, ptr noundef %i.f, i32 noundef 1) #22 ; 3 uses
  %i.h = load ptr, ptr @RedisModule_KeyType, align 8, !tbaa !13
  %i.i = tail call i32 %i.h(ptr noundef %i.g) #22
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr @RedisModule_ReplyWithLongLong, align 8, !tbaa !13
  %i.l = tail call i32 %i.k(ptr noundef %0, i64 noundef 0) #22
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.m = load ptr, ptr @RedisModule_ModuleTypeGetType, align 8, !tbaa !13
  %i.n = tail call ptr %i.m(ptr noundef %i.g) #22
  %i.o = load ptr, ptr @VectorSetType, align 8, !tbaa !121
  %.not13 = icmp eq ptr %i.n, %i.o
  br i1 %.not13, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr @RedisModule_ReplyWithError, align 8, !tbaa !13
  %i.q = tail call i32 %i.p(ptr noundef %0, ptr noundef nonnull @.str.50) #22
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.r = load ptr, ptr @RedisModule_ModuleTypeGetValue, align 8, !tbaa !13
  %i.s = tail call ptr %i.r(ptr noundef %i.g) #22
  %i.t = load ptr, ptr @RedisModule_ReplyWithLongLong, align 8, !tbaa !13
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !99
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load i64, ptr %i.v, align 8, !tbaa !129
  %i.x = tail call i32 %i.t(ptr noundef %0, i64 noundef %i.w) #22
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.f, %bb.g, %bb.b
  %.1 = phi i32 [ %i.c, %bb.b ], [ %i.l, %bb.d ], [ %i.q, %bb.f ], [ %i.x, %bb.g ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define dso_local i32 @VREM_RedisCommand(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #0 {
bb.a:
  %i.a = load ptr, ptr @RedisModule_AutoMemory, align 8, !tbaa !13
  tail call void %i.a(ptr noundef %0) #22
  %.not = icmp eq i32 %2, 3
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @RedisModule_WrongArity, align 8, !tbaa !13
  %i.c = tail call i32 %i.b(ptr noundef %0) #22
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !115
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !115  ; 2 uses
  %i.h = load ptr, ptr @RedisModule_OpenKey, align 8, !tbaa !13
  %i.i = tail call ptr %i.h(ptr noundef %0, ptr noundef %i.e, i32 noundef 3) #22 ; 4 uses
end_hunk_3
begin_hunk_4_@VREM_RedisCommand:bb.a
  %i.p = tail call ptr %i.o(ptr noundef %i.i) #22
  %i.q = load ptr, ptr @VectorSetType, align 8, !tbaa !121
  %.not29 = icmp eq ptr %i.p, %i.q
  br i1 %.not29, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr @RedisModule_ReplyWithError, align 8, !tbaa !13
  %i.s = tail call i32 %i.r(ptr noundef %0, ptr noundef nonnull @.str.50) #22
  br label %bb.p

bb.g:                                             ; preds = %bb.e
  %i.t = load ptr, ptr @RedisModule_ModuleTypeGetValue, align 8, !tbaa !13
  %i.u = tail call ptr %i.t(ptr noundef %i.i) #22 ; 3 uses
  %i.v = load ptr, ptr @RedisModule_DictGet, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.y = tail call ptr %i.v(ptr noundef %i.x, ptr noundef %i.g, ptr noundef null) #22 ; 3 uses
  %.not30 = icmp eq ptr %i.y, null
  br i1 %.not30, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr @RedisModule_ReplyWithBool, align 8, !tbaa !13
  %i.aa = tail call i32 %i.z(ptr noundef %0, i32 noundef 0) #22
  br label %bb.p

bb.i:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr @RedisModule_DictDel, align 8, !tbaa !13
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.ad = tail call i32 %i.ab(ptr noundef %i.ac, ptr noundef %i.g, ptr noundef null) #22 ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 288
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !108
  %.not31 = icmp eq ptr %i.ah, null
  br i1 %.not31, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 96 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !103
  %i.ak = add i64 %i.aj, -1
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !103
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.al = load ptr, ptr %i.u, align 8, !tbaa !99
  %i.am = tail call i32 @hnsw_delete_node(ptr noundef %i.al, ptr noundef nonnull %i.y, ptr noundef nonnull @vectorSetReleaseNodeValue) #22
  %i.an = icmp eq i32 %i.am, 1
  br i1 %i.an, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = load ptr, ptr @RedisModule__Assert, align 8, !tbaa !13
  tail call void %i.ao(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.27, i32 noundef 1245) #22
  tail call void @exit(i32 noundef 1) #23
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ap = load ptr, ptr @RedisModule_DictSize, align 8, !tbaa !13
  %i.aq = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.ar = tail call i64 %i.ap(ptr noundef %i.aq) #22
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.at = load ptr, ptr @RedisModule_DeleteKey, align 8, !tbaa !13
  %i.au = tail call i32 %i.at(ptr noundef %i.i) #22 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.av = load ptr, ptr @RedisModule_ReplyWithBool, align 8, !tbaa !13
  %i.aw = tail call i32 %i.av(ptr noundef %0, i32 noundef 1) #22 ; 0 uses
  %i.ax = load ptr, ptr @RedisModule_ReplicateVerbatim, align 8, !tbaa !13
  %i.ay = tail call i32 %i.ax(ptr noundef %0) #22 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.d, %bb.f, %bb.o, %bb.h, %bb.b
  %.2 = phi i32 [ %i.c, %bb.b ], [ %i.n, %bb.d ], [ %i.s, %bb.f ], [ 0, %bb.o ], [ %i.aa, %bb.h ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define dso_local i32 @VEMB_RedisCommand(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #0 {
bb.a:
  %i.a = load ptr, ptr @RedisModule_AutoMemory, align 8, !tbaa !13
  tail call void %i.a(ptr noundef %0) #22
  %i.b = icmp slt i32 %2, 3
  br i1 %i.b, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not6375.not = icmp eq i32 %2, 3               ; 2 uses
  br i1 %.not6375.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @RedisModule_WrongArity, align 8, !tbaa !13
  %i.d = tail call i32 %i.c(ptr noundef %0) #22
  br label %bb.m

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !133

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 3, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.e = load ptr, ptr @RedisModule_StringPtrLen, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !115
  %i.h = tail call ptr %i.e(ptr noundef %i.g, ptr noundef null) #22
  %i.i = tail call i32 @strcasecmp(ptr noundef %i.h, ptr noundef nonnull @.str.77) #25
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %.thread71

.thread71:                                        ; preds = %.lr.ph
  %i.j = load ptr, ptr @RedisModule_ReplyWithError, align 8, !tbaa !13
  %i.k = tail call i32 %i.j(ptr noundef %0, ptr noundef nonnull @.str.78) #22
  br label %bb.m

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !115
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !115
  %i.p = load ptr, ptr @RedisModule_OpenKey, align 8, !tbaa !13
  %i.q = tail call ptr %i.p(ptr noundef %0, ptr noundef %i.m, i32 noundef 1) #22 ; 3 uses
  %i.r = load ptr, ptr @RedisModule_KeyType, align 8, !tbaa !13
  %i.s = tail call i32 %i.r(ptr noundef %i.q) #22
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.u = load ptr, ptr @RedisModule_ReplyWithNull, align 8, !tbaa !13
  %i.v = tail call i32 %i.u(ptr noundef %0) #22
  br label %bb.m

bb.e:                                             ; preds = %._crit_edge
  %i.w = load ptr, ptr @RedisModule_ModuleTypeGetType, align 8, !tbaa !13
  %i.x = tail call ptr %i.w(ptr noundef %i.q) #22
  %i.y = load ptr, ptr @VectorSetType, align 8, !tbaa !121
  %.not64 = icmp eq ptr %i.x, %i.y
  br i1 %.not64, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr @RedisModule_ReplyWithError, align 8, !tbaa !13
  %i.aa = tail call i32 %i.z(ptr noundef %0, ptr noundef nonnull @.str.50) #22
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr @RedisModule_ModuleTypeGetValue, align 8, !tbaa !13
  %i.ac = tail call ptr %i.ab(ptr noundef %i.q) #22 ; 9 uses
  %i.ad = load ptr, ptr @RedisModule_DictGet, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !100
  %i.ag = tail call ptr %i.ad(ptr noundef %i.af, ptr noundef %i.o, ptr noundef null) #22 ; 5 uses
  %.not65 = icmp eq ptr %i.ag, null
  br i1 %.not65, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = load ptr, ptr @RedisModule_ReplyWithNull, align 8, !tbaa !13
  %i.ai = tail call i32 %i.ah(ptr noundef %0) #22
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  br i1 %.not6375.not, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr %i.ac, align 8, !tbaa !99
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1656
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !110
  %i.am = icmp eq i32 %i.al, 1                    ; 2 uses
  %i.an = load ptr, ptr @RedisModule_ReplyWithArray, align 8, !tbaa !13
  %i.ao = select i1 %i.am, i64 4, i64 3
  %i.ap = tail call i32 %i.an(ptr noundef %0, i64 noundef %i.ao) #22 ; 0 uses
  %i.aq = load ptr, ptr @RedisModule_ReplyWithSimpleString, align 8, !tbaa !13
  %i.ar = load ptr, ptr %i.ac, align 8, !tbaa !99
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1656
  %i.at = load i32, ptr %i.as, align 8, !tbaa !110 ; 2 uses
  %i.au = icmp ult i32 %i.at, 3
  br i1 %i.au, label %switch.lookup, label %vectorSetGetQuantName.exit

switch.lookup:                                    ; preds = %bb.j
  %i.av = zext nneg i32 %i.at to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.VINFO_RedisCommand, i64 %i.av
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %vectorSetGetQuantName.exit

vectorSetGetQuantName.exit:                       ; preds = %bb.j, %switch.lookup
  %.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.32, %bb.j ]
  %i.aw = tail call i32 %i.aq(ptr noundef %0, ptr noundef nonnull %.0.i) #22 ; 0 uses
  %i.ax = load ptr, ptr @RedisModule_ReplyWithStringBuffer, align 8, !tbaa !13
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !13
  %i.ba = load ptr, ptr %i.ac, align 8, !tbaa !99
  %i.bb = tail call i32 @hnsw_quants_bytes(ptr noundef %i.ba) #22
  %i.bc = zext i32 %i.bb to i64
  %i.bd = tail call i32 %i.ax(ptr noundef %0, ptr noundef %i.az, i64 noundef %i.bc) #22 ; 0 uses
  %i.be = load ptr, ptr @RedisModule_ReplyWithDouble, align 8, !tbaa !13
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ag, i64 28
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !84
  %i.bh = fpext float %i.bg to double
  %i.bi = tail call i32 %i.be(ptr noundef %0, double noundef %i.bh) #22 ; 0 uses
  br i1 %i.am, label %bb.k, label %bb.m

bb.k:                                             ; preds = %vectorSetGetQuantName.exit
  %i.bj = load ptr, ptr @RedisModule_ReplyWithDouble, align 8, !tbaa !13
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.bl = load float, ptr %i.bk, align 8, !tbaa !84
  %i.bm = fpext float %i.bl to double
  %i.bn = tail call i32 %i.bj(ptr noundef %0, double noundef %i.bm) #22 ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.bo = load ptr, ptr @RedisModule_Alloc, align 8, !tbaa !13
  %i.bp = load ptr, ptr %i.ac, align 8, !tbaa !99
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !128
  %i.bs = zext i32 %i.br to i64
  %i.bt = shl nuw nsw i64 %i.bs, 2
  %i.bu = tail call ptr %i.bo(i64 noundef %i.bt) #22 ; 3 uses
  %i.bv = load ptr, ptr %i.ac, align 8, !tbaa !99
  tail call void @hnsw_get_node_vector(ptr noundef %i.bv, ptr noundef nonnull %i.ag, ptr noundef %i.bu) #22
  %i.bw = load ptr, ptr @RedisModule_ReplyWithArray, align 8, !tbaa !13
  %i.bx = load ptr, ptr %i.ac, align 8, !tbaa !99
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !128
  %i.ca = zext i32 %i.bz to i64
  %i.cb = tail call i32 %i.bw(ptr noundef %0, i64 noundef %i.ca) #22 ; 0 uses
  %i.cc = load ptr, ptr %i.ac, align 8, !tbaa !99
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !128
  %.not81 = icmp eq i32 %i.ce, 0
  br i1 %.not81, label %._crit_edge80, label %.lr.ph79

._crit_edge80:                                    ; preds = %.lr.ph79, %bb.l
  %i.cf = load ptr, ptr @RedisModule_Free, align 8, !tbaa !13
  tail call void %i.cf(ptr noundef %i.bu) #22
  br label %bb.m

.lr.ph79:                                         ; preds = %bb.l, %.lr.ph79
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %.lr.ph79 ], [ 0, %bb.l ] ; 2 uses
  %i.cg = load ptr, ptr @RedisModule_ReplyWithDouble, align 8, !tbaa !13
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv83
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !84
  %i.cj = fpext float %i.ci to double
  %i.ck = tail call i32 %i.cg(ptr noundef %0, double noundef %i.cj) #22 ; 0 uses
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.cl = load ptr, ptr %i.ac, align 8, !tbaa !99
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !128
  %i.co = zext i32 %i.cn to i64
  %i.cp = icmp samesign ult i64 %indvars.iv.next84, %i.co
  br i1 %i.cp, label %.lr.ph79, label %._crit_edge80, !llvm.loop !134

bb.m:                                             ; preds = %.thread71, %bb.d, %bb.f, %._crit_edge80, %bb.k, %vectorSetGetQuantName.exit, %bb.h, %bb.b
  %.5 = phi i32 [ %i.d, %bb.b ], [ %i.k, %.thread71 ], [ %i.v, %bb.d ], [ %i.aa, %bb.f ], [ %i.ai, %bb.h ], [ 0, %vectorSetGetQuantName.exit ], [ 0, %bb.k ], [ 0, %._crit_edge80 ]
  ret i32 %.5
}

declare i32 @hnsw_quants_bytes(ptr noundef) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define dso_local i32 @VSETATTR_RedisCommand(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = load ptr, ptr @RedisModule_AutoMemory, align 8, !tbaa !13
  tail call void %i.b(ptr noundef %0) #22
  %.not = icmp eq i32 %2, 4
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @RedisModule_WrongArity, align 8, !tbaa !13
  %i.d = tail call i32 %i.c(ptr noundef %0) #22
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @RedisModule_OpenKey, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !115
  %i.h = tail call ptr %i.e(ptr noundef %0, ptr noundef %i.g, i32 noundef 3) #22 ; 3 uses
  %i.i = load ptr, ptr @RedisModule_KeyType, align 8, !tbaa !13
  %i.j = tail call i32 %i.i(ptr noundef %i.h) #22
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr @RedisModule_ReplyWithBool, align 8, !tbaa !13
  %i.m = tail call i32 %i.l(ptr noundef %0, i32 noundef 0) #22
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  %i.n = load ptr, ptr @RedisModule_ModuleTypeGetType, align 8, !tbaa !13
  %i.o = tail call ptr %i.n(ptr noundef %i.h) #22
  %i.p = load ptr, ptr @VectorSetType, align 8, !tbaa !121
  %.not33 = icmp eq ptr %i.o, %i.p
  br i1 %.not33, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr @RedisModule_ReplyWithError, align 8, !tbaa !13
  %i.r = tail call i32 %i.q(ptr noundef %0, ptr noundef nonnull @.str.50) #22
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.s = load ptr, ptr @RedisModule_ModuleTypeGetValue, align 8, !tbaa !13
  %i.t = tail call ptr %i.s(ptr noundef %i.h) #22 ; 4 uses
  %i.u = load ptr, ptr @RedisModule_DictGet, align 8, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !100
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !115
  %i.z = tail call ptr %i.u(ptr noundef %i.w, ptr noundef %i.y, ptr noundef null) #22 ; 2 uses
  %.not34 = icmp eq ptr %i.z, null
  br i1 %.not34, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr @RedisModule_ReplyWithBool, align 8, !tbaa !13
  %i.ab = tail call i32 %i.aa(ptr noundef %0, i32 noundef 0) #22
  br label %bb.q

bb.i:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 288
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !115 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %i.ah = tail call i32 @pthread_rwlock_wrlock(ptr noundef nonnull %i.ag) #22
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %vectorSetWaitAllBackgroundClients.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr @RedisModule__Assert, align 8, !tbaa !13
  tail call void %i.aj(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.27, i32 noundef 286) #22, !inline_history !114
  tail call void @exit(i32 noundef 1) #23
  unreachable

vectorSetWaitAllBackgroundClients.exit:           ; preds = %bb.i
  %i.ak = tail call i32 @pthread_rwlock_unlock(ptr noundef nonnull %i.ag) #22 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.al = load ptr, ptr @RedisModule_StringPtrLen, align 8, !tbaa !13
  %i.am = call ptr %i.al(ptr noundef %i.af, ptr noundef nonnull %i.a) #22 ; 0 uses
  %i.an = load i64, ptr %i.a, align 8, !tbaa !92
  %i.ao = icmp eq i64 %i.an, 0
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !108 ; 3 uses
  %.not36 = icmp eq ptr %i.aq, null               ; 2 uses
  br i1 %i.ao, label %bb.k, label %bb.m

bb.k:                                             ; preds = %vectorSetWaitAllBackgroundClients.exit
  br i1 %.not36, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 96 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !103
  %i.at = add i64 %i.as, -1
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !103
  br label %.sink.split

bb.m:                                             ; preds = %vectorSetWaitAllBackgroundClients.exit
  br i1 %.not36, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = load ptr, ptr @RedisModule_FreeString, align 8, !tbaa !13
  call void %i.au(ptr noundef null, ptr noundef nonnull %i.aq) #22
  br label %.sink.split

bb.o:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %i.t, i64 96 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !103
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !103
  br label %.sink.split

.sink.split:                                      ; preds = %bb.n, %bb.o, %bb.l
  %RedisModule_FreeString.sink = phi ptr [ @RedisModule_FreeString, %bb.l ], [ @RedisModule_RetainString, %bb.o ], [ @RedisModule_RetainString, %bb.n ]
  %.sink39 = phi ptr [ %i.aq, %bb.l ], [ %i.af, %bb.o ], [ %i.af, %bb.n ]
  %.sink = phi ptr [ null, %bb.l ], [ %i.af, %bb.o ], [ %i.af, %bb.n ]
  %i.ay = load ptr, ptr %RedisModule_FreeString.sink, align 8, !tbaa !13
  call void %i.ay(ptr noundef null, ptr noundef %.sink39) #22
  store ptr %.sink, ptr %i.ap, align 8, !tbaa !108
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.k
  %i.az = load ptr, ptr @RedisModule_ReplyWithBool, align 8, !tbaa !13
  %i.ba = call i32 %i.az(ptr noundef %0, i32 noundef 1) #22 ; 0 uses
  %i.bb = load ptr, ptr @RedisModule_ReplicateVerbatim, align 8, !tbaa !13
  %i.bc = call i32 %i.bb(ptr noundef %0) #22      ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.q

bb.q:                                             ; preds = %bb.d, %bb.f, %bb.p, %bb.h, %bb.b
  %.2 = phi i32 [ %i.d, %bb.b ], [ %i.m, %bb.d ], [ %i.r, %bb.f ], [ 0, %bb.p ], [ %i.ab, %bb.h ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define dso_local i32 @VGETATTR_RedisCommand(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #0 {
bb.a:
  %i.a = load ptr, ptr @RedisModule_AutoMemory, align 8, !tbaa !13
  tail call void %i.a(ptr noundef %0) #22
  %.not = icmp eq i32 %2, 3
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @RedisModule_WrongArity, align 8, !tbaa !13
  %i.c = tail call i32 %i.b(ptr noundef %0) #22
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @RedisModule_OpenKey, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !115
  %i.g = tail call ptr %i.d(ptr noundef %0, ptr noundef %i.f, i32 noundef 1) #22 ; 3 uses
  %i.h = load ptr, ptr @RedisModule_KeyType, align 8, !tbaa !13
  %i.i = tail call i32 %i.h(ptr noundef %i.g) #22
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr @RedisModule_ReplyWithNull, align 8, !tbaa !13
  %i.l = tail call i32 %i.k(ptr noundef %0) #22
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.m = load ptr, ptr @RedisModule_ModuleTypeGetType, align 8, !tbaa !13
  %i.n = tail call ptr %i.m(ptr noundef %i.g) #22
  %i.o = load ptr, ptr @VectorSetType, align 8, !tbaa !121
  %.not22 = icmp eq ptr %i.n, %i.o
  br i1 %.not22, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr @RedisModule_ReplyWithError, align 8, !tbaa !13
  %i.q = tail call i32 %i.p(ptr noundef %0, ptr noundef nonnull @.str.50) #22
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.r = load ptr, ptr @RedisModule_ModuleTypeGetValue, align 8, !tbaa !13
  %i.s = tail call ptr %i.r(ptr noundef %i.g) #22
  %i.t = load ptr, ptr @RedisModule_DictGet, align 8, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !100
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !115
  %i.y = tail call ptr %i.t(ptr noundef %i.v, ptr noundef %i.x, ptr noundef null) #22 ; 2 uses
  %.not23 = icmp eq ptr %i.y, null
end_hunk_4
begin_hunk_5_@RedisModule_OnLoad:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.z, %bb.y, %bb.x
  %.16 = phi i32 [ 1, %bb.y ], [ 1, %bb.x ], [ %.14, %bb.be ], [ 1, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.w, %bb.v, %bb.u
  %.18 = phi i32 [ 1, %bb.v ], [ 1, %bb.u ], [ %.16, %bb.bf ], [ 1, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.t, %bb.s, %bb.r
  %.20 = phi i32 [ 1, %bb.s ], [ 1, %bb.r ], [ %.18, %bb.bg ], [ 1, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.q, %bb.p, %bb.o
  %.22 = phi i32 [ 1, %bb.p ], [ 1, %bb.o ], [ %.20, %bb.bh ], [ 1, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.n, %bb.m, %bb.l
  %.24 = phi i32 [ 1, %bb.m ], [ 1, %bb.l ], [ %.22, %bb.bi ], [ 1, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.k, %bb.j, %bb.i
  %.26 = phi i32 [ 1, %bb.j ], [ 1, %bb.i ], [ %.24, %bb.bj ], [ 1, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %RedisModule_Init.exit

RedisModule_Init.exit:                            ; preds = %bb.h, %bb.f, %bb.d, %bb.b, %bb.bk
  %.27 = phi i32 [ %.26, %bb.bk ], [ 1, %bb.b ], [ 1, %bb.d ], [ 1, %bb.f ], [ 1, %bb.h ]
  ret i32 %.27
}

declare void @hnsw_set_allocator(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @VectorSets_OnLoad(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @RedisModule_OnLoad(ptr noundef %0, ptr poison, i32 poison)
  ret i32 %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nounwind willreturn uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nounwind }
attributes #23 = { cold noreturn nounwind }
attributes #24 = { nounwind willreturn memory(none) }
attributes #25 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!14, !14, i64 0}
!14 = !{!"any pointer", !11, i64 0}
!15 = !{!16, !10, i64 4}
!16 = !{!"exprtoken", !10, i64 0, !10, i64 4, !10, i64 8, !11, i64 16}
!17 = !{!16, !10, i64 0}
!18 = !{!11, !11, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"p1 _ZTS9exprtoken", !14, i64 0}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!24, !25, i64 0}
!24 = !{!"exprstack", !25, i64 0, !10, i64 8, !10, i64 12}
!25 = !{!"p2 _ZTS9exprtoken", !26, i64 0}
!26 = !{!"any p2 pointer", !14, i64 0}
!27 = !{!24, !10, i64 8}
!28 = !{!24, !10, i64 12}
!29 = distinct !{!29, !22}
!30 = distinct !{!30, !22}
!31 = !{!32, !33, i64 8}
!32 = !{!"exprstate", !33, i64 0, !33, i64 8, !24, i64 16, !24, i64 32, !24, i64 48, !24, i64 64}
!33 = !{!"p1 omnipotent char", !14, i64 0}
!34 = !{!35, !35, i64 0}
!35 = !{!"p1 short", !14, i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"short", !11, i64 0}
!38 = distinct !{!38, !22}
!39 = !{ptr @exprNewToken}
!40 = distinct !{!40, !22}
!41 = !{!42, !33, i64 0}
!42 = !{!"", !33, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20}
!43 = !{!42, !10, i64 8}
!44 = !{!42, !10, i64 12}
!45 = distinct !{!45, !22}
!46 = distinct !{!46, !22}
!47 = distinct !{!47, !22, !48}
!48 = !{!"llvm.loop.peeled.count", i32 1}
!49 = !{!33, !33, i64 0}
!50 = distinct !{!50, !22}
!51 = !{ptr @exprParseString, ptr @exprNewToken}
!52 = !{!32, !33, i64 0}
!53 = !{ptr @exprStackFree}
!54 = !{ptr @exprParseSelector, ptr @exprNewToken}
!55 = !{ptr @exprStackPush}
!56 = distinct !{!56, !22}
!57 = !{!42, !10, i64 16}
!58 = distinct !{!58, !22}
!59 = !{!42, !10, i64 20}
!60 = !{!16, !10, i64 8}
!61 = !{ptr @exprStackInit}
!62 = !{!32, !10, i64 56}
!63 = !{!32, !25, i64 48}
!64 = distinct !{!64, !22}
!65 = !{!32, !10, i64 40}
!66 = distinct !{!66, !22}
!67 = distinct !{!67, !22}
!68 = distinct !{!68, !22}
!69 = distinct !{!69, !22}
!70 = distinct !{!70, !22}
!71 = distinct !{null, ptr @exprNewToken}
!72 = distinct !{null}
!73 = distinct !{!73, !22}
!74 = distinct !{ptr @exprNewToken, null}
!75 = distinct !{null}
!76 = distinct !{null, ptr @exprNewToken}
!77 = distinct !{!77, !22}
!78 = distinct !{null, ptr @exprNewToken}
!79 = !{!32, !10, i64 72}
!80 = !{!32, !25, i64 64}
!81 = distinct !{!81, !22}
!82 = distinct !{!82, !22}
!83 = distinct !{!83, !22}
!84 = !{!85, !85, i64 0}
!85 = !{!"float", !11, i64 0}
!86 = distinct !{!86, !22}
!87 = distinct !{!87, !22}
!88 = distinct !{!88, !22}
!89 = distinct !{!89, !90}
!90 = !{!"llvm.loop.unroll.disable"}
!91 = distinct !{!91, !22}
!92 = !{!93, !93, i64 0}
!93 = !{!"long", !11, i64 0}
!94 = !{!95, !93, i64 88}
!95 = !{!"vsetObject", !96, i64 0, !97, i64 8, !98, i64 16, !10, i64 24, !11, i64 32, !93, i64 88, !93, i64 96, !11, i64 104}
!96 = !{!"p1 _ZTS4HNSW", !14, i64 0}
!97 = !{!"p1 _ZTS15RedisModuleDict", !14, i64 0}
!98 = !{!"p1 float", !14, i64 0}
!99 = !{!95, !96, i64 0}
!100 = !{!95, !97, i64 8}
!101 = !{!95, !98, i64 16}
!102 = !{!95, !10, i64 24}
!103 = !{!95, !93, i64 96}
!104 = !{!95, !11, i64 104}
!105 = !{!106, !107, i64 0}
!106 = !{!"vsetNodeVal", !107, i64 0, !107, i64 8}
!107 = !{!"p1 _ZTS17RedisModuleString", !14, i64 0}
!108 = !{!106, !107, i64 8}
!109 = distinct !{!109, !22}
!110 = !{!111, !10, i64 1656}
!111 = !{!"HNSW", !112, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !93, i64 24, !11, i64 32, !11, i64 40, !112, i64 296, !11, i64 304, !11, i64 360, !11, i64 1640, !11, i64 1648, !10, i64 1656, !113, i64 1664}
!112 = !{!"p1 _ZTS8hnswNode", !14, i64 0}
!113 = !{!"p1 _ZTS10hnswCursor", !14, i64 0}
!114 = !{ptr @vectorSetWaitAllBackgroundClients}
!115 = !{!107, !107, i64 0}
!116 = !{!117, !117, i64 0}
!117 = !{!"long long", !11, i64 0}
!118 = !{!119, !119, i64 0}
!119 = !{!"double", !11, i64 0}
!120 = distinct !{!120, !22}
!121 = !{!122, !122, i64 0}
!122 = !{!"p1 _ZTS15RedisModuleType", !14, i64 0}
!123 = distinct !{!123, !22}
!124 = !{!125, !10, i64 0}
!125 = !{!"", !10, i64 0}
!126 = !{ptr @createVectorSetObject}
!127 = !{!111, !10, i64 8}
!128 = !{!111, !10, i64 16}
!129 = !{!111, !93, i64 24}
!130 = !{!112, !112, i64 0}
!131 = distinct !{!131, !22}
!132 = distinct !{!132, !22}
!133 = distinct !{!133, !22}
!134 = distinct !{!134, !22}
!135 = !{!136, !10, i64 8}
!136 = !{!"", !137, i64 0, !10, i64 8, !10, i64 12, !85, i64 16, !10, i64 20}
!137 = !{!"p2 _ZTS8hnswNode", !26, i64 0}
!138 = distinct !{!138, !22}
!139 = !{!136, !137, i64 0}
!140 = distinct !{!140, !22}
!141 = !{!111, !10, i64 12}
!142 = !{!111, !11, i64 32}
!143 = distinct !{!143, !22}
!144 = distinct !{!144, !22}
!145 = !{!111, !112, i64 296}
!146 = distinct !{!146, !22}
!147 = !{!148, !10, i64 0}
!148 = !{!"vsetRangeOp", !10, i64 0, !10, i64 4, !10, i64 8, !33, i64 16, !93, i64 24}
!149 = !{!148, !10, i64 4}
!150 = !{!148, !10, i64 8}
!151 = !{!148, !33, i64 16}
!152 = !{!148, !93, i64 24}
!153 = !{ptr @vsetParseRangeOp}
!154 = distinct !{!154, !22}
!155 = !{!156, !14, i64 0}
!156 = !{!"hnswSerNode", !14, i64 0, !10, i64 8, !157, i64 16, !10, i64 24}
!157 = !{!"p1 long", !14, i64 0}
!158 = !{!156, !10, i64 8}
!159 = !{!156, !10, i64 24}
!160 = distinct !{!160, !22}
!161 = !{!156, !157, i64 16}
!162 = distinct !{!162, !22}
!163 = distinct !{!163, !22}
!164 = !{ptr @vectorSetReleaseNodeValue}
!165 = !{ptr @vectorSetReleaseObject}
!166 = !{!136, !10, i64 12}
!167 = distinct !{!167, !22}
!168 = distinct !{!168, !22}
!169 = distinct !{null}
!170 = !{ptr @VectorSets_InitModuleConfig}
!171 = !{!172, !33, i64 0}
!172 = !{!"RedisModuleCommandArg", !33, i64 0, !10, i64 8, !10, i64 12, !33, i64 16, !33, i64 24, !33, i64 32, !10, i64 40, !33, i64 48, !173, i64 56, !33, i64 64}
!173 = !{!"p1 _ZTS21RedisModuleCommandArg", !14, i64 0}
!174 = !{!172, !10, i64 8}
!175 = !{!172, !10, i64 12}
!176 = !{!172, !33, i64 16}
!177 = !{!172, !10, i64 40}
!178 = !{!172, !33, i64 48}
!179 = !{i64 0, i64 144, !18}
!180 = !{!172, !173, i64 56}
!181 = !{!172, !33, i64 64}
!182 = !{i64 0, i64 216, !18}
!183 = !{i64 0, i64 288, !18}
!184 = !{!185, !14, i64 0}
!185 = !{!"", !14, i64 0, !33, i64 8, !33, i64 16, !33, i64 24, !14, i64 32, !33, i64 40, !10, i64 48, !14, i64 56, !173, i64 64}
!186 = !{!185, !33, i64 8}
!187 = !{!185, !33, i64 16}
!188 = !{!185, !33, i64 24}
!189 = !{!185, !10, i64 48}
!190 = !{!185, !14, i64 56}
!191 = !{!185, !173, i64 64}
end_hunk_5
