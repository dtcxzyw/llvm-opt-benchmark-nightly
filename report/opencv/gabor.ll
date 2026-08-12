inline.NumInlined: 44
inline.NumDeleted: 33
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.cv::Mat" = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.cv::MatShape", %"struct.cv::MatStep" }
%"struct.cv::MatShape" = type { i32, i32, i32, [10 x i32] }
%"struct.cv::MatStep" = type { [10 x i64] }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

@.str = private unnamed_addr constant [35 x i8] c"ktype == CV_32F || ktype == CV_64F\00", align 1
@__func__._ZN2cv14getGaborKernelENS_5Size_IiEEdddddi = private unnamed_addr constant [15 x i8] c"getGaborKernel\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"/opt-bench/work/opencv/opencv/modules/imgproc/src/gabor.cpp\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZN2cv14getGaborKernelENS_5Size_IiEEdddddi(ptr dead_on_unwind noalias writable sret(%"class.cv::Mat") align 8 %0, i64 %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, i32 noundef %7) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32  ; 2 uses
  %.sroa.3.0.extract.shift = lshr i64 %1, 32
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32 ; 2 uses
  %i.a = fdiv double %2, %5                       ; 3 uses
  %i.b = tail call double @cos(double noundef %3) #10 ; 5 uses
  %i.c = tail call double @sin(double noundef %3) #10 ; 5 uses
  %i.d = icmp sgt i32 %.sroa.0.0.extract.trunc, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i32 %.sroa.0.0.extract.trunc, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = fmul double %2, 3.000000e+00
  %i.g = fmul double %i.f, %i.b
  %i.h = tail call double @llvm.fabs.f64(double %i.g) ; 2 uses
  %i.i = fmul double %i.a, 3.000000e+00
  %i.j = fmul double %i.i, %i.c
  %i.k = tail call double @llvm.fabs.f64(double %i.j) ; 2 uses
  %i.l = fcmp olt double %i.h, %i.k
  %.sroa.speculated87 = select i1 %i.l, double %i.k, double %i.h
  %i.m = insertelement <2 x double> poison, double %.sroa.speculated87, i64 0
  %i.n = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.m)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ %i.n, %bb.c ]  ; 5 uses
  %i.o = icmp sgt i32 %.sroa.3.0.extract.trunc, 0
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = lshr i32 %.sroa.3.0.extract.trunc, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.q = fmul double %2, 3.000000e+00
  %i.r = fmul double %i.q, %i.c
  %i.s = tail call double @llvm.fabs.f64(double %i.r) ; 2 uses
  %i.t = fmul double %i.a, 3.000000e+00
  %i.u = fmul double %i.t, %i.b
  %i.v = tail call double @llvm.fabs.f64(double %i.u) ; 2 uses
  %i.w = fcmp olt double %i.s, %i.v
  %.sroa.speculated = select i1 %i.w, double %i.v, double %i.s
  %i.x = insertelement <2 x double> poison, double %.sroa.speculated, i64 0
  %i.y = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.x)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.073 = phi i32 [ %i.p, %bb.e ], [ %i.y, %bb.f ] ; 5 uses
  %i.z = sub i32 0, %.0
  %i.aa = icmp eq i32 %7, 5
  %i.ab = add i32 %7, -5
  %or.cond = icmp ult i32 %i.ab, 2
  br i1 %or.cond, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %9)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv14getGaborKernelENS_5Size_IiEEdddddi, ptr noundef nonnull @.str.1, i32 noundef 73) #11
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %8, align 8, !tbaa !8     ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !14
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  resume { ptr, i32 } %i.ac

