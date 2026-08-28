Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpPiecewisePenalty?download=true
inline.NumInlined: 211
inline.NumDeleted: 70
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [48 x i8] c"The current piecewise penalty has %zd entries.\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"We only allow %d entries.\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"The min piecewise penalty is %g.\0A\00", align 1
@.str.3 = private unnamed_addr constant [73 x i8] c"                pen_r                    barrier_obj            infeasi\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%5d\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c" %23.16e %23.16e  %23.16e \0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN5Ipopt16PiecewisePenaltyC1Ei = unnamed_addr alias void (ptr, i32), ptr @_ZN5Ipopt16PiecewisePenaltyC2Ei

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN5Ipopt16PiecewisePenaltyC2Ei(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(48) initializes((0, 4), (8, 20), (24, 48)) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  store i32 %1, ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 100, ptr %i.b, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN5Ipopt16PiecewisePenalty10AcceptableEdd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, double noundef %1, double noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 12 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !20   ; 11 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 24
  %i.i = trunc i64 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !18
  %.not = icmp sgt i32 %i.k, %i.i
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load double, ptr %i.l, align 8, !tbaa !21
  %i.n = load double, ptr %i.d, align 8, !tbaa !23 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.p = load double, ptr %i.o, align 8, !tbaa !24
  %i.q = tail call double @llvm.fmuladd.f64(double %i.n, double %i.p, double %i.m)
  %i.r = fsub double %i.q, %1
  %i.s = fneg double %i.n
  %i.t = tail call double @llvm.fmuladd.f64(double %i.s, double %2, double %i.r)
  %i.u = fcmp ult double %i.t, 0.000000e+00
  br i1 %i.u, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.x = load double, ptr %i.w, align 8, !tbaa !21
  %i.y = load double, ptr %i.v, align 8, !tbaa !23 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.aa = load double, ptr %i.z, align 8, !tbaa !24
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.y, double %i.aa, double %i.x)
  %i.ac = fsub double %i.ab, %1
  %i.ad = fneg double %i.y
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.ad, double %2, double %i.ac)
  %i.af = fcmp ugt double %i.ae, 0.000000e+00
  br i1 %i.af, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !21
  %i.ai = load double, ptr %i.c, align 8, !tbaa !23 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !24 ; 3 uses
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.ak, double %i.ah)
  %i.am = fsub double %i.al, %1
  %i.an = fneg double %i.ai
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.an, double %2, double %i.am) ; 2 uses
  %i.ap = fcmp ugt double %i.ao, 0.000000e+00
  %i.aq = fcmp ugt double %2, %i.ak
  %or.cond = select i1 %i.ap, i1 true, i1 %i.aq
  br i1 %or.cond, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ar = fcmp ult double %i.ao, 0.000000e+00
  %i.as = fcmp ult double %2, %i.ak
  %or.cond104 = select i1 %i.ar, i1 true, i1 %i.as
  br i1 %or.cond104, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds i8, ptr %i.c, i64 -24
  %i.au = getelementptr inbounds i8, ptr %i.c, i64 -16
  %i.av = load double, ptr %i.au, align 8, !tbaa !21
  %i.aw = load double, ptr %i.at, align 8, !tbaa !23 ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %i.c, i64 -8
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !24
  %i.az = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.ay, double %i.av)
  %i.ba = fsub double %i.az, %1
  %i.bb = fneg double %i.aw
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.bb, double %2, double %i.ba)
  %i.bd = fcmp ugt double %i.bc, 0.000000e+00
  br i1 %i.bd, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.061.0110 = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %.not105111 = icmp eq ptr %.sroa.061.0110, %i.c
  br i1 %.not105111, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %.pre = load double, ptr %.sroa.061.0110, align 8, !tbaa !23
  %i.be = insertelement <2 x double> poison, double %2, i64 0
  %i.bf = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bg = insertelement <2 x double> poison, double %1, i64 0
  %i.bh = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph

