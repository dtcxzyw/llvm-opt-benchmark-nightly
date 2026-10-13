Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/DetourObstacleAvoidance?download=true
inline.NumInlined: 71
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN24dtObstacleAvoidanceQuery13processSampleEPKffS1_fS1_S1_fP28dtObstacleAvoidanceDebugData:bb.a
  %i.ao = fsub float %i.an, %i.am
  %i.ap = fcmp ogt float %i.ao, f0xB4000000
  br i1 %i.ap, label %_ZN28dtObstacleAvoidanceDebugData9addSampleEPKfffffff.exit, label %.preheader154

.preheader154:                                    ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !34 ; 3 uses
  %.not95160 = icmp sgt i32 %i.ar, 0
  br i1 %.not95160, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.preheader154
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !31
  %i.au = fmul float %i.c, 2.000000e+00
  %i.av = fmul float %i.g, 2.000000e+00
  %i.aw = fsub float %i.au, %i.j
  %i.ax = fsub float %i.av, %i.l
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8
  %wide.trip.count = zext nneg i32 %i.ar to i64
  br label %bb.b

.preheader:                                       ; preds = %_ZL17sweepCircleCirclePKffS0_S0_fRfS1_.exit.thread, %.preheader154
  %.075.lcssa = phi float [ %i.am, %.preheader154 ], [ %.277.ph, %_ZL17sweepCircleCirclePKffS0_S0_fRfS1_.exit.thread ] ; 2 uses
  %.073.lcssa = phi float [ 0.000000e+00, %.preheader154 ], [ %i.cf, %_ZL17sweepCircleCirclePKffS0_S0_fRfS1_.exit.thread ] ; 2 uses
  %.072.lcssa = phi i32 [ 0, %.preheader154 ], [ %i.ar, %_ZL17sweepCircleCirclePKffS0_S0_fRfS1_.exit.thread ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !36 ; 2 uses
  %.not97167 = icmp sgt i32 %i.ba, 0
  br i1 %.not97167, label %.lr.ph170, label %._crit_edge

.lr.ph170:                                        ; preds = %.preheader
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !32
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %wide.trip.count182 = zext nneg i32 %i.ba to i64
  br label %bb.f

bb.b:                                             ; preds = %.lr.ph, %_ZL17sweepCircleCirclePKffS0_S0_fRfS1_.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZL17sweepCircleCirclePKffS0_S0_fRfS1_.exit.thread ] ; 2 uses
  %.073162 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.cf, %_ZL17sweepCircleCirclePKffS0_S0_fRfS1_.exit.thread ]
  %.075161 = phi float [ %i.am, %.lr.ph ], [ %.277.ph, %_ZL17sweepCircleCirclePKffS0_S0_fRfS1_.exit.thread ] ; 4 uses
  %i.be = getelementptr inbounds nuw [64 x i8], ptr %i.at, i64 %indvars.iv ; 9 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !24
  %i.bh = fsub float %i.aw, %i.bg                 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 20
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !24
  %i.bk = fsub float %i.ax, %i.bj                 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !24
  %i.bp = fmul float %i.bk, %i.bo
  %i.bq = tail call noundef float @llvm.fmuladd.f32(float %i.bm, float %i.bh, float %i.bp)
  %i.br = tail call float @llvm.fmuladd.f32(float %i.bq, float 5.000000e-01, float 5.000000e-01) ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.be, i64 52
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !24
  %i.bu = getelementptr inbounds nuw i8, ptr %i.be, i64 60
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !24
  %i.bw = fmul float %i.bk, %i.bv
  %i.bx = tail call noundef float @llvm.fmuladd.f32(float %i.bt, float %i.bh, float %i.bw)
  %i.by = fmul float %i.bx, 2.000000e+00          ; 2 uses
  %i.bz = fcmp olt float %i.br, %i.by
  %i.ca = select i1 %i.bz, float %i.br, float %i.by ; 3 uses
  %i.cb = fcmp olt float %i.ca, 0.000000e+00
  %i.cc = fcmp ogt float %i.ca, 1.000000e+00
  %i.cd = select i1 %i.cc, float 1.000000e+00, float %i.ca
  %i.ce = select i1 %i.cb, float 0.000000e+00, float %i.cd
  %i.cf = fadd float %.073162, %i.ce              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cg = fmul float %i.bk, %i.bk
  %i.ch = tail call noundef float @llvm.fmuladd.f32(float %i.bh, float %i.bh, float %i.cg) ; 3 uses
  %i.ci = fcmp olt float %i.ch, f0x38D1B717
  br i1 %i.ci, label %_ZL17sweepCircleCirclePKffS0_S0_fRfS1_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cj = getelementptr inbounds nuw i8, ptr %i.be, i64 36
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !38
  %i.cl = load float, ptr %i.be, align 4, !tbaa !24
  %i.cm = load float, ptr %3, align 4, !tbaa !24
  %i.cn = fsub float %i.cl, %i.cm                 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.cp = load float, ptr %i.co, align 4, !tbaa !24
  %i.cq = load float, ptr %i.ay, align 4, !tbaa !24
  %i.cr = fsub float %i.cp, %i.cq                 ; 3 uses
  %i.cs = fmul float %i.cr, %i.cr
  %i.ct = tail call noundef float @llvm.fmuladd.f32(float %i.cn, float %i.cn, float %i.cs)
  %i.cu = fadd float %4, %i.ck                    ; 2 uses
  %i.cv = fneg float %i.cu
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.cu, float %i.ct)
  %i.cx = fmul float %i.bk, %i.cr
  %i.cy = tail call noundef float @llvm.fmuladd.f32(float %i.bh, float %i.cn, float %i.cx) ; 4 uses
  %i.cz = fneg float %i.cw
  %i.da = fmul float %i.ch, %i.cz
  %i.db = tail call float @llvm.fmuladd.f32(float %i.cy, float %i.cy, float %i.da) ; 2 uses
  %i.dc = fcmp olt float %i.db, 0.000000e+00
  br i1 %i.dc, label %_ZL17sweepCircleCirclePKffS0_S0_fRfS1_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.dd = fdiv float 1.000000e+00, %i.ch          ; 2 uses
  %i.de = tail call noundef float @sqrtf(float noundef %i.db) #10 ; 2 uses
  %i.df = fsub float %i.cy, %i.de
  %i.dg = fmul float %i.dd, %i.df                 ; 3 uses
  %i.dh = fadd float %i.cy, %i.de
  %i.di = fmul float %i.dd, %i.dh
  %i.dj = fcmp olt float %i.dg, 0.000000e+00
  %i.dk = fcmp ogt float %i.di, 0.000000e+00
  %or.cond = and i1 %i.dj, %i.dk
  %i.dl = fmul nnan float %i.dg, -5.000000e-01
  %.0122 = select i1 %or.cond, float %i.dl, float %i.dg ; 4 uses
  %i.dm = fcmp oge float %.0122, 0.000000e+00
  %i.dn = fcmp olt float %.0122, %.075161
  %or.cond100 = select i1 %i.dm, i1 %i.dn, i1 false
  br i1 %or.cond100, label %bb.e, label %_ZL17sweepCircleCirclePKffS0_S0_fRfS1_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.do = fcmp olt float %.0122, %i.an
  br i1 %i.do, label %_ZN28dtObstacleAvoidanceDebugData9addSampleEPKfffffff.exit, label %_ZL17sweepCircleCirclePKffS0_S0_fRfS1_.exit.thread