bb.k:                                             ; preds = %bb.g
  %i.ai = sub i32 0, %.073
  %i.aj = shl nsw i32 %.073, 1
  %i.ak = or disjoint i32 %i.aj, 1
  %i.al = shl nsw i32 %.0, 1
  %i.am = or disjoint i32 %i.al, 1
  tail call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %i.ak, i32 noundef %i.am, i32 noundef %7)
  %i.an = insertelement <2 x double> poison, double %2, i64 0
  %i.ao = insertelement <2 x double> %i.an, double %i.a, i64 1 ; 2 uses
  %i.ap = fmul <2 x double> %i.ao, %i.ao
  %i.aq = fdiv <2 x double> splat (double -5.000000e-01), %i.ap ; 3 uses
  %i.ar = fdiv double f0x401921FB54442D18, %4     ; 3 uses
  %.not93 = icmp slt i32 %.073, 0
  br i1 %.not93, label %._crit_edge95.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.k
  %.not8091 = icmp slt i32 %.0, 0
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  br i1 %.not8091, label %._crit_edge95.split, label %.preheader.lr.ph.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.av = sext i32 %i.z to i64                    ; 3 uses
  %i.aw = zext nneg i32 %.0 to i64                ; 3 uses
  %i.ax = add nuw i32 %.0, 1                      ; 3 uses
  %i.ay = sext i32 %i.ai to i64                   ; 2 uses
  %i.az = zext nneg i32 %.073 to i64              ; 2 uses
  %i.ba = add nuw i32 %.073, 1                    ; 2 uses
  br i1 %i.aa, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %i.bb = insertelement <2 x double> poison, double %i.b, i64 0
  %i.bc = insertelement <2 x double> %i.bb, double %i.c, i64 1 ; 2 uses
  %i.bd = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.be = insertelement <2 x double> poison, double %6, i64 0
  %i.bf = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split
  %i.bg = insertelement <2 x double> poison, double %i.b, i64 0
  %i.bh = insertelement <2 x double> %i.bg, double %i.c, i64 1 ; 2 uses
  %i.bi = insertelement <2 x double> poison, double %i.c, i64 0
  %i.bj = insertelement <2 x double> %i.bi, double %i.b, i64 1
  %i.bk = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.bl = insertelement <2 x double> poison, double %6, i64 0
  %i.bm = shufflevector <2 x double> %i.bh, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bn = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.bo = insertelement <2 x double> poison, double %6, i64 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.split.us.us
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %._crit_edge.split.us.us ], [ %i.ay, %.preheader.us.preheader ] ; 3 uses
  %i.bp = trunc nsw i64 %indvars.iv117 to i32
  %i.bq = sitofp i32 %i.bp to double
  %i.br = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.bs = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bt = fmul <2 x double> %i.bh, %i.bs          ; 2 uses
  %i.bu = sub nsw i64 %i.az, %indvars.iv117
  %i.bv = load i32, ptr %i.as, align 4
  %.fr98 = freeze i32 %i.bv
  %i.bw = icmp slt i32 %.fr98, 2
  %i.bx = load ptr, ptr %i.at, align 8            ; 2 uses
  br i1 %i.bw, label %.lr.ph.split.us.us.split.us, label %.lr.ph.split.us.us.split