bb.h:                                             ; preds = %.lr.ph
  %i.bi = getelementptr inbounds nuw i8, ptr %.pn112, i64 24
  %.not105 = icmp eq ptr %i.bt, %i.c
  %i.bj = extractelement <2 x double> %i.bz, i64 0
  br i1 %.not105, label %.loopexit, label %.lr.ph, !llvm.loop !25

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %i.bk = phi double [ %i.bj, %bb.h ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %.pn112 = phi ptr [ %i.bi, %bb.h ], [ %i.d, %.lr.ph.preheader ] ; 7 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.pn112, i64 32
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !21
  %i.bn = getelementptr inbounds nuw i8, ptr %.pn112, i64 40
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !24
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.bk, double %i.bo, double %i.bm)
  %i.bq = fsub double %i.bp, %1
  %i.br = fneg double %i.bk
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.br, double %2, double %i.bq)
  %i.bt = getelementptr inbounds nuw i8, ptr %.pn112, i64 48 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.pn112, i64 64
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !24
  %i.bw = getelementptr inbounds nuw i8, ptr %.pn112, i64 16
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !24
  %i.by = fcmp ult double %i.bs, 0.000000e+00
  %i.bz = load <2 x double>, ptr %i.bt, align 8, !tbaa !27 ; 4 uses
  %i.ca = load <2 x double>, ptr %.pn112, align 8, !tbaa !27 ; 2 uses
  %i.cb = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> <i32 poison, i32 0> ; 2 uses
  %i.cc = insertelement <2 x double> %i.cb, double %i.bv, i64 0
  %i.cd = insertelement <2 x double> %i.bz, double %i.bx, i64 1
  %i.ce = shufflevector <2 x double> %i.bz, <2 x double> %i.ca, <2 x i32> <i32 1, i32 3>
  %i.cf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cc, <2 x double> %i.cd, <2 x double> %i.ce)
  %i.cg = fsub <2 x double> %i.cf, %i.bh
  %i.ch = shufflevector <2 x double> %i.bz, <2 x double> %i.cb, <2 x i32> <i32 0, i32 3>
  %i.ci = fneg <2 x double> %i.ch
  %i.cj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ci, <2 x double> %i.bf, <2 x double> %i.cg)
  %i.ck = fcmp ugt <2 x double> %i.cj, zeroinitializer ; 2 uses
  %i.cl = extractelement <2 x i1> %i.ck, i64 1
  %or.cond.not56 = select i1 %i.cl, i1 true, i1 %i.by
  %i.cm = extractelement <2 x i1> %i.ck, i64 0
  %or.cond4.not = select i1 %or.cond.not56, i1 true, i1 %i.cm
  br i1 %or.cond4.not, label %bb.h, label %.critedge

.loopexit:                                        ; preds = %bb.h, %bb.g, %bb.a
  %.not106114 = icmp eq ptr %i.d, %i.c
  br i1 %.not106114, label %.critedge108, label %.lr.ph117

bb.i:                                             ; preds = %.lr.ph117
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.061.1115, i64 24 ; 2 uses
  %.not106 = icmp eq ptr %i.cn, %i.c
  br i1 %.not106, label %.critedge108, label %.lr.ph117, !llvm.loop !28

.lr.ph117:                                        ; preds = %.loopexit, %bb.i
  %.sroa.061.1115 = phi ptr [ %i.cn, %bb.i ], [ %i.d, %.loopexit ] ; 4 uses
  %i.co = load double, ptr %.sroa.061.1115, align 8, !tbaa !23
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.061.1115, i64 16
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !24
  %i.cr = fsub double %2, %i.cq
  %i.cs = tail call double @llvm.fmuladd.f64(double %i.co, double %i.cr, double %1)
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.061.1115, i64 8
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !21
  %i.cv = fcmp olt double %i.cs, %i.cu
  br i1 %i.cv, label %.critedge, label %bb.i

.critedge108:                                     ; preds = %bb.i, %.loopexit
  %i.cw = getelementptr inbounds i8, ptr %i.c, i64 -8
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !24
  %i.cy = fcmp olt double %2, %i.cx
  br i1 %i.cy, label %3, label %.critedge

