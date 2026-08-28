Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/perf_est?download=true
inline.NumInlined: 77
inline.NumDeleted: 51
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.gmx::EnumerationArray.118" = type { [95 x %struct.t_interaction_function] }
%struct.t_interaction_function = type { ptr, ptr, i32, i32, i32, i32 }

@interaction_function = external local_unnamed_addr global %"struct.gmx::EnumerationArray.118", align 8
@debug = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [59 x i8] c"nr. of distance calculations in bondeds: C %.1f SIMD %.1f\0A\00", align 1
@.str.1 = private unnamed_addr constant [91 x i8] c"cost_bond   %f\0Acost_pp     %f\0Acost_redist %f\0Acost_spread %f\0Acost_fft    %f\0Acost_solve  %f\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Estimate for relative PME load: %.3f\0A\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"nqlj %d nq %d nlj %d rlist %.3f r_eff %.3f pairs per atom %.1f\0A\00", align 1

; Function Attrs: mustprogress uwtable
define void @_Z22count_bonded_distancesRK10gmx_mtop_tRK10t_inputrecPdS5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768) %0, ptr noundef nonnull align 8 dereferenceable(888) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !9
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %_ZL23usingFullElectrostaticsRK22CoulombInteractionType.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_Z18inputrecExclForcesPK10t_inputrec(ptr noundef nonnull %1)
  br i1 %i.d, label %bb.c, label %_ZL23usingFullElectrostaticsRK22CoulombInteractionType.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 364
  %.val = load i32, ptr %i.e, align 4, !tbaa !110 ; 3 uses
  %switch.tableidx = add i32 %.val, -3            ; 2 uses
  %i.f = icmp ult i32 %switch.tableidx, 13
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 7175, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.f, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %_ZL23usingFullElectrostaticsRK22CoulombInteractionType.exit, label %_ZL15usingPmeOrEwaldRK22CoulombInteractionType.exit.i

_ZL15usingPmeOrEwaldRK22CoulombInteractionType.exit.i: ; preds = %bb.c
  %i.g = icmp ne i32 %.val, 6
  %i.h = icmp ne i32 %.val, 17
  %spec.select.i.not = and i1 %i.g, %i.h
  br label %_ZL23usingFullElectrostaticsRK22CoulombInteractionType.exit