.lr.ph.split.us.us.split.us:                      ; preds = %.preheader.us, %.lr.ph.split.us.us.split.us
  %indvars.iv112 = phi i64 [ %indvars.iv.next113, %.lr.ph.split.us.us.split.us ], [ %i.av, %.preheader.us ] ; 4 uses
  %i.by = trunc nsw i64 %indvars.iv112 to i32
  %i.bz = trunc i64 %indvars.iv112 to i32
  %i.ca = sub i32 0, %i.bz
  %i.cb = insertelement <2 x i32> poison, i32 %i.ca, i64 0
  %i.cc = insertelement <2 x i32> %i.cb, i32 %i.by, i64 1
  %i.cd = sitofp <2 x i32> %i.cc to <2 x double>
  %i.ce = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cd, <2 x double> %i.bm, <2 x double> %i.bt) ; 3 uses
  %i.cf = shufflevector <2 x double> %i.ce, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cg = fmul <2 x double> %i.aq, %i.cf          ; 2 uses
  %shift = shufflevector <2 x double> %i.cg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.ce, %shift
  %i.ch = shufflevector <2 x double> %i.bn, <2 x double> %i.cg, <2 x i32> <i32 0, i32 2>
  %i.ci = shufflevector <2 x double> %i.ce, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cj = shufflevector <2 x double> %i.bo, <2 x double> %foldExtExtBinop, <2 x i32> <i32 0, i32 2>
  %i.ck = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ch, <2 x double> %i.ci, <2 x double> %i.cj) ; 2 uses
  %i.cl = extractelement <2 x double> %i.ck, i64 1
  %i.cm = tail call double @exp(double noundef %i.cl) #10
  %i.cn = extractelement <2 x double> %i.ck, i64 0
  %i.co = tail call double @cos(double noundef %i.cn) #10
  %i.cp = fmul double %i.cm, %i.co
  %i.cq = sub nsw i64 %i.aw, %indvars.iv112
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.cq
  %i.cs = fptrunc double %i.cp to float
  store float %i.cs, ptr %i.cr, align 4, !tbaa !15
  %indvars.iv.next113 = add nsw i64 %indvars.iv112, 1 ; 2 uses
  %lftr.wideiv115 = trunc i64 %indvars.iv.next113 to i32
  %exitcond116.not = icmp eq i32 %i.ax, %lftr.wideiv115
  br i1 %exitcond116.not, label %._crit_edge.split.us.us, label %.lr.ph.split.us.us.split.us, !llvm.loop !17

.lr.ph.split.us.us.split:                         ; preds = %.preheader.us, %.lr.ph.split.us.us.split
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %.lr.ph.split.us.us.split ], [ %i.av, %.preheader.us ] ; 4 uses
  %i.ct = trunc nsw i64 %indvars.iv107 to i32
  %i.cu = trunc i64 %indvars.iv107 to i32
  %i.cv = sub i32 0, %i.cu
  %i.cw = insertelement <2 x i32> poison, i32 %i.cv, i64 0
  %i.cx = insertelement <2 x i32> %i.cw, i32 %i.ct, i64 1
  %i.cy = sitofp <2 x i32> %i.cx to <2 x double>
  %i.cz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cy, <2 x double> %i.bj, <2 x double> %i.bt) ; 3 uses
  %i.da = shufflevector <2 x double> %i.cz, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.db = fmul <2 x double> %i.aq, %i.da          ; 2 uses
  %shift129 = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop130 = fmul <2 x double> %i.cz, %shift129
  %i.dc = shufflevector <2 x double> %i.bk, <2 x double> %i.db, <2 x i32> <i32 0, i32 2>
  %i.dd = shufflevector <2 x double> %i.cz, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.de = shufflevector <2 x double> %i.bl, <2 x double> %foldExtExtBinop130, <2 x i32> <i32 0, i32 2>
  %i.df = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dc, <2 x double> %i.dd, <2 x double> %i.de) ; 2 uses
  %i.dg = extractelement <2 x double> %i.df, i64 1
  %i.dh = tail call double @exp(double noundef %i.dg) #10
  %i.di = extractelement <2 x double> %i.df, i64 0
  %i.dj = tail call double @cos(double noundef %i.di) #10
  %i.dk = fmul double %i.dh, %i.dj
  %i.dl = sub nsw i64 %i.aw, %indvars.iv107
  %i.dm = load i64, ptr %i.au, align 8
  %i.dn = mul i64 %i.dm, %i.bu
  %.sink.i.us.us = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.dn
  %i.do = getelementptr inbounds [4 x i8], ptr %.sink.i.us.us, i64 %i.dl
  %i.dp = fptrunc double %i.dk to float
  store float %i.dp, ptr %i.do, align 4, !tbaa !15
  %indvars.iv.next108 = add nsw i64 %indvars.iv107, 1 ; 2 uses
  %lftr.wideiv110 = trunc i64 %indvars.iv.next108 to i32
  %exitcond111.not = icmp eq i32 %i.ax, %lftr.wideiv110
  br i1 %exitcond111.not, label %._crit_edge.split.us.us, label %.lr.ph.split.us.us.split, !llvm.loop !17