3:                                                ; preds = %.critedge108
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.lr.ph117, %.critedge108, %3, %bb.d, %bb.f, %bb.c
  %.3 = phi i1 [ false, %bb.f ], [ true, %.lr.ph117 ], [ false, %bb.d ], [ false, %bb.c ], [ true, %3 ], [ false, %.critedge108 ], [ false, %.lr.ph ]
  ret i1 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef double @_ZN5Ipopt16PiecewisePenalty11BiggestBarrEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29   ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -16
  %i.g = load double, ptr %i.f, align 8, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi double [ -1.000000e+20, %bb.a ], [ %i.g, %bb.b ]
  ret double %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt16PiecewisePenalty11UpdateEntryEdd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, double noundef %1, double noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 15 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !20   ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sdiv exact i64 %i.g, 24
  %i.i = icmp ugt i64 %i.h, 384307168202282325
  br i1 %i.i, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN5Ipopt17PiecewisePenEntryEE8allocateEmPKv.exit.i.i.i.i, !prof !30

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #10
  unreachable

_ZNSt15__new_allocatorIN5Ipopt17PiecewisePenEntryEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #11
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !29  ; 2 uses
  %.pre172 = load ptr, ptr %i.b, align 8, !tbaa !29 ; 2 uses
  %.pre175 = ptrtoint ptr %.pre172 to i64
  %.pre176 = ptrtoint ptr %.pre to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN5Ipopt17PiecewisePenEntryEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi177 = phi i64 [ %.pre176, %_ZNSt15__new_allocatorIN5Ipopt17PiecewisePenEntryEE8allocateEmPKv.exit.i.i.i.i ], [ %i.f, %bb.a ] ; 2 uses
  %.pre-phi = phi i64 [ %.pre175, %_ZNSt15__new_allocatorIN5Ipopt17PiecewisePenEntryEE8allocateEmPKv.exit.i.i.i.i ], [ %i.e, %bb.a ]
  %i.k = phi ptr [ %.pre172, %_ZNSt15__new_allocatorIN5Ipopt17PiecewisePenEntryEE8allocateEmPKv.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.l = phi ptr [ %.pre, %_ZNSt15__new_allocatorIN5Ipopt17PiecewisePenEntryEE8allocateEmPKv.exit.i.i.i.i ], [ %i.d, %bb.a ] ; 10 uses
  %i.m = phi ptr [ %i.j, %_ZNSt15__new_allocatorIN5Ipopt17PiecewisePenEntryEE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 9 uses
  %i.n = sub i64 %.pre-phi, %.pre-phi177          ; 6 uses
  %i.o = icmp sgt i64 %i.n, 24
  br i1 %i.o, label %bb.d, label %bb.e, !prof !31

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.m, ptr align 8 %i.l, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EEC2ERKS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.p = icmp eq i64 %i.n, 24
  br i1 %i.p, label %bb.f, label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EEC2ERKS3_.exit

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !tbaa.struct !32
  br label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EEC2ERKS3_.exit

_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EEC2ERKS3_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.q = getelementptr inbounds i8, ptr %i.m, i64 %i.n ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i.i, label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPN5Ipopt17PiecewisePenEntryES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5Ipopt17PiecewisePenEntryES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EEC2ERKS3_.exit
  store ptr %i.l, ptr %i.b, align 8, !tbaa !19
  br label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE5clearEv.exit

_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE5clearEv.exit: ; preds = %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EEC2ERKS3_.exit, %_ZSt8_DestroyIPN5Ipopt17PiecewisePenEntryES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.r = phi ptr [ %i.k, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EEC2ERKS3_.exit ], [ %i.l, %_ZSt8_DestroyIPN5Ipopt17PiecewisePenEntryES1_EvT_S3_RSaIT0_E.exit.i.i ] ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 -24 ; 2 uses
  %.not168169 = icmp slt i64 %i.n, 24
  br i1 %.not168169, label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EED2Ev.exit128, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE5clearEv.exit
  %i.t = load double, ptr %i.m, align 8, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.v = load double, ptr %i.u, align 8, !tbaa !24
  %i.w = fsub double %2, %i.v
  %i.x = tail call double @llvm.fmuladd.f64(double %i.t, double %i.w, double %1)
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.z = load double, ptr %i.y, align 8, !tbaa !21
  %i.aa = fsub double %i.x, %i.z
  %i.ab = icmp ne i64 %i.n, 24
  %i.ac = getelementptr inbounds i8, ptr %i.q, i64 -48
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 17 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit126
  %i.ae = phi ptr [ %i.r, %.lr.ph ], [ %i.gz, %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit126 ] ; 2 uses
  %i.af = phi ptr [ %i.l, %.lr.ph ], [ %.pre174, %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit126 ] ; 3 uses
  %i.ag = phi ptr [ %i.l, %.lr.ph ], [ %i.ha, %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit126 ] ; 3 uses
  %i.ah = phi ptr [ %i.l, %.lr.ph ], [ %i.hb, %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit126 ] ; 3 uses
  %i.ai = phi ptr [ %i.l, %.lr.ph ], [ %i.hc, %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit126 ] ; 3 uses
  %i.aj = phi ptr [ %i.r, %.lr.ph ], [ %i.hd, %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit126 ] ; 10 uses
  %i.ak = phi ptr [ %i.l, %.lr.ph ], [ %i.he, %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit126 ] ; 5 uses
  %.0171 = phi double [ %i.aa, %.lr.ph ], [ %i.au, %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit126 ] ; 3 uses
  %.sroa.0137.0170 = phi ptr [ %i.m, %.lr.ph ], [ %i.hf, %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit126 ] ; 13 uses
  %i.al = icmp ule ptr %.sroa.0137.0170, %i.ac
  %or.cond167 = select i1 %i.ab, i1 %i.al, i1 false
  br i1 %or.cond167, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0137.0170, i64 24
  %i.an = load double, ptr %i.am, align 8, !tbaa !23
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0137.0170, i64 40
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !24
  %i.aq = fsub double %2, %i.ap
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.an, double %i.aq, double %1)
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %bb.h
  %.sink211 = phi i64 [ 32, %bb.h ], [ 16, %bb.g ]
  %.sink = phi double [ %i.ar, %bb.h ], [ %2, %bb.g ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0137.0170, i64 %.sink211
  %i.at = load double, ptr %i.as, align 8, !tbaa !27
  %i.au = fsub double %.sink, %i.at               ; 4 uses
  %i.av = fcmp uge double %.0171, 0.000000e+00    ; 2 uses
  %i.aw = fcmp ult double %i.au, 0.000000e+00     ; 2 uses
  %or.cond = select i1 %i.av, i1 true, i1 %i.aw
  br i1 %or.cond, label %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit66, label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.ax = icmp eq ptr %i.ak, %i.aj
  br i1 %i.ax, label %bb.j, label %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit

bb.j:                                             ; preds = %bb.i
  %i.ay = load ptr, ptr %i.ad, align 8, !tbaa !33
  %.not.i.i49 = icmp eq ptr %i.aj, %i.ay
  br i1 %.not.i.i49, label %_ZNKSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  store double 0.000000e+00, ptr %i.aj, align 8, !tbaa !27
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store double %1, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !27
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store double %2, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !27
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 3 uses
  store ptr %i.az, ptr %i.b, align 8, !tbaa !19
  br label %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit

_ZNKSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.ba = ptrtoint ptr %i.aj to i64
  %i.bb = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #11
          to label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i unwind label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EED2Ev.exit.loopexit ; 10 uses

_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %_ZNKSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  store double 0.000000e+00, ptr %i.bb, align 8, !tbaa !27
  %.sroa.5.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store double %1, ptr %.sroa.5.0..sroa_idx5.i, align 8, !tbaa !27
  %.sroa.6.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store double %2, ptr %.sroa.6.0..sroa_idx7.i, align 8, !tbaa !27
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24 ; 4 uses
  %.not.i17.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.bd = load ptr, ptr %i.ad, align 8, !tbaa !33
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.ba
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.bf) #12
  br label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.bb, ptr %i.a, align 8, !tbaa !20
  store ptr %i.bc, ptr %i.b, align 8, !tbaa !19
  store ptr %i.bc, ptr %i.ad, align 8, !tbaa !33
  br label %_ZN5Ipopt16PiecewisePenalty8AddEntryEddd.exit

_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EED2Ev.exit.loopexit: ; preds = %_ZNKSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %_ZNKSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i56, %_ZNKSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i71, %_ZNKSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i86, %_ZNKSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i101, %_ZNKSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i116
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EED2Ev.exit

_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EED2Ev.exit.loopexit.split-lp: ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN5Ipopt17PiecewisePenEntryESaIS1_EED2Ev.exit
end_hunk_0