_ZL23usingFullElectrostaticsRK22CoulombInteractionType.exit: ; preds = %bb.c, %_ZL15usingPmeOrEwaldRK22CoulombInteractionType.exit.i, %bb.a, %bb.b
  %i.i = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %spec.select.i.not, %_ZL15usingPmeOrEwaldRK22CoulombInteractionType.exit.i ], [ false, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load i32, ptr %i.j, align 8, !tbaa !111  ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  %i.m = uitofp nneg i32 %i.k to double
  %i.n = fdiv double 1.000000e+00, %i.m
  %.049 = select i1 %i.l, double %i.n, double 0.000000e+00 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 204
  %i.p = load i32, ptr %i.o, align 4, !tbaa !112
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZL23usingFullElectrostaticsRK22CoulombInteractionType.exit
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 212
  %i.r = load i32, ptr %i.q, align 4, !tbaa !113
  %i.s = sitofp i32 %i.r to double
  %i.t = fdiv double 1.000000e+00, %i.s           ; 2 uses
  %i.u = fcmp ogt double %i.t, %.049
  br i1 %i.u, label %4, label %bb.e

4:                                                ; preds = %bb.d
  br label %bb.e

bb.e:                                             ; preds = %_ZL23usingFullElectrostaticsRK22CoulombInteractionType.exit, %bb.d, %4
  %.1 = phi double [ %i.t, %4 ], [ %.049, %bb.d ], [ %.049, %_ZL23usingFullElectrostaticsRK22CoulombInteractionType.exit ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !114  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !114  ; 3 uses
  %.not7378 = icmp eq ptr %i.w, %i.y
  br i1 %.not7378, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !116 ; 2 uses
  %i.ab = fsub double 1.000000e+00, %.1           ; 2 uses
  br i1 %i.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.m
  %.05081.us = phi double [ %.2.us, %bb.m ], [ 0.000000e+00, %.lr.ph ]
  %.05280.us = phi double [ %i.bz, %bb.m ], [ 0.000000e+00, %.lr.ph ]
  %.sroa.068.079.us = phi ptr [ %i.ca, %bb.m ], [ %i.w, %.lr.ph ] ; 3 uses
  %i.ac = load i32, ptr %.sroa.068.079.us, align 8, !tbaa !119
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [2408 x i8], ptr %i.aa, i64 %i.ad ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.068.079.us, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 80
  br label %bb.f

bb.f:                                             ; preds = %bb.l, %.lr.ph.split.us
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %bb.l ], [ 0, %.lr.ph.split.us ] ; 4 uses
  %.15177.us = phi double [ %.2.us, %bb.l ], [ %.05081.us, %.lr.ph.split.us ] ; 2 uses
  %.15376.us = phi double [ %.254.us, %bb.l ], [ %.05280.us, %.lr.ph.split.us ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %indvars.iv86 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 28
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !121
  %i.ak = and i32 %i.aj, 1
  %.not63.us = icmp eq i32 %i.ak, 0
  br i1 %.not63.us, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = trunc nuw nsw i64 %indvars.iv86 to i32
  switch i32 %i.al, label %bb.j [
    i32 52, label %bb.i
    i32 53, label %bb.i
    i32 4, label %bb.k
    i32 10, label %bb.h
    i32 19, label %bb.h
    i32 20, label %bb.h
    i32 33, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !124
  %i.ao = add nsw i32 %i.an, -1
  %i.ap = sitofp i32 %i.ao to double              ; 2 uses
  %i.aq = fmul double %.1, %i.ap
  %i.ar = fmul double %i.ab, %i.ap
  br label %bb.k

bb.i:                                             ; preds = %bb.g, %bb.g
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.at = load i32, ptr %i.as, align 8, !tbaa !124
  %i.au = add nsw i32 %i.at, -1
  %i.av = sitofp i32 %i.au to double
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %.048.us = phi double [ %i.av, %bb.j ], [ 1.000000e+00, %bb.i ], [ 0.000000e+00, %bb.g ], [ %i.aq, %bb.h ]
  %.0.us = phi double [ 0.000000e+00, %bb.j ], [ 0.000000e+00, %bb.i ], [ 0.000000e+00, %bb.g ], [ %i.ar, %bb.h ]
  %i.aw = load i32, ptr %i.af, align 4, !tbaa !125
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %indvars.iv86 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !126
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !128
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = lshr exact i64 %i.bd, 2
  %i.bf = trunc i64 %i.be to i32
  %i.bg = mul nsw i32 %i.aw, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !124
  %i.bj = add nsw i32 %i.bi, 1
  %i.bk = sdiv i32 %i.bg, %i.bj
  %i.bl = sitofp i32 %i.bk to double              ; 2 uses
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bl, double %.048.us, double %.15376.us)
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.bl, double %.0.us, double %.15177.us)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %.254.us = phi double [ %i.bm, %bb.k ], [ %.15376.us, %bb.f ] ; 2 uses
  %.2.us = phi double [ %i.bn, %bb.k ], [ %.15177.us, %bb.f ] ; 3 uses
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %.not74.us = icmp eq i64 %indvars.iv.next87, 95
  br i1 %.not74.us, label %bb.m, label %bb.f

bb.m:                                             ; preds = %bb.l
  %i.bo = load i32, ptr %i.af, align 4, !tbaa !125
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ae, i64 2368
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !129
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !130
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !131
  %i.bv = sub nsw i32 %i.bs, %i.bu
  %i.bw = mul nsw i32 %i.bv, %i.bo
  %i.bx = sitofp i32 %i.bw to double
  %i.by = fmul nnan double %i.bx, 5.000000e-01
  %i.bz = fadd double %.254.us, %i.by             ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.068.079.us, i64 56 ; 2 uses
  %.not73.us = icmp eq ptr %i.ca, %i.y
  br i1 %.not73.us, label %._crit_edge, label %.lr.ph.split.us

._crit_edge:                                      ; preds = %bb.n, %bb.m, %bb.e
  %.052.lcssa = phi double [ 0.000000e+00, %bb.e ], [ %i.bz, %bb.m ], [ %.254, %bb.n ] ; 2 uses
  %.050.lcssa = phi double [ 0.000000e+00, %bb.e ], [ %.2.us, %bb.m ], [ %.2, %bb.n ] ; 2 uses
  %i.cb = load ptr, ptr @debug, align 8, !tbaa !145 ; 2 uses
  %.not60 = icmp eq ptr %i.cb, null
  br i1 %.not60, label %bb.w, label %bb.v

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.n
  %.05081 = phi double [ %.2, %bb.n ], [ 0.000000e+00, %.lr.ph ]
  %.05280 = phi double [ %.254, %bb.n ], [ 0.000000e+00, %.lr.ph ]
  %.sroa.068.079 = phi ptr [ %i.ch, %bb.n ], [ %i.w, %.lr.ph ] ; 3 uses
  %i.cc = load i32, ptr %.sroa.068.079, align 8, !tbaa !119
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [2408 x i8], ptr %i.aa, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.068.079, i64 4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 80
  br label %bb.o

bb.n:                                             ; preds = %bb.u
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.068.079, i64 56 ; 2 uses
  %.not73 = icmp eq ptr %i.ch, %i.y
  br i1 %.not73, label %._crit_edge, label %.lr.ph.split

bb.o:                                             ; preds = %.lr.ph.split, %bb.u
  %indvars.iv = phi i64 [ 0, %.lr.ph.split ], [ %indvars.iv.next, %bb.u ] ; 4 uses
  %.15177 = phi double [ %.05081, %.lr.ph.split ], [ %.2, %bb.u ] ; 2 uses
  %.15376 = phi double [ %.05280, %.lr.ph.split ], [ %.254, %bb.u ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %indvars.iv ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 28
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !121
  %i.cl = and i32 %i.ck, 1
  %.not63 = icmp eq i32 %i.cl, 0
  br i1 %.not63, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cm = trunc nuw nsw i64 %indvars.iv to i32
  switch i32 %i.cm, label %bb.s [
    i32 52, label %bb.q
    i32 53, label %bb.q
    i32 4, label %bb.t
    i32 10, label %bb.r
    i32 19, label %bb.r
    i32 20, label %bb.r
    i32 33, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p, %bb.p
  br label %bb.t

bb.r:                                             ; preds = %bb.p, %bb.p, %bb.p, %bb.p
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !124
  %i.cp = add nsw i32 %i.co, -1
  %i.cq = sitofp i32 %i.cp to double              ; 2 uses
  %i.cr = fmul double %.1, %i.cq
  %i.cs = fmul double %i.ab, %i.cq
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !124
  %i.cv = add nsw i32 %i.cu, -1
  %i.cw = sitofp i32 %i.cv to double
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.048 = phi double [ %i.cw, %bb.s ], [ 1.000000e+00, %bb.q ], [ 0.000000e+00, %bb.p ], [ %i.cr, %bb.r ]
  %.0 = phi double [ 0.000000e+00, %bb.s ], [ 0.000000e+00, %bb.q ], [ 0.000000e+00, %bb.p ], [ %i.cs, %bb.r ]
  %i.cx = load i32, ptr %i.cf, align 4, !tbaa !125
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %i.cg, i64 %indvars.iv ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !126
  %i.db = load ptr, ptr %i.cy, align 8, !tbaa !128
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = lshr exact i64 %i.de, 2
  %i.dg = trunc i64 %i.df to i32
  %i.dh = mul nsw i32 %i.cx, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !124
  %i.dk = add nsw i32 %i.dj, 1
  %i.dl = sdiv i32 %i.dh, %i.dk
  %i.dm = sitofp i32 %i.dl to double              ; 2 uses
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.dm, double %.048, double %.15376)
  %i.do = tail call double @llvm.fmuladd.f64(double %i.dm, double %.0, double %.15177)
  br label %bb.u
end_hunk_0