._crit_edge.split.us.us:                          ; preds = %.lr.ph.split.us.us.split, %.lr.ph.split.us.us.split.us
  %indvars.iv.next118 = add nsw i64 %indvars.iv117, 1 ; 2 uses
  %lftr.wideiv120 = trunc i64 %indvars.iv.next118 to i32
  %exitcond121.not = icmp eq i32 %i.ba, %lftr.wideiv120
  br i1 %exitcond121.not, label %._crit_edge95.split, label %.preheader.us, !llvm.loop !19

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge.split
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %._crit_edge.split ], [ %i.ay, %.preheader.preheader ] ; 3 uses
  %i.dq = trunc nsw i64 %indvars.iv102 to i32
  %i.dr = sitofp i32 %i.dq to double
  %i.ds = insertelement <2 x double> poison, double %i.dr, i64 0
  %i.dt = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> zeroinitializer
  %i.du = fmul <2 x double> %i.bc, %i.dt
  %i.dv = sub nsw i64 %i.az, %indvars.iv102
  %i.dw = load i32, ptr %i.as, align 4
  %i.dx = icmp slt i32 %i.dw, 2
  %i.dy = load ptr, ptr %i.at, align 8
  br label %bb.l

._crit_edge.split:                                ; preds = %bb.l
  %indvars.iv.next103 = add nsw i64 %indvars.iv102, 1 ; 2 uses
  %lftr.wideiv105 = trunc i64 %indvars.iv.next103 to i32
  %exitcond106.not = icmp eq i32 %i.ba, %lftr.wideiv105
  br i1 %exitcond106.not, label %._crit_edge95.split, label %.preheader, !llvm.loop !19

bb.l:                                             ; preds = %.preheader, %bb.l
  %indvars.iv = phi i64 [ %i.av, %.preheader ], [ %indvars.iv.next, %bb.l ] ; 4 uses
  %i.dz = trunc nsw i64 %indvars.iv to i32
  %i.ea = trunc i64 %indvars.iv to i32
  %i.eb = sub i32 0, %i.ea
  %i.ec = insertelement <2 x i32> poison, i32 %i.eb, i64 0
  %i.ed = insertelement <2 x i32> %i.ec, i32 %i.dz, i64 1
  %i.ee = sitofp <2 x i32> %i.ed to <2 x double>
  %i.ef = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ee, <2 x double> %i.bf, <2 x double> %i.du) ; 3 uses
  %i.eg = shufflevector <2 x double> %i.ef, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.eh = fmul <2 x double> %i.aq, %i.eg          ; 2 uses
  %shift132 = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop133 = fmul <2 x double> %i.ef, %shift132
  %i.ei = shufflevector <2 x double> %i.bd, <2 x double> %i.eh, <2 x i32> <i32 0, i32 2>
  %i.ej = shufflevector <2 x double> %i.ef, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ek = shufflevector <2 x double> %i.be, <2 x double> %foldExtExtBinop133, <2 x i32> <i32 0, i32 2>
  %i.el = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ei, <2 x double> %i.ej, <2 x double> %i.ek) ; 2 uses
  %i.em = extractelement <2 x double> %i.el, i64 1
  %i.en = tail call double @exp(double noundef %i.em) #10
  %i.eo = extractelement <2 x double> %i.el, i64 0
  %i.ep = tail call double @cos(double noundef %i.eo) #10
  %i.eq = fmul double %i.en, %i.ep
  %i.er = sub nsw i64 %i.aw, %indvars.iv
  %i.es = load i64, ptr %i.au, align 8
  %i.et = mul i64 %i.es, %i.dv
  %.sink.idx.i84 = select i1 %i.dx, i64 0, i64 %i.et
  %.sink.i85 = getelementptr inbounds nuw i8, ptr %i.dy, i64 %.sink.idx.i84
  %i.eu = getelementptr inbounds [8 x i8], ptr %.sink.i85, i64 %i.er
  store double %i.eq, ptr %i.eu, align 8, !tbaa !20
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ax, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge.split, label %bb.l, !llvm.loop !17

._crit_edge95.split:                              ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %.preheader.lr.ph, %bb.k
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #2

end_hunk_0