_ZL17sweepCircleCirclePKffS0_S0_fRfS1_.exit.thread: ; preds = %bb.e, %bb.c, %bb.b, %bb.d
  %.277.ph = phi float [ %.075161, %bb.c ], [ %.075161, %bb.d ], [ %.075161, %bb.b ], [ %.0122, %bb.e ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %bb.b

bb.f:                                             ; preds = %.lr.ph170, %_ZL11isectRaySegPKfS0_S0_S0_Rf.exit.thread
  %indvars.iv179 = phi i64 [ 0, %.lr.ph170 ], [ %indvars.iv.next180, %_ZL11isectRaySegPKfS0_S0_S0_Rf.exit.thread ] ; 2 uses
  %.4168 = phi float [ %.075.lcssa, %.lr.ph170 ], [ %.6.ph, %_ZL11isectRaySegPKfS0_S0_S0_Rf.exit.thread ] ; 6 uses
  %i.dp = getelementptr inbounds nuw [28 x i8], ptr %i.bc, i64 %indvars.iv179 ; 5 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load i8, ptr %i.dq, align 4, !tbaa !41, !range !68, !noundef !69
  %i.ds = trunc nuw i8 %i.dr to i1
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  %i.du = load float, ptr %i.dt, align 4, !tbaa !24
  %i.dv = load float, ptr %i.dp, align 4, !tbaa !24 ; 2 uses
  %i.dw = fsub float %i.du, %i.dv                 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dp, i64 20
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !24
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !24 ; 2 uses
  %i.eb = fsub float %i.dy, %i.ea                 ; 3 uses
  br i1 %i.ds, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ec = fneg float %i.eb
  %i.ed = fmul float %i.g, %i.dw
  %i.ee = tail call noundef float @llvm.fmuladd.f32(float %i.ec, float %i.c, float %i.ed)
  %i.ef = fcmp uge float %i.ee, 0.000000e+00
  br i1 %i.ef, label %.thread138, label %_ZL11isectRaySegPKfS0_S0_S0_Rf.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.eg = load float, ptr %3, align 4, !tbaa !24
  %i.eh = fsub float %i.eg, %i.dv                 ; 2 uses
  %i.ei = fneg float %i.eb
  %i.ej = fmul float %i.c, %i.ei
  %i.ek = tail call noundef float @llvm.fmuladd.f32(float %i.g, float %i.dw, float %i.ej) ; 2 uses
  %i.el = tail call noundef float @llvm.fabs.f32(float %i.ek)
  %i.em = fcmp olt float %i.el, f0x358637BD
  br i1 %i.em, label %_ZL11isectRaySegPKfS0_S0_S0_Rf.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.en = load float, ptr %i.bd, align 4, !tbaa !24
  %i.eo = fsub float %i.en, %i.ea
  %i.ep = fdiv float 1.000000e+00, %i.ek          ; 2 uses
  %i.eq = fneg float %i.eo                        ; 2 uses
  %i.er = fmul float %i.dw, %i.eq
  %i.es = tail call noundef float @llvm.fmuladd.f32(float %i.eb, float %i.eh, float %i.er)
  %i.et = fmul float %i.ep, %i.es                 ; 3 uses
  %i.eu = fcmp olt float %i.et, 0.000000e+00
  %i.ev = fcmp ogt float %i.et, 1.000000e+00
  %or.cond17.i = or i1 %i.eu, %i.ev
  br i1 %or.cond17.i, label %_ZL11isectRaySegPKfS0_S0_S0_Rf.exit.thread, label %_ZL11isectRaySegPKfS0_S0_S0_Rf.exit

_ZL11isectRaySegPKfS0_S0_S0_Rf.exit:              ; preds = %bb.i
  %i.ew = fmul float %i.c, %i.eq
  %i.ex = tail call noundef float @llvm.fmuladd.f32(float %i.g, float %i.eh, float %i.ew)
  %i.ey = fmul float %i.ep, %i.ex                 ; 2 uses
  %i.ez = fcmp olt float %i.ey, 0.000000e+00
  %i.fa = fcmp ogt float %i.ey, 1.000000e+00
  %or.cond.not.i.not = or i1 %i.ez, %i.fa
  br i1 %or.cond.not.i.not, label %_ZL11isectRaySegPKfS0_S0_S0_Rf.exit.thread, label %.thread138

.thread138:                                       ; preds = %bb.g, %_ZL11isectRaySegPKfS0_S0_S0_Rf.exit
  %.1119 = phi float [ %i.et, %_ZL11isectRaySegPKfS0_S0_S0_Rf.exit ], [ 0.000000e+00, %bb.g ]
  %i.fb = fmul float %.1119, 2.000000e+00         ; 3 uses
  %i.fc = fcmp olt float %i.fb, %.4168
  br i1 %i.fc, label %bb.j, label %_ZL11isectRaySegPKfS0_S0_S0_Rf.exit.thread

bb.j:                                             ; preds = %.thread138
  %i.fd = fcmp olt float %i.fb, %i.an
  br i1 %i.fd, label %_ZN28dtObstacleAvoidanceDebugData9addSampleEPKfffffff.exit, label %_ZL11isectRaySegPKfS0_S0_S0_Rf.exit.thread

_ZL11isectRaySegPKfS0_S0_S0_Rf.exit.thread:       ; preds = %bb.j, %bb.i, %bb.h, %_ZL11isectRaySegPKfS0_S0_S0_Rf.exit, %.thread138, %bb.g
  %.6.ph = phi float [ %.4168, %_ZL11isectRaySegPKfS0_S0_S0_Rf.exit ], [ %.4168, %bb.g ], [ %.4168, %.thread138 ], [ %.4168, %bb.i ], [ %.4168, %bb.h ], [ %i.fb, %bb.j ] ; 2 uses
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 1 ; 2 uses
  %exitcond183.not = icmp eq i64 %indvars.iv.next180, %wide.trip.count182
  br i1 %exitcond183.not, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %_ZL11isectRaySegPKfS0_S0_S0_Rf.exit.thread, %.preheader
  %.4.lcssa = phi float [ %.075.lcssa, %.preheader ], [ %.6.ph, %_ZL11isectRaySegPKfS0_S0_S0_Rf.exit.thread ]
  %.not98 = icmp eq i32 %.072.lcssa, 0
  %9 = uitofp nneg i32 %.072.lcssa to float
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !70
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !43
  %i.fi = tail call float @llvm.fmuladd.f32(float %.4.lcssa, float %i.fh, float 1.000000e-01)
  %i.fj = insertelement <2 x float> <float poison, float 1.000000e+00>, float %.073.lcssa, i64 0
  %i.fk = insertelement <2 x float> poison, float %9, i64 0
  %i.fl = insertelement <2 x float> %i.fk, float %i.fi, i64 1
  %i.fm = fdiv <2 x float> %i.fj, %i.fl           ; 2 uses
  %i.fn = extractelement <2 x float> %i.fm, i64 0
  %.2 = select i1 %.not98, float %.073.lcssa, float %i.fn
  %i.fo = fmul float %.2, %i.ff                   ; 2 uses
  %i.fp = extractelement <2 x float> %i.fm, i64 1
  %i.fq = fmul float %i.ai, %i.fp                 ; 2 uses
  %i.fr = fadd float %i.ad, %i.af
  %i.fs = fadd float %i.fr, %i.fo
  %i.ft = fadd float %i.fs, %i.fq                 ; 4 uses
  %.not99 = icmp eq ptr %8, null
  br i1 %.not99, label %_ZN28dtObstacleAvoidanceDebugData9addSampleEPKfffffff.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.fu = load i32, ptr %8, align 8, !tbaa !22    ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !21
  %.not.i = icmp slt i32 %i.fu, %i.fw
  br i1 %.not.i, label %bb.l, label %_ZN28dtObstacleAvoidanceDebugData9addSampleEPKfffffff.exit

bb.l:                                             ; preds = %bb.k
  %i.fx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !14
  %i.fz = mul nsw i32 %i.fu, 3
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.fy, i64 %i.ga ; 3 uses
  store float %i.c, ptr %i.gb, align 4, !tbaa !24
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !24
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 4
  store float %i.gd, ptr %i.ge, align 4, !tbaa !24
  %i.gf = load float, ptr %i.f, align 4, !tbaa !24
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  store float %i.gf, ptr %i.gg, align 4, !tbaa !24
  %i.gh = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !15
  %i.gj = sext i32 %i.fu to i64                   ; 6 uses
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.gi, i64 %i.gj
  store float %2, ptr %i.gk, align 4, !tbaa !24
  %i.gl = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !16
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.gm, i64 %i.gj
  store float %i.ft, ptr %i.gn, align 4, !tbaa !24
  %i.go = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !17
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.gp, i64 %i.gj
  store float %i.ad, ptr %i.gq, align 4, !tbaa !24
  %i.gr = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !18
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.gs, i64 %i.gj
  store float %i.af, ptr %i.gt, align 4, !tbaa !24
  %i.gu = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !19
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.gv, i64 %i.gj
  store float %i.fo, ptr %i.gw, align 4, !tbaa !24
  %i.gx = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !20
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.gj
  store float %i.fq, ptr %i.gz, align 4, !tbaa !24
  %i.ha = add nsw i32 %i.fu, 1
  store i32 %i.ha, ptr %8, align 8, !tbaa !22
  br label %_ZN28dtObstacleAvoidanceDebugData9addSampleEPKfffffff.exit

_ZN28dtObstacleAvoidanceDebugData9addSampleEPKfffffff.exit: ; preds = %bb.e, %bb.j, %bb.l, %bb.k, %._crit_edge, %bb.a
  %.790 = phi float [ %7, %bb.a ], [ %i.ft, %bb.l ], [ %7, %bb.j ], [ %i.ft, %._crit_edge ], [ %i.ft, %bb.k ], [ %7, %bb.e ]
  ret float %.790
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: nounwind uwtable
define noundef i32 @_ZN24dtObstacleAvoidanceQuery18sampleVelocityGridEPKfffS1_S1_PfPK25dtObstacleAvoidanceParamsP28dtObstacleAvoidanceDebugData(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(76) %0, ptr noundef %1, float noundef %2, float noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef captures(address_is_null) %8) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 6 uses
  tail call void @_ZN24dtObstacleAvoidanceQuery7prepareEPKfS1_(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef %1, ptr noundef %5)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 4 dereferenceable(28) %7, i64 28, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = load float, ptr %i.b, align 4, !tbaa !42
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %3, ptr %i.e, align 8, !tbaa !44
  %i.f = fcmp ogt float %3, 0.000000e+00
  %i.g = insertelement <2 x float> poison, float %i.c, i64 0
  %i.h = insertelement <2 x float> %i.g, float %3, i64 1
  %i.i = fdiv <2 x float> splat (float 1.000000e+00), %i.h ; 2 uses
  %i.j = extractelement <2 x float> %i.i, i64 0
  store float %i.j, ptr %i.d, align 4, !tbaa !43
  %i.k = extractelement <2 x float> %i.i, i64 1
  %i.l = select i1 %i.f, float %i.k, float f0x7F7FFFFF
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.l, ptr %i.m, align 4, !tbaa !45
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 4
  store <2 x float> zeroinitializer, ptr %6, align 4, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.o, align 4, !tbaa !24
  %.not = icmp eq ptr %8, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %8, align 8, !tbaa !22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = load float, ptr %5, align 4, !tbaa !24
  %i.q = load float, ptr %0, align 8, !tbaa !46   ; 3 uses
  %i.r = fmul float %i.p, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.t = load float, ptr %i.s, align 4, !tbaa !24
  %i.u = fmul float %i.q, %i.t
  %i.v = fmul float %3, 2.000000e+00
  %i.w = fsub float 1.000000e+00, %i.q
  %i.x = fmul float %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.z = load i8, ptr %i.y, align 8, !tbaa !71    ; 2 uses
  %i.aa = zext i8 %i.z to i32
  %i.ab = add nsw i32 %i.aa, -1
  %i.ac = sitofp i32 %i.ab to float               ; 2 uses
  %i.ad = fdiv float %i.x, %i.ac                  ; 5 uses
  %i.ae = fmul float %i.ad, %i.ac
  %i.af = fmul float %i.ae, 5.000000e-01          ; 2 uses
  %.not56 = icmp eq i8 %i.z, 0
  br i1 %.not56, label %._crit_edge54, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ai = fmul float %i.ad, 5.000000e-01
  %i.aj = fadd float %3, %i.ai                    ; 2 uses
  %i.ak = fmul float %i.aj, %i.aj
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.al = phi i8 [ 1, %.preheader.lr.ph ], [ %i.aq, %._crit_edge ]
  %.04053 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.ar, %._crit_edge ] ; 2 uses
  %.04152 = phi i32 [ 0, %.preheader.lr.ph ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.04251 = phi float [ f0x7F7FFFFF, %.preheader.lr.ph ], [ %.143.lcssa, %._crit_edge ] ; 2 uses
  %.not57 = icmp eq i8 %i.al, 0
  br i1 %.not57, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.am = uitofp nneg i32 %.04053 to float
  %i.an = tail call float @llvm.fmuladd.f32(float %i.am, float %i.ad, float %i.u)
  %i.ao = fsub float %i.an, %i.af                 ; 4 uses
  %i.ap = fmul float %i.ao, %i.ao
  br label %bb.d

._crit_edge54:                                    ; preds = %._crit_edge, %bb.c
  %.041.lcssa = phi i32 [ 0, %bb.c ], [ %.1.lcssa, %._crit_edge ]
  ret i32 %.041.lcssa

._crit_edge:                                      ; preds = %bb.g, %.preheader
  %i.aq = phi i8 [ 0, %.preheader ], [ %i.be, %bb.g ] ; 2 uses
  %.143.lcssa = phi float [ %.04251, %.preheader ], [ %.3, %bb.g ]
  %.1.lcssa = phi i32 [ %.04152, %.preheader ], [ %.2, %bb.g ] ; 2 uses
  %i.ar = add nuw nsw i32 %.04053, 1              ; 2 uses
  %i.as = zext i8 %i.aq to i32
  %i.at = icmp samesign ult i32 %i.ar, %i.as
  br i1 %i.at, label %.preheader, label %._crit_edge54

bb.d:                                             ; preds = %.lr.ph, %bb.g
  %.049 = phi i32 [ 0, %.lr.ph ], [ %i.bd, %bb.g ] ; 2 uses
  %.148 = phi i32 [ %.04152, %.lr.ph ], [ %.2, %bb.g ] ; 2 uses
  %.14347 = phi float [ %.04251, %.lr.ph ], [ %.3, %bb.g ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.au = uitofp nneg i32 %.049 to float
  %i.av = tail call float @llvm.fmuladd.f32(float %i.au, float %i.ad, float %i.r)
  %i.aw = fsub float %i.av, %i.af                 ; 4 uses
  store float %i.aw, ptr %i.a, align 4, !tbaa !24
  store float 0.000000e+00, ptr %i.ag, align 4, !tbaa !24
  store float %i.ao, ptr %i.ah, align 4, !tbaa !24
  %i.ax = fmul float %i.aw, %i.aw
  %i.ay = fadd float %i.ap, %i.ax
  %i.az = fcmp ogt float %i.ay, %i.ak
  br i1 %i.az, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ba = call noundef float @_ZN24dtObstacleAvoidanceQuery13processSampleEPKffS1_fS1_S1_fP28dtObstacleAvoidanceDebugData(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull %i.a, float noundef %i.ad, ptr noundef %1, float noundef %2, ptr noundef %4, ptr noundef nonnull %5, float noundef %.14347, ptr noundef %8) ; 2 uses
  %i.bb = add nsw i32 %.148, 1                    ; 2 uses
  %i.bc = fcmp olt float %i.ba, %.14347
  br i1 %i.bc, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store float %i.aw, ptr %6, align 4, !tbaa !24
  store float 0.000000e+00, ptr %i.n, align 4, !tbaa !24
  store float %i.ao, ptr %i.o, align 4, !tbaa !24
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %.3 = phi float [ %.14347, %bb.d ], [ %i.ba, %bb.f ], [ %.14347, %bb.e ] ; 2 uses
  %.2 = phi i32 [ %.148, %bb.d ], [ %i.bb, %bb.f ], [ %i.bb, %bb.e ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.bd = add nuw nsw i32 %.049, 1                ; 2 uses
  %i.be = load i8, ptr %i.y, align 8, !tbaa !71   ; 2 uses
  %i.bf = zext i8 %i.be to i32
  %i.bg = icmp samesign ult i32 %i.bd, %i.bf
  br i1 %i.bg, label %bb.d, label %._crit_edge
end_hunk_0
